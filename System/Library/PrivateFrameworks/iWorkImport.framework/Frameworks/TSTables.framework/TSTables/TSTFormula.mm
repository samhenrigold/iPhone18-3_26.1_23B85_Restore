@interface TSTFormula
+ (BOOL)storageExceedsMaxFormulaLength:(id)length;
+ (id)doubleQuoteCharacters;
+ (id)formulaForCell:(id)cell atCellID:(TSUViewCellCoord)d inTable:(id)table;
+ (id)leadingSingleQuoteEscapeCharacters;
+ (id)leftParenCharacters;
+ (id)p_charactersToTemporarilyChopOffEndToFixSyntaxError;
+ (id)rightParenCharacters;
+ (id)singleQuoteCharacters;
+ (int)formulaQuoteContextAtCharIndex:(unint64_t)index inStorage:(id)storage;
+ (int)quoteContextAtCharIndex:(unint64_t)index previousContext:(int)context inStorage:(id)storage;
+ (unint64_t)parenCountAtCharIndex:(unint64_t)index inStorage:(id)storage;
+ (unint64_t)parenCountAtCharIndex:(unint64_t)index unmatchedParenCount:(unint64_t)count quoteContext:(int)context inStorage:(id)storage;
- (BOOL)hasBareArgumentPlaceholders;
- (TSCECalculationEngine)calculationEngine;
- (TSCEFormulaObject)formula;
- (TSTFormula)initWithCalculationEngine:(id)engine expressionTree:(id)tree baseHostCell:(TSUModelCellCoord)cell hostTable:(id)table;
- (TSTFormula)initWithCalculationEngine:(id)engine viewHostCell:(TSUViewCellCoord)cell hostTable:(id)table;
- (TSTFormula)initWithContext:(id)context calculationEngine:(id)engine baseHostCell:(TSUModelCellCoord)cell formula:(id)formula ownerUID:(const TSKUIDStruct *)d suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTFormula)initWithContext:(id)context calculationEngine:(id)engine viewHostCell:(TSUViewCellCoord)cell formula:(id)formula ownerUID:(const TSKUIDStruct *)d suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)nodesToCheckForBareArgumentPlaceholders;
- (id)p_fixFormula:(id)formula;
- (id)p_formulaAsTextReturningTokenValues:(BOOL)values;
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges calcEngine:(id)engine allVisitedNodes:(id)nodes;
- (void)dealloc;
- (void)fixPreserveFlagsForCategoryRefInNode:(id)node;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)insertFormulaTextNonRecursive:(id)recursive printingOptions:(unsigned int)options;
- (void)reparseWithStorage:(id)storage adjustExpressionTree:(id)tree;
- (void)reset;
@end

@implementation TSTFormula

+ (id)formulaForCell:(id)cell atCellID:(TSUViewCellCoord)d inTable:(id)table
{
  cellCopy = cell;
  tableCopy = table;
  if (objc_msgSend_hasFormula(cellCopy, v9, v10, v11))
  {
    v15 = objc_msgSend_context(tableCopy, v12, v13, v14);
    v19 = objc_msgSend_calcEngine(tableCopy, v16, v17, v18);
    v23 = objc_msgSend_formulaObject(cellCopy, v20, v21, v22);
    v24 = [TSTFormula alloc];
    v31[0] = objc_msgSend_tableUID(tableCopy, v25, v26, v27);
    v31[1] = v28;
    v29 = objc_msgSend_initWithContext_calculationEngine_viewHostCell_formula_ownerUID_(v24, v28, v15, v19, d, v23, v31);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (BOOL)storageExceedsMaxFormulaLength:(id)length
{
  lengthCopy = length;
  v7 = lengthCopy;
  if (lengthCopy)
  {
    v8 = objc_msgSend_length(lengthCopy, v4, v5, v6) > 0x2000;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSTFormula)initWithCalculationEngine:(id)engine expressionTree:(id)tree baseHostCell:(TSUModelCellCoord)cell hostTable:(id)table
{
  engineCopy = engine;
  treeCopy = tree;
  tableCopy = table;
  v16.receiver = self;
  v16.super_class = TSTFormula;
  v13 = [(TSTFormula *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_expressionTree, tree);
    objc_storeWeak(&v14->_calculationEngine, engineCopy);
    objc_storeWeak(&v14->_hostInfo, tableCopy);
    v14->_hostCell = cell;
    v14->_fixupFormulas = 1;
    v14->_empty = treeCopy == 0;
  }

  return v14;
}

- (TSTFormula)initWithContext:(id)context calculationEngine:(id)engine viewHostCell:(TSUViewCellCoord)cell formula:(id)formula ownerUID:(const TSKUIDStruct *)d suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  contextCopy = context;
  engineCopy = engine;
  formulaCopy = formula;
  v18 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v17, d->_lower, d->_upper, engineCopy);
  v22 = objc_msgSend_translator(v18, v19, v20, v21);
  v25 = objc_msgSend_baseCellCoordForViewCellCoord_(v22, v23, *&cell, v24);

  v27 = objc_msgSend_initWithContext_calculationEngine_baseHostCell_formula_ownerUID_suppressAutomaticNamedReferenceInvalidation_(self, v26, contextCopy, engineCopy, v25, formulaCopy, d, invalidationCopy);
  return v27;
}

- (TSTFormula)initWithContext:(id)context calculationEngine:(id)engine baseHostCell:(TSUModelCellCoord)cell formula:(id)formula ownerUID:(const TSKUIDStruct *)d suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  contextCopy = context;
  engineCopy = engine;
  formulaCopy = formula;
  v29.coordinate = cell._coord;
  v29._tableUID = *d;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v30, engineCopy, &v29);
  if ((objc_msgSend_translationFlags(formulaCopy, v17, v18, v19) & 0x40) != 0)
  {
    v27 = objc_msgSend_copyByConvertingColonToColonTract_(formulaCopy, v20, &v30, v21);
    v23 = TSTExpressionTreeCreator::expressionTreeFromFormula(v27, &v30, contextCopy, invalidationCopy);

    if (v23)
    {
      goto LABEL_3;
    }

LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  v23 = TSTExpressionTreeCreator::expressionTreeFromFormula(formulaCopy, &v30, contextCopy, invalidationCopy);
  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v22, d->_lower, d->_upper, engineCopy);
  self = objc_msgSend_initWithCalculationEngine_expressionTree_baseHostCell_hostTable_(self, v25, engineCopy, v23, cell, v24);

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (TSTFormula)initWithCalculationEngine:(id)engine viewHostCell:(TSUViewCellCoord)cell hostTable:(id)table
{
  engineCopy = engine;
  tableCopy = table;
  v13 = objc_msgSend_translator(tableCopy, v10, v11, v12);
  v16 = objc_msgSend_baseCellCoordForViewCellCoord_(v13, v14, *&cell, v15);

  v18 = objc_msgSend_initWithCalculationEngine_baseHostCell_hostTable_(self, v17, engineCopy, v16, tableCopy);
  return v18;
}

- (void)dealloc
{
  objc_msgSend_clearAllChildren(self->_expressionTree, a2, v2, v3);
  expressionTree = self->_expressionTree;
  self->_expressionTree = 0;

  v6.receiver = self;
  v6.super_class = TSTFormula;
  [(TSTFormula *)&v6 dealloc];
}

- (void)reset
{
  objc_msgSend_clearAllChildren(self->_expressionTree, a2, v2, v3);
  objc_msgSend_setExpressionTree_(self, v5, 0, v6);
  objc_msgSend_setInitialWhitespace_(self, v7, 0, v8);
  objc_msgSend_setIsSyntaxError_(self, v9, 0, v10);

  objc_msgSend_setEmpty_(self, v11, 0, v12);
}

- (TSCEFormulaObject)formula
{
  v5 = objc_msgSend_geometricFormula(self, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_hostInfo);
  v10 = objc_msgSend_calculationEngine(self, v7, v8, v9);
  v19.coordinate = self->_hostCell;
  v19._tableUID._lower = objc_msgSend_tableUID(WeakRetained, v11, v12, v13);
  v19._tableUID._upper = v14;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v20, v10, &v19);

  TSCEFormulaRewriteContext::setPreserveHostCell(&v20, 1);
  v17 = objc_msgSend_copyByRewritingReferencesToUidForm_(v5, v15, &v20, v16);

  return v17;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  v4 = *&options;
  textCopy = text;
  if (v4)
  {
    initialWhitespace = self->_initialWhitespace;
    if (initialWhitespace)
    {
      objc_msgSend_takeText_(textCopy, v6, initialWhitespace, v7);
    }
  }

  objc_msgSend_insertFormulaText_printingOptions_(self->_expressionTree, v6, textCopy, v4);
}

- (void)insertFormulaTextNonRecursive:(id)recursive printingOptions:(unsigned int)options
{
  v4 = *&options;
  recursiveCopy = recursive;
  if (v4)
  {
    initialWhitespace = self->_initialWhitespace;
    if (initialWhitespace)
    {
      objc_msgSend_takeText_(recursiveCopy, v6, initialWhitespace, v7);
    }
  }

  objc_msgSend_insertFormulaTextNonRecursive_printingOptions_(self->_expressionTree, v6, recursiveCopy, v4);
}

- (BOOL)hasBareArgumentPlaceholders
{
  v4 = objc_msgSend_nodesToCheckForBareArgumentPlaceholders(self, a2, v2, v3);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_initWithArray_(v8, v9, v4, v10);
    v14 = objc_msgSend_objectAtIndex_(v11, v12, 0, v13);
    objc_msgSend_removeObjectAtIndex_(v11, v15, 0, v16);
    do
    {
      v20 = objc_msgSend_tokenType(v14, v17, v18, v19);
      v24 = v20 == 3;
      if (v20 == 3)
      {
        break;
      }

      if (objc_msgSend_tokenType(v14, v21, v22, v23) != 1)
      {
        v28 = objc_msgSend_children(v14, v25, v26, v27);
        v32 = objc_msgSend_count(v28, v29, v30, v31);

        if (v32)
        {
          v33 = objc_msgSend_children(v14, v25, v26, v27);
          objc_msgSend_addObjectsFromArray_(v11, v34, v33, v35);
        }
      }

      if (!objc_msgSend_count(v11, v25, v26, v27))
      {
        break;
      }

      v38 = objc_msgSend_objectAtIndex_(v11, v36, 0, v37);

      objc_msgSend_removeObjectAtIndex_(v11, v39, 0, v40);
      v14 = v38;
    }

    while (v38);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)nodesToCheckForBareArgumentPlaceholders
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_expressionTree)
  {
    v4[0] = self->_expressionTree;
    v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)fixPreserveFlagsForCategoryRefInNode:(id)node
{
  nodeCopy = node;
  if (objc_msgSend_isCategoryRef(nodeCopy, v5, v6, v7))
  {
    hostCell = self->_hostCell;
    if (hostCell._coord.row != 0x7FFFFFFF && (*&hostCell & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v13 = objc_msgSend_categoryRef(nodeCopy, v8, v9, v10);
      v17 = objc_msgSend_absoluteGroupUid(v13, v14, v15, v16);
      v19 = v18;
      v22 = objc_msgSend_relativeGroupUid(v13, v18, v20, v21);
      if (!(v17 | v19))
      {
        goto LABEL_18;
      }

      if (v22)
      {
        goto LABEL_18;
      }

      if (v23)
      {
        goto LABEL_18;
      }

      WeakRetained = objc_loadWeakRetained(&self->_hostInfo);

      if (!WeakRetained)
      {
        goto LABEL_18;
      }

      v25 = objc_loadWeakRetained(&self->_hostInfo);
      v29 = objc_msgSend_groupBy(v25, v26, v27, v28);

      v33 = objc_msgSend_groupByUid(v29, v30, v31, v32);
      v35 = v34;
      if (v33 == objc_msgSend_groupByUid(v13, v34, v36, v37) && v35 == v38)
      {
        v39 = objc_loadWeakRetained(&self->_hostInfo);
        v43 = objc_msgSend_translator(v39, v40, v41, v42);
        v71 = objc_msgSend_rowUIDForBaseRowIndex_(v43, v44, self->_hostCell._coord.row, v45);
        v72 = v46;

        v47 = objc_loadWeakRetained(&self->_hostInfo);
        v70[0] = objc_msgSend_tableUID(v47, v48, v49, v50);
        v70[1] = v51;
        v52 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v29, v51, v13, &v71, v70);
        objc_msgSend_setCategoryRef_(nodeCopy, v53, v52, v54);
      }

      else
      {
        v47 = objc_loadWeakRetained(&self->_hostInfo);
        v58 = objc_msgSend_tableUID(v47, v55, v56, v57);
        if (v58 | v59)
        {
          v62 = objc_msgSend_refersToPivotTable(v13, v59, v60, v61);

          if ((v62 & 1) == 0)
          {
            v71 = objc_msgSend_absoluteGroupUid(v13, v63, v64, v65);
            v72 = v66;
            objc_msgSend_setAsAbsoluteWithGroupUid_(v13, v66, &v71, v67);
            objc_msgSend_setCategoryRef_(nodeCopy, v68, v13, v69);
          }

          goto LABEL_17;
        }
      }

LABEL_17:
LABEL_18:
    }
  }
}

- (void)reparseWithStorage:(id)storage adjustExpressionTree:(id)tree
{
  storageCopy = storage;
  treeCopy = tree;
  v8 = objc_opt_class();
  if (objc_msgSend_storageExceedsMaxFormulaLength_(v8, v9, storageCopy, v10))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFormula reparseWithStorage:adjustExpressionTree:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 321, 0, "Formula storage exceeds maximum length.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  syntaxError = self->_syntaxError;
  self->_syntaxError = 0;

  self->_isSyntaxError = 0;
  *&self->_formulaWasFixable = 0;
  if (!storageCopy)
  {
    self->_empty = 1;
    goto LABEL_10;
  }

  v26 = objc_msgSend_length(storageCopy, v23, v24, v25);
  self->_empty = v26 == 0;
  if (!v26)
  {
LABEL_10:
    expressionTree = self->_expressionTree;
    self->_expressionTree = 0;

    initialWhitespace = self->_initialWhitespace;
    self->_initialWhitespace = 0;

    goto LABEL_22;
  }

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  TSTParser::TSTParser(v42, WeakRetained, storageCopy, 0);

  v28 = objc_loadWeakRetained(&self->_hostInfo);
  v29 = TSTParser::parse(v42, v28, &self->_hostCell);

  if (!v29)
  {
    objc_storeStrong(&self->_syntaxError, obj);
    self->_isSyntaxError = 1;
    if (self->_fixupFormulas)
    {
      v29 = objc_msgSend_p_fixFormula_(self, v36, storageCopy, v37);
      if (!treeCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v29 = 0;
      if (!treeCopy)
      {
        goto LABEL_15;
      }
    }

LABEL_7:
    v33 = treeCopy[2](treeCopy, v29);

    if (!v33)
    {
      self->_isSyntaxError = 1;
      *&self->_formulaWasFixable = 0;
    }

    goto LABEL_16;
  }

  v30 = self->_syntaxError;
  self->_syntaxError = 0;

  objc_msgSend_setInitialWhitespace_(self, v31, v44, v32);
  if (treeCopy)
  {
    goto LABEL_7;
  }

LABEL_15:
  v33 = v29;
LABEL_16:
  if (!self->_isSyntaxError || self->_formulaWasFixable)
  {
    objc_storeStrong(&self->_expressionTree, v33);
    v38 = self->_syntaxError;
    self->_syntaxError = 0;
  }

  objc_opt_class();
  v41 = TSUDynamicCast();
  if (v41)
  {
    objc_msgSend_fixPreserveFlagsForCategoryRefInNode_(self, v39, v41, v40);
  }

  TSTParser::~TSTParser(v42);
LABEL_22:
}

+ (id)singleQuoteCharacters
{
  if (qword_27CFB52F0 != -1)
  {
    sub_2216F74AC();
  }

  v3 = qword_27CFB52E8;

  return v3;
}

+ (id)leadingSingleQuoteEscapeCharacters
{
  if (qword_27CFB5300 != -1)
  {
    sub_2216F74C0();
  }

  v3 = qword_27CFB52F8;

  return v3;
}

+ (id)doubleQuoteCharacters
{
  if (qword_27CFB5310 != -1)
  {
    sub_2216F74D4();
  }

  v3 = qword_27CFB5308;

  return v3;
}

+ (id)leftParenCharacters
{
  if (qword_27CFB5320 != -1)
  {
    sub_2216F74E8();
  }

  v3 = qword_27CFB5318;

  return v3;
}

+ (id)rightParenCharacters
{
  if (qword_27CFB5330 != -1)
  {
    sub_2216F74FC();
  }

  v3 = qword_27CFB5328;

  return v3;
}

+ (int)quoteContextAtCharIndex:(unint64_t)index previousContext:(int)context inStorage:(id)storage
{
  storageCopy = storage;
  v8 = objc_opt_class();
  v12 = objc_msgSend_singleQuoteCharacters(v8, v9, v10, v11);
  v13 = objc_opt_class();
  v17 = objc_msgSend_doubleQuoteCharacters(v13, v14, v15, v16);
  v20 = objc_msgSend_characterAtIndex_(storageCopy, v18, index, v19);
  if (objc_msgSend_characterIsMember_(v12, v21, v20, v22))
  {
    if (context <= 1)
    {
      contextCopy = 1;
    }

    else
    {
      contextCopy = context;
    }

    if (context == 1)
    {
      context = 0;
    }

    else
    {
      context = contextCopy;
    }
  }

  else if (objc_msgSend_characterIsMember_(v17, v23, v20, v24))
  {
    if (context == 2)
    {
      context = 0;
    }

    else if (!context)
    {
      context = 2;
    }
  }

  return context;
}

+ (int)formulaQuoteContextAtCharIndex:(unint64_t)index inStorage:(id)storage
{
  storageCopy = storage;
  v11 = objc_msgSend_range(storageCopy, v6, v7, v8);
  v12 = v9;
  v13 = &v9[v11];
  if (v11 > index || v13 < index)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSTFormula formulaQuoteContextAtCharIndex:inStorage:]", v10);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v17);
    v29.location = v11;
    v29.length = v12;
    v19 = NSStringFromRange(v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v18, 472, 0, "charIndex %lu not within storage range %@", index, v19);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  if (v13 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v13;
  }

  if (v11 >= indexCopy)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = objc_opt_class();
      v25 = objc_msgSend_quoteContextAtCharIndex_previousContext_inStorage_(v26, v27, v11++, v25, storageCopy);
    }

    while (indexCopy != v11);
  }

  return v25;
}

+ (unint64_t)parenCountAtCharIndex:(unint64_t)index inStorage:(id)storage
{
  storageCopy = storage;
  v6 = 0;
  if (index)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = objc_opt_class();
      v7 = objc_msgSend_quoteContextAtCharIndex_previousContext_inStorage_(v9, v10, v8, v7, storageCopy);
      v6 = objc_msgSend_parenCountAtCharIndex_unmatchedParenCount_quoteContext_inStorage_(TSTFormula, v11, v8++, v6, v7, storageCopy);
    }

    while (index != v8);
  }

  return v6;
}

+ (unint64_t)parenCountAtCharIndex:(unint64_t)index unmatchedParenCount:(unint64_t)count quoteContext:(int)context inStorage:(id)storage
{
  storageCopy = storage;
  v10 = objc_opt_class();
  v14 = objc_msgSend_leftParenCharacters(v10, v11, v12, v13);
  v15 = objc_opt_class();
  v19 = objc_msgSend_rightParenCharacters(v15, v16, v17, v18);
  v22 = objc_msgSend_characterAtIndex_(storageCopy, v20, index, v21);
  if (objc_msgSend_characterIsMember_(v14, v23, v22, v24))
  {
    if (!context)
    {
      ++count;
    }
  }

  else if (objc_msgSend_characterIsMember_(v19, v25, v22, v26))
  {
    if (count)
    {
      v27 = context == 0;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    count -= v28;
  }

  else if (v22 == 65532)
  {
    objc_opt_class();
    v31 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v29, index, v30);
    v32 = TSUDynamicCast();

    if (v32)
    {
      v36 = objc_msgSend_expressionNode(v32, v33, v34, v35);
      v40 = objc_msgSend_tokenType(v36, v37, v38, v39);

      if (v40 == 1)
      {
        ++count;
      }

      else
      {
        if (count)
        {
          v41 = v40 == 2;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;
        count -= v42;
      }
    }
  }

  return count;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = objc_msgSend_expressionTree(self, a2, zone, v3);
  v10 = objc_msgSend_expressionTree(self, v7, v8, v9);
  v14 = objc_msgSend_context(v10, v11, v12, v13);
  v15 = objc_alloc_init(MEMORY[0x277D812B8]);
  v17 = objc_msgSend_deepCopyIntoContext_bakeModes_withTokenDict_(v6, v16, v14, 1, v15);

  v18 = objc_opt_class();
  v21 = objc_msgSend_allocWithZone_(v18, v19, zone, v20);
  v25 = objc_msgSend_calculationEngine(self, v22, v23, v24);
  hostCell = self->_hostCell;
  WeakRetained = objc_loadWeakRetained(&self->_hostInfo);
  v29 = objc_msgSend_initWithCalculationEngine_expressionTree_baseHostCell_hostTable_(v21, v28, v25, v17, hostCell, WeakRetained);

  return v29;
}

+ (id)p_charactersToTemporarilyChopOffEndToFixSyntaxError
{
  if (qword_27CFB5340 != -1)
  {
    sub_2216F7510();
  }

  v3 = qword_27CFB5338;

  return v3;
}

- (id)p_fixFormula:(id)formula
{
  formulaCopy = formula;
  v7 = objc_msgSend_range(formulaCopy, v4, v5, v6);
  v9 = v8;
  v216 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v212 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v10, v11, v12);
  v13 = objc_opt_class();
  v217 = objc_msgSend_singleQuoteCharacters(v13, v14, v15, v16);
  v17 = objc_opt_class();
  v215 = objc_msgSend_doubleQuoteCharacters(v17, v18, v19, v20);
  v21 = objc_opt_class();
  v214 = objc_msgSend_leftParenCharacters(v21, v22, v23, v24);
  v25 = objc_opt_class();
  v213 = objc_msgSend_rightParenCharacters(v25, v26, v27, v28);
  v225 = 0;
  v226 = &v225;
  v227 = 0x2020000000;
  v228 = 0;
  v35 = objc_msgSend_range(formulaCopy, v29, v30, v31);
  selfCopy = self;
  v36 = v7 + v9;
  if (v35 < v7 + v9)
  {
    v37 = 0;
    v38 = 0;
    while (1)
    {
      if (*(v226 + 24) == 1)
      {
        goto LABEL_43;
      }

      v39 = objc_msgSend_characterAtIndex_(formulaCopy, v32, v35, v34);
      if (objc_msgSend_characterIsMember_(v217, v40, v39, v41))
      {
        v42 = v37 == 1;
        if (v37 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v37;
        }
      }

      else
      {
        if (!objc_msgSend_characterIsMember_(v215, v32, v39, v34))
        {
          if (objc_msgSend_characterIsMember_(v214, v32, v39, v34))
          {
            if (!v37)
            {
              ++v38;
            }
          }

          else if (objc_msgSend_characterIsMember_(v213, v32, v39, v34))
          {
            if (!v37)
            {
              v37 = 0;
              if (v38)
              {
                --v38;
              }

              else
              {
                *(v226 + 24) = 1;
              }
            }
          }

          else if (v39 == 65532)
          {
            if (v37)
            {
              objc_msgSend_addIndex_(v212, v32, v35, v34);
            }

            else
            {
              objc_opt_class();
              v46 = objc_msgSend_attachmentAtCharIndex_(formulaCopy, v44, v35, v45);
              v47 = TSUDynamicCast();

              if (v47)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v51 = objc_msgSend_expressionNode(v47, v48, v49, v50);
                  v55 = objc_msgSend_tokenType(v51, v52, v53, v54);

                  if (v55 == 1)
                  {
                    v59 = objc_msgSend_expressionNode(v47, v56, v57, v58);
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if ((isKindOfClass & 1) == 0)
                    {
                      v64 = MEMORY[0x277D81150];
                      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "[TSTFormula p_fixFormula:]", v63);
                      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v67);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 610, 0, "expected a function node with a function start token");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72);
                    }

                    v73 = objc_msgSend_expressionNode(v47, v61, v62, v63);
                    v75 = objc_msgSend_tokenContextWithExpressionNode_parenNestingLevel_(TSTFormulaTokenContext, v74, v73, v38);
                    objc_msgSend_tsu_push_(v216, v76, v75, v77);

                    v38 = 0;
                  }

                  else if (v55 == 2)
                  {
                    if (v38 || !objc_msgSend_count(v216, v56, v57, v58))
                    {
                      *(v226 + 24) = 1;
                    }

                    else
                    {
                      v81 = objc_msgSend_tsu_pop(v216, v78, v79, v80);
                      v38 = objc_msgSend_parenNestingLevel(v81, v82, v83, v84);
                    }
                  }
                }
              }

              v37 = 0;
            }
          }

          goto LABEL_16;
        }

        if (v37)
        {
          v43 = v37;
        }

        else
        {
          v43 = 2;
        }

        v42 = v37 == 2;
      }

      if (v42)
      {
        v37 = 0;
      }

      else
      {
        v37 = v43;
      }

LABEL_16:
      if (v36 == ++v35)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = 0;
  v37 = 0;
LABEL_43:
  if (v226[3])
  {
    v85 = 0;
  }

  else
  {
    v86 = objc_msgSend_context(formulaCopy, v32, v33, v34);
    v90 = objc_msgSend_stylesheet(formulaCopy, v87, v88, v89);
    v92 = objc_msgSend_i_copyIntoContext_stylesheet_(formulaCopy, v91, v86, v90);

    v96 = objc_msgSend_string(v92, v93, v94, v95);
    hasFormulaEqualsPrefix = objc_msgSend_tst_hasFormulaEqualsPrefix(v96, v97, v98, v99);

    if (hasFormulaEqualsPrefix)
    {
      objc_msgSend_deleteRange_undoTransaction_(v92, v101, 0, 1, 0);
      if (!objc_msgSend_length(v92, v102, v103, v104))
      {
        *(v226 + 24) = 1;
      }
    }

    v222[0] = MEMORY[0x277D85DD0];
    v222[1] = 3221225472;
    v222[2] = sub_22124EA24;
    v222[3] = &unk_27845F0D8;
    v105 = v92;
    v223 = v105;
    v224 = &v225;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v212, v106, 2, v222);
    if ((v226[3] & 1) == 0 && v37)
    {
      v110 = objc_msgSend_range(v105, v107, v108, v109);
      if (v37 == 1)
      {
        objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v105, v111, &v111[v110], 0, @"'", 0);
      }

      else
      {
        objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v105, v111, &v111[v110], 0, @"", 0);
      }
    }

    if ((v226[3] & 1) == 0)
    {
      objc_msgSend_range(v105, v107, v108, v109);
      if (!v114)
      {
        v115 = MEMORY[0x277D81150];
        v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSTFormula p_fixFormula:]", v113);
        v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v118);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v120, v116, v119, 678, 0, "expected non-empty storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v122, v123);
      }

      v124 = objc_opt_class();
      v128 = objc_msgSend_p_charactersToTemporarilyChopOffEndToFixSyntaxError(v124, v125, v126, v127);
      v132 = objc_msgSend_range(v105, v129, v130, v131);
      v135 = objc_msgSend_characterAtIndex_(v105, v133, &v133[v132 - 1], v134);
      v138 = 1;
      while (objc_msgSend_characterIsMember_(v128, v136, v135, v137))
      {
        v142 = objc_msgSend_range(v105, v139, v140, v141);
        objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v105, v143, &v143[v142 - 1], 1, &stru_2834BADA0, 0);
        v147 = objc_msgSend_range(v105, v144, v145, v146);
        if (!v148)
        {
          v138 = 0;
          *(v226 + 24) = 1;
          break;
        }

        v135 = objc_msgSend_characterAtIndex_(v105, v148, &v148[v147 - 1], v149);
        v138 = 0;
      }

      while ((v226[3] & 1) == 0)
      {
        if (v38)
        {
          v153 = objc_msgSend_stringByPaddingToLength_withString_startingAtIndex_(&stru_2834BADA0, v150, v38, @""), 0);
          v157 = objc_msgSend_range(v105, v154, v155, v156);
          objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(v105, v158, &v158[v157], 0, v153, 0);
        }

        else if (!objc_msgSend_count(v216, v150, v151, v152))
        {
          if (v226[3])
          {
            break;
          }

          WeakRetained = objc_loadWeakRetained(&selfCopy->_calculationEngine);
          TSTParser::TSTParser(v220, WeakRetained, v105, 0);

          v206 = objc_loadWeakRetained(&selfCopy->_hostInfo);
          v85 = TSTParser::parse(v220, v206, &selfCopy->_hostCell);

          if (v85)
          {
            selfCopy->_formulaWasFixable = 1;
            selfCopy->_formulaFixupsShouldStick = v138 & 1;
            objc_msgSend_setInitialWhitespace_(selfCopy, v207, v221, v208);
            v219[0] = MEMORY[0x277D85DD0];
            v219[1] = 3221225472;
            v219[2] = sub_22124EB24;
            v219[3] = &unk_278461EB8;
            v219[4] = v36;
            objc_msgSend_enumerateExpressionNodesUsingBlock_(v85, v209, v219, v210);
          }

          TSTParser::~TSTParser(v220);
          goto LABEL_55;
        }

        if (objc_msgSend_count(v216, v159, v160, v161))
        {
          v162 = objc_msgSend_tsu_pop(v216, v150, v151, v152);
          objc_opt_class();
          v166 = objc_msgSend_expressionNode(v162, v163, v164, v165);
          v167 = TSUDynamicCast();

          if (!v167)
          {
            v171 = MEMORY[0x277D81150];
            v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, "[TSTFormula p_fixFormula:]", v170);
            v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormula.mm", v174);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v176, v172, v175, 704, 0, "expected a function node on the stack");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v177, v178, v179);
          }

          v38 = objc_msgSend_parenNestingLevel(v162, v168, v169, v170);
          v183 = objc_msgSend_range(v105, v180, v181, v182);
          v185 = v184;
          v186 = [TSTFunctionEndNode alloc];
          v190 = objc_msgSend_context(v105, v187, v188, v189);
          Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v186, v191, v190, v167, v183 + v185, v183 + v185);

          v193 = [TSTWPTokenAttachment alloc];
          v197 = objc_msgSend_context(v105, v194, v195, v196);
          v199 = objc_msgSend_initWithContext_expressionNode_(v193, v198, v197, Index_lastIndex);

          v203 = objc_msgSend_range(v105, v200, v201, v202);
          objc_msgSend_insertAttachmentOrFootnote_range_dolcContext_undoTransaction_changeSession_(v105, v204, v199, &v204[v203], 0, 0, 0, 0);
        }

        else
        {
          v38 = 0;
        }
      }
    }

    v85 = 0;
LABEL_55:
  }

  _Block_object_dispose(&v225, 8);

  return v85;
}

- (id)p_formulaAsTextReturningTokenValues:(BOOL)values
{
  valuesCopy = values;
  v6 = objc_msgSend_context(self->_expressionTree, a2, values, v3);
  v7 = objc_alloc(MEMORY[0x277D80AE0]);
  v10 = objc_msgSend_initWithContext_(v7, v8, v6, v9);
  v11 = objc_alloc(MEMORY[0x277D80F28]);
  v13 = objc_msgSend_initWithContext_string_stylesheet_kind_(v11, v12, v6, &stru_2834BADA0, v10, 3);
  objc_msgSend_insertFormulaText_printingOptions_(self, v14, v13, 1);
  if (valuesCopy)
  {
    objc_msgSend_stringWithFormulaDetokenizedText(v13, v15, v16, v17);
  }

  else
  {
    objc_msgSend_stringWithFormulaPlainText(v13, v15, v16, v17);
  }
  v18 = ;

  return v18;
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges calcEngine:(id)engine allVisitedNodes:(id)nodes
{
  rangesCopy = ranges;
  contextCopy = context;
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  v22 = objc_msgSend_expressionTree(self, v19, v20, v21);
  objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v22, v23, setCopy, contextCopy, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

@end