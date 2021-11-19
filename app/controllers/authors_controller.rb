# frozen_string_literal: true

class AuthorsController < ApplicationController

  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to @author
  end

  def author_params
    params.require(:first_name).permit(:last_name, :homepage)
  end
end
