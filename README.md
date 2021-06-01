# Geocoder Google Maps

### Proyecto para la implementación de mapas de Google en Rails.

Este proyecto experimental permite crear una lista de locales con sus direcciones, las cuales se muestran en conjunto dentro del mapa, permitiendo también acceder a cada una de ellas por separado de forma asíncrona.

## Dependencias

* Geocoder
* Gmaps4Rails
* Underscore

## Puesta en marcha

1. Clona este proyecto
2. Instala las dependencias utilizando `bundle install` y `yarn install`
3. Ejecuta las migraciones y seed con `rails db:setup`
4. Crea el archivo .env con tu api key para el servicio de GoogleMaps
5. Levanta el servidor con `rails s`