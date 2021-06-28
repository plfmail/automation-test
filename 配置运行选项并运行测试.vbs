
'************************************************************************************************************************
'������
'
'��ʾ���򿪲��ԣ���������ѡ������ã�
'���иò��ԣ�Ȼ����������еĽ����
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'�� QuickTest ʱ�������ز���������ļ����
'�й���ϸ��Ϣ������� Test.GetAssociatedAddins ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtTest 'As QuickTest.Test ' ���� Test �������
Dim qtResultsOpt 'As QuickTest.RunResultsOptions ' ���� Run Results Options �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

' ���� QuickTest ����ѡ��
qtApp.Options.Run.CaptureForTestResults = "OnError"
qtApp.Options.Run.RunMode = "Fast"
qtApp.Options.Run.ViewResults = False

qtApp.Open "C:\Tests\Test1", True ' ��ֻ��ģʽ�򿪲���

' Ϊ����������������
Set qtTest = qtApp.Test
qtTest.Settings.Run.IterationMode = "rngIterations" ' ������ѭ�� 2 �� 4
qtTest.Settings.Run.StartIteration = 2
qtTest.Settings.Run.EndIteration = 4
qtTest.Settings.Run.OnError = "NextStep" ' ָʾ QuickTest �ڷ�������ʱִ����һ����

Set qtResultsOpt = CreateObject("QuickTest.RunResultsOptions") ' ���� Run Results Options ����
qtResultsOpt.ResultsLocation = "C:\Tests\Test1\Res1" ' ���ý��λ��

qtTest.Run qtResultsOpt ' ���в���

MsgBox qtTest.LastRunResults.Status ' ���������еĽ��
qtTest.Close ' �رղ���

Set qtResultsOpt = Nothing ' �ͷ� Run Results Options ����
Set qtTest = Nothing ' �ͷ� Test ����
Set qtApp = Nothing ' �ͷ� Application ����
