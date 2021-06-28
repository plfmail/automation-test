'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest����������
'��ѡ��Ի���͡��߼� Java ѡ��Ի���ġ�Java��ѡ����Ӧ��ѡ�
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtJavaOptions 'As QuickTest.JavaOptions ' ���� Java Options �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.SetActiveAddins Array("Java") ' ���� Java ������
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtJavaOptions = qtApp.Options.Java ' ���� Java Options ����

' ���� Java ѡ��
qtJavaOptions.RecordListByIndex = False '������¼���б���
qtJavaOptions.RecordComboByIndex = True '������¼����Ͽ�ѡ��
qtJavaOptions.RecordTreeByIndex = False '������¼�����ڵ�ѡ��
qtJavaOptions.RecordTabByIndex = False '������¼��ѡ�ʽ����ؼ��е�ѡ�ѡ��
qtJavaOptions.AttachedTextRadius = "100" '�� 100 ���صİ뾶��Χ����������ĸ����ı�
qtJavaOptions.DeviceReplay = "DragDrop" 'Ϊ�Ϸ��¼�ʹ���豸���ط�
qtJavaOptions.AWTEventModel = "Auto" ' ���� QuickTest �Զ�ѡ��ģ�ͣ�������������¼�
qtJavaOptions.AnalogTableRecording = True '��ģ��ģʽ¼�Ʊ����

Set qtJavaOptions = Nothing ' �ͷ� Java Options ����
Set qtApp = Nothing ' �ͷ� Application ����
