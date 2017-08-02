[Ivy]
[>Created: Wed Aug 02 15:33:04 ICT 2017]
15DA210F6E0BA7F5 3.18 #module
>Proto >Proto Collection #zClass
Ds0 DemoProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogProcessStart f8 '' #zField
Ds0 @GridStep f9 '' #zField
Ds0 @RichDialogProcessEnd f10 '' #zField
Ds0 @PushWFArc f11 '' #zField
Ds0 @PushWFArc f12 '' #zField
>Proto Ds0 Ds0 DemoProcess #zField
Ds0 f0 guid 15DA210F6F9CF9C0 #txt
Ds0 f0 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f1 339 51 26 26 0 12 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 guid 15DA210F711C8575 #txt
Ds0 f3 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f3 actionDecl 'ch.axonivy.fintech.showcase.Demo.DemoData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 147 26 26 -15 12 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f4 guid 15DA210F71190F5A #txt
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f4 @|RichDialogEndIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 actionDecl 'ch.axonivy.fintech.showcase.Demo.DemoData out;
' #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'in.data = "ranger";' #txt
Ds0 f6 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f6 168 42 112 44 0 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 109 64 168 64 #arcP
Ds0 f2 expr out #txt
Ds0 f2 280 64 339 64 #arcP
Ds0 f8 guid 15DA212E82661F9A #txt
Ds0 f8 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f8 actionDecl 'ch.axonivy.fintech.showcase.Demo.DemoData out;
' #txt
Ds0 f8 actionTable 'out=in;
' #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onClick</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f8 83 243 26 26 -20 15 #rect
Ds0 f8 @|RichDialogProcessStartIcon #fIcon
Ds0 f9 actionDecl 'ch.axonivy.fintech.showcase.Demo.DemoData out;
' #txt
Ds0 f9 actionTable 'out=in;
' #txt
Ds0 f9 actionCode 'in.data = "ranger 2";' #txt
Ds0 f9 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f9 136 234 112 44 0 -8 #rect
Ds0 f9 @|StepIcon #fIcon
Ds0 f10 type ch.axonivy.fintech.showcase.Demo.DemoData #txt
Ds0 f10 307 243 26 26 0 12 #rect
Ds0 f10 @|RichDialogProcessEndIcon #fIcon
Ds0 f11 expr out #txt
Ds0 f11 109 256 136 256 #arcP
Ds0 f12 expr out #txt
Ds0 f12 248 256 307 256 #arcP
>Proto Ds0 .type ch.axonivy.fintech.showcase.Demo.DemoData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f8 mainOut f11 tail #connect
Ds0 f11 head f9 mainIn #connect
Ds0 f9 mainOut f12 tail #connect
Ds0 f12 head f10 mainIn #connect
