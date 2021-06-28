
'************************************************************************************************************************
'������
'
'��ʾ��ͨ�������в���ǰ���廷������������Է��Ͳ�����
'���������л��г���ÿ�����в��Ե��û��Ͳ���ϵͳ��
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'�� QuickTest ʱ�������ز���������ļ����
'�й���ϸ��Ϣ������� Test.GetAssociatedAddins ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtOptions 'As QuickTest.RunResultsOptions ' ���� Run Results Options �������
Dim strOS
Dim strUserName

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

' �򿪲���
qtApp.Open "C:\Tests\Test1", False ' ����Ϊ��Test1���Ĳ���

' ����һЩ��������
qtApp.Test.Environment.Value("Root") = "C:\" ' ���á�Root������������ע�⣺'��Value����Ĭ�����ԣ��ҿ���ʡ�ԡ�
qtApp.Test.Environment.Value("Password") = "not4you" ' ���á�Password����������
qtApp.Test.Environment.Value("Days") = 14 ' ���á�Days����������

' ���в���
Set qtOptions = CreateObject("QuickTest.RunResultsOptions") ' ���� Results Option ����
qtOptions.ResultsLocation = "<TempLocation>" ' �������λ������Ϊ��ʱλ��
qtApp.Test.Run qtOptions, True ' �ڼ��������Զ��ű�ǰ���в��Բ��ȴ����

' ���ڻ����д洢���������ӵ�����
strOS = qtApp.Test.Environment.Value("OS") ' ���ء�OS����������
strUserName = qtApp.Test.Environment.Value("UserName") ' ���ء�UserName����������
qtApp.Test.Description = qtApp.Test.Description & vbNewLine & _
       "Tested on: " & Now & vbNewLine & _
       "Platform: " & strOS & vbNewLine & _
       "By user: " & strUserName & vbNewLine & _
       "-------------------------" & vbNewLine ' ����Ե�������ӵ�ǰʱ�䡢����ϵͳ���û���

qtApp.Test.Save ' �������

qtApp.Quit ' �˳� QuickTest
Set qtOptions = Nothing ' �ͷ� Run Results Options ����
Set qtApp = Nothing ' �ͷ� Application ����
