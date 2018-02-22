Documentacion de la prueba:

Primero lo que tuve que hacer fue crear el proyecto con "rails new cumplo"
Luego crear el controller "bussiness" con bin/railsgenerale controller Bussiness index
cuando estaba lista la vista, la dejé seteada como 'Home' desde el archivo routes con "root'bussiness#index'
Luego no quise reinventar la rueda, porque estaría consumiendo una Api publica (https://mindicador.cl/api) para obtener los valores solicitados.

El controller Bussiness, está consultando la API, la guarda en la Variable URL
pasa la variable URL a URI
con Net::HTTP.get(uri) obtengo la información que me entrega la API
luego se parsea la data con JSON.parse()
y con data.dig() recorro el objeto data, donde envio dos parametros para apuntar al objeto "dolar" y su"valor"

con esto, envio el objeto a la vista para que se pueda manejar desde la vista con JS, para o estar haciendo peticiones a la api cada vez que se quiere calcular el monto.

luego en la vista se deja el boton con un evento onclick,llamando a una funcion JS donde se envia por parametro el valor del dolar.
En la funcion JS se rescata el parametro enviado, y a su vez rescata el valor ingresado en el input de entrada, realiza el calculo y setea en el input readonly el resultado.

