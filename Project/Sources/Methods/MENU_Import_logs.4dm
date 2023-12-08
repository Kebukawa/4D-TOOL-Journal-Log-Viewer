//%attributes = {}


$name:=Select document:C905(Data file:C490; ""; "ログから書き出されたテキストファイルを指定してください"; Allow alias files:K24:10)

If (OK=1)
	
	$path:=Document
	
	If (Records in table:C83([Logs:2])#0)
		
		CONFIRM:C162("ログがすでに読み込まれていますが、すべて削除しても良いですか"; "削除して進む")
		
		If (OK=1)
			TRUNCATE TABLE:C1051([Logs:2])
		End if 
	End if 
	
	If (Records in table:C83([Logs:2])=0)
		
		$project:=File:C1566("/RESOURCES/LogFile/Import.4si").getText()
		IMPORT DATA:C665($path; $project)
		
		//ALL RECORDS([Logs])
		
		//For ($i; 1; Records in selection([Logs]))
		
		//If (String([Logs]ID)="")
		//[Logs]ID:=Generate UUID
		//SAVE RECORD([Logs])
		//NEXT RECORD([Logs])
		//End if 
		
		//End for 
		
	End if 
	
End if 