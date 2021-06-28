'************************************************************************************************************************
'������
'
'��ʾ��ʹ�� Recovery ����ָ��һ��
'�ָ������������µĲ��ԡ�
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtTestRecovery 'As QuickTest.Recovery ' ���� Recovery �������
Dim intIndex ' ������������

' �� QuickTest ��׼���������
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.New ' ���µĲ���
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtTestRecovery = qtApp.Test.Settings.Recovery ' ���ص�ǰ���Ե� Recovery ����

If qtTestRecovery.Count > 0 Then ' ���Ϊ����ָ����ĳЩĬ�ϳ���
    qtTestRecovery.RemoveAll ' ɾ������
End If

' ��ӻָ�����
qtTestRecovery.Add "C:\Recovery.qrs", "ErrMessage", 1 ' ����ErrMessage���������Ϊ��һ������
qtTestRecovery.Add "C:\Recovery.qrs", "AppCrash", 2 ' ����AppCrash���������Ϊ�ڶ�������
qtTestRecovery.Add "C:\Recovery.qrs", "ObjDisabled", 3 ' ����ObjDisabled���������Ϊ����������

' �������г���
For intIndex = 1 To qtTestRecovery.Count ' ѭ������
    qtTestRecovery.Item(intIndex).Enabled = True ' ����ÿ���ָ�������ע�⣺��Item��������Ĭ�����ԣ��ҿ�ʡ�ԣ�
Next

' ���ûָ����ƣ�ʹ�ó���ʱ��Ĭ�����ã�
qtTestRecovery.Enabled = True

'ȷ���ָ����Ʊ�����Ϊ���ڳ���ʱ����
qtTestRecovery.SetActivationMode "OnError"
'OnError ��Ĭ��ֵ����һ��ѡ���ǡ�OnEveryStep����


Set qtApp = Nothing ' �ͷ� Application ����
Set qtTestRecovery = Nothing ' �ͷ� Recovery ����
