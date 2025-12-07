@interface TSCECategoryRefFormulaNode
- (TSCECategoryRefFormulaNode)initWithCategoryRef:(id)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCECategoryRefFormulaNode

- (TSCECategoryRefFormulaNode)initWithCategoryRef:(id)ref
{
  refCopy = ref;
  v9.receiver = self;
  v9.super_class = TSCECategoryRefFormulaNode;
  v6 = [(TSCEFormulaNode *)&v9 initWithNodeType:19];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_categoryRef, ref);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCECategoryRefFormulaNode;
  v4 = [(TSCECategoryRefFormulaNode *)&v11 copy];
  v8 = objc_msgSend_copy(self->_categoryRef, v5, v6, v7);
  v9 = v4[6];
  v4[6] = v8;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTCategoryRefElement::appendCategoryRefElement(array, self->_categoryRef, array);
  v14 = objc_msgSend_whitespaceBefore(self, v8, v9, v10);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v14);

  v15 = objc_msgSend_whitespaceAfter(self, v11, v12, v13);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v15);
}

@end