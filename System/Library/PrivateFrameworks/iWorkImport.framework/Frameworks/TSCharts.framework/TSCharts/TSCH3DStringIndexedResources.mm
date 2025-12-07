@interface TSCH3DStringIndexedResources
- (id)resourceAtIndex:(const void *)index string:(id)string;
@end

@implementation TSCH3DStringIndexedResources

- (id)resourceAtIndex:(const void *)index string:(id)string
{
  stringCopy = string;
  if ((objc_msgSend_hasResourceAtIndex_(self, v7, v8, v9, v10, index) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DStringIndexedResources resourceAtIndex:string:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStringIndexedResources.mm");
    v22 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "ivec2(%d, %d)", *index, 0);
    if (v59 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v22, v23, v24, v25, v26, __p[0]);
    }
    v28 = ;
    if (v59 < 0)
    {
      operator delete(__p[0]);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v27, v29, v30, v31, v16, v21, 22, 0, "No resource at index: %@", v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  v57.receiver = self;
  v57.super_class = TSCH3DStringIndexedResources;
  v37 = [(TSCH3DArray2DResources *)&v57 resourceAtIndex:index];
  if (!v37)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v38, v39, v40, "[TSCH3DStringIndexedResources resourceAtIndex:string:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStringIndexedResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 26, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  objc_msgSend_setString_(v37, v36, v38, v39, v40, stringCopy);

  return v37;
}

@end