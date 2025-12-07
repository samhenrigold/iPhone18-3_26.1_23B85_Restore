@interface TSCEOperatorFormulaNode
- (TSCEOperatorFormulaNode)initWithTag:(unsigned __int8)tag leftArg:(id)arg rightArg:(id)rightArg;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEOperatorFormulaNode

- (TSCEOperatorFormulaNode)initWithTag:(unsigned __int8)tag leftArg:(id)arg rightArg:(id)rightArg
{
  argCopy = arg;
  rightArgCopy = rightArg;
  v17.receiver = self;
  v17.super_class = TSCEOperatorFormulaNode;
  v10 = [(TSCEFormulaNode *)&v17 initWithNodeType:8];
  v11 = v10;
  if (v10)
  {
    *(&v10->super._nodeType + 1) = tag;
    v12 = objc_opt_new();
    children = v11->super._children;
    v11->super._children = v12;

    if (argCopy)
    {
      objc_msgSend_addObject_(v11->super._children, v14, argCopy, v15);
    }

    if (rightArgCopy)
    {
      objc_msgSend_addObject_(v11->super._children, v14, rightArgCopy, v15);
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEOperatorFormulaNode;
  result = [(TSCEOperatorFormulaNode *)&v5 copy];
  *(result + 41) = *(&self->super._nodeType + 1);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  engineCopy = engine;
  v13 = objc_msgSend_children(self, v10, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16))
  {
    v20 = objc_msgSend_objectAtIndex_(v13, v17, 0, v19);
    objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v20, v21, array, ref, table, engineCopy);
  }

  v22 = objc_msgSend_whitespaceBefore(self, v17, v18, v19);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v22);

  if (objc_msgSend_count(v13, v23, v24, v25) >= 2)
  {
    v29 = objc_msgSend_objectAtIndex_(v13, v26, 1, v28);
    objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v29, v30, array, ref, table, engineCopy);
  }

  v31 = objc_msgSend_whitespaceAfter(self, v26, v27, v28);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v31);

  TSCEASTTagOnlyElement::appendTagOnlyElement(array, *(&self->super._nodeType + 1), v32, v33);
}

@end