@interface TSTPrefixOperatorNode
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTPrefixOperatorNode

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  textCopy = text;
  v9 = objc_msgSend_children(self, v6, v7, v8);
  if (objc_msgSend_count(v9, v10, v11, v12) != 1)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTPrefixOperatorNode insertFormulaText:printingOptions:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPrefixOperatorNode.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 36, 0, "PrefixOperatorNode doesn't have one argument");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if (v4)
  {
    v25 = objc_msgSend_whitespaceBefore(self, v13, v14, v15);

    if (v25)
    {
      v26 = objc_msgSend_whitespaceBefore(self, v13, v14, v15);
      objc_msgSend_takeText_(textCopy, v27, v26, v28);
    }
  }

  v29 = objc_msgSend_string(self, v13, v14, v15);
  objc_msgSend_takeText_withLanguage_(textCopy, v30, v29, *MEMORY[0x277D81448]);

  if (v4)
  {
    v34 = objc_msgSend_whitespaceAfter(self, v31, v32, v33);

    if (v34)
    {
      v36 = objc_msgSend_whitespaceAfter(self, v31, v35, v33);
      objc_msgSend_takeText_(textCopy, v37, v36, v38);
    }
  }

  v39 = objc_msgSend_objectAtIndex_(v9, v31, 0, v33);
  objc_msgSend_insertFormulaText_printingOptions_(v39, v40, textCopy, v4);
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v12 = objc_msgSend_children(self, v9, v10, v11);
  if (objc_msgSend_count(v12, v13, v14, v15) != 1)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTPrefixOperatorNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPrefixOperatorNode.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 52, 0, "PrefixOperatorNode doesn't have one argument");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  v31 = objc_msgSend_printingOptions(stackCopy, v16, v17, v18);
  if (v31)
  {
    v32 = objc_msgSend_whitespaceBefore(self, v28, v29, v30);

    if (v32)
    {
      v33 = objc_msgSend_whitespaceBefore(self, v28, v29, v30);
      objc_msgSend_takeText_(recursiveCopy, v34, v33, v35);
    }
  }

  v36 = objc_msgSend_string(self, v28, v29, v30);
  objc_msgSend_takeText_withLanguage_(recursiveCopy, v37, v36, *MEMORY[0x277D81448]);

  if (v31)
  {
    v41 = objc_msgSend_whitespaceAfter(self, v38, v39, v40);

    if (v41)
    {
      v43 = objc_msgSend_whitespaceAfter(self, v38, v42, v40);
      objc_msgSend_takeText_(recursiveCopy, v44, v43, v45);
    }
  }

  v49[0] = objc_msgSend_objectAtIndex_(v12, v38, 0, v40);
  v49[1] = 0;
  v46 = v49[0];
  objc_msgSend_push_(stackCopy, v47, v49, v48);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v62 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = objc_msgSend_children(self, a2, array, *&cell, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v57, v61, 16);
  if (v12)
  {
    v13 = *v58;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(*(*(&v57 + 1) + 8 * i), v11, array, *&cell, table);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v57, v61, 16);
    }

    while (v12);
  }

  v18 = objc_msgSend_whitespaceAfter(self, v15, v16, v17);
  v19 = v18 == 0;

  if (!v19)
  {
    v23 = objc_msgSend_whitespaceAfter(self, v20, v21, v22);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v23);
  }

  if (*MEMORY[0x277D81530] == objc_msgSend_operatorChar(self, v20, v21, v22))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, 14, v25, v26);
  }

  else if (*MEMORY[0x277D815B0] == objc_msgSend_operatorChar(self, v24, v25, v26))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, 13, v31, v32);
  }

  else if (*MEMORY[0x277D81568] == objc_msgSend_operatorChar(self, v30, v31, v32))
  {
    v36 = objc_msgSend_argumentSpec(self, v33, v34, v35);
    v40 = v36;
    if (v36)
    {
      v41 = objc_msgSend_rangeContext(v36, v37, v38, v39);
    }

    else
    {
      v41 = 0;
    }

    TSCEASTIntersectionElement::appendIntersectionElement(array, v41, v38, v39);
  }

  else
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTPrefixOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v35);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPrefixOperatorNode.mm", v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 86, 0, "Undefined operator node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
  }

  v51 = objc_msgSend_whitespaceBefore(self, v27, v28, v29);
  v52 = v51 == 0;

  if (!v52)
  {
    v56 = objc_msgSend_whitespaceBefore(self, v53, v54, v55);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v56);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[216], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22130AB3C, off_2812E4498[216]);

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
    v4 = &TST::_OperatorNodeArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTPrefixOperatorNode;
  [(TSTOperatorNode *)&v5 loadFromArchive:v4 unarchiver:unarchiver];
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

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::OperatorNodeArchive>(v8);
    *(archive + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSTPrefixOperatorNode;
  [(TSTOperatorNode *)&v9 saveToArchive:v7 archiver:archiverCopy];
}

@end