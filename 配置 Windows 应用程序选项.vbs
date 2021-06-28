
'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest���������� Windows Ӧ�ó���ѡ�
'
'�ٶ���
'δ�� QuickTest��
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtOptions 'As QuickTest.WindowsAppsOptions ' ���� Windows Applications Options �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

Set qtOptions = qtApp.Options.WindowsApps ' ���� Windows Applications Options ����

' ���� Windows Ӧ�ó���ѡ��
qtOptions.AttachedTextArea = "BottomLeft" ' �������������ı��ĵ�
qtOptions.AttachedTextRadius = 50 ' �������������ı���������
qtOptions.ExpandMenuToRetrieveProperties = True ' ���������ڼ��������ǰ�򿪲˵�����
qtOptions.NonUniqueListItemRecordMode = "ByIndex" ' ������ڶ���б������������ͬ��������¼�Ƹ��Ե�����
qtOptions.RecordOwnerDrawnButtonAs = "CheckBoxes" ' ���ñ�ʶ��¼���Զ��尴ť��Ϊ��ѡ��
qtOptions.ForceEnumChildWindows = True ' ¼�ƺ����в���ʱö�������Ӵ��ڡ�
qtOptions.ClickEditBeforeSetText = True ' �ڱ༭���в����ı�ǰ��ִ�е��������ڱ༭�������ý��㡣
qtOptions.VerifyMenuInitEvent = False ' �ڲ˵��ؼ���¼�Ʋ���ǰ���Բ˵���ʼ���¼���


Set qtOptions = Nothing ' �ͷ� Windows Applications Options ����
Set qtApp = Nothing ' �ͷ� Application ����

