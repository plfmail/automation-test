'************************************************************************************************************************
'������
'
' ��ʾ���������ض�ҵ����������ļ����
' �����δ����ĳЩ����ļ��������������ǣ��������� QuickTest����ҵ�������
' ��ȷ�ϴ򿪵��ĵ��Ƿ�ȷʵ��ҵ�������
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

    arrBCAddins = qtApp.GetAssociatedAddinsForBC("[QualityCenter] Components\MyFolder\MyBC")

    ' ����Ƿ��Ѽ������б���ļ�����
    blnNeedChangeAddins = False ' �ٶ��������κθ���
    For Each bcAddin In arrBCAddins ' ѭ������������ļ������б�
        If qtApp.Addins(bcAddin).Status <> "Active" Then ' �������δ���صĹ���������
            blnNeedChangeAddins = True ' ָ����Ҫ�Լ��صļ�������и���
            Exit For ' �˳�ѭ��
        End If
    Next

    If qtApp.Launched And blnNeedChangeAddins Then
        qtApp.Quit ' ����б�Ҫ���и��ģ����˳� QuickTest���޸��Ѽ��صļ�����
    End If

    If blnNeedChangeAddins Then
        Dim blnActivateOK
        blnActivateOK = qtApp.SetActiveAddins(arrBCAddins, errorDescription) ' ��������������ļ������������Ƿ��Ѽ��سɹ���
        If Not blnActivateOK Then ' ����ڼ��ؼ�����ʱ��������
            MsgBox errorDescription ' ��ʾ�����������Ϣ
            WScript.Quit ' �������Զ�����
        End If
    End If
End If

If Not qtApp.Launched Then ' �����δ�� QuickTest
    qtApp.Launch ' ���� QuickTest���Ѽ�����ȷ�ļ����
    qtApp.Visible = True ' ʹ QuickTest Ӧ�ó���ɼ�
    qtApp.TDConnection.Connect "http://qcserver/qcbin", _
              "MY_DOMAIN", "My_Project", "James", "not4you", False ' ���ӵ� Quality Center
End If

If qtApp.TDConnection.IsConnected Then ' ������ӳɹ�
    qtApp.OpenBusinessComponent "[QualityCenter] Components\MyFolder\MyBC", False ' ��ҵ�����
    MsgBox qtApp.CurrentDocumentType 'ȷ�ϴ򿪵��ĵ��Ƿ���ҵ�����
End If
