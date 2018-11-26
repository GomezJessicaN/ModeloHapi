'use strict';

var {defineSupportCode} = require('cucumber');
var {By, until, Key} = require('selenium-webdriver');
var {expect} = require('chai');
var config = require("../support/config/config");
var {DefaultPage} = require("../support/helpers/default_page_helper");
var {byNombreDelId } = require("../object_repository/Set");

defineSupportCode(function({Given, When, Then}) {

  Given('gherkin', async function (userVariable,passVariable) {
    this.driver.manage().window().maximize();
    var url = CONFIG.SITE_URL;
    if(this.parameters.enableMockUrl){
      url = CONFIG.SITE_URL_MOCK;
    }
    await this.driver.get(url)
    var defaultPage = new DefaultPage(this.driver, this.parameters)
    var user = CONFIG[userVariable];
    var pass = CONFIG[passVariable];
    await defaultPage.customLogin(user,pass)
    await this.driver.wait(until.elementLocated(byNombreDelId))
  });

  When('gherkin', async function () {
    await this.driver.wait(until.elementLocated(byNombreDelId));
    await this.driver.findElement(byNombreDelId).click();
  });

  Then('gherkin', async function () {
    await this.driver.wait(until.elementLocated(byNombreDelId))
  });
});

