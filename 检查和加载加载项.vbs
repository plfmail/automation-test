'************************************************************************************************************************
'������
'
'��ʾ����һ�����ԣ���������������Թ����ļ����
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim blnNeedChangeAddins ' ����һ����־������ָ����ǰ�Ƿ��Ѽ�������Թ����ļ�����
Dim arrTestAddins ' �������������ڴ洢����Թ����ļ�����

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����

arrTestAddins = qtApp.GetAssociatedAddinsForTest("C:\Tests\Test1") ' ����һ�����飬���ڰ�����ò��Թ����ļ�������б�

' ����Ƿ��Ѽ������б���ļ�����
blnNeedChangeAddins = False ' �ٶ��������κθ���
For Each testAddin In arrTestAddins ' ѭ������Թ����ļ������б�
    If qtApp.Addins(testAddin).Status <> "Active" Then ' �������δ���صĹ���������
        blnNeedChangeAddins = True ' ָ����Ҫ�Լ��صļ�������и���
        Exit For ' �˳�ѭ��
    End If
Next

If qtApp.Launched And blnNeedChangeAddins Then
        qtApp.Quit ' ����б�Ҫ���и��ģ����˳� QuickTest���޸��Ѽ��صļ�����
End If

If blnNeedChangeAddins Then
    Dim blnActivateOK
    blnActivateOK = qtApp.SetActiveAddins(arrTestAddins, errorDescription) ' ��������Թ����ļ������������Ƿ��Ѽ��سɹ���
    If Not blnActivateOK Then ' ����ڼ��ؼ�����ʱ��������
        MsgBox errorDescription ' ��ʾ�����������Ϣ
    WScript.Quit ' �������Զ�����
    End If
End If

If Not qtApp.Launched Then ' �����δ�� QuickTest
    qtApp.Launch ' ���� QuickTest���Ѽ�����ȷ�ļ����
End If
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

qtApp.Open "C:\Tests\Test1" ' �򿪲���
Set qtApp = Nothing ' �ͷ� Application ����

