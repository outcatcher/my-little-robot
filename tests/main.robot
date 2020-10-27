*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BASE_URL}  https://the-internet.herokuapp.com/
${REMOTE}  http://80.158.56.38:4444/wd/hub


*** Test Cases ***
Open Page: /
    Open Browser  ${BASE_URL}  browser=Firefox  remote_url=${REMOTE}
    Capture Page Screenshot
