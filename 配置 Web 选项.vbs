'************************************************************************************************************************
'������
'
'��ʾ���� QuickTest���������� Web ѡ�
'
'�ٶ���
'QuickTest �е�ǰδ��û�б���Ĳ��ԡ�
'�й���ϸ��Ϣ������� Test.SaveAs ������ʾ����
'************************************************************************************************************************

Dim qtApp ' As QuickTest.Application ' ���� Application �������
Dim qtWebOptions 'As QuickTest.WebOptions ' ���� Web Options �������

Set qtApp = CreateObject("QuickTest.Application") ' ���� Application ����
qtApp.SetActiveAddins Array("Web") ' ���� Web ������
qtApp.Launch ' ���� QuickTest
qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
Set qtWebOptions = qtApp.Options.Web ' ���� Web Options ����

' ���� Web ѡ��
qtWebOptions.AddToPageLoadTime = 30 ' ����ӵ�ҳ��ļ���ʱ������Ϊ 30 ��
qtWebOptions.CheckBrokenLinks = True ' ���ý���鵱ǰ�ж����ӵ�����

' ���ø߼� Web ѡ��
qtWebOptions.EnableBrowserResize = False ' ����������ڴ�ʱΪĬ�ϴ�С
qtWebOptions.RunUsingSourceIndex = True ' ����ʹ��Դ�������ԣ��Ի�ø��ѵ����ܣ�
qtWebOptions.RunOnlyClick = True ' �������е����¼����� MouseDown��MouseUp �� Click
qtWebOptions.BrowserCleanup = True ' ��������ɲ��Ի�ѭ��ʱ�ر����д򿪵������
qtWebOptions.RecordByWinMouseEvents = "OnClick OnMouseDown" ' ָ����Щ�¼�ʹ�ñ�׼ Windows �¼�
qtWebOptions.RecordAllNavigations = True ' ������ÿ�� URL ����ʱ¼�Ƶ���
qtWebOptions.RecordMouseDownAndUpAsClick = False ' ����¼�� MouseDown �� MouseUp������¼�� Click
qtWebOptions.RecordCoordinates = False ' ָʾ QuickTest ��¼��ʵ������
If qtWebOptions.PageCreationMode = "URL" Then ' �����ǰѡ�����Ż� Page ���󴴽���URL ģʽ������
    qtWebOptions.CreatePageUsingNonUserData = "Get" ' ָʾ���ʹ�� Get ת���������� QuickTest ���Է��û�����
    qtWebOptions.CreatePageUsingUserData = "Get Post" ' ָʾ���ʹ�� Get/Post ת���������� QuickTest �����û�����
    qtWebOptions.CreatePageUsingAdditionalInfo = False ' ָʾ QuickTest ��ʹ��������������ʶ���� Page
End If
If qtWebOptions.FrameCreationMode = "URL" Then ' �����ǰѡ���� Frame ���󴴽���URL ģʽ������
    qtWebOptions.CreateFrameUsingNonUserData = "Get" ' ָʾ���ʹ�� Get ת���������� QuickTest ���Է��û�����
    qtWebOptions.CreateFrameUsingUserData = "Get Post" ' ָʾ���ʹ�� Get/Post ת���������� QuickTest �����û�����
    qtWebOptions.CreateFrameUsingAdditionalInfo = False ' ָʾ QuickTest ��ʹ���������Ա�ʶ���� Frame
End If

Set qtWebOptions = Nothing ' �ͷ� Web Options ����
Set qtApp = Nothing ' �ͷ� Application ����
