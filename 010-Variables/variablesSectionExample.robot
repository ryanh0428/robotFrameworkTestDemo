*** Variables ***
${name}     Paul
${color}    teal
${team}     Jaguars


*** Test Cases ***
Using Variable
    # Log to Console a message, with a literal string. No Variable are used here.
    Log to Console    My name is Paul. My favorite color is teal. My favorite NFL team is the Jaguars.

    # Log to Console the same message, but this time we use the variables we set up in the variables section.
    Log to Console    My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.
    ${color}=    Set Variable    Orange
    ${name}=    Set Variable    Ryan
    Log to Console    My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.

Another Wxample
    Log To Console    My name is ${name}. My favorite color is ${color}. My favorite NFL team is the ${team}.
    #Prove that the inline set Variable keyword cannot change what is stored in the section variable
