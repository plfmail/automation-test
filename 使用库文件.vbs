'************************************************************************************************************************
'������
'
'��ʾ���򿪲��ԣ����ò��ԵĿ�ļ���
'��������ԡ�
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtLibraries 'As QuickTest.TestLibraries ' �������ԵĿ⼯�ϱ���
Dim lngPosition

' �� QuickTest
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ���� QuickTest �ɼ�

' �򿪲��Բ���ȡ��⼯��
qtApp.Open "C:\Tests\Test1", False, False ' �򿪲���
Set qtLibraries = qtApp.Test.Settings.Resources.Libraries ' ��ȡ�⼯�϶���

' ��� Utilities.vbs ���ڼ����У��������
If qtLibraries.Find("C:\Utilities.vbs") = -1 Then ' ����������Ҳ�����
    qtLibraries.Add "C:\Utilities.vbs", 1 ' �򼯺���ӿ�
End If

' ��������� Math.vbs - ���仹ԭ��λ�� 1
If qtLibraries.Count > 1 And qtLibraries.Item(2) = "C:\Math.vbs" Then ' ������ڶ������ Math.vbs λ��λ�� 2
    qtLibraries.MoveToPos 1, 2 ' ��ǰ������֮������л�
End If

' ��� Debug.vbs ���ڼ����� - ����ɾ��
lngPosition = qtLibraries.Find("C:\Debug.vbs") ' ���Բ��� Debug.vbs ��
If lngPosition <> -1 Then ' ����ڼ������ҵ���
    qtLibraries.Remove lngPosition ' ����ɾ��
End If

' ���¿����������ΪĬ������
qtLibraries.SetAsDefault ' ������Թ����Ŀ��ļ�����Ϊ�¿��Ĭ�Ͽ��ļ�

'������Բ��ر� QuickTest
qtApp.Test.Save ' �������
qtApp.Quit ' �˳� QuickTest

Set qtLibraries = Nothing ' �ͷŲ��ԵĿ⼯��
Set qtApp = Nothing ' �ͷ� Application ����
