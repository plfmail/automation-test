'��ͼƬ���������
'�������filename-->�ļ�����strng-->��ͼƬ����ӵ�����
Function JPG_TypeString(filename,strng)
	Set Jpeg=CreateObject("Persits.Jpeg")
	Jpeg.Open filename
	Jpeg.Canvas.Font.Color=&HFF0000  '����ɫ
	Jpeg.Canvas.Font.Family="����_GB2312"
	Jpeg.Canvas.Font.Bold=True '�Ƿ�Ӵ�
	Jpeg.Canvas.Print 100,Jpeg.OriginalHeight/2,strng
	Jpeg.Save filename
	Jpeg.Close
	Set Jpeg=Nothing
End Function

'��ͼƬ�л�һ����Բ
'�������filename-->�ļ���,leftlen,toplen-->��ߵ�x,y,rightlen,buttonlen-->�ұߵ�x,y
Function JPG_DrawEllipse(filename,leftlen,toplen,rightlen,buttonlen)
	Set Jpeg=CreateObject("Persits.Jpeg")
	Jpeg.Open filename
	Jpeg.Canvas.Pen.Color=&HFF0000  '����ɫ
	Jpeg.Canvas.Pen.Width=2
	Jpeg.Canvas.Brush.Solid=False '�Ƿ�Ӵ�
	Jpeg.Canvas.Ellipse leftlen,toplen,rightlen,buttonlen
	Jpeg.Save filename
	Jpeg.Close
	Set Jpeg=Nothing
End Function	

'��ͼƬ����Ҫ��ʶ�Ķ����ϻ�һ����Բ��Ȼ������Բ��һ�໭һ���ߣ�Ȼ�����ߵ�һ���ע��Ϣ
'�������filename-->�ļ���,leftlen,toplen-->��ߵ�x,y,rightlen,buttonlen-->�ұߵ�x,y
Function JPG_DrawEllipseAndString(filename,leftlen,toplen,rightlen,buttonlen)
	Set Jpeg=CreateObject("Persits.Jpeg")
	Jpeg.Open filename
	Jpeg.Canvas.Pen.Color=&HFF0000  '����ɫ
	Jpeg.Canvas.Pen.Width=2
	Jpeg.Canvas.Brush.Solid=False '�Ƿ�Ӵ�
	Jpeg.Canvas.Ellipse leftlen,toplen,rightlen,buttonlen '����Բ
	'MsgBox Jpeg.OriginalHeight
	'MsgBox Jpeg.OriginalWidth
	If leftlen>Jpeg.OriginalWidth/2 Then
		tmpleft=leftlen
		tmptop=toplen+(buttonlen-toplen)/2
		If Leftlen>100 Then
			tmpright=leftlen-100
		Else
			tmpright=leftlen/2
		End If
		If toplen+(buttonlen-toplen)/2>100 Then
			tmpbutton=toplen+(buttonlen-toplen)/2-100
		Else 
			tmpbutton=toplen+(buttonlen-toplen)/2+100
		End If
	Else
		tmpleft=rightlen
		tmptop=toplen+(buttonlen-toplen)/2
		If rightlen+100+Len(strng)*2>Jpeg.OriginalWidth Then
			tmpright=Jpeg.OriginalWidth-Len(strng)*2
			'δ���
	
	
	
	
	Jpeg.Save filename
	Jpeg.Close
	Set Jpeg=Nothing
End Function	 
	
