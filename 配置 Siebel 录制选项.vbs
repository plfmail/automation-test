
'************************************************************************************************************************
'������
'
'��ʾ������ QuickTest�����µĲ��ԣ����������������ھ����Զ���¼���ܻ�� Siebel 7.7 Ӧ�ó����Ͻ���¼�ƺ����С�
'
'�ٶ���
'δ�� QuickTest��
'************************************************************************************************************************
Dim qtApp 'As Application ' ���� Application �������
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.SetActiveAddins Array("Siebel") ' ���� Siebel ������
qtApp.Launch ' ���� QuickTest
qtApp.New ' ���µĲ���
' ���� Siebel Ӧ�ó���汾��ʹ�øò���
qtApp.Test.Settings.Launchers("Siebel").Active = True
qtApp.Test.Settings.Launchers("Siebel").Version = "77"
' ָ�� URL �����������������ʹ�øò���
qtApp.Test.Settings.Launchers("Siebel").Address = "http://Siebel_application.url"
qtApp.Test.Settings.Launchers("Siebel").LogoutOnExit = False
qtApp.Test.Settings.Launchers("Siebel").CloseOnExit = True
' �����Զ���¼������ʹ�øò���
qtApp.Test.Settings.Launchers("Siebel").AutoLogin = True
qtApp.Test.Settings.Launchers("Siebel").User = "username"
qtApp.Test.Settings.Launchers("Siebel").Password = "mypassword"
' ���� Siebel 7.7 Ӧ�ó����ض��ĸ߼���ʱ�ͷ�������
qtApp.Test.Settings.Launchers("Siebel").SiebAutomationRequestTimeout = 120
qtApp.Test.Settings.Launchers("Siebel").SiebAutomationAccessCode = "aCode"
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtApp = Nothing ' �ͷ� Application ����
