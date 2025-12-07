@interface TSTWrappedFormula
- (id)copyWithZone:(_NSZone *)zone;
- (id)nodesToCheckForBareArgumentPlaceholders;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)reparseWithStorage:(id)storage adjustExpressionTree:(id)tree;
@end

@implementation TSTWrappedFormula

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = TSTWrappedFormula;
  v4 = [(TSTFormula *)&v12 copyWithZone:zone];
  v8 = objc_msgSend_functionIndex(self, v5, v6, v7);
  objc_msgSend_setFunctionIndex_(v4, v9, v8, v10);
  return v4;
}

- (id)nodesToCheckForBareArgumentPlaceholders
{
  v5 = objc_msgSend_expressionTree(self, a2, v2, v3);

  if (v5)
  {
    objc_opt_class();
    v9 = objc_msgSend_expressionTree(self, v6, v7, v8);
    v10 = TSUDynamicCast();

    if (!v10 || objc_msgSend_functionIndex(v10, v11, v12, v13) != *(&self->super._empty + 1))
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTWrappedFormula nodesToCheckForBareArgumentPlaceholders]", v13);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v18);
      v22 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v20, *(&self->super._empty + 1), v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v16, v19, 52, 0, "Expected function node for %@ at the top of parse tree", v22);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    v27 = objc_msgSend_children(v10, v11, v14, v13);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  textCopy = text;
  objc_opt_class();
  v9 = objc_msgSend_expressionTree(self, v6, v7, v8);
  v10 = TSUDynamicCast();

  if (!v10 || objc_msgSend_functionIndex(v10, v11, v12, v13) != *(&self->super._empty + 1))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTWrappedFormula insertFormulaText:printingOptions:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v17);
    v21 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v19, *(&self->super._empty + 1), v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v15, v18, 62, 0, "Expected function node for %@ at the top of parse tree", v21);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  objc_msgSend_insertFormulaText_printingOptions_unwrapped_(v10, v11, textCopy, v4, 1);
}

- (void)reparseWithStorage:(id)storage adjustExpressionTree:(id)tree
{
  storageCopy = storage;
  treeCopy = tree;
  if (objc_msgSend_length(storageCopy, v8, v9, v10))
  {
    v13 = objc_opt_class();
    v17 = objc_msgSend_range(storageCopy, v14, v15, v16);
    objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(storageCopy, v18, v13, v17, v18, &unk_2834B1A68);
    v22 = objc_msgSend_context(storageCopy, v19, v20, v21);
    v26 = objc_msgSend_stylesheet(storageCopy, v23, v24, v25);
    v28 = objc_msgSend_i_copyIntoContext_stylesheet_(storageCopy, v27, v22, v26);

    v29 = [TSTFunctionNode alloc];
    v33 = objc_msgSend_context(storageCopy, v30, v31, v32);
    Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v29, v34, v33, *(&self->super._empty + 1), 0, 0, 0);

    v36 = [TSTWPTokenAttachment alloc];
    v40 = objc_msgSend_context(storageCopy, v37, v38, v39);
    v42 = objc_msgSend_initWithContext_expressionNode_(v36, v41, v40, Index_lastIndex);

    v46 = objc_msgSend_range(storageCopy, v43, v44, v45);
    objc_msgSend_insertAttachmentOrFootnote_range_(v28, v47, v42, v46, 0);
    if (!objc_msgSend_fixupFormulas(self, v48, v49, v50) || (v51 = objc_opt_class(), v55 = objc_msgSend_range(v28, v52, v53, v54), !objc_msgSend_formulaQuoteContextAtCharIndex_inStorage_(v51, v56, &v56[v55], v28)))
    {
      v57 = [TSTWPTokenAttachment alloc];
      v61 = objc_msgSend_context(storageCopy, v58, v59, v60);
      v65 = objc_msgSend_functionEndNode(Index_lastIndex, v62, v63, v64);
      v67 = objc_msgSend_initWithContext_expressionNode_(v57, v66, v61, v65);

      objc_msgSend_insertUIGraphicalAttachment_(v28, v68, v67, v69);
    }

    v101.receiver = self;
    v101.super_class = TSTWrappedFormula;
    [(TSTFormula *)&v101 reparseWithStorage:v28 adjustExpressionTree:treeCopy];
    if ((objc_msgSend_isSyntaxError(self, v70, v71, v72) & 1) == 0)
    {
      objc_opt_class();
      v76 = objc_msgSend_expressionTree(self, v73, v74, v75);
      v77 = TSUDynamicCast();

      if (!v77 || objc_msgSend_functionIndex(v77, v78, v79, v80) != *(&self->super._empty + 1))
      {
        v81 = MEMORY[0x277D81150];
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTWrappedFormula reparseWithStorage:adjustExpressionTree:]", v80);
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v84);
        v88 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v86, *(&self->super._empty + 1), v87);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v89, v82, v85, 115, 0, "Expected function node for %@ at the top of parse tree", v88);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92);
      }

      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = sub_221593CF0;
      v98[3] = &unk_2784671E8;
      v93 = v77;
      v99 = v93;
      v100 = 1;
      objc_msgSend_enumerateExpressionNodesUsingBlock_(v93, v94, v98, v95);
    }
  }

  else
  {
    objc_msgSend_setEmpty_(self, v11, 1, v12);
    objc_msgSend_setExpressionTree_(self, v96, 0, v97);
  }
}

@end