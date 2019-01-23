*** Settings ***
Library    DateFormatterLibrary
Library    DateTime
Documentation    Suite utilizes Python test library. Note that JVM executes tests with Jython 2.7, so Python libraries should be working with Python 2.x
*** Test Cases ***
Date parsing with Python library
    ${timestamp}    Get Current Date    UTC    result_format=%a %b %d %Y %H:%M:%S
    ${datetime}    Get Current Date    UTC    result_format=datetime
    ${convertedDate}    Set Variable    ${datetime.year}-${datetime.month}-${datetime.day}
    ${libraryDate}    Split Date    ${timestamp}
    Should Be Equal As Strings    ${convertedDate}    ${libraryDate}