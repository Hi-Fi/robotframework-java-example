*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    jbrowser

*** Test Cases ***
Open Google
    Open Browser    https://www.google.com    ${browser}
    Capture Page Screenshot