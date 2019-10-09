*** Settings ***
Library   Selenium2Library


Test teardown   Close Browser


*** Variables ***
${BASE_URL}     http://localhost:8000/hello/


*** Test Cases ***

test mainpage
  ตรวจสอบการเข้าถึงหน้าเพจ    ${BASE_URL}   Hello



*** Keywords ***

ตรวจสอบการเข้าถึงหน้าเพจ
    [Arguments]     ${urlpage}  ${content}
    Open Browser    ${urlpage}    ff     #remote_url=http://localhost:4444/wd/hub
    Wait Until Page Contains    ${content}
