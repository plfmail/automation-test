
'************************************************************************************************************************
'������
'
'��ʾ������ QuickTest�����µĲ��ԣ����������������� SAP GUI for Windows Ӧ�ó�����
'¼�ƺ�����
'
'�ٶ���
'δ�� QuickTest��
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����

qtApp.SetActiveAddins Array("SAP") ' ���� SAP �����
qtApp.Launch ' ���� QuickTest
qtApp.New ' ���µĲ���

' ���á�SAP ¼�ƺ����С����ã��Ա�򿪾�����Щ���õ� SAP GUI for Windows Ӧ�ó���
qtApp.Test.Settings.Launchers("SAP").Active = True 'Invoke a new SAP Gui for Windows session when recording begins
qtApp.Test.Settings.Launchers("SAP").Server = "R/3 Enterprise" '���� SAP GUI for Windows�������ӵ���R/3 Enterprise��������
qtApp.Test.Settings.Launchers("SAP").AutoLogon = True 'ʹ�����µ�¼��ϸ��Ϣִ���Զ���¼
qtApp.Test.Settings.Launchers("SAP").Client = "800" 'SAP �ͻ��˵ı��
qtApp.Test.Settings.Launchers("SAP").User = "QA01" 'SAP ���������û���
qtApp.Test.Settings.Launchers("SAP").Password = "3f5aea819b0239" '��������Ϊһ�������ַ���
qtApp.Test.Settings.Launchers("SAP").Language = "EN" '�û�����ʹ��Ӣ��
qtApp.Test.Settings.Launchers("SAP").RememberPassword = True 'Save logon password for use in future test runs
qtApp.Test.Settings.Launchers("SAP").CloseOnExit = True '�˳��ò���ʱ�رո� SAP GUI for Windows �Ự
qtApp.Test.Settings.Launchers("SAP").IgnoreExistingSessions = True '��Ҫ��¼�ƻ����лỰ��ʼ֮ǰ�Ѿ��򿪵��κ� SAP �Ự��¼�ƻ����в���

qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtApp = Nothing ' �ͷ� Application ����
