
'************************************************************************************************************************
'������
'
'��ʾ������ QuickTest�����µĲ��ԣ�������
'�������� Java Ӧ�ó�����¼�ƺ����С�
'
'�ٶ���
'δ�� QuickTest��
'************************************************************************************************************************

Dim qtApp 'As QuickTest.Application ' ���� Application �������
Set qtApp = CreateObject("QuickTest.Application") ' ����Ӧ�ó������

qtApp.SetActiveAddins Array("Java") ' ���� Java ������
qtApp.Launch ' ���� QuickTest
qtApp.New ' ���µĲ���

' ���� Java Ӧ�ó���ʹ�øò���
qtApp.Test.Settings.Launchers("Java").Active = True
qtApp.Test.Settings.Launchers("Java").CommandLine = "C:\j2sdk1.4.2\bin\java.exe -jar C:\j2sdk1.4.2\demo\jfc\SwingSet2\SwingSet2.jar"
qtApp.Test.Settings.Launchers("Java").WorkingDirectory = "C:\j2sdk1.4.2\demo\jfc\SwingSet2"

qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtApp = Nothing ' �ͷ� Application ����
