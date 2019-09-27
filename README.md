# automationpractice.com

This project is automation test and create with Selenium, Cucumber, and Ruby

## Requirements :
1. Ruby 2.5.1
2. Chromedriver or Geckodriver latest version
3. Google Chrome or Mozilla Firefox latest version
4. Text editor

## Source :
* `Visual Studio Code` [source](https://code.visualstudio.com)
* `Chromedriver` [source](http://chromedriver.chromium.org)
* `Geckodriver` [source](https://github.com/mozilla/geckodriver/releases)

## Installation Steps for Ubuntu :
#### Open Terminal and type the commands below:
```sh
sudo apt-get install ruby ruby-dev
sudo apt-get install rubygems
sudo gem install selenium-webdriver
sudo gem install rspec
sudo gem install cucumber
sudo gem install bundler
```

## Set chromedriver and geckodriver :
#### Open Terminal and type the commands below for copy Web-Driver:
```sh
sudo cp chromedriver* /usr/bin/
sudo cp geckodriver* /usr/bin/
```
#### Open Terminal and type the commands below for activate Web-Driver:
```sh
sudo chmod +x /usr/bin/geckodriver
sudo chmod +x /usr/bin/chromedriver
```

## Run the automation :
```sh
git clone git@github.com:mananrangkuti/automationpractice.com.git
```
* Copy `env.rb.sample` to `env.rb`

## Command :
1. Run a specific scenario `cucumber -t @nameofscenario`
2. Generating report `cucumber -f pretty -f html -o report.html`
