
'************************************************************************************************************************
'������
'
'��ʾ��ʹ����ָ�����Թ����ļ������б��е�
' Oracle �������滻 Java �����
'
'�ٶ���
'
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************


Dim qtApp ' As QuickTest.Application ' ���� Application �������

Directory = InputBox("Enter the path of the test you want to convert.")
Call ConvertTest(Directory)


Private Function ConvertTest(TestPath)
    ' ���� Application ����
    Set qtApp = CreateObject("QuickTest.Application")
    ' �򿪲��ԡ�
    Call qtApp.Open(TestPath)
    ' ��������Թ����ļ�������б�
    Addins = qtApp.Test.GetAssociatedAddins()
    ' ����ڼ������б��г��� Java������ Oracle �����滻��
    For i = 0 To UBound(Addins)
        If Addins(i) = "Java" Then
            Addins(i) = "Oracle"
        End If
    Next
    ' ���µĹ����ļ������б�Ӧ���ڲ��ԡ�
    If Not qtApp.Test.SetAssociatedAddins(Addins, ErrorDesc) Then
                MsgBox "Unable to modify the associated add-ins for this test: " _
                    & Chr(13) & TestPath _
                    & Chr(13) & ErrorDesc
                Exit Function
            End If
    ' ������ĳɹ����򱣴���ԡ�
    Call qtApp.Test.Save
End Function
