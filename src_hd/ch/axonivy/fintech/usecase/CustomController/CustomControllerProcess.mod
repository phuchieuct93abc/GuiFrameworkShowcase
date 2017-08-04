[Ivy]
[>Created: Fri Aug 04 13:58:35 ICT 2017]
15DAB2CB4A5884CD 3.18 #module
>Proto >Proto Collection #zClass
Bs0 CustomControllerProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Bs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Bs0 @TextInP .resExport .resExport #zField
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @MessageFlowInP-0n messageIn messageIn #zField
Bs0 @MessageFlowOutP-0n messageOut messageOut #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @RichDialogInitStart f0 '' #zField
Bs0 @RichDialogProcessEnd f1 '' #zField
Bs0 @RichDialogProcessStart f3 '' #zField
Bs0 @RichDialogEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @GridStep f6 '' #zField
Bs0 @PushWFArc f7 '' #zField
Bs0 @PushWFArc f2 '' #zField
>Proto Bs0 Bs0 CustomControllerProcess #zField
Bs0 f0 guid 15D7DC04055859EE #txt
Bs0 f0 type ch.axonivy.fintech.usecase.CustomController.CustomControllerData #txt
Bs0 f0 method start() #txt
Bs0 f0 disableUIEvents true #txt
Bs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Bs0 f0 outParameterDecl '<> result;
' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(basicComponent)</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f0 83 51 26 26 -63 15 #rect
Bs0 f0 @|RichDialogInitStartIcon #fIcon
Bs0 f1 type ch.axonivy.fintech.usecase.CustomController.CustomControllerData #txt
Bs0 f1 499 51 26 26 0 12 #rect
Bs0 f1 @|RichDialogProcessEndIcon #fIcon
Bs0 f3 guid 15D7DC0406BE6D9A #txt
Bs0 f3 type ch.axonivy.fintech.usecase.CustomController.CustomControllerData #txt
Bs0 f3 actionDecl 'ch.axonivy.fintech.usecase.CustomController.CustomControllerData out;
' #txt
Bs0 f3 actionTable 'out=in;
' #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 83 147 26 26 -15 12 #rect
Bs0 f3 @|RichDialogProcessStartIcon #fIcon
Bs0 f4 type ch.axonivy.fintech.usecase.CustomController.CustomControllerData #txt
Bs0 f4 guid 15D7DC0406B33F98 #txt
Bs0 f4 211 147 26 26 0 12 #rect
Bs0 f4 @|RichDialogEndIcon #fIcon
Bs0 f5 expr out #txt
Bs0 f5 109 160 211 160 #arcP
Bs0 f6 actionDecl 'ch.axonivy.fintech.usecase.CustomController.CustomControllerData out;
' #txt
Bs0 f6 actionTable 'out=in;
' #txt
Bs0 f6 actionCode 'import java.util.ArrayList;
import ch.axonivy.fintech.showcase.CodeDemoFactory;
import ch.axonivy.fintech.showcase.ResourceLoader;
import ch.axonivy.fintech.BasicComponentData;
in.dossier= new BasicComponentData();
ResourceLoader loader = new ResourceLoader();
in.codes = new ArrayList();



in.codes.add(CodeDemoFactory.createCodeDemo(CodeDemoFactory.XML,"View","src_hd\\ch\\axonivy\\fintech\\usecase\\CustomController\\CustomController.xhtml"));
in.codes.add(CodeDemoFactory.createCodeDemo(CodeDemoFactory.JAVA,"Controller","src\\ch\\axonivy\\fintech\\usecase\\CustomControllerController.java"));
' #txt
Bs0 f6 type ch.axonivy.fintech.usecase.CustomController.CustomControllerData #txt
Bs0 f6 200 42 112 44 0 -8 #rect
Bs0 f6 @|StepIcon #fIcon
Bs0 f7 expr out #txt
Bs0 f7 109 64 200 64 #arcP
Bs0 f2 expr out #txt
Bs0 f2 312 64 499 64 #arcP
>Proto Bs0 .type ch.axonivy.fintech.usecase.CustomController.CustomControllerData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
>Proto Bs0 '' #fIcon
Bs0 f3 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
Bs0 f0 mainOut f7 tail #connect
Bs0 f7 head f6 mainIn #connect
Bs0 f6 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
