[General]
Type=Multi
AdditionalTypes=WS_SOAP,QTWeb
ActiveTypes=WS_SOAP
GenerateTypes=WS_SOAP
RecordedProtocols=
DefaultCfg=default.cfg
AppName=
BuildTarget=
ParamRightBrace=}
ParamLeftBrace={
NewFunctionHeader=1
LastActiveAction=Action
CorrInfoReportDir=result1
LastResultDir=result1
DevelopTool=Vugen
ActionLogicExt=action_logic
MajorVersion=11
MinorVersion=0
ParameterFile=Get_Product.prm
GlobalParameterFile=
RunType=cci
LastModifyVer=11.0.0.0
AddOnName=SOA
AddOnVersion=1.0
[TransactionsOrder]
Order=""
[ExtraFiles]
globals.h=
[Actions]
vuser_init=vuser_init.c
Action=Action.c
vuser_end=vuser_end.c
[Recorded Actions]
vuser_init=0
Action=0
vuser_end=0
[Replayed Actions]
vuser_init=1
Action=1
vuser_end=1
[Modified Actions]
vuser_init=0
Action=1
vuser_end=0
[ProtocolsVersion]
QTWeb=11.0.0.0
WS_SOAP=11.0.0.0
[RunLogicFiles]
Default Profile=default.usp
[StateManagement]
1=1
5=0
6=0
9=0
10=0
11=0
12=0
17=0
18=0
20=0
21=0
CurrentState=1
VuserStateHistory= 0 65536 65552
LastReplayStatus=2
LastReplayErrorID1=-108964
LastReplayErrorMsg1=Action.c(4): Error: SOAP request "SOAP Request" execution failed
LastReplayErrorID2=-108946
LastReplayErrorMsg2=Action.c(4): Error: The reason for the SOAP fault is:	"org.xml.sax.SAXParseException; lineNumber: 1; columnNumber: 1050; The element type "ser:getProducts" must be terminated by the matching end-tag "&lt;/ser:getProducts&gt;"."
