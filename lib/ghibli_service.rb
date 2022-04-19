require 'json'
require 'httparty'

class GhibliService
  def films
    get_url("https://ghibliapi.herokuapp.com/films")
  end

  def people
    get_url("https://ghibliapi.herokuapp.com/people")
  end

  def get_url(url)
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end