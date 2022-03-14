class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show update destroy ]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
    render json: @comments, only: [:description]
  end

  # GET /comments/1
  # GET /comments/1.json
  def show

  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Post.comments.new(comment_params)
      # @reservation.reservation_time = params[:reservation][:reservation_time]
      @comment.user = User.find_by(id: params[:comment][:user])
      @comment.post = Post.find_by(id: params[:comment][:post])
      @commentt = {}
      @commentt['comment'] = @comment
      @commentt['user'] = @comment.user
      @commentt['post'] = @comment.post


     
    if @comment.save
      render :@commentt, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    if @comment.update(comment_params)
      render :show, status: :ok, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:description, :User_id, :Post_id)
    end
end
