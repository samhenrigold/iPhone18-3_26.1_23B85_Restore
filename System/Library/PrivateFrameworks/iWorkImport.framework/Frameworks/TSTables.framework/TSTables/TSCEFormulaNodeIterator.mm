@interface TSCEFormulaNodeIterator
- (TSCEFormulaNodeIterator)initWithFormulaNodeTree:(id)tree rewriteContext:(TSCEFormulaRewriteContext *)context;
- (TSKUIDStruct)containingTableUID;
- (id).cxx_construct;
- (id)findReplacementNode:(id)node;
- (void)depthFirstIteration;
- (void)p_visitChildrenAndNodePostOrder:(id)order;
- (void)replaceNode:(id)node withNode:(id)withNode;
- (void)topDownIteration;
- (void)visitNode:(id)node;
@end

@implementation TSCEFormulaNodeIterator

- (TSCEFormulaNodeIterator)initWithFormulaNodeTree:(id)tree rewriteContext:(TSCEFormulaRewriteContext *)context
{
  treeCopy = tree;
  v11.receiver = self;
  v11.super_class = TSCEFormulaNodeIterator;
  v8 = [(TSCEFormulaNodeIterator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rewriteContext = context;
    objc_storeStrong(&v8->_formula, tree);
  }

  return v9;
}

- (TSKUIDStruct)containingTableUID
{
  v2 = TSCEFormulaRewriteContext::containingTableUID(self->_rewriteContext);
  result._upper = v3;
  result._lower = v2;
  return result;
}

- (void)p_visitChildrenAndNodePostOrder:(id)order
{
  v23 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  v8 = orderCopy;
  if (!self->_aborted)
  {
    objc_msgSend_children(orderCopy, v5, v6, v7);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v9 = v19 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
    if (v13)
    {
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v9);
          }

          objc_msgSend_p_visitChildrenAndNodePostOrder_(self, v11, *(*(&v18 + 1) + 8 * v15++), v12, v18);
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v18, v22, 16);
      }

      while (v13);
    }

    objc_msgSend_visitNode_(self, v16, v8, v17);
  }
}

- (void)replaceNode:(id)node withNode:(id)withNode
{
  nodeCopy = node;
  withNodeCopy = withNode;
  if (nodeCopy != withNodeCopy)
  {
    v8 = nodeCopy;
    v9 = withNodeCopy;
    *&v20 = v8;
    *(&v20 + 1) = v9;
    sub_2214D154C(&self->_replacedNodes.__begin_, &v20, v10, v11, v12, v13);

    v17 = objc_msgSend_root(self->_formula, v14, v15, v16);

    if (v17 == v8)
    {
      objc_msgSend_setRoot_(self->_formula, v18, v9, v19);
    }
  }
}

- (id)findReplacementNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (nodeCopy)
  {
    for (i = self->_replacedNodes.__begin_; i != self->_replacedNodes.__end_; i = (i + 16))
    {
      if (*i == nodeCopy)
      {
        v7 = *(i + 1);
        if (v7)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v7 = v5;
LABEL_8:

  return v7;
}

- (void)depthFirstIteration
{
  v7 = objc_msgSend_root(self->_formula, a2, v2, v3);
  objc_msgSend_p_visitChildrenAndNodePostOrder_(self, v5, v7, v6);
}

- (void)topDownIteration
{
  v4[25] = *MEMORY[0x277D85DE8];
  memset(v4, 0, 24);
  objc_msgSend_root(self->_formula, a2, v2, v3);
  objc_claimAutoreleasedReturnValue();
  v4[8] = v4;
  sub_22107C1F0(v4, 1uLL);
}

- (void)visitNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    if (!self->_aborted)
    {
      switch(objc_msgSend_nodeType(nodeCopy, v4, v5, v6))
      {
        case 0u:
          v9 = MEMORY[0x277D81150];
          v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaNodeIterator visitNode:]", v8);
          v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeIterator.mm", v12);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 138, 0, "Saw and invalid nodeType");
          goto LABEL_6;
        case 1u:
          objc_msgSend_numberNode_(self, v7, nodeCopy, v8);
          break;
        case 2u:
          objc_msgSend_BOOLeanNode_(self, v7, nodeCopy, v8);
          break;
        case 3u:
          objc_msgSend_stringNode_(self, v7, nodeCopy, v8);
          break;
        case 4u:
          objc_msgSend_dateNode_(self, v7, nodeCopy, v8);
          break;
        case 5u:
          objc_msgSend_durationNode_(self, v7, nodeCopy, v8);
          break;
        case 6u:
          objc_msgSend_emptyArgumentNode_(self, v7, nodeCopy, v8);
          break;
        case 7u:
          objc_msgSend_tokenNode_(self, v7, nodeCopy, v8);
          break;
        case 8u:
          v32 = nodeCopy;
          v36 = objc_msgSend_operatorNodeTag(v32, v33, v34, v35);
          v39 = v36;
          if ((v36 - 1) < 0xC)
          {
            objc_msgSend_binaryInfixOperatorNode_(self, v37, v32, v38);
            goto LABEL_48;
          }

          if (v36 <= 14)
          {
            if ((v36 - 13) < 2)
            {
              objc_msgSend_unaryOperatorNode_isPostfix_(self, v37, v32, 0);
              goto LABEL_48;
            }

            goto LABEL_49;
          }

          if (v36 == 15)
          {
LABEL_44:
            objc_msgSend_unaryOperatorNode_isPostfix_(self, v37, v32, 1);
            goto LABEL_48;
          }

          if (v36 != 69)
          {
            if (v36 == 70)
            {
              goto LABEL_44;
            }

LABEL_49:
            v40 = MEMORY[0x277D81150];
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSCEFormulaNodeIterator visitNode:]", v38);
            v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeIterator.mm", v43);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 198, 0, "Unhandled operator tag %d", v39);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
            goto LABEL_48;
          }

          objc_msgSend_intersectionOperatorNode_isPostfix_(self, v37, v32, 0);
LABEL_48:

          break;
        case 9u:
          objc_msgSend_arrayNode_(self, v7, nodeCopy, v8);
          break;
        case 0xAu:
          objc_msgSend_listNode_(self, v7, nodeCopy, v8);
          break;
        case 0xBu:
          v22 = nodeCopy;
          if ((objc_msgSend_relativeCellCoord(v22, v23, v24, v25) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
          {
            v29 = objc_msgSend_undoTractList(v22, v26, v27, v28);

            if (v29)
            {
              objc_msgSend_referenceErrorWithUidsNode_(self, v30, v22, v31);
            }

            else
            {
              objc_msgSend_referenceErrorNode_(self, v30, v22, v31);
            }
          }

          else
          {
            objc_msgSend_anyReferenceNode_(self, v26, v22, v28);
          }

          goto LABEL_48;
        case 0xCu:
          objc_msgSend_colonNode_(self, v7, nodeCopy, v8);
          break;
        case 0xDu:
          objc_msgSend_colonTractNode_(self, v7, nodeCopy, v8);
          break;
        case 0xEu:
          objc_msgSend_functionNode_(self, v7, nodeCopy, v8);
          break;
        case 0xFu:
          objc_msgSend_unknownFunctionNode_(self, v7, nodeCopy, v8);
          break;
        case 0x10u:
          objc_msgSend_combinedReferenceNode_(self, v7, nodeCopy, v8);
          break;
        case 0x11u:
          objc_msgSend_uidReferenceNode_(self, v7, nodeCopy, v8);
          break;
        case 0x12u:
          objc_msgSend_linkedRefNode_(self, v7, nodeCopy, v8);
          break;
        case 0x13u:
          objc_msgSend_categoryRefNode_(self, v7, nodeCopy, v8);
          break;
        case 0x14u:
          objc_msgSend_viewTractRefNode_(self, v7, nodeCopy, v8);
          break;
        case 0x15u:
          objc_msgSend_unboundIdentNode_(self, v7, nodeCopy, v8);
          break;
        case 0x16u:
          objc_msgSend_whitespaceNode_(self, v7, nodeCopy, v8);
          break;
        case 0x17u:
          objc_msgSend_letBindNode_(self, v7, nodeCopy, v8);
          break;
        case 0x18u:
          objc_msgSend_variableNode_(self, v7, nodeCopy, v8);
          break;
        case 0x19u:
          objc_msgSend_endScopeNode_(self, v7, nodeCopy, v8);
          break;
        case 0x1Au:
          objc_msgSend_lambdaNode_(self, v7, nodeCopy, v8);
          break;
        default:
          break;
      }
    }
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEFormulaNodeIterator visitNode:]", v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeIterator.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v18, v10, v13, 131, 0, "invalid nil value for '%{public}s'", "currentNode");
LABEL_6:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end