@ECHO OFF
:: CREATE FOLDER
set folder_name=separadores
md %folder_name%
cd %folder_name%

:: CREATE FILES
set /p message_inicio=Qual o inicio do nome do ficheiro 
set /p pergunta_comeco=QUal o primeiro numero 
set /p Pergunta_fim=Qual o ultimo numero 
set /a comeco=%pergunta_comeco%
set /a fim=%pergunta_fim% 
:: loop
for /l %%x in ( %comeco%, 1, %fim% ) do (
	if /I %%x lss 100 (
		type NUL > "%message_inicio%00%%x_0_=============================="
	) ELSE (
	if /I %%x lss 1000 (
			type NUL > "%message_inicio%0%%x_0_=============================="
		) ELSE (
			type NUL > "%message_inicio%%%x_0_=============================="
		)
	)
	
)
ECHO Os ficheiros foram criados, se nao criou nenhum ficheiro verificar se colocou tudo certo, e voltar a correr este comando
PAUSE