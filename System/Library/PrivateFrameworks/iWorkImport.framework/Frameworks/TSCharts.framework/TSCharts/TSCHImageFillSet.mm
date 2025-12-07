@interface TSCHImageFillSet
- (id)fillFromSageProperties:(id)properties context:(id)context;
- (id)p_tspDataFromProperties:(id)properties context:(id)context;
- (unint64_t)p_techniqueFromString:(id)string;
@end

@implementation TSCHImageFillSet

- (unint64_t)p_techniqueFromString:(id)string
{
  stringCopy = string;
  v8 = stringCopy;
  if (!stringCopy)
  {
    goto LABEL_5;
  }

  if ((objc_msgSend_isEqualToString_(stringCopy, v4, v5, v6, v7, @"tile") & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHImageFillSet p_techniqueFromString:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 452, 0, "unsuppored technique: %@", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 2;
LABEL_6:

  return v13;
}

- (id)p_tspDataFromProperties:(id)properties context:(id)context
{
  contextCopy = context;
  propertiesCopy = properties;
  v8 = objc_opt_class();
  v13 = objc_msgSend_objectForKey_(propertiesCopy, v9, v10, v11, v12, @"path");

  v14 = sub_2761C47AC(v8, v13);

  v19 = objc_msgSend_plistPath(self, v15, v16, v17, v18);
  v24 = objc_msgSend_stringByDeletingPathExtension(v19, v20, v21, v22, v23);

  v29 = objc_msgSend_stringByAppendingPathComponent_(v24, v25, v26, v27, v28, v14);
  v35 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v30, v31, v32, v33, v29);
  if (contextCopy)
  {
    objc_msgSend_dataFromURL_useExternalReferenceIfAllowed_context_(MEMORY[0x277D80828], v34, v36, v37, v38, v35, 0, contextCopy);
  }

  else
  {
    objc_msgSend_readOnlyDataFromURL_(MEMORY[0x277D80828], v34, v36, v37, v38, v35);
  }
  v39 = ;

  return v39;
}

- (id)fillFromSageProperties:(id)properties context:(id)context
{
  propertiesCopy = properties;
  contextCopy = context;
  v8 = objc_opt_class();
  v13 = objc_msgSend_objectForKey_(propertiesCopy, v9, v10, v11, v12, @"class");
  v14 = sub_2761C47AC(v8, v13);

  if ((objc_msgSend_isEqualToString_(v14, v15, v16, v17, v18, @"textured-fill") & 1) == 0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHImageFillSet fillFromSageProperties:context:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 471, 0, "only textured-fill is supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v38 = objc_opt_class();
  v43 = objc_msgSend_objectForKey_(propertiesCopy, v39, v40, v41, v42, @"filtered-image");
  v44 = sub_2761C47AC(v38, v43);

  v45 = objc_opt_class();
  v50 = objc_msgSend_objectForKey_(v44, v46, v47, v48, v49, @"data");
  v51 = sub_2761C47AC(v45, v50);

  v56 = objc_msgSend_p_tspDataFromProperties_context_(self, v52, v53, v54, v55, v51, contextCopy);

  objc_opt_class();
  v61 = objc_msgSend_objectForKey_(propertiesCopy, v57, v58, v59, v60, @"color");
  v62 = TSUDynamicCast();

  if (v62)
  {
    v67 = objc_msgSend_colorFromProperties_(self, v63, v64, v65, v66, v62);
  }

  else
  {
    v67 = 0;
  }

  objc_opt_class();
  v72 = objc_msgSend_objectForKey_(propertiesCopy, v68, v69, v70, v71, @"technique");
  v73 = TSUDynamicCast();

  v78 = objc_msgSend_p_techniqueFromString_(self, v74, v75, v76, v77, v73);
  v79 = objc_alloc(MEMORY[0x277D802C0]);
  v82 = objc_msgSend_initWithImageData_technique_tintColor_size_(v79, v80, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v81, v56, v78, v67);

  return v82;
}

@end