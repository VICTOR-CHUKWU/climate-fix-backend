class PostsController < ApplicationController
  before_action :set_post, only: %i[show update destroy]

  # def new
  #   @post = post.new

  # GET /posts
  # GET /posts.json
  def index
    # @posts = Post.all
    @posts = Post.order(:commentscounter)
    #  @user = User.includes(:posts).find(params[:user_id])
    # @posts = @user.posts.includes(:comments).order(created_at: :desc)
    i = 0
    @posts_hash = []
    while i < @posts.length
      post = {}
      post['post'] = @posts[i]
      post['user'] = User.find_by(id: @posts[i].user)
      @posts_hash.push(post)
      i += 1
    end
    # @posts_hash
    render json: @posts_hash
  end

  # GET /posts/1
  # GET /posts/1
  # GET /posts/1.json
  def show
    @postt = {}
    @postt['post'] = @post
    @postt['user'] = User.find_by(id: @post.user)
    @postt['comment'] = @post.comments

    # @postt
    render json: @postt
  end

  # POST /posts
  # POST /posts.json
  # def create
  #   @post = Post.new(post_params)

  #   if @post.save
  #     render :show, status: :created, location: @post
  #   else
  #     render json: @post.errors, status: :unprocessable_entity
  #   end
  # end

  def create
    @post = Post.new
    @post = params[:post][:title, :description, :picture]
    @post.user = User.find_by(id: params[:post][:user])
    # @post.doctor = Doctor.find_by(id: params[:post][:doctor])
    # @post_hash = Post.return_post_user(@post)

    @postt = {}
    @postt['post'] = @post
    @postt['user'] = User.find_by(id: @post.user)

    if @post.save
      render json: @postt, status: :created, location: @posts
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  # def update
  #   if @post.update(post_params)
  #     render :show, status: :ok, location: @post
  #   else
  #     render json: @post.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :description, :picture, :commentscounter, :likescounter)
  end
end
