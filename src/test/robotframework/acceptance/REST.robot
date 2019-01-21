*** Settings ***
Library    HttpRequestLibrary

*** Variables ***
${sessionURL}    http://www.google.com

*** Test Cases ***
Get Google
    Create Session    google    ${sessionURL}
    ${resp}    Get Request    google    /
    Should Be Equal As Strings    ${resp.status_code}    200
    Log    ${resp.content}
    