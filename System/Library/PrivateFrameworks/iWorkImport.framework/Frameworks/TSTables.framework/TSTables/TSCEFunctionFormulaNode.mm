@interface TSCEFunctionFormulaNode
- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)index children:(id)children;
- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)index numArgs:(unsigned int)args;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEFunctionFormulaNode

- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)index numArgs:(unsigned int)args
{
  v11.receiver = self;
  v11.super_class = TSCEFunctionFormulaNode;
  v6 = [(TSCEFormulaNode *)&v11 initWithNodeType:14];
  v7 = v6;
  if (v6)
  {
    *(&v6->super._nodeType + 1) = index;
    v8 = objc_opt_new();
    children = v7->super._children;
    v7->super._children = v8;

    *(&v7->super._nodeType + 1) = args;
  }

  return v7;
}

- (TSCEFunctionFormulaNode)initWithFunctionIndex:(unsigned __int16)index children:(id)children
{
  childrenCopy = children;
  v18.receiver = self;
  v18.super_class = TSCEFunctionFormulaNode;
  v7 = [(TSCEFormulaNode *)&v18 initWithNodeType:14];
  v11 = v7;
  if (v7)
  {
    *(&v7->super._nodeType + 1) = index;
    if (childrenCopy)
    {
      v12 = objc_msgSend_mutableCopy(childrenCopy, v8, v9, v10);
    }

    else
    {
      v12 = objc_opt_new();
    }

    children = v11->super._children;
    v11->super._children = v12;

    *(&v11->super._nodeType + 1) = objc_msgSend_count(v11->super._children, v14, v15, v16);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEFunctionFormulaNode;
  v4 = [(TSCEFunctionFormulaNode *)&v11 copy];
  v4[21] = *(&self->super._nodeType + 1);
  *(v4 + 11) = *(&self->super._nodeType + 1);
  v8 = objc_msgSend_copy(*&self->_functionIndex, v5, v6, v7);
  v9 = *(v4 + 6);
  *(v4 + 6) = v8;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  engineCopy = engine;
  selfCopy = self;
  v11 = objc_msgSend_children(self, v8, v9, v10);
  v157 = v11;
  v15 = objc_msgSend_count(v11, v12, v13, v14);
  v18 = v15;
  v19 = *(&self->super._nodeType + 1);
  if (v19 == 363)
  {
    if (v15 >= 3)
    {
      v152 = objc_msgSend_lastObject(v11, v16, v19, v17);
      v52 = 0;
      v53 = 0;
      do
      {
        v54 = v11;
        v55 = objc_msgSend_objectAtIndexedSubscript_(v11, v50, v52, v51);
        v58 = objc_msgSend_objectAtIndexedSubscript_(v54, v56, v52 + 1, v57);
        if (objc_msgSend_isIdentifierNode(v55, v59, v60, v61))
        {
          v65 = v55;
          isIdentifierNode = objc_msgSend_isIdentifierNode(v65, v66, v67, v68);
        }

        else
        {
          v65 = 0;
          isIdentifierNode = objc_msgSend_isIdentifierNode(0, v62, v63, v64);
        }

        if ((isIdentifierNode & 1) == 0)
        {
          v73 = MEMORY[0x277D81150];
          v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v72);
          v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v76);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v78, v74, v77, 775, 0, "Must be identifier at this spot");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81);
        }

        if (objc_msgSend_isIdentifierNode(v65, v70, v71, v72))
        {
          objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v58, v82, array, ref, table, engineCopy);
          v86 = objc_msgSend_fullIdentifier(v65, v83, v84, v85);
          TSCESymbolTable::beginScope(table);
          ++v53;
          if (v86)
          {
            Symbol = TSCESymbolTable::createSymbol(table, &v86->var0);
          }

          else
          {
            Symbol = 0;
          }
        }

        else
        {
          Symbol = 0;
          v86 = 0;
        }

        TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v159, 0);
        TSCEASTLetBindElement::appendLetNodeHeader(array, v86, v159, Symbol, v52 != 0);
        v160 = v159;
        sub_22107C2C0(&v160);

        v88 = v52 + 3;
        v52 += 2;
        v11 = v157;
      }

      while (v88 < v18);
      objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v152, v50, array, ref, table, engineCopy);
      for (; v53; --v53)
      {
        TSCEASTLetBindElement::appendEndScopeNode(array, v89, v90, v91);
        TSCESymbolTable::endScope(table, v92, v93, v94);
      }
    }

    goto LABEL_52;
  }

  if (v19 == 364)
  {
    if (v15)
    {
      objc_msgSend_lastObject(v11, v16, v19, v17);
      objc_claimAutoreleasedReturnValue();
      v20 = objc_opt_new();
      TSCESymbolTable::beginScope(table);
      v23 = v18 - 1;
      if (v18 != 1)
      {
        v153 = 0;
        v24 = 0;
        do
        {
          v25 = objc_msgSend_objectAtIndex_(v157, v21, v24, v22);
          if ((objc_msgSend_isEmptyNode(v25, v26, v27, v28) & 1) == 0 && objc_msgSend_isIdentifierNode(v25, v29, v30, v31) && (v32 = v25, objc_msgSend_fullIdentifier(v32, v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v32, v36))
          {
            v37 = TSCESymbolTable::createSymbol(table, &v36->isa);
            if (v153)
            {
              v40 = v153;
            }

            else
            {
              v40 = v37;
            }

            v153 = v40;
          }

          else
          {
            v41 = MEMORY[0x277D81150];
            v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v31);
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v44);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 741, 0, "This likely messes up our TSCESymbol offsetting - I don't think its reachable though");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
            v36 = &stru_2834BADA0;
          }

          objc_msgSend_addObject_(v20, v38, v36, v39);

          ++v24;
        }

        while (v23 != v24);
      }

      __C(0);
    }

LABEL_52:
    v130 = objc_msgSend_whitespaceBefore(selfCopy, v16, v19, v17);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v130);

    v95 = objc_msgSend_whitespaceAfter(selfCopy, v131, v132, v133);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v95);
    goto LABEL_53;
  }

  if (v15 != 1)
  {
LABEL_37:
    v102 = objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, v16, v19, v17);
    if (v18)
    {
      v106 = v102;
      v107 = objc_msgSend_objectAtIndex_(v11, v103, 0, v105);
      objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v107, v108, array, ref, table, engineCopy);

      if (v18 != 1)
      {
        for (i = 1; i != v18; ++i)
        {
          v110 = objc_msgSend_objectAtIndex_(v11, v103, i, v105);
          v114 = v110;
          if (v106 && objc_msgSend_nodeType(v110, v111, v112, v113) != 7)
          {
            __C(4uLL);
          }

          objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v114, v111, array, ref, table, engineCopy);
        }
      }
    }

    v115 = selfCopy[21];
    if (selfCopy[21])
    {
      v116 = objc_msgSend_count(v11, v103, v104, v105);
      v120 = v116;
      if (HIDWORD(v116))
      {
        v143 = MEMORY[0x277D81150];
        v144 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v118);
        v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v146);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v143, v148, v144, v147, 850, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150, v151);
        v120 = -1;
      }

      TSCEASTFunctionElement::appendFunctionElement(array, v115, v120, 0, v119);
    }

    else
    {
      v121 = MEMORY[0x277D81150];
      v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v105);
      v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v124);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v126, v122, v125, 847, 0, "Should be using TSCEUnknownFunctionFormulaNode instead");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128, v129);
    }

    goto LABEL_52;
  }

  v95 = objc_msgSend_firstObject(v11, v16, v19, v17);
  if (objc_msgSend_nodeType(v95, v96, v97, v98) != 6)
  {

    v19 = selfCopy[21];
    goto LABEL_37;
  }

  v101 = selfCopy[21];
  if (selfCopy[21])
  {
    TSCEASTFunctionElement::appendFunctionElement(array, v101, 0, 0, v100);
  }

  else
  {
    v134 = MEMORY[0x277D81150];
    v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSCEFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v99);
    v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v137);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v134, v139, v135, v138, 813, 0, "Should be using TSCEUnknownFunctionFormulaNode instead");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v140, v141, v142);
  }

LABEL_53:
}

@end