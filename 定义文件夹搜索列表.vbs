'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest��ʹ�� Folders ��������
'�����������·��������·����
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim strPath
Dim lngPosition

' �� QuickTest
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

' �򿪲���
qtApp.Open "C:\Tests\Test1", True, False ' ��ֻ��ģʽ�򿪲���

' �ҵ���Folder1������������ڼ����У����������
strPath = qtApp.Folders.Locate("..\..\Folders\Folder1") ' �ҵ���Folder1���ļ���
If qtApp.Folders.Find(strPath) = -1 Then ' ���δ�ڼ������ҵ��ļ���
    qtApp.Folders.Add strPath, 1 ' ���ļ�����ӵ�����
End If

' ��������˵�ǰ���ļ��� - ���仹ԭ��λ�� 1
If qtApp.Folders.Item(2) = "<Current Test>" Then ' �����ǰ�����ļ���λ��λ�� 2
    qtApp.Folders.MoveToPos 1, 2 ' ����ǰ�����ļ��е�˳��
End If

' �����Folder2���ڼ����� - ����ɾ����
lngPosition = CLng(qtApp.Folders.Find("C:\Folders\Folder2")) ' ������Folder2���ļ���
If intPosition <> -1 Then ' ����ڼ������ҵ��ļ���
    qtApp.Folders.Remove lngPosition ' ����ɾ��
End If

Set qtApp = Nothing ' �ͷ� Application ����

