@interface TSTTextStyleHandle
+ (id)handleForTextStyle:(id)style;
- (TSTTextStyleHandle)initWithTextStyle:(id)style;
@end

@implementation TSTTextStyleHandle

+ (id)handleForTextStyle:(id)style
{
  if (style)
  {
    styleCopy = style;
    v5 = [self alloc];
    v8 = objc_msgSend_initWithTextStyle_(v5, v6, styleCopy, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSTTextStyleHandle)initWithTextStyle:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTextStyleHandle initWithTextStyle:]", v9);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTextStyleHandle.m", v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 28, 0, "expected text style got %{public}@", v16);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v18, v19, v20);
      selfCopy = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTextStyleHandle initWithTextStyle:]", v6);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTextStyleHandle.m", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 24, 0, "invalid nil value for '%{public}s'", "textStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v63.receiver = self;
  v63.super_class = TSTTextStyleHandle;
  v31 = [(TSTTextStyleHandle *)&v63 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_textStyle, style);
    v32->_isVariation = objc_msgSend_isVariation(styleCopy, v33, v34, v35);
    objc_msgSend_overrideCGFloatValueForProperty_(styleCopy, v36, 17, v37);
    v42 = v41;
    v32->_fontSize = v41;
    if (((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FF0000000000000 && *&v41 != 0xFFF0000000000000 && (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL)
    {
      v32->_nonDefaultFontSize = 0;
    }

    else
    {
      v46 = objc_msgSend_parent(styleCopy, v38, v39, v40);
      objc_msgSend_CGFloatValueForProperty_(v46, v47, 17, v48);
      v32->_nonDefaultFontSize = v42 != v49;
    }

    v50 = objc_msgSend_overrideValueForProperty_(styleCopy, v38, 16, v40);
    v32->_nonDefaultFontName = v50 != 0;

    v32->_direction = objc_msgSend_intValueForProperty_(styleCopy, v51, 44, v52);
    if (objc_msgSend_intValueForProperty_(styleCopy, v53, 49, v54))
    {
      objc_opt_class();
      v57 = objc_msgSend_objectForProperty_(styleCopy, v55, 48, v56);
      v58 = TSUCheckedDynamicCast();
      v32->_containsGradientThatFillsContainer = objc_msgSend_fillType(v58, v59, v60, v61) == 1;
    }

    else
    {
      v32->_containsGradientThatFillsContainer = 0;
    }
  }

  self = v32;
  selfCopy = self;
LABEL_22:

  return selfCopy;
}

@end