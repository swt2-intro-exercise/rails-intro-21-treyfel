# frozen_string_literal: true

class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)

    @author.save
    redirect_to root_path, notice: 'Success!'
  end

  private
  def author_params
    params.require(:author).permit(:first_name, :last_name, :homepage)
  end


end
