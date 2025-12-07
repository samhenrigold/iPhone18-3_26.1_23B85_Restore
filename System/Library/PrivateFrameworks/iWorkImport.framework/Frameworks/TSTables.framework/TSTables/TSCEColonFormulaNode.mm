@interface TSCEColonFormulaNode
- (TSCEColonFormulaNode)initWithLeftArg:(id)arg rightArg:(id)rightArg undoTractList:(id)list;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEColonFormulaNode

- (TSCEColonFormulaNode)initWithLeftArg:(id)arg rightArg:(id)rightArg undoTractList:(id)list
{
  argCopy = arg;
  rightArgCopy = rightArg;
  listCopy = list;
  v17.receiver = self;
  v17.super_class = TSCEColonFormulaNode;
  v11 = [(TSCEFormulaNode *)&v17 initWithNodeType:12];
  if (v11)
  {
    v12 = objc_opt_new();
    children = v11->super._children;
    v11->super._children = v12;

    objc_storeStrong(&v11->_undoTractList, list);
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
  v11.receiver = self;
  v11.super_class = TSCEColonFormulaNode;
  v4 = [(TSCEColonFormulaNode *)&v11 copy];
  v8 = objc_msgSend_copy(self->_undoTractList, v5, v6, v7);
  v9 = v4[6];
  v4[6] = v8;

  return v4;
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

  TSCEASTColonElement::appendColonWithUidTractListElement(array, self->_undoTractList, v32);
}

@end