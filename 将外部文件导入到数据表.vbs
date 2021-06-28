
'************************************************************************************************************************
'������
'
'��ʾ�������ݴ��ⲿ�ļ����뵽���ݱ���ͨ�����ݱ�
'���ò��ԵĲ�������ʾ�����ͨ�������в���ǰ�������ݱ�ֵ
'������Է��Ͳ�����
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'QuickTest �����������ļ�����һ��򿪡�
'�й���ϸ��Ϣ������� Test.GetAssociatedAddins ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtOptions 'As QuickTest.RunResultsOptions ' ���� Run Results Options �������
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

' �򿪲���
qtApp.Open "C:\Tests\Test1", False ' ����Ϊ��Test1���Ĳ���

' �����ݵ��뵽���ʱ���ݱ�Ȼ������µ�����
qtApp.Test.DataTable.Import "C:\Data.xls" ' ���ⲿ�ļ���������
qtApp.Test.DataTable.ImportSheet "C:\Tables.xls", 1, "Action1" ' ���뵥��������
qtApp.Test.DataTable.GlobalSheet("Started") = Now ' ���ò������е�����ʱ��
qtApp.Test.DataTable.GlobalSheet("ParamCount") = 45 ' ʹ�����ݱ����ò��ԵĲ���

' ���в���
Set qtOptions = CreateObject("QuickTest.RunResultsOptions") ' ���� Results Option ����
qtOptions.ResultsLocation = "<TempLocation>" ' �������λ������Ϊ��ʱλ��
qtApp.Test.Run qtOptions, True ' �ڼ��������Զ��ű�ǰ���в��Բ��ȴ����

' �������ʱ���ݱ��е�����ֵ
qtApp.Test.DataTable.GlobalSheet("Ended") = Now ' ���ò������еĽ���ʱ��
qtApp.Test.DataTable.GlobalSheet("RanBy") = "James" ' ���á�RanBy����Ԫ��
qtApp.Test.Save

' ��������ʱ���ݱ�
qtApp.Test.LastRunResults.DataTable.Export "C:\Runtime.xls" ' ������ʱ���ݱ��浽�ļ���

qtApp.Quit ' �˳� QuickTest
Set qtOptions = Nothing ' �ͷ� Run Results Options ����
Set qtApp = Nothing ' �ͷ� Application ����
