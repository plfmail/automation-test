
'************************************************************************************************************************
'������
'
'��ʾ������ QuickTest�����µĲ��ԣ����������������� Web Ӧ�ó�����¼�ƺ����С�
'
'�ٶ���
'δ�� QuickTest��
'************************************************************************************************************************

Dim qtApp 'As QuickTest.Application ' ���� Application �������
Set qtApp = CreateObject("QuickTest.Application") ' ����Ӧ�ó������

qtApp.SetActiveAddins Array("Web") ' ���� Web ������
qtApp.Launch ' ���� QuickTest
qtApp.New ' ���µĲ���

' ���� Web Ӧ�ó���ʹ�øò���
qtApp.Test.Settings.Launchers("Web").Active = True
qtApp.Test.Settings.Launchers("Web").Browser = "IE"
qtApp.Test.Settings.Launchers("Web").Address = "http://newtours.mercuryinteractive.com "
qtApp.Test.Settings.Launchers("Web").CloseOnExit = True

' ���� Active Screen ��������
qtApp.Test.Settings.Web.ActiveScreenAccess.UserName = "user1"
qtApp.Test.Settings.Web.ActiveScreenAccess.Password = "mypassword"

' �������� Web ����
qtApp.Test.Settings.Web.BrowserNavigationTimeout = 60000
qtApp.Test.Settings.Web.NextPageIfObjNotFound = True

qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtApp = Nothing ' �ͷ� Application ����
