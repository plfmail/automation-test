
'************************************************************************************************************************
'������
'
'��ʾ�����ó��� QuickTest ѡ�
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ����Ӧ�ó���
qtApp.Visible = True ' ʹ QuickTest �ɼ�

' ����ѡ��
qtApp.Options.AutoGenerateWith = True
qtApp.Options.WithGenerationLevel = 3
qtApp.Options.DisableVORecognition = True
qtApp.Options.SaveLoadAndMonitorData = False
qtApp.Options.TimeToActivateWinAfterPoint = 600
qtApp.Options.RestoreLayout

Set qtApp = Nothing ' �ͷ� Application ����
