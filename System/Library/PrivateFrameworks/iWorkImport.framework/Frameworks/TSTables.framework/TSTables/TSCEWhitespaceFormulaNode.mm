@interface TSCEWhitespaceFormulaNode
- (TSCEWhitespaceFormulaNode)initWithTag:(unsigned __int8)tag whitespace:(id)whitespace child:(id)child;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEWhitespaceFormulaNode

- (TSCEWhitespaceFormulaNode)initWithTag:(unsigned __int8)tag whitespace:(id)whitespace child:(id)child
{
  whitespaceCopy = whitespace;
  childCopy = child;
  v18.receiver = self;
  v18.super_class = TSCEWhitespaceFormulaNode;
  v11 = [(TSCEFormulaNode *)&v18 initWithNodeType:22];
  v12 = v11;
  if (v11)
  {
    v11->_whitespaceTag = tag;
    objc_storeStrong(&v11->_whitespace, whitespace);
    v13 = objc_opt_new();
    children = v12->super._children;
    v12->super._children = v13;

    if (childCopy)
    {
      objc_msgSend_addObject_(v12->super._children, v15, childCopy, v16);
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEWhitespaceFormulaNode;
  v4 = [(TSCEWhitespaceFormulaNode *)&v11 copy];
  v4[56] = self->_whitespaceTag;
  v8 = objc_msgSend_copy(self->_whitespace, v5, v6, v7);
  v9 = *(v4 + 6);
  *(v4 + 6) = v8;

  return v4;
}

@end