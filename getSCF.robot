*** Settings ***
Library     taf.sbts.oam.coam.admin    WITH NAME    admin
Library     taf.selenium.gnb.oam.coam.classical      WITH NAME    soam
Library     Collections
#Library     taf.collectors.btslog   WITH NAME   btslog
#Library     taf.collectors.tshark   WITH NAME   tshark
Library     BuiltIn
Library    taf.config.scf       WITH NAME       scf
Resource  ./importingThis.robot

*** Variables ***
${ip}    10.58.239.65
${BTS_URL}      https://192.168.255.129
${username}     Nemuadmin
${password}     nemuuser
${opt}    .
${filename}    scf.xml
*** Test Cases ***
Admin Connection
    Admin_Connection
Get Alarm Info
    Fetch_Alarms_And_Display
Get SCF
    Get_Scf
#    Get_Bts_Config
#    Open_Browser
Admin Teardown
    Admin_Teardown

*** Keywords ***


