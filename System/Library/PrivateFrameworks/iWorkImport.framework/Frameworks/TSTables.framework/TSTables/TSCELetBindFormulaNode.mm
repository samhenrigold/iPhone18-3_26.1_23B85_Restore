@interface TSCELetBindFormulaNode
- (TSCELetBindFormulaNode)initWithIdentifier:(id)identifier isContinued:(BOOL)continued;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCELetBindFormulaNode

- (TSCELetBindFormulaNode)initWithIdentifier:(id)identifier isContinued:(BOOL)continued
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = TSCELetBindFormulaNode;
  v10 = [(TSCEFormulaNode *)&v14 initWithNodeType:23];
  if (v10)
  {
    v11 = objc_msgSend_copy(identifierCopy, v7, v8, v9);
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_isContinued = continued;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCELetBindFormulaNode;
  v4 = [(TSCELetBindFormulaNode *)&v11 copy];
  v8 = objc_msgSend_copy(self->_identifier, v5, v6, v7);
  v9 = v4[6];
  v4[6] = v8;

  *(v4 + 56) = self->_isContinued;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  engineCopy = engine;
  v14 = objc_msgSend_children(self, v11, v12, v13);
  v42 = objc_msgSend_lastObject(v14, v15, v16, v17);
  if (objc_msgSend_count(v14, v18, v19, v20) < 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v14, v21, 0, v22);
  }

  v24 = self->_identifier;
  v26 = v24;
  if (v23)
  {
    v27 = v24 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  if (!v27)
  {
    objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v23, v25, array, ref, table, engineCopy);
    TSCESymbolTable::beginScope(table);
    v41 = engineCopy;
    Symbol = TSCESymbolTable::createSymbol(table, &v26->var0);
    TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v43, 0);
    TSCEASTLetBindElement::appendLetNodeHeader(array, v26, v43, Symbol, self->_isContinued);
    v44 = v43;
    sub_22107C2C0(&v44);
  }

  objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v42, v25, array, ref, table, engineCopy, v41);
  if ((v28 & 1) == 0)
  {
    TSCEASTLetBindElement::appendEndScopeNode(array, v30, v31, v32);
    TSCESymbolTable::endScope(table, v33, v34, v35);
  }

  v36 = objc_msgSend_whitespaceBefore(self, v30, v31, v32);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v36);

  v40 = objc_msgSend_whitespaceAfter(self, v37, v38, v39);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v40);
}

@end