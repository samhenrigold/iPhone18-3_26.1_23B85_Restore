@interface TSCELambdaFormulaNode
- (TSCELambdaFormulaNode)initWithIdentifiers:(id)identifiers firstSymbol:(unsigned int)symbol;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCELambdaFormulaNode

- (TSCELambdaFormulaNode)initWithIdentifiers:(id)identifiers firstSymbol:(unsigned int)symbol
{
  identifiersCopy = identifiers;
  v17.receiver = self;
  v17.super_class = TSCELambdaFormulaNode;
  v7 = [(TSCEFormulaNode *)&v17 initWithNodeType:26];
  v11 = v7;
  if (v7)
  {
    v7->_firstSymbol = symbol;
    v12 = objc_msgSend_copy(identifiersCopy, v8, v9, v10);
    identifiers = v11->_identifiers;
    v11->_identifiers = v12;

    v14 = objc_opt_new();
    children = v11->super._children;
    v11->super._children = v14;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCELambdaFormulaNode;
  v4 = [(TSCELambdaFormulaNode *)&v11 copy];
  v4[14] = self->_firstSymbol;
  v8 = objc_msgSend_copy(self->_identifiers, v5, v6, v7);
  v9 = *(v4 + 6);
  *(v4 + 6) = v8;

  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  v30 = *MEMORY[0x277D85DE8];
  engine;
  v24 = objc_msgSend_children(self, v9, v10, v11);
  objc_msgSend_lastObject(v24, v12, v13, v14);
  objc_claimAutoreleasedReturnValue();
  TSCESymbolTable::beginScope(table);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_identifiers;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v25, v29, 16, 48, ref);
  if (v17)
  {
    v18 = 0;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v25 + 1) + 8 * v20);
        if (v21)
        {
          Symbol = TSCESymbolTable::createSymbol(table, v21);
          if (!v18)
          {
            self->_firstSymbol = Symbol;
            v18 = Symbol;
          }
        }

        ++v20;
      }

      while (v17 != v20);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v23, &v25, v29, 16);
    }

    while (v17);
  }

  __C(0);
}

@end