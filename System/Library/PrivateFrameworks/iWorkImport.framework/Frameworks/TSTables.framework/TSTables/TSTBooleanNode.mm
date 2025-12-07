@interface TSTBooleanNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTBooleanNode)initWithContext:(id)context BOOLValue:(BOOL)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (id)exportString;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setValue:(BOOL)value;
@end

@implementation TSTBooleanNode

- (TSTBooleanNode)initWithContext:(id)context BOOLValue:(BOOL)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v8.receiver = self;
  v8.super_class = TSTBooleanNode;
  result = [(TSTExpressionNode *)&v8 initWithContext:context children:0 firstIndex:index lastIndex:lastIndex];
  if (result)
  {
    result->_value = value;
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTBooleanNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 59, 0, "Unexpected object in initAsCopyOf:... expected TSTBooleanNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTBooleanNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    v24[128] = v13[128];
  }

  return v25;
}

- (void)setValue:(BOOL)value
{
  objc_msgSend_willModify(self, a2, value, v3);
  self->_value = value;
  v12 = objc_msgSend_tokenAttachment(self, v6, v7, v8);
  objc_msgSend_invalidate(v12, v9, v10, v11);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  value = self->_value;
  objc_msgSend_recordExpression_data_(subexpressions, a2, self, value | 0x1000000, 1);
  v4 = value | 0x1000000;
  v5 = 1;
  result.var1 = v5;
  result.var0 = v4;
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
    v7.super_class = TSTBooleanNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_value == nodeCopy->_value;
  }

  return v5;
}

- (id)string
{
  v5 = objc_msgSend_context(self, a2, v2, v3);
  v9 = objc_msgSend_objectLocale(v5, v6, v7, v8);

  if (self->_value)
  {
    objc_msgSend_localizedStringForKey_value_table_(v9, v10, @"true", &stru_2834BADA0, @"TSTables");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v9, v10, @"false", &stru_2834BADA0, @"TSTables");
  }
  v11 = ;

  return v11;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  v9 = objc_msgSend_children(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);

  if (v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTBooleanNode insertFormulaText:printingOptions:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 122, 0, "BooleanNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  if (optionsCopy)
  {
    v26 = objc_msgSend_whitespaceBefore(self, v14, v15, v16);

    if (v26)
    {
      v30 = objc_msgSend_whitespaceBefore(self, v27, v28, v29);
      objc_msgSend_takeText_(textCopy, v31, v30, v32);
    }
  }

  v33 = [TSTWPTokenAttachment alloc];
  v37 = objc_msgSend_context(self, v34, v35, v36);
  v39 = objc_msgSend_initWithContext_expressionNode_(v33, v38, v37, self);

  objc_msgSend_insertUIGraphicalAttachment_(textCopy, v40, v39, v41);
  if (optionsCopy)
  {
    v45 = objc_msgSend_whitespaceAfter(self, v42, v43, v44);

    if (v45)
    {
      v49 = objc_msgSend_whitespaceAfter(self, v46, v47, v48);
      objc_msgSend_takeText_(textCopy, v50, v49, v51);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v33 = objc_msgSend_children(self, a2, array, *&cell, table);
  v10 = objc_msgSend_count(v33, v7, v8, v9);

  if (v10)
  {
    v14 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTBooleanNode buildASTNodeArray:hostCell:symbolTable:]", v13);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTBooleanNode.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v34, v17, 137, 0, "BooleanNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  TSCEASTBooleanElement::appendBooleanElement(array, self->_value, v12, v13);
  v25 = objc_msgSend_whitespaceBefore(self, v22, v23, v24);

  if (v25)
  {
    v35 = objc_msgSend_whitespaceBefore(self, v26, v27, v28);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v35);
  }

  v29 = objc_msgSend_whitespaceAfter(self, v26, v27, v28);

  if (v29)
  {
    v36 = objc_msgSend_whitespaceAfter(self, v30, v31, v32);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v36);
  }
}

- (id)exportString
{
  v5 = objc_msgSend_context(self, a2, v2, v3);
  v9 = objc_msgSend_objectLocale(v5, v6, v7, v8);

  if (self->_value)
  {
    objc_msgSend_localizedTrueString(v9, v10, v11, v12);
  }

  else
  {
    objc_msgSend_localizedFalseString(v9, v10, v11, v12);
  }
  v13 = ;

  return v13;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[200], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212C7198, off_2812E4498[200]);

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
  v7.super_class = TSTBooleanNode;
  [(TSTExpressionNode *)&v7 loadFromArchive:v6 unarchiver:unarchiver];
  self->_value = *(archive + 32);
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
  v10.super_class = TSTBooleanNode;
  [(TSTExpressionNode *)&v10 saveToArchive:v7 archiver:archiverCopy];
  value = self->_value;
  *(archive + 4) |= 2u;
  *(archive + 32) = value;
}

@end