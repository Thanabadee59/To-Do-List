*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${btn_add}        //i[contains(text(),'dd')]
${btn_checkbox}   //Label//span[@id='text-1']
${btn_delete_complete}    //button[@id='1']

*** Keywords ***
Open Website To Do List
    Open Browser    https://abhigyank.github.io/To-Do-List/    browser=chrome
	Maximize Browser Window

Input New Task
    [Arguments]        ${wording}
	Wait Until Element Is Visible    id=new-task    timeout=10s
    Input Text        id=new-task    ${wording}

Click Add Button
    Click Element   ${btn_add} 

Click Check Box
    Wait Until Element Is Visible    ${btn_checkbox}    timeout=10s
	Click Element    ${btn_checkbox} 

Click Delete Complete
    Wait Until Element Is Visible    ${btn_delete_complete}    timeout=10s   
    Click Element    ${btn_delete_complete}
*** Test cases ***
TC-001 Add Data And Delete Complete Tab
	Open Website To Do List
	Input New Task    Test
	Click Add Button
	Click Check Box
	Click Delete Complete


 TC-002 Add Data Complete Tab
	Open Website To Do List
	Input New Task    Test2
	Click Add Button
	Click Check Box



TC-003 Delete Data To-Do Tasks
    Open Website To Do List
	Input New Task    Test3
	Click Add Button
    Click Delete Complete


	