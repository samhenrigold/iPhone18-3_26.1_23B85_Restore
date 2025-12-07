@interface TSTSpillOriginRefNode
+ (id)spillRangeColor;
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTSpillOriginRefNode)initWithContext:(id)context spillOrigin:(TSUChromeCellCoord)origin isRTL:(BOOL)l;
- (TSTSpillOriginRefNode)initWithContext:(id)context spillOrigin:(TSUChromeCellCoord)origin spillingRange:(id)range isRTL:(BOOL)l;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)string;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTSpillOriginRefNode

- (TSTSpillOriginRefNode)initWithContext:(id)context spillOrigin:(TSUChromeCellCoord)origin isRTL:(BOOL)l
{
  v8.receiver = self;
  v8.super_class = TSTSpillOriginRefNode;
  result = [(TSTExpressionNode *)&v8 initWithContext:context children:0 firstIndex:0 lastIndex:0];
  if (result)
  {
    result->_spillOrigin = origin;
    result->_isRTL = l;
  }

  return result;
}

- (TSTSpillOriginRefNode)initWithContext:(id)context spillOrigin:(TSUChromeCellCoord)origin spillingRange:(id)range isRTL:(BOOL)l
{
  lCopy = l;
  contextCopy = context;
  rangeCopy = range;
  isRTL = objc_msgSend_initWithContext_spillOrigin_isRTL_(self, v12, contextCopy, *&origin, lCopy);
  if (isRTL)
  {
    v17 = objc_msgSend_copy(rangeCopy, v13, v14, v15);
    chromeSpillingRange = isRTL->_chromeSpillingRange;
    isRTL->_chromeSpillingRange = v17;

    isRTL->_isRTL = lCopy;
  }

  return isRTL;
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTSpillOriginRefNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSpillOriginRefNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 80, 0, "Unexpected object in initAsCopyOf:... expected TSTSpillOriginRefNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v32.receiver = self;
  v32.super_class = TSTSpillOriginRefNode;
  v24 = [(TSTExpressionNode *)&v32 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v28 = v24;
  if (v24)
  {
    v24[16] = *(v13 + 128);
    v29 = objc_msgSend_copy(*(v13 + 136), v25, v26, v27);
    v30 = v28[17];
    v28[17] = v29;
  }

  return v28;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  objc_msgSend_recordExpression_data_(subexpressions, a2, self, 0, 1);
  v3 = 0;
  v4 = 1;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v10 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TSTSpillOriginRefNode;
    if ([(TSTExpressionNode *)&v14 isEqualToExpressionNode:nodeCopy])
    {
      v7 = nodeCopy;
      spillOrigin = self->_spillOrigin;
      v9 = v7->_spillOrigin;
      v10 = 0;
      if (spillOrigin._coord.row == v9._coord.row && ((*&v9 ^ *&spillOrigin) & 0x101FFFF00000000) == 0)
      {
        chromeSpillingRange = self->_chromeSpillingRange;
        v13 = v7->_chromeSpillingRange;
        if (chromeSpillingRange == v13 || objc_msgSend_isEqual_(chromeSpillingRange, v5, v13, v6))
        {
          v10 = 1;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)string
{
  if (!self->_chromeSpillingRange)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_isRTL(self, a2, v2, v3))
  {
    if (self->_chromeSpillingRange && objc_msgSend_isRTL(self, a2, v2, v3))
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_msgSend_description(self->_chromeSpillingRange, a2, v2, v3);
      v9 = objc_msgSend_stringWithFormat_(v5, v7, @"↲ (%@):", v8, v6);
      goto LABEL_11;
    }

LABEL_6:
    isRTL = objc_msgSend_isRTL(self, a2, v2, v3);
    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromTSUCellCoord();
    v6 = v12;
    if (isRTL)
    {
      objc_msgSend_stringWithFormat_(v11, v13, @"↱ %@:", v14, v12);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v11, v13, @"↰ %@:", v14, v12);
    }
    v9 = ;
    goto LABEL_11;
  }

  v15 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_description(self->_chromeSpillingRange, a2, v2, v3);
  v9 = objc_msgSend_stringWithFormat_(v15, v16, @"↳ (%@):", v17, v6);
LABEL_11:
  v18 = v9;

  return v18;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  if (optionsCopy)
  {
    v9 = objc_msgSend_whitespaceBefore(self, v6, v7, v8);

    if (v9)
    {
      v13 = objc_msgSend_whitespaceBefore(self, v10, v11, v12);
      objc_msgSend_takeText_(textCopy, v14, v13, v15);
    }
  }

  v16 = [TSTWPTokenAttachment alloc];
  v20 = objc_msgSend_context(self, v17, v18, v19);
  v22 = objc_msgSend_initWithContext_expressionNode_(v16, v21, v20, self);

  objc_msgSend_insertUIGraphicalAttachment_(textCopy, v23, v22, v24);
  if (optionsCopy)
  {
    v28 = objc_msgSend_whitespaceAfter(self, v25, v26, v27);

    if (v28)
    {
      v32 = objc_msgSend_whitespaceAfter(self, v29, v30, v31);
      objc_msgSend_takeText_(textCopy, v33, v32, v34);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTSpillOriginRefNode buildASTNodeArray:hostCell:symbolTable:]", *&cell, table);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSpillOriginRefNode.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 167, 0, "TSTSpillOriginRef should NOT be in a normal TSTFormula");

  v14 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[234], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2214C4BE0, off_2812E4498[234]);

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
  v8.super_class = TSTSpillOriginRefNode;
  [(TSTExpressionNode *)&v8 loadFromArchive:v6 unarchiver:unarchiver];
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  self->_spillOrigin = sub_2212697C0(v7);
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
  v12.super_class = TSTSpillOriginRefNode;
  [(TSTExpressionNode *)&v12 saveToArchive:v7 archiver:archiverCopy];
  spillOrigin = self->_spillOrigin;
  *(archive + 4) |= 2u;
  v9 = *(archive + 4);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v10);
    *(archive + 4) = v9;
  }

  sub_221269820(&spillOrigin, v9);
}

+ (id)spillRangeColor
{
  if (qword_27CFB5668 != -1)
  {
    sub_2216F7F60();
  }

  v3 = qword_27CFB5660;

  return v3;
}

@end