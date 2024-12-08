Install-Module -Name MicrosoftTeams
Connect-MicrosoftTeams
#usar excel llamado 

Grant-CsTeamsMeetingPolicy -Identity felope@zegelipae.pe -PolicyName "DirectivaDocente"

Grant-CsTeamsMeetingPolicy -Identity fjuliocast@zegelipae.pe -PolicyName "DirectivaDocente"
Grant-CsTeamsMeetingPolicy -Identity fcarcastro@zegelipae.pe -PolicyName "DirectivaDocente"
Grant-CsTeamsMeetingPolicy -Identity fpacastro@zegelipae.pe -PolicyName "DirectivaDocente"
Grant-CsTeamsMeetingPolicy -Identity fdacueva@zegelipae.pe -PolicyName "DirectivaDocente"
Grant-CsTeamsMeetingPolicy -Identity fccusihuam@zegelipae.pe -PolicyName "DirectivaDocente"
Grant-CsTeamsMeetingPolicy -Identity frfuentes@zegelipae.pe -PolicyName "DirectivaDocente"