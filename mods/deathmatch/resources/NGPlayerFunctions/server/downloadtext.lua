local text_ = textCreateDisplay ( )
local text = textCreateTextItem ( "Obrigado por entrar no servidor da Sinuquinha de Domingo\nPor favor, aguarde, estamos baixando os recursos", 0.5, 0.5, "hight", 255, 255, 255, 255, 2, "center", "center", 2 ) 
textDisplayAddText ( text_, text )

addEventHandler ( "onPlayerJoin", root, function ( )
	textDisplayAddObserver ( text_, source )
end )

addEventHandler ( "onResourceStart", resourceRoot, function ( )
	for i, source in ipairs ( getElementsByType ( 'player' ) ) do
		textDisplayAddObserver ( text_, source )
	end
end )

addEvent ( "NGPlayerFunctions:DownloadText.onPlayerFinishDownload", true )
addEventHandler ( "NGPlayerFunctions:DownloadText.onPlayerFinishDownload", root, function ( )
	textDisplayRemoveObserver ( text_, source )
end )
