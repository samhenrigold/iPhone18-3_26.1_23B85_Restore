@interface TSCEVariableFormulaNode
- (TSCEVariableFormulaNode)initWithSymbol:(unsigned int)symbol identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEVariableFormulaNode

- (TSCEVariableFormulaNode)initWithSymbol:(unsigned int)symbol identifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = TSCEVariableFormulaNode;
  v7 = [(TSCEFormulaNode *)&v15 initWithNodeType:24];
  v11 = v7;
  if (v7)
  {
    v7->_symbol = symbol;
    v12 = objc_msgSend_copy(identifierCopy, v8, v9, v10);
    identifier = v11->_identifier;
    v11->_identifier = v12;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEVariableFormulaNode;
  v4 = [(TSCEVariableFormulaNode *)&v11 copy];
  v4[14] = self->_symbol;
  v8 = objc_msgSend_copy(self->_identifier, v5, v6, v7);
  v9 = *(v4 + 6);
  *(v4 + 6) = v8;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTVariableElement::appendVariableElement(array, self->_symbol, array, ref);
  v14 = objc_msgSend_whitespaceBefore(self, v8, v9, v10);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v14);

  v15 = objc_msgSend_whitespaceAfter(self, v11, v12, v13);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v15);
}

@end