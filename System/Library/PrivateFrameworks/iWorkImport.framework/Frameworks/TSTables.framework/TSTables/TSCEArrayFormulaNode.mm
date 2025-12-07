@interface TSCEArrayFormulaNode
- (TSCEArrayFormulaNode)initWithNumColumns:(unsigned __int16)columns numRows:(unsigned __int16)rows;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEArrayFormulaNode

- (TSCEArrayFormulaNode)initWithNumColumns:(unsigned __int16)columns numRows:(unsigned __int16)rows
{
  v11.receiver = self;
  v11.super_class = TSCEArrayFormulaNode;
  v6 = [(TSCEFormulaNode *)&v11 initWithNodeType:9];
  v7 = v6;
  if (v6)
  {
    *(&v6->super._nodeType + 1) = columns;
    *(&v6->super._nodeType + 2) = rows;
    v8 = objc_opt_new();
    children = v7->super._children;
    v7->super._children = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEArrayFormulaNode;
  result = [(TSCEArrayFormulaNode *)&v5 copy];
  *(result + 21) = *(&self->super._nodeType + 1);
  *(result + 22) = *(&self->super._nodeType + 2);
  return result;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  v34 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  objc_msgSend_children(self, v11, v12, v13);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v14 = v30 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v29, v33, 16);
  if (v17)
  {
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(*(*(&v29 + 1) + 8 * v19++), v16, array, ref, table, engineCopy, v29);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v29, v33, 16);
    }

    while (v17);
  }

  TSCEASTArrayElement::appendArrayNode(array, *(&self->super._nodeType + 1), *(&self->super._nodeType + 2), v20);
  v24 = objc_msgSend_whitespaceBefore(self, v21, v22, v23);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v24);

  v28 = objc_msgSend_whitespaceAfter(self, v25, v26, v27);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v28);
}

@end