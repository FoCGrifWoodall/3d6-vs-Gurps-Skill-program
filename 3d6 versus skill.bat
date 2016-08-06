@echo off
Echo Hello, this is a skill check for GURPS(Generic Universal Roleplaying System)
Echo To be successful, your skill level must be higher than 3d6(Three Six-Sided Dice)
set /p skill=Put your skill level here:
Echo Do note a roll of 18 is always a failure.
TIMEOUT 1 >nul
Echo .
TIMEOUT 1 >nul
Echo ..
TIMEOUT 1 >nul
Echo ...
TIMEOUT 1 >nul
Set /a DieA = %RANDOM% %% 6 + 1
Echo Your roll for the first dice is %DieA%
Set /a DieB = %RANDOM% %% 6 + 1
Echo Your roll for the second dice is %DieB%
Set /a DieC = %RANDOM% %% 6 + 1
Echo Your roll for the third dice is %DieC%

Set /a DieD = %DieA% + %DieB% + %DieC%
Echo Your result for 3d6 is %DieD%
TIMEOUT 1 >nul
Echo .
TIMEOUT 1 >nul
Echo ..
TIMEOUT 1 >nul
Echo ...
TIMEOUT 1 >nul
IF %DieD% == 18 goto :CritFail Else goto :SkillCheck

:SkillCheck
Echo your skill level is %skill%, 3d6 challenge is %DieD%
TIMEOUT 1 >nul
Echo .
TIMEOUT 1 >nul
Echo ..
TIMEOUT 1 >nul
Echo ...
TIMEOUT 1 >nul
IF %DieD% LSS %skill% goto :success Else goto:failure

:CritFail
Echo Critical Failure!
pause
exit /b 1

:success
Echo You are successful!
pause
exit /b 1

:failure
Echo Failure!
pause
exit /b 1
