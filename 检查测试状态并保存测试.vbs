
'************************************************************************************************************************
'������
'
'��ʾ���������޸ĵĲ��ԣ��Ա���Դ��µĲ���
'���˳�Ӧ�ó��򣬶�����ʧ�κ�δ�������Ϣ��
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest�����δ������
qtApp.Visible = True ' ʹ��ɼ�

' ���浱ǰ���Բ�������Ҫ�����Ƿ��һ���µĲ���
If qtApp.Test.Modified Then ' ����޸��˲���
    If qtApp.Test.IsNew Then ' ������µĲ��ԣ��ޱ��⣩
        qtApp.Test.SaveAs "C:\Temp\TempTest" ' ʹ����ʱ���Ʊ�����ԣ��������е���ʱ���ԣ�
    Else ' ������ڲ��ԣ��������ƣ�
        qtApp.Test.Save ' �������
    End If
End If

If Not qtApp.Test.IsNew Then ' �����ǰ���Բ����µĲ���
    qtApp.New ' ���µĲ���
End If

Set qtApp = Nothing ' �ͷ� Application ����
