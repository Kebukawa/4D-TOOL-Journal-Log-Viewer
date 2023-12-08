//%attributes = {}
/*

注意：
このメソッドは、ジャーナルを作成したストラクチャで実行する必要があります。
ジャーナルを作成したストラクチャ以外で実行すると、テーブル名が正しく出力できません。

*/


//-----ログ書き出しコード（ここから）-----//
CONFIRM:C162("最初に書き出したいログファイルを指定してください。"; "ログファイルを指定する"; "運用中のジャーナルを使う")
If (OK=1)
	$name:=Select document:C905(""; ""; "ログファイルを指定してください。"; Allow alias files:K24:10)
	If (OK=1)
		$path_log:=Document
	Else 
		$path_log:=Log file:C928
	End if 
Else 
	$path_log:=Log file:C928
End if 
ALERT:C41("ジャーナルをJSONで保存するためのフォルダを作成します")
$ref:=Create document:C266(""; "")  //フォルダのかわりにファイルを作成
If (OK=1)
	//作成したファイルパスからログを収めるフォルダパスを生成
	$path_folder:=File:C1566(Document; fk platform path:K87:2).parent.platformPath+File:C1566(Document; fk platform path:K87:2).name
	//不要になった一時ファイルは削除する
	CLOSE DOCUMENT:C267($ref)
	DELETE DOCUMENT:C159(Document)
	//JSONでログファイルを生成する
	LOG FILE TO JSON:C1352($path_folder; 0; $path_log; Field attribute with name:K54:11)
	//生成したログファイルの入ったフォルダを表示
	SHOW ON DISK:C922($path_folder)
End if 
//-----ログ書き出しコード（ここまで）-----//
