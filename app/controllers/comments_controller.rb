class CommentsController < ApplicationController

  http_basic_authenticate_with name: "gsk", password: "secret", only: :destroy

    def create
      @query = Query.find(params[:query_id])
      @comment = @query.comments.create(comment_params)
      redirect_to query_path(@query)
    end
  
    def destroy
      @query = Query.find(params[:query_id])
      @comment = @query.comments.find(params[:id])
      @comment.destroy
      redirect_to query_path(@query)
    end

    private
      def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
      end
  end
  