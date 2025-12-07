@interface TSTOperatorNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTOperatorNode)initWithContext:(id)context operatorChar:(unsigned __int16)char children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setOperatorChar:(unsigned __int16)char;
@end

@implementation TSTOperatorNode

- (TSTOperatorNode)initWithContext:(id)context operatorChar:(unsigned __int16)char children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  charCopy = char;
  contextCopy = context;
  childrenCopy = children;
  v14 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v15, v14, v16))
  {
    v20 = objc_msgSend_count(childrenCopy, v17, v18, v19);
    if (childrenCopy)
    {
      if (v20 != 2)
      {
        v23 = MEMORY[0x277D81150];
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTOperatorNode initWithContext:operatorChar:children:firstIndex:lastIndex:]", v22);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v26);
        v31 = objc_msgSend_count(childrenCopy, v28, v29, v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v32, v24, v27, 45, 0, "Operators should only have 2 children.  There are %lu arguments to operator '%hu'", v31, charCopy);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
      }
    }
  }

  v39.receiver = self;
  v39.super_class = TSTOperatorNode;
  v36 = [(TSTExpressionNode *)&v39 initWithContext:contextCopy children:childrenCopy firstIndex:index lastIndex:lastIndex];
  v37 = v36;
  if (v36)
  {
    v36->_operatorChar = charCopy;
  }

  return v37;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  objc_opt_class();
  v13 = TSUDynamicCast();
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTOperatorNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 64, 0, "Unexpected object in initAsCopyOf:... expected TSTOperatorNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTOperatorNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    v24[64] = v13[64];
  }

  return v25;
}

- (void)setOperatorChar:(unsigned __int16)char
{
  objc_msgSend_willModify(self, a2, char, v3);
  self->_operatorChar = char;
  v12 = objc_msgSend_tokenAttachment(self, v6, v7, v8);
  objc_msgSend_invalidate(v12, v9, v10, v11);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v29 = *MEMORY[0x277D85DE8];
  subexpressionsCopy = subexpressions;
  operatorChar = self->_operatorChar;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = objc_msgSend_children(self, v6, v7, v8, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  v14 = operatorChar | 0xA000000;
  if (v13)
  {
    v15 = 0;
    v16 = *v25;
    v17 = 1;
    do
    {
      v18 = 0;
      v19 = v17;
      v17 += v13;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v14 += objc_msgSend_recordHashesForSubexpressions_(*(*(&v24 + 1) + 8 * v18), v11, subexpressionsCopy, v12) * v19;
        v15 += v11;
        ++v19;
        ++v18;
      }

      while (v13 != v18);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v24, v28, 16);
    }

    while (v13);
    v20 = v15 + 1;
  }

  else
  {
    v20 = 1;
  }

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v21, self, v14, v20);
  v22 = v14;
  v23 = v20;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTOperatorNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_operatorChar == nodeCopy->_operatorChar;
  }

  return v5;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  textCopy = text;
  v9 = objc_msgSend_children(self, v6, v7, v8);
  if (objc_msgSend_count(v9, v10, v11, v12) != 2)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTOperatorNode insertFormulaText:printingOptions:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 148, 0, "OperatorNode doesn't have two arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if (v4)
  {
    v25 = objc_msgSend_whitespaceBefore(self, v13, v14, v15);

    if (v25)
    {
      v27 = objc_msgSend_whitespaceBefore(self, v13, v26, v15);
      objc_msgSend_takeText_(textCopy, v28, v27, v29);
    }
  }

  v30 = objc_msgSend_objectAtIndex_(v9, v13, 0, v15);
  objc_msgSend_insertFormulaText_printingOptions_(v30, v31, textCopy, v4);

  v35 = objc_msgSend_string(self, v32, v33, v34);
  objc_msgSend_takeText_withLanguage_(textCopy, v36, v35, *MEMORY[0x277D81448]);

  if (v4)
  {
    v40 = objc_msgSend_whitespaceAfter(self, v37, v38, v39);

    if (v40)
    {
      v42 = objc_msgSend_whitespaceAfter(self, v37, v41, v39);
      objc_msgSend_takeText_(textCopy, v43, v42, v44);
    }
  }

  v45 = objc_msgSend_objectAtIndex_(v9, v37, 1, v39);
  objc_msgSend_insertFormulaText_printingOptions_(v45, v46, textCopy, v4);
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v13 = objc_msgSend_children(self, v10, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16) != 2)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTOperatorNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 167, 0, "OperatorNode doesn't have two arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v32 = objc_msgSend_printingOptions(stackCopy, v17, v18, v19);
  if (phase)
  {
    v33 = objc_msgSend_string(self, v29, v30, v31);
    objc_msgSend_takeText_withLanguage_(recursiveCopy, v34, v33, *MEMORY[0x277D81448]);

    if (v32)
    {
      v38 = objc_msgSend_whitespaceAfter(self, v35, v36, v37);

      if (v38)
      {
        v40 = objc_msgSend_whitespaceAfter(self, v35, v39, v37);
        objc_msgSend_takeText_(recursiveCopy, v41, v40, v42);
      }
    }

    v59 = objc_msgSend_objectAtIndex_(v13, v35, 1, v37);
    v60 = 0;
    v43 = v59;
    objc_msgSend_push_(stackCopy, v44, &v59, v45);
  }

  else
  {
    selfCopy = self;
    v59 = selfCopy;
    v60 = 1;
    objc_msgSend_push_(stackCopy, v47, &v59, v48);

    if (v32)
    {
      v52 = objc_msgSend_whitespaceBefore(selfCopy, v49, v50, v51);

      if (v52)
      {
        v54 = objc_msgSend_whitespaceBefore(selfCopy, v49, v53, v51);
        objc_msgSend_takeText_(recursiveCopy, v55, v54, v56);
      }
    }

    v59 = objc_msgSend_objectAtIndex_(v13, v49, 0, v51);
    v60 = 0;
    v43 = v59;
    objc_msgSend_push_(stackCopy, v57, &v59, v58);
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v55 = objc_msgSend_children(self, a2, array, *&cell);
  if (objc_msgSend_count(v55, v9, v10, v11) != 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 193, 0, "Operator node doesn't have two arguments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_objectAtIndex_(v55, v12, 0, v13);
  objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v23, v24, array, *&cell, table);

  v28 = objc_msgSend_whitespaceBefore(self, v25, v26, v27);

  if (v28)
  {
    v32 = objc_msgSend_whitespaceBefore(self, v29, v30, v31);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v32);
  }

  v33 = objc_msgSend_objectAtIndex_(v55, v29, 1, v31);
  objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v33, v34, array, *&cell, table);

  v38 = objc_msgSend_whitespaceAfter(self, v35, v36, v37);

  if (v38)
  {
    v43 = objc_msgSend_whitespaceAfter(self, v39, v40, v41);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v43);
  }

  operatorChar = self->_operatorChar;
  if (*MEMORY[0x277D81530] == operatorChar)
  {
    v45 = 1;
LABEL_31:
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, v45, v40, v41);
    goto LABEL_32;
  }

  if (*MEMORY[0x277D815B0] == operatorChar)
  {
    v45 = 2;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81580] == operatorChar)
  {
    v45 = 3;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81548] == operatorChar)
  {
    v45 = 4;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81598] == operatorChar)
  {
    v45 = 5;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81540] == operatorChar)
  {
    v45 = 6;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81558] == operatorChar)
  {
    v45 = 7;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81560] == operatorChar)
  {
    v45 = 8;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81570] == operatorChar)
  {
    v45 = 9;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81578] == operatorChar)
  {
    v45 = 10;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81550] == operatorChar)
  {
    v45 = 11;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81588] == operatorChar)
  {
    v45 = 12;
    goto LABEL_31;
  }

  if (*MEMORY[0x277D81538] == operatorChar)
  {
    TSCEASTBinaryElement::appendBinaryElement(array, 28, v40, v41);
  }

  else if (*MEMORY[0x277D815A0] == operatorChar)
  {
    TSCEASTFunctionElement::appendFunctionElement(array, 0x118, 2u, 0, v42);
  }

  else
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v41);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOperatorNode.mm", v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 242, 0, "Undefined operator node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
  }

LABEL_32:
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0
{
  searchCopy = search;
  rangesCopy = ranges;
  contextCopy = context;
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  selfCopy = self;
  v19 = selfCopy;
  v20 = selfCopy;
  if (storageCopy)
  {
    Index = objc_msgSend_firstIndex(selfCopy, v17, selfCopy, v18);
    v20 = v19;
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      v25 = objc_msgSend_firstIndex(v19, v22, v23, v24);
      v28 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v26, v25, v27);
      v29 = TSUDynamicCast();

      v33 = v19;
      if (v29)
      {
        v34 = objc_msgSend_expressionNode(v29, v30, v31, v32);
        v35 = objc_opt_class();
        isMemberOfClass = objc_msgSend_isMemberOfClass_(v34, v36, v35, v37);

        v33 = v19;
        if (isMemberOfClass)
        {
          v33 = objc_msgSend_expressionNode(v29, v39, v40, v41);
        }
      }

      v20 = v33;
    }
  }

  v74 = v20;
  if ((objc_msgSend_containsObject_(nodesCopy, v17, v20, v18) & 1) == 0)
  {
    objc_msgSend_addObject_(nodesCopy, v42, v74, v43);
    if (searchCopy)
    {
      v47 = objc_msgSend_children(v19, v44, v45, v46);
      v51 = objc_msgSend_count(v47, v48, v49, v50);

      v52 = TSUFormulaOperatorForChar();
      v57 = objc_msgSend_functionSpecForOperator_arguments_(TSCEFunctionSpec, v53, v52, v51);
      if (v51)
      {
        for (i = 0; i != v51; ++i)
        {
          v59 = objc_msgSend_children(v19, v54, v55, v56);
          v62 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, i, v61);

          if (TSUFormulaOperatorForChar() == 6)
          {
            v66 = 1;
          }

          else if (objc_msgSend_maxArguments(v57, v63, v64, v65) == -1 || (v66 = contextCopy, i < objc_msgSend_maxArguments(v57, v63, v67, v68)))
          {
            v69 = objc_msgSend_argumentSpecForIndex_numArgs_(v57, v63, i, v51);
            v66 = objc_msgSend_rangeContext(v69, v70, v71, v72);
          }

          objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v62, v63, setCopy, v66, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
        }
      }
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[212], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212624E0, off_2812E4498[212]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v6 = *(archive + 3);
  }

  else
  {
    v6 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v7.receiver = self;
  v7.super_class = TSTOperatorNode;
  [(TSTExpressionNode *)&v7 loadFromArchive:v6 unarchiver:unarchiver];
  self->_operatorChar = *(archive + 8);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 3) = v7;
  }

  v10.receiver = self;
  v10.super_class = TSTOperatorNode;
  [(TSTExpressionNode *)&v10 saveToArchive:v7 archiver:archiverCopy];
  operatorChar = self->_operatorChar;
  *(archive + 4) |= 2u;
  *(archive + 8) = operatorChar;
}

@end