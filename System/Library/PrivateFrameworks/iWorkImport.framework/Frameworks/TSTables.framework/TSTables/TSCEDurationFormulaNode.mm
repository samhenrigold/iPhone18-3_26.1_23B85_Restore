@interface TSCEDurationFormulaNode
- (TSCEDurationFormulaNode)initWithDuration:(TSCEDurationData *)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
- (void)dealloc;
- (void)setValue:(TSCEDurationData *)value;
@end

@implementation TSCEDurationFormulaNode

- (void)setValue:(TSCEDurationData *)value
{
  if (value)
  {
    value = self->_value;
    if (value)
    {
      MEMORY[0x223DA1450](value, 0x1000C40ABD28440);
    }

    operator new();
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDurationFormulaNode setValue:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 443, 0, "invalid nil value for '%{public}s'", "value");

  v14 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
}

- (TSCEDurationFormulaNode)initWithDuration:(TSCEDurationData *)duration
{
  if (!duration)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDurationFormulaNode initWithDuration:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 451, 0, "invalid nil value for '%{public}s'", "value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v20.receiver = self;
  v20.super_class = TSCEDurationFormulaNode;
  v15 = [(TSCEFormulaNode *)&v20 initWithNodeType:5];
  v18 = v15;
  if (v15)
  {
    v15->_value = 0;
    objc_msgSend_setValue_(v15, v16, duration, v17);
  }

  return v18;
}

- (void)dealloc
{
  value = self->_value;
  if (value)
  {
    MEMORY[0x223DA1450](value, 0x1000C40ABD28440);
  }

  self->_value = 0;
  v4.receiver = self;
  v4.super_class = TSCEDurationFormulaNode;
  [(TSCEDurationFormulaNode *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (!self->_value)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDurationFormulaNode copyWithZone:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 465, 0, "invalid nil value for '%{public}s'", "_value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v15.receiver = self;
  v15.super_class = TSCEDurationFormulaNode;
  [(TSCEDurationFormulaNode *)&v15 copy];
  operator new();
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  engineCopy = engine;
  value = self->_value;
  if (value)
  {
    TSCEASTDurationElement::appendDurationElement(array, value->var0, value->var1, &value->var2, v9);
    v14 = objc_msgSend_whitespaceBefore(self, v11, v12, v13);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v14);

    v18 = objc_msgSend_whitespaceAfter(self, v15, v16, v17);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v18);
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEDurationFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v9);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 479, 0, "invalid nil value for '%{public}s'", "durationData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }
}

@end