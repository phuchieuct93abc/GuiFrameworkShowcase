[Ivy]
[>Created: Wed Aug 02 11:00:55 ICT 2017]
15DA11A4D1D5B56F 3.18 #module
>Proto >Proto Collection #zClass
Ae0 AutoComplete Big #zClass
Ae0 B #cInfo
Ae0 #process
Ae0 @TextInP .resExport .resExport #zField
Ae0 @TextInP .type .type #zField
Ae0 @TextInP .processKind .processKind #zField
Ae0 @AnnotationInP-0n ai ai #zField
Ae0 @MessageFlowInP-0n messageIn messageIn #zField
Ae0 @MessageFlowOutP-0n messageOut messageOut #zField
Ae0 @TextInP .xml .xml #zField
Ae0 @TextInP .responsibility .responsibility #zField
Ae0 @StartRequest f0 '' #zField
Ae0 @EndTask f1 '' #zField
Ae0 @RichDialog f3 '' #zField
Ae0 @PushWFArc f4 '' #zField
Ae0 @PushWFArc f2 '' #zField
>Proto Ae0 Ae0 AutoComplete #zField
Ae0 f0 outLink start.ivp #txt
Ae0 f0 type ShowCaseProcesses.AutoCompleteData #txt
Ae0 f0 inParamDecl '<> param;' #txt
Ae0 f0 actionDecl 'ShowCaseProcesses.AutoCompleteData out;
' #txt
Ae0 f0 guid 15DA11A4D20EFCDE #txt
Ae0 f0 requestEnabled true #txt
Ae0 f0 triggerEnabled false #txt
Ae0 f0 callSignature start() #txt
Ae0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ae0 f0 @C|.responsibility Everybody #txt
Ae0 f0 81 49 30 30 -21 17 #rect
Ae0 f0 @|StartRequestIcon #fIcon
Ae0 f1 type ShowCaseProcesses.AutoCompleteData #txt
Ae0 f1 337 49 30 30 0 15 #rect
Ae0 f1 @|EndIcon #fIcon
Ae0 f3 targetWindow NEW:card: #txt
Ae0 f3 targetDisplay TOP #txt
Ae0 f3 richDialogId ch.axonivy.fintech.showcase.AutoComplete #txt
Ae0 f3 startMethod start() #txt
Ae0 f3 type ShowCaseProcesses.AutoCompleteData #txt
Ae0 f3 requestActionDecl '<> param;' #txt
Ae0 f3 responseActionDecl 'ShowCaseProcesses.AutoCompleteData out;
' #txt
Ae0 f3 responseMappingAction 'out=in;
' #txt
Ae0 f3 windowConfiguration '* ' #txt
Ae0 f3 isAsynch false #txt
Ae0 f3 isInnerRd false #txt
Ae0 f3 userContext '* ' #txt
Ae0 f3 168 42 112 44 0 -8 #rect
Ae0 f3 @|RichDialogIcon #fIcon
Ae0 f4 expr out #txt
Ae0 f4 111 64 168 64 #arcP
Ae0 f2 expr out #txt
Ae0 f2 280 64 337 64 #arcP
>Proto Ae0 .type ShowCaseProcesses.AutoCompleteData #txt
>Proto Ae0 .processKind NORMAL #txt
>Proto Ae0 0 0 32 24 18 0 #rect
>Proto Ae0 @|BIcon #fIcon
Ae0 f0 mainOut f4 tail #connect
Ae0 f4 head f3 mainIn #connect
Ae0 f3 mainOut f2 tail #connect
Ae0 f2 head f1 mainIn #connect
