@interface TSTPostfixOperatorNode
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTPostfixOperatorNode

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  textCopy = text;
  v9 = objc_msgSend_children(self, v6, v7, v8);
  if (objc_msgSend_count(v9, v10, v11, v12) != 1)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTPostfixOperatorNode insertFormulaText:printingOptions:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPostfixOperatorNode.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 38, 0, "PostfixOperatorNode doesn't have one argument");

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
      v44 = objc_msgSend_whitespaceAfter(self, v41, v42, v43);
      objc_msgSend_takeText_(textCopy, v45, v44, v46);
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v13 = objc_msgSend_children(self, v10, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16) != 1)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTPostfixOperatorNode insertFormulaTextNonRecursive:phase:deferredWorkStack:]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPostfixOperatorNode.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 58, 0, "PostfixOperatorNode doesn't have one argument");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v32 = objc_msgSend_printingOptions(stackCopy, v17, v18, v19);
  if (!phase)
  {
    selfCopy = self;
    v58 = selfCopy;
    v59 = 1;
    objc_msgSend_push_(stackCopy, v46, &v58, v47);

    if (v32)
    {
      v51 = objc_msgSend_whitespaceBefore(selfCopy, v48, v49, v50);

      if (v51)
      {
        v53 = objc_msgSend_whitespaceBefore(selfCopy, v48, v52, v50);
        objc_msgSend_takeText_(recursiveCopy, v54, v53, v55);
      }
    }

    v58 = objc_msgSend_objectAtIndex_(v13, v48, 0, v50);
    v59 = 0;
    v42 = v58;
    objc_msgSend_push_(stackCopy, v56, &v58, v57);

    goto LABEL_11;
  }

  v33 = objc_msgSend_string(self, v29, v30, v31);
  objc_msgSend_takeText_withLanguage_(recursiveCopy, v34, v33, *MEMORY[0x277D81448]);

  if (v32)
  {
    v38 = objc_msgSend_whitespaceAfter(self, v35, v36, v37);

    if (v38)
    {
      v42 = objc_msgSend_whitespaceAfter(self, v39, v40, v41);
      objc_msgSend_takeText_(recursiveCopy, v43, v42, v44);
LABEL_11:
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v53 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = objc_msgSend_children(self, a2, array, *&cell, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v48, v52, 16);
  if (v12)
  {
    v13 = *v49;
    do
    {
      v14 = 0;
      do
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(*(*(&v48 + 1) + 8 * v14++), v11, array, *&cell, table);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v48, v52, 16);
    }

    while (v12);
  }

  v18 = objc_msgSend_whitespaceBefore(self, v15, v16, v17);
  v19 = v18 == 0;

  if (!v19)
  {
    v23 = objc_msgSend_whitespaceBefore(self, v20, v21, v22);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v23);
  }

  if (*MEMORY[0x277D81590] == objc_msgSend_operatorChar(self, v20, v21, v22))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, 15, v25, v26);
  }

  else if (*MEMORY[0x277D815A8] == objc_msgSend_operatorChar(self, v24, v25, v26))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, 70, v31, v32);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTPostfixOperatorNode buildASTNodeArray:hostCell:symbolTable:]", v32);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPostfixOperatorNode.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 91, 0, "Undefined operator node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
  }

  v42 = objc_msgSend_whitespaceAfter(self, v27, v28, v29);
  v43 = v42 == 0;

  if (!v43)
  {
    v47 = objc_msgSend_whitespaceAfter(self, v44, v45, v46);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v47);
  }
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0
{
  searchCopy = search;
  contextCopy = context;
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  v24 = ranges || objc_msgSend_operatorChar(self, v20, v21, v22) == *MEMORY[0x277D815A8];
  v25.receiver = self;
  v25.super_class = TSTPostfixOperatorNode;
  [(TSTOperatorNode *)&v25 addTSTCanvasReferencesToSet:setCopy inRangeContext:contextCopy withColorHelper:helperCopy preferringNodesFromStorage:storageCopy showingSpillRanges:v24 deepSearch:searchCopy calcEngine:engineCopy allVisitedNodes:nodesCopy];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[214], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212F78FC, off_2812E4498[214]);

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
  v5.super_class = TSTPostfixOperatorNode;
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
  v9.super_class = TSTPostfixOperatorNode;
  [(TSTOperatorNode *)&v9 saveToArchive:v7 archiver:archiverCopy];
}

@end