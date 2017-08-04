[Ivy]
[>Created: Thu Aug 03 16:49:29 ICT 2017]
15DA602E05A28792 3.18 #module
>Proto >Proto Collection #zClass
Gt0 GettingStart Big #zClass
Gt0 B #cInfo
Gt0 #process
Gt0 @TextInP .resExport .resExport #zField
Gt0 @TextInP .type .type #zField
Gt0 @TextInP .processKind .processKind #zField
Gt0 @AnnotationInP-0n ai ai #zField
Gt0 @MessageFlowInP-0n messageIn messageIn #zField
Gt0 @MessageFlowOutP-0n messageOut messageOut #zField
Gt0 @TextInP .xml .xml #zField
Gt0 @TextInP .responsibility .responsibility #zField
Gt0 @StartRequest f0 '' #zField
Gt0 @EndTask f1 '' #zField
Gt0 @RichDialog f3 '' #zField
Gt0 @PushWFArc f4 '' #zField
Gt0 @PushWFArc f2 '' #zField
>Proto Gt0 Gt0 GettingStart #zField
Gt0 f0 outLink start.ivp #txt
Gt0 f0 type ShowCaseProcesses.GettingStartData #txt
Gt0 f0 inParamDecl '<> param;' #txt
Gt0 f0 actionDecl 'ShowCaseProcesses.GettingStartData out;
' #txt
Gt0 f0 guid 15DA602E0824A86F #txt
Gt0 f0 requestEnabled true #txt
Gt0 f0 triggerEnabled false #txt
Gt0 f0 callSignature start() #txt
Gt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Gt0 f0 @C|.responsibility Everybody #txt
Gt0 f0 81 49 30 30 -21 17 #rect
Gt0 f0 @|StartRequestIcon #fIcon
Gt0 f1 type ShowCaseProcesses.GettingStartData #txt
Gt0 f1 337 49 30 30 0 15 #rect
Gt0 f1 @|EndIcon #fIcon
Gt0 f3 targetWindow NEW:card: #txt
Gt0 f3 targetDisplay TOP #txt
Gt0 f3 richDialogId ch.axonivy.fintech.showcase.GettingStart #txt
Gt0 f3 startMethod start() #txt
Gt0 f3 type ShowCaseProcesses.GettingStartData #txt
Gt0 f3 requestActionDecl '<> param;' #txt
Gt0 f3 responseActionDecl 'ShowCaseProcesses.GettingStartData out;
' #txt
Gt0 f3 responseMappingAction 'out=in;
' #txt
Gt0 f3 windowConfiguration '* ' #txt
Gt0 f3 isAsynch false #txt
Gt0 f3 isInnerRd false #txt
Gt0 f3 userContext '* ' #txt
Gt0 f3 168 42 112 44 0 -8 #rect
Gt0 f3 @|RichDialogIcon #fIcon
Gt0 f4 expr out #txt
Gt0 f4 111 64 168 64 #arcP
Gt0 f2 expr out #txt
Gt0 f2 280 64 337 64 #arcP
>Proto Gt0 .type ShowCaseProcesses.GettingStartData #txt
>Proto Gt0 .processKind NORMAL #txt
>Proto Gt0 0 0 32 24 18 0 #rect
>Proto Gt0 @|BIcon #fIcon
Gt0 f0 mainOut f4 tail #connect
Gt0 f4 head f3 mainIn #connect
Gt0 f3 mainOut f2 tail #connect
Gt0 f2 head f1 mainIn #connect
