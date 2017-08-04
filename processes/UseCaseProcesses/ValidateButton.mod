[Ivy]
[>Created: Fri Aug 04 10:23:01 ICT 2017]
15DAB441B4D6E401 3.18 #module
>Proto >Proto Collection #zClass
Vn0 ValidateButton Big #zClass
Vn0 B #cInfo
Vn0 #process
Vn0 @TextInP .resExport .resExport #zField
Vn0 @TextInP .type .type #zField
Vn0 @TextInP .processKind .processKind #zField
Vn0 @AnnotationInP-0n ai ai #zField
Vn0 @MessageFlowInP-0n messageIn messageIn #zField
Vn0 @MessageFlowOutP-0n messageOut messageOut #zField
Vn0 @TextInP .xml .xml #zField
Vn0 @TextInP .responsibility .responsibility #zField
Vn0 @StartRequest f0 '' #zField
Vn0 @EndTask f1 '' #zField
Vn0 @RichDialog f3 '' #zField
Vn0 @PushWFArc f4 '' #zField
Vn0 @PushWFArc f2 '' #zField
>Proto Vn0 Vn0 ValidateButton #zField
Vn0 f0 outLink start.ivp #txt
Vn0 f0 type ch.axonivy.fintech.Data #txt
Vn0 f0 inParamDecl '<> param;' #txt
Vn0 f0 actionDecl 'ch.axonivy.fintech.Data out;
' #txt
Vn0 f0 guid 15DAB441B4EC3DFB #txt
Vn0 f0 requestEnabled true #txt
Vn0 f0 triggerEnabled false #txt
Vn0 f0 callSignature start() #txt
Vn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Vn0 f0 @C|.responsibility Everybody #txt
Vn0 f0 81 49 30 30 -21 17 #rect
Vn0 f0 @|StartRequestIcon #fIcon
Vn0 f1 type ch.axonivy.fintech.Data #txt
Vn0 f1 337 49 30 30 0 15 #rect
Vn0 f1 @|EndIcon #fIcon
Vn0 f3 targetWindow NEW:card: #txt
Vn0 f3 targetDisplay TOP #txt
Vn0 f3 richDialogId ch.axonivy.fintech.usecase.ValidateButton #txt
Vn0 f3 startMethod start() #txt
Vn0 f3 type ch.axonivy.fintech.Data #txt
Vn0 f3 requestActionDecl '<> param;' #txt
Vn0 f3 responseActionDecl 'ch.axonivy.fintech.Data out;
' #txt
Vn0 f3 responseMappingAction 'out=in;
' #txt
Vn0 f3 windowConfiguration '* ' #txt
Vn0 f3 isAsynch false #txt
Vn0 f3 isInnerRd false #txt
Vn0 f3 userContext '* ' #txt
Vn0 f3 168 42 112 44 0 -8 #rect
Vn0 f3 @|RichDialogIcon #fIcon
Vn0 f4 expr out #txt
Vn0 f4 111 64 168 64 #arcP
Vn0 f2 expr out #txt
Vn0 f2 280 64 337 64 #arcP
>Proto Vn0 .type ch.axonivy.fintech.Data #txt
>Proto Vn0 .processKind NORMAL #txt
>Proto Vn0 0 0 32 24 18 0 #rect
>Proto Vn0 @|BIcon #fIcon
Vn0 f0 mainOut f4 tail #connect
Vn0 f4 head f3 mainIn #connect
Vn0 f3 mainOut f2 tail #connect
Vn0 f2 head f1 mainIn #connect
