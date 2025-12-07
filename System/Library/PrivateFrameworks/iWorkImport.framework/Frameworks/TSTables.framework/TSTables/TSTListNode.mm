@interface TSTListNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTListNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)description;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTListNode

- (TSTListNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v7.receiver = self;
  v7.super_class = TSTListNode;
  return [(TSTExpressionNode *)&v7 initWithContext:context children:children firstIndex:index lastIndex:lastIndex];
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTListNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTListNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 61, 0, "Unexpected object in initAsCopyOf:... expected TSTListNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTListNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(v24 + 16, v13[16]);
    objc_storeStrong(v25 + 17, v13[17]);
  }

  return v25;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>", v7, v5, self);

  return v8;
}

- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex
{
  if (objc_msgSend_subtreeContainsIndex_(self, a2, index, correspondingIndex))
  {
    if (objc_msgSend_subtreeContainsIndex_(self, v7, index, v8) && !objc_msgSend_subtreeContainsIndex_(self, v9, correspondingIndex, v10) || objc_msgSend_subtreeContainsIndex_(self, v9, index, v10) && (objc_msgSend_firstIndex(self, v11, v12, v13) == correspondingIndex || objc_msgSend_lastIndex(self, v14, v15, v16) == correspondingIndex))
    {
      selfCopy = self;
    }

    else
    {
      v19.receiver = self;
      v19.super_class = TSTListNode;
      selfCopy = [(TSTExpressionNode *)&v19 mostSpecificNodeContainingIndex:index correspondingIndex:correspondingIndex];
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v42 = *MEMORY[0x277D85DE8];
  subexpressionsCopy = subexpressions;
  v8 = objc_msgSend_children(self, v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);

  if (v12 == 1)
  {
    v16 = objc_msgSend_children(self, v13, v14, v15);
    v20 = objc_msgSend_firstObject(v16, v17, v18, v19);
    v23 = objc_msgSend_recordHashesForSubexpressions_(v20, v21, subexpressionsCopy, v22);
    v25 = v24;
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = objc_msgSend_children(self, v13, v14, v15, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v37, v41, 16);
    if (v30)
    {
      v31 = 0;
      v32 = *v38;
      v23 = 251658240;
      do
      {
        v33 = 0;
        do
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(v26);
          }

          v23 ^= objc_msgSend_recordHashesForSubexpressions_(*(*(&v37 + 1) + 8 * v33), v28, subexpressionsCopy, v29);
          v31 += v28;
          ++v33;
        }

        while (v30 != v33);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v37, v41, 16);
      }

      while (v30);
      v25 = v31 + 1;
    }

    else
    {
      v25 = 1;
      v23 = 251658240;
    }

    objc_msgSend_recordExpression_data_(subexpressionsCopy, v34, self, v23, v25);
  }

  v35 = v23;
  v36 = v25;
  result.var1 = v36;
  result.var0 = v35;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  v8 = objc_msgSend_children(self, v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);

  if (v12 == 1)
  {
    v16 = objc_msgSend_children(self, v13, v14, v15);
    v20 = objc_msgSend_firstObject(v16, v17, v18, v19);
    isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(v20, v21, nodeCopy, v22);
  }

  else
  {
    v25.receiver = self;
    v25.super_class = TSTListNode;
    isEqualToExpressionNode = [(TSTExpressionNode *)&v25 isEqualToExpressionNode:nodeCopy];
  }

  return isEqualToExpressionNode;
}

- (id)string
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTListNode string]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTListNode.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 134, 0, "We shouldn't call the listNode's string method, because it won't actually return a proper tokenized string");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  v78 = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (v4)
  {
    v9 = objc_msgSend_whitespaceBefore(self, v5, v6, v7);

    if (v9)
    {
      v12 = objc_msgSend_whitespaceBefore(self, v5, v10, v11);
      objc_msgSend_takeText_(textCopy, v13, v12, v14);
    }
  }

  v72 = *MEMORY[0x277D81448];
  objc_msgSend_takeText_withLanguage_(textCopy, v5, @"("), *MEMORY[0x277D81448];
  if (v4)
  {
    whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
    if (whitespaceAfterLeftParen)
    {
      objc_msgSend_takeText_(textCopy, v15, whitespaceAfterLeftParen, v17);
    }
  }

  v69 = objc_msgSend_children(self, v15, whitespaceAfterLeftParen, v17);
  v21 = objc_msgSend_firstObject(v69, v18, v19, v20);
  objc_msgSend_insertFormulaText_printingOptions_(v21, v22, textCopy, v4);
  v26 = objc_msgSend_count(v69, v23, v24, v25);
  v30 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v27, v28, v29);
  if (v26 >= 2)
  {
    v34 = v30;
    v35 = objc_msgSend_context(self, v31, v32, v33);
    v39 = objc_msgSend_objectLocale(v35, v36, v37, v38);
    v43 = objc_msgSend_listSeparator(v39, v40, v41, v42);

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = objc_msgSend_subarrayWithRange_(v69, v44, 1, v26 - 1);
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v73, v77, 16);
    if (v46)
    {
      v47 = 0;
      v48 = *v74;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v74 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v73 + 1) + 8 * i);

          v21 = v50;
          objc_msgSend_takeText_withLanguage_(textCopy, v51, v43, v72);
          if ((v4 & 1) != 0 && v47 < v34)
          {
            v54 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v52, v47, v53);
            objc_msgSend_takeText_(textCopy, v55, v54, v56);
          }

          objc_msgSend_insertFormulaText_printingOptions_(v21, v52, textCopy, v4);
          ++v47;
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v73, v77, 16);
      }

      while (v46);
    }

    v21 = 0;
  }

  objc_msgSend_takeText_withLanguage_(textCopy, v31, @""), v72);
  if (v4)
  {
    v61 = objc_msgSend_whitespaceAfter(self, v58, v59, v60);
    v62 = v61 == 0;

    if (!v62)
    {
      v66 = objc_msgSend_whitespaceAfter(self, v63, v64, v65);
      objc_msgSend_takeText_(textCopy, v67, v66, v68);
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v13 = objc_msgSend_printingOptions(stackCopy, v10, v11, v12);
  v17 = v13;
  if (!phase)
  {
    if (v13)
    {
      v18 = objc_msgSend_whitespaceBefore(self, v14, whitespaceAfterLeftParen, v16);

      if (v18)
      {
        v21 = objc_msgSend_whitespaceBefore(self, v14, v19, v20);
        objc_msgSend_takeText_(recursiveCopy, v22, v21, v23);
      }
    }

    objc_msgSend_takeText_withLanguage_(recursiveCopy, v14, @"("), *MEMORY[0x277D81448];
    if (v17)
    {
      whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
      if (whitespaceAfterLeftParen)
      {
        objc_msgSend_takeText_(recursiveCopy, v14, whitespaceAfterLeftParen, v16);
      }
    }
  }

  v24 = objc_msgSend_children(self, v14, whitespaceAfterLeftParen, v16);
  v28 = v24;
  if (!phase)
  {
    selfCopy2 = self;
    v77 = 1;
    objc_msgSend_push_(stackCopy, v58, &selfCopy2, v59);

    selfCopy2 = objc_msgSend_firstObject(v28, v60, v61, v62);
    v77 = 0;
    v63 = selfCopy2;
    objc_msgSend_push_(stackCopy, v64, &selfCopy2, v65);

    goto LABEL_18;
  }

  if (objc_msgSend_count(v24, v25, v26, v27) <= phase)
  {
    objc_msgSend_takeText_withLanguage_(recursiveCopy, v29, @""), *MEMORY[0x277D81448]);
    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }

    v69 = objc_msgSend_whitespaceAfter(self, v66, v67, v68);

    if (!v69)
    {
      goto LABEL_19;
    }

    v63 = objc_msgSend_whitespaceAfter(self, v70, v71, v72);
    objc_msgSend_takeText_(recursiveCopy, v73, v63, v74);
LABEL_18:

    goto LABEL_19;
  }

  v32 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v29, v30, v31);
  v36 = objc_msgSend_context(self, v33, v34, v35);
  v40 = objc_msgSend_objectLocale(v36, v37, v38, v39);
  v75 = objc_msgSend_listSeparator(v40, v41, v42, v43);

  selfCopy2 = self;
  v77 = phase + 1;
  objc_msgSend_push_(stackCopy, v44, &selfCopy2, v45);

  v48 = objc_msgSend_objectAtIndex_(v28, v46, phase, v47);
  objc_msgSend_takeText_withLanguage_(recursiveCopy, v49, v75, *MEMORY[0x277D81448]);
  if ((v17 & 1) != 0 && phase - 1 < v32)
  {
    v52 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v50, phase - 1, v51);
    objc_msgSend_takeText_(recursiveCopy, v53, v52, v54);
  }

  v55 = v48;
  selfCopy2 = v55;
  v77 = 0;
  objc_msgSend_push_(stackCopy, v56, &selfCopy2, v57);

LABEL_19:
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v50 = objc_msgSend_children(self, a2, array, *&cell);
  v12 = objc_msgSend_count(v50, v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    if (v12 == 1)
    {
      v17 = objc_msgSend_firstObject(v50, v13, v14, v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        TSCEASTListElement::appendListNode(array, 0, v18, v19);
        goto LABEL_18;
      }
    }

    v20 = objc_msgSend_objectAtIndex_(v50, v13, 0, v15);
    objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v20, v21, array, *&cell, table);

    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, self->_whitespaceAfterLeftParen);
    v25 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v22, v23, v24);
    if (v16 >= 2)
    {
      v27 = v25;
      for (i = 1; i != v16; ++i)
      {
        v29 = objc_msgSend_objectAtIndex_(v50, v26, i, v15);
        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v29, v30, array, *&cell, table);

        whitespaceAfterDelimiters = self->_whitespaceAfterDelimiters;
        if (whitespaceAfterDelimiters)
        {
          v32 = v27 >= i;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          v33 = objc_msgSend_objectAtIndex_(whitespaceAfterDelimiters, v26, i - 1, v15);
          TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v33);
        }
      }

      if (HIDWORD(v16))
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTListNode buildASTNodeArray:hostCell:symbolTable:]", v15);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTListNode.mm", v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 251, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
        v16 = 0xFFFFFFFFLL;
      }
    }
  }

  TSCEASTListElement::appendListNode(array, v16, v14, v15);
  v37 = objc_msgSend_whitespaceBefore(self, v34, v35, v36);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v37);

  v17 = objc_msgSend_whitespaceAfter(self, v38, v39, v40);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v17);
LABEL_18:
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[210], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212CE944, off_2812E4498[210]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v4 = *(archive + 3);
  }

  else
  {
    v4 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTListNode;
  [(TSTExpressionNode *)&v5 loadFromArchive:v4 unarchiver:unarchiver];
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

  v9.receiver = self;
  v9.super_class = TSTListNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:archiverCopy];
}

@end