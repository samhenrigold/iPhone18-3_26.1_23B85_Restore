@interface TSTArrayNode
- (TSTArrayNode)initWithContext:(id)context children:(id)children columns:(unsigned int)columns rows:(unsigned int)rows firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTArrayNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTArrayNode

- (TSTArrayNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  childrenCopy = children;
  v15 = objc_msgSend_count(childrenCopy, v12, v13, v14);
  Index_lastIndex = objc_msgSend_initWithContext_children_columns_rows_firstIndex_lastIndex_(self, v16, contextCopy, childrenCopy, v15, 1, index, lastIndex);

  return Index_lastIndex;
}

- (TSTArrayNode)initWithContext:(id)context children:(id)children columns:(unsigned int)columns rows:(unsigned int)rows firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v8 = *&rows;
  v11.receiver = self;
  v11.super_class = TSTArrayNode;
  result = [(TSTExpressionNode *)&v11 initWithContext:context children:children firstIndex:index lastIndex:lastIndex];
  if (result)
  {
    result->_dimensions = (columns | (v8 << 32));
  }

  return result;
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTArrayNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 68, 0, "Unexpected object in initAsCopyOf:... expected TSTArrayNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTArrayNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    v24[16] = *(v13 + 128);
    objc_storeStrong(v24 + 17, *(v13 + 136));
    objc_storeStrong(v25 + 18, *(v13 + 144));
  }

  return v25;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v27 = *MEMORY[0x277D85DE8];
  subexpressionsCopy = subexpressions;
  v5 = TSUHash();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = objc_msgSend_children(self, v6, v7, v8, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
  v14 = v5 ^ 0xE000000;
  if (v13)
  {
    v15 = 0;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v14 ^= objc_msgSend_recordHashesForSubexpressions_(*(*(&v22 + 1) + 8 * v17), v11, subexpressionsCopy, v12);
        v15 += v11;
        ++v17;
      }

      while (v13 != v17);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v22, v26, 16);
    }

    while (v13);
    v18 = v15 + 1;
  }

  else
  {
    v18 = 1;
  }

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v19, self, v14, v18);
  v20 = v14;
  v21 = v18;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (id)string
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTArrayNode string]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 105, 0, "We shouldn't call the arrayNode's string method, because it won't actually return a proper tokenized string");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  textCopy = text;
  if (v4)
  {
    v9 = objc_msgSend_whitespaceBefore(self, v6, v7, v8);

    if (v9)
    {
      v12 = objc_msgSend_whitespaceBefore(self, v6, v10, v11);
      objc_msgSend_takeText_(textCopy, v13, v12, v14);
    }
  }

  v15 = *MEMORY[0x277D81448];
  objc_msgSend_takeText_withLanguage_(textCopy, v6, @"{", *MEMORY[0x277D81448]);
  if (v4)
  {
    whitespaceBeforeFirstChild = self->_whitespaceBeforeFirstChild;
    if (whitespaceBeforeFirstChild)
    {
      objc_msgSend_takeText_(textCopy, v16, whitespaceBeforeFirstChild, v18);
    }
  }

  v19 = objc_msgSend_children(self, v16, whitespaceBeforeFirstChild, v18);
  v23 = objc_msgSend_objectLocale(self, v20, v21, v22);
  v94 = objc_msgSend_arrayColumnSeparator(v23, v24, v25, v26);
  v92 = objc_msgSend_arrayRowSeparator(v23, v27, v28, v29);
  selfCopy = self;
  p_dimensions = &self->_dimensions;
  width = self->_dimensions.width;
  height = p_dimensions->height;
  if (objc_msgSend_count(v19, v33, v34, v35) != height * width)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTArrayNode insertFormulaText:printingOptions:]", v38);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 131, 0, "invalid TSTArrayNode children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
  }

  whitespaceAfterDelimiters = selfCopy->_whitespaceAfterDelimiters;
  if (whitespaceAfterDelimiters)
  {
    v49 = objc_msgSend_count(whitespaceAfterDelimiters, v36, v37, v38);
    if (v49 + 1 != objc_msgSend_count(v19, v50, v51, v52))
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTArrayNode insertFormulaText:printingOptions:]", v38);
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v56);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 132, 0, "expected n-1 delimiter whitespace elements");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
    }
  }

  v62 = objc_msgSend_count(selfCopy->_whitespaceAfterDelimiters, v36, v37, v38);
  v65 = p_dimensions->height;
  if (v65)
  {
    v66 = v62;
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = p_dimensions->width;
      if (v69)
      {
        v70 = 0;
        do
        {
          v71 = objc_msgSend_objectAtIndex_(v19, v63, v70 + v67 * v69, v64);
          objc_msgSend_insertFormulaText_printingOptions_(v71, v72, textCopy, v4);
          if (++v70 < p_dimensions->width)
          {
            objc_msgSend_takeText_withLanguage_(textCopy, v73, v94, v15);
            if ((v4 & 1) != 0 && v68 < v66)
            {
              v76 = objc_msgSend_objectAtIndex_(selfCopy->_whitespaceAfterDelimiters, v74, v68, v75);
              objc_msgSend_takeText_(textCopy, v77, v76, v78);
            }

            ++v68;
          }

          v69 = p_dimensions->width;
        }

        while (v70 < v69);
        v65 = p_dimensions->height;
      }

      ++v67;
      if (v65 >= 2 && v67 < v65)
      {
        objc_msgSend_takeText_withLanguage_(textCopy, v63, v92, v15);
        if ((v4 & 1) != 0 && v68 < v66)
        {
          v79 = objc_msgSend_objectAtIndex_(selfCopy->_whitespaceAfterDelimiters, v63, v68, v64);
          objc_msgSend_takeText_(textCopy, v80, v79, v81);
        }

        ++v68;
        v65 = p_dimensions->height;
      }
    }

    while (v67 < v65);
  }

  objc_msgSend_takeText_withLanguage_(textCopy, v63, @"}", v15);
  if (v4)
  {
    v85 = objc_msgSend_whitespaceAfter(selfCopy, v82, v83, v84);

    if (v85)
    {
      v89 = objc_msgSend_whitespaceAfter(selfCopy, v86, v87, v88);
      objc_msgSend_takeText_(textCopy, v90, v89, v91);
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v13 = objc_msgSend_printingOptions(stackCopy, v10, v11, v12);
  v20 = objc_msgSend_children(self, v14, v15, v16);
  if (!phase)
  {
    if (v13)
    {
      v39 = objc_msgSend_whitespaceBefore(self, v17, v18, v19);

      if (v39)
      {
        v42 = objc_msgSend_whitespaceBefore(self, v17, v40, v41);
        objc_msgSend_takeText_(recursiveCopy, v43, v42, v44);
      }
    }

    objc_msgSend_takeText_withLanguage_(recursiveCopy, v17, @"{", *MEMORY[0x277D81448]);
    if (v13)
    {
      whitespaceBeforeFirstChild = self->_whitespaceBeforeFirstChild;
      if (whitespaceBeforeFirstChild)
      {
        objc_msgSend_takeText_(recursiveCopy, v45, whitespaceBeforeFirstChild, v47);
      }
    }

    width = self->_dimensions.width;
    height = self->_dimensions.height;
    if (objc_msgSend_count(v20, v45, whitespaceBeforeFirstChild, v47) != height * width)
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTArrayNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v19);
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v53);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v51, v54, 177, 0, "invalid TSTArrayNode children");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58);
    }

    whitespaceAfterDelimiters = self->_whitespaceAfterDelimiters;
    if (whitespaceAfterDelimiters)
    {
      v60 = objc_msgSend_count(whitespaceAfterDelimiters, v17, v18, v19);
      if (v60 + 1 != objc_msgSend_count(v20, v61, v62, v63))
      {
        v64 = MEMORY[0x277D81150];
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTArrayNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v19);
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v67);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 178, 0, "expected n-1 delimiter whitespace elements");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72);
      }
    }
  }

  if (objc_msgSend_count(v20, v17, v18, v19) > phase)
  {
    selfCopy = self;
    v100 = phase + 1;
    objc_msgSend_push_(stackCopy, v24, &selfCopy, v25);
  }

  v29 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v21, v22, v23);
  v30 = self->_dimensions.width;
  if (phase % v30)
  {
    if (v30 < 2)
    {
      goto LABEL_27;
    }

    v31 = objc_msgSend_objectLocale(self, v26, v27, v28);
    v35 = objc_msgSend_arrayColumnSeparator(v31, v32, v33, v34);
    objc_msgSend_takeText_withLanguage_(recursiveCopy, v36, v35, *MEMORY[0x277D81448]);
    if ((v13 & 1) == 0 || v29 <= phase)
    {
      goto LABEL_26;
    }

LABEL_25:
    v79 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v37, phase - 1, v38);
    objc_msgSend_takeText_(recursiveCopy, v80, v79, v81);

LABEL_26:
    goto LABEL_27;
  }

  if (v30 <= phase)
  {
    v73 = self->_dimensions.height;
    if (v73 >= 2 && phase / v30 < v73)
    {
      v74 = objc_msgSend_objectLocale(self, v26, v27, v28);
      v35 = objc_msgSend_arrayRowSeparator(v74, v75, v76, v77);
      objc_msgSend_takeText_withLanguage_(recursiveCopy, v78, v35, *MEMORY[0x277D81448]);
      if ((v13 & 1) == 0 || v29 <= phase)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

LABEL_27:
  if (objc_msgSend_count(v20, v26, v27, v28) > phase)
  {
    selfCopy = objc_msgSend_objectAtIndex_(v20, v82, phase, v84);
    v100 = 0;
    v85 = selfCopy;
    objc_msgSend_push_(stackCopy, v86, &selfCopy, v87);
  }

  if (objc_msgSend_count(v20, v82, v83, v84) == phase)
  {
    objc_msgSend_takeText_withLanguage_(recursiveCopy, v88, @"}", *MEMORY[0x277D81448]);
    if (v13)
    {
      v92 = objc_msgSend_whitespaceAfter(self, v89, v90, v91);

      if (v92)
      {
        v96 = objc_msgSend_whitespaceAfter(self, v93, v94, v95);
        objc_msgSend_takeText_(recursiveCopy, v97, v96, v98);
      }
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v56 = objc_msgSend_children(self, a2, array, *&cell);
  v14 = objc_msgSend_count(v56, v9, v10, v11);
  if (v14)
  {
    v15 = objc_msgSend_objectAtIndex_(v56, v12, 0, v13);
    objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v15, v16, array, *&cell, table);

    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, self->_whitespaceBeforeFirstChild);
    v20 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v17, v18, v19);
    if (v14 != 1)
    {
      v21 = v20;
      for (i = 1; i != v14; ++i)
      {
        v23 = objc_msgSend_objectAtIndex_(v56, v12, i, v13);
        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v23, v24, array, *&cell, table);

        whitespaceAfterDelimiters = self->_whitespaceAfterDelimiters;
        if (whitespaceAfterDelimiters)
        {
          v26 = v21 >= i;
        }

        else
        {
          v26 = 0;
        }

        if (v26)
        {
          v27 = objc_msgSend_objectAtIndex_(whitespaceAfterDelimiters, v12, i - 1, v13);
          TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v27);
        }
      }
    }
  }

  p_dimensions = &self->_dimensions;
  if (self->_dimensions.height >= 0x10000)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTArrayNode buildASTNodeArray:hostCell:symbolTable:]", v13);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 238, 0, "We don't support more than UINT16_MAX rows in an array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  width = p_dimensions->width;
  if (p_dimensions->width >= 0x10000)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTArrayNode buildASTNodeArray:hostCell:symbolTable:]", v13);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArrayNode.mm", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 239, 0, "We don't support more than UINT16_MAX columns in an array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
    width = p_dimensions->width;
  }

  TSCEASTArrayElement::appendArrayNode(array, width, LOWORD(self->_dimensions.height), v13);
  v51 = objc_msgSend_whitespaceBefore(self, v48, v49, v50);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v51);

  v55 = objc_msgSend_whitespaceAfter(self, v52, v53, v54);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v55);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[208], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212CD508, off_2812E4498[208]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v11.receiver = self;
  v11.super_class = TSTArrayNode;
  [(TSTExpressionNode *)&v11 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if ((~*(archive + 4) & 6) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2212CD2D8;
    v10[3] = &unk_27845E3F8;
    v10[4] = self;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v8, v10, v9);
  }

  else
  {
    self->_dimensions = (*(archive + 8) | (*(archive + 18) << 32));
  }
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

  v12.receiver = self;
  v12.super_class = TSTArrayNode;
  [(TSTExpressionNode *)&v12 saveToArchive:v7 archiver:archiverCopy];
  width = self->_dimensions.width;
  v10 = *(archive + 4);
  *(archive + 4) = v10 | 2;
  height = self->_dimensions.height;
  *(archive + 4) = v10 | 6;
  *(archive + 8) = width;
  *(archive + 9) = height;
}

@end