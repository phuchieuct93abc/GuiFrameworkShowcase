[Ivy]
[>Created: Wed Jul 26 14:16:01 ICT 2017]
15D7DBDF73BF69E6 3.18 #module
>Proto >Proto Collection #zClass
Bt0 BasicComponent Big #zClass
Bt0 B #cInfo
Bt0 #process
Bt0 @TextInP .resExport .resExport #zField
Bt0 @TextInP .type .type #zField
Bt0 @TextInP .processKind .processKind #zField
Bt0 @AnnotationInP-0n ai ai #zField
Bt0 @MessageFlowInP-0n messageIn messageIn #zField
Bt0 @MessageFlowOutP-0n messageOut messageOut #zField
Bt0 @TextInP .xml .xml #zField
Bt0 @TextInP .responsibility .responsibility #zField
Bt0 @StartRequest f0 '' #zField
Bt0 @EndTask f1 '' #zField
Bt0 @RichDialog f3 '' #zField
Bt0 @PushWFArc f4 '' #zField
Bt0 @PushWFArc f2 '' #zField
>Proto Bt0 Bt0 BasicComponent #zField
Bt0 f0 outLink start.ivp #txt
Bt0 f0 type ch.axonivy.fintech.showcaseProcesses.basicComponent #txt
Bt0 f0 inParamDecl '<> param;' #txt
Bt0 f0 actionDecl 'ch.axonivy.fintech.showcaseProcesses.basicComponent out;
' #txt
Bt0 f0 guid 15D7DBDF80EB890D #txt
Bt0 f0 requestEnabled true #txt
Bt0 f0 triggerEnabled false #txt
Bt0 f0 callSignature start() #txt
Bt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Bt0 f0 @C|.responsibility Everybody #txt
Bt0 f0 81 49 30 30 -21 17 #rect
Bt0 f0 @|StartRequestIcon #fIcon
Bt0 f1 type ch.axonivy.fintech.showcaseProcesses.basicComponent #txt
Bt0 f1 337 49 30 30 0 15 #rect
Bt0 f1 @|EndIcon #fIcon
Bt0 f3 targetWindow NEW:card: #txt
Bt0 f3 targetDisplay TOP #txt
Bt0 f3 richDialogId ch.axonivy.fintech.showcase.BasicComponent #txt
Bt0 f3 startMethod start(ch.axonivy.fintech.showcaseProcesses.basicComponent) #txt
Bt0 f3 type ch.axonivy.fintech.showcaseProcesses.basicComponent #txt
Bt0 f3 requestActionDecl '<ch.axonivy.fintech.showcaseProcesses.basicComponent basicComponent> param;' #txt
Bt0 f3 responseActionDecl 'ch.axonivy.fintech.showcaseProcesses.basicComponent out;
' #txt
Bt0 f3 responseMappingAction 'out=in;
' #txt
Bt0 f3 windowConfiguration '* ' #txt
Bt0 f3 isAsynch false #txt
Bt0 f3 isInnerRd false #txt
Bt0 f3 userContext '* ' #txt
Bt0 f3 168 42 112 44 0 -8 #rect
Bt0 f3 @|RichDialogIcon #fIcon
Bt0 f4 expr out #txt
Bt0 f4 111 64 168 64 #arcP
Bt0 f2 expr out #txt
Bt0 f2 280 64 337 64 #arcP
>Proto Bt0 .type ch.axonivy.fintech.showcaseProcesses.basicComponent #txt
>Proto Bt0 .processKind NORMAL #txt
>Proto Bt0 0 0 32 24 18 0 #rect
>Proto Bt0 @|BIcon #fIcon
Bt0 f0 mainOut f4 tail #connect
Bt0 f4 head f3 mainIn #connect
Bt0 f3 mainOut f2 tail #connect
Bt0 f2 head f1 mainIn #connect
