@interface TSTExpressionNode
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExpressionNode:(id)node;
- (BOOL)isOptional;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTExpressionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTExpressionNode)parentNode;
- (TSTWPTokenAttachment)tokenAttachment;
- (_NSRange)range;
- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range;
- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range outStartingNode:(id *)node;
- (id)convertEmptyArgumentsToPlaceholders;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes children:(id)children;
- (id)deepCopyIntoContext:(id)context bakeModes:(BOOL)modes withTokenDict:(id)dict;
- (id)description;
- (id)exportString;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex;
- (id)transformToUseScopedVariables:(void *)variables;
- (id)variableUsageErrorWithSymbolTable:(void *)table;
- (int64_t)compareFirstLastIndices:(id)indices;
- (unint64_t)firstIndexOfSubtree;
- (unint64_t)indexInParent;
- (unint64_t)lastIndexOfSubtree;
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)clearAllChildren;
- (void)clearAndCollectAllChildren:(id)children;
- (void)enumerateExpressionNodesUsingBlock:(id)block;
- (void)fixStorageLanguage:(id)language;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)insertFormulaTextNonRecursive:(id)recursive printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)resetParentNodes;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setArgumentSpec:(id)spec;
- (void)setChildren:(id)children;
@end

@implementation TSTExpressionNode

- (TSTExpressionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  childrenCopy = children;
  v22.receiver = self;
  v22.super_class = TSTExpressionNode;
  v15 = [(TSTExpressionNode *)&v22 initWithContext:contextCopy];
  if (v15)
  {
    v16 = objc_msgSend_copy(childrenCopy, v12, v13, v14);
    children = v15->_children;
    v15->_children = v16;

    v15->_firstIndex = index;
    v15->_lastIndex = lastIndex;
    objc_msgSend_resetParentNodes(v15, v18, v19, v20);
  }

  return v15;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  v21.receiver = self;
  v21.super_class = TSTExpressionNode;
  v14 = [(TSTExpressionNode *)&v21 initWithContext:contextCopy];
  if (v14)
  {
    v15 = objc_msgSend_copy(childrenCopy, v11, v12, v13);
    children = v14->_children;
    v14->_children = v15;

    v14->_firstIndex = *(ofCopy + 12);
    v14->_lastIndex = *(ofCopy + 13);
    objc_storeStrong(&v14->_whitespaceBefore, *(ofCopy + 14));
    objc_storeStrong(&v14->_whitespaceAfter, *(ofCopy + 15));
    objc_storeStrong(&v14->_argumentSpec, *(ofCopy + 10));
    objc_msgSend_resetParentNodes(v14, v17, v18, v19);
  }

  return v14;
}

- (id)copyIntoContext:(id)context bakeModes:(BOOL)modes children:(id)children
{
  contextCopy = context;
  childrenCopy = children;
  v9 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initAsCopyOf_intoContext_children_(v9, v10, self, contextCopy, childrenCopy);

  return inited;
}

- (id)deepCopyIntoContext:(id)context bakeModes:(BOOL)modes withTokenDict:(id)dict
{
  modesCopy = modes;
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictCopy = dict;
  children = self->_children;
  v49 = contextCopy;
  if (children)
  {
    selfCopy = self;
    v48 = modesCopy;
    v14 = MEMORY[0x277CBEB18];
    v15 = objc_msgSend_count(children, v9, v10, v11);
    v18 = objc_msgSend_arrayWithCapacity_(v14, v16, v15, v17);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = self->_children;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v50, v54, 16);
    if (v23)
    {
      v24 = *v51;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v50 + 1) + 8 * i);
          v29 = objc_msgSend_tokenAttachment(v26, v20, v21, v22);
          if (v29)
          {
            v30 = objc_msgSend_objectForKey_(dictCopy, v27, v29, v28);
            v34 = v30;
            if (v30)
            {
              v35 = objc_msgSend_expressionNode(v30, v31, v32, v33);
            }

            else
            {
              v35 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v26, v31, v49, v48, dictCopy);
              v38 = [TSTWPTokenAttachment alloc];
              v34 = objc_msgSend_initWithContext_expressionNode_(v38, v39, v49, v35);
              objc_msgSend_setObject_forUncopiedKey_(dictCopy, v40, v34, v29);
            }

            objc_msgSend_addObject_(v18, v41, v35, v42);
          }

          else
          {
            v35 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v26, v27, v49, v48, dictCopy);
            objc_msgSend_addObject_(v18, v36, v35, v37);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v50, v54, 16);
      }

      while (v23);
    }

    v44 = objc_msgSend_copyIntoContext_bakeModes_children_(selfCopy, v43, v49, v48, v18);
  }

  else
  {
    v44 = objc_msgSend_copyIntoContext_bakeModes_children_(self, v9, contextCopy, modesCopy, 0);
  }

  return v44;
}

- (BOOL)isOptional
{
  argumentSpec = self->_argumentSpec;
  if (argumentSpec)
  {
    LOBYTE(argumentSpec) = objc_msgSend_isOptional(argumentSpec, a2, v2, v3);
  }

  return argumentSpec;
}

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  v71 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  tableCopy = table;
  mapCopy = map;
  if (!objc_msgSend_count(self->_children, v12, v13, v14))
  {
    v53 = objc_msgSend_context(self, v15, v16, v17);
    v52 = objc_msgSend_copyIntoContext_bakeModes_children_(self, v54, v53, 0, 0);

    goto LABEL_22;
  }

  if (self->_children)
  {
    v18 = objc_msgSend_forceReferenceInterpretationOfChildren(self, v15, v16, v17);
    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    v23 = objc_msgSend_count(self->_children, v20, v21, v22);
    v62 = objc_msgSend_initWithCapacity_(v19, v24, v23, v25);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v26 = self->_children;
    obj = v26;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v66, v70, 16);
    if (v29)
    {
      v30 = *v67;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v67 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(*(*(&v66 + 1) + 8 * i), v28, identifiersCopy, tableCopy, cell, v18, symbolTable, mapCopy);
          if (!v32)
          {

            v52 = 0;
            v55 = obj;
            goto LABEL_21;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = [TSTFunctionEndNode alloc];
            v39 = objc_msgSend_context(self, v36, v37, v38);
            Index = objc_msgSend_firstIndex(self, v40, v41, v42);
            v47 = objc_msgSend_lastIndex(self, v44, v45, v46);
            Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v35, v48, v39, v32, Index, v47);

            objc_msgSend_setFunctionEndNode_(v32, v50, Index_lastIndex, v51);
          }

          objc_msgSend_addObject_(v62, v33, v32, v34);
        }

        v26 = obj;
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v66, v70, 16);
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    if (!v62)
    {
      v52 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v62 = 0;
  }

  v56 = objc_msgSend_context(self, v15, v16, v17);
  v52 = objc_msgSend_copyIntoContext_bakeModes_children_(self, v57, v56, 0, v62);

  if (v52)
  {
    objc_msgSend_setObject_forUncopiedKey_(mapCopy, v58, v52, self);
  }

  v55 = v62;
LABEL_21:

LABEL_22:
  return v52;
}

- (id)convertEmptyArgumentsToPlaceholders
{
  v54 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_children, a2, v2, v3))
  {
    if (self->_children)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      v12 = objc_msgSend_count(self->_children, v9, v10, v11);
      v15 = objc_msgSend_initWithCapacity_(v8, v13, v12, v14);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v16 = self->_children;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v49, v53, 16);
      if (v21)
      {
        v22 = *v50;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v50 != v22)
            {
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v49 + 1) + 8 * i);
            v27 = objc_msgSend_convertEmptyArgumentsToPlaceholders(v24, v18, v19, v20, v49);
            if (v27 != v24)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = [TSTFunctionEndNode alloc];
                v32 = objc_msgSend_context(self, v29, v30, v31);
                Index = objc_msgSend_firstIndex(self, v33, v34, v35);
                v40 = objc_msgSend_lastIndex(self, v37, v38, v39);
                Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v28, v41, v32, v27, Index, v40);

                objc_msgSend_setFunctionEndNode_(v27, v43, Index_lastIndex, v44);
              }
            }

            objc_msgSend_addObject_(v15, v25, v27, v26);
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v49, v53, 16);
        }

        while (v21);
      }

      if (!v15)
      {
        selfCopy = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v15 = 0;
    }

    v46 = objc_msgSend_context(self, v5, v6, v7, v49);
    selfCopy = objc_msgSend_copyIntoContext_bakeModes_children_(self, v47, v46, 0, v15);
  }

  else
  {
    selfCopy = self;
  }

LABEL_18:

  return selfCopy;
}

- (id)variableUsageErrorWithSymbolTable:(void *)table
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_children;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = objc_msgSend_variableUsageErrorWithSymbolTable_(*(*(&v13 + 1) + 8 * v10), v6, table, v7, v13);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)transformToUseScopedVariables:(void *)variables
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_children;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v26, 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_msgSend_transformToUseScopedVariables_(v13, v6, variables, v7);
        if (v17 != v13)
        {
          if (!v10)
          {
            v10 = objc_msgSend_mutableCopy(self->_children, v14, v15, v16);
          }

          objc_msgSend_setObject_atIndexedSubscript_(v10, v14, v17, v9);
        }

        ++v9;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v22, v26, 16);
    }

    while (v8);

    if (v10)
    {
      objc_msgSend_setChildren_(self, v18, v10, v19);
    }
  }

  else
  {

    v10 = 0;
  }

  return self;
}

- (void)setArgumentSpec:(id)spec
{
  specCopy = spec;
  if (self->_argumentSpec != specCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_argumentSpec, spec);
  }
}

- (void)resetParentNodes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_children;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setParentNode_(*(*(&v10 + 1) + 8 * v9++), v5, self, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (unint64_t)indexInParent
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  if (!WeakRetained)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained(&self->_parentNode);
  v8 = objc_msgSend_children(v4, v5, v6, v7);

  v11 = objc_msgSend_indexOfObjectIdenticalTo_(v8, v9, self, v10);
  return v11;
}

- (void)setChildren:(id)children
{
  childrenCopy = children;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_storeStrong(&self->_children, children);
  objc_msgSend_resetParentNodes(self, v8, v9, v10);
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  v18 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_children;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_insertFormulaText_printingOptions_(*(*(&v13 + 1) + 8 * v12++), v9, textCopy, v4, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive printingOptions:(unsigned int)options
{
  v4 = *&options;
  recursiveCopy = recursive;
  v7 = objc_opt_new();
  objc_msgSend_setPrintingOptions_(v7, v8, v4, v9);
  v25[0] = self;
  v25[1] = 0;
  objc_msgSend_push_(v7, v10, v25, v11);

  while ((objc_msgSend_isEmpty(v7, v12, v13, v14) & 1) == 0)
  {
    v18 = objc_msgSend_top(v7, v15, v16, v17);
    v19 = *v18;
    v20 = *(v18 + 8);
    objc_msgSend_pop(v7, v21, v22, v23);
    objc_msgSend_insertFormulaTextNonRecursive_phase_deferredWorkStack_(v19, v24, recursiveCopy, v20, v7);
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v11 = objc_msgSend_printingOptions(stackCopy, v8, v9, v10);
  objc_msgSend_insertFormulaText_printingOptions_(self, v12, recursiveCopy, v11);
}

- (void)clearAndCollectAllChildren:(id)children
{
  childrenCopy = children;
  children = self->_children;
  if (children)
  {
    v9 = childrenCopy;
    objc_msgSend_addObjectsFromArray_(childrenCopy, v5, children, v6);
    v8 = self->_children;
    self->_children = 0;

    childrenCopy = v9;
  }
}

- (void)clearAllChildren
{
  if (objc_msgSend_count(self->_children, a2, v2, v3))
  {
    v19 = objc_opt_new();
    objc_msgSend_addObject_(v19, v5, self, v6);
    while (objc_msgSend_count(v19, v7, v8, v9))
    {
      v13 = objc_msgSend_lastObject(v19, v10, v11, v12);
      objc_msgSend_removeLastObject(v19, v14, v15, v16);
      objc_msgSend_clearAndCollectAllChildren_(v13, v17, v19, v18);
    }
  }
}

- (void)fixStorageLanguage:(id)language
{
  v33 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  if (objc_msgSend_firstIndex(self, v5, v6, v7) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_lastIndex(self, v8, v9, v10) != 0x7FFFFFFFFFFFFFFFLL)
  {
    Index = objc_msgSend_firstIndex(self, v8, v9, v10);
    v15 = objc_msgSend_lastIndex(self, v12, v13, v14);
    v19 = objc_msgSend_firstIndex(self, v16, v17, v18);
    objc_msgSend_setLanguage_forCharRange_undoTransaction_(languageCopy, v20, *MEMORY[0x277D81448], Index, v15 - v19 + 1, 0);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = objc_msgSend_children(self, v8, v9, v10, 0);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v28, v32, 16);
  if (v25)
  {
    v26 = *v29;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v21);
        }

        objc_msgSend_fixStorageLanguage_(*(*(&v28 + 1) + 8 * i), v23, languageCopy, v24);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v28, v32, 16);
    }

    while (v25);
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell
{
  v7 = objc_msgSend_context(self, a2, array, *&cell);
  v11 = objc_msgSend_objectLocale(v7, v8, v9, v10);
  TSCESymbolTable::TSCESymbolTable(&v13, v11);

  objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(self, v12, array, *&cell, &v13);
  p_undoSymbolTableMaps = &v13._undoSymbolTableMaps;
  sub_2210C8268(&p_undoSymbolTableMaps);
  sub_221087B80(&v13._identifierMap);
  sub_2210C82EC(&v13._symbolTableMap);
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_children;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(*(*(&v14 + 1) + 8 * v13++), v10, array, *&cell, table, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (id)exportString
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTExpressionNode exportString]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionNode.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 418, 0, "Children of TSTExpressionNode that is tokenized should implement exportString().");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return &stru_2834BADA0;
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0
{
  searchCopy = search;
  rangesCopy = ranges;
  contextCopy = context;
  v62 = *MEMORY[0x277D85DE8];
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  selfCopy = self;
  p_isa = &selfCopy->super.super.isa;
  v23 = selfCopy;
  if (storageCopy)
  {
    Index = objc_msgSend_firstIndex(selfCopy, v20, selfCopy, v21);
    v23 = p_isa;
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      v28 = objc_msgSend_firstIndex(p_isa, v25, v26, v27);
      v31 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v29, v28, v30);
      v32 = TSUDynamicCast();

      v36 = p_isa;
      if (v32)
      {
        v54 = v32;
        v37 = objc_msgSend_expressionNode(v32, v33, v34, v35);
        v38 = objc_opt_class();
        isMemberOfClass = objc_msgSend_isMemberOfClass_(v37, v39, v38, v40);

        v36 = p_isa;
        v32 = v54;
        if (isMemberOfClass)
        {
          v36 = objc_msgSend_expressionNode(v54, v42, v43, v44);

          v32 = v54;
        }
      }

      v23 = v36;
    }
  }

  v55 = v23;
  if ((objc_msgSend_containsObject_(nodesCopy, v20, v23, v21) & 1) == 0)
  {
    objc_msgSend_addObject_(nodesCopy, v45, v55, v46);
    if (searchCopy)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v47 = p_isa[8];
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v57, v61, 16);
      if (v50)
      {
        v51 = *v58;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v58 != v51)
            {
              objc_enumerationMutation(v47);
            }

            objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(*(*(&v57 + 1) + 8 * i), v49, setCopy, contextCopy, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
          }

          v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v57, v61, 16);
        }

        while (v50);
      }
    }
  }
}

- (void)enumerateExpressionNodesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_initWithObjects_(v5, v6, self, v7, 0);
  v26 = 0;
  do
  {
    if (!objc_msgSend_count(v11, v8, v9, v10))
    {
      break;
    }

    v14 = objc_msgSend_objectAtIndex_(v11, v12, 0, v13);
    objc_msgSend_removeObjectAtIndex_(v11, v15, 0, v16);
    v20 = objc_msgSend_children(v14, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23))
    {
      objc_msgSend_addObjectsFromArray_(v11, v24, v20, v25);
    }

    blockCopy[2](blockCopy, v14, &v26);
  }

  while ((v26 & 1) == 0);
}

- (int64_t)compareFirstLastIndices:(id)indices
{
  indicesCopy = indices;
  v8 = indicesCopy;
  if (self == indicesCopy)
  {
    v16 = 0;
    goto LABEL_8;
  }

  if (!indicesCopy)
  {
    goto LABEL_7;
  }

  Index = objc_msgSend_firstIndex(self, v5, v6, v7);
  if (Index >= objc_msgSend_firstIndex(v8, v10, v11, v12))
  {
    v17 = objc_msgSend_firstIndex(self, v13, v14, v15);
    if (v17 <= objc_msgSend_firstIndex(v8, v18, v19, v20))
    {
      v25 = objc_msgSend_lastIndex(self, v21, v22, v23);
      if (v25 >= objc_msgSend_lastIndex(v8, v26, v27, v28))
      {
        v32 = objc_msgSend_lastIndex(self, v29, v30, v31);
        v16 = v32 > objc_msgSend_lastIndex(v8, v33, v34, v35);
        goto LABEL_8;
      }

      goto LABEL_4;
    }

LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

LABEL_4:
  v16 = -1;
LABEL_8:

  return v16;
}

- (unint64_t)firstIndexOfSubtree
{
  Index = objc_msgSend_firstIndex(self, a2, v2, v3);
  v9 = objc_msgSend_children(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);

  if (!v13)
  {
    return Index;
  }

  v17 = objc_msgSend_children(self, v14, v15, v16);
  v21 = objc_msgSend_firstObject(v17, v18, v19, v20);
  IndexOfSubtree = objc_msgSend_firstIndexOfSubtree(v21, v22, v23, v24);

  if (Index >= IndexOfSubtree)
  {
    return IndexOfSubtree;
  }

  else
  {
    return Index;
  }
}

- (unint64_t)lastIndexOfSubtree
{
  Index = objc_msgSend_lastIndex(self, a2, v2, v3);
  v9 = objc_msgSend_children(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);

  if (!v13)
  {
    return Index;
  }

  v17 = objc_msgSend_children(self, v14, v15, v16);
  v21 = objc_msgSend_lastObject(v17, v18, v19, v20);
  IndexOfSubtree = objc_msgSend_lastIndexOfSubtree(v21, v22, v23, v24);

  if (Index <= IndexOfSubtree)
  {
    return IndexOfSubtree;
  }

  else
  {
    return Index;
  }
}

- (_NSRange)range
{
  IndexOfSubtree = objc_msgSend_firstIndexOfSubtree(self, a2, v2, v3);
  v9 = objc_msgSend_lastIndexOfSubtree(self, v6, v7, v8) - IndexOfSubtree + 1;
  v10 = IndexOfSubtree;
  result.length = v9;
  result.location = v10;
  return result;
}

- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range outStartingNode:(id *)node
{
  length = range.length;
  location = range.location;
  v8 = range.length + range.location - 1;
  v9 = objc_msgSend_mostSpecificNodeContainingIndex_correspondingIndex_(self, a2, range.location, v8);
  v11 = objc_msgSend_mostSpecificNodeContainingIndex_correspondingIndex_(self, v10, v8, location);
  objc_opt_class();
  v12 = TSUDynamicCast();
  objc_opt_class();
  v13 = TSUDynamicCast();
  v17 = v13;
  if (v9 == v11 && v12 | v13)
  {
    if (v12)
    {
      v18 = objc_msgSend_functionEndNode(v12, v14, v15, v16);

      if (v18)
      {
        v19 = objc_msgSend_functionEndNode(v12, v14, v15, v16);
        v20 = v11;
        v11 = v19;
LABEL_9:

        goto LABEL_10;
      }
    }

    if (v17)
    {
      v21 = objc_msgSend_functionNode(v17, v14, v15, v16);

      if (v21)
      {
        v22 = objc_msgSend_functionNode(v17, v14, v15, v16);
        v20 = v9;
        v9 = v22;
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  if (v9)
  {
    if (v11)
    {
      Index = objc_msgSend_firstIndex(v9, v14, v15, v16);
      if (Index <= objc_msgSend_lastIndex(v11, v24, v25, v26))
      {
        location = objc_msgSend_firstIndex(v9, v27, v28, v29);
        v33 = objc_msgSend_lastIndex(v11, v30, v31, v32);
        length = v33 - objc_msgSend_firstIndex(v9, v34, v35, v36) + 1;
        if (node)
        {
          v37 = v9;
          *node = v9;
        }
      }
    }
  }

  v38 = location;
  v39 = length;
  result.length = v39;
  result.location = v38;
  return result;
}

- (_NSRange)rangeEncompassingExpressionNodesInRange:(_NSRange)range
{
  v3 = MEMORY[0x2821F9670](self, sel_rangeEncompassingExpressionNodesInRange_outStartingNode_, range.location, range.length);
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_22124B558;
  v30 = sub_22124B568;
  v31 = 0;
  if (objc_msgSend_subtreeContainsIndex_(self, a2, index, correspondingIndex))
  {
    v10 = objc_msgSend_children(self, v7, v8, v9);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22124B570;
    v25[3] = &unk_278461E98;
    v25[5] = index;
    v25[6] = correspondingIndex;
    v25[4] = &v26;
    objc_msgSend_enumerateObjectsUsingBlock_(v10, v11, v25, v12);

    if (!v27[5])
    {
      objc_storeStrong(v27 + 5, self);
    }
  }

  objc_opt_class();
  v13 = TSUDynamicCast();
  v17 = v13;
  if (v13 && objc_msgSend_lastIndexOfSubtree(v13, v14, v15, v16) == index)
  {
    v21 = objc_msgSend_functionEndNode(v17, v18, v19, v20);
    v22 = v27[5];
    v27[5] = v21;
  }

  v23 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v23;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTExpressionNode recordHashesForSubexpressions:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTExpressionNode.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 884, 0, "subclasses must override recordHashesForSubexpressions so CSE works properly");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  v13 = 0;
  v14 = 0;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(self, v5, equalCopy, v6);
  }

  else
  {
    isEqualToExpressionNode = 0;
  }

  return isEqualToExpressionNode;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v29 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(nodeCopy, v6, v5, v7))
    {
      v11 = objc_msgSend_children(self, v8, v9, v10);
      v15 = objc_msgSend_count(v11, v12, v13, v14);

      v19 = objc_msgSend_children(nodeCopy, v16, v17, v18);
      if (v15 == objc_msgSend_count(v19, v20, v21, v22))
      {
        v28 = objc_msgSend_children(self, v23, v24, v25);
        if (v15)
        {
          v29 = 0;
          for (i = 0; i != v15; v29 = i >= v15)
          {
            v31 = objc_msgSend_objectAtIndex_(v28, v26, i, v27);
            v34 = objc_msgSend_objectAtIndex_(v19, v32, i, v33);
            isEqualToExpressionNode = objc_msgSend_isEqualToExpressionNode_(v31, v35, v34, v36);

            if ((isEqualToExpressionNode & 1) == 0)
            {
              break;
            }

            ++i;
          }
        }

        else
        {
          v29 = 1;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[198], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22124C164, off_2812E4498[198]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = unarchiverCopy;
  if (*(archive + 8))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22124BBB0;
    v16[3] = &unk_27845D8D8;
    v16[4] = self;
    v8 = unarchiverCopy;
    v9 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v8, v10, archive + 24, v9, 0, v16);
  }

  else
  {
    children = self->_children;
    self->_children = 0;
  }

  v15 = *(archive + 7);
  self->_firstIndex = *(archive + 6);
  self->_lastIndex = v15;
  objc_msgSend_resetParentNodes(self, v11, v12, v13);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  children = self->_children;
  if (children && objc_msgSend_count(children, v6, v7, v8))
  {
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v10, self->_children, archive + 24);
  }

  firstIndex = self->_firstIndex;
  lastIndex = self->_lastIndex;
  *(archive + 4) |= 3u;
  *(archive + 6) = firstIndex;
  *(archive + 7) = lastIndex;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_string(self, v6, v7, v8);
  v12 = objc_msgSend_stringWithFormat_(v3, v10, @"<%@ %p>: '%@'", v11, v5, self, v9);

  return v12;
}

- (TSTExpressionNode)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

- (TSTWPTokenAttachment)tokenAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_tokenAttachment);

  return WeakRetained;
}

@end