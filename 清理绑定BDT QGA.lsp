(defun c:BDT ()
	(meow::begin '("osmode" "clayer"))
	(meow::use_log "��ͼ");��־��¼
	(cond ( T (COMMAND "XREF" "B" "*")));�������ⲿ����
	(dictremove (namedobjdict) "ACAD_DGNLINESTYLECOMP")
	(COMMAND "PURGE" "A" "" "N");����ͼ���ļ�
	(initget "y n")
	(if (equal (getkword "\n[�������޸�(Y)/����(N)]: <N>")"y") 
		(command "audit" "y");�������޸�
	)
	(command "tsaveas");���Ϊ�ļ�
	(meow::end)
	(princ)
)

(defun c:QGA ()
	(meow::begin '("osmode" "clayer"))
	(meow::use_log "����ȫ��");��־��¼
	(dictremove (namedobjdict) "ACAD_DGNLINESTYLECOMP")
	(command "-purge" "a" "*" "n")
	(initget "y n")
	(if (equal (getkword "\n[�������޸�(Y)/����(N)]: <N>") "y") 
		(command "audit" "y");�������޸�
	)
	(princ "\n�����������~meow")
	(meow::end)
	(princ)
)

