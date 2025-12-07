@interface TSTReferenceNode
+ (BOOL)p_rangeRef:(const TSCERangeRef *)ref isContainedWithinSummaryAndLabelRowsInTable:(id)table;
+ (RefTypeHolder<TSCERangeRef,)p_expandedViewRangeRefForViewRangeRef:(id)ref forLabelRowsInTable:(SEL)table;
+ (TSUCellRect)p_cellRangeForSingleCategoryRefInViewRangeRef:(const void *)ref inTable:(id)table rangeContext:(unsigned __int8)context;
+ (id)p_singleCategoryRefForViewRangeRef:(const void *)ref rangeContext:(unsigned __int8)context calculationEngine:(id)engine hostCellRef:(const TSCECellRef *)cellRef;
+ (id)p_spanningCategoryRefForViewRangeRef:(const void *)ref groupByUid:(TSKUIDStruct)uid categoryLevel:(unsigned __int8)level calculationEngine:(id)engine;
+ (unsigned)preserveFlagsForReference:(const TSCERangeRef *)reference calcEngine:(id)engine;
- (BOOL)isAnyRangeExpression;
- (BOOL)isCategorySummaryRef;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExpressionNode:(id)node;
- (BOOL)isLocalReference;
- (BOOL)isNonSpanningRangeExpression;
- (BOOL)isNonSpillRangeExpression;
- (BOOL)isResizable;
- (BOOL)isSingleColumnSpanningReference;
- (BOOL)isSingleRowSpanningReference;
- (BOOL)isSpanningCategorySummaryRef;
- (BOOL)isValidReference;
- (BOOL)suppressReferenceOptionsMenu;
- (RefTypeHolder<TSCERangeRef,)p_boundingViewRangeRef;
- (RefTypeHolder<TSCERangeRef,)viewRangeRefDeprecated;
- (TSCECalculationEngine)calcEngine;
- (TSCERangeCoordinate)baseBoundingBox;
- (TSCERangeCoordinate)viewBoundingBox;
- (TSKChangeNotifier)changeNotifier;
- (TSKDocumentRoot)documentRoot;
- (TSKUIDStruct)categoryRefTableUID;
- (TSKUIDStruct)hostTableUID;
- (TSKUIDStruct)tableUID;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTGroupBy)groupBy;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine uidRectRef:(id)ref categoryRef:(id)categoryRef hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTReferenceNode)initWithReferenceStart:(id)start referenceEnd:(id)end suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation;
- (TSTTableInfo)tableInfo;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exportString;
- (id)formulaPlainText;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)p_categoryRefViewTractRef;
- (id)p_convertCategoryRefToRelativeForHostCell:(TSUCellCoord)cell;
- (id)referenceAsStringWithContext:(id)context;
- (id)string;
- (id)subregionForRange:(id)range;
- (unint64_t)hash;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)dealloc;
- (void)excludeSummaryAndLabelRows;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)invalidate;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_buildASTNodeArray:(TSCEASTNodeArray *)array forCoord:(TSUCellCoord)coord preserveFlags:(unsigned __int8)flags hostCell:(TSUCellCoord)cell;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setBasePreserveFlags:(unsigned __int8)flags;
- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setCategoryRef:(id)ref;
- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setHostCellRef:(TSCECellRef *)ref;
- (void)setHostTableUID:(TSKUIDStruct)d;
- (void)setIsBlankForKeyboardInsertion:(BOOL)insertion;
- (void)setRangeWithFunction:(BOOL)function;
- (void)setSpillRangeSuffix:(BOOL)suffix;
- (void)setViewPreserveFlags:(unsigned __int8)flags;
- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
@end

@implementation TSTReferenceNode

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine uidRectRef:(id)ref categoryRef:(id)categoryRef hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  contextCopy = context;
  engineCopy = engine;
  refCopy = ref;
  categoryRefCopy = categoryRef;
  helperCopy = helper;
  if (refCopy)
  {
    v21 = objc_msgSend_calcEngine(refCopy, v18, v19, v20, helperCopy);

    if (v21 != engineCopy)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTReferenceNode initWithContext:calculationEngine:uidRectRef:categoryRef:hostCellRef:referenceColorHelper:suppressAutomaticNamedReferenceInvalidation:]", v23);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 111, 0, "Expected uidRectRef to have same calculation engine as the one that was passed in.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
    }
  }

  v55.receiver = self;
  v55.super_class = TSTReferenceNode;
  helperCopy = [(TSTExpressionNode *)&v55 initWithContext:contextCopy children:0 firstIndex:0 lastIndex:0, helperCopy];
  v34 = helperCopy;
  if (helperCopy)
  {
    objc_storeWeak(&helperCopy->_calcEngine, engineCopy);
    upper = cellRef->_tableUID._upper;
    *&v34->_hostCellRef.coordinate.row = *&cellRef->coordinate.row;
    v34->_hostCellRef._tableUID._upper = upper;
    v39 = objc_msgSend_copy(refCopy, v36, v37, v38);
    uidRectRef = v34->_uidRectRef;
    v34->_uidRectRef = v39;

    objc_storeStrong(&v34->_categoryRef, categoryRef);
    v34->_isCategoryRef = objc_msgSend_isValid(categoryRefCopy, v41, v42, v43);
    v34->_rangeContext = 1;
    objc_storeStrong(&v34->_referenceColorHelper, helper);
    v34->_suppressAutomaticNamedReferenceInvalidation = invalidation;
    if (objc_msgSend_isValid(v34->_categoryRef, v44, v45, v46))
    {
      v49 = objc_msgSend_p_convertCategoryRefToRelativeForHostCell_(v34, v47, *&cellRef->coordinate, v48);
      categoryRef = v34->_categoryRef;
      v34->_categoryRef = v49;
    }
  }

  return v34;
}

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  flagsCopy = flags;
  contextCopy = context;
  engineCopy = engine;
  helperCopy = helper;
  v19 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v18, *(ref + 2), *(ref + 3), engineCopy);
  v20 = objc_opt_class();
  if (v20)
  {
    objc_msgSend_p_expandedViewRangeRefForViewRangeRef_forLabelRowsInTable_(v20, v21, ref, v19);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  v22 = [TSTUIDRectRef alloc];
  v24 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v22, v23, engineCopy, v31, flagsCopy);
  v25 = objc_opt_class();
  v27 = objc_msgSend_p_singleCategoryRefForViewRangeRef_rangeContext_calculationEngine_hostCellRef_(v25, v26, v31, 1, engineCopy, cellRef);
  v29 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v28, contextCopy, engineCopy, v24, v27, cellRef, helperCopy, invalidation);

  return v29;
}

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const void *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  flagsCopy = flags;
  contextCopy = context;
  engineCopy = engine;
  helperCopy = helper;
  v18 = [TSTUIDRectRef alloc];
  v20 = objc_msgSend_initWithCalcEngine_chromeRangeRef_preserveFlags_(v18, v19, engineCopy, ref, flagsCopy);
  v22 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v21, contextCopy, engineCopy, v20, 0, cellRef, helperCopy, invalidation);

  return v22;
}

- (TSTReferenceNode)initWithContext:(id)context calculationEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags hostCellRef:(const TSCECellRef *)cellRef referenceColorHelper:(id)helper suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  flagsCopy = flags;
  contextCopy = context;
  engineCopy = engine;
  helperCopy = helper;
  v18 = [TSTUIDRectRef alloc];
  v20 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v18, v19, engineCopy, ref, flagsCopy);
  v22 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v21, contextCopy, engineCopy, v20, 0, cellRef, helperCopy, invalidation);

  return v22;
}

- (TSTReferenceNode)initWithReferenceStart:(id)start referenceEnd:(id)end suppressAutomaticNamedReferenceInvalidation:(BOOL)invalidation
{
  startCopy = start;
  endCopy = end;
  v13 = objc_msgSend_hostTableUID(startCopy, v10, v11, v12);
  v15 = v14;
  if (v13 != objc_msgSend_hostTableUID(endCopy, v14, v16, v17) || v15 != v18)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v20);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 221, 0, "Creating a range reference with two references with different ownerUIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  v30 = objc_msgSend_calcEngine(startCopy, v18, v19, v20);
  v34 = objc_msgSend_calcEngine(endCopy, v31, v32, v33);

  if (v30 != v34)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v37);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 222, 0, "Creating a range reference with two references with different calculationEngines");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
  }

  if (objc_msgSend_spillRangeSuffix(startCopy, v35, v36, v37))
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v49);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v51, v54, 224, 0, "Don't combine TSTReferenceNode's that have spill range operator suffix");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58);
  }

  if (objc_msgSend_spillRangeSuffix(endCopy, v47, v48, v49))
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "[TSTReferenceNode initWithReferenceStart:referenceEnd:suppressAutomaticNamedReferenceInvalidation:]", v61);
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v63, v66, 225, 0, "Don't combine TSTReferenceNode's that have spill range operator suffix");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
  }

  v71 = objc_msgSend_uidRectRef(startCopy, v59, v60, v61);
  v75 = objc_msgSend_viewTopLeftCoord(v71, v72, v73, v74);

  v79 = objc_msgSend_uidRectRef(endCopy, v76, v77, v78);
  v83 = objc_msgSend_viewBottomRightCoord(v79, v80, v81, v82);

  v146._topLeft = v75;
  v146._bottomRight = v83;
  LOBYTE(v75) = objc_msgSend_viewPreserveFlags(startCopy, v84, v85, v86);
  v145._flags = objc_msgSend_viewPreserveFlags(endCopy, v87, v88, v89) & 0xFC | v75 & 3;
  TSCERangeCoordinate::fixInversions(&v146, &v145);
  flags = v145._flags;
  v94 = objc_msgSend_tableUID(startCopy, v91, v92, v93);
  v96 = v95;
  if ((objc_msgSend_isNonSpillRangeExpression(startCopy, v95, v97, v98) & 1) != 0 || (objc_msgSend_isNonSpillRangeExpression(endCopy, v99, v100, v101) & 1) != 0 || (v127 = objc_msgSend_hostTableUID(startCopy, v102, v103, v104), v129 = v128, v127 != objc_msgSend_hostTableUID(endCopy, v128, v130, v131)) || v129 != v132 || (v135 = objc_msgSend_tableUID(startCopy, v132, v133, v134), v137 = v136, v135 != objc_msgSend_tableUID(endCopy, v136, v138, v139)) || v137 != v140 || !TSCERangeCoordinate::isValidOrSpanning(&v146))
  {
    v146 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  v144 = v146;
  v105 = [TSTUIDRectRef alloc];
  v109 = objc_msgSend_calcEngine(startCopy, v106, v107, v108);
  v141 = v144;
  v142 = v94;
  v143 = v96;
  v111 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v105, v110, v109, &v141, flags);

  v115 = objc_msgSend_context(startCopy, v112, v113, v114);
  v122 = objc_msgSend_calcEngine(startCopy, v116, v117, v118);
  if (startCopy)
  {
    objc_msgSend_hostCellRef(startCopy, v119, v120, v121);
  }

  else
  {
    v141 = 0;
    v142 = 0;
  }

  v123 = objc_msgSend_referenceColorHelper(startCopy, v119, v120, v121);
  v125 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_categoryRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(self, v124, v115, v122, v111, 0, &v141, v123, invalidation);

  return v125;
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTReferenceNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 266, 0, "Unexpected object in initAsCopyOf:... expected TSTReferenceNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v70.receiver = self;
  v70.super_class = TSTReferenceNode;
  v27 = [(TSTExpressionNode *)&v70 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  if (v27)
  {
    v28 = objc_msgSend_calcEngine(v13, v24, v25, v26);

    if (v28)
    {
      v32 = objc_msgSend_calcEngine(v13, v29, v30, v31);
    }

    else
    {
      v33 = objc_msgSend_documentRoot(contextCopy, v29, v30, v31);
      v32 = objc_msgSend_calculationEngine(v33, v34, v35, v36);

      if (!v32)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSTReferenceNode initAsCopyOf:intoContext:children:]", v38);
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 275, 0, "unable to resurrect calcEngine in document context.");

        v32 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
      }
    }

    objc_storeWeak(v27 + 19, v32);
    v51 = objc_msgSend_uidRectRef(v13, v48, v49, v50);
    v55 = objc_msgSend_copy(v51, v52, v53, v54);
    v56 = *(v27 + 20);
    *(v27 + 20) = v55;

    v60 = objc_msgSend_categoryRef(v13, v57, v58, v59);
    v61 = *(v27 + 21);
    *(v27 + 21) = v60;

    v27[149] = objc_msgSend_isCategoryRef(v13, v62, v63, v64);
    objc_msgSend_setCalcEngine_(*(v27 + 20), v65, v32, v66);
    v67 = *(v13 + 200);
    *(v27 + 184) = *(v13 + 184);
    *(v27 + 25) = v67;
    v27[146] = *(v13 + 146);
    v27[145] = *(v13 + 145);
    objc_storeStrong(v27 + 16, *(v13 + 128));
    v27[150] = *(v13 + 150);
    v27[151] = *(v13 + 151);
    v68 = *(v27 + 22);
    *(v27 + 22) = 0;

    v27[144] = *(v13 + 144);
  }

  return v27;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTReferenceNode;
  [(TSTReferenceNode *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_isCategoryRef(self, a2, zone, v3))
  {
    v5 = [TSTReferenceNode alloc];
    v9 = objc_msgSend_context(self, v6, v7, v8);
    v13 = objc_msgSend_calcEngine(self, v10, v11, v12);
    v17 = objc_msgSend_categoryRef(self, v14, v15, v16);
    objc_msgSend_hostCellRef(self, v18, v19, v20);
    v22 = objc_msgSend_initWithContext_calculationEngine_categoryRef_hostCellRef_referenceColorHelper_(v5, v21, v9, v13, v17, v51, self->_referenceColorHelper);
  }

  else
  {
    v23 = [TSTReferenceNode alloc];
    v9 = objc_msgSend_context(self, v24, v25, v26);
    v13 = objc_msgSend_calcEngine(self, v27, v28, v29);
    v17 = objc_msgSend_uidRectRef(self, v30, v31, v32);
    objc_msgSend_hostCellRef(self, v33, v34, v35);
    v22 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v23, v36, v9, v13, v17, v51, self->_referenceColorHelper, 0);
  }

  v37 = v22;

  Index = objc_msgSend_firstIndex(self, v38, v39, v40);
  objc_msgSend_setFirstIndex_(v37, v42, Index, v43);
  v47 = objc_msgSend_lastIndex(self, v44, v45, v46);
  objc_msgSend_setLastIndex_(v37, v48, v47, v49);
  objc_storeStrong((v37 + 128), self->_refString);
  *(v37 + 150) = self->_hasCachedIsValidReference;
  *(v37 + 151) = self->_cachedIsValidReference;
  *(v37 + 144) = self->_spillRangeSuffix;
  return v37;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (objc_msgSend_isCategoryRef(self, v6, v7, v8) && objc_msgSend_isCategoryRef(v5, v9, v10, v11))
      {
        v12 = objc_msgSend_categoryRef(self, v9, v10, v11);
        v16 = objc_msgSend_categoryRef(v5, v13, v14, v15);
        v17 = v12 == v16;
      }

      else
      {
        if (objc_msgSend_isCategoryRef(self, v9, v10, v11) & 1) != 0 || (objc_msgSend_isCategoryRef(v5, v19, v20, v21))
        {
          v18 = 0;
LABEL_18:

          goto LABEL_19;
        }

        v12 = objc_msgSend_uidRectRef(self, v22, v23, v24);
        v16 = objc_msgSend_uidRectRef(v5, v25, v26, v27);
        if (!objc_msgSend_isEqual_(v12, v28, v16, v29))
        {
          v18 = 0;
LABEL_17:

          goto LABEL_18;
        }

        spillRangeSuffix = self->_spillRangeSuffix;
        v17 = spillRangeSuffix == objc_msgSend_spillRangeSuffix(v5, v30, v31, v32);
      }

      v18 = v17;
      goto LABEL_17;
    }

    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (unint64_t)hash
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3))
  {
    objc_msgSend_categoryRef(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_uidRectRef(self, v5, v6, v7);
  }
  v8 = ;
  v12 = objc_msgSend_hash(v8, v9, v10, v11);

  return v12;
}

- (TSKDocumentRoot)documentRoot
{
  v4 = objc_msgSend_context(self, a2, v2, v3);
  v8 = objc_msgSend_documentRoot(v4, v5, v6, v7);

  return v8;
}

- (TSKChangeNotifier)changeNotifier
{
  v4 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v8 = objc_msgSend_changeNotifier(v4, v5, v6, v7);

  return v8;
}

- (TSCECalculationEngine)calcEngine
{
  v5 = objc_msgSend_calcEngine(self->_uidRectRef, a2, v2, v3);

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(&self->_calcEngine);
      v13 = v10;
    }

    else
    {
      v13 = objc_msgSend_documentRoot(self, v6, v7, v8);
      v10 = objc_msgSend_calculationEngine(v13, v14, v15, v16);
    }

    v17 = v10;
    objc_msgSend_setCalcEngine_(self->_uidRectRef, v11, v10, v12);
    if (!WeakRetained)
    {
    }
  }

  v18 = objc_loadWeakRetained(&self->_calcEngine);

  if (!v18)
  {
    v22 = objc_msgSend_calcEngine(self->_uidRectRef, v19, v20, v21);
    objc_storeWeak(&self->_calcEngine, v22);
  }

  v23 = objc_loadWeakRetained(&self->_calcEngine);

  return v23;
}

- (void)setRangeWithFunction:(BOOL)function
{
  if (self->_rangeWithFunction != function)
  {
    self->_rangeWithFunction = function;
    objc_msgSend_invalidate(self, a2, function, v3);
  }
}

- (void)setBasePreserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, flags, v3);
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    if (objc_msgSend_spansAllRows(uidRectRef, v6, v7, v8))
    {
      LODWORD(flagsCopy) = flagsCopy & 0xF5;
    }

    if (objc_msgSend_spansAllColumns(self->_uidRectRef, v10, v11, v12))
    {
      flagsCopy = flagsCopy & 0xFA;
    }

    else
    {
      flagsCopy = flagsCopy;
    }

    uidRectRef = self->_uidRectRef;
  }

  objc_msgSend_setBasePreserveFlags_(uidRectRef, v6, flagsCopy, v8);
  objc_msgSend_p_resetMenu(self, v13, v14, v15);

  objc_msgSend_invalidate(self, v16, v17, v18);
}

- (void)setViewPreserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    if (objc_msgSend_spansAllRows(uidRectRef, a2, flags, v3))
    {
      LODWORD(flagsCopy) = flagsCopy & 0xF5;
    }

    if (objc_msgSend_spansAllColumns(self->_uidRectRef, v7, v8, v9))
    {
      flagsCopy = flagsCopy & 0xFA;
    }

    else
    {
      flagsCopy = flagsCopy;
    }

    uidRectRef = self->_uidRectRef;
  }

  objc_msgSend_setViewPreserveFlags_(uidRectRef, a2, flagsCopy, v3);
  objc_msgSend_p_resetMenu(self, v10, v11, v12);

  objc_msgSend_invalidate(self, v13, v14, v15);
}

- (TSCERangeCoordinate)viewBoundingBox
{
  objc_msgSend_p_boundingViewRangeRef(self, a2, v2, v3);
  v4 = v6;
  v5 = v7;
  result._bottomRight = v5;
  result._topLeft = v4;
  return result;
}

- (TSCERangeCoordinate)baseBoundingBox
{
  v5 = objc_msgSend_baseTopLeftCoord(self, a2, v2, v3);
  v9 = objc_msgSend_baseBottomRightCoord(self, v6, v7, v8);
  v10 = v5;
  result._bottomRight = v9;
  result._topLeft = v10;
  return result;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRefDeprecated
{
  result = self->_uidRectRef;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_viewRangeRef);
  }

  retstr->var0.range = 0u;
  retstr->var0._tableUID = 0u;
  return result;
}

- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, ref, flags);
  v10 = objc_msgSend_calcEngine(self, v7, v8, v9);
  v12 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v11, *(ref + 2), *(ref + 3), v10);
  v13 = objc_opt_class();
  if (v13)
  {
    objc_msgSend_p_expandedViewRangeRefForViewRangeRef_forLabelRowsInTable_(v13, v14, ref, v12);
  }

  else
  {
    memset(v54, 0, sizeof(v54));
  }

  if (objc_msgSend_isSpanningCategorySummaryRef(self, v14, v15, v16))
  {
    v20 = objc_msgSend_groupLevel(self->_categoryRef, v17, v18, v19);
    v24 = objc_msgSend_groupByUid(self->_categoryRef, v21, v22, v23);
    v26 = v25;
    v27 = objc_opt_class();
    v29 = objc_msgSend_p_spanningCategoryRefForViewRangeRef_groupByUid_categoryLevel_calculationEngine_(v27, v28, v54, v24, v26, v20, v10);
  }

  else
  {
    v30 = objc_opt_class();
    v34 = objc_msgSend_rangeContext(self, v31, v32, v33);
    objc_msgSend_hostCellRef(self, v35, v36, v37);
    v29 = objc_msgSend_p_singleCategoryRefForViewRangeRef_rangeContext_calculationEngine_hostCellRef_(v30, v38, v54, v34, v10, v53);
  }

  categoryRef = self->_categoryRef;
  self->_categoryRef = v29;

  self->_isCategoryRef = objc_msgSend_isValid(self->_categoryRef, v40, v41, v42);
  v43 = [TSTUIDRectRef alloc];
  v45 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v43, v44, v10, v54, flagsCopy);
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = v45;

  objc_msgSend_p_resetMenu(self, v47, v48, v49);
  objc_msgSend_invalidate(self, v50, v51, v52);
}

- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, ref, flags);
  v7 = [TSTUIDRectRef alloc];
  v11 = objc_msgSend_calcEngine(self, v8, v9, v10);
  v13 = objc_msgSend_initWithCalcEngine_chromeRangeRef_preserveFlags_(v7, v12, v11, ref, flagsCopy);
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = v13;

  self->_isCategoryRef = 0;
  categoryRef = self->_categoryRef;
  self->_categoryRef = 0;

  objc_msgSend_p_resetMenu(self, v16, v17, v18);

  objc_msgSend_invalidate(self, v19, v20, v21);
}

- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  objc_msgSend_willModify(self, a2, ref, flags);
  v7 = [TSTUIDRectRef alloc];
  v11 = objc_msgSend_calcEngine(self, v8, v9, v10);
  v13 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v7, v12, v11, ref, flagsCopy);
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = v13;

  self->_isCategoryRef = 0;
  categoryRef = self->_categoryRef;
  self->_categoryRef = 0;

  objc_msgSend_p_resetMenu(self, v16, v17, v18);

  objc_msgSend_invalidate(self, v19, v20, v21);
}

- (void)setCategoryRef:(id)ref
{
  refCopy = ref;
  objc_msgSend_willModify(self, v5, v6, v7);
  categoryRef = self->_categoryRef;
  self->_categoryRef = refCopy;
  v9 = refCopy;

  self->_isCategoryRef = 1;
  uidRectRef = self->_uidRectRef;
  self->_uidRectRef = 0;

  self->_hasCachedIsValidReference = 0;
}

- (void)setSpillRangeSuffix:(BOOL)suffix
{
  objc_msgSend_willModify(self, a2, suffix, v3);
  self->_spillRangeSuffix = suffix;

  objc_msgSend_invalidate(self, v6, v7, v8);
}

+ (id)p_singleCategoryRefForViewRangeRef:(const void *)ref rangeContext:(unsigned __int8)context calculationEngine:(id)engine hostCellRef:(const TSCECellRef *)cellRef
{
  contextCopy = context;
  v8 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, a2, *(ref + 2), *(ref + 3), engine, cellRef);
  v12 = v8;
  if (v8 && objc_msgSend_isCategorized(v8, v9, v10, v11) && (v13 = *(ref + 1), v25 = *ref, v26 = v13, v14 = objc_opt_class(), objc_msgSend_p_rangeRef_isContainedWithinSummaryAndLabelRowsInTable_(v14, v15, &v25, v12)))
  {
    v16 = objc_opt_class();
    v18 = objc_msgSend_p_cellRangeForSingleCategoryRefInViewRangeRef_inTable_rangeContext_(v16, v17, ref, v12, contextCopy);
    v24 = v26;
    v23 = v18;
    v21 = objc_msgSend_categoryRefReferringToCellRef_(v12, v19, &v23, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)p_spanningCategoryRefForViewRangeRef:(const void *)ref groupByUid:(TSKUIDStruct)uid categoryLevel:(unsigned __int8)level calculationEngine:(id)engine
{
  levelCopy = level;
  upper = uid._upper;
  lower = uid._lower;
  uidCopy = uid;
  engineCopy = engine;
  v12 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v11, *(ref + 2), *(ref + 3), engineCopy);
  v16 = v12;
  if (v12 && objc_msgSend_isCategorized(v12, v13, v14, v15))
  {
    v19 = *ref;
    if (*(ref + 6) != WORD2(*ref))
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "+[TSTReferenceNode p_spanningCategoryRefForViewRangeRef:groupByUid:categoryLevel:calculationEngine:]", v18);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 570, 0, "trying to create a spanning category summary ref to more than one column");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    v43[0] = objc_msgSend_columnUIDForColumnIndex_(v16, v17, WORD2(v19), v18);
    v43[1] = v29;
    v30 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v29, lower, upper, engineCopy);
    v31 = [TSCECategoryRef alloc];
    v42[0] = objc_msgSend_topLevelGroupUid(v30, v32, v33, v34);
    v42[1] = v35;
    v36 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v31, v35, &uidCopy, v42, v43, 11, levelCopy);
    if (objc_msgSend_isValid(v36, v37, v38, v39))
    {
      v40 = v36;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (RefTypeHolder<TSCERangeRef,)p_boundingViewRangeRef
{
  v7 = objc_msgSend_uidRectRef(self, a3, v3, v4);
  v11 = objc_msgSend_viewTractRef(v7, v8, v9, v10);

  if (objc_msgSend_isSpanningCategorySummaryRef(self, v12, v13, v14))
  {
    v18 = objc_msgSend_p_categoryRefViewTractRef(self, v15, v16, v17);

    v19 = [TSCECellTractRef alloc];
    v23 = objc_msgSend_columns(v18, v20, v21, v22);
    TSUIndexSet::TSUIndexSet(&v38);
    v37[0] = objc_msgSend_tableUID(v18, v24, v25, v26);
    v37[1] = v27;
    v11 = objc_msgSend_initWithColumns_rows_tableUID_(v19, v27, v23, &v38, v37);

    TSUIndexSet::~TSUIndexSet(&v38);
    objc_msgSend_setSpansAllRows_(v11, v28, 1, v29);
  }

  else
  {
    isCategoryRef = objc_msgSend_isCategoryRef(self, v15, v16, v17);
    if (v11)
    {
      v34 = 0;
    }

    else
    {
      v34 = isCategoryRef;
    }

    if (v34 == 1)
    {
      v11 = objc_msgSend_p_categoryRefViewTractRef(self, v30, v31, v32);
    }
  }

  if (v11)
  {
    objc_msgSend_boundingRangeRef(v11, v30, v31, v32);
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  v35 = *&v38._singleRange._end;
  retstr->var0.range = v38;
  retstr->var0._tableUID = v35;

  return result;
}

- (id)p_categoryRefViewTractRef
{
  v73 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v74[0] = 0;
  v74[1] = 0;
  v3 = [TSCECellTractRef alloc];
  v70 = 0x7FFF7FFFFFFFLL;
  v72 = 0x7FFF7FFFFFFFLL;
  v8 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(v3, v4, &v70, &v72, v74);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTReferenceNode p_categoryRefViewTractRef]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 612, 0, "invalid nil value for '%{public}s'", "invalidCellTractRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (objc_msgSend_isValid(v8, v5, v6, v7))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTReferenceNode p_categoryRefViewTractRef]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 613, 0, "expected to create an invalid cell tract ref");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v29 = v8;
  v33 = objc_msgSend_categoryRef(self, v30, v31, v32);
  v37 = objc_msgSend_groupByUid(v33, v34, v35, v36);
  v39 = v38;
  v42 = objc_msgSend_calcEngine(self, v38, v40, v41);
  v44 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v43, v37, v39, v42);

  v50 = v29;
  if (objc_msgSend_isValidCategoryRef_(v44, v45, v33, v46))
  {
    v70 = 0;
    v71 = 0;
    v51 = objc_msgSend_tableInfo(v44, v47, v48, v49);
    p_hostCellRef = &self->_hostCellRef;
    if (objc_msgSend_tableUID(v51, v52, v53, v54) == self->_hostCellRef._tableUID._lower)
    {
      v57 = v55;
      upper = self->_hostCellRef._tableUID._upper;

      if (v57 != upper)
      {
LABEL_10:
        v50 = objc_msgSend_viewCellTractRefForCategoryRef_atRowUid_(v44, v59, v33, &v70);

        goto LABEL_11;
      }

      v51 = objc_msgSend_tableInfo(v44, v59, v60, v61);
      v65 = objc_msgSend_translator(v51, v62, v63, v64);
      v70 = objc_msgSend_rowUIDForBaseRowIndex_(v65, v66, p_hostCellRef->coordinate.row, v67);
      v71 = v68;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v50;
}

+ (RefTypeHolder<TSCERangeRef,)p_expandedViewRangeRefForViewRangeRef:(id)ref forLabelRowsInTable:(SEL)table
{
  v6 = *(a4 + 1);
  v17 = *a4;
  v18 = v6;
  v7 = *(a4 + 1);
  v16.range = *a4;
  v16._tableUID = v7;
  v8 = objc_msgSend_indexesForLabelRows(a5, table, a4, a5);
  v11 = v8;
  if (v17._bottomRight.row == v17._topLeft.row && objc_msgSend_containsIndex_(v8, v9, v17._bottomRight.row, v10))
  {
    v15.origin = v17._topLeft;
    v15.size = (((v17._bottomRight.column - v17._topLeft.column + 1) | ((v17._bottomRight.row - v17._topLeft.row + 1) << 32)) + 0x100000000);
    TSCERangeRef::TSCERangeRef(&v14, &v15, &v18);
    v16 = v14;
  }

  tableUID = v16._tableUID;
  retstr->var0.range = v16.range;
  retstr->var0._tableUID = tableUID;

  return result;
}

+ (TSUCellRect)p_cellRangeForSingleCategoryRefInViewRangeRef:(const void *)ref inTable:(id)table rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  tableCopy = table;
  v8 = *ref;
  v9 = *(ref + 1);
  v13 = objc_msgSend_range(tableCopy, v10, v11, v12);
  v15 = v14;
  v18 = objc_msgSend_bodyRange(tableCopy, v14, v16, v17);
  v20 = v19;
  v23 = objc_msgSend_categoryColumnRange(tableCopy, v19, v21, v22);
  v26 = sub_221387E00(v8, v9, contextCopy, v13, v15, v18, v20, v25, v23, v24);
  v28 = objc_msgSend_regionFromRange_(TSTCellRegion, v27, v26, v27);
  v31 = objc_msgSend_indexesForSummaryRowsInRegion_(tableCopy, v29, v28, v30);
  LODWORD(v9) = objc_msgSend_firstIndex(v31, v32, v33, v34);
  v38 = objc_msgSend_boundingTopLeftCellID(v28, v35, v36, v37);
  v42 = objc_msgSend_range(tableCopy, v39, v40, v41);
  v43 = __C(v38 & 0xFFFF00000000 | v9, v38 & 0xFFFF00000000 | v9, v42);
  v45 = v44;

  v46 = v43;
  v47 = v45;
  result.size = v47;
  result.origin = v46;
  return result;
}

+ (BOOL)p_rangeRef:(const TSCERangeRef *)ref isContainedWithinSummaryAndLabelRowsInTable:(id)table
{
  tableCopy = table;
  topLeft = ref->range._topLeft;
  bottomRight = ref->range._bottomRight;
  v11 = objc_msgSend_range(tableCopy, v8, v9, v10);
  v12 = __C(topLeft, bottomRight, v11);
  v14 = v13;
  v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v13, v12, v13);
  v19 = objc_msgSend_intersectingRowsIndexSet(v15, v16, v17, v18);
  v21 = objc_msgSend_indexesOfHiddenRowsInCellRange_(tableCopy, v20, v12, v14);
  v24 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v19, v22, v21, v23);
  v27 = objc_msgSend_indexesForSummaryAndLabelRowsInRegion_(tableCopy, v25, v15, v26);
  LOBYTE(v14) = objc_msgSend_isEqual_(v24, v28, v27, v29);

  return v14;
}

- (TSKUIDStruct)categoryRefTableUID
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3))
  {
    v8 = objc_msgSend_categoryRef(self, v5, v6, v7);
    v12 = objc_msgSend_groupByUid(v8, v9, v10, v11);
    v14 = v13;
    v17 = objc_msgSend_calcEngine(self, v13, v15, v16);
    v19 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v18, v12, v14, v17);

    v23 = objc_msgSend_tableInfo(v19, v20, v21, v22);

    if (v23)
    {
      v27 = objc_msgSend_tableInfo(v19, v24, v25, v26);
      v31 = objc_msgSend_tableUID(v27, v28, v29, v30);
      v23 = v32;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTReferenceNode categoryRefTableUID]", v7);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 680, 0, "asking a non-category ref node for its category ref table UID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    v23 = 0;
    v31 = 0;
  }

  v42 = v31;
  v43 = v23;
  result._upper = v43;
  result._lower = v42;
  return result;
}

- (TSKUIDStruct)tableUID
{
  v4 = objc_msgSend_tableUID(self->_uidRectRef, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)hostTableUID
{
  p_hostCellRef = &self->_hostCellRef;
  lower = self->_hostCellRef._tableUID._lower;
  upper = p_hostCellRef->_tableUID._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setHostTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  if (!(d._lower | d._upper))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTReferenceNode setHostTableUID:]", d._upper);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 694, 0, "invalid tableUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  objc_msgSend_willModify(self, a2, d._lower, d._upper);
  self->_hostCellRef._tableUID._lower = lower;
  self->_hostCellRef._tableUID._upper = upper;

  objc_msgSend_invalidate(self, v15, v16, v17);
}

- (TSTTableInfo)tableInfo
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3))
  {
    v8 = objc_msgSend_groupBy(self, v5, v6, v7);
    objc_msgSend_tableInfo(v8, v9, v10, v11);
  }

  else
  {
    v12 = objc_msgSend_tableUID(self, v5, v6, v7);
    v14 = v13;
    v8 = objc_msgSend_calcEngine(self, v13, v15, v16);
    objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v17, v12, v14, v8);
  }
  v18 = ;

  return v18;
}

- (TSTGroupBy)groupBy
{
  if (objc_msgSend_isCategoryRef(self, a2, v2, v3))
  {
    v8 = objc_msgSend_categoryRef(self, v5, v6, v7);
    v12 = objc_msgSend_groupByUid(v8, v9, v10, v11);
    v14 = v13;
    v17 = objc_msgSend_calcEngine(self, v13, v15, v16);
    v19 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v18, v12, v14, v17);
  }

  else
  {
    v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
    v19 = objc_msgSend_groupBy(v8, v20, v21, v22);
  }

  return v19;
}

- (BOOL)isNonSpillRangeExpression
{
  v5 = objc_msgSend_area(self->_uidRectRef, a2, v2, v3);
  v9 = objc_msgSend_viewPreserveFlags(self, v6, v7, v8);
  v10 = (v9 ^ (v9 >> 2)) & 3;
  v11 = v10 != 0;
  if (objc_msgSend_isSpanningCategorySummaryRef(self, v12, v13, v14))
  {
    return 0;
  }

  if ((objc_msgSend_isSingleColumnSpanningReference(self, v15, v16, v17) & 1) == 0)
  {
    isSingleRowSpanningReference = objc_msgSend_isSingleRowSpanningReference(self, v18, v19, v20);
    if (v5 == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = isSingleRowSpanningReference;
    }

    if (v22)
    {
      return v10 != 0;
    }

    else
    {
      return v5 > 1;
    }
  }

  return v11;
}

- (BOOL)isAnyRangeExpression
{
  if (objc_msgSend_spillRangeSuffix(self, a2, v2, v3))
  {
    return 1;
  }

  return objc_msgSend_isNonSpillRangeExpression(self, v5, v6, v7);
}

- (BOOL)isSingleColumnSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3) & 1) != 0 || !objc_msgSend_spansAllRows(self, v5, v6, v7))
  {
    return 0;
  }

  v11 = objc_msgSend_uidRectRef(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfColumns(v11, v12, v13, v14) == 1;

  return v15;
}

- (BOOL)isSingleRowSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3) & 1) != 0 || !objc_msgSend_spansAllColumns(self, v5, v6, v7))
  {
    return 0;
  }

  v11 = objc_msgSend_uidRectRef(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfRows(v11, v12, v13, v14) == 1;

  return v15;
}

- (BOOL)isNonSpanningRangeExpression
{
  isNonSpillRangeExpression = objc_msgSend_isNonSpillRangeExpression(self, a2, v2, v3);
  if (isNonSpillRangeExpression)
  {
    if (objc_msgSend_spansAllRows(self, v6, v7, v8))
    {
      LOBYTE(isNonSpillRangeExpression) = 0;
    }

    else
    {
      LOBYTE(isNonSpillRangeExpression) = objc_msgSend_spansAllColumns(self, v9, v10, v11) ^ 1;
    }
  }

  return isNonSpillRangeExpression;
}

- (BOOL)isLocalReference
{
  lower = self->_hostCellRef._tableUID._lower;
  upper = self->_hostCellRef._tableUID._upper;
  return lower == objc_msgSend_tableUID(self->_uidRectRef, a2, v2, v3) && upper == v6;
}

- (BOOL)isCategorySummaryRef
{
  if (!objc_msgSend_isCategoryRef(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_categoryRef(self, v5, v6, v7);
  v12 = objc_msgSend_type(v8, v9, v10, v11) == 11;

  return v12;
}

- (BOOL)isSpanningCategorySummaryRef
{
  if (!objc_msgSend_isCategorySummaryRef(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_categoryRef(self, v5, v6, v7);
  v12 = objc_msgSend_groupByUid(v8, v9, v10, v11);
  v14 = v13;
  v17 = objc_msgSend_calcEngine(self, v13, v15, v16);
  v19 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v18, v12, v14, v17);

  isSpanningCategoryRef = objc_msgSend_isSpanningCategoryRef_(v19, v20, v8, v21);
  return isSpanningCategoryRef;
}

- (void)setIsBlankForKeyboardInsertion:(BOOL)insertion
{
  if (!self->_isBlankForKeyboardInsertion)
  {
    self->_isBlankForKeyboardInsertion = insertion;
    objc_msgSend_invalidate(self, a2, insertion, v3);
  }
}

+ (unsigned)preserveFlagsForReference:(const TSCERangeRef *)reference calcEngine:(id)engine
{
  v5 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, a2, reference->_tableUID._lower, reference->_tableUID._upper, engine);
  v8 = v5;
  if ((*&reference->range._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && *&reference->range._topLeft == 0x7FFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = *&reference->range._topLeft;
  }

  v14 = objc_msgSend_tableAreaForCellID_(v5, v6, v10 | *&reference->range._topLeft & 0xFFFFFFFF00000000, v7);
  bottomRight = reference->range._bottomRight;
  if (bottomRight.row == 0x7FFFFFFF)
  {
    row = 0x7FFFFFFF;
    if ((*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000)
    {
      row = objc_msgSend_numberOfRows(v8, v11, v12, v13) - 1;
    }
  }

  else
  {
    row = bottomRight.row;
  }

  v17 = objc_msgSend_tableAreaForCellID_(v8, v11, *&bottomRight & 0xFFFFFFFF00000000 | row, v13);
  if (v14 == 5)
  {
    v18 = 2;
  }

  else
  {
    v18 = v14;
  }

  if (v17 == 5)
  {
    v19 = 2;
  }

  else
  {
    v19 = v17;
  }

  if (v18 == 6)
  {
    v20 = 4;
  }

  else
  {
    v20 = v18;
  }

  if (v19 == 6)
  {
    v21 = 4;
  }

  else
  {
    v21 = v19;
  }

  if (v20 == v21)
  {
    if (v20 == 3)
    {
      v22 = 5;
    }

    else
    {
      v22 = 0;
    }

    if (v20 == 2)
    {
      v22 = 10;
    }

    if (v20 == 4)
    {
      v23 = v22 | 0xA;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)isResizable
{
  if (objc_msgSend_isSpanningCategorySummaryRef(self, a2, v2, v3))
  {
    return 0;
  }

  if (!objc_msgSend_isRangeWithFunction(self, v5, v6, v7))
  {
    return 1;
  }

  return objc_msgSend_isNonSpillRangeExpression(self, v9, v10, v11);
}

- (id)subregionForRange:(id)range
{
  rangeCopy = range;
  v8 = objc_msgSend_rangeContext(self, v5, v6, v7);
  v10 = objc_msgSend_p_subregionForRange_rangeContext_(self, v9, rangeCopy, v8);

  return v10;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  if (objc_msgSend_isCategoryRef(self, v5, v6, v7))
  {
    objc_msgSend_categoryRef(self, v8, v9, v10);
  }

  else
  {
    objc_msgSend_uidRectRef(self, v8, v9, v10);
  }
  v11 = ;
  v15 = objc_msgSend_hash(v11, v12, v13, v14);

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v16, self, v15, 1);
  v17 = v15;
  v18 = 1;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    isEqual = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TSTReferenceNode;
    if ([(TSTExpressionNode *)&v18 isEqualToExpressionNode:nodeCopy])
    {
      v5 = nodeCopy;
      v9 = objc_msgSend_uidRectRef(self, v6, v7, v8);
      v13 = objc_msgSend_uidRectRef(v5, v10, v11, v12);
      isEqual = objc_msgSend_isEqual_(v9, v14, v13, v15);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)referenceAsStringWithContext:(id)context
{
  contextCopy = context;
  if (!objc_msgSend_isValidReference(self, v5, v6, v7))
  {
    v40 = 0;
    v41 = objc_msgSend_length(0, v8, v9, v10);
    goto LABEL_25;
  }

  if (objc_msgSend_isCategoryRef(self, v8, v9, v10))
  {
    v14 = objc_msgSend_calcEngine(self, v11, v12, v13);

    if (!v14)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTReferenceNode referenceAsStringWithContext:]", v17);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1105, 0, "nil calculationEngine.  Can't generate string for categoryRefNode.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    v27 = objc_msgSend_categoryRef(self, v15, v16, v17);
    v31 = objc_msgSend_groupByUid(v27, v28, v29, v30);
    v33 = v32;
    v36 = objc_msgSend_calcEngine(self, v32, v34, v35);
    v38 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v37, v31, v33, v36);

    v40 = objc_msgSend_prettyStringForCategoryRef_forHostCellRef_namingContext_(v38, v39, v27, &self->_hostCellRef, contextCopy);
LABEL_23:

    goto LABEL_24;
  }

  v42 = objc_msgSend_calcEngine(self, v11, v12, v13);

  if (!v42)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTReferenceNode referenceAsStringWithContext:]", v45);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 1114, 0, "nil calculationEngine.  Can't generate string for referenceNode.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
  }

  v55 = objc_msgSend_tableUID(self, v43, v44, v45);
  v57 = v56;
  v60 = objc_msgSend_calcEngine(self, v56, v58, v59);
  v27 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v61, v55, v57, v60);

  if (v27)
  {
    v65 = objc_msgSend_calcEngine(self, v62, v63, v64);
    v38 = objc_msgSend_namer(v65, v66, v67, v68);

    v72 = objc_msgSend_hostTableUID(self, v69, v70, v71);
    objc_msgSend_setHostTableUID_(contextCopy, v73, v72, v73);
    isRangeWithFunction = objc_msgSend_isRangeWithFunction(self, v74, v75, v76);
    objc_msgSend_setSuppressIdenticalEndReference_(contextCopy, v78, isRangeWithFunction, v79);
    objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(contextCopy, v80, 1, v81);
    v40 = objc_opt_new();
    v130[0] = 0;
    v130[1] = v130;
    v130[2] = 0x2020000000;
    v131 = 0;
    if (objc_msgSend_isAPivotTable(v27, v82, v83, v84))
    {
      v88 = objc_msgSend_uidRectRef(self, v85, v86, v87);
      v92 = objc_msgSend_viewTractRef(v88, v89, v90, v91);
    }

    else
    {
      v93 = objc_msgSend_uidRectRef(self, v85, v86, v87);
      v88 = objc_msgSend_baseTractRef(v93, v94, v95, v96);

      v100 = objc_msgSend_translator(v27, v97, v98, v99);
      v92 = objc_msgSend_viewTractRefForBaseTractRef_(v100, v101, v88, v102);
    }

    if (objc_msgSend_isValid(v92, v103, v104, v105))
    {
      if (objc_msgSend_useSymbolicNames(contextCopy, v106, v107, v108) && objc_msgSend_isRectangularRange(v92, v109, v110, v111))
      {
        v113 = objc_msgSend_isAPivotTable(v27, v109, v112, v111) ^ 1;
        objc_msgSend_setUseSymbolicNames_(contextCopy, v114, v113, v115);
      }

      else
      {
        objc_msgSend_setUseSymbolicNames_(contextCopy, v109, 0, v111);
      }

      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = sub_2212DD2A4;
      v124[3] = &unk_278462BC0;
      v125 = v27;
      v126 = contextCopy;
      v129 = v130;
      v127 = v38;
      v128 = v40;
      objc_msgSend_foreachRangeRef_(v92, v116, v124, v117);
    }

    if (self->_spillRangeSuffix)
    {
      objc_msgSend_appendString_(v40, v106, @"#", v108);
    }

    _Block_object_dispose(v130, 8);
    goto LABEL_23;
  }

  v40 = 0;
LABEL_24:

  v41 = objc_msgSend_length(v40, v118, v119, v120);
LABEL_25:
  if (v41)
  {
    v121 = v40;
  }

  else
  {
    v121 = 0;
  }

  v122 = v121;

  return v121;
}

- (id)string
{
  refString = self->_refString;
  if (!refString)
  {
    v4 = objc_opt_new();
    v7 = objc_msgSend_referenceAsStringWithContext_(self, v5, v4, v6);
    v8 = self->_refString;
    self->_refString = v7;

    refString = self->_refString;
    if (!refString)
    {
      if (self->_isBlankForKeyboardInsertion)
      {
        refString = &stru_2834BADA0;
      }

      else
      {
        refString = @"#REF!";
      }
    }
  }

  return refString;
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
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTReferenceNode insertFormulaText:printingOptions:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1204, 0, "ReferenceNode shouldn't have any children");

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

  if ((optionsCopy & 2) != 0)
  {
    v39 = objc_opt_new();
    objc_msgSend_setForFormulaPlainText_(v39, v42, 1, v43);
    objc_msgSend_setQuoteComponents_(v39, v44, 1, v45);
    objc_msgSend_setUseSymbolicNames_(v39, v46, 0, v47);
    v50 = objc_msgSend_referenceAsStringWithContext_(self, v48, v39, v49);
    objc_msgSend_takeText_(textCopy, v51, v50, v52);
  }

  else
  {
    v33 = [TSTWPTokenAttachment alloc];
    v37 = objc_msgSend_context(self, v34, v35, v36);
    v39 = objc_msgSend_initWithContext_expressionNode_(v33, v38, v37, self);

    objc_msgSend_insertUIGraphicalAttachment_(textCopy, v40, v39, v41);
  }

  if (optionsCopy)
  {
    v56 = objc_msgSend_whitespaceAfter(self, v53, v54, v55);

    if (v56)
    {
      v60 = objc_msgSend_whitespaceAfter(self, v57, v58, v59);
      objc_msgSend_takeText_(textCopy, v61, v60, v62);
    }
  }
}

- (id)formulaPlainText
{
  formulaPlainText = self->_formulaPlainText;
  if (!formulaPlainText)
  {
    v4 = objc_opt_new();
    objc_msgSend_setForFormulaPlainText_(v4, v5, 1, v6);
    objc_msgSend_setQuoteComponents_(v4, v7, 1, v8);
    v11 = objc_msgSend_referenceAsStringWithContext_(self, v9, v4, v10);
    v12 = self->_formulaPlainText;
    self->_formulaPlainText = v11;

    formulaPlainText = self->_formulaPlainText;
  }

  if (formulaPlainText)
  {
    v13 = formulaPlainText;
  }

  else
  {
    v13 = @"#REF!";
  }

  return v13;
}

- (void)p_buildASTNodeArray:(TSCEASTNodeArray *)array forCoord:(TSUCellCoord)coord preserveFlags:(unsigned __int8)flags hostCell:(TSUCellCoord)cell
{
  HIBYTE(v64._upper) = flags;
  v9 = *&coord & 0xFFFF00000000;
  if (coord.row != 0x7FFFFFFF)
  {
    if (v9 != 0x7FFF00000000)
    {
      v63.n128_u8[0] = flags;
      v40 = &v63;
      v64._lower = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&cell, coord, v40, *&coord);
      if (objc_msgSend_isLocalReference(self, v42, v43, v44))
      {
        v49 = 0;
        v50 = 0;
      }

      else
      {
        v49 = objc_msgSend_tableUID(self, v45, v46, v47);
      }

      v63.n128_u64[0] = v49;
      v63.n128_u64[1] = v50;
      flagsCopy = flags;
      v58 = &flagsCopy;
      goto LABEL_31;
    }

    if ((flags & 2) != 0)
    {
      row = 0;
    }

    else
    {
      row = cell.row;
    }

    v25 = coord.row - row;
    if (objc_msgSend_isLocalReference(self, a2, array, *&coord))
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v29 = objc_msgSend_tableUID(self, v26, v27, v28);
    }

    v63.n128_u64[0] = v29;
    v63.n128_u64[1] = v30;
    sub_2210899C8(v25, v30, v27, v28);
    sub_2210899C8(v25, v51, v52, v53);
    v54 = ((flags & 1) << 56) | ((flags & 2) << 47) | v25 | 0x7FFF00000000;
LABEL_28:
    v64._lower = v54;
    v58 = (&v64._upper + 7);
LABEL_31:
    TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(array, &v63, &v64, v58, 0, v48);
    return;
  }

  if (v9 != 0x7FFF00000000)
  {
    column = cell.column;
    if (flags)
    {
      column = 0;
    }

    v32 = coord.column - column;
    if (coord.column == 0x7FFF)
    {
      v33 = coord.column;
    }

    else
    {
      v33 = v32;
    }

    v34 = v33;
    if (objc_msgSend_isLocalReference(self, a2, array, *&coord))
    {
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = objc_msgSend_tableUID(self, v35, v36, v37);
    }

    v63.n128_u64[0] = v38;
    v63.n128_u64[1] = v39;
    sub_2210898C4(v34, v39, v36, v37);
    sub_2210898C4(v34, v55, v56, v57);
    v54 = ((flags & 2) << 47) | ((flags & 1) << 56) | (v34 << 32) | 0x7FFFFFFF;
    goto LABEL_28;
  }

  if (objc_msgSend_isValid(self->_uidRectRef, a2, array, *&coord))
  {
    v15 = objc_msgSend_includeUidTractList(self->_uidRectRef, v10, v11, v12);
    LOBYTE(v64._lower) = 0;
    v63.n128_u8[0] = flags;
    TSCEASTRefFlags::setPreserveFlags(&v64, &v63);
    if (objc_msgSend_isLocalReference(self, v16, v17, v18))
    {
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, LOBYTE(v64._lower), v15, v21, v22, v23);
    }

    else
    {
      v63.n128_u64[0] = objc_msgSend_tableUID(self, v19, v20, v21);
      v63.n128_u64[1] = v59;
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, &v63, LOBYTE(v64._lower), v15, v60, v61);
    }
  }

  else
  {

    TSCEASTRelativeCoordRefElement::appendReferenceError(array, v10, v11, v12, v13, v14);
  }
}

- (id)p_convertCategoryRefToRelativeForHostCell:(TSUCellCoord)cell
{
  row = cell.row;
  v5 = self->_categoryRef;
  if ((objc_msgSend_preserveFlags(self->_categoryRef, v6, v7, v8) & 2) == 0)
  {
    v12 = objc_msgSend_groupByUid(self->_categoryRef, v9, v10, v11);
    v14 = v13;
    v17 = objc_msgSend_calcEngine(self, v13, v15, v16);
    v19 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v18, v12, v14, v17);

    if (v19)
    {
      v23 = objc_msgSend_tableInfo(v19, v20, v21, v22);
      if (objc_msgSend_tableUID(v23, v24, v25, v26) == self->_hostCellRef._tableUID._lower)
      {
        v28 = v27;
        upper = self->_hostCellRef._tableUID._upper;

        if (v28 == upper)
        {
          v33 = objc_msgSend_tableInfo(v19, v30, v31, v32);
          v37 = objc_msgSend_translator(v33, v34, v35, v36);
          v46[0] = objc_msgSend_rowUIDForBaseRowIndex_(v37, v38, row, v39);
          v46[1] = v40;

          categoryRef = self->_categoryRef;
          tableUID = self->_hostCellRef._tableUID;
          v43 = objc_msgSend_convertCategoryRefToRelativeAncestorUid_atRowUid_inHostTable_(v19, v42, categoryRef, v46, &tableUID);

          v5 = v43;
        }
      }

      else
      {
      }
    }
  }

  return v5;
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  cellCopy = cell;
  v8 = objc_msgSend_children(self, a2, array, *&cell, table);
  v12 = objc_msgSend_count(v8, v9, v10, v11);

  if (v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTReferenceNode buildASTNodeArray:hostCell:symbolTable:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1300, 0, "ReferenceNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if (objc_msgSend_isCategoryRef(self, v13, v14, v15))
  {
    v28 = objc_msgSend_p_convertCategoryRefToRelativeForHostCell_(self, v25, *&cell, v27);
    categoryRef = self->_categoryRef;
    self->_categoryRef = v28;

    v31 = self->_categoryRef;

    TSCEASTCategoryRefElement::appendCategoryRefElement(array, v31, v30);
    return;
  }

  v32 = objc_msgSend_tableUID(self, v25, v26, v27);
  v34 = v33;
  v37 = objc_msgSend_calcEngine(self, v33, v35, v36);
  v39 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v38, v32, v34, v37);

  if (objc_msgSend_isAPivotTable(v39, v40, v41, v42))
  {
    v46 = objc_msgSend_uidRectRef(self, v43, v44, v45);
    v50 = objc_msgSend_viewTractRef(v46, v47, v48, v49);

    if (objc_msgSend_isValid(v50, v51, v52, v53))
    {
      *&v148[0]._flags = 0;
      v59 = objc_msgSend_uidRectRef(self, v54, v55, v56);
      v62 = objc_msgSend_uidTractListWithPurpose_(v59, v60, 4, v61);

      v147.n128_u8[0] = objc_msgSend_preserveFlags(v62, v63, v64, v65);
      TSCEASTRefFlags::setPreserveFlags(&v148[1], &v147);
      v148[0]._flags = (4 * objc_msgSend_preserveFlags(v62, v66, v67, v68)) & 0x10;
      v148[0]._flags = v148[0]._flags & 0xDF | (32 * ((objc_msgSend_preserveFlags(v62, v69, v70, v71) & 8) != 0));
      v75 = objc_msgSend_uidRectRef(self, v72, v73, v74);
      v79 = objc_msgSend_area(v75, v76, v77, v78);

      if (v79 != 1 || (objc_msgSend_bottomRight(v50, v80, v81, v82) & 0x101FFFFFFFFFFFFLL) != 0 || (objc_msgSend_spansAllRows(v50, v80, v81, v82) & 1) != 0 || (objc_msgSend_spansAllColumns(v50, v80, v81, v82) & 1) != 0)
      {
        v147.n128_u64[0] = objc_msgSend_tableUID(self, v80, v81, v82);
        v147.n128_u64[1] = v83;
        TSCEASTViewTractRefElement::appendViewTractRefElement(array, &v147, &v148[1], v148, v62, 255, 255, 0xFFFF);
      }

      else
      {
        v137 = [TSCEViewTractRef alloc];
        v147.n128_u64[0] = objc_msgSend_tableUID(self, v138, v139, v140);
        v147.n128_u64[1] = v141;
        v143 = objc_msgSend_initWithTableUID_(v137, v141, &v147, v142);
        objc_msgSend_setPreserveFlags_(v143, v144, 15, v145);
        TSCEASTViewTractRefElement::appendViewTractRefElement(array, v143, v146);
      }

      goto LABEL_25;
    }

LABEL_26:
    TSCEASTRelativeCoordRefElement::appendReferenceError(array, v54, v55, v56, v57, v58);
    goto LABEL_27;
  }

  v84 = objc_msgSend_uidRectRef(self, v43, v44, v45);
  v50 = objc_msgSend_baseTractRef(v84, v85, v86, v87);

  v91 = objc_msgSend_basePreserveFlags(self, v88, v89, v90);
  if (objc_msgSend_isSingleCellOrSpanningRange(v50, v92, v93, v94) && (v91 & 3) == v91 >> 2)
  {
    v98 = objc_msgSend_topLeft(v50, v95, v96, v97);
    objc_msgSend_p_buildASTNodeArray_forCoord_preserveFlags_hostCell_(self, v99, array, v98, v91 & 3, cell);
    v62 = objc_msgSend_whitespaceBefore(self, v100, v101, v102);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v62);
  }

  else
  {
    if (v50 && objc_msgSend_isValid(v50, v95, v96, v97))
    {
      v103 = [TSCERelativeTractRef alloc];
      v62 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v103, v104, v50, &cellCopy);
      v108 = objc_msgSend_tableUID(v62, v105, v106, v107);
      v110 = v109;
      if (v108 == objc_msgSend_hostTableUID(self, v109, v111, v112) && v110 == v113)
      {
        objc_msgSend_setTableUID_(v62, v113, 0, 0);
      }

      TSCEASTColonTractElement::appendColonTractElement(array, v62, 0, v114);
      goto LABEL_25;
    }

    v115 = objc_msgSend_uidRectRef(self, v95, v96, v97);
    isValid = objc_msgSend_isValid(v115, v116, v117, v118);

    if ((isValid & 1) == 0)
    {
      goto LABEL_26;
    }

    v147.n128_u8[0] = 0;
    v148[1]._flags = v91;
    TSCEASTRefFlags::setPreserveFlags(&v147, &v148[1]);
    v123 = objc_msgSend_uidRectRef(self, v120, v121, v122);
    v62 = objc_msgSend_includeUidTractList(v123, v124, v125, v126);

    TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, v147.n128_u8[0], v62, v127, v128, v129);
  }

LABEL_25:

LABEL_27:
  if (objc_msgSend_spillRangeSuffix(self, v130, v131, v132))
  {
    TSCEASTTagOnlyElement::appendTagOnlyElement(array, 70, v134, v135);
  }

  v136 = objc_msgSend_whitespaceAfter(self, v133, v134, v135);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v136);
}

- (id)exportString
{
  v5 = objc_msgSend_children(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTReferenceNode exportString]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1377, 0, "ReferenceNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v10, &stru_2834BADA0, v11);
  if ((objc_msgSend_isLocalReference(self, v22, v23, v24) & 1) == 0)
  {
    v71._lower = objc_msgSend_tableUID(self, v25, v26, v27);
    v71._upper = v28;
    v31 = sub_2212C47E0(&v71, 1, v29, v30);
    objc_msgSend_appendFormat_(v21, v32, @"%@ :: ", v33, v31);
  }

  v34 = objc_msgSend_basePreserveFlags(self, v25, v26, v27);
  v41 = (v34 & 0xFC) + (v34 >> 2);
  if (objc_msgSend_spansAllColumns(self, v35, v36, v37))
  {
    v71._lower = objc_msgSend_baseTopLeftCoord(self, v38, v39, v40);
    v70 = v34 & 3 | (4 * (v34 & 3));
    v42 = sub_2212C62E0(&v71, &v70);
    objc_msgSend_appendString_(v21, v43, v42, v44);

    objc_msgSend_appendString_(v21, v45, @":", v46);
    v71._lower = objc_msgSend_baseBottomRightCoord(self, v47, v48, v49);
    v70 = v41;
    v50 = sub_2212C62E0(&v71, &v70);
    objc_msgSend_appendString_(v21, v51, v50, v52);
  }

  else
  {
    v71._lower = objc_msgSend_baseTopLeftCoord(self, v38, v39, v40);
    v70 = v34 & 3 | (4 * (v34 & 3));
    v53 = sub_2212C62E0(&v71, &v70);
    objc_msgSend_appendString_(v21, v54, v53, v55);

    if (!objc_msgSend_isNonSpillRangeExpression(self, v56, v57, v58))
    {
      goto LABEL_10;
    }

    objc_msgSend_appendString_(v21, v59, @":", v61);
    v71._lower = objc_msgSend_baseBottomRightCoord(self, v62, v63, v64);
    v70 = v41;
    v50 = sub_2212C62E0(&v71, &v70);
    objc_msgSend_appendString_(v21, v65, v50, v66);
  }

LABEL_10:
  if (objc_msgSend_spillRangeSuffix(self, v59, v60, v61))
  {
    objc_msgSend_appendString_(v21, v67, @"#", v68);
  }

  return v21;
}

- (void)invalidate
{
  refString = self->_refString;
  self->_refString = 0;

  formulaPlainText = self->_formulaPlainText;
  self->_formulaPlainText = 0;

  v8 = objc_msgSend_tokenAttachment(self, v5, v6, v7);
  objc_msgSend_invalidate(v8, v9, v10, v11);

  self->_hasCachedIsValidReference = 0;
}

- (BOOL)isValidReference
{
  if (!self->_hasCachedIsValidReference)
  {
    v6 = objc_msgSend_calcEngine(self, a2, v2, v3);

    if (v6)
    {
      if (objc_msgSend_isCategoryRef(self, v7, v8, v9))
      {
        v13 = objc_msgSend_categoryRef(self, v10, v11, v12);
        v17 = objc_msgSend_groupByUid(v13, v14, v15, v16);
        v19 = v18;
        v22 = objc_msgSend_calcEngine(self, v18, v20, v21);
        v24 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v23, v17, v19, v22);

        if (v24)
        {
          isValidCategoryRef = objc_msgSend_isValidCategoryRef_(v24, v25, v13, v27);
        }

        else
        {
          isValidCategoryRef = 0;
        }

        LOBYTE(isValid) = objc_msgSend_isValid(v13, v25, v26, v27) & isValidCategoryRef;
      }

      else
      {
        v13 = objc_msgSend_uidRectRef(self, v10, v11, v12);
        v38 = objc_msgSend_calcEngine(self, v35, v36, v37);
        objc_msgSend_setCalcEngine_(v13, v39, v38, v40);

        if (!objc_msgSend_isValidReference(v13, v41, v42, v43))
        {
          LOBYTE(isValid) = 0;
LABEL_15:

          self->_hasCachedIsValidReference = 1;
          self->_cachedIsValidReference = isValid;
          return isValid & 1;
        }

        v44 = [TSTUIDRectRef alloc];
        v48 = objc_msgSend_calcEngine(v13, v45, v46, v47);
        v81[0] = objc_msgSend_tableUID(v13, v49, v50, v51);
        v81[1] = v52;
        if (v13)
        {
          objc_msgSend_uidRange(v13, v52, v53, v54);
        }

        else
        {
          *__p = 0u;
          v80 = 0u;
          *v78 = 0u;
        }

        v56 = objc_msgSend_basePreserveFlags(v13, v52, v53, v54, v78[0], v78[1], __p[0]);
        v24 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v44, v57, v48, v81, v78, v56);
        if (__p[1])
        {
          *&v80 = __p[1];
          operator delete(__p[1]);
        }

        if (v78[0])
        {
          v78[1] = v78[0];
          operator delete(v78[0]);
        }

        v61 = objc_msgSend_viewTractRef(v24, v58, v59, v60);
        isValid = objc_msgSend_isValid(v61, v62, v63, v64);

        if (isValid)
        {
          v68 = objc_msgSend_uidRectRef(self, v65, v66, v67);
          isEqual = objc_msgSend_isEqual_(v68, v69, v24, v70);

          if ((isEqual & 1) == 0)
          {
            objc_storeStrong(&self->_uidRectRef, v24);
            objc_msgSend_invalidate(self, v72, v73, v74);
            objc_msgSend_p_resetMenu(self, v75, v76, v77);
          }
        }
      }
    }

    else
    {
      v13 = objc_msgSend_uidRectRef(self, v7, v8, v9);
      v24 = objc_msgSend_viewTractRef(v13, v29, v30, v31);
      LOBYTE(isValid) = objc_msgSend_isValid(v24, v32, v33, v34);
    }

    goto LABEL_15;
  }

  LOBYTE(isValid) = self->_cachedIsValidReference;
  return isValid & 1;
}

- (void)excludeSummaryAndLabelRows
{
  v5 = objc_msgSend_calcEngine(self, a2, v2, v3);

  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTReferenceNode excludeSummaryAndLabelRows]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1471, 0, "Need a calcEngine set to do this");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_calcEngine(self, v6, v7, v8);
  if (v18)
  {
    v22 = v18;
    isCategoryRef = objc_msgSend_isCategoryRef(self, v19, v20, v21);

    if ((isCategoryRef & 1) == 0)
    {
      objc_msgSend_willModify(self, v24, v25, v26);
      objc_msgSend_excludeSummaryAndLabelRows(self->_uidRectRef, v27, v28, v29);

      objc_msgSend_invalidate(self, v30, v31, v32);
    }
  }
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_invalidate(self, v5, v6, v7);
  }
}

- (BOOL)suppressReferenceOptionsMenu
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  isAPivotTable = objc_msgSend_isAPivotTable(v4, v5, v6, v7);

  return isAPivotTable;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[224], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212DF6B0, off_2812E4498[224]);

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

  v75.receiver = self;
  v75.super_class = TSTReferenceNode;
  [(TSTExpressionNode *)&v75 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 24);
  v11 = *(archive + 4);
  if ((v11 & 0x80) != 0)
  {
    if ((v11 & 8) == 0)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTReferenceNode loadFromArchive:unarchiver:]", v9);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 1551, 0, "Invalid TSTReferenceNode archive");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    }

    if (*(archive + 6))
    {
      v42 = *(archive + 6);
    }

    else
    {
      v42 = MEMORY[0x277D809E0];
    }

    *&v70[16] = TSKUIDStruct::loadFromMessage(v42, v8);
    *&v70[24] = v43;
    if (*(archive + 10))
    {
      v44 = *(archive + 10);
    }

    else
    {
      v44 = MEMORY[0x277D80A40];
    }

    MEMORY[0x223D9F8B0](&v72, v44);
    v45 = [TSTUIDRectRef alloc];
    v47 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v45, v46, 0, &v70[16], &v72, v10);
    uidRectRef = self->_uidRectRef;
    self->_uidRectRef = v47;
  }

  else
  {
    if ((v11 & 4) == 0)
    {
      if ((v11 & 0x10) != 0)
      {
        if ((v11 & 8) == 0)
        {
          v12 = MEMORY[0x277D81150];
          v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTReferenceNode loadFromArchive:unarchiver:]", v9);
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTReferenceNode.mm", v15);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1567, 0, "Invalid TSTReferenceNode archive");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
        }

        v21 = *(archive + 6);
        v67 = 0;
        v68 = 0;
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = MEMORY[0x277D809E0];
        }

        v67 = TSKUIDStruct::loadFromMessage(v22, v8);
        v68 = v23;
        *&v70[16] = 0u;
        v71 = 0u;
        v24 = MEMORY[0x277D80A50];
        if (*(archive + 7))
        {
          v25 = *(archive + 7);
        }

        else
        {
          v25 = MEMORY[0x277D80A50];
        }

        sub_2211A8FE8(&v70[16], v25, v23);
        v69 = 0u;
        *v70 = 0u;
        if (*(archive + 8))
        {
          v27 = *(archive + 8);
        }

        else
        {
          v27 = v24;
        }

        sub_2211A8FE8(&v69, v27, v26);
        v65 = 0uLL;
        v66 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        sub_221083454(&v65, &v70[16]);
        sub_221083454(&v62, &v71);
        if (v69 != *&v70[16])
        {
          sub_221083454(&v65, &v69);
        }

        if (*v70 != v71)
        {
          sub_221083454(&v62, v70);
        }

        sub_2210BBBE8(&v72, &v65, &v62);
        v28 = [TSTUIDRectRef alloc];
        v30 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v28, v29, 0, &v67, &v72, v10);
        v31 = self->_uidRectRef;
        self->_uidRectRef = v30;

        if (v71 != *v70 || *&v70[8] != __PAIR128__(v69, *(&v71 + 1)) || *&v70[24] != *(&v69 + 1))
        {
          objc_msgSend_setNeedsUidRectUpgrade_(self->_uidRectRef, v8, 1, v9);
        }

        if (*(&v73 + 1))
        {
          *&v74 = *(&v73 + 1);
          operator delete(*(&v73 + 1));
        }

        if (v72)
        {
          *(&v72 + 1) = v72;
          operator delete(v72);
        }

        if (v62)
        {
          v63 = v62;
          operator delete(v62);
        }

        v32 = v65;
        if (v65)
        {
          *(&v65 + 1) = v65;
LABEL_48:
          operator delete(v32);
          goto LABEL_49;
        }
      }

      goto LABEL_49;
    }

    TSCERangeRefFromArchive(*(archive + 5), &v70[16]);
    v65 = v71;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v49 = [TSTUIDRectRef alloc];
    v51 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v49, v50, 0, &v65, &v72, v10);
    v52 = self->_uidRectRef;
    self->_uidRectRef = v51;

    v53 = self->_uidRectRef;
    v69 = *&v70[16];
    *v70 = v71;
    objc_msgSend_setChromeRangeRef_preserveFlags_(v53, v54, &v69, v10);
  }

  if (*(&v73 + 1))
  {
    *&v74 = *(&v73 + 1);
    operator delete(*(&v73 + 1));
  }

  v32 = v72;
  if (v72)
  {
    *(&v72 + 1) = v72;
    goto LABEL_48;
  }

LABEL_49:
  v55 = *(archive + 4);
  if ((v55 & 0x40) != 0)
  {
    v56 = sub_22126A0F4(*(archive + 9), v8);
    categoryRef = self->_categoryRef;
    self->_categoryRef = v56;

    self->_isCategoryRef = 1;
    v55 = *(archive + 4);
  }

  if ((v55 & 0x400) != 0)
  {
    self->_spillRangeSuffix = *(archive + 100);
  }

  if ((v55 & 0x100) != 0)
  {
    sub_221269DB8(*(archive + 11), &v72);
    *&self->_hostCellRef.coordinate.row = v72;
    self->_hostCellRef._tableUID._upper = v73;
  }

  else if (v55)
  {
    v58 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v58 + 23) < 0)
    {
      v58 = *v58;
    }

    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v58, v9);
    v60 = TSKMakeUIDStructFromString();
    self->_hostCellRef.coordinate = 0;
    self->_hostCellRef._tableUID._lower = v60;
    self->_hostCellRef._tableUID._upper = v61;
  }

  else
  {
    self->_hostCellRef._tableUID._lower = 0;
    self->_hostCellRef._tableUID._upper = 0;
    self->_hostCellRef.coordinate = 0x7FFF7FFFFFFFLL;
  }
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

  v49.receiver = self;
  v49.super_class = TSTReferenceNode;
  [(TSTExpressionNode *)&v49 saveToArchive:v7 archiver:archiverCopy];
  v48._lower = 0;
  v48._upper = 0;
  v48._lower = objc_msgSend_tableUID(self->_uidRectRef, v9, v10, v11);
  v48._upper = v12;
  *(archive + 4) |= 8u;
  v13 = *(archive + 6);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0360](v14);
    *(archive + 6) = v13;
  }

  TSKUIDStruct::saveToMessage(&v48, v13);
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    objc_msgSend_uidRange(uidRectRef, v15, v16, v17);
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  *(archive + 4) |= 0x80u;
  v19 = *(archive + 10);
  if (!v19)
  {
    v20 = *(archive + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA0320](v20);
    *(archive + 10) = v19;
  }

  TSKUIDStructTract::saveToMessage(&v47, v19);
  if (v47._rowIdList.__begin_)
  {
    v47._rowIdList.__end_ = v47._rowIdList.__begin_;
    operator delete(v47._rowIdList.__begin_);
  }

  if (v47._colIdList.__begin_)
  {
    v47._colIdList.__end_ = v47._colIdList.__begin_;
    operator delete(v47._colIdList.__begin_);
  }

  v24 = objc_msgSend_basePreserveFlags(self, v21, v22, v23);
  v28 = *(archive + 4) | 0x200;
  *(archive + 4) = v28;
  *(archive + 24) = v24;
  v29 = self->_uidRectRef;
  if (v29)
  {
    objc_msgSend_chromeRangeRef(v29, v25, v26, v27);
    v28 = *(archive + 4);
  }

  else
  {
    memset(&v47, 0, 32);
  }

  *(archive + 4) = v28 | 4;
  v30 = *(archive + 5);
  if (!v30)
  {
    v31 = *(archive + 1);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v31);
    *(archive + 5) = v30;
  }

  TSCERangeRefEncodeToArchive(&v47, v30);
  *(archive + 4) |= 0x100u;
  v32 = *(archive + 11);
  if (!v32)
  {
    v33 = *(archive + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v33);
    *(archive + 11) = v32;
  }

  sub_221269A28(&self->_hostCellRef, v32);
  tableUID = self->_hostCellRef._tableUID;
  v34 = TSKUIDStruct::description(&tableUID);
  v35 = v34;
  v39 = objc_msgSend_UTF8String(v35, v36, v37, v38);
  sub_2212DF3A8(archive, v39);

  if (objc_msgSend_isCategoryRef(self, v40, v41, v42))
  {
    categoryRef = self->_categoryRef;
    *(archive + 4) |= 0x40u;
    v44 = *(archive + 9);
    if (!v44)
    {
      v45 = *(archive + 1);
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v45);
      *(archive + 9) = v44;
    }

    sub_221269E08(categoryRef, v44);
  }

  if (self->_spillRangeSuffix)
  {
    *(archive + 4) |= 0x400u;
    *(archive + 100) = 1;
  }
}

- (void)setHostCellRef:(TSCECellRef *)ref
{
  upper = ref->_tableUID._upper;
  *&self->_hostCellRef.coordinate.row = *&ref->coordinate.row;
  self->_hostCellRef._tableUID._upper = upper;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0x7FFF7FFFFFFFLL;
  return self;
}

@end