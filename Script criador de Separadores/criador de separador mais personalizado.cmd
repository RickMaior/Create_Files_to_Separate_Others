@ECHO OFF
:: CREATE FOLDER
set folder_name=separadores_2
md %folder_name%
cd %folder_name%

:: CREATE FILES
set /p message_inicio=Qual o inicio do nome do ficheiro 
set /p message_fim=Qual o fim do nome do ficheiro 
set /p pergunta_comeco=QUal o primeiro numero 
set /p Pergunta_fim=Qual o ultimo numero 
set /p Pergunta_salto=De quantos em quantos numeros queres ir? 
set /a comeco=%pergunta_comeco%
set /a fim=%pergunta_fim% 
set /a salto=%pergunta_salto% 
:: loop
for /l %%x in ( %comeco%, %salto% , %fim% ) do (
	if /I %%x lss 10 (
		type NUL > "%message_inicio%00%%x%message_fim%"
	) ELSE (
	if /I %%x lss 100 (
			type NUL > "%message_inicio%0%%x%message_fim%"
		) ELSE (
			type NUL > "%message_inicio%%%x%message_fim%"
		)
	)
	
)
ECHO Os ficheiros foram criados, se nao criou nenhum ficheiro verificar se colocou tudo certo, e voltar a correr este comando
PAUSE