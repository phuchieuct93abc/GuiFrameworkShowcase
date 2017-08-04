[Ivy]
[>Created: Fri Aug 04 10:22:48 ICT 2017]
15DAB43465612235 3.18 #module
>Proto >Proto Collection #zClass
Ct0 ComponentContext Big #zClass
Ct0 B #cInfo
Ct0 #process
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @StartRequest f0 '' #zField
Ct0 @EndTask f1 '' #zField
Ct0 @RichDialog f3 '' #zField
Ct0 @PushWFArc f4 '' #zField
Ct0 @PushWFArc f2 '' #zField
>Proto Ct0 Ct0 ComponentContext #zField
Ct0 f0 outLink start.ivp #txt
Ct0 f0 type ch.axonivy.fintech.Data #txt
Ct0 f0 inParamDecl '<> param;' #txt
Ct0 f0 actionDecl 'ch.axonivy.fintech.Data out;
' #txt
Ct0 f0 guid 15DAB43465AB4380 #txt
Ct0 f0 requestEnabled true #txt
Ct0 f0 triggerEnabled false #txt
Ct0 f0 callSignature start() #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ct0 f0 @C|.responsibility Everybody #txt
Ct0 f0 81 49 30 30 -21 17 #rect
Ct0 f0 @|StartRequestIcon #fIcon
Ct0 f1 type ch.axonivy.fintech.Data #txt
Ct0 f1 353 49 30 30 0 15 #rect
Ct0 f1 @|EndIcon #fIcon
Ct0 f3 targetWindow NEW:card: #txt
Ct0 f3 targetDisplay TOP #txt
Ct0 f3 richDialogId ch.axonivy.fintech.usecase.ComponentContext #txt
Ct0 f3 startMethod start() #txt
Ct0 f3 type ch.axonivy.fintech.Data #txt
Ct0 f3 requestActionDecl '<> param;' #txt
Ct0 f3 responseActionDecl 'ch.axonivy.fintech.Data out;
' #txt
Ct0 f3 responseMappingAction 'out=in;
' #txt
Ct0 f3 windowConfiguration '* ' #txt
Ct0 f3 isAsynch false #txt
Ct0 f3 isInnerRd false #txt
Ct0 f3 userContext '* ' #txt
Ct0 f3 184 42 112 44 0 -8 #rect
Ct0 f3 @|RichDialogIcon #fIcon
Ct0 f4 expr out #txt
Ct0 f4 111 64 184 64 #arcP
Ct0 f2 expr out #txt
Ct0 f2 296 64 353 64 #arcP
>Proto Ct0 .type ch.axonivy.fintech.Data #txt
>Proto Ct0 .processKind NORMAL #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f0 mainOut f4 tail #connect
Ct0 f4 head f3 mainIn #connect
Ct0 f3 mainOut f2 tail #connect
Ct0 f2 head f1 mainIn #connect
