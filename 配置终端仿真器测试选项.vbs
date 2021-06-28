
'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest �����á��ն˷�������ѡ�
'
'�ٶ���
'δ�� QuickTest��
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtTeOptions 'As QuickTest.TeOptions ' ���� TE Options �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.SetActiveAddins Array("Terminal Emulators") ' �����ն˷�����������
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtTeOptions = qtApp.Options.TE ' ���� TE Options ����

' ���á��ն˷�������ѡ��

' ����ȫ�֡��ն˷�������ѡ����������з�������

qtTeOptions.ScreenTitleRow = 1 ' ������Ļ�����λ��
qtTeOptions.ScreenTitleCol = 1
qtTeOptions.ScreenTitleLength = 30

qtTeOptions.AutoAdvance = False ' ָ����������֧���Զ�ǰ���ֶ�
qtTeOptions.AutoSyncKeys = "13" ' ¼�Ʋ���ʱ��¼��ÿ�ΰ��� Enter ��ʱ��ͬ������
qtTeOptions.RecordMenusAndPopups = True '����¼�Ʒ�����������Ϣ�Ͳ˵�
qtTeOptions.RecordCursorPosition = True '¼�ƹ��λ�õĲ���
qtTeOptions.UsePropertyPattern = True ' ʹ��Ĭ������ģʽ�ļ�
qtTeOptions.PropertyPatternsFile = "C:\Program Files\Mercury Interactive\QuickTest Professional\Dat\PropertyPatternConfigTE.xml"

' ָ����ǰ������
qtTeOptions.CurrentEmulator = "Host On-Demand 8.0" ' ���õ�ǰ������Ϊ Host On-Demand 8.0

' �����ض��ڵ�ǰ��������ѡ��
qtTeOptions.Protocol = "autodetect" 'ʹ QuickTest ���ỰЭ��
qtTeOptions.BlankLines = 0 ' ���������ڵײ�û�пհ��С�
qtTeOptions.CodePage = 0 ' ʹ��Ĭ�ϴ���ҳת��
qtTeOptions.HllapiDllName = "C:\Program Files\IBM\EHLLAPI\pcshll32.dll" ' ָ��Ҫʹ�õ� HLLAPI dll
qtTeOptions.HllapiProcName = "hllapi" ' ָ��Ҫʹ�õ� HLLAPI ����
qtTeOptions.VerifyHllapiDllPath = True ' ����Ҳ��� HLLAPI dll������ʾ������Ϣ
qtTeOptions.ScreenLabelUseAllChars = True ' ʹ���ܱ����Ͳ��ܱ������ֶα�ʶ��Ļ��ǩ��
qtTeOptions.WindowTitlePrefix = "MyTerminal" ' �����ն˴��ڵĴ��ڱ���ǰ׺����ʶ�ն˴��ڡ�
qtTeOptions.TrailingMode = True ' �����������йص�ģʽ����¼��ʱ�����ð�ɫ�ַ�
qtTeOptions.TrailingFieldLength = 5 ' ����ֶ��������ɫ�ַ���ͷ��
qtTeOptions.BeepOnSync = False ' ��Ҫ��ÿһͬ������󷢳�������
qtTeOptions.UseKeyEvent "@R", "17;52" ' ʹ�� CTRL+R �����¼��ط� TE_RESET ����
qtTeOptions.SyncTime = 200 ' �ȴ� 200 �����ټ�������״̬

' ���
Set qtTeOptions = Nothing ' �ͷ� TE Options ���� ' �ͷ� Te Options ����
Set qtApp = Nothing ' �ͷ� Application ���� ' �ͷ� Application ����
