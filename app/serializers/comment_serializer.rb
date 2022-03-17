class CommentSerializer < ActiveModel::Serializer
  attributes :id, :description
end

def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)
  @post.author_id = current_user.id
  @post.comments_counter = 0
  @post.likes_counter = 0
  respond_to do |format|
    format.html do
      if @post.save
        flash[:success] = 'You have successfully created a post.'
        redirect_to user_posts_url
      else
        flash.now[:error] = 'Error: Post could not be saved'
        render :new
      end
    end
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  current_user.posts_counter -= 1
  current_user.save
  redirect_to("/users/#{current_user.id}")
  flash[:success] = 'Post was destroyed!'
end

private

def post_params
  params.require(:post).permit(:title, :text)
end
