class LanguagesController < ApplicationController

  def index
    @language = Language.new
    @languages = Language.all
  end

  def create
    @language = Language.create(language_params)
    if @language.save
      redirect_to languages_path
    else
      render :index
    end
  end

  def show
    @language = Language.find(params[:id])
  end

  def edit
    @language = Language.find(params[:id])
  end

  def update
    @language = Language.find(params[:id])
    @language.update_attributes!(language_params)

    redirect_to languages_path
  end

  def destroy
    @language = Language.find(params[:id]).delete

    redirect_to languages_path
  end

  private
  def language_params
    params.require(:language).permit(:name_of_language, :country_spoken)
  end
end