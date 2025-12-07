@interface TSTNumberNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTNumberNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTNumberNode)initWithContext:(id)context number:(const TSUDecimal *)number locale:(id)locale firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTNumberNode)initWithContext:(id)context number:(const TSUDecimal *)number string:(id)string firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTNumberNode)initWithContext:(id)context string:(id)string locale:(id)locale firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSUDecimal)number;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)fixStorageLanguage:(id)language;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setNumber:(const TSUDecimal *)number withLocale:(id)locale;
- (void)setString:(id)string;
@end

@implementation TSTNumberNode

- (TSTNumberNode)initWithContext:(id)context number:(const TSUDecimal *)number string:(id)string firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = TSTNumberNode;
  v14 = [(TSTExpressionNode *)&v17 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v15 = v14;
  if (v14)
  {
    v14->_number = *number;
    TSUDecimal::roundToDoublePrecision(&v14->_number);
    objc_storeStrong(&v15->_string, string);
  }

  return v15;
}

- (TSTNumberNode)initWithContext:(id)context number:(const TSUDecimal *)number locale:(id)locale firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  localeCopy = locale;
  TSUDecimal::doubleValue(number);
  v15 = sub_22126B954(localeCopy, v14);
  Index_lastIndex = objc_msgSend_initWithContext_number_string_firstIndex_lastIndex_(self, v16, contextCopy, number, v15, index, lastIndex);

  return Index_lastIndex;
}

- (TSTNumberNode)initWithContext:(id)context string:(id)string locale:(id)locale firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  stringCopy = string;
  localeCopy = locale;
  TSUParsedNumber::TSUParsedNumber();
  if (stringCopy)
  {
    MEMORY[0x223D9F8D0](v35, localeCopy);
    TSUUnivNumberParser::parseAsNumber(v30, v35, stringCopy);
    *v36 = *v30;
    *&v36[5] = *&v30[5];
    objc_storeStrong(&v37, obj);
    objc_storeStrong(&v38, v32);
    objc_storeStrong(&v39, v33);
    objc_storeStrong(&v40, v34);
    MEMORY[0x223D9F890](v30);
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTNumberNode initWithContext:string:locale:firstIndex:lastIndex:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 85, 0, "invalid nil value for '%{public}s'", "numberString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  TSUDecimal::operator=();
  if (*&v36[8] != -999)
  {
    v26 = v38;
    if (v26 || TSUParsedNumber::isInfOrNaN(v36))
    {
    }

    else if (v36[12] == 10)
    {
      TSUDecimal::operator=();
      Index_lastIndex = objc_msgSend_initWithContext_number_string_firstIndex_lastIndex_(self, v29, contextCopy, v35, stringCopy, index, lastIndex);
      goto LABEL_9;
    }
  }

  Index_lastIndex = 0;
LABEL_9:
  MEMORY[0x223D9F890](v36);

  return Index_lastIndex;
}

- (TSTNumberNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  TSUDecimal::operator=();
  Index_lastIndex = objc_msgSend_initWithContext_number_string_firstIndex_lastIndex_(self, v10, contextCopy, &v13, @"0", index, lastIndex);

  return Index_lastIndex;
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTNumberNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 113, 0, "Unexpected object in initAsCopyOf:... expected TSTNumberNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTNumberNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    *(v24 + 9) = *(v13 + 144);
    objc_storeStrong(v24 + 17, *(v13 + 136));
  }

  return v25;
}

- (void)setNumber:(const TSUDecimal *)number withLocale:(id)locale
{
  localeCopy = locale;
  objc_msgSend_willModify(self, v6, v7, v8);
  self->_number = *number;
  TSUDecimal::doubleValue(number);
  v10 = sub_22126B954(localeCopy, v9);
  string = self->_string;
  self->_string = v10;

  v15 = objc_msgSend_tokenAttachment(self, v12, v13, v14);
  objc_msgSend_invalidate(v15, v16, v17, v18);
}

- (void)setString:(id)string
{
  stringCopy = string;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_storeStrong(&self->_string, string);
  v11 = objc_msgSend_tokenAttachment(self, v8, v9, v10);
  objc_msgSend_invalidate(v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  TSUDecimal::doubleValue(&self->_number);
  v5 = TSUHash();
  objc_msgSend_recordExpression_data_(subexpressionsCopy, v6, self, v5 ^ 0x2000000, 1);

  v7 = v5 ^ 0x2000000;
  v8 = 1;
  result.var1 = v8;
  result.var0 = v7;
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
    v7.super_class = TSTNumberNode;
    if ([(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy])
    {
      v5 = TSUDecimal::operator==();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)fixStorageLanguage:(id)language
{
  languageCopy = language;
  Index = objc_msgSend_firstIndex(self, v4, v5, v6);
  v11 = objc_msgSend_lastIndex(self, v8, v9, v10);
  v15 = objc_msgSend_firstIndex(self, v12, v13, v14);
  objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v16, @"en", Index, v11 - v15 + 1, 0);
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
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTNumberNode insertFormulaText:printingOptions:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 191, 0, "NumberNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  if (optionsCopy)
  {
    v26 = objc_msgSend_whitespaceBefore(self, v14, v15, v16);

    if (v26)
    {
      v27 = objc_msgSend_whitespaceBefore(self, v14, v15, v16);
      objc_msgSend_takeText_(textCopy, v28, v27, v29);
    }
  }

  v30 = objc_msgSend_string(self, v14, v15, v16);
  objc_msgSend_takeText_withLanguage_(textCopy, v31, v30, @"en");

  if (optionsCopy)
  {
    v35 = objc_msgSend_whitespaceAfter(self, v32, v33, v34);

    if (v35)
    {
      v39 = objc_msgSend_whitespaceAfter(self, v36, v37, v38);
      objc_msgSend_takeText_(textCopy, v40, v39, v41);
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
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTNumberNode buildASTNodeArray:hostCell:symbolTable:]", v13);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTNumberNode.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v34, v17, 208, 0, "NumberNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  TSCEASTNumberElement::appendNumberElement(array, &self->_number, v12, v13);
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
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[202], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22126CA3C, off_2812E4498[202]);

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

  v8.receiver = self;
  v8.super_class = TSTNumberNode;
  [(TSTExpressionNode *)&v8 loadFromArchive:v6 unarchiver:unarchiver];
  if ((*(archive + 16) & 4) != 0)
  {
    TSUDecimal::TSUDecimal(&v7);
  }

  else
  {
    TSUDecimal::operator=();
  }

  self->_number = v7;
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
  v12.super_class = TSTNumberNode;
  [(TSTExpressionNode *)&v12 saveToArchive:v7 archiver:archiverCopy];
  TSUDecimal::doubleValue(&self->_number);
  *(archive + 4) |= 2u;
  *(archive + 4) = v9;
  v10 = TSUDecimal::low(&self->_number);
  *(archive + 4) |= 4u;
  *(archive + 5) = v10;
  v11 = TSUDecimal::high(&self->_number);
  *(archive + 4) |= 8u;
  *(archive + 6) = v11;
}

- (TSUDecimal)number
{
  objc_copyStruct(v4, &self->_number, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result._decimal.w[1] = v3;
  result._decimal.w[0] = v2;
  return result;
}

@end