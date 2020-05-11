require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
#    binding.pry
    attempt = @attempt
    url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
    response = JSON.parse(open(url).read)
    if response[:found] == true
      @response = "This is a valid word"
    end
  end
end
