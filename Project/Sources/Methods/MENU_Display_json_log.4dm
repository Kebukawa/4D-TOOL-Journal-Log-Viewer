//%attributes = {}
Case of 
	: (Current process name:C1392#Current method name:C684)
		
		$proc:=New process:C317(Current method name:C684; 0; Current method name:C684; *)
		BRING TO FRONT:C326($proc)
		
	Else 
		
		$win:=Open form window:C675("Display JSON TYPE")
		BRING TO FRONT:C326(Current process:C322)
		DIALOG:C40("Display JSON TYPE")
		CLOSE WINDOW:C154($win)
		
End case 
