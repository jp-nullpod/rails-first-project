class PagesController < ApplicationController
    def about
        @name = "Jean Paul Fortuno"
    end

    def apply
    end

    def contact
        @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    
        if params[:member]
            @members = @members.select { |member| member.start_with?(params[:member]) }
        end
    end

    def home

    end
end
