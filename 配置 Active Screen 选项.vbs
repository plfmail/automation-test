
'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest�������� Active Screen ѡ������Ϊ��С����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtActiveScreenOpt 'As QuickTest.ActiveScreenOptions ' ���� Active Screen Options �������
Dim qtWebActiveScreen 'As QuickTest.WebActiveScreen ' ���� Web Active Screen �������

' ���ö���������� QuickTest
Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtActiveScreenOpt = qtApp.Options.ActiveScreen ' ���� Active Screen Options ����

If qtActiveScreenOpt.CaptureLevel <> "None" Then ' �����ǰ�Ĳ��񼶱�Ϊ��None��

    ' ���� Active Screen ����ѡ��
    qtActiveScreenOpt.CaptureLevel = "Minimum" ' �������Խ������ڱ�¼�ƶ���

    ' ������ Web ��ص� Active Screen ѡ��
    Set qtWebActiveScreen = qtActiveScreenOpt.Web ' ���� Web Active Screen ����
    qtWebActiveScreen.ActiveScripts = "Disabled" ' ��ֹ�� Active Screen ����ҳ��ʱ���нű�
    qtWebActiveScreen.CaptureOriginalHTMLSource = True ' �������κνű�ǰ������ Web ҳ��ԭʼ HTML Դ
    qtWebActiveScreen.LoadActiveXControls = False ' �������� Active Screen �����м��� ActiveX �ؼ�
    qtWebActiveScreen.LoadImages = False ' �������� Active Screen �����м���ͼ��
    qtWebActiveScreen.LoadJavaApplets = False ' �������� Active Screen �����м��� Java Applet
    qtWebActiveScreen.LoadingTimeout = 20 ' �� Active Screen ����ҳ����ʱ������Ϊ 20 ��
    Set qtWebActiveScreen = Nothing ' �ͷ� Web Active Screen ����

End If

Set qtActiveScreenOpt = Nothing ' �ͷ� Active Screen Options ����
Set qtApp = Nothing ' �ͷ� Application ����
