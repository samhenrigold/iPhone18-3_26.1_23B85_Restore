@interface TSCEFormulaNode
+ (id)BOOLeanNode:(BOOL)node;
+ (id)chartFunctionForArgs:(id)args;
+ (id)dateNode:(id)node;
+ (id)function:(unsigned __int16)function forArgs:(id)args;
+ (id)literalStringNode:(id)node;
+ (id)numberAsDoubleNode:(double)node;
+ (id)numberNode:(const TSUDecimal *)node;
- (TSCEFormulaNode)initWithNodeType:(unsigned __int8)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
@end

@implementation TSCEFormulaNode

- (TSCEFormulaNode)initWithNodeType:(unsigned __int8)type
{
  v8.receiver = self;
  v8.super_class = TSCEFormulaNode;
  v4 = [(TSCEFormulaNode *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_nodeType = type;
    children = v4->_children;
    v4->_children = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithNodeType_(v4, v5, self->_nodeType, v6);
  if (self->_children)
  {
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(self->_children, v12, v13, v14);
    v18 = objc_msgSend_initWithCapacity_(v11, v16, v15, v17);
    v19 = v10[1];
    v10[1] = v18;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = self->_children;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v40, v44, 16);
    if (v25)
    {
      v26 = *v41;
      do
      {
        v27 = 0;
        do
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v20);
          }

          v28 = v10[1];
          v29 = objc_msgSend_copy(*(*(&v40 + 1) + 8 * v27), v22, v23, v24, v40);
          objc_msgSend_addObject_(v28, v30, v29, v31);

          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v40, v44, 16);
      }

      while (v25);
    }
  }

  v32 = objc_msgSend_copy(self->_whitespaceBefore, v7, v8, v9, v40);
  v33 = v10[2];
  v10[2] = v32;

  v37 = objc_msgSend_copy(self->_whitespaceAfter, v34, v35, v36);
  v38 = v10[3];
  v10[3] = v37;

  return v10;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaNode appendToNodeArray:hostCellRef:symbolTable:calcEngine:]", ref, table, engine);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 139, 0, "Requires override for each derived type");

  v15 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v15, v12, v13, v14);
}

+ (id)numberNode:(const TSUDecimal *)node
{
  v4 = [TSCENumberFormulaNode alloc];
  v7 = objc_msgSend_initWithNumber_(v4, v5, node, v6);

  return v7;
}

+ (id)numberAsDoubleNode:(double)node
{
  TSUDecimal::operator=();
  v5 = objc_msgSend_numberNode_(TSCEFormulaNode, v3, &v7, v4);

  return v5;
}

+ (id)literalStringNode:(id)node
{
  nodeCopy = node;
  v4 = [TSCEStringFormulaNode alloc];
  v7 = objc_msgSend_initWithString_(v4, v5, nodeCopy, v6);

  return v7;
}

+ (id)dateNode:(id)node
{
  nodeCopy = node;
  v4 = [TSCEDateFormulaNode alloc];
  v6 = objc_msgSend_initWithDate_dateTimeFormat_(v4, v5, nodeCopy, 0);

  return v6;
}

+ (id)BOOLeanNode:(BOOL)node
{
  nodeCopy = node;
  v4 = [TSCEBooleanFormulaNode alloc];
  v7 = objc_msgSend_initWithBoolean_(v4, v5, nodeCopy, v6);

  return v7;
}

+ (id)function:(unsigned __int16)function forArgs:(id)args
{
  functionCopy = function;
  argsCopy = args;
  v6 = [TSCEFunctionFormulaNode alloc];
  v8 = objc_msgSend_initWithFunctionIndex_children_(v6, v7, functionCopy, argsCopy);

  return v8;
}

+ (id)chartFunctionForArgs:(id)args
{
  v3 = objc_msgSend_function_forArgs_(TSCEFormulaNode, a2, 175, args);

  return v3;
}

@end