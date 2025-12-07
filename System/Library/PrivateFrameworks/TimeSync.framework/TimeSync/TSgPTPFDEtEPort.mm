@interface TSgPTPFDEtEPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSgPTPFDEtEPort)initWithImplDC:(id)c;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation TSgPTPFDEtEPort

- (TSgPTPFDEtEPort)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPFDEtEPort initWithImplDC:];
    statistics = v14;
    v7 = v15;
    goto LABEL_4;
  }

  v13.receiver = self;
  v13.super_class = TSgPTPFDEtEPort;
  v6 = [(TSgPTPNetworkPort *)&v13 initWithImplDC:cCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, c);
    [_TSF_TSDgPTPFDEtEPort addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];
    v8 = [TSgPTPPortStatistics alloc];
    statistics = [(_TSF_TSDgPTPFDEtEPort *)v7->_impl statistics];
    v10 = [(TSgPTPPortStatistics *)v8 initWithDC:?];
    statistics = v7->_statistics;
    v7->_statistics = v10;

LABEL_4:
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == self && (impl = self->_impl, impl == objectCopy) && [(_TSF_TSDgPTPFDEtEPort *)impl isEqualToString:?])
  {
    v14 = [TSgPTPPortStatistics alloc];
    statistics = [(_TSF_TSDgPTPFDEtEPort *)self->_impl statistics];
    v16 = [(TSgPTPPortStatistics *)v14 initWithDC:?];
    [(TSgPTPFDEtEPort *)self setStatistics:?];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = TSgPTPFDEtEPort;
    [(TSgPTPFDEtEPort *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)dealloc
{
  [_TSF_TSDgPTPFDEtEPort removeObserver:"removeObserver:forKeyPath:context:" forKeyPath:? context:?];
  v3.receiver = self;
  v3.super_class = TSgPTPFDEtEPort;
  [(TSgPTPPort *)&v3 dealloc];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v86.receiver = self;
  v86.super_class = &OBJC_METACLASS___TSgPTPFDEtEPort;
  v8 = objc_msgSendSuper2(&v86, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  v9 = infoCopy;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v11, "unsignedIntValue")];

    v12 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v12, "unsignedIntValue")];

    v13 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v13, "unsignedIntValue")];

    v14 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v14, "unsignedIntValue")];

    v15 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v15, "unsignedIntValue")];

    v16 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v16, "unsignedIntValue")];

    v17 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v17, "unsignedLongLongValue")];

    v18 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v18, "unsignedIntValue")];

    v19 = [v10 objectForKeyedSubscript:?];
    if ([v19 BOOLValue])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    [v8 appendFormat:indentCopy, v20];

    v21 = [v10 objectForKeyedSubscript:?];
    if ([v21 BOOLValue])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    [v8 appendFormat:indentCopy, v22];

    v23 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v23, "charValue")];

    v24 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v24, "charValue")];

    v25 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v25, "charValue")];

    v26 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v26, "charValue")];

    v27 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v27, "unsignedIntValue")];

    v28 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v28, "unsignedIntValue")];

    v29 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v29, "unsignedIntValue")];

    v30 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v30, "unsignedIntValue")];

    v31 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v31, "unsignedIntValue")];

    v32 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v32, "unsignedIntValue")];

    v33 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v33, "unsignedIntValue")];

    v34 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v34, "unsignedIntValue")];

    v35 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v35, "unsignedIntValue")];

    v36 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v36, "unsignedIntValue")];

    v37 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v37, "unsignedIntValue")];

    v38 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v38, "unsignedIntValue")];

    v39 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v39, "unsignedIntValue")];

    v40 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v40, "unsignedIntValue")];

    v41 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v41, "unsignedIntValue")];

    v42 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v42, "unsignedIntValue")];

    v43 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v43, "unsignedIntValue")];

    v44 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v44, "unsignedIntValue")];

    v45 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v45, "unsignedIntValue")];

    v46 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v46, "unsignedIntValue")];

    v47 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v47, "unsignedIntValue")];

    v48 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v48, "unsignedIntValue")];

    v49 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v49, "unsignedIntValue")];

    v50 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v50, "unsignedIntValue")];

    v51 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v51, "unsignedIntValue")];

    v52 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v52, "unsignedIntValue")];

    v53 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v53, "unsignedIntValue")];

    v54 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v54, "unsignedIntValue")];

    v55 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v55, "unsignedIntValue")];

    v56 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v56, "unsignedIntValue")];

    v57 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v57, "unsignedIntValue")];

    v58 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v58, "unsignedIntValue")];

    v59 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v59, "unsignedIntValue")];

    v60 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v60, "unsignedIntValue")];

    v61 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v61, "unsignedIntValue")];

    v62 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v62, "unsignedIntValue")];

    v63 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v63, "unsignedIntValue")];

    v64 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v64, "unsignedIntValue")];

    v65 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v65, "unsignedIntValue")];

    v66 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v66, "unsignedIntValue")];

    v67 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v67, "unsignedIntValue")];

    v68 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v68, "unsignedIntValue")];

    v69 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v69, "unsignedIntValue")];

    v70 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v70, "unsignedIntValue")];

    v71 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v71, "unsignedIntValue")];

    v72 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v72, "unsignedIntValue")];

    v73 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v73, "unsignedIntValue")];

    v74 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v74, "unsignedIntValue")];

    v75 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v75, "unsignedIntValue")];

    v76 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v76, "unsignedIntValue")];

    v77 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v77, "unsignedIntValue")];

    v78 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v78, "unsignedIntValue")];

    v79 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v79, "unsignedIntValue")];

    v80 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v80, "unsignedIntValue")];

    v81 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v81, "unsignedIntValue")];

    v82 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v82, "unsignedIntValue")];

    v83 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v83, "unsignedIntValue")];

    v84 = [v10 objectForKeyedSubscript:?];
    [v8 appendFormat:indentCopy, objc_msgSend(v84, "unsignedIntValue")];
  }

  return v8;
}

- (void)initWithImplDC:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

@end