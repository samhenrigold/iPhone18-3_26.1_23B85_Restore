@interface TSCEColonTractFormulaNode
- (TSCEColonTractFormulaNode)initWithColonTract:(id)tract refFlags:(const TSCEASTRefFlags *)flags colonTractFlags:(const TSCEASTColonTractFlags *)tractFlags undoTractList:(id)list;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEColonTractFormulaNode

- (TSCEColonTractFormulaNode)initWithColonTract:(id)tract refFlags:(const TSCEASTRefFlags *)flags colonTractFlags:(const TSCEASTColonTractFlags *)tractFlags undoTractList:(id)list
{
  tractCopy = tract;
  listCopy = list;
  v16.receiver = self;
  v16.super_class = TSCEColonTractFormulaNode;
  v13 = [(TSCEFormulaNode *)&v16 initWithNodeType:13];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_relativeTractRef, tract);
    objc_storeStrong(&v14->_undoTractList, list);
    v14->_refFlags = flags->_flags;
    v14->_colonTractFlags = tractFlags->_flags;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = TSCEColonTractFormulaNode;
  v4 = [(TSCEColonTractFormulaNode *)&v16 copy];
  v8 = objc_msgSend_copy(self->_relativeTractRef, v5, v6, v7);
  v9 = v4[6];
  v4[6] = v8;

  v13 = objc_msgSend_copy(self->_undoTractList, v10, v11, v12);
  v14 = v4[7];
  v4[7] = v13;

  *(v4 + 64) = self->_refFlags._flags;
  *(v4 + 65) = self->_colonTractFlags._flags;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  TSCEASTColonTractElement::appendColonTractElement(array, self->_relativeTractRef, self->_undoTractList, ref);
  v14 = objc_msgSend_whitespaceBefore(self, v8, v9, v10);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v14);

  v15 = objc_msgSend_whitespaceAfter(self, v11, v12, v13);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v15);
}

- (id).cxx_construct
{
  *(self + 64) = 0;
  *(self + 65) = 0;
  return self;
}

@end