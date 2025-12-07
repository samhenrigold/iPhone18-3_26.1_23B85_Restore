@interface TSTFunctionEndNode
- (TSTFunctionEndNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTFunctionEndNode)initWithContext:(id)context functionNode:(id)node firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTFunctionNode)functionNode;
- (unint64_t)firstIndex;
- (unint64_t)lastIndex;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTFunctionEndNode

- (TSTFunctionEndNode)initWithContext:(id)context functionNode:(id)node firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  nodeCopy = node;
  v17.receiver = self;
  v17.super_class = TSTFunctionEndNode;
  v12 = [(TSTExpressionNode *)&v17 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_functionNode, nodeCopy);
    objc_msgSend_setFunctionEndNode_(nodeCopy, v14, v13, v15);
  }

  return v13;
}

- (TSTFunctionEndNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v7.receiver = self;
  v7.super_class = TSTFunctionEndNode;
  return [(TSTExpressionNode *)&v7 initWithContext:context children:children firstIndex:index lastIndex:lastIndex];
}

- (unint64_t)firstIndex
{
  v5 = objc_msgSend_functionNode(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    IndexOfSubtree = objc_msgSend_lastIndexOfSubtree(v5, v6, v7, v8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSTFunctionEndNode;
    IndexOfSubtree = [(TSTExpressionNode *)&v13 firstIndex];
  }

  v11 = IndexOfSubtree;

  return v11;
}

- (unint64_t)lastIndex
{
  v5 = objc_msgSend_functionNode(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    IndexOfSubtree = objc_msgSend_lastIndexOfSubtree(v5, v6, v7, v8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TSTFunctionEndNode;
    IndexOfSubtree = [(TSTExpressionNode *)&v13 lastIndex];
  }

  v11 = IndexOfSubtree;

  return v11;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFunctionEndNode insertFormulaText:printingOptions:]", *&options);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionEndNode.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 83, 0, "We shouldn't ever buildFormulaText: with a functionEndNode");

  v13 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFunctionEndNode buildASTNodeArray:hostCell:symbolTable:]", *&cell, table);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionEndNode.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 89, 0, "We shouldn't ever buildASTNodeArray: with a functionEndNode");

  v14 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[220], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22130B658, off_2812E4498[220]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v5 = *(archive + 3);
  }

  else
  {
    v5 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v6.receiver = self;
  v6.super_class = TSTFunctionEndNode;
  [(TSTExpressionNode *)&v6 loadFromArchive:v5 unarchiver:unarchiver];
  objc_storeWeak(&self->_functionNode, 0);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSTFunctionEndNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:archiverCopy];
}

- (TSTFunctionNode)functionNode
{
  WeakRetained = objc_loadWeakRetained(&self->_functionNode);

  return WeakRetained;
}

@end