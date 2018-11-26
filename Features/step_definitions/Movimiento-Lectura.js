'use strict';

var {defineSupportCode} = require('cucumber');
var {By, until, Key} = require('selenium-webdriver');
var {expect} = require('chai');
var config = require("../support/config/config");
var {DefaultPage} = require("../support/helpers/default_page_helper");
var {byNombreDelId } = require("../object_repository/Set");
var {getFechaDesde, getFechaHasta, getIdCuenta } = require("../data_repository/movimiento");
var request = require("request");

defineSupportCode(function({Given, When, Then}) {

    var url = "";
    var fechaDesde = ""
    var fechaHasta = ""
    var idCuenta = ""

    Given('que tengo el periodo que quiero ver', function () {
       fechaDesde = getFechaDesde
       fechaHasta = getFechaHasta
      });
      Given('el id de mi cuenta', function () {
        idCuenta = getIdCuenta
      });  
  When('completo los campos fechadesde, fechahasta y idcuenta correctos', function () {

    url = CONFIG.SITE_URL + "/api/movimiento?fechadesde=" + fechaDesde + "&fechahasta=" + fechaHasta + "&idcuenta=" + idCuenta
  });
  Then('obtengo todos los movimientos realizados entre las fechas ingresadas mostrando los datos de idmovimiento, monto, descripción, idcuenta, fecha', function () {
    request.get(url, function(error, response, body) {
        expect(response.statusCode).to.equal(200);
        let responseObject = JSON.parse(body);
        expect(responseObject[0].idmovimiento).to.not.be.undefined;
    
    });
  });


  When('completo los campos fechadesde, fechahasta y idcuenta completando el campo idcuenta con menos caracteres', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
  });
  Then('se visualiza el response code {int}', function (int) {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
  });
  Then('en el response body un status code {int}, error {string} mensaje {string}', function (int, string, string2) {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
  });
 
  When('completo los campos fechadesde, fechahasta y idcuenta completando el campo idcuenta que no existe', function () {
    // Write code here that turns the phrase above into concrete actions
    return 'pending';
  });
  
});