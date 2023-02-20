require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    #range of letters and generate a random method
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @letters = params[:letters]
    input = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{input}"
    open_url = URI.open(url).read
    words = JSON.parse(open_url)
    english_word = words[:found] == true
    raise
  end
end
