
'************************************************************************************************************************
'������
'
' ��ʾ��Ϊ�ض���ҵ�����̲����ҵ������ļ�������б�
' Ȼ���½�ҵ�������������� BPT ��ҵ�����
'������ͬ�ļ����
'
'************************************************************************************************************************


Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim arrBCAddins ' �������������ڴ洢����������ļ�����
Dim blnNeedChangeAddins ' ����һ����־������ָ����ǰ�Ƿ��Ѽ�������������ļ�����

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�

qtApp.TDConnection.Connect "http://qcserver/qcbin", _
              "MY_DOMAIN", "My_Project", "James", "not4you", False ' ���ӵ� Quality Center


If qtApp.TDConnection.IsConnected Then ' ������ӳɹ�

'�ҵ���ҵ�����̲��Թ����ļ�����������������µ�ҵ�������
'ͬһ�б�
    arrBCAddins = qtApp.GetAssociatedAddinsForBPT("[QualityCenter] Subject\MyFolder\MyBPT")
    qtApp.NewBusinessComponent
    qtApp.BusinessComponent.SetAssociatedAddins arrBCAddins

End If

