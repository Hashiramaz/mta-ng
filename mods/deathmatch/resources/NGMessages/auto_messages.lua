local messages = { 
	"Aproveite o a sua estadia aqui no Servidor de Roleplay da Sinuquinha!",
	"Se você encontrou um bug, Por favor use o nosso sistema de reporte em jogo /report.",
	"Se você bugou, por favor tente reentrar antes de chamar um adm",
	"Tem alguma sugestão? Nos informe em nosso servidor do discord! Nos ficaremos felizes em receber suas sugestões.",
	"Use F3 -> Settings para configurar da maneira que lhe agrade.",
	"Use F3 -> Music para escutar músicas épicas enquanto bate em paredes.",
	"Por favor certifique-se que tudo no F1 foi lido antes de jogar",
	"Não peça dinheiro, É um pouco chato!!",
	"Se você tiver lag, tente mudar as configurações de performance no F3 -> Settings",
	"Utilize o banco para guardar dinheiro",
	"Nem pense em usar alguma trapaça! Nos podemos checar todos os seus status (: "
}

local lastI = 0
function sendNextAutomatedMessage (  )
	lastI = lastI + 1
	if ( lastI > #messages ) then
		lastI = 1
	end
	
	sendClientMessage ( messages [ lastI ], root, math.random ( 150, 255 ), math.random ( 150, 255 ), math.random ( 150, 255 ) )
	setTimer ( sendNextAutomatedMessage, 500000, 1 )
end
setTimer ( sendNextAutomatedMessage, 200, 1 )