@ECHO OFF
REM This file was last updated 03/16/2016

REM The name of your filegroup (for example "1-PreventCrypto") must be passed as a variable to this batch file
REM For example you could run: 1-PreventCrypto-FileGroupUpdate.bat 1-PreventCrypto

IF %1.==. goto :error

REM More info at https://technet.microsoft.com/en-us/library/cc788114(v=ws.10).aspx
filescrn.exe filegroup modify /filegroup:%1 /members:"*.aaa|*.crjoker|*.cryptotorlocker*|*.ecc|*.encrypted|*.exx|*.ezz|*.frtrss|*.hydracrypt_ID*|*.locky|*.micro|*.r5a|*.ttt|*.vault|*.vvv|*.xxx|*gmail*.crypt|*recover_instruction*.*|*restore_fi*.*|*want your files back.*|confirmation.key|cryptolocker.*|decrypt_instruct*.*|enc_files.txt|help_decrypt*.*|help_recover*.*|help_restore*.*|help_your_file*.*|how to decrypt*.*|how_recover*.*|how_to_decrypt*.*|how_to_recover*.*|howto_restore*.*|howtodecrypt*.*|install_tor*.*|last_chance.txt|message.txt|readme_decrypt*.*|readme_for_decrypt*.*|recovery_file.txt|recovery_key.txt|vault.hta|vault.key|vault.txt|your_files.url|recovery+*.*|*.cerber|decrypt my file*.*|help_file_*.*"
ECHO. 
ECHO. All done.
TIMEOUT 2
EXIT

:error
ECHO. 
ECHO. No filegroup name passed as variable, this script will exit.
TIMEOUT 2
EXIT