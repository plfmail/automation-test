'************************************************************************************************************************
'������
'
'��ʾ���򿪾���Ԥ��������Ĳ��ԣ�
' ��ȡ��������ļ��ϣ���ѭ����ʾÿ����������ϸ��Ϣ��
' ��ȡ����ʱ�����ļ��ϣ���������һ��������ֵ�����о��в����Ĳ��ԣ�
' �������к���ʾ����һ�����������ֵ��
'
'�ٶ���
' ���� D:\Tests\Mytest ������Ϊ��InParam1���������������Ϊ��OutParam1�����������
'************************************************************************************************************************


Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim pDefColl 'As QuickTest.ParameterDefinitions ' ���� Parameter Definitions ����
Dim pDef ' As QuickTest.ParameterDefinition ' ���� ParameterDefinition ����
Dim rtParams 'As QuickTest.Parameters ' ���� Parameters ����
Dim rtParam ' As QuickTest.Parameter ' ���� Parameter ����
'Dim cnt, Indx As Integer

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

qtApp.Open "D:\Tests\MyTest"

' ����Ϊ���Զ���Ĳ������ϡ�
Set pDefColl = qtApp.Test.ParameterDefinitions

cnt = pDefColl.Count
Indx = 1

' ��ʾ������ÿ�����������ƺ�ֵ��
While Indx <= cnt
    Set pDef = pDefColl.Item(Indx)
    MsgBox "Param name: " & pDef.Name & "; Type: " & pDef.Type & "; InOut: " & pDef.InOut & "; Description: " _
        & pDef.Description & "Default value: " & pDef.DefaultValue
    Indx = Indx + 1
Wend

Set rtParams = pDefColl.GetParameters() ' ����Ϊ���Զ���Ĳ������ϡ�

Set rtParam = rtParams.Item("InParam1") ' �����ض��Ĳ�����
rtParam.Value = "Hello" ' ���Ĳ�����ֵ��

qtApp.Test.Run , True, rtParams ' �����Ѹ��Ĳ����Ĳ��ԡ�

MsgBox rtParams.Item("OutParam1").Value ' �������к���ʾ���������ֵ��
