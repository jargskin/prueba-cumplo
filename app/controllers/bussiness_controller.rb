require 'net/http'
require 'json'
require 'uri'

class BussinessController < ApplicationController
  
  def index
  	#guardo contenido de api en variable url
  	url = 'https://mindicador.cl/api'  	
	uri = URI(url)
	#obtengo los datos de la api mediante metodo get de la libreria de net::http
	response = Net::HTTP.get(uri)
	#parseo el response a formato json para consumir datos
	data = JSON.parse(response)
	#envio datos a la vista en formato json y trabajarlo desde el js
	@dolar = data.dig("dolar", "valor")
  end
end
