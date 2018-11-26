'use strict';

var {defineSupportCode} = require('cucumber');
var {By, until, Key} = require('selenium-webdriver');
var {expect} = require('chai');

class DefaultPage {
    constructor(driver, parameters) {this.driver = driver; this.parameters = parameters};


    

    async customLogin(user,password) {

        if (!this.parameters.disableLogin) {
            await this.driver.wait(until.elementLocated(By.name('username')));
            await this.driver.findElement(By.name('username')).sendKeys(user);
            await this.driver.wait(until.elementLocated(By.name('txtPass')));
            await this.driver.findElement(By.name('txtPass')).sendKeys(password);
            await this.driver.wait(until.elementLocated(By.name('btnIngresar')));
            await this.driver.findElement(By.name('btnIngresar')).click();
        } 
    }
}

module.exports.DefaultPage = DefaultPage



