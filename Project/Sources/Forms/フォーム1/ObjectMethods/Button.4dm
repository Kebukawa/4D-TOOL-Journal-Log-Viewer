
$name:=Select document:C905(Data file:C490; ".json"; "JSONログを指定してください"; Allow alias files:K24:10)
If (OK=1)
	
	$log:=File:C1566(Document; fk platform path:K87:2).getText()
	Form:C1466.list:=JSON Parse:C1218($log)
End if 


/*
{operationType:30,operationName:トランザクション開始,operationNumber:126159,contextID:-340,timeStamp:2023-12-06T12:31:36.979Z,extraData:{task_id:5,user_name:KARIYA2021-B,user4d_alias:Designer,host_name:DESKTOP-T9PTNLS,task_name:車輛入荷,is_remote_context:true,client_uid:95F8E84AFF61984CAE065B86121F50CB,client_version:-268363440}}

{operationType:24,operationName:レコード作成,operationNumber:126174,contextID:341,timeStamp:2023-12-07T00:39:27.148Z,dataLen:93,recordNumber:8661,tableID:72CC3AF479CB264C96E599AFE2480CB4,tableName:商品本マスタ,fields:{ID:8698,商品コード:987705930,商品名:組み立てフレーム付き Ducati  Sketch kit,純正フラグ:true,仕入価格:6936},extraData:{task_id:4,user_name:worke,user4d_alias:Designer,host_name:WORKER-BEE,task_name:パーツ入荷,is_remote_context:true,client_uid:5F8EC6E3187B6944B22CFB7F2D981EFA,client_version:-268363440}...

{operationType:23,operationName:Seqnum保存,operationNumber:126175,contextID:341,timeStamp:2023-12-07T00:40:37.978Z,sequenceNumber:9618,tableID:1306EAEA8C917D48BC6474AB2D514C00,tableName:店舗在庫マスター,extraData:{task_id:4,user_name:worke,user4d_alias:Designer,host_name:WORKER-BEE,task_name:パーツ入荷,is_remote_context:true,client_uid:5F8EC6E3187B6944B22CFB7F2D981EFA,client_version:-268363440}}

*/

