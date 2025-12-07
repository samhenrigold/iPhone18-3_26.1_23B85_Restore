@interface TSCEStringFormulaNode
- (TSCEStringFormulaNode)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEStringFormulaNode

- (TSCEStringFormulaNode)initWithString:(id)string
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = TSCEStringFormulaNode;
  v8 = [(TSCEFormulaNode *)&v12 initWithNodeType:3];
  if (v8)
  {
    v9 = objc_msgSend_copy(stringCopy, v5, v6, v7);
    value = v8->_value;
    v8->_value = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEStringFormulaNode;
  v4 = [(TSCEStringFormulaNode *)&v11 copy];
  v8 = objc_msgSend_copy(self->_value, v5, v6, v7);
  v9 = v4[6];
  v4[6] = v8;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTStringElement::appendStringElement(array, self->_value, &array->var0);
  v14 = objc_msgSend_whitespaceBefore(self, v8, v9, v10);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v14);

  v15 = objc_msgSend_whitespaceAfter(self, v11, v12, v13);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v15);
}

@end