@interface TSTDurationNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTDurationNode)initWithContext:(id)context asBlank:(BOOL)blank firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTDurationNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTDurationNode)initWithContext:(id)context durationInterval:(double)interval durationFormat:(id)format firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)date;
- (id)description;
- (id)exportString;
- (id)format;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDurationFormat:(id)format;
- (void)setDurationInterval:(double)interval;
@end

@implementation TSTDurationNode

- (TSTDurationNode)initWithContext:(id)context durationInterval:(double)interval durationFormat:(id)format firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  formatCopy = format;
  v17.receiver = self;
  v17.super_class = TSTDurationNode;
  v14 = [(TSTExpressionNode *)&v17 initWithContext:context children:0 firstIndex:index lastIndex:lastIndex];
  v15 = v14;
  if (v14)
  {
    v14->_durationInterval = interval;
    objc_storeStrong(&v14->_durationFormat, format);
    v15->_blank = 0;
  }

  return v15;
}

- (TSTDurationNode)initWithContext:(id)context asBlank:(BOOL)blank firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  *&v15 = 1057;
  *(&v15 + 2) = 1;
  v11 = TSCEDurationFormat::asTSKDurationFormat(&v15);
  Index_lastIndex = objc_msgSend_initWithContext_durationInterval_durationFormat_firstIndex_lastIndex_(self, v12, contextCopy, v11, index, lastIndex, 0.0);

  if (Index_lastIndex)
  {
    Index_lastIndex->_blank = blank;
  }

  return Index_lastIndex;
}

- (TSTDurationNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  *&v14 = 1057;
  *(&v14 + 2) = 1;
  v10 = TSCEDurationFormat::asTSKDurationFormat(&v14);
  Index_lastIndex = objc_msgSend_initWithContext_durationInterval_durationFormat_firstIndex_lastIndex_(self, v11, contextCopy, v10, index, lastIndex, 0.0);

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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTDurationNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 81, 0, "Unexpected object in initAsCopyOf:... expected TSTDurationNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTDurationNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    v24[17] = *(v13 + 136);
    objc_storeStrong(v24 + 18, *(v13 + 144));
    *(v25 + 128) = *(v13 + 128);
  }

  return v25;
}

- (void)setDurationInterval:(double)interval
{
  objc_msgSend_willModify(self, a2, v3, v4);
  self->_blank = 0;
  self->_durationInterval = interval;
  v13 = objc_msgSend_tokenAttachment(self, v7, v8, v9);
  objc_msgSend_invalidate(v13, v10, v11, v12);
}

- (void)setDurationFormat:(id)format
{
  formatCopy = format;
  objc_msgSend_willModify(self, v5, v6, v7);
  self->_blank = 0;
  objc_storeStrong(&self->_durationFormat, format);
  v11 = objc_msgSend_tokenAttachment(self, v8, v9, v10);
  objc_msgSend_invalidate(v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  v5 = TSUHash();
  v9 = v5 ^ objc_msgSend_hash(self->_durationFormat, v6, v7, v8);
  objc_msgSend_recordExpression_data_(subexpressionsCopy, v10, self, v9 ^ 0x5000000, 1);

  v11 = v9 ^ 0x5000000;
  v12 = 1;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    isEqual = 1;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TSTDurationNode;
    if ([(TSTExpressionNode *)&v20 isEqualToExpressionNode:nodeCopy])
    {
      v5 = nodeCopy;
      durationInterval = self->_durationInterval;
      objc_msgSend_durationInterval(v5, v7, v8, v9);
      if (durationInterval == v13)
      {
        durationFormat = self->_durationFormat;
        v15 = objc_msgSend_durationFormat(v5, v10, v11, v12);
        isEqual = objc_msgSend_isEqual_(durationFormat, v16, v15, v17);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)string
{
  objc_msgSend_durationUnitLargest(self->_durationFormat, a2, v2, v3);
  TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
  objc_msgSend_durationStyle(self->_durationFormat, v5, v6, v7);
  v8 = TSUDurationFormatterFormatFromDurationUnits();
  v12 = objc_msgSend_context(self, v9, v10, v11);
  v16 = objc_msgSend_objectLocale(v12, v13, v14, v15);
  v17 = TSUDurationFormatterStringFromTimeIntervalWithFormat();

  return v17;
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
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTDurationNode insertFormulaText:printingOptions:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 152, 0, "DurationNode shouldn't have any children");

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
  v7 = objc_msgSend_children(self, a2, array, *&cell, table);
  v11 = objc_msgSend_count(v7, v8, v9, v10);

  if (v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTDurationNode buildASTNodeArray:hostCell:symbolTable:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 167, 0, "DurationNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  durationInterval = self->_durationInterval;
  v25 = objc_msgSend_durationUnitLargest(self->_durationFormat, v12, v13, v14);
  v26 = sub_221387C78(v25);
  TSCEDurationFormat::TSCEDurationFormat(&v41, self->_durationFormat);
  TSCEASTDurationElement::appendDurationElement(array, durationInterval, v26, &v41, v27);
  v31 = objc_msgSend_whitespaceBefore(self, v28, v29, v30);

  if (v31)
  {
    v35 = objc_msgSend_whitespaceBefore(self, v32, v33, v34);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v35);
  }

  v36 = objc_msgSend_whitespaceAfter(self, v32, v33, v34);

  if (v36)
  {
    v40 = objc_msgSend_whitespaceAfter(self, v37, v38, v39);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v40);
  }
}

- (id)exportString
{
  v5 = objc_msgSend_durationUnitLargest(self->_durationFormat, a2, v2, v3);
  v9 = v5;
  durationInterval = self->_durationInterval;
  v11 = 0.0;
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v11 = floor(durationInterval / 604800.0);
      durationInterval = durationInterval - v11 * 604800.0;
    }

    else
    {
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      if (v5 != 2)
      {
        goto LABEL_12;
      }
    }

    v15 = v11;
    v11 = floor(durationInterval / 86400.0);
    durationInterval = durationInterval - v11 * 86400.0;
    goto LABEL_10;
  }

  v15 = 0.0;
  if (v5 == 4)
  {
LABEL_10:
    v16 = v11;
    v11 = floor(durationInterval / 3600.0);
    durationInterval = durationInterval - v11 * 3600.0;
    goto LABEL_11;
  }

  v16 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (v5 == 8)
  {
LABEL_11:
    v14 = floor(durationInterval / 60.0);
    durationInterval = durationInterval - v14 * 60.0;
    v9 = 16;
    v12 = v15;
    v13 = v16;
  }

LABEL_12:
  v17 = objc_msgSend_objectLocale(self, v6, v7, v8);
  v21 = objc_msgSend_listSeparator(v17, v18, v19, v20);
  v22 = trunc(durationInterval);
  v23 = durationInterval - v22;
  if (v9 == 16)
  {
    v24 = v22;
  }

  else
  {
    v23 = durationInterval;
    v24 = 0.0;
  }

  if (v9 == 32 || v9 == 16)
  {
    v26 = v23 * 1000.0;
  }

  else
  {
    v26 = 0.0;
  }

  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"DURATION(%g%@%g%@%g%@%g%@%g%@%g)", v28, *&v12, v21, *&v13, v21, *&v11, v21, *&v14, v21, *&v24, v21, *&v26);

  return v29;
}

- (id)date
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDurationNode date]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 223, 0, "We shouldn't ask a Duration for its date.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v15 = MEMORY[0x277CBEAA8];

  return objc_msgSend_date(v15, v12, v13, v14);
}

- (id)format
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDurationNode format]", v2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDurationNode.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 228, 0, "We shouldn't ask a Duration for its format.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  v13 = MEMORY[0x277D811A0];
  v17 = objc_msgSend_context(self, v14, v15, v16);
  v21 = objc_msgSend_objectLocale(v17, v18, v19, v20);
  v24 = objc_msgSend_defaultDateTimeFormatForLocale_(v13, v22, v21, v23);

  return v24;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[226], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212E8C14, off_2812E4498[226]);

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

  v14.receiver = self;
  v14.super_class = TSTDurationNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v6 unarchiver:unarchiver];
  self->_durationInterval = *(archive + 4);
  v7 = *(archive + 40);
  v8 = *(archive + 44);
  v9 = *(archive + 48);
  v10 = objc_alloc(MEMORY[0x277D80678]);
  v12 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v10, v11, 0, v7, v8, v9);
  durationFormat = self->_durationFormat;
  self->_durationFormat = v12;
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

  v22.receiver = self;
  v22.super_class = TSTDurationNode;
  [(TSTExpressionNode *)&v22 saveToArchive:v7 archiver:archiverCopy];
  durationInterval = self->_durationInterval;
  *(archive + 4) |= 2u;
  *(archive + 4) = durationInterval;
  v13 = objc_msgSend_durationUnitSmallest(self->_durationFormat, v10, v11, v12);
  *(archive + 4) |= 4u;
  *(archive + 10) = v13;
  v17 = objc_msgSend_durationUnitLargest(self->_durationFormat, v14, v15, v16);
  *(archive + 4) |= 8u;
  *(archive + 11) = v17;
  v21 = objc_msgSend_durationStyle(self->_durationFormat, v18, v19, v20);
  *(archive + 4) |= 0x10u;
  *(archive + 12) = v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_string(self, v6, v7, v8);
  v12 = v9;
  if (self->_blank)
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