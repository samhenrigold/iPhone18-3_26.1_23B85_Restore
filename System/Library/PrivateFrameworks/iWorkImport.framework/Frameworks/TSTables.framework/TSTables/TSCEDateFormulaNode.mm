@interface TSCEDateFormulaNode
- (TSCEDateFormulaNode)initWithDate:(id)date dateTimeFormat:(id)format;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEDateFormulaNode

- (TSCEDateFormulaNode)initWithDate:(id)date dateTimeFormat:(id)format
{
  dateCopy = date;
  formatCopy = format;
  v17.receiver = self;
  v17.super_class = TSCEDateFormulaNode;
  v9 = [(TSCEFormulaNode *)&v17 initWithNodeType:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, date);
    v14 = objc_msgSend_copy(formatCopy, v11, v12, v13);
    dateTimeFormat = v10->_dateTimeFormat;
    v10->_dateTimeFormat = v14;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEDateFormulaNode;
  v4 = [(TSCEDateFormulaNode *)&v11 copy];
  objc_storeStrong(v4 + 6, self->_value);
  v8 = objc_msgSend_copy(self->_dateTimeFormat, v5, v6, v7);
  v9 = v4[7];
  v4[7] = v8;

  *(v4 + 64) = self->_suppressDateFormat;
  *(v4 + 65) = self->_suppressTimeFormat;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTDateElement::appendDateElement(array, self->_value, self->_dateTimeFormat, 0, 0);
  v14 = objc_msgSend_whitespaceBefore(self, v8, v9, v10);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v14);

  v15 = objc_msgSend_whitespaceAfter(self, v11, v12, v13);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v15);
}

@end