@interface TSCEFormulaTreePrinter
- (TSCEFormulaTreePrinter)initWithFormulaNodeTree:(id)tree rewriteContext:(TSCEFormulaRewriteContext *)context;
- (id)popArgString;
- (id)rewriteForDescription;
- (void)BOOLeanNode:(id)node;
- (void)anyReferenceNode:(id)node;
- (void)arrayNode:(id)node;
- (void)binaryInfixOperatorNode:(id)node;
- (void)categoryRefNode:(id)node;
- (void)colonTractNode:(id)node;
- (void)dateNode:(id)node;
- (void)durationNode:(id)node;
- (void)endScopeNode:(id)node;
- (void)functionNode:(id)node;
- (void)lambdaNode:(id)node;
- (void)letBindNode:(id)node;
- (void)linkedRefNode:(id)node;
- (void)listNode:(id)node;
- (void)numberNode:(id)node;
- (void)pushArgString:(id)string;
- (void)pushFunctionOp:(id)op numArgs:(int)args;
- (void)pushInfixOp:(id)op;
- (void)pushPrefixOp:(id)op;
- (void)stringNode:(id)node;
- (void)uidReferenceNode:(id)node;
- (void)unaryOperatorNode:(id)node isPostfix:(BOOL)postfix;
- (void)unboundIdentNode:(id)node;
- (void)unknownFunctionNode:(id)node;
- (void)variableNode:(id)node;
- (void)viewTractRefNode:(id)node;
@end

@implementation TSCEFormulaTreePrinter

- (TSCEFormulaTreePrinter)initWithFormulaNodeTree:(id)tree rewriteContext:(TSCEFormulaRewriteContext *)context
{
  treeCopy = tree;
  v11.receiver = self;
  v11.super_class = TSCEFormulaTreePrinter;
  v7 = [(TSCEFormulaNodeIterator *)&v11 initWithFormulaNodeTree:treeCopy rewriteContext:context];
  if (v7)
  {
    v8 = objc_opt_new();
    argStack = v7->_argStack;
    v7->_argStack = v8;
  }

  return v7;
}

- (id)rewriteForDescription
{
  objc_msgSend_depthFirstIteration(self, a2, v2, v3);
  if (objc_msgSend_count(self->_argStack, v5, v6, v7) != 1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEFormulaTreePrinter rewriteForDescription]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 33, 0, "Should only have one argument on _argStack at this point, the final result. ArgStack: %@", self->_argStack);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  return objc_msgSend_popArgString(self, v8, v9, v10);
}

- (id)popArgString
{
  if (objc_msgSend_count(self->_argStack, a2, v2, v3))
  {
    v8 = objc_msgSend_lastObject(self->_argStack, v5, v6, v7);
    objc_msgSend_removeLastObject(self->_argStack, v9, v10, v11);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)pushArgString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    objc_msgSend_addObject_(self->_argStack, v4, stringCopy, v5);
  }
}

- (void)pushInfixOp:(id)op
{
  opCopy = op;
  if (opCopy)
  {
    v8 = objc_msgSend_popArgString(self, v5, v6, v7);
    v12 = objc_msgSend_popArgString(self, v9, v10, v11);
    if (!objc_msgSend_isEqualToString_(opCopy, v13, @":", v14))
    {
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], opCopy, @"(%@ %@ %@)", v16, v12, opCopy, v8);
      objc_msgSend_pushArgString_(self, v44, v17, v45);
LABEL_25:

      goto LABEL_26;
    }

    v17 = objc_msgSend_componentsSeparatedByString_(v12, v15, @"::", v16);
    v20 = objc_msgSend_componentsSeparatedByString_(v8, v18, @"::", v19);
    if (objc_msgSend_count(v17, v21, v22, v23) == 2 && objc_msgSend_count(v20, v24, v25, v26) == 2)
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v17, v24, 0, v26);
      v3 = objc_msgSend_objectAtIndexedSubscript_(v20, v28, 0, v29);
      isEqualToString = objc_msgSend_isEqualToString_(v27, v30, v3, v31);

      if (isEqualToString)
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(v20, v24, 1, v26);

        v8 = v33;
      }
    }

    if (objc_msgSend_count(v17, v24, v25, v26) == 2 && objc_msgSend_count(v20, v34, v35, v36) == 2)
    {
      v37 = objc_msgSend_objectAtIndexedSubscript_(v17, v34, 1, v36);
      v3 = objc_msgSend_objectAtIndexedSubscript_(v20, v38, 1, v39);
      if (objc_msgSend_isEqualToString_(v37, v40, v3, v41))
      {

LABEL_23:
        objc_msgSend_pushArgString_(self, v42, v12, v43);
        goto LABEL_24;
      }

      v60 = v37;
      v46 = 1;
    }

    else
    {
      v46 = 0;
    }

    if (objc_msgSend_count(v17, v34, v35, v36) == 1 && objc_msgSend_count(v20, v47, v48, v43) == 1)
    {
      v50 = objc_msgSend_objectAtIndexedSubscript_(v17, v49, 0, v43);
      v53 = objc_msgSend_objectAtIndexedSubscript_(v20, v51, 0, v52);
      v56 = objc_msgSend_isEqualToString_(v50, v54, v53, v55);

      if (v46)
      {

        if (v56)
        {
          goto LABEL_23;
        }
      }

      else if (v56)
      {
        goto LABEL_23;
      }
    }

    else if (v46)
    {
    }

    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], opCopy, @"%@%@%@", v43, v12, opCopy, v8);
    objc_msgSend_pushArgString_(self, v58, v57, v59);

LABEL_24:
    goto LABEL_25;
  }

LABEL_26:
}

- (void)pushPrefixOp:(id)op
{
  opCopy = op;
  if (opCopy)
  {
    v7 = objc_msgSend_popArgString(self, v4, v5, v6);
    if (objc_msgSend_hasPrefix_(v7, v8, @"("), v9 && objc_msgSend_hasSuffix_(v7, v10, @""), v11))
    {
      v12 = v7;
    }

    else
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"(%@)", v11, v7);
    }

    v14 = v12;
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], opCopy, @"(%@%@)", v13, opCopy, v12);
    objc_msgSend_pushArgString_(self, v16, v15, v17);
  }
}

- (void)pushFunctionOp:(id)op numArgs:(int)args
{
  opCopy = op;
  if (opCopy)
  {
    v18 = opCopy;
    if (args < 1)
    {
      goto LABEL_9;
    }

    v10 = 0;
    do
    {
      v13 = objc_msgSend_popArgString(self, v7, v8, v9);
      if (v10)
      {
        v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@,%@", v12, v13, v10);

        v10 = v14;
      }

      else
      {
        v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@", v12, v13);
      }

      --args;
    }

    while (args);
    if (!v10)
    {
LABEL_9:
      v10 = &stru_2834BADA0;
    }

    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v18, @"%@(%@)", v9, v18, v10);
    objc_msgSend_pushArgString_(self, v16, v15, v17);

    opCopy = v18;
  }
}

- (void)binaryInfixOperatorNode:(id)node
{
  v5 = objc_msgSend_operatorNodeTag(node, a2, node, v3);
  if ((v5 - 1) >= 0xC)
  {
    v9 = v5;
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaTreePrinter binaryInfixOperatorNode:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 160, 0, "Unknown operator tag: %d", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    v8 = &stru_2834BADA0;
  }

  else
  {
    v8 = off_278465960[(v5 - 1)];
  }

  MEMORY[0x2821F9670](self, sel_pushInfixOp_, v8, v7);
}

- (void)unaryOperatorNode:(id)node isPostfix:(BOOL)postfix
{
  v6 = objc_msgSend_operatorNodeTag(node, a2, node, postfix);
  v10 = v6;
  if (v6 > 14)
  {
    switch(v6)
    {
      case 0xF:
        v8 = @"%";
        if (!postfix)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      case 0x45:
        v8 = @"@";
        if (!postfix)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      case 0x46:
        if (!postfix)
        {
          v8 = @"#";
LABEL_23:

          MEMORY[0x2821F9670](self, sel_pushPrefixOp_, v8, v9);
          return;
        }

        goto LABEL_17;
    }

LABEL_22:
    v22 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaTreePrinter unaryOperatorNode:isPostfix:]", v9);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v31, v25, 194, 0, "Unknown operator tag: %d", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    v8 = &stru_2834BADA0;
    if (!postfix)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (v6 != 13)
  {
    if (v6 == 14)
    {
      v8 = @"+";
      if (!postfix)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v8 = @"-";
  if (!postfix)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v10 != 70)
  {
    v17 = MEMORY[0x277CCACA8];
    v30 = objc_msgSend_popArgString(self, v7, v8, v9);
    v14 = objc_msgSend_stringWithFormat_(v17, v18, @"((%@)%%)", v19, v30);
    objc_msgSend_pushArgString_(self, v20, v14, v21);
    goto LABEL_19;
  }

LABEL_17:
  v11 = MEMORY[0x277CCACA8];
  v30 = objc_msgSend_popArgString(self, v7, v8, v9);
  v14 = objc_msgSend_stringWithFormat_(v11, v12, @"((%@)#)", v13, v30);
  objc_msgSend_pushArgString_(self, v15, v14, v16);
LABEL_19:
}

- (void)functionNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_functionIndex(nodeCopy, v4, v5, v6);
  v11 = objc_msgSend_numArgs(nodeCopy, v8, v9, v10);
  v14 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v12, v7, v13);
  objc_msgSend_pushFunctionOp_numArgs_(self, v15, v14, v11);
}

- (void)unknownFunctionNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_functionName(nodeCopy, v4, v5, v6);
  v11 = objc_msgSend_numArgs(nodeCopy, v8, v9, v10);
  objc_msgSend_pushFunctionOp_numArgs_(self, v12, v7, v11);
}

- (void)colonTractNode:(id)node
{
  nodeCopy = node;
  v8 = objc_msgSend_relativeTractRef(nodeCopy, v5, v6, v7);
  v12 = objc_msgSend_tableUID(v8, v9, v10, v11);
  v14 = v13;
  v71._lower = v12;
  v71._upper = v13;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = sub_2214818D8;
  v69 = sub_2214818E8;
  v70 = 0;
  v20 = objc_msgSend_containingCell(self, v13, v15, v16);
  v64 = v20;
  if ((v20 == 0x7FFFFFFF || (v20 & 0xFFFF00000000) == 0x7FFF00000000) && objc_msgSend_preserveFlags(v8, v17, v18, v19) == 15)
  {
    v20 = 0;
    v64 = 0;
  }

  if (v20 != 0x7FFFFFFF && (v20 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v21 = objc_msgSend_absoluteCellTractRefForHostCell_(v8, v17, &v64, v19);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2214818F0;
    v63[3] = &unk_278461420;
    v63[4] = &v65;
    objc_msgSend_foreachAnyRef_(v21, v22, v63, v23);
LABEL_8:

    goto LABEL_12;
  }

  if (objc_msgSend_isRectangularRange(v8, v17, v18, v19) && !objc_msgSend_preserveFlags(v8, v27, v28, v29))
  {
    v62 = objc_msgSend_relativeTopLeft(v8, v27, v30, v29);
    v61 = objc_msgSend_relativeBottomRight(v8, v52, v53, v54);
    v55 = MEMORY[0x277CCAB68];
    v21 = TSCERelativeCellCoordinate::description(&v62);
    v56 = TSCERelativeCellCoordinate::description(&v61);
    v59 = objc_msgSend_stringWithFormat_(v55, v57, @"%@:%@", v58, v21, v56, v61);
    v60 = v66[5];
    v66[5] = v59;

    goto LABEL_8;
  }

  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v27, @"[%@]", v29, v8);
  v32 = v66[5];
  v66[5] = v31;

LABEL_12:
  if (!v66[5])
  {
    v33 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v24, @"<error in colonTractNode() - got nil>", v26);
    v34 = v66[5];
    v66[5] = v33;

    v35 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSCEFormulaTreePrinter colonTractNode:]", v37);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v38, v41, 290, 0, "Why would this happen?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
  }

  if (v12 | v14 && (v12 != objc_msgSend_containingTableUID(self, v24, v25, v26) || v14 != v24))
  {
    v46 = MEMORY[0x277CCAB68];
    v47 = TSKUIDStruct::description(&v71);
    v50 = objc_msgSend_stringWithFormat_(v46, v48, @"%@::%@", v49, v47, v66[5]);
    v51 = v66[5];
    v66[5] = v50;
  }

  objc_msgSend_pushArgString_(self, v24, v66[5], v26);
  _Block_object_dispose(&v65, 8);
}

- (void)viewTractRefNode:(id)node
{
  nodeCopy = node;
  v8 = objc_msgSend_calcEngine(self, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_viewTractRef(nodeCopy, v9, v10, v11);
    v16 = objc_msgSend_calcEngine(self, v13, v14, v15);
    v32[0] = objc_msgSend_tableUID(v12, v17, v18, v19);
    v32[1] = v20;
    v22 = objc_msgSend_tableResolverForTableUID_(v16, v20, v32, v21);

    if (v22)
    {
      v25 = objc_msgSend_cellTractRefForViewTractRef_(v22, v23, v12, v24);
      v29 = objc_msgSend_description(v25, v26, v27, v28);
    }

    else
    {
      v29 = @"<#REF! VTR>";
    }

    objc_msgSend_pushArgString_(self, v30, v29, v31);
  }

  else
  {
    v29 = @"<VTR>";
    objc_msgSend_pushArgString_(self, v9, @"<VTR>", v11);
  }
}

- (void)numberNode:(id)node
{
  nodeCopy = node;
  v16._decimal.w[0] = objc_msgSend_value(nodeCopy, v5, v6, v7);
  v16._decimal.w[1] = v8;
  v9 = MEMORY[0x277CCACA8];
  v10 = TSUDecimal::description(&v16);
  v13 = objc_msgSend_stringWithFormat_(v9, v11, @"%@", v12, v10);
  objc_msgSend_pushArgString_(self, v14, v13, v15);
}

- (void)BOOLeanNode:(id)node
{
  if (objc_msgSend_value(node, a2, node, v3))
  {
    v7 = @"TRUE";
  }

  else
  {
    v7 = @"FALSE";
  }

  objc_msgSend_pushArgString_(self, v5, v7, v6);
}

- (void)stringNode:(id)node
{
  v9 = objc_msgSend_value(node, a2, node, v3);
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%@", v5, v9);
  objc_msgSend_pushArgString_(self, v7, v6, v8);
}

- (void)dateNode:(id)node
{
  v9 = objc_msgSend_value(node, a2, node, v3);
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%@", v5, v9);
  objc_msgSend_pushArgString_(self, v7, v6, v8);
}

- (void)durationNode:(id)node
{
  v5 = objc_msgSend_value(node, a2, node, v3);
  sub_221387CBC(*(v5 + 8));
  v13 = TSUDurationFormatterFormatFromDurationUnits();
  v9 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v6, v7, v8);
  v10 = TSUDurationFormatterStringFromTimeIntervalWithFormat();

  objc_msgSend_pushArgString_(self, v11, v10, v12);
}

- (void)arrayNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_numColumns(nodeCopy, v4, v5, v6);
  v11 = objc_msgSend_numRows(nodeCopy, v8, v9, v10);
  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"array cols:%d rows:%d ", v13, v7, v11);;
  v17 = objc_msgSend_string(MEMORY[0x277CCACA8], v14, v15, v16);
  v21 = v17;
  if (v7)
  {
    v22 = 0;
    do
    {
      if (v11)
      {
        v23 = 0;
        do
        {
          v24 = objc_msgSend_popArgString(self, v18, v19, v20);
          if (objc_msgSend_length(v21, v25, v26, v27))
          {
            v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%@ %@", v29, v24, v21);;
          }

          else
          {
            v30 = v24;
          }

          v31 = v30;

          ++v23;
          v21 = v31;
        }

        while (v11 > v23);
      }

      else
      {
        v31 = v21;
      }

      ++v22;
      v21 = v31;
    }

    while (v7 > v22);
  }

  else
  {
    v31 = v17;
  }

  v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"{%@ %@}", v20, v35, v31);

  objc_msgSend_pushArgString_(self, v33, v32, v34);
}

- (void)listNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_numArgs(nodeCopy, v4, v5, v6);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"<list, len:%d>", v9, v7);
  objc_msgSend_pushFunctionOp_numArgs_(self, v11, v10, v7);
}

- (void)letBindNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_identifier(nodeCopy, v4, v5, v6);
  isContinued = objc_msgSend_isContinued(nodeCopy, v8, v9, v10);
  v17 = objc_msgSend_popArgString(self, v12, v13, v14);
  if (isContinued)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"LET%@(%@, %@, "), v16, @"-continued", v7, v17;
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"LET%@(%@, %@, "), v16, &stru_2834BADA0, v7, v17;
  }
  v18 = ;
  objc_msgSend_pushArgString_(self, v19, v18, v20);
}

- (void)lambdaNode:(id)node
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_identifiers(node, a2, node, v3);
  v8 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v6, @"LAMBDA("), v7;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v5;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v13)
  {
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_appendFormat_(v8, v11, @"%@, ", v12, *(*(&v25 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v25, v29, 16);
    }

    while (v13);
  }

  v19 = objc_msgSend_popArgString(self, v16, v17, v18);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@%@"), v21, v8, v19, v25);
  objc_msgSend_pushArgString_(self, v23, v22, v24);
}

- (void)endScopeNode:(id)node
{
  v13 = objc_msgSend_popArgString(self, a2, node, v3);
  v8 = objc_msgSend_popArgString(self, v5, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@%@"), v9, v8, v13);
  objc_msgSend_pushArgString_(self, v11, v10, v12);
}

- (void)variableNode:(id)node
{
  nodeCopy = node;
  v7 = objc_msgSend_identifier(nodeCopy, v4, v5, v6);

  v11 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v12 = objc_msgSend_identifier(nodeCopy, v8, v9, v10);
    v16 = objc_msgSend_symbol(nodeCopy, v13, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v11, v17, @"<<%@|%u>>", v18, v12, v16);
  }

  else
  {
    v22 = objc_msgSend_symbol(nodeCopy, v8, v9, v10);
    v19 = objc_msgSend_stringWithFormat_(v11, v23, @"<<var %u>>", v24, v22);
  }

  objc_msgSend_pushArgString_(self, v20, v19, v21);
}

- (void)unboundIdentNode:(id)node
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_fullIdentifier(node, a2, node, v3);
  v11 = objc_msgSend_stringWithFormat_(v5, v7, @"<<%@>>", v8, v6);

  objc_msgSend_pushArgString_(self, v9, v11, v10);
}

- (void)anyReferenceNode:(id)node
{
  nodeCopy = node;
  v8 = objc_msgSend_relativeCellCoord(nodeCopy, v5, v6, v7);
  v12 = objc_msgSend_refFlags(nodeCopy, v9, v10, v11);
  v16 = objc_msgSend_containingCell(self, v13, v14, v15);
  v20 = (v16 & 0xFFFF00000000) == 0x7FFF00000000 || v16 == 0x7FFFFFFF;
  if (!v20 || (v12 & 0x30) == 0x30)
  {
    if (WORD2(v8) == 0x7FFF)
    {
      v21 = 0;
    }

    else
    {
      if ((v12 & 0x10) == 0)
      {
        objc_msgSend_containingCell(self, v17, v18, v19);
      }

      v21 = TSUColumnLabel();
    }

    if (v8 == 0x7FFFFFFF)
    {
      v24 = 0;
    }

    else
    {
      if ((v12 & 0x20) == 0)
      {
        objc_msgSend_containingCell(self, v17, v18, v19);
      }

      v24 = TSURowLabel();
    }

    if ((v12 & 0x10) != 0)
    {
      v36 = @"$";
    }

    else
    {
      v36 = &stru_2834BADA0;
    }

    v26 = v36;
    if ((v12 & 0x20) != 0)
    {
      v37 = @"$";
    }

    else
    {
      v37 = &stru_2834BADA0;
    }

    v38 = v37;
    v31 = v38;
    v41 = (v12 >> 2) & 3;
    if (v41 > 1)
    {
      if (v41 != 2)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSCEFormulaTreePrinter anyReferenceNode:]", v40);
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v48);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 463, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
        goto LABEL_48;
      }

      v42 = v26;
      v43 = v21;
    }

    else
    {
      v42 = v38;
      v43 = v24;
      if (!v41)
      {
        v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%@%@%@%@", v40, v26, v21, v38, v24);
        goto LABEL_45;
      }
    }

    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%@%@", v40, v42, v43);
    goto LABEL_45;
  }

  if ((v12 & 0x10) != 0)
  {
    TSUColumnLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%+d", v19, SWORD2(v8));
  }
  v21 = ;
  if ((v12 & 0x20) != 0)
  {
    TSURowLabel();
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%+d", v23, v8);
  }
  v24 = ;
  v25 = @"C";
  if ((v12 & 0x10) != 0)
  {
    v25 = @"$";
  }

  v26 = v25;
  v27 = @"R";
  if ((v12 & 0x20) != 0)
  {
    v27 = @"$";
  }

  v28 = v27;
  v31 = v28;
  v32 = (v12 >> 2) & 3;
  if (v32 <= 1)
  {
    v33 = v28;
    v34 = v24;
    if (!v32)
    {
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"[%@%@, %@%@]", v30, v26, v21, v28, v24);
LABEL_45:
      v44 = v35;
      goto LABEL_49;
    }

LABEL_26:
    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"[%@%@]", v30, v33, v34);
    goto LABEL_45;
  }

  if (v32 == 2)
  {
    v33 = v26;
    v34 = v21;
    goto LABEL_26;
  }

  v54 = MEMORY[0x277D81150];
  v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSCEFormulaTreePrinter anyReferenceNode:]", v30);
  v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaTreePrinter.mm", v57);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 481, 0, "We shouldn't actually reach here - the tag indicates this reference is valid or spanning");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
LABEL_48:
  v44 = @"#REF!";
LABEL_49:

  if (v12)
  {
    v80._lower = objc_msgSend_tableUID(nodeCopy, v63, v64, v65);
    v80._upper = v66;
    v69 = objc_msgSend_calcEngine(self, v66, v67, v68);
    v72 = objc_msgSend_tableResolverForTableUID_(v69, v70, &v80, v71);

    if (v72)
    {
      objc_msgSend_tableName(v72, v73, v74, v75);
    }

    else
    {
      TSKUIDStruct::description(&v80);
    }
    v76 = ;
    v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v77, @"%@::%@", v78, v76, v44);

    v44 = v79;
  }

  objc_msgSend_pushArgString_(self, v63, v44, v65);
}

- (void)linkedRefNode:(id)node
{
  nodeCopy = node;
  v24._lower = objc_msgSend_tableUID(nodeCopy, v5, v6, v7);
  v24._upper = v8;
  v11 = objc_msgSend_linkTag(nodeCopy, v8, v9, v10);
  v12 = MEMORY[0x277CCACA8];
  if (v11 == 64)
  {
    v13 = TSKUIDStruct::description(&v24);
    v16 = objc_msgSend_stringWithFormat_(v12, v17, @"linkedColumnRef(%@) ", v18, v13);
  }

  else
  {
    if (v11 == 65)
    {
      v13 = TSKUIDStruct::description(&v24);
      objc_msgSend_stringWithFormat_(v12, v14, @"linkedRowRef(%@) ", v15, v13);
    }

    else
    {
      v13 = TSKUIDStruct::description(&v24);
      objc_msgSend_stringWithFormat_(v12, v19, @"linkedCellRef(%@) ", v20, v13);
    }
    v16 = ;
  }

  v21 = v16;

  objc_msgSend_pushArgString_(self, v22, v21, v23);
}

- (void)uidReferenceNode:(id)node
{
  nodeCopy = node;
  v8 = objc_msgSend_undoTractList(nodeCopy, v5, v6, v7);
  v9 = MEMORY[0x277CCACA8];
  v13 = objc_msgSend_preserveFlags(v8, v10, v11, v12);
  v16 = objc_msgSend_stringWithFormat_(v9, v14, @"UidRef(%@ Preserve:%u) ", v15, v8, v13);
  if (objc_msgSend_refFlags(nodeCopy, v17, v18, v19))
  {
    v32._lower = objc_msgSend_tableUID(nodeCopy, v20, v21, v22);
    v32._upper = v26;
    v23 = TSKUIDStruct::description(&v32);
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%@::%@", v28, v23, v16);
    objc_msgSend_pushArgString_(self, v30, v29, v31);
  }

  else
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@", v22, v16);
    objc_msgSend_pushArgString_(self, v24, v23, v25);
  }
}

- (void)categoryRefNode:(id)node
{
  v11 = objc_msgSend_categoryRef(node, a2, node, v3);
  v8 = objc_msgSend_description(v11, v5, v6, v7);
  objc_msgSend_pushArgString_(self, v9, v8, v10);
}

@end