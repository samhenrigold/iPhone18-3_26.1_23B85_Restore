@interface TSTVariableNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTVariableNode)initWithContext:(id)context identifier:(id)identifier symbol:(unsigned int)symbol firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)variableUsageErrorWithSymbolTable:(void *)table;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setIdentifier:(id)identifier;
@end

@implementation TSTVariableNode

- (TSTVariableNode)initWithContext:(id)context identifier:(id)identifier symbol:(unsigned int)symbol firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = TSTVariableNode;
  v14 = [(TSTExpressionNode *)&v17 initWithContext:context children:0 firstIndex:index lastIndex:lastIndex];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v15->_symbol = symbol;
  }

  return v15;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  objc_opt_class();
  v13 = TSUDynamicCast();
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTVariableNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 69, 0, "Unexpected object in initAsCopyOf:... expected TSTVariableNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v27.receiver = self;
  v27.super_class = TSTVariableNode;
  v24 = [(TSTExpressionNode *)&v27 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(v24 + 17, *(v13 + 136));
    *(v25 + 32) = *(v13 + 128);
  }

  return v25;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_storeStrong(&self->_identifier, identifier);
  v11 = objc_msgSend_tokenAttachment(self, v8, v9, v10);
  objc_msgSend_invalidate(v11, v12, v13, v14);
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  symbol = self->_symbol;
  objc_msgSend_recordExpression_data_(subexpressions, a2, self, symbol ^ 0x7000000, 1);
  v4 = symbol ^ 0x7000000;
  v5 = 1;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTVariableNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_symbol == nodeCopy->_symbol;
  }

  return v5;
}

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  mapCopy = map;
  v11 = TSCESymbolTable::lookup(symbolTable, self->_identifier, 0);
  v12 = [TSTVariableNode alloc];
  v16 = objc_msgSend_context(self, v13, v14, v15);
  identifier = self->_identifier;
  Index = objc_msgSend_firstIndex(self, v18, v19, v20);
  v25 = objc_msgSend_lastIndex(self, v22, v23, v24);
  Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v12, v26, v16, identifier, v11, Index, v25);

  v31 = objc_msgSend_whitespaceBefore(self, v28, v29, v30);
  objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v32, v31, v33);

  v37 = objc_msgSend_whitespaceAfter(self, v34, v35, v36);
  objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v38, v37, v39);

  if (Index_lastIndex)
  {
    objc_msgSend_setObject_forUncopiedKey_(mapCopy, v40, Index_lastIndex, self);
  }

  return Index_lastIndex;
}

- (id)variableUsageErrorWithSymbolTable:(void *)table
{
  tableCopy = table;
  v6 = objc_msgSend_identifier(self, a2, table, v3);
  LODWORD(tableCopy) = TSCESymbolTable::lookup(tableCopy, v6, 0);

  if (tableCopy)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v10 = objc_msgSend_syntaxError(TSCEError, v7, v8, v9);
  selfCopy = self;
  if (selfCopy)
  {
    v15 = selfCopy;
    v16 = selfCopy;
    while (1)
    {
      v17 = objc_msgSend_parentNode(v16, v12, v13, v14);
      isFunctionNode = objc_msgSend_isFunctionNode(v17, v18, v19, v20);

      if (isFunctionNode)
      {
        break;
      }

LABEL_15:
      v53 = objc_msgSend_parentNode(v16, v22, v23, v24);

      if (v53)
      {
        v54 = isFunctionNode;
      }

      else
      {
        v54 = 1;
      }

      v16 = v53;
      if (v54 == 1)
      {

        goto LABEL_20;
      }
    }

    objc_opt_class();
    v28 = objc_msgSend_parentNode(v16, v25, v26, v27);
    v29 = TSUDynamicCast();

    if (!v29)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTVariableNode variableUsageErrorWithSymbolTable:]", v32);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 178, 0, "expected a function node on the stack");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    }

    if (objc_msgSend_isLetFunction(v29, v30, v31, v32))
    {
      v45 = objc_msgSend_identifier(v15, v42, v43, v44);
      v47 = objc_msgSend_unboundVariableError_variableName_(TSCEError, v46, @"LET", v45);
    }

    else
    {
      if (!objc_msgSend_isLambdaFunction(v29, v42, v43, v44))
      {
        isFunctionNode = 0;
        goto LABEL_14;
      }

      v45 = objc_msgSend_identifier(v15, v48, v49, v50);
      v47 = objc_msgSend_unboundVariableError_variableName_(TSCEError, v51, @"LAMBDA", v45);
    }

    v52 = v47;

    isFunctionNode = 1;
    v10 = v52;
LABEL_14:

    goto LABEL_15;
  }

LABEL_20:

  return v10;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  v9 = objc_msgSend_children(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);

  if (v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTVariableNode insertFormulaText:printingOptions:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 200, 0, "NumberNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  if (optionsCopy)
  {
    v26 = objc_msgSend_whitespaceBefore(self, v14, v15, v16);

    if (v26)
    {
      v30 = objc_msgSend_whitespaceBefore(self, v27, v28, v29);
      objc_msgSend_takeText_(textCopy, v31, v30, v32);
    }
  }

  v33 = [TSTWPTokenAttachment alloc];
  v37 = objc_msgSend_context(self, v34, v35, v36);
  v39 = objc_msgSend_initWithContext_expressionNode_(v33, v38, v37, self);

  objc_msgSend_insertUIGraphicalAttachment_(textCopy, v40, v39, v41);
  if (optionsCopy)
  {
    v45 = objc_msgSend_whitespaceAfter(self, v42, v43, v44);

    if (v45)
    {
      v49 = objc_msgSend_whitespaceAfter(self, v46, v47, v48);
      objc_msgSend_takeText_(textCopy, v50, v49, v51);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v33 = objc_msgSend_children(self, a2, array, *&cell, table);
  v10 = objc_msgSend_count(v33, v7, v8, v9);

  if (v10)
  {
    v14 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTVariableNode buildASTNodeArray:hostCell:symbolTable:]", v13);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTVariableNode.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v34, v17, 228, 0, "VariableNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  TSCEASTVariableElement::appendVariableElement(array, self->_symbol, v12, v13);
  v25 = objc_msgSend_whitespaceBefore(self, v22, v23, v24);

  if (v25)
  {
    v35 = objc_msgSend_whitespaceBefore(self, v26, v27, v28);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v35);
  }

  v29 = objc_msgSend_whitespaceAfter(self, v26, v27, v28);

  if (v29)
  {
    v36 = objc_msgSend_whitespaceAfter(self, v30, v31, v32);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v36);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[232], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2211FFFCC, off_2812E4498[232]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v12.receiver = self;
  v12.super_class = TSTVariableNode;
  [(TSTExpressionNode *)&v12 loadFromArchive:v7 unarchiver:unarchiverCopy];
  if (*(archive + 16))
  {
    v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v9);
    identifier = self->_identifier;
    self->_identifier = v10;
  }

  self->_symbol = *(archive + 10);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 4) = v7;
  }

  v17.receiver = self;
  v17.super_class = TSTVariableNode;
  [(TSTExpressionNode *)&v17 saveToArchive:v7 archiver:archiverCopy];
  if (objc_msgSend_length(self->_identifier, v9, v10, v11))
  {
    v15 = objc_msgSend_tsp_protobufString(self->_identifier, v12, v13, v14);
    sub_2211FFE84(archive, v15);
  }

  symbol = self->_symbol;
  *(archive + 4) |= 4u;
  *(archive + 10) = symbol;
}

@end