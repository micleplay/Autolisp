(defun c:BDT ()
	(meow::begin '("osmode" "clayer"))
	(meow::use_log "绑定图");日志记录
	(cond ( T (COMMAND "XREF" "B" "*")));绑定所有外部参照
	(dictremove (namedobjdict) "ACAD_DGNLINESTYLECOMP")
	(COMMAND "PURGE" "A" "" "N");清理图形文件
	(initget "y n")
	(if (equal (getkword "\n[检查错误并修复(Y)/跳过(N)]: <N>")"y") 
		(command "audit" "y");检查错误并修复
	)
	(command "tsaveas");另存为文件
	(meow::end)
	(princ)
)

(defun c:QGA ()
	(meow::begin '("osmode" "clayer"))
	(meow::use_log "清理全部");日志记录
	(dictremove (namedobjdict) "ACAD_DGNLINESTYLECOMP")
	(command "-purge" "a" "*" "n")
	(initget "y n")
	(if (equal (getkword "\n[检查错误并修复(Y)/跳过(N)]: <N>") "y") 
		(command "audit" "y");检查错误并修复
	)
	(princ "\n已清理完毕了~meow")
	(meow::end)
	(princ)
)

