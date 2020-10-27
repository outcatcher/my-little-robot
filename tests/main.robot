*** Settings ***
Library  SeleniumLibrary
Library  ./mykw.py
Resource  ./kw.robot

Suite Teardown  Close Browser
Suite Setup  Open Browser  ${BASE_URL}  browser=Firefox  remote_url=${REMOTE}

*** Variables ***
${BASE_URL}  https://the-internet.herokuapp.com
${REMOTE}  http://80.158.56.38:4444/wd/hub


*** Test Cases ***
Open Page: /
    FAOIJIODF

Test Login Invalid
    [Tags]  secure
    [Template]  Login with invalid password
    kjafskljsfd              dskljakdsfj
    kjaf2skljsfd             dskljaᄡkdsfj
    tomsmith                 SuperSecretPassword!
    kjafskᄡljsfd            dsklj32akdsfj
    kjafskᄡljsfd            dskljakᄡdsfj

Test Print
    [Tags]  print
    Print Me Here

*** Keywords ***
Login with invalid password
    [Arguments]  ${usename}  ${password}
    ${actual}=  Login As            ${usename}            ${password}
    Location Should Be  ${BASE_URL}/login
