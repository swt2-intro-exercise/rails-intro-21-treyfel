# frozen_string_literal: true

class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to root_path, notice: 'Success!'
  end

  def author_params
    params.require(:first_name).permit(:last_name, :homepage)
  end
end
