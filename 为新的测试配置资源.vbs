
'************************************************************************************************************************
'������
'
'��ʾ�����µĲ��ԣ���Ϊ�ò���������Դ��
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtTestResources 'As QuickTest.Resources ' ���� Resources �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
qtApp.New ' ���µĲ���

' ���� Resources ����
Set qtTestResources = qtApp.Test.Settings.Resources

' ָ���ⲿ���ݱ��ļ��͹���Ķ����
qtTestResources.DataTablePath = "C:\Resources\Default.xls"
qtTestResources.ObjectRepositoryPath = "C:\Resources\Resource.mtr"
' ʹ�ù����Ϊ�����µĲ��Ե�Ĭ�Ͽ�
qtTestResources.SetObjectRepositoryAsDefault

Set qtTestResources = Nothing ' �ͷ� Resources ����
Set qtApp = Nothing ' �ͷ� Application ����
