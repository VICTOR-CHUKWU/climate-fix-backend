class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show update destroy]

  # GET /comments
  # GET /comments.json
  def index
  end
  # def index
  #   @comments = Post.comments

  #   i = 0
  #   @commentt = []
  #   while i < @comments.length
  #    comment = {}
  #    comment['comment'] = @comments[i]
  #    comment['post'] = Post.find_by(id: @comments.post)
  #    comment['user'] = User.find_by(id: @comments[i].user)
  #     @commentt.push(comment)
  #     i += 1
  #   end
  #   # @commentt['post'] =comment.find_by(id: @comment.post)
  #   render json: @commentt, only: [:description, :user_id]
  # end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @commentt = {}
    @commentt['comment'] = @comment
    @commentt['user'] = User.find_by(id: @comment.user)
    @commentt['post'] = Post.find_by(id: @comment.post)
    # @commentt
    render json: @commentt
  end

  def create
    @comment = Post.comments.new
    @comment = User.comments.new
    @comment = params[:comment][:description, :user_id]
    @comment.user = User.find_by(id: params[:comment][:user])
    @comment.post = Post.find_by(id: params[:comment][:post])
    # @post.doctor = Doctor.find_by(id: params[:post][:doctor])
    # @post_hash = Post.return_post_user(@post)

    @commentt = {}
    @commentt['comment'] = @comment
    @commentt['user'] = User.find_by(id: @comment.user)
    @commentt['post'] = Post.find_by(id: @comment.post)

    if @comment.save
      @comment.post.commentscounter += 1
      puts('hklal comment')
      render json: @commentt, status: :created, location: @comments
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render :show, status: :ok, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:description, :user_id)
  end
end
