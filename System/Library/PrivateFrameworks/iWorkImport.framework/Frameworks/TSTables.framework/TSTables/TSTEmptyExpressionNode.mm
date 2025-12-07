@interface TSTEmptyExpressionNode
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTEmptyExpressionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)description;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTEmptyExpressionNode

- (TSTEmptyExpressionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  v7.receiver = self;
  v7.super_class = TSTEmptyExpressionNode;
  return [(TSTExpressionNode *)&v7 initWithContext:context children:children firstIndex:0x7FFFFFFFFFFFFFFFLL lastIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  objc_msgSend_recordExpression_data_(subexpressions, a2, self, 218103808, 1);
  v3 = 218103808;
  v4 = 1;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  if (optionsCopy)
  {
    v9 = objc_msgSend_whitespaceBefore(self, v6, v7, v8);

    if (v9)
    {
      v13 = objc_msgSend_whitespaceBefore(self, v10, v11, v12);
      objc_msgSend_takeText_(textCopy, v14, v13, v15);
    }

    v16 = objc_msgSend_whitespaceAfter(self, v10, v11, v12);

    if (v16)
    {
      v20 = objc_msgSend_whitespaceAfter(self, v17, v18, v19);
      objc_msgSend_takeText_(textCopy, v21, v20, v22);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  TSCEASTTagOnlyElement::appendTagOnlyElement(array, 23, array, *&cell);
  v10 = objc_msgSend_whitespaceBefore(self, v7, v8, v9);

  if (v10)
  {
    v18 = objc_msgSend_whitespaceBefore(self, v11, v12, v13);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v18);
  }

  v14 = objc_msgSend_whitespaceAfter(self, v11, v12, v13);

  if (v14)
  {
    v19 = objc_msgSend_whitespaceAfter(self, v15, v16, v17);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v19);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[230], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221380740, off_2812E4498[230]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 3))
  {
    v4 = *(archive + 3);
  }

  else
  {
    v4 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSTEmptyExpressionNode;
  [(TSTExpressionNode *)&v5 loadFromArchive:v4 unarchiver:unarchiver];
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
  v9.super_class = TSTEmptyExpressionNode;
  [(TSTExpressionNode *)&v9 saveToArchive:v7 archiver:archiverCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>", v7, v5, self);

  return v8;
}

@end