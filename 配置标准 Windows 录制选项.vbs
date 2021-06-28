
'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest�����������κμ�����
'������׼ Windows ֧�֣�����ָ�������ڲ��Ե�
'Ӧ�ó���
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtStdLauncher 'As QuickTest.StdLauncher ' ���� Windows Ӧ�ó��������������
Dim qtStdApp 'As QuickTest.StdApplication ' ������Ϊ StdApplication �������
Dim strAdded ' Ϊ��ӵ�Ӧ�ó��������ַ�������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����

' ׼��Ӧ�ó���Ͳ���
qtApp.SetActiveAddins Array() ' ɾ�������е����м�����Ա� QuickTest �ڴ�ʱ�������κμ�����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
qtApp.Test.SetAssociatedAddins Array() ' ������Թ����ļ������б���ɾ�����м����
Set qtStdLauncher = qtApp.Test.Settings.Launchers.Item("Windows Applications") ' ���� Windows Ӧ�ó�����������

qtStdLauncher.Active = True ' ָʾ QuickTest ��¼�ƻỰ��ʼʱ��Ӧ�ó���

' �ڲ���������Ӧ�ó���
qtStdLauncher.Applications.Add "C:\Viewer.exe", "C:\" ' ���Ӧ�ó���
qtStdLauncher.Applications.Add "D:\Apps\Editor.exe", "D:\Apps" ' �����һ��Ӧ�ó���

' ������Ĳ����
qtApp.Test.SaveAs "C:\Tests\NewTest" ' �������
qtApp.Quit ' �˳� QuickTest
Set qtStdLauncher = Nothing ' �ͷ� Windows Ӧ�ó��������������
Set qtApp = Nothing ' �ͷ� Application ����
