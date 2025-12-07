@interface TSTStringNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTStringNode)initWithContext:(id)context stringValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)formulaPlainText;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)fixStorageLanguage:(id)language;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setValue:(id)value;
@end

@implementation TSTStringNode

- (TSTStringNode)initWithContext:(id)context stringValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = TSTStringNode;
  v12 = [(TSTExpressionNode *)&v15 initWithContext:context children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
  }

  return v13;
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStringNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 59, 0, "Unexpected object in initAsCopyOf:... expected TSTStringNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTStringNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(v24 + 16, v13[16]);
  }

  return v25;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_storeStrong(&self->_value, value);
  v11 = objc_msgSend_tokenAttachment(self, v8, v9, v10);
  objc_msgSend_invalidate(v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  v8 = objc_msgSend_string(self, v5, v6, v7);
  v12 = objc_msgSend_hash(v8, v9, v10, v11);

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v13, self, v12 ^ 0x3000000, 1);
  v14 = v12 ^ 0x3000000;
  v15 = 1;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  v9 = 1;
  if (self != nodeCopy)
  {
    v11.receiver = self;
    v11.super_class = TSTStringNode;
    if (![(TSTExpressionNode *)&v11 isEqualToExpressionNode:nodeCopy]|| (value = self->_value, v8 = nodeCopy->_value, value != v8) && !objc_msgSend_isEqualToString_(value, v5, v8, v6))
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)string
{
  value = self->_value;
  if (value && (value = objc_msgSend_length(value, a2, v2, v3)) != 0)
  {
    v6 = sub_2214AAEA8(value, a2, v2, v3);
    v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"\\U201C%@\\U201D", &stru_2834BADA0, @"TSTables");

    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, v8, v10, self->_value);
  }

  else
  {
    v8 = sub_2214AAEA8(value, a2, v2, v3);
    v11 = objc_msgSend_localizedStringForKey_value_table_(v8, v12, @"\\U201C\\U2006\\U201D", &stru_2834BADA0, @"TSTables");
  }

  v13 = v11;

  return v13;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  if (qword_27CFB5400 != -1)
  {
    sub_2216F76D8();
  }

  v9 = objc_msgSend_children(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);

  if (v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTStringNode insertFormulaText:printingOptions:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 130, 0, "StringNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  if (optionsCopy)
  {
    v26 = objc_msgSend_whitespaceBefore(self, v14, v15, v16);

    if (v26)
    {
      v29 = objc_msgSend_whitespaceBefore(self, v14, v27, v28);
      objc_msgSend_takeText_(textCopy, v30, v29, v31);
    }
  }

  if (byte_27CFB44B8 == 1)
  {
    v32 = [TSTWPTokenAttachment alloc];
    v36 = objc_msgSend_context(self, v33, v34, v35);
    v38 = objc_msgSend_initWithContext_expressionNode_(v32, v37, v36, self);

    objc_msgSend_insertUIGraphicalAttachment_(textCopy, v39, v38, v40);
  }

  else
  {
    v41 = *MEMORY[0x277D81448];
    objc_msgSend_takeText_withLanguage_(textCopy, v14, @"", *MEMORY[0x277D81448]);
    v38 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(self->_value, v42, v43, v44);
    if (TSWPGetDefaultParagraphDirection() == 1)
    {
      objc_msgSend_takeText_withLanguage_(textCopy, v45, v38, @"he");
    }

    else
    {
      objc_msgSend_takeText_withLanguage_(textCopy, v45, v38, @"en");
    }

    objc_msgSend_takeText_withLanguage_(textCopy, v46, @"", v41);
  }

  if (optionsCopy)
  {
    v50 = objc_msgSend_whitespaceAfter(self, v47, v48, v49);

    if (v50)
    {
      v54 = objc_msgSend_whitespaceAfter(self, v51, v52, v53);
      objc_msgSend_takeText_(textCopy, v55, v54, v56);
    }
  }
}

- (id)formulaPlainText
{
  v5 = &stru_2834BADA0;
  if (objc_msgSend_length(self->_value, a2, v2, v3))
  {
    v5 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(self->_value, v6, v7, v8);
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@", v8, v5);

  return v9;
}

- (void)fixStorageLanguage:(id)language
{
  languageCopy = language;
  Index = objc_msgSend_firstIndex(self, v4, v5, v6);
  v8 = *MEMORY[0x277D81448];
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v9, *MEMORY[0x277D81448], Index, 1, 0);
  v13 = objc_msgSend_lastIndex(self, v10, v11, v12);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v14, v8, v13, 1, 0);
  v18 = objc_msgSend_string(self, v15, v16, v17);
  v19 = TSWPGetDefaultParagraphDirection();
  v20 = @"en";
  if (v19 == 1)
  {
    v20 = @"he";
  }

  v21 = v20;

  v25 = objc_msgSend_firstIndex(self, v22, v23, v24);
  v29 = objc_msgSend_lastIndex(self, v26, v27, v28);
  v33 = objc_msgSend_firstIndex(self, v30, v31, v32);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v34, v21, v25 + 1, v29 + ~v33, 0);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v33 = objc_msgSend_children(self, a2, array, *&cell, table);
  v10 = objc_msgSend_count(v33, v7, v8, v9);

  if (v10)
  {
    v14 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTStringNode buildASTNodeArray:hostCell:symbolTable:]", v13);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStringNode.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v34, v17, 178, 0, "StringNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  TSCEASTStringElement::appendStringElement(array, self->_value, v12);
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

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[204], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212D6310, off_2812E4498[204]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v13.receiver = self;
  v13.super_class = TSTStringNode;
  [(TSTExpressionNode *)&v13 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    v10 = *v10;
  }

  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v9);
  value = self->_value;
  self->_value = v11;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 4) = v7;
  }

  v13.receiver = self;
  v13.super_class = TSTStringNode;
  [(TSTExpressionNode *)&v13 saveToArchive:v7 archiver:archiverCopy];
  v12 = objc_msgSend_UTF8String(self->_value, v9, v10, v11);
  sub_2212D61D8(archive, v12);
}

@end