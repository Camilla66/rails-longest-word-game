class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.shuffle[0,10]
  end

  def score
    @word = params[:word]

  @url = "https://wagon-dictionary.herokuapp.com/#{@word}"
  @user_serialized = open(@url)
  @user = JSON.parse(@user_serialized)
  end
end
