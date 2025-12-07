@interface TSCEUnknownFunctionFormulaNode
- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)name children:(id)children;
- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)name numArgs:(unsigned int)args;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEUnknownFunctionFormulaNode

- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)name numArgs:(unsigned int)args
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = TSCEUnknownFunctionFormulaNode;
  v10 = [(TSCEFormulaNode *)&v16 initWithNodeType:15];
  if (v10)
  {
    v11 = objc_msgSend_copy(nameCopy, v7, v8, v9);
    functionName = v10->_functionName;
    v10->_functionName = v11;

    v13 = objc_opt_new();
    children = v10->super._children;
    v10->super._children = v13;

    v10->_numArgs = args;
  }

  return v10;
}

- (TSCEUnknownFunctionFormulaNode)initWithFunctionName:(id)name children:(id)children
{
  nameCopy = name;
  childrenCopy = children;
  v23.receiver = self;
  v23.super_class = TSCEUnknownFunctionFormulaNode;
  v11 = [(TSCEFormulaNode *)&v23 initWithNodeType:15];
  if (v11)
  {
    v12 = objc_msgSend_copy(nameCopy, v8, v9, v10);
    functionName = v11->_functionName;
    v11->_functionName = v12;

    if (childrenCopy)
    {
      v17 = objc_msgSend_mutableCopy(childrenCopy, v14, v15, v16);
    }

    else
    {
      v17 = objc_opt_new();
    }

    children = v11->super._children;
    v11->super._children = v17;

    v11->_numArgs = objc_msgSend_count(v11->super._children, v19, v20, v21);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEUnknownFunctionFormulaNode;
  v4 = [(TSCEUnknownFunctionFormulaNode *)&v11 copy];
  v8 = objc_msgSend_copy(self->_functionName, v5, v6, v7);
  v9 = v4[6];
  v4[6] = v8;

  *(v4 + 14) = self->_numArgs;
  return v4;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  engineCopy = engine;
  v13 = objc_msgSend_children(self, v10, v11, v12);
  v20 = objc_msgSend_count(v13, v14, v15, v16);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(v13, v17, i, v19);
      objc_msgSend_appendToNodeArray_hostCellRef_symbolTable_calcEngine_(v22, v23, array, ref, table, engineCopy);
    }
  }

  functionName = self->_functionName;
  v26 = objc_msgSend_count(v13, v17, v18, v19);
  if (HIDWORD(v26))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCEUnknownFunctionFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", v27);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 906, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
    v26 = 0xFFFFFFFFLL;
  }

  TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(array, functionName, v26);
  v31 = objc_msgSend_whitespaceBefore(self, v28, v29, v30);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v31);

  v35 = objc_msgSend_whitespaceAfter(self, v32, v33, v34);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v35);
}

@end