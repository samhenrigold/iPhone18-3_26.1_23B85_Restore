@interface TSTDateNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTDateNode)initWithContext:(id)context asBlank:(BOOL)blank firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTDateNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTDateNode)initWithContext:(id)context dateValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)description;
- (id)exportString;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDateFormat:(id)format;
- (void)setValue:(id)value;
@end

@implementation TSTDateNode

- (TSTDateNode)initWithContext:(id)context dateValue:(id)value firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  valueCopy = value;
  v24.receiver = self;
  v24.super_class = TSTDateNode;
  v12 = [(TSTExpressionNode *)&v24 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
    v13->_isBlank = 0;
    v14 = MEMORY[0x277D811A0];
    v18 = objc_msgSend_objectLocale(v13, v15, v16, v17);
    v21 = objc_msgSend_defaultDateTimeFormatForLocale_(v14, v19, v18, v20);
    dateFormat = v13->_dateFormat;
    v13->_dateFormat = v21;
  }

  return v13;
}

- (TSTDateNode)initWithContext:(id)context asBlank:(BOOL)blank firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  v14 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v11, v12, v13, 0.0);
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(self, v15, contextCopy, v14, index, lastIndex);

  if (Index_lastIndex)
  {
    Index_lastIndex->_isBlank = blank;
  }

  return Index_lastIndex;
}

- (TSTDateNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  v13 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v10, v11, v12, 0.0);
  Index_lastIndex = objc_msgSend_initWithContext_dateValue_firstIndex_lastIndex_(self, v14, contextCopy, v13, index, lastIndex);

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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTDateNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 71, 0, "Unexpected object in initAsCopyOf:... expected TSTDateNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTDateNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(v24 + 17, *(v13 + 136));
    *(v25 + 128) = *(v13 + 128);
    objc_storeStrong(v25 + 18, *(v13 + 144));
  }

  return v25;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_msgSend_willModify(self, v5, v6, v7);
  self->_isBlank = 0;
  objc_storeStrong(&self->_value, value);
  v11 = objc_msgSend_tokenAttachment(self, v8, v9, v10);
  objc_msgSend_invalidate(v11, v12, v13, v14);
}

- (void)setDateFormat:(id)format
{
  formatCopy = format;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_storeStrong(&self->_dateFormat, format);
  v11 = objc_msgSend_tokenAttachment(self, v8, v9, v10);
  objc_msgSend_invalidate(v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  v8 = objc_msgSend_hash(self->_value, v5, v6, v7);
  v12 = v8 ^ objc_msgSend_hash(self->_dateFormat, v9, v10, v11);
  objc_msgSend_recordExpression_data_(subexpressionsCopy, v13, self, v12 ^ 0x4000000, 1);

  v14 = v12 ^ 0x4000000;
  v15 = 1;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  v7 = 1;
  if (self != nodeCopy)
  {
    v11.receiver = self;
    v11.super_class = TSTDateNode;
    if (![(TSTExpressionNode *)&v11 isEqualToExpressionNode:nodeCopy]|| self->_value != nodeCopy->_value || (dateFormat = self->_dateFormat, v9 = nodeCopy->_dateFormat, dateFormat != v9) && !objc_msgSend_isEqualToString_(dateFormat, v5, v9, v6))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)string
{
  v4 = objc_msgSend_objectLocale(self, a2, v2, v3);
  v5 = TSUDateFormatterStringFromDateWithFormat();

  return v5;
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
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTDateNode insertFormulaText:printingOptions:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 141, 0, "DateNode shouldn't have any children");

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
  v32 = objc_msgSend_children(self, a2, array, *&cell, table);
  v10 = objc_msgSend_count(v32, v7, v8, v9);

  if (v10)
  {
    v13 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTDateNode buildASTNodeArray:hostCell:symbolTable:]", v12);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDateNode.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v33, v16, 157, 0, "DateNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  TSCEASTDateElement::appendDateElement(array, self->_value, self->_dateFormat, 0, 0);
  v24 = objc_msgSend_whitespaceBefore(self, v21, v22, v23);

  if (v24)
  {
    v34 = objc_msgSend_whitespaceBefore(self, v25, v26, v27);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v34);
  }

  v28 = objc_msgSend_whitespaceAfter(self, v25, v26, v27);

  if (v28)
  {
    v35 = objc_msgSend_whitespaceAfter(self, v29, v30, v31);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v35);
  }
}

- (id)exportString
{
  v5 = objc_msgSend_gregorianCalendar(TSCECalendar, a2, v2, v3);
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0uLL;
  v20 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v5, v6, self->_value, &v24, &v23, &v22, &v21 + 8, &v21, &v20);
  v10 = objc_msgSend_objectLocale(self, v7, v8, v9);
  v14 = objc_msgSend_listSeparator(v10, v11, v12, v13);

  if (v21 != 0 || v20)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"(DATE(%ld%@%ld%@%ld)+TIMEVALUE(TIME(%ld%@%ld%@%ld)))", v16, v24, v14, v23, v14, v22, *(&v21 + 1), v14, v21, v14, v20);
  }

  else
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"DATE(%ld%@%ld%@%ld)", v16, v24, v14, v23, v14, v22);
  }

  v18 = v17;

  return v18;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[222], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212D99D8, off_2812E4498[222]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 5))
  {
    v7 = *(archive + 5);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v13.receiver = self;
  v13.super_class = TSTDateNode;
  [(TSTExpressionNode *)&v13 loadFromArchive:v7 unarchiver:unarchiverCopy];
  TST::DateNodeArchive::DateNodeArchive(v12, archive);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_2212D94D4;
  v10[3] = &unk_2834A4658;
  TST::DateNodeArchive::DateNodeArchive(v11, v12);
  v10[4] = self;
  v11[6] = archive;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v8, v10, v9);
  TST::DateNodeArchive::~DateNodeArchive(v11);
  TST::DateNodeArchive::~DateNodeArchive(v12);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 4u;
  v7 = *(archive + 5);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 5) = v7;
  }

  v30.receiver = self;
  v30.super_class = TSTDateNode;
  [(TSTExpressionNode *)&v30 saveToArchive:v7 archiver:archiverCopy];
  v9 = MEMORY[0x277D811A0];
  v13 = objc_msgSend_objectLocale(self, v10, v11, v12);
  v16 = objc_msgSend_defaultDateTimeFormatForLocale_(v9, v14, v13, v15);
  v20 = objc_msgSend_objectLocale(self, v17, v18, v19);
  v21 = TSUDateFormatterStringFromDateWithFormat();

  v22 = v21;
  v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
  if (v26)
  {
    *(archive + 4) |= 1u;
    sub_22108CCD0(__p, v26);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v29 = objc_msgSend_UTF8String(self->_dateFormat, v26, v27, v28);
  *(archive + 4) |= 2u;
  sub_22108CCD0(__p, v29);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_string(self, v6, v7, v8);
  v12 = v9;
  if (self->_isBlank)
  {
    objc_msgSend_stringWithFormat_(v3, v10, @"<%@ %p>: '%@'%@", v11, v5, self, v9, @" (BLANK)");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v10, @"<%@ %p>: '%@'%@", v11, v5, self, v9, &stru_2834BADA0);
  }
  v13 = ;

  return v13;
}

@end