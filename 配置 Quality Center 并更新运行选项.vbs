
'************************************************************************************************************************
'������
'
'��ʾ�����ӵ� Quality Center ��Ŀ���򿪲��ԣ�������ã�����ǩ������
'���� Active Screen ֵ�����Զ����������Լ�������ã�
'�����޸ĵĲ���ǩ�뵽 Quality Center ��Ŀ��
'
'�ٶ���
'test1 ������δǩ����
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'�� QuickTest ʱ�������ز���������ļ����
'�й���ϸ��Ϣ������� Test.GetAssociatedAddins ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtUpdateRunOptions 'As QuickTest.UpdateRunOptions ' ���� Update Run Options �������
Dim qtRunResultsOptions 'As QuickTest.RunResultsOptions ' ���� Run Results Options �������
Dim blsSupportsVerCtrl ' ����һ����־������ָ���汾����֧��

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

' �ھ��а汾���Ƶ� Quality Center �ϸ��Ĳ���
qtApp.TDConnection.Connect "http://tdserver/tdbin", _
              "MY_DOMAIN", "My_Project", "James", "not4you", False ' ���ӵ� Quality Center

If qtApp.TDConnection.IsConnected Then ' ������ӳɹ�
    blsSupportsVerCtrl = qtApp.TDConnection.SupportVersionControl ' �����Ŀ�Ƿ�֧�ְ汾����

    qtApp.Open "[QualityCenter] Subject\tests\test1", False ' �򿪲���
    If blsSupportsVerCtrl Then ' �����Ŀ֧�ְ汾����
        qtApp.Test.CheckOut ' ǩ������
    End If

    ' ׼�� UpdateRunOptions ����
    Set qtUpdateRunOptions = CreateObject("QuickTest.UpdateRunOptions") ' ���� Update Run Options ����
    ' ���á��������С�ѡ����� Active Screen �Ͳ��Զ�����������Ҫ���¼���ֵ
    qtUpdateRunOptions.UpdateActiveScreen = True
    qtUpdateRunOptions.UpdateCheckpoints = False
    qtUpdateRunOptions.UpdateTestObjectDescriptions = True

    ' ׼�� RunResultsOptions ����
    Set qtRunResultsOptions = CreateObject("QuickTest.RunResultsOptions") ' ���� Run Results Options ����
    qtRunResultsOptions.ResultsLocation = "<TempLocation>" ' ������ʱ���λ��

    '���²���
    qtApp.Test.UpdateRun qtUpdateRunOptions, qtRunResultsOptions ' �ԡ��������С�ģʽ���в���
    qtApp.Test.Description = qtApp.Test.Description & vbNewLine & _
                              "Updated: " & Now ' ��¼���Ե������еĸ��£����������á�>�����ԡ�ѡ���

    qtApp.Test.Save ' �������

    If blsSupportsVerCtrl And qtApp.Test.VerCtrlStatus = "CheckedOut" Then ' �����ǩ������
        qtApp.Test.CheckIn ' ����ǩ��
    End If

    qtApp.TDConnection.Disconnect ' �Ͽ��� Quality Center ������
Else
    MsgBox "Cannot connect to Quality Center" ' ������Ӳ��ɹ�������ʾһ�������Ϣ��
End If

qtApp.Quit ' �˳� QuickTest
Set qtUpdateRunOptions = Nothing ' �ͷ� Update Run Options ����
Set qtRunResultsOptions = Nothing ' �ͷ� Run Results Options ����
Set qtApp = Nothing ' �ͷ� Application ����

