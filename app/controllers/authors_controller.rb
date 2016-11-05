class AuthorsController < ApplicationController
    def new
    end
=begin
        def create
        render plain: params[:article].inspect
        #@author = Author.new(author_params)

        #@author.save
        #redirect_to @author
    end

    private
          def author_params
            params.require(:author).permit(:first_name, :last_name, :homepage)
          end

    def show
        @author = Author.find(params[:id])
    end
=end
end
