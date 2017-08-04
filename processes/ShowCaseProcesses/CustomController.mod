[Ivy]
[>Created: Fri Aug 04 09:57:45 ICT 2017]
15DAB2D21E552E33 3.18 #module
>Proto >Proto Collection #zClass
Cr0 CustomController Big #zClass
Cr0 B #cInfo
Cr0 #process
Cr0 @TextInP .resExport .resExport #zField
Cr0 @TextInP .type .type #zField
Cr0 @TextInP .processKind .processKind #zField
Cr0 @AnnotationInP-0n ai ai #zField
Cr0 @MessageFlowInP-0n messageIn messageIn #zField
Cr0 @MessageFlowOutP-0n messageOut messageOut #zField
Cr0 @TextInP .xml .xml #zField
Cr0 @TextInP .responsibility .responsibility #zField
Cr0 @StartRequest f0 '' #zField
Cr0 @EndTask f1 '' #zField
Cr0 @RichDialog f3 '' #zField
Cr0 @PushWFArc f4 '' #zField
Cr0 @PushWFArc f2 '' #zField
>Proto Cr0 Cr0 CustomController #zField
Cr0 f0 outLink start.ivp #txt
Cr0 f0 type ch.axonivy.fintech.Data #txt
Cr0 f0 inParamDecl '<> param;' #txt
Cr0 f0 actionDecl 'ch.axonivy.fintech.Data out;
' #txt
Cr0 f0 guid 15DAB2D21E7F5EF3 #txt
Cr0 f0 requestEnabled true #txt
Cr0 f0 triggerEnabled false #txt
Cr0 f0 callSignature start() #txt
Cr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Cr0 f0 @C|.responsibility Everybody #txt
Cr0 f0 81 49 30 30 -21 17 #rect
Cr0 f0 @|StartRequestIcon #fIcon
Cr0 f1 type ch.axonivy.fintech.Data #txt
Cr0 f1 337 49 30 30 0 15 #rect
Cr0 f1 @|EndIcon #fIcon
Cr0 f3 targetWindow NEW:card: #txt
Cr0 f3 targetDisplay TOP #txt
Cr0 f3 richDialogId ch.axonivy.fintech.usecase.CustomController #txt
Cr0 f3 startMethod start() #txt
Cr0 f3 type ch.axonivy.fintech.Data #txt
Cr0 f3 requestActionDecl '<> param;' #txt
Cr0 f3 responseActionDecl 'ch.axonivy.fintech.Data out;
' #txt
Cr0 f3 responseMappingAction 'out=in;
' #txt
Cr0 f3 windowConfiguration '* ' #txt
Cr0 f3 isAsynch false #txt
Cr0 f3 isInnerRd false #txt
Cr0 f3 userContext '* ' #txt
Cr0 f3 168 42 112 44 0 -8 #rect
Cr0 f3 @|RichDialogIcon #fIcon
Cr0 f4 expr out #txt
Cr0 f4 111 64 168 64 #arcP
Cr0 f2 expr out #txt
Cr0 f2 280 64 337 64 #arcP
>Proto Cr0 .type ch.axonivy.fintech.Data #txt
>Proto Cr0 .processKind NORMAL #txt
>Proto Cr0 0 0 32 24 18 0 #rect
>Proto Cr0 @|BIcon #fIcon
Cr0 f0 mainOut f4 tail #connect
Cr0 f4 head f3 mainIn #connect
Cr0 f3 mainOut f2 tail #connect
Cr0 f2 head f1 mainIn #connect
