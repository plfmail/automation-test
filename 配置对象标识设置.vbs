
'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest�������� WinList ������Ķ����ʶ���á�
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtIdent 'As QuickTest.ObjectIdentification ' ���� ObjectIdentification �������
Dim qtWinListIdent 'As QuickTest.TestObjectClassIdentification ' ���� WinList �������ʶ�ı���
Dim intPosition ' �������������ڴ洢λ��

' �� QuickTest �����ñ���
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

Set qtIdent = qtApp.Options.ObjectIdentification ' ���� ObjectIdentification ����
Set qtWinListIdent = qtIdent.Item("WinList") ' ���� WinList ������Ķ����ʶ���Եļ���

qtIdent.ResetAll ' �� WinList ����Ķ����ʶ��������ΪĬ����������
qtWinListIdent.OrdinalIdentifier = "Index" ' �� Index ����Ϊ˳���ʶ��

' ����ǿ������
intPosition = qtWinListIdent.MandatoryProperties.Find("nativeclass") ' ���ҡ�nativeclass��ǿ�����Ե�λ��
qtWinListIdent.MandatoryProperties.Remove intPosition ' ���б���ɾ����nativeclass��ǿ������
If qtWinListIdent.AvailableProperties.Find("items count") <> -1 Then ' �����items count���ǿ��õ� WinList ����
    qtWinListIdent.MandatoryProperties.Add "items count" ' �������Ϊǿ������
End If

' ���ø�������
qtWinListIdent.AssistiveProperties.RemoveAll ' ɾ�����и�������
qtWinListIdent.AssistiveProperties.Add "all items" ' ����all items���������Ϊ��������
qtWinListIdent.AssistiveProperties.Add "width", 1 ' ����width�����Ϊ��һ����������
qtWinListIdent.AssistiveProperties.Add "height", -1 ' ����height�����Ϊ���һ����������
qtWinListIdent.AssistiveProperties.MoveToPos 2, 1 ' ���ڶ����������ԣ���ǰΪ��all items�����ƶ����б�ĵ�һ��λ��
' �������ܱ�ʶ
qtWinListIdent.EnableSmartIdentification = True ' ���� WinList ��������ܱ�ʶ����
If qtWinListIdent.BaseFilterProperties.Count = 0 Then ' ��������ڻ���ɸѡ������
    qtWinListIdent.BaseFilterProperties.Add "x" ' ����x���������Ϊ����ɸѡ������
    qtWinListIdent.BaseFilterProperties.Add "y" ' ����y���������Ϊ����ɸѡ������
End If
qtWinListIdent.OptionalFilterProperties.Add "abs_x", 1 ' ����abs_x�����Ϊ��һ����ѡɸѡ������
qtWinListIdent.OptionalFilterProperties.Add "abs_y", 2 ' ����abs_y�����Ϊ�ڶ�����ѡɸѡ������

Set qtWinListIdent = Nothing ' �ͷ� WinList ��ʶ����
Set qtIdent = Nothing ' �ͷ� ObjectIdentification ����
Set qtApp = Nothing ' �ͷ� Application ����
