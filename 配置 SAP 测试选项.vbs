
'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest�������������� SAP GUI for Windows Ӧ�ó�����
'¼�ƺ����в��Ե�ѡ�
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.SetActiveAddins Array("SAP") ' ���� SAP ������
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

' ���ø߼� SAP ѡ��
qtApp.Options.SAP.AutoParameterizeTables = True 'ָ���ڱ༭ SAP �������ؼ��е�����ʱӦ¼�Ƶ��� Input ��䡣�⽫����һ�����ݱ����а����ڵ��η�����ͨ�Ź��������õ����е�Ԫ������ݡ�
qtApp.Options.SAP.RecordStatusBar = True 'ָ��ÿ�� SAP ״̬����ʾ��Ϣʱ QuickTest �Ƿ�¼��һ��ͬ�����貢�����Ӧ�� Active Screen ���ݡ�
qtApp.Options.SAP.SessionCleanup = True 'ָ�����Ի�����ر�ʱ�Ƿ�ر������Ǵ򿪵����� SAP �Ự��
qtApp.Options.SAP.RecordResetMethod = False 'ָ����ʹ�� SAP �ġ��Զ���¼��ѡ��򿪵�ÿ��¼�ƻỰ��ʼʱ��QuickTest �Ƿ�¼��һ�� Reset ������
qtApp.Options.SAP.ShowLowSpeedWarnings = True 'ָ��ÿ�� SAP GUI ����������Ϊʹ�á��������ӡ�ѡ��ʱ QuickTest �Ƿ���ʾ������Ϣ��
qtApp.Options.SAP.ShowDisabledConnectionWarnings = True 'ָ��ÿ�ν��á�SAP GUI �ű��ӿڡ�ʱ QuickTest �Ƿ���ʾ������Ϣ��
qtApp.Options.SAP.UseSapGuiScriptingForHTML = True 'ָ�� QuickTest �Ƿ�ʹ�á�SAP GUI �ű��ӿڡ���¼�� HTML Ԫ�ء�

Set qtApp = Nothing ' �ͷ� Application ����
