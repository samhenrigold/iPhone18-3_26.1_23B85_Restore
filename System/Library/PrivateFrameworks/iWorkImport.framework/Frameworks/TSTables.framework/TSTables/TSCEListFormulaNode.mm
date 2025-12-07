@interface TSCEListFormulaNode
- (TSCEListFormulaNode)initWithNumArgs:(unsigned int)args;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEListFormulaNode

- (TSCEListFormulaNode)initWithNumArgs:(unsigned int)args
{
  v9.receiver = self;
  v9.super_class = TSCEListFormulaNode;
  v4 = [(TSCEFormulaNode *)&v9 initWithNodeType:10];
  v5 = v4;
  if (v4)
  {
    *(&v4->super._nodeType + 1) = args;
    v6 = objc_opt_new();
    children = v5->super._children;
    v5->super._children = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEListFormulaNode;
  result = [(TSCEListFormulaNode *)&v5 copy];
  *(result + 11) = *(&self->super._nodeType + 1);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  v61 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v14 = objc_msgSend_children(self, v11, v12, v13);
  if (objc_msgSend_count(v14, v15, v16, v17) == 1)
  {
    v21 = objc_msgSend_firstObject(v14, v18, v19, v20);
    if (objc_msgSend_nodeType(v21, v22, v23, v24) == 6)
    {
      TSCEASTListElement::appendListNode(array, 0, v25, v26);

      goto LABEL_15;
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v27 = v14;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v56, v60, 16);
  if (v30)
  {
    v31 = *v57;
    do
    {
      v32 = 0;
      do
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(v27);
        }

        objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(*(*(&v56 + 1) + 8 * v32++), v29, array, ref, table, engineCopy, v56);
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v56, v60, 16);
    }

    while (v30);
  }

  v36 = objc_msgSend_count(v27, v33, v34, v35);
  if (HIDWORD(v36))
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSCEListFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v38);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 1502, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
    v36 = 0xFFFFFFFFLL;
  }

  TSCEASTListElement::appendListNode(array, v36, v37, v38);
  v42 = objc_msgSend_whitespaceBefore(self, v39, v40, v41);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v42);

  v46 = objc_msgSend_whitespaceAfter(self, v43, v44, v45);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v46);

LABEL_15:
}

@end