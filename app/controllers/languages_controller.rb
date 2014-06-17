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

  private
  def language_params
    params.require(:language).permit(:name_of_language, :country_spoken)
  end
end