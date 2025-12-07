@interface TSTCellStyleHandle
+ (id)handleForCellStyle:(id)style;
- (TSTCellStyleHandle)initWithCellStyle:(id)style;
@end

@implementation TSTCellStyleHandle

+ (id)handleForCellStyle:(id)style
{
  if (style)
  {
    styleCopy = style;
    v5 = [self alloc];
    v8 = objc_msgSend_initWithCellStyle_(v5, v6, styleCopy, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSTCellStyleHandle)initWithCellStyle:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellStyleHandle initWithCellStyle:]", v9);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyleHandle.m", v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 27, 0, "expected cell style got %{public}@", v16);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19, v20);
      selfCopy = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellStyleHandle initWithCellStyle:]", v6);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyleHandle.m", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 23, 0, "invalid nil value for '%{public}s'", "cellStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v52.receiver = self;
  v52.super_class = TSTCellStyleHandle;
  v31 = [(TSTCellStyleHandle *)&v52 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_cellStyle, style);
    v32->_isVariation = objc_msgSend_isVariation(styleCopy, v33, v34, v35);
    v32->_cellWraps = (objc_msgSend_intValueForProperty_(styleCopy, v36, 896, v37) & 0x7FFFFFFF) != 0;
    v32->_verticalAlignment = objc_msgSend_intValueForProperty_(styleCopy, v38, 903, v39);
    v32->_overridesPadding = objc_msgSend_overridesProperty_(styleCopy, v40, 904, v41);
    objc_opt_class();
    v44 = objc_msgSend_valueForProperty_(styleCopy, v42, 904, v43);
    v45 = TSUCheckedDynamicCast();
    v49 = objc_msgSend_copy(v45, v46, v47, v48);
    padding = v32->_padding;
    v32->_padding = v49;
  }

  self = v32;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

@end