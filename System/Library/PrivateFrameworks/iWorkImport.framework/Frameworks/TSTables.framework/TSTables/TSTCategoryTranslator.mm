@interface TSTCategoryTranslator
+ (unint64_t)tableStyleAreaForCategoryLevel:(unsigned __int8)level isLabel:(BOOL)label;
- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d;
- (BOOL)checkMapsAndAssert:(BOOL)assert;
- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)d;
- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)d;
- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d;
- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)range;
- (BOOL)hasMergeRangesIntersectingCellRegion:(id)region;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)range;
- (BOOL)hasSpillRangesIntersectingCellRegion:(id)region;
- (BOOL)isLabelRow:(unsigned int)row;
- (BOOL)isSummaryOrLabelRow:(unsigned int)row;
- (BOOL)isSummaryRow:(unsigned int)row;
- (BOOL)isValidMergeRange:(TSUViewCellRect)range;
- (BOOL)mergeCellRange:(TSUViewCellRect)range;
- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)range;
- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)region;
- (BOOL)unmergeCellRange:(TSUViewCellRect)range;
- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTCategoryTranslator *)self;
- (TSKUIDStruct)columnUIDForBaseColumnIndex:(TSUModelColumnIndex)index;
- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)coord;
- (TSTCategoryTranslator)initWithTableInfo:(id)info;
- (TSUCellCoord)baseCoordFromViewCoord:(TSUCellCoord)coord;
- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index;
- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)index;
- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUModelCellCoord)baseCellCoordForCellUID:(TSKUIDStructCoord *)d;
- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord;
- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUModelCellCoord)summaryCellCoordForCellUID:(const TSKUIDStructCoord *)d;
- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index;
- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index;
- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUViewCellCoord)cellIDForCellContainingRichTextStorage:(id)storage;
- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)d;
- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord;
- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord;
- (TSUViewCellRect)bodyBoundingRangeForBaseLevel;
- (TSUViewCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)d;
- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)cells;
- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)d;
- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index;
- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index;
- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)index;
- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)index;
- (double)heightOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default;
- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default;
- (id)aggregateFormulaOwner;
- (id)allRichTextStorages;
- (id)allRowGroupUIDs;
- (id)baseCellRegionForViewCellRect:(TSUViewCellRect)rect;
- (id)baseCellRegionForViewCellRegion:(id)region;
- (id)baseColumnIndexesForViewColumnIndexes:(id)indexes;
- (id)baseRowIndexesForViewRowIndexes:(id)indexes;
- (id)baseShuffleMapForViewShuffleMap:(id)map;
- (id)cellRegionForTableStyleArea:(unint64_t)area;
- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default;
- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default;
- (id)chromeColumnIndexesForViewColumnIndexes:(id)indexes;
- (id)chromeRowIndexesForViewRowIndexes:(id)indexes;
- (id)columnWidths;
- (id)commentHostingAtCellID:(TSUViewCellCoord)d;
- (id)commentHostingAtCellID:(TSUViewCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps;
- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)d;
- (id)coordinateMapper;
- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)expandCellRegionToCoverMergedCells:(id)cells;
- (id)formulaAtCellID:(TSUViewCellCoord)d;
- (id)i_indexesForLabelRowsAtGroupLevel:(unsigned __int8)level;
- (id)i_indexesForLeadingRowsAtGroupLevel:(unsigned __int8)level;
- (id)i_indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)level;
- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForLabelRows;
- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForLeadingRows;
- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForLeadingSummaryRows;
- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForRowsContainedByGroupUIDs:(id)ds;
- (id)indexesForSummaryAndLabelRows;
- (id)indexesForSummaryRows;
- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level;
- (id)mergeActionForRegion:(id)region;
- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only;
- (id)mergedGridIndicesForDimension:(int64_t)dimension;
- (id)metadataForColumnIndex:(TSUViewColumnIndex)index;
- (id)metadataForRowIndex:(TSUViewRowIndex)index;
- (id)p_defaultCellStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label;
- (id)p_defaultTextStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label;
- (id)populatedCategoryGroupLevelsInColumn:(TSUViewColumnIndex)column;
- (id)regionForValueOrCommentCellsInRange:(TSUViewCellRect)range;
- (id)removeReturningInverseForRegion:(id)region;
- (id)rowHeights;
- (id)shrinkReturningInverseForRegion:(id)region;
- (id)stringAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell;
- (id)summaryCellVendor;
- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default;
- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default;
- (id)translatedCellRangeName:(const void *)name usedSymbolicName:(BOOL *)symbolicName;
- (id)viewCellRegionForBaseCellRect:(TSUModelCellRect)rect;
- (id)viewCellRegionForBaseCellRegion:(id)region;
- (id)viewColumnGridIndexesForBaseColumnGridIndexes:(id)indexes;
- (id)viewColumnIndexesForBaseColumnIndexes:(id)indexes;
- (id)viewColumnIndexesForChromeColumnIndexes:(id)indexes;
- (id)viewRowIndexesForBaseRowIndexes:(id)indexes;
- (id)viewRowIndexesForChromeRowIndexes:(id)indexes;
- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border;
- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d;
- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text;
- (int)insertColumnsAtIndex:(TSUViewColumnIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area;
- (int)insertRowsAtIndex:(TSUViewRowIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area unsetFilterHidingAction:(BOOL)action;
- (int)p_applyViewCellCoord:(TSUViewCellCoord)coord toSummaryUsingBlock:(id)block toLabelUsingBlock:(id)usingBlock toCategoryColumnUsingBlock:(id)columnUsingBlock toBaseUsingBlock:(id)baseUsingBlock;
- (int)setCellStyle:(id)style ofColumnAtIndex:(TSUViewColumnIndex)index;
- (int)setCellStyle:(id)style ofRowAtIndex:(TSUViewRowIndex)index;
- (int)setTextStyle:(id)style ofColumnAtIndex:(TSUViewColumnIndex)index;
- (int)setTextStyle:(id)style ofRowAtIndex:(TSUViewRowIndex)index;
- (unint64_t)numberOfPopulatedCells;
- (unint64_t)numberOfRowLevels;
- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)d;
- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d;
- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)row;
- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d;
- (unsigned)groupLevelAtLabelRow:(TSUViewRowIndex)row;
- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)row;
- (unsigned)maxVisibleRowLevel;
- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTCategoryTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTCategoryTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTCategoryTranslator *)self;
- (void)addReceiverToGroupBy:(id)by;
- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group;
- (void)didCreateGroup:(id)group;
- (void)didRemoveGroup:(id)group;
- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group;
- (void)endOfGroupingChangesBatch;
- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block;
- (void)flushCachedIndexSets;
- (void)i_populateCachedIndexSetsIfNeeded;
- (void)i_populateIndexesForLabelRows;
- (void)i_populateIndexesForLeadingRows;
- (void)i_populateIndexesForLeadingSummaryRows;
- (void)i_populateIndexesForSummaryAndLabelRows;
- (void)i_populateIndexesForSummaryRows;
- (void)moveColumnRange:(_NSRange)range toColumnIndex:(TSUViewColumnIndex)index;
- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)index toCategoryColumnUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock;
- (void)p_applyViewRowIndex:(TSUViewRowIndex)index toSummaryUsingBlock:(id)block toLabelUsingBlock:(id)usingBlock toBaseUsingBlock:(id)baseUsingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock;
- (void)p_defaultStyleHandlesOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (void)p_defaultStylesOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label outCellStyle:(id *)style outTextStyle:(id *)textStyle;
- (void)postCommentNotificationForStorage:(id)storage atViewCellCoord:(TSUViewCellCoord)coord notificationKey:(id)key;
- (void)removeColumnsAtIndex:(TSUViewColumnIndex)index count:(TSUViewColumnIndex)count;
- (void)removeColumnsAtIndexes:(id)indexes;
- (void)removeRowsAtIndex:(TSUViewRowIndex)index count:(TSUViewRowIndex)count;
- (void)removeRowsAtIndexes:(id)indexes;
- (void)resetViewMap;
- (void)resetViewMapAndNotify;
- (void)setHeight:(double)height ofRowAtIndex:(TSUViewRowIndex)index;
- (void)setNumberOfHeaderColumns:(TSUViewColumnIndex)columns;
- (void)setWidth:(double)width ofColumnAtIndex:(TSUViewColumnIndex)index;
- (void)startOfGroupingChangesBatch;
- (void)suspendChangeDescriptorNotificationsDuringBlock:(id)block;
@end

@implementation TSTCategoryTranslator

- (TSTCategoryTranslator)initWithTableInfo:(id)info
{
  infoCopy = info;
  v33.receiver = self;
  v33.super_class = TSTCategoryTranslator;
  v8 = [(TSTTableTranslator *)&v33 initWithTableInfo:infoCopy];
  if (v8)
  {
    v9 = objc_msgSend_groupBy(infoCopy, v5, v6, v7);
    objc_msgSend_addReceiverToGroupBy_(v8, v10, v9, v11);

    v15 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v12, v13, v14);
    cachedSummaryRowIndexesAtLevels = v8->_cachedSummaryRowIndexesAtLevels;
    v8->_cachedSummaryRowIndexesAtLevels = v15;

    v20 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v17, v18, v19);
    cachedLabelRowIndexesAtLevels = v8->_cachedLabelRowIndexesAtLevels;
    v8->_cachedLabelRowIndexesAtLevels = v20;

    v25 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v22, v23, v24);
    cachedLeadingRowIndexesAtLevels = v8->_cachedLeadingRowIndexesAtLevels;
    v8->_cachedLeadingRowIndexesAtLevels = v25;

    v30 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v27, v28, v29);
    cachedLeadingSummaryRowIndexesAtLevels = v8->_cachedLeadingSummaryRowIndexesAtLevels;
    v8->_cachedLeadingSummaryRowIndexesAtLevels = v30;

    v8->_cachedIndexSetsAreValid = 0;
    v8->_cachedIndexesUnfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v8;
}

- (id)summaryCellVendor
{
  v4 = objc_msgSend_summaryModel(self->super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_summaryCellVendor(v4, v5, v6, v7);

  return v8;
}

- (id)aggregateFormulaOwner
{
  v4 = objc_msgSend_summaryModel(self->super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_aggregateFormulaOwner(v4, v5, v6, v7);

  return v8;
}

- (unint64_t)numberOfRowLevels
{
  v4 = objc_msgSend_groupBy(self->super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_numberOfLevels(v4, v5, v6, v7);

  return v8;
}

- (unsigned)maxVisibleRowLevel
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator maxVisibleRowLevel]", v2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 160, 0, "Unimplemented!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  v14.receiver = self;
  v14.super_class = TSTCategoryTranslator;
  return [(TSTTableTranslator *)&v14 maxVisibleRowLevel];
}

- (TSUViewCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_rowUIDForViewRowIndex_(self, a2, d.row, v3);
  v7 = v6;
  v10 = objc_msgSend_groupByForRows(self, v6, v8, v9);
  v14 = objc_msgSend_maxRowLevel(self, v11, v12, v13);
  v16 = objc_msgSend_groupNodeForRowUid_atLevel_(v10, v15, v5, v7, v14);
  v20 = objc_msgSend_groupValueTuple(v16, v17, v18, v19);
  v22 = objc_msgSend_rowsForGroupValue_atLevel_(v10, v21, v20, v14);
  v25 = objc_msgSend_viewRowIndexesForBaseRowIndexes_(self, v23, v22, v24);
  v29 = objc_msgSend_bodyRange(self, v26, v27, v28);
  v31 = objc_msgSend_regionFromRange_(TSTCellRegion, v30, v29, v30);
  v34 = objc_msgSend_regionByIntersectingRowIndices_(v31, v32, v25, v33);
  v38 = objc_msgSend_boundingViewCellRect(v34, v35, v36, v37);
  v40 = v39;

  v41 = v38;
  v42 = v40;
  result._rect.size = v42;
  result._rect.origin = v41;
  return result;
}

- (TSUViewCellRect)bodyBoundingRangeForBaseLevel
{
  v3 = [TSCECellTractRef alloc];
  v7 = objc_msgSend_tableInfo(self, v4, v5, v6);
  v11 = objc_msgSend_baseTableModel(v7, v8, v9, v10);
  v39.origin = objc_msgSend_bodyRange(v11, v12, v13, v14);
  v39.size = v15;
  v18 = objc_msgSend_tableInfo(self, v15, v16, v17);
  v38._lower = objc_msgSend_tableUID(v18, v19, v20, v21);
  v38._upper = v22;
  TSCERangeRef::TSCERangeRef(&v40, &v39, &v38);
  v25 = objc_msgSend_initWithRangeRef_(v3, v23, &v40, v24);
  v28 = objc_msgSend_viewTractRefForBaseTractRef_(self, v26, v25, v27);

  objc_msgSend_boundingRange(v28, v29, v30, v31);
  TSUCellRectFromTSCERangeCoordinate();
  v33 = v32;
  v35 = v34;

  v36 = v33;
  v37 = v35;
  result._rect.size = v37;
  result._rect.origin = v36;
  return result;
}

- (void)startOfGroupingChangesBatch
{
  groupingsChangingLevel = self->_groupingsChangingLevel;
  self->_groupingsChangingLevel = groupingsChangingLevel + 1;
  if (groupingsChangingLevel == -1)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator startOfGroupingChangesBatch]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 202, 0, "overflow in _groupingsChangingLevel");

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
  }
}

- (void)endOfGroupingChangesBatch
{
  groupingsChangingLevel = self->_groupingsChangingLevel;
  if (groupingsChangingLevel)
  {
    v6 = groupingsChangingLevel - 1;
    self->_groupingsChangingLevel = v6;
    if (!v6)
    {
      if (self->_sawGroupingChangeNeedingReset)
      {
        objc_msgSend_resetViewMapAndNotify(self, a2, v2, v3);
      }

      self->_sawGroupingChangeNeedingReset = 0;
    }
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator endOfGroupingChangesBatch]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 216, 0, "endOfGroupingChangesBatch called without matching startOfGroupingChangesBatch - avoided underflow");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
  }
}

- (void)didCreateGroup:(id)group
{
  if (objc_msgSend_withinGroupingChangesBatch(self, a2, group, v3))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {

    objc_msgSend_resetViewMapAndNotify(self, v5, v6, v7);
  }
}

- (void)didRemoveGroup:(id)group
{
  if (objc_msgSend_withinGroupingChangesBatch(self, a2, group, v3))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {

    objc_msgSend_resetViewMapAndNotify(self, v5, v6, v7);
  }
}

- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_isLeaf(groupCopy, v5, v6, v7))
  {
    if (objc_msgSend_withinGroupingChangesBatch(self, v8, v9, v10))
    {
      self->_sawGroupingChangeNeedingReset = 1;
    }

    else
    {
      objc_msgSend_resetViewMapAndNotify(self, v11, v12, v13);
    }
  }
}

- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group
{
  groupCopy = group;
  if (objc_msgSend_isLeaf(groupCopy, v5, v6, v7))
  {
    if (objc_msgSend_withinGroupingChangesBatch(self, v8, v9, v10))
    {
      self->_sawGroupingChangeNeedingReset = 1;
    }

    else
    {
      objc_msgSend_resetViewMapAndNotify(self, v11, v12, v13);
    }
  }
}

- (void)resetViewMap
{
  v5 = objc_msgSend_viewMap(self, a2, v2, v3);
  v9 = objc_msgSend_baseMap(self, v6, v7, v8);

  if (v5 == v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator resetViewMap]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 282, 0, "view and base cannot be the same while categorized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = self->super._tableInfo;
  v25 = objc_msgSend_groupByForRows(self, v22, v23, v24);
  v29 = objc_msgSend_categoryOrder(v21, v26, v27, v28);
  v33 = v29;
  if (v29)
  {
    objc_msgSend_orderedRowUidsWithLabels(v29, v30, v31, v32);
  }

  else
  {
    v90 = 0;
    v91 = 0;
    v92 = 0;
  }

  v37 = objc_msgSend_baseTableModel(v21, v34, v35, v36);
  v41 = objc_msgSend_columnRowUIDMap(v37, v38, v39, v40);
  v45 = objc_msgSend_columnUIDs(v41, v42, v43, v44);
  __p = 0;
  v88 = 0;
  v89 = 0;
  sub_221086EBC(&__p, *v45, *(v45 + 8), (*(v45 + 8) - *v45) >> 4);

  sub_22129CE20(&__p, __p, "category column");
  objc_msgSend_flushCachedIndexSets(self, v46, v47, v48);
  v52 = objc_msgSend_viewMap(self, v49, v50, v51);
  objc_msgSend_replaceRowsWithUids_(v52, v53, &v90, v54);

  v58 = objc_msgSend_viewMap(self, v55, v56, v57);
  objc_msgSend_replaceColumnsWithUids_(v58, v59, &__p, v60);

  coordMapper = self->super._coordMapper;
  self->super._coordMapper = 0;

  v68 = objc_msgSend_calcEngine(v21, v62, v63, v64);
  if (v25)
  {
    objc_msgSend_rowOrderChangedPrecedent(v25, v65, v66, v67);
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  objc_msgSend_markCellRefAsDirty_(v68, v65, &v84, v67);

  v72 = objc_msgSend_groupBy(v21, v69, v70, v71);
  v76 = objc_msgSend_inCalcEngineMode(v72, v73, v74, v75);

  if ((v76 & 1) == 0)
  {
    v83 = objc_msgSend_calcEngine(v21, v77, v78, v79);
    if (v25)
    {
      objc_msgSend_rowOrderChangedPrecedentIgnoringRecalc(v25, v80, v81, v82);
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
    }

    objc_msgSend_markCellRefAsDirty_(v83, v80, &v84, v82);
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

- (void)resetViewMapAndNotify
{
  v52 = *MEMORY[0x277D85DE8];
  if (self->_suspendNotify)
  {

    objc_msgSend_resetViewMap(self, a2, v2, v3);
  }

  else
  {
    v5 = self->super._tableInfo;
    v9 = objc_msgSend_rowUIDs(v5, v6, v7, v8);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    sub_221086EBC(&v48, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 4);
    objc_msgSend_resetViewMap(self, v10, v11, v12);
    v16 = objc_msgSend_rowUIDs(v5, v13, v14, v15);
    __p = 0;
    v46 = 0;
    v47 = 0;
    sub_221086EBC(&__p, *v16, *(v16 + 8), (*(v16 + 8) - *v16) >> 4);
    v18 = objc_msgSend_changeDescriptorsForReorganizingFromRowUids_toRowUids_(v5, v17, &v48, &__p);
    v22 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v19, v20, v21);
    v26 = objc_msgSend_range(v5, v23, v24, v25);
    v28 = objc_msgSend_changeDescriptorWithType_cellRange_(TSTChangeDescriptor, v27, 47, v26, v27);
    objc_msgSend_registerChange_details_forChangeSource_(v22, v29, 1, v28, v5);

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = v18;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v41, v51, 16);
    if (v35)
    {
      v36 = *v42;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v41 + 1) + 8 * i);
          v39 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v32, v33, v34, v41);
          objc_msgSend_registerChange_details_forChangeSource_(v39, v40, 1, v38, v5);
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v41, v51, 16);
      }

      while (v35);
    }

    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }
  }
}

- (id)coordinateMapper
{
  coordMapper = self->super._coordMapper;
  if (!coordMapper)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->super._coordMapper)
    {
      v5 = [TSCECoordMapper alloc];
      v9 = objc_msgSend_tableUID(selfCopy->super._tableInfo, v6, v7, v8);
      v13 = objc_msgSend_indexesForSummaryRows(selfCopy, v10, v11, v12, v9, v10);
      v17 = objc_msgSend_indexesForLabelRows(selfCopy, v14, v15, v16);
      v19 = objc_msgSend_initWithTableUID_summaryRows_labelRows_(v5, v18, &v65, v13, v17);

      v23 = objc_msgSend_viewMap(selfCopy, v20, v21, v22);
      v27 = objc_msgSend_baseMap(selfCopy, v24, v25, v26);
      v31 = objc_msgSend_rowUIDs(v27, v28, v29, v30);

      v36 = *v31;
      v35 = *(v31 + 8);
      if (v36 != v35)
      {
        v37 = 0;
        do
        {
          v38 = objc_msgSend_rowIndexForRowUID_(v23, v32, *v36, v36[1]);
          objc_msgSend_mapBaseRow_toViewRow_(v19, v39, v37, v38);
          v37 = (v37 + 1);
          v36 += 2;
        }

        while (v36 != v35);
      }

      v40 = objc_msgSend_summaryMap(selfCopy, v32, v33, v34);
      v44 = objc_msgSend_rowUIDs(v40, v41, v42, v43);

      v48 = *v44;
      v49 = *(v44 + 8);
      if (*v44 != v49)
      {
        v50 = 0;
        do
        {
          v51 = objc_msgSend_rowIndexForRowUID_(v23, v45, *v48, v48[1]);
          if ((sub_2211A8E20(*v48, v48[1]) & 1) == 0)
          {
            objc_msgSend_mapSummaryRow_toViewRow_(v19, v45, v50, v51);
            v50 = (v50 + 1);
          }

          v48 += 2;
        }

        while (v48 != v49);
      }

      v52 = objc_msgSend_summaryMap(selfCopy, v45, v46, v47);
      v56 = objc_msgSend_columnUIDs(v52, v53, v54, v55);

      v58 = *v56;
      v59 = *(v56 + 8);
      if (v58 != v59)
      {
        v60 = 0;
        do
        {
          v61 = objc_msgSend_columnIndexForColumnUID_(v23, v57, *v58, v58[1]);
          objc_msgSend_mapSummaryColumn_toViewColumn_(v19, v62, v60++, v61);
          v58 += 2;
        }

        while (v58 != v59);
      }

      v63 = self->super._coordMapper;
      self->super._coordMapper = v19;
    }

    objc_sync_exit(selfCopy);

    coordMapper = self->super._coordMapper;
  }

  return coordMapper;
}

- (void)suspendChangeDescriptorNotificationsDuringBlock:(id)block
{
  blockCopy = block;
  if (self->_suspendNotify)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCategoryTranslator suspendChangeDescriptorNotificationsDuringBlock:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 377, 0, "not expecting multiple suspensions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  self->_suspendNotify = 1;
  blockCopy[2]();
  self->_suspendNotify = 0;
}

+ (unint64_t)tableStyleAreaForCategoryLevel:(unsigned __int8)level isLabel:(BOOL)label
{
  if (level <= 2)
  {
    if (level == 1)
    {
      v4 = !label;
      v5 = 5;
      v6 = 10;
    }

    else
    {
      if (level != 2)
      {
        goto LABEL_15;
      }

      v4 = !label;
      v5 = 6;
      v6 = 11;
    }
  }

  else
  {
    switch(level)
    {
      case 3u:
        v4 = !label;
        v5 = 7;
        v6 = 12;
        break;
      case 4u:
        v4 = !label;
        v5 = 8;
        v6 = 13;
        break;
      case 5u:
        v4 = !label;
        v5 = 9;
        v6 = 14;
        break;
      default:
LABEL_15:
        v8 = MEMORY[0x277D81150];
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTCategoryTranslator tableStyleAreaForCategoryLevel:isLabel:]", label);
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v11);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 403, 0, "Calling tableStyleAreaForCategoryLevel with an invalid level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
        return 0;
    }
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d
{
  row = d->_row;
  column = d->_column;
  v15 = row;
  v6 = sub_2211A8FF4(&column);
  if (v6 == 255)
  {
    v12 = d->_row;
    column = d->_column;
    v15 = v12;
    v13.receiver = self;
    v13.super_class = TSTCategoryTranslator;
    return [(TSTTableTranslator *)&v13 tableStyleAreaForCellUID:&column];
  }

  else
  {
    v7 = v6;
    v8 = d->_row;
    column = d->_column;
    v15 = v8;
    v9 = sub_2211A910C(&column);
    return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v10, v7, v9);
  }
}

- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d
{
  row = d._coord.row;
  v7 = objc_msgSend_groupLevelAtSummaryRow_(self, a2, d._coord.row, v3);
  if (v7 == 255)
  {
    v12 = objc_msgSend_groupLevelAtLabelRow_(self, v8, row, v9);
    if (v12 == 255)
    {
      v28.origin = objc_msgSend_headerRowRange(self->super._tableInfo, v8, v13, v14);
      v28.size = v16;
      coord = d._coord;
      if (TSUCellRect::contains(&v28, coord))
      {
        return 2;
      }

      v28.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v18, v19, v20);
      v28.size = v21;
      v22 = d._coord;
      if (TSUCellRect::contains(&v28, v22))
      {
        return 4;
      }

      v28.origin = objc_msgSend_headerColumnRange(self->super._tableInfo, v23, v24, v25);
      v28.size = v26;
      v27 = d._coord;
      if (TSUCellRect::contains(&v28, v27))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    v10 = v12;
    v11 = 1;
  }

  else
  {
    v10 = v7;
    v11 = 0;
  }

  return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v8, v10, v11);
}

- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)row
{
  var0 = row.var0;
  v6 = objc_msgSend_groupLevelAtSummaryRow_(self, a2, row.var0, v3);
  if (v6 != 255)
  {
    v9 = v6;
    v10 = 0;
LABEL_5:

    return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v7, v9, v10);
  }

  v11 = objc_msgSend_groupLevelAtLabelRow_(self, v7, var0, v8);
  if (v11 != 255)
  {
    v9 = v11;
    v10 = 1;
    goto LABEL_5;
  }

  v14 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v7, var0, v12);
  if (v14 == 0x7FFFFFFF)
  {
    return 1;
  }

  v16 = v14;
  baseTableModel = self->super._baseTableModel;

  return MEMORY[0x2821F9670](baseTableModel, sel_tableStyleAreaForRow_, v16, v15);
}

- (id)cellRegionForTableStyleArea:(unint64_t)area
{
  if (area <= 4)
  {
    if (area > 2)
    {
      if (area != 3)
      {
        v6 = objc_msgSend_footerRowRange(self, a2, 4, v3);
        goto LABEL_11;
      }

      v51 = objc_msgSend_actualHeaderColumnRange(self, a2, 3, v3);
    }

    else
    {
      if (area != 1)
      {
        if (area == 2)
        {
          v6 = objc_msgSend_headerRowRange(self, a2, 2, v3);
LABEL_11:
          v28 = objc_msgSend_regionFromRange_(TSTCellRegion, v7, v6, v7);
LABEL_12:
          v29 = v28;
          goto LABEL_21;
        }

        goto LABEL_26;
      }

      v51 = objc_msgSend_bodyRange(self, a2, 1, v3);
    }

    v29 = objc_msgSend_regionFromRange_(TSTCellRegion, v52, v51, v52);
    goto LABEL_20;
  }

  if (area - 5 < 5)
  {
    v30 = objc_msgSend_categoryLevelForTableStyleArea_(TSTSummaryModel, a2, area, v3);
    v34 = objc_msgSend_groupByForRows(self, v31, v32, v33);
    v14 = objc_msgSend_rowUIDSetForCategoryLevel_(v34, v35, v30, v36);

    v40 = objc_msgSend_viewMap(self, v37, v38, v39);
    v20 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v40, v41, v14, 1);

    v58.origin = objc_msgSend_range(self, v42, v43, v44);
    v58.size = v45;
    v46 = TSUCellRect::columns(&v58);
    v27 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v47, v20, v46, v47);
    goto LABEL_14;
  }

  if (area - 10 < 5)
  {
    v8 = objc_msgSend_categoryLevelForTableStyleArea_(TSTSummaryModel, a2, area, v3);
    v12 = objc_msgSend_groupByForRows(self, v9, v10, v11);
    v14 = objc_msgSend_labelRowUIDSetForCategoryLevel_labelRowVisibility_(v12, v13, v8, 0);

    v18 = objc_msgSend_viewMap(self, v15, v16, v17);
    v20 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v18, v19, v14, 1);

    v58.origin = objc_msgSend_range(self, v21, v22, v23);
    v58.size = v24;
    v25 = TSUCellRect::columns(&v58);
    v27 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v26, v20, v25, v26);
LABEL_14:
    v29 = v27;

    goto LABEL_15;
  }

  if (area == 15)
  {
    v28 = objc_msgSend_invalidRegion(TSTCellRegion, a2, 15, v3);
    goto LABEL_12;
  }

LABEL_26:
  v29 = objc_msgSend_invalidRegion(TSTCellRegion, a2, area, v3);
LABEL_15:
  if ((area & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
LABEL_20:
    v53 = objc_msgSend_indexesForSummaryAndLabelRows(self, v48, v49, v50);
    v56 = objc_msgSend_regionBySubtractingRowIndexes_(v29, v54, v53, v55);

    v29 = v56;
  }

LABEL_21:

  return v29;
}

- (void)setNumberOfHeaderColumns:(TSUViewColumnIndex)columns
{
  v6 = (columns.var0 - objc_msgSend_numberOfCategoryColumns(self, a2, *&columns.var0, v3));
  baseTableModel = self->super._baseTableModel;

  objc_msgSend_setNumberOfHeaderColumns_(baseTableModel, v5, v6, v7);
}

- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)d
{
  v6 = objc_msgSend_numberOfHeaderColumns(self, a2, *&d, v3);
  objc_msgSend_numberOfHeaderRows(self, v7, v8, v9);
  objc_msgSend_numberOfFooterRows(self, v10, v11, v12);
  objc_msgSend_numberOfRows(self, v13, v14, v15);

  return (MEMORY[0x2821F9670])(TSTTableInfo, sel_tableAreaForCellID_inTableWithHeaderColumns_headerRows_footerRows_totalRows_, d, v6);
}

- (id)translatedCellRangeName:(const void *)name usedSymbolicName:(BOOL *)symbolicName
{
  if (TSCERangeRef::isSpanningAllColumns(name) && (v9 = *name, v9 == *(name + 2)) && objc_msgSend_isSummaryRow_(self, v7, v9, v8))
  {
    v13 = objc_msgSend_viewMap(self, v10, v11, v12);
    v16 = objc_msgSend_rowUIDForRowIndex_(v13, v14, *name, v15);
    v18 = v17;

    v22 = objc_msgSend_groupByForRows(self, v19, v20, v21);
    v24 = objc_msgSend_groupNodeForGroupUid_(v22, v23, v16, v18);

    v27 = objc_msgSend_groupValueHierarchyForChart_(v24, v25, 0, v26);
    *symbolicName = 1;
    v31 = objc_msgSend_displayString(v27, v28, v29, v30);
  }

  else
  {
    isSpanningAllRows = TSCERangeRef::isSpanningAllRows(name);
    if (!isSpanningAllRows || ((*(name + 1) | *name) & 0xFFFF00000000) != 0)
    {
      v31 = 0;
      goto LABEL_10;
    }

    *symbolicName = 1;
    v24 = sub_2214AAEA8(isSpanningAllRows, v33, v34, v35);
    v31 = objc_msgSend_localizedStringForKey_value_table_(v24, v36, @"Category Column", &stru_2834BADA0, @"TSTables");
  }

LABEL_10:

  return v31;
}

- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8._row = objc_msgSend_baseRowIndexForViewRowIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8._row = objc_msgSend_baseRowIndexForChromeRowIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8._column = objc_msgSend_baseColumnIndexForViewColumnIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8._column = objc_msgSend_baseColumnIndexForChromeColumnIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index._row, v3);
  v8.var0 = objc_msgSend_viewRowIndexForBaseRowIndex_(v5, v6, index._row, v7);

  return v8;
}

- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index._row, v3);
  v8.var0 = objc_msgSend_chromeRowIndexForBaseRowIndex_(v5, v6, index._row, v7);

  return v8;
}

- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index._column, v3);
  v8.var0 = objc_msgSend_chromeColumnIndexForBaseColumnIndex_(v5, v6, index._column, v7);

  return v8;
}

- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index._column, v3);
  v8.var0 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v5, v6, index._column, v7);

  return v8;
}

- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8.var0 = objc_msgSend_chromeRowIndexForViewRowIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8.var0 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8.var0 = objc_msgSend_viewRowIndexForChromeRowIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8.var0 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (id)baseColumnIndexesForViewColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_baseColumnIndexesForViewColumnIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (id)baseRowIndexesForViewRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_baseRowIndexesForViewRowIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (id)viewColumnIndexesForBaseColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (id)viewRowIndexesForBaseRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_viewRowIndexesForBaseRowIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (id)chromeColumnIndexesForViewColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_chromeColumnIndexesForViewColumnIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (id)chromeRowIndexesForViewRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_chromeRowIndexesForViewRowIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (id)viewRowIndexesForChromeRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_viewRowIndexesForChromeRowIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (id)viewColumnIndexesForChromeColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(v8, v9, indexesCopy, v10);

  return v11;
}

- (TSKUIDStruct)columnUIDForBaseColumnIndex:(TSUModelColumnIndex)index
{
  v5 = objc_msgSend_baseMap(self, a2, *&index._column, v3);
  v8 = objc_msgSend_columnUIDForColumnIndex_(v5, v6, index._column, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_baseCellCoordForViewCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_baseCellCoordForChromeCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_viewCellCoordForBaseCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_chromeCellCoordForViewCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_viewCellCoordForChromeCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTCategoryTranslator *)self
{
  v7 = objc_msgSend_coordinateMapper(self, a3, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_chromeCellRefForViewCellRef_(v7, v8, a4, v9);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:(TSTCategoryTranslator *)self
{
  v7 = objc_msgSend_coordinateMapper(self, a3, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_chromeCellRefForBaseCellRef_(v7, v8, a4, v9);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTCategoryTranslator *)self
{
  v7 = objc_msgSend_coordinateMapper(self, a3, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_viewCellRefForBaseCellRef_(v7, v8, a4, v9);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTCategoryTranslator *)self
{
  v7 = objc_msgSend_coordinateMapper(self, a3, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_viewCellRefForChromeCellRef_(v7, v8, a4, v9);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTCategoryTranslator *)self
{
  v7 = objc_msgSend_coordinateMapper(self, a3, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_baseCellRefForViewCellRef_(v7, v8, a4, v9);
  }

  else
  {
    retstr->_ref.coordinate = 0;
    retstr->_ref._tableUID._lower = 0;
    retstr->_ref._tableUID._upper = 0;
  }

  return result;
}

- (id)viewColumnGridIndexesForBaseColumnGridIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_numberOfCategoryColumns(self->super._tableInfo, v5, v6, v7);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(indexesCopy, v9, 0, v8);

  return indexesCopy;
}

- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord
{
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_summaryMap(self, a2, *&coord, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_cellUIDForCellID_(v6, v7, *&coord, v8);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))))
  {
    v13 = objc_msgSend_viewMap(self, v10, v11, v12);
    v18[0] = v19;
    v18[1] = v20;
    v16 = objc_msgSend_cellIDForCellUID_(v13, v14, v18, v15);
  }

  else
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return v16;
}

- (TSUModelCellCoord)baseCellCoordForCellUID:(TSKUIDStructCoord *)d
{
  v5 = objc_msgSend_baseMap(self, a2, d, v3);
  row = d->_row;
  v11[0] = d->_column;
  v11[1] = row;
  v9 = objc_msgSend_cellIDForCellUID_(v5, v7, v11, v8);

  return v9;
}

- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_viewMap(self, a2, *&coord, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_cellUIDForCellID_(v6, v7, *&coord, v8);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))))
  {
    v13 = objc_msgSend_summaryMap(self, v10, v11, v12);
    v18[0] = v19;
    v18[1] = v20;
    v16 = objc_msgSend_cellIDForCellUID_(v13, v14, v18, v15);
  }

  else
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return v16;
}

- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v4 = *&index.var0;
  v6 = objc_msgSend_viewMap(self, a2, *&index.var0, v3);
  v9 = objc_msgSend_rowUIDForRowIndex_(v6, v7, v4, v8);
  v11 = v10;

  if (v9 | v11)
  {
    v15 = objc_msgSend_summaryMap(self, v12, v13, v14);
    v17._row = objc_msgSend_rowIndexForRowUID_(v15, v16, v9, v11);
  }

  else
  {
    return 0x7FFFFFFF;
  }

  return v17;
}

- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_viewMap(self, a2, *&index.var0, v3);
  v9 = objc_msgSend_columnUIDForColumnIndex_(v6, v7, index.var0, v8);
  v11 = v10;

  if (v9 | v11)
  {
    v15 = objc_msgSend_summaryMap(self, v12, v13, v14);
    v17._column = objc_msgSend_columnIndexForColumnUID_(v15, v16, v9, v11);
  }

  else
  {
    return 0x7FFF;
  }

  return v17;
}

- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)coord
{
  v7 = objc_msgSend_summaryMap(self, coord, *&a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_cellUIDForCellID_(v7, v8, *&a4, v9);
  }

  else
  {
    retstr->_column = 0u;
    retstr->_row = 0u;
  }

  return result;
}

- (id)baseCellRegionForViewCellRect:(TSUViewCellRect)rect
{
  size = rect._rect.size;
  origin = rect._rect.origin;
  v6 = objc_msgSend_viewMap(self, a2, *&rect._rect.origin, *&rect._rect.size);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v6, v7, origin, size);
  }

  else
  {
    *__p = 0u;
    v19 = 0u;
    *v17 = 0u;
  }

  v12 = objc_msgSend_baseMap(self, v9, v10, v11);
  v15 = objc_msgSend_cellRegionForUIDRange_(v12, v13, v17, v14);

  if (__p[1])
  {
    *&v19 = __p[1];
    operator delete(__p[1]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  return v15;
}

- (id)baseCellRegionForViewCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_viewMap(self, v5, v6, v7);
  v12 = objc_msgSend_baseMap(self, v9, v10, v11);

  if (v8 == v12)
  {
    v23 = regionCopy;
  }

  else
  {
    v16 = objc_msgSend_gatherer(TSTCellRegionGatherer, v13, v14, v15);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_2214B3730;
    v28 = &unk_278462B70;
    selfCopy = self;
    v17 = v16;
    v30 = v17;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v18, &v25, v19);
    v23 = objc_msgSend_gatheredCellRegion(v17, v20, v21, v22, v25, v26, v27, v28, selfCopy);
  }

  return v23;
}

- (id)viewCellRegionForBaseCellRect:(TSUModelCellRect)rect
{
  size = rect.var0.size;
  origin = rect.var0.origin;
  v6 = objc_msgSend_baseMap(self, a2, *&rect.var0.origin, *&rect.var0.size);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v6, v7, origin, size);
  }

  else
  {
    *__p = 0u;
    v19 = 0u;
    *v17 = 0u;
  }

  v12 = objc_msgSend_viewMap(self, v9, v10, v11);
  v15 = objc_msgSend_cellRegionForUIDRange_(v12, v13, v17, v14);

  if (__p[1])
  {
    *&v19 = __p[1];
    operator delete(__p[1]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  return v15;
}

- (id)viewCellRegionForBaseCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_viewMap(self, v5, v6, v7);
  v12 = objc_msgSend_baseMap(self, v9, v10, v11);

  if (v8 == v12)
  {
    v15 = regionCopy;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_2214B3AB0;
    v22 = sub_2214B3AC0;
    v23 = objc_alloc_init(TSTCellRegion);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2214B3AC8;
    v17[3] = &unk_27845F7D8;
    v17[4] = self;
    v17[5] = &v18;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v13, v17, v14);
    v15 = v19[5];
    _Block_object_dispose(&v18, 8);
  }

  return v15;
}

- (id)baseShuffleMapForViewShuffleMap:(id)map
{
  mapCopy = map;
  v8 = mapCopy;
  if (mapCopy)
  {
    v9 = objc_msgSend_sourceIndexes(mapCopy, v5, v6, v7);
    v12 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v10, v9, v11);
    v13 = objc_alloc(MEMORY[0x277D806D0]);
    Index = objc_msgSend_firstIndex(v12, v14, v15, v16);
    v21 = objc_msgSend_lastIndex(v12, v18, v19, v20);
    started = objc_msgSend_initWithStartIndex_endIndex_(v13, v22, Index, v21);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2214B3D58;
    v28[3] = &unk_278460FD0;
    v28[4] = self;
    v24 = started;
    v29 = v24;
    objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(v8, v25, v28, v26);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B3F44;
  v8[3] = &unk_278466030;
  v8[4] = self;
  v8[5] = &v9;
  v6[6] = d;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B4060;
  v7[3] = &unk_278466058;
  v7[4] = self;
  v7[5] = &v9;
  v5[5] = &v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B4154;
  v6[3] = &unk_278466080;
  v6[4] = self;
  v6[5] = &v9;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214B4254;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&d, v8, v7, v6, v5);
  v3 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (int)setCellStyle:(id)style ofRowAtIndex:(TSUViewRowIndex)index
{
  styleCopy = style;
  v9 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v7, index.var0, v8);
  if (v9 == 0x7FFFFFFF)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator setCellStyle:ofRowAtIndex:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 870, 0, "Categories: cannot set cell style for that row");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    v21 = 1;
  }

  else
  {
    v21 = objc_msgSend_setCellStyle_ofRowAtIndex_(self->super._baseTableModel, v10, styleCopy, v9);
  }

  return v21;
}

- (int)setTextStyle:(id)style ofRowAtIndex:(TSUViewRowIndex)index
{
  styleCopy = style;
  v9 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v7, index.var0, v8);
  if (v9 == 0x7FFFFFFF)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator setTextStyle:ofRowAtIndex:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 881, 0, "Categories: cannot set text style for that row");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    v21 = 1;
  }

  else
  {
    v21 = objc_msgSend_setTextStyle_ofRowAtIndex_(self->super._baseTableModel, v10, styleCopy, v9);
  }

  return v21;
}

- (id)p_defaultCellStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label
{
  baseTableModel = self->super._baseTableModel;
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, level, label);

  return objc_msgSend_defaultCellStyleForTableStyleArea_(baseTableModel, v5, isLabel, v7);
}

- (id)p_defaultTextStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label
{
  baseTableModel = self->super._baseTableModel;
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, level, label);

  return objc_msgSend_defaultTextStyleForTableStyleArea_(baseTableModel, v5, isLabel, v7);
}

- (void)p_defaultStylesOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label outCellStyle:(id *)style outTextStyle:(id *)textStyle
{
  baseTableModel = self->super._baseTableModel;
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, level, label);

  objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(baseTableModel, v9, isLabel, style, textStyle);
}

- (void)p_defaultStyleHandlesOfSummaryOrLabelRowAtLevel:(unsigned __int8)level isLabel:(BOOL)label styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, level, label);
  if (handle)
  {
    *handle = objc_msgSend_cellStyleHandleForKey_(cache, v10, isLabel, v11);
  }

  if (styleHandle)
  {
    *styleHandle = objc_msgSend_textStyleHandleForKey_(cache, v10, isLabel, v11);
  }
}

- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B4834;
  v9[3] = &unk_27845F958;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = default;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B488C;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B48E4;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B4948;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v10;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toLabelUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B4B80;
  v9[3] = &unk_27845F958;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = default;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B4BD8;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B4C30;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B4C94;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v10;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toLabelUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (int)setCellStyle:(id)style ofColumnAtIndex:(TSUViewColumnIndex)index
{
  styleCopy = style;
  v9 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v7, index.var0, v8);
  if (v9 == 0x7FFF)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator setCellStyle:ofColumnAtIndex:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 970, 0, "Categories: setting cell style on unknown column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    v21 = 1;
  }

  else
  {
    v21 = objc_msgSend_setCellStyle_ofColumnAtIndex_(self->super._baseTableModel, v10, styleCopy, v9);
  }

  return v21;
}

- (int)setTextStyle:(id)style ofColumnAtIndex:(TSUViewColumnIndex)index
{
  styleCopy = style;
  v9 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v7, index.var0, v8);
  if (v9 == 0x7FFF)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator setTextStyle:ofColumnAtIndex:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 981, 0, "Categories: setting text style on unknown column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    v21 = 1;
  }

  else
  {
    v21 = objc_msgSend_setTextStyle_ofColumnAtIndex_(self->super._baseTableModel, v10, styleCopy, v9);
  }

  return v21;
}

- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_2214B3AB0;
  v13 = sub_2214B3AC0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B50B8;
  v8[3] = &unk_27845EC10;
  v8[4] = self;
  v8[5] = &v9;
  v6[5] = &v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B5114;
  v7[3] = &unk_2784660A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B5178;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  objc_msgSend_p_applyViewColumnIndex_toCategoryColumnUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_2214B3AB0;
  v13 = sub_2214B3AC0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B5364;
  v8[3] = &unk_27845EC10;
  v8[4] = self;
  v8[5] = &v9;
  v6[5] = &v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B53C0;
  v7[3] = &unk_2784660A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B5424;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  objc_msgSend_p_applyViewColumnIndex_toCategoryColumnUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2214B3AB0;
  v16 = sub_2214B3AC0;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214B5668;
  v11[3] = &unk_2784660D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = source;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214B56C4;
  v10[3] = &unk_2784660F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = source;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B5720;
  v9[3] = &unk_278466080;
  v9[4] = self;
  v9[5] = &v12;
  v9[6] = source;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B5814;
  v7[3] = &unk_278466120;
  v7[4] = self;
  v7[5] = &v12;
  defaultCopy = default;
  v7[6] = source;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&d, v11, v10, v9, v7);
  v5 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2214B3AB0;
  v16 = sub_2214B3AC0;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214B5A5C;
  v11[3] = &unk_2784660D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = source;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214B5AB8;
  v10[3] = &unk_2784660F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = source;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B5B14;
  v9[3] = &unk_278466080;
  v9[4] = self;
  v9[5] = &v12;
  v9[6] = source;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B5C08;
  v7[3] = &unk_278466120;
  v7[4] = self;
  v7[5] = &v12;
  defaultCopy = default;
  v7[6] = source;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&d, v11, v10, v9, v7);
  v5 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  row = d->_row;
  column = d->_column;
  v31 = row;
  v9 = objc_msgSend_viewCellCoordForCellUID_(self, a2, &column, default);
  if (v9 != 0x7FFFFFFF && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v23 = objc_msgSend_cellStyleAtCellID_isDefault_(self, v8, v9, default);
    goto LABEL_20;
  }

  v12 = objc_msgSend_summaryCellVendor(self, v8, v9, v10);
  v15 = objc_msgSend_cellAtCellUID_(v12, v13, d, v14);

  v19 = objc_msgSend_cellStyle(v15, v16, v17, v18);

  if (v19)
  {
    if (default)
    {
      *default = 0;
    }

    v23 = objc_msgSend_cellStyle(v15, v20, v21, v22);
    goto LABEL_19;
  }

  v24 = d->_row;
  column = d->_column;
  v31 = v24;
  v25 = sub_2211A8FF4(&column);
  if (v25 != 255)
  {
    v26 = d->_row;
    column = d->_column;
    v31 = v26;
    if (sub_2211A910C(&column))
    {
      objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(self, v27, v25, 1);
    }

    else
    {
      objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(self, v27, v25, 0);
    }
    v23 = ;
    if (!default)
    {
      goto LABEL_19;
    }

    v28 = 1;
    goto LABEL_18;
  }

  v23 = 0;
  if (default)
  {
    v28 = 0;
LABEL_18:
    *default = v28;
  }

LABEL_19:

LABEL_20:

  return v23;
}

- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  row = d->_row;
  column = d->_column;
  v32 = row;
  v9 = objc_msgSend_viewCellCoordForCellUID_(self, a2, &column, default);
  if (v9 != 0x7FFFFFFF && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v24 = objc_msgSend_textStyleAtCellID_isDefault_(self, v8, v9, default);
    goto LABEL_14;
  }

  v12 = objc_msgSend_summaryCellVendor(self, v8, v9, v10);
  v15 = objc_msgSend_cellAtCellUID_(v12, v13, d, v14);

  v19 = objc_msgSend_textStyle(v15, v16, v17, v18);

  if (v19)
  {
    if (default)
    {
      *default = 0;
    }

    v23 = objc_msgSend_textStyle(v15, v20, v21, v22);
  }

  else
  {
    v25 = d->_row;
    column = d->_column;
    v32 = v25;
    v26 = sub_2211A8FF4(&column);
    if (v26 == 255)
    {
      v24 = 0;
      if (default)
      {
        *default = 0;
      }

      goto LABEL_13;
    }

    v27 = d->_row;
    column = d->_column;
    v32 = v27;
    v28 = sub_2211A910C(&column);
    v23 = objc_msgSend_p_defaultTextStyleOfSummaryOrLabelRowAtLevel_isLabel_(self, v29, v26, v28);
  }

  v24 = v23;
LABEL_13:

LABEL_14:

  return v24;
}

- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B6140;
  v9[3] = &unk_2784660D0;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = default;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B61C8;
  v8[3] = &unk_278466148;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B62E4;
  v7[3] = &unk_278466080;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B6410;
  v6[3] = &unk_278466170;
  v6[4] = self;
  v6[5] = &v10;
  v6[6] = default;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&d, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B6650;
  v9[3] = &unk_2784660D0;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = default;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B66D8;
  v8[3] = &unk_278466148;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B67F4;
  v7[3] = &unk_278466080;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B6920;
  v6[3] = &unk_278466170;
  v6[4] = self;
  v6[5] = &v10;
  v6[6] = default;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&d, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_2214B3AB0;
  v28 = sub_2214B3AC0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2214B3AB0;
  v22 = sub_2214B3AC0;
  v23 = 0;
  tableInfo = self->super._tableInfo;
  baseTableModel = self->super._baseTableModel;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2214B6C10;
  v17[3] = &unk_278466198;
  v17[6] = self;
  v17[7] = cache;
  v17[4] = &v24;
  v17[5] = &v18;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2214B6C84;
  v16[3] = &unk_2784661C0;
  v16[6] = self;
  v16[7] = cache;
  v16[4] = &v24;
  v16[5] = &v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2214B6CF8;
  v13[3] = &unk_2784661E8;
  v14 = handle != 0;
  v13[7] = tableInfo;
  v13[8] = cache;
  v13[5] = &v24;
  v13[6] = &v18;
  v15 = styleHandle != 0;
  v13[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214B6ED8;
  v11[3] = &unk_278466210;
  defaultCopy = default;
  v11[6] = baseTableModel;
  v11[7] = cache;
  v11[4] = &v24;
  v11[5] = &v18;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&d, v17, v16, v13, v11);
  if (handle)
  {
    *handle = v25[5];
  }

  if (styleHandle)
  {
    *styleHandle = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)d
{
  v6 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, v3);
  if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCategoryTranslator conditionalStyleSetAtCellID:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1291, 0, "Categories: cannot get conditional style for that cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_conditionalStyleSetAtBaseCellCoord_(self->super._baseTableModel, v5, v6, v7);
  }

  return v8;
}

- (id)metadataForRowIndex:(TSUViewRowIndex)index
{
  v4 = *&index.var0;
  v6 = objc_msgSend_hiddenStates(self->super._tableInfo, a2, *&index.var0, v3);
  v9 = objc_msgSend_hidingActionForRowAtIndex_(v6, v7, v4, v8);

  v12 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v10, v4, v11);
  if (v12 == 0x7FFFFFFF)
  {
    v15 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v13, v4, v14);
    if (v15 == 0x7FFFFFFF)
    {
      v19 = 0;
    }

    else
    {
      v20 = v15;
      v21 = objc_msgSend_summaryModel(self->super._tableInfo, v16, v17, v18);
      v19 = objc_msgSend_metadataForRowIndex_hidingAction_(v21, v22, v20, v9);
    }
  }

  else
  {
    v19 = objc_msgSend_metadataForRowIndex_hidingAction_(self->super._baseTableModel, v13, v12, v9);
  }

  return v19;
}

- (id)metadataForColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_hiddenStates(self->super._tableInfo, a2, *&index.var0, v3);
  v9 = objc_msgSend_hidingActionForColumnAtIndex_(v6, v7, index.var0, v8);

  v12 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v10, index.var0, v11);
  if (v12 == 0x7FFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_metadataForColumnIndex_hidingAction_(self->super._baseTableModel, v13, v12, v9);
  }

  return v14;
}

- (id)stringAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  v10 = cellCopy;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2214B3AB0;
  v23 = sub_2214B3AC0;
  v24 = 0;
  if (cellCopy)
  {
    v11 = objc_msgSend_formattedValue(cellCopy, v7, v8, v9);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2214B7458;
    v18[3] = &unk_278466238;
    v18[5] = &v19;
    v18[6] = d;
    v18[4] = self;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2214B751C;
    v17[3] = &unk_278466148;
    v17[5] = &v19;
    v17[6] = d;
    v17[4] = self;
    v15 = &v19;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2214B75A4;
    v16[3] = &unk_278466260;
    v16[4] = &v19;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2214B75D0;
    v13[3] = &unk_278466288;
    v13[4] = self;
    v14 = 0;
    objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, v7, *&d, v18, v17, v16, v13);
    v11 = v20[5];
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

- (id)regionForValueOrCommentCellsInRange:(TSUViewCellRect)range
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator regionForValueOrCommentCellsInRange:]", *&range._rect.size);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 1362, 0, "Categories: cannot resolve region for cell rect");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border
{
  cellCopy = cell;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2214B78C4;
  v20[3] = &unk_2784662B0;
  v20[4] = self;
  v21 = cellCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2214B7F98;
  v18[3] = &unk_2784662D8;
  v18[4] = self;
  v19 = v21;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2214B828C;
  v15[3] = &unk_278466300;
  v15[4] = self;
  dCopy = d;
  v16 = v19;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2214B8344;
  v12[3] = &unk_278466328;
  v12[4] = self;
  v13 = v16;
  borderCopy = border;
  v9 = v16;
  d._coord.row = objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, v10, *&d, v20, v18, v15, v12);

  return d._coord.row;
}

- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text
{
  textCopy = text;
  if (objc_msgSend_isSummaryRow_(self, a2, *&d, *&d))
  {
    v12 = objc_msgSend_coordinateMapper(self, v9, v10, v11);
    v15 = objc_msgSend_summaryCellCoordForViewCellCoord_(v12, v13, *&d, v14);

    v19 = objc_msgSend_summaryModel(self, v16, v17, v18);
    RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v19, v20, value, v15, textCopy);

    return RichTextAttributesIfPlainText;
  }

  else
  {
    v24 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&d, v11);
    baseTableModel = self->super._baseTableModel;

    return objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(baseTableModel, v23, value, v24, textCopy);
  }
}

- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  row = d->_row;
  column = d->_column;
  v29 = row;
  v11 = sub_2211A8FF4(&column);
  if (v11 == 255)
  {
    v18 = objc_msgSend_viewMap(self, v8, v9, v10);
    v19 = d->_row;
    column = d->_column;
    v29 = v19;
    v22 = objc_msgSend_cellIDForCellUID_(v18, v20, &column, v21);

    v25 = v22 == 0x7FFFFFFF || (v22 & 0xFFFF00000000) == 0x7FFF00000000;
    v26 = !v25;
    if (!v25)
    {
      DefaultCell_forCellID = objc_msgSend_getDefaultCell_forCellID_(self, v24, cellCopy, v22);
    }

    if (v26)
    {
      DefaultCell_forTableStyleArea = DefaultCell_forCellID;
    }

    else
    {
      DefaultCell_forTableStyleArea = 2;
    }
  }

  else
  {
    v12 = d->_row;
    column = d->_column;
    v29 = v12;
    v13 = sub_2211A910C(&column);
    isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v14, v11, v13);
    DefaultCell_forTableStyleArea = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v16, cellCopy, isLabel);
  }

  return DefaultCell_forTableStyleArea;
}

- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d
{
  row = d->_row;
  v20[0] = d->_column;
  v20[1] = row;
  v8 = objc_msgSend_viewCellCoordForCellUID_(self, a2, v20, v3);
  if (v8 != 0x7FFFFFFF && (v8 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    return objc_msgSend_hasFormulaAtCellID_(self, v7, v8, v9);
  }

  v11 = objc_msgSend_summaryCellVendor(self, v7, v8, v9);
  v14 = objc_msgSend_cellAtCellUID_(v11, v12, d, v13);

  hasFormula = objc_msgSend_hasFormula(v14, v15, v16, v17);
  return hasFormula;
}

- (int)p_applyViewCellCoord:(TSUViewCellCoord)coord toSummaryUsingBlock:(id)block toLabelUsingBlock:(id)usingBlock toCategoryColumnUsingBlock:(id)columnUsingBlock toBaseUsingBlock:(id)baseUsingBlock
{
  blockCopy = block;
  usingBlockCopy = usingBlock;
  columnUsingBlockCopy = columnUsingBlock;
  baseUsingBlockCopy = baseUsingBlock;
  v19 = objc_msgSend_viewMap(self, v16, v17, v18);
  v60.origin = objc_msgSend_range(v19, v20, v21, v22);
  v60.size = v23;
  coord = coord._coord;
  if ((TSUCellRect::contains(&v60, coord) & 1) == 0)
  {
    goto LABEL_27;
  }

  v29 = objc_msgSend_groupLevelAtSummaryRow_(self, v25, coord._coord.row, v26);
  if (v29 != 255)
  {
    v60 = 0;
    v61 = 0u;
    if (v19)
    {
      objc_msgSend_cellUIDForCellID_(v19, v27, *&coord, v28);
      if (v60 != 0uLL && v61 != 0)
      {
        v32 = objc_msgSend_summaryCellCoordForViewCellCoord_(self, v30, *&coord, v31);
        *&v58[0] = v32;
        if (!sub_2211A8E4C(v61, *(&v61 + 1)))
        {
          v35 = MEMORY[0x277D81150];
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCategoryTranslator p_applyViewCellCoord:toSummaryUsingBlock:toLabelUsingBlock:toCategoryColumnUsingBlock:toBaseUsingBlock:]", v34, *&v58[0]);
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v38);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 1544, 0, "summary row does not have a valid summary row uid");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
        }

        v44 = 1;
        if (blockCopy && v32 != 0x7FFFFFFFLL && (v32 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          v45 = blockCopy[2](blockCopy, v58, &v60, v29);
LABEL_26:
          v44 = v45;
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

LABEL_27:
    v44 = 1;
    goto LABEL_28;
  }

  v48 = objc_msgSend_groupLevelAtLabelRow_(self, v27, coord._coord.row, v28);
  if (v48 == 255)
  {
    if (coord._coord.column)
    {
      v60 = 0;
      v61 = 0u;
      if (v19)
      {
        objc_msgSend_cellUIDForCellID_(v19, v46, *&coord, v47);
        if (v60 != 0uLL && v61 != 0)
        {
          v53 = objc_msgSend_baseMap(self, v50, v51, v52);
          v58[0] = v60;
          v58[1] = v61;
          v56 = objc_msgSend_cellIDForCellUID_(v53, v54, v58, v55);
          v59 = v56;

          v44 = 1;
          if (baseUsingBlockCopy && v56 != 0x7FFFFFFFLL && (v56 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v45 = baseUsingBlockCopy[2](baseUsingBlockCopy, &v59, &v60);
            goto LABEL_26;
          }

          goto LABEL_28;
        }
      }
    }

    else if (columnUsingBlockCopy)
    {
      v45 = columnUsingBlockCopy[2](columnUsingBlockCopy, coord._coord.row);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v60.origin = objc_msgSend_columnUIDForColumnIndex_(v19, v46, coord._coord.column, v47);
  v60.size = v49;
  v44 = 1;
  if (usingBlockCopy && *&v60.origin | *&v49)
  {
    v45 = usingBlockCopy[2](usingBlockCopy, v48, &v60);
    goto LABEL_26;
  }

LABEL_28:

  return v44;
}

- (void)p_applyViewRowIndex:(TSUViewRowIndex)index toSummaryUsingBlock:(id)block toLabelUsingBlock:(id)usingBlock toBaseUsingBlock:(id)baseUsingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock
{
  v10 = *&index.var0;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  baseUsingBlockCopy = baseUsingBlock;
  boundsUsingBlockCopy = boundsUsingBlock;
  v19 = objc_msgSend_viewMap(self, v16, v17, v18);
  v22 = objc_msgSend_rowUIDForRowIndex_(v19, v20, v10, v21);
  v24 = v23;
  v43[0] = v22;
  v43[1] = v23;

  if (!(v22 | v24))
  {
    goto LABEL_6;
  }

  v28 = objc_msgSend_baseMap(self, v25, v26, v27);
  v42 = objc_msgSend_rowIndexForRowUID_(v28, v29, v22, v24);

  if (v42 != 0x7FFFFFFF)
  {
    baseUsingBlockCopy[2](baseUsingBlockCopy, &v42, v43);
    goto LABEL_10;
  }

  v33 = objc_msgSend_groupByForRows(self, v30, v31, v32);
  v34 = sub_2211A8DC8(v22, v24);
  v36 = objc_msgSend_groupNodeForGroupUid_(v33, v35, v34, v35);

  if (v36)
  {
    if (sub_2211A8E20(v22, v24))
    {
      v40 = objc_msgSend_groupLevel(v36, v37, v38, v39) + 1;
      v41 = usingBlockCopy;
    }

    else
    {
      v40 = objc_msgSend_groupLevel(v36, v37, v38, v39);
      v41 = blockCopy;
    }

    v41[2](v41, v40);
  }

  else
  {
LABEL_6:
    boundsUsingBlockCopy[2](boundsUsingBlockCopy);
  }

LABEL_10:
}

- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)index toCategoryColumnUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock
{
  blockCopy = block;
  usingBlockCopy = usingBlock;
  boundsUsingBlockCopy = boundsUsingBlock;
  v16 = blockCopy;
  if (index.var0)
  {
    v16 = boundsUsingBlockCopy;
    if (index.var0 != 0x7FFF)
    {
      v17 = objc_msgSend_viewMap(self, v12, v13, v14);
      v20 = objc_msgSend_columnUIDForColumnIndex_(v17, v18, index.var0, v19);
      v22 = v21;
      v40 = v20;
      v41 = v21;

      if (v20 | v22)
      {
        v26 = objc_msgSend_baseMap(self, v23, v24, v25, v40, v41);
        v28 = objc_msgSend_columnIndexForColumnUID_(v26, v27, v20, v22);

        if (v28 != 0x7FFF)
        {
          usingBlockCopy[2](usingBlockCopy, v28, &v40);
          goto LABEL_8;
        }

        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTCategoryTranslator p_applyViewColumnIndex:toCategoryColumnUsingBlock:toBaseUsingBlock:toBeyondBoundsUsingBlock:]", v30);
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v34);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 1636, 0, "Categories: this column is not is not in the base table");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
      }

      v16 = boundsUsingBlockCopy;
    }
  }

  v16[2]();
LABEL_8:
}

- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)d
{
  v7 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, v3);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = objc_msgSend_summaryCellCoordForViewCellCoord_(self, v6, *&d, v8);
    hasFormulaAtCellCoord = 0;
    if (v13 != 0x7FFFFFFF && (v13 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v15 = objc_msgSend_summaryModel(self, v10, v11, v12);
      hasFormulaAtCellCoord = objc_msgSend_hasFormulaAtCellCoord_(v15, v16, v13, v17);
    }

    return hasFormulaAtCellCoord;
  }

  else
  {
    baseTableModel = self->super._baseTableModel;

    return MEMORY[0x2821F9670](baseTableModel, sel_hasFormulaAtBaseCellCoord_, v7, v8);
  }
}

- (id)formulaAtCellID:(TSUViewCellCoord)d
{
  v7 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, v3);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = objc_msgSend_summaryCellCoordForViewCellCoord_(self, v6, *&d, v8);
    v9 = 0;
    if (v13 != 0x7FFFFFFF && (v13 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v14 = objc_msgSend_summaryModel(self, v10, v11, v12);
      v9 = objc_msgSend_formulaAtCellCoord_(v14, v15, v13, v16);
    }
  }

  else
  {
    v9 = objc_msgSend_formulaAtBaseCellCoord_(self->super._baseTableModel, v6, v7, v8);
  }

  return v9;
}

- (double)heightOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default
{
  v5 = *&index.var0;
  v7 = objc_msgSend_viewMap(self, a2, *&index.var0, default);
  v10 = objc_msgSend_rowUIDForRowIndex_(v7, v8, v5, v9);
  v12 = v11;

  v16 = objc_msgSend_baseMap(self, v13, v14, v15);
  v18 = objc_msgSend_rowIndexForRowUID_(v16, v17, v10, v12);

  if (v18 == 0x7FFFFFFF)
  {
    if (sub_2211A8E20(v10, v12))
    {
      v20 = sub_2211A8DC8(v10, v12);
      v22 = v21;
      v25 = objc_msgSend_groupByForRows(self, v21, v23, v24);
      v27 = objc_msgSend_groupNodeForGroupUid_(v25, v26, v20, v22);

      if (v27)
      {
        v31 = objc_msgSend_summaryModel(self, v28, v29, v30);
        v35 = objc_msgSend_groupLevel(v27, v32, v33, v34);
        objc_msgSend_labelRowHeightAtCategoryLevel_(v31, v36, (v35 + 1), v37);
LABEL_12:
        v64 = v38;

LABEL_14:
        if (default)
        {
          *default = v64 == 0.0;
        }

        return v64;
      }
    }

    else
    {
      if (!sub_2211A8E4C(v10, v12))
      {
        v44 = MEMORY[0x277D81150];
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTCategoryTranslator heightOfRowAtIndex:isDefault:]", v43);
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v47);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 1695, 0, "uid must be label or summary");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
      }

      v53 = objc_msgSend_groupByForRows(self, v41, v42, v43);
      v27 = objc_msgSend_groupNodeForGroupUid_(v53, v54, v10, v12);

      if (v27)
      {
        v31 = objc_msgSend_summaryModel(self, v55, v56, v57);
        v61 = objc_msgSend_groupLevel(v27, v58, v59, v60);
        objc_msgSend_summaryRowHeightAtCategoryLevel_(v31, v62, v61, v63);
        goto LABEL_12;
      }
    }

    v64 = 0.0;
    goto LABEL_14;
  }

  baseTableModel = self->super._baseTableModel;

  objc_msgSend_heightOfRowAtIndex_isDefault_(baseTableModel, v19, v18, default);
  return result;
}

- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default
{
  v6 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, index.var0, default);
  if (v6 == 0x7FFF)
  {
    v10 = objc_msgSend_summaryModel(self->super._tableInfo, v7, v8, v9);
    objc_msgSend_categoryColumnWidth(v10, v11, v12, v13);
    v15 = v14;

    return v15;
  }

  else
  {
    v17 = v6;
    baseTableModel = self->super._baseTableModel;

    objc_msgSend_widthOfColumnAtIndex_isDefault_(baseTableModel, v7, v17, default);
  }

  return result;
}

- (id)rowHeights
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator rowHeights]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 1725, 0, "Categories: cannot get row heights.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (id)columnWidths
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator columnWidths]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 1731, 0, "Categories: cannot get column widths.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (void)setHeight:(double)height ofRowAtIndex:(TSUViewRowIndex)index
{
  v7 = objc_msgSend_baseRowIndexForViewRowIndex_(self, a2, index.var0, v4);
  if (v7 == 0x7FFFFFFF)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCategoryTranslator setHeight:ofRowAtIndex:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1742, 0, "Categories: cannot set height of this row");

    v19 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v19, v16, v17, v18);
  }

  else
  {
    v20 = v7;
    baseTableModel = self->super._baseTableModel;

    objc_msgSend_setHeight_ofRowAtIndex_(baseTableModel, v8, v20, v9, height);
  }
}

- (void)setWidth:(double)width ofColumnAtIndex:(TSUViewColumnIndex)index
{
  v7 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, index.var0, v4);
  if (v7 == 0x7FFF)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCategoryTranslator setWidth:ofColumnAtIndex:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1753, 0, "Categories: cannot set width of this column");

    v19 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v19, v16, v17, v18);
  }

  else
  {
    v20 = v7;
    baseTableModel = self->super._baseTableModel;

    objc_msgSend_setWidth_ofColumnAtIndex_(baseTableModel, v8, v20, v9, width);
  }
}

- (void)removeRowsAtIndex:(TSUViewRowIndex)index count:(TSUViewRowIndex)count
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator removeRowsAtIndex:count:]", *&count.var0);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 1758, 0, "Categories: row removal method is not supported.");

  v13 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
}

- (void)removeColumnsAtIndex:(TSUViewColumnIndex)index count:(TSUViewColumnIndex)count
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator removeColumnsAtIndex:count:]", *&count.var0);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 1762, 0, "Categories: column removal method is not supported.");

  v13 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
}

- (void)postCommentNotificationForStorage:(id)storage atViewCellCoord:(TSUViewCellCoord)coord notificationKey:(id)key
{
  storageCopy = storage;
  keyCopy = key;
  v12 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&coord, v10);
  if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCategoryTranslator postCommentNotificationForStorage:atViewCellCoord:notificationKey:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1772, 0, "Categories: cannot post notification for comment/cell/key");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  else
  {
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self->super._baseTableModel, v11, storageCopy, v12, keyCopy);
  }
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps
{
  mapsCopy = maps;
  storageCopy = storage;
  v12 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&d, v10);
  if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCategoryTranslator commentHostingAtCellID:forCommentStorage:updateCommentMaps:]", v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 1782, 0, "Categories: cannot resolve comment for cell/storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_updateCommentMaps_(self->super._baseTableModel, v11, v12, storageCopy, mapsCopy);
  }

  return v14;
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)d
{
  v6 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, v3);
  if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCategoryTranslator commentHostingAtCellID:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1793, 0, "Categories: cannot resolve comment for cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_commentHostingAtBaseCellCoord_(self->super._baseTableModel, v5, v6, v7);
  }

  return v8;
}

- (void)removeRowsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_viewMap(self, v5, v6, v7);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v8, v9, indexesCopy, v10);
  }

  else
  {
    __p = 0;
    v67 = 0;
    v68 = 0;
  }

  v15 = __p;
  if (v67 != __p)
  {
    v16 = objc_msgSend_summaryModel(self->super._tableInfo, v12, v13, v14);
    objc_msgSend_removeCategoryColumnCellsForRows_(v16, v17, &__p, v18);

    v22 = objc_msgSend_calcEngine(self->super._tableInfo, v19, v20, v21);
    objc_msgSend_beginBatchingGroupCellDirtying(v22, v23, v24, v25);
    v29 = objc_msgSend_groupByForRows(self, v26, v27, v28);
    objc_msgSend_startOfGroupingChangesBatch(v29, v30, v31, v32);
    v36 = objc_msgSend_categoryOwner(self->super._tableInfo, v33, v34, v35);
    v65[0] = objc_msgSend_tableUID(self->super._tableInfo, v37, v38, v39);
    v65[1] = v40;
    objc_msgSend_willRemoveRows_tableUID_(v36, v40, &__p, v65);

    v44 = objc_msgSend_categoryOrder(self->super._tableInfo, v41, v42, v43);
    objc_msgSend_removeRowUids_(v44, v45, &__p, v46);

    v50 = objc_msgSend_baseMap(self, v47, v48, v49);
    v53 = objc_msgSend_rowIndexesForUIDs_(v50, v51, &__p, v52);

    objc_msgSend_removeRowsAtBaseIndexes_(self->super._baseTableModel, v54, v53, v55);
    objc_msgSend_endOfGroupingChangesBatch(v29, v56, v57, v58);
    objc_msgSend_endBatchingGroupCellDirtying(v22, v59, v60, v61);
    objc_msgSend_resetViewMap(self, v62, v63, v64);

    v15 = __p;
  }

  if (v15)
  {
    v67 = v15;
    operator delete(v15);
  }
}

- (void)removeColumnsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_viewMap(self, v5, v6, v7);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v8, v9, indexesCopy, v10);
  }

  else
  {
    __p = 0;
    v49 = 0;
    v50 = 0;
  }

  v15 = __p;
  if (v49 != __p)
  {
    v16 = objc_msgSend_baseMap(self, v12, v13, v14);
    v19 = objc_msgSend_columnIndexesForUIDs_(v16, v17, &__p, v18);

    v23 = objc_msgSend_summaryMap(self, v20, v21, v22);
    v26 = objc_msgSend_columnIndexesForUIDs_(v23, v24, &__p, v25);

    objc_msgSend_removeColumnsAtBaseIndexes_(self->super._baseTableModel, v27, v19, v28);
    v32 = objc_msgSend_summaryModel(self, v29, v30, v31);
    objc_msgSend_removeColumnsAtSummaryIndexes_(v32, v33, v26, v34);

    objc_msgSend_resetViewMap(self, v35, v36, v37);
    v41 = objc_msgSend_groupByForRows(self, v38, v39, v40);
    objc_msgSend_rebuildAllAggFormulas(v41, v42, v43, v44);
    objc_msgSend_didChangeGroupByStructure(v41, v45, v46, v47);

    v15 = __p;
  }

  if (v15)
  {
    v49 = v15;
    operator delete(v15);
  }
}

- (void)moveColumnRange:(_NSRange)range toColumnIndex:(TSUViewColumnIndex)index
{
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_viewMap(self, a2, range.location, range.length);
  v10 = v8;
  if (v8)
  {
    objc_msgSend_columnUIDsForColumnRange_(v8, v9, location, length);
  }

  else
  {
    __p = 0;
    v65 = 0;
    v66 = 0;
  }

  v14 = objc_msgSend_viewMap(self, v11, v12, v13);
  v15 = location <= index.var0;
  v18 = objc_msgSend_columnUIDForColumnIndex_(v14, v16, (index.var0 - v15), v17);
  v20 = v19;

  v24 = objc_msgSend_baseMap(self, v21, v22, v23);
  v27 = objc_msgSend_columnRangeForUIDs_(v24, v25, &__p, v26);
  v29 = v28;

  v33 = objc_msgSend_baseMap(self, v30, v31, v32);
  LODWORD(v18) = objc_msgSend_columnIndexForColumnUID_(v33, v34, v18, v20);

  v37 = v18 + v15;
  if (v18 == 0x7FFF)
  {
    v37 = 0x7FFF;
  }

  if (v27 == 0x7FFFFFFFFFFFFFFFLL || v37 == 0x7FFF)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTCategoryTranslator moveColumnRange:toColumnIndex:]", v36);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v60, v56, v59, 1873, 0, "Categories: could not move column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
  }

  else
  {
    objc_msgSend_moveBaseColumnRange_toColumnIndex_(self->super._baseTableModel, v35, v27, v29, v37);
    objc_msgSend_resetViewMapAndNotify(self, v38, v39, v40);
    v44 = objc_msgSend_tableInfo(self, v41, v42, v43);
    v48 = objc_msgSend_groupBy(v44, v45, v46, v47);

    objc_msgSend_rebuildAllAggFormulas(v48, v49, v50, v51);
    objc_msgSend_didChangeGroupByStructure(v48, v52, v53, v54);
  }

  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }
}

- (TSUViewCellCoord)cellIDForCellContainingRichTextStorage:(id)storage
{
  storageCopy = storage;
  v8 = objc_msgSend_baseCellCoordForCellContainingRichTextStorage_(self->super._baseTableModel, v5, storageCopy, v6);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCategoryTranslator cellIDForCellContainingRichTextStorage:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1894, 0, "Categories: cannot resolve cell for this rich text storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v20 = 0x7FFF7FFFFFFFLL;
  }

  else
  {
    v20 = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v7, v8, v9);
  }

  return v20;
}

- (BOOL)hasSpillRangesIntersectingCellRegion:(id)region
{
  v5 = objc_msgSend_baseCellRegionForViewCellRegion_(self, a2, region, v3);
  if (objc_msgSend_isValid(v5, v6, v7, v8))
  {
    hasSpillRangesIntersectingCellRegion = objc_msgSend_hasSpillRangesIntersectingCellRegion_(self->super._baseTableModel, v9, v5, v10);
  }

  else
  {
    hasSpillRangesIntersectingCellRegion = 0;
  }

  return hasSpillRangesIntersectingCellRegion;
}

- (BOOL)mergeCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  v5 = objc_msgSend_baseCellRegionForViewCellRect_(self, a2, *&range._rect.origin, *&range._rect.size);
  if (objc_msgSend_isRectangle(v5, v6, v7, v8) && objc_msgSend_cellCount(v5, v9, v10, v11) == size.numberOfRows * size.numberOfColumns)
  {
    v13 = objc_msgSend_mergeOwner(self->super._baseTableModel, v9, v12, v11);
    v17 = objc_msgSend_boundingModelCellRect(v5, v14, v15, v16);
    inserted = objc_msgSend_insertBaseMergeRangeRemovingOverlaps_(v13, v18, v17, v18);
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCategoryTranslator mergeCellRange:]", v11);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1919, 0, "attempting to merge a disjoint cell region");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    inserted = 0;
  }

  return inserted;
}

- (BOOL)unmergeCellRange:(TSUViewCellRect)range
{
  v4 = objc_msgSend_baseCellRegionForViewCellRect_(self, a2, *&range._rect.origin, *&range._rect.size);
  isRectangle = objc_msgSend_isRectangle(v4, v5, v6, v7);
  if (isRectangle)
  {
    v12 = objc_msgSend_mergeOwner(self->super._baseTableModel, v8, v9, v10);
    v16 = objc_msgSend_boundingModelCellRect(v4, v13, v14, v15);
    objc_msgSend_removeBaseMergeRange_(v12, v17, v16, v17);
  }

  return isRectangle;
}

- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)d
{
  v6 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&d, v3);
  v12 = 0x7FFF7FFFFFFFLL;
  if ((objc_msgSend_hasMergeRanges(v6, v7, v8, v9) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v10, *&d, v11);
  v16 = 0;
  if (v14 == 0x7FFFFFFF || (v14 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_9;
  }

  v38.origin = objc_msgSend_mergedRangeForBaseCellCoord_(v6, v13, v14, v15);
  v38.size = v17;
  if (!TSUCellRect::isValid(&v38))
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v19 = objc_msgSend_viewCellRegionForBaseCellRect_(self, v18, *&v38.origin, *&v38.size);
  if ((objc_msgSend_isRectangle(v19, v20, v21, v22) & 1) == 0)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTCategoryTranslator mergeRangeAtCellID:]", v25);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 1949, 0, "found a disjoint merge range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
  }

  v12 = objc_msgSend_boundingViewCellRect(v19, v23, v24, v25);
  v16 = v35;

LABEL_9:
  v36 = v12;
  v37 = v16;
  result._rect.size = v37;
  result._rect.origin = v36;
  return result;
}

- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)d
{
  dCopy = d;
  v6 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&d, v3);
  if (objc_msgSend_hasMergeRanges(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v10, *&dCopy, v11);
    if (v13 != 0x7FFFFFFF && (v13 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v15 = objc_msgSend_mergeOriginForBaseCellCoord_(v6, v12, v13, v14);
      dCopy = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v16, v15, v17);
    }
  }

  return dCopy;
}

- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  if (objc_msgSend_hasMergeRanges(v6, v7, v8, v9))
  {
    v11 = objc_msgSend_baseCellRegionForViewCellRect_(self, v10, origin, size);
    if (objc_msgSend_isValid(v11, v12, v13, v14))
    {
      v17 = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v6, v15, v11, v16);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->super._baseTableModel, v5, v6, v7);
  if (objc_msgSend_hasMergeRanges(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v12, regionCopy, v13);
    if (objc_msgSend_isValid(v14, v15, v16, v17))
    {
      v20 = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v8, v18, v14, v19);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  if (objc_msgSend_hasMergeRanges(v6, v7, v8, v9))
  {
    v11 = objc_msgSend_baseCellRegionForViewCellRect_(self, v10, origin, size);
    if (objc_msgSend_isValid(v11, v12, v13, v14))
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2214BAA1C;
      v19[3] = &unk_2784611A8;
      v20 = v6;
      v21 = &v22;
      objc_msgSend_enumerateModelCellRectsUsingBlock_(v11, v15, v19, v16);
      v17 = *(v23 + 24);

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (BOOL)hasMergeRangesIntersectingCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->super._baseTableModel, v5, v6, v7);
  if (objc_msgSend_hasMergeRanges(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v12, regionCopy, v13);
    if (objc_msgSend_isValid(v14, v15, v16, v17))
    {
      hasMergeRangesIntersectingBaseCellRegion = objc_msgSend_hasMergeRangesIntersectingBaseCellRegion_(v8, v18, v14, v19);
    }

    else
    {
      hasMergeRangesIntersectingBaseCellRegion = 0;
    }
  }

  else
  {
    hasMergeRangesIntersectingBaseCellRegion = 0;
  }

  return hasMergeRangesIntersectingBaseCellRegion;
}

- (id)mergedGridIndicesForDimension:(int64_t)dimension
{
  v6 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, dimension, v3);
  v9 = objc_msgSend_mergedGridIndicesForDimension_(v6, v7, dimension, v8);

  if (dimension)
  {
    v13 = objc_msgSend_viewColumnGridIndexesForBaseColumnGridIndexes_(self, v10, v9, v12);

    v9 = v13;
  }

  else
  {
    v38.origin = objc_msgSend_bodyRowRange(self->super._baseTableModel, v10, v11, v12);
    v38.size = v14;
    v15 = TSUCellRect::rows(&v38);
    if (objc_msgSend_containsIndexesInRange_(v9, v16, v15, v16))
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTCategoryTranslator mergedGridIndicesForDimension:]", v19);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 2047, 0, "should not be any merged row grid indexes in the body range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    v38.origin = objc_msgSend_footerRowRange(self->super._baseTableModel, v17, v18, v19);
    v38.size = v29;
    v30 = TSUCellRect::rows(&v38);
    v38.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v31, v32, v33);
    v38.size = v34;
    v35 = TSUCellRect::rows(&v38);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v9, v36, v30, v35 - v30);
  }

  return v9;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  if (objc_msgSend_hasMergeRanges(v6, v7, v8, v9))
  {
    v11 = objc_msgSend_baseCellRegionForViewCellRect_(self, v10, origin, size);
    if (objc_msgSend_isValid(v11, v12, v13, v14))
    {
      hasRangeSpanningRowsForCellRegion = objc_msgSend_hasRangeSpanningRowsForCellRegion_(v6, v15, v11, v16);
    }

    else
    {
      hasRangeSpanningRowsForCellRegion = 0;
    }
  }

  else
  {
    hasRangeSpanningRowsForCellRegion = 0;
  }

  return hasRangeSpanningRowsForCellRegion;
}

- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)cells
{
  size = cells._rect.size;
  origin = cells._rect.origin;
  cellsCopy = cells;
  v6 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&cells._rect.origin, *&cells._rect.size);
  if (objc_msgSend_hasMergeRanges(v6, v7, v8, v9))
  {
    v11 = objc_msgSend_baseCellRegionForViewCellRect_(self, v10, origin, size);
    if (objc_msgSend_isValid(v11, v12, v13, v14))
    {
      v17 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v6, v15, v11, v16);
      v20 = objc_msgSend_viewCellRegionForBaseCellRegion_(self, v18, v17, v19);
      v28[0] = objc_msgSend_boundingViewCellRect(v20, v21, v22, v23);
      v28[1] = v24;
      origin = sub_2211E55F8(v28, &cellsCopy._rect.origin);
      size = v25;
    }
  }

  v26 = origin;
  v27 = size;
  result._rect.size = v27;
  result._rect.origin = v26;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)cells
{
  cellsCopy = cells;
  v8 = objc_msgSend_mergeOwner(self->super._baseTableModel, v5, v6, v7);
  if (objc_msgSend_hasMergeRanges(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v12, cellsCopy, v13);
    if (objc_msgSend_isValid(v14, v15, v16, v17))
    {
      v20 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v8, v18, v14, v19);
      v23 = objc_msgSend_viewCellRegionForBaseCellRegion_(self, v21, v20, v22);
      v27 = objc_msgSend_cellCount(cellsCopy, v24, v25, v26);
      if (v27 != objc_msgSend_cellCount(v14, v28, v29, v30))
      {
        v33 = objc_msgSend_regionByAddingViewCellRegion_(v23, v31, cellsCopy, v32);

        v23 = v33;
      }
    }

    else
    {
      v23 = cellsCopy;
    }
  }

  else
  {
    v23 = cellsCopy;
  }

  return v23;
}

- (id)shrinkReturningInverseForRegion:(id)region
{
  v5 = objc_msgSend_baseCellRegionForViewCellRegion_(self, a2, region, v3);
  if (objc_msgSend_isValid(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_mergeOwner(self->super._baseTableModel, v9, v10, v11);
    v15 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_(v12, v13, v5, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)removeReturningInverseForRegion:(id)region
{
  v5 = objc_msgSend_baseCellRegionForViewCellRegion_(self, a2, region, v3);
  if (objc_msgSend_isValid(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_mergeOwner(self->super._baseTableModel, v9, v10, v11);
    v15 = objc_msgSend_removeReturningInverseForBaseCellRegion_(v12, v13, v5, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)mergeActionForRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_baseTableModel(self, v5, v6, v7);
  v12 = objc_msgSend_mergeOwner(v8, v9, v10, v11);
  isEmpty = objc_msgSend_isEmpty(v12, v13, v14, v15);

  if (isEmpty)
  {
    v19 = 0;
  }

  else
  {
    v20 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v17, regionCopy, v18);
    if (objc_msgSend_isValid(v20, v21, v22, v23))
    {
      v27 = objc_msgSend_mergeOwner(self->super._baseTableModel, v24, v25, v26);
      v19 = objc_msgSend_mergeActionForBaseCellRegion_(v27, v28, v20, v29);
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only
{
  onlyCopy = only;
  regionCopy = region;
  v10 = objc_msgSend_baseTableModel(self, v7, v8, v9);
  v14 = objc_msgSend_mergeOwner(v10, v11, v12, v13);
  isEmpty = objc_msgSend_isEmpty(v14, v15, v16, v17);

  if (isEmpty)
  {
    v21 = 0;
  }

  else
  {
    v22 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v19, regionCopy, v20);
    if (objc_msgSend_isValid(v22, v23, v24, v25))
    {
      v29 = objc_msgSend_mergeOwner(self->super._baseTableModel, v26, v27, v28);
      v21 = objc_msgSend_mergeActionForBaseCellRegion_nonOriginPartialsOnly_(v29, v30, v22, onlyCopy);
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block
{
  regionCopy = region;
  blockCopy = block;
  v11 = objc_msgSend_mergeOwner(self->super._baseTableModel, v8, v9, v10);
  if (objc_msgSend_hasMergeRanges(v11, v12, v13, v14))
  {
    v17 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v15, regionCopy, v16);
    if (objc_msgSend_isValid(v17, v18, v19, v20))
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_2214BB50C;
      v22[3] = &unk_278466350;
      v22[4] = self;
      v23 = blockCopy;
      objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(v11, v21, v17, v22);
    }
  }
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTCategoryTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v8 = objc_msgSend_mergeOwner(self->super._baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size);
  if (objc_msgSend_hasMergeRanges(v8, v9, v10, v11))
  {
    v13 = objc_msgSend_baseCellRegionForViewCellRect_(self, v12, origin, size);
    if (objc_msgSend_isValid(v13, v14, v15, v16))
    {
      if (v8)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v8, v17, v13, v18);
      }

      else
      {
        __p = 0;
      }

      TSUViewCellRectVectorFromModelCellRectVector();
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTCategoryTranslator *)self
{
  v6 = a4;
  v10 = objc_msgSend_mergeOwner(self->super._baseTableModel, v7, v8, v9);
  if (objc_msgSend_hasMergeRanges(v10, v11, v12, v13))
  {
    v16 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v14, v6, v15);
    if (objc_msgSend_isValid(v16, v17, v18, v19))
    {
      if (v10)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v10, v20, v16, v21);
      }

      else
      {
        __p = 0;
      }

      TSUViewCellRectVectorFromModelCellRectVector();
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTCategoryTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v8 = objc_msgSend_mergeOwner(self->super._baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size);
  if (objc_msgSend_hasMergeRanges(v8, v9, v10, v11))
  {
    v13 = objc_msgSend_baseCellRegionForViewCellRect_(self, v12, origin, size);
    if (objc_msgSend_isValid(v13, v14, v15, v16))
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x4812000000;
      v23[3] = sub_2214BBD54;
      v23[4] = sub_2214BBD78;
      v23[5] = &unk_22188E88F;
      v25 = 0;
      v26 = 0;
      __p = 0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2214BBD90;
      v20[3] = &unk_2784611A8;
      v21 = v8;
      v22 = v23;
      objc_msgSend_enumerateModelCellRectsUsingBlock_(v13, v17, v20, v18);
      TSUViewCellRectVectorFromModelCellRectVector();

      _Block_object_dispose(v23, 8);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (BOOL)isValidMergeRange:(TSUViewCellRect)range
{
  rect = range._rect;
  v32.origin = objc_msgSend_bodyRowRange(self->super._tableInfo, a2, *&range._rect.origin, *&range._rect.size);
  v32.size = v4;
  v5 = TSUCellRect::rows(&v32);
  v7 = v6;
  v35.location = TSUCellRect::rows(&rect);
  v35.length = v8;
  v34.location = v5;
  v34.length = v7;
  if (NSIntersectionRange(v34, v35).length && rect.size.numberOfRows > 1)
  {
    return 0;
  }

  v9 = TSUCellRect::firstColumn(&rect);
  if (v9 == objc_msgSend_categoryColumnIndex(self->super._tableInfo, v10, v11, v12))
  {
    return 0;
  }

  v15 = objc_msgSend_baseCellRegionForViewCellRect_(self, v13, *&rect.origin, *&rect.size);
  if (objc_msgSend_isValid(v15, v16, v17, v18) && objc_msgSend_isRectangle(v15, v19, v20, v21))
  {
    v25 = objc_msgSend_mergeOwner(self->super._baseTableModel, v22, v23, v24);
    v29 = objc_msgSend_boundingModelCellRect(v15, v26, v27, v28);
    isValidMergeRange = objc_msgSend_isValidMergeRange_(v25, v30, v29, v30);
  }

  else
  {
    isValidMergeRange = 0;
  }

  return isValidMergeRange;
}

- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214BC210;
  v8[3] = &unk_2784663A0;
  v8[4] = self;
  v8[5] = &v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214BC2E4;
  v7[3] = &unk_2784663C8;
  v7[4] = self;
  v7[5] = &v9;
  v5[5] = &v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214BC42C;
  v6[3] = &unk_2784663F0;
  v6[4] = self;
  v6[5] = &v9;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214BC524;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&d, v8, v7, v6, v5);
  v3 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (TSUModelCellCoord)summaryCellCoordForCellUID:(const TSKUIDStructCoord *)d
{
  v5 = objc_msgSend_summaryMap(self, a2, d, v3);
  row = d->_row;
  v11[0] = d->_column;
  v11[1] = row;
  v9 = objc_msgSend_cellIDForCellUID_(v5, v7, v11, v8);

  return v9;
}

- (TSUCellCoord)baseCoordFromViewCoord:(TSUCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_baseCellCoordForViewCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)d
{
  v5 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, v3);
  baseTableModel = self->super._baseTableModel;

  return MEMORY[0x2821F9670](baseTableModel, sel_hasCommentAtBaseCellCoord_, v5, v6);
}

- (int)insertColumnsAtIndex:(TSUViewColumnIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area
{
  metadatasCopy = metadatas;
  if (area == 1)
  {
    goto LABEL_8;
  }

  if (area == 3)
  {
    v66.origin = objc_msgSend_headerColumnRange(self->super._tableInfo, v10, v11, v12);
    v66.size = v14;
    v15 = TSUCellRect::columns(&v66);
    if (index.var0 >= v15 && index.var0 - v15 < v10)
    {
      goto LABEL_8;
    }

    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator insertColumnsAtIndex:uids:metadatas:tableArea:]", v12);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 2341, 0, "Categories: destination column is not in the header");
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator insertColumnsAtIndex:uids:metadatas:tableArea:]", v12);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v25, v17, v20, 2343, 0, "Categories: table area should be body");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
LABEL_8:
  if (objc_msgSend_numberOfColumns(self, v10, v11, v12) == index.var0)
  {
    v32 = objc_msgSend_numberOfColumns(self->super._baseTableModel, v29, v30, v31);
    v36 = objc_msgSend_summaryModel(self->super._tableInfo, v33, v34, v35);
    v40 = objc_msgSend_numberOfColumns(v36, v37, v38, v39);
  }

  else
  {
    v32 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v29, index.var0, v31);
    v40 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v42, index.var0, v43);
  }

  inserted = objc_msgSend_insertColumnsAtIndex_uids_metadatas_tableArea_(self->super._baseTableModel, v41, v32, uids, metadatasCopy, area);
  v48 = objc_msgSend_summaryModel(self, v45, v46, v47);
  v50 = objc_msgSend_insertColumnsAtIndex_metadatas_(v48, v49, v40, metadatasCopy);

  if (objc_msgSend_withinGroupingChangesBatch(self, v51, v52, v53))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {
    objc_msgSend_resetViewMap(self, v54, v55, v56);
  }

  v57 = objc_msgSend_groupByForRows(self, v54, v55, v56);
  objc_msgSend_rebuildAllAggFormulas(v57, v58, v59, v60);
  objc_msgSend_didChangeGroupByStructure(v57, v61, v62, v63);
  if (inserted)
  {
    v64 = inserted;
  }

  else
  {
    v64 = v50;
  }

  return v64;
}

- (int)insertRowsAtIndex:(TSUViewRowIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area unsetFilterHidingAction:(BOOL)action
{
  actionCopy = action;
  v10 = *&index.var0;
  metadatasCopy = metadatas;
  if (area == 1)
  {
    goto LABEL_12;
  }

  if (area != 4)
  {
    if (area == 2)
    {
      v80.origin = objc_msgSend_headerRowRange(self->super._tableInfo, v12, v13, v14);
      v80.size = v16;
      v17 = TSUCellRect::rows(&v80);
      if (v10 < v17 || (v21 = v10, v10 - v17 >= v18))
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTCategoryTranslator insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v20);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 2376, 0, "Categories: destination row is not in the actual header");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
        v21 = v10;
      }

      goto LABEL_13;
    }

    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCategoryTranslator insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v14);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 2382, 0, "Categories: table area should be body");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
LABEL_12:
    v58 = objc_msgSend_numberOfRows(self->super._baseTableModel, v12, v13, v14);
    v21 = v58 - objc_msgSend_numberOfFooterRows(self->super._baseTableModel, v59, v60, v61);
    goto LABEL_13;
  }

  v80.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v12, v13, v14);
  v80.size = v31;
  v32 = TSUCellRect::rows(&v80);
  if (v10 < v32 || v10 - v32 >= v33)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCategoryTranslator insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v35);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 2379, 0, "Categories: destination row is not in the footer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
  }

  v45 = objc_msgSend_numberOfRows(self->super._baseTableModel, v33, v34, v35);
  v21 = v45 + v10 - objc_msgSend_numberOfRows(self->super._tableInfo, v46, v47, v48);
LABEL_13:
  v62 = objc_msgSend_viewMap(self, v18, v19, v20);
  v80.origin = objc_msgSend_rowUIDForRowIndex_(v62, v63, v10, v64);
  v80.size = v65;

  v69 = objc_msgSend_categoryOrder(self->super._tableInfo, v66, v67, v68);
  objc_msgSend_insertRowUids_beforeUid_(v69, v70, uids, &v80);

  inserted = objc_msgSend_insertRowsAtIndex_uids_metadatas_tableArea_unsetFilterHidingAction_(self->super._baseTableModel, v71, v21, uids, metadatasCopy, area, actionCopy);
  if (objc_msgSend_withinGroupingChangesBatch(self, v73, v74, v75))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {
    objc_msgSend_resetViewMap(self, v76, v77, v78);
  }

  return inserted;
}

- (unint64_t)numberOfPopulatedCells
{
  v5 = objc_msgSend_numberOfPopulatedCells(self->super._baseTableModel, a2, v2, v3);
  v9 = objc_msgSend_summaryModel(self->super._tableInfo, v6, v7, v8);
  v13 = objc_msgSend_numberOfPopulatedCells(v9, v10, v11, v12);

  return v13 + v5;
}

- (id)allRichTextStorages
{
  v5 = objc_msgSend_allRichTextStorages(self->super._baseTableModel, a2, v2, v3);
  v9 = objc_msgSend_summaryModel(self->super._tableInfo, v6, v7, v8);
  v13 = objc_msgSend_allRichTextStorages(v9, v10, v11, v12);
  v16 = objc_msgSend_setByAddingObjectsFromSet_(v5, v14, v13, v15);

  return v16;
}

- (id)populatedCategoryGroupLevelsInColumn:(TSUViewColumnIndex)column
{
  objc_msgSend_columnUIDForViewColumnIndex_(self, a2, column.var0, v3);
  v8 = objc_msgSend_maxRowLevel(self, v5, v6, v7);
  v15 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v9, v10, v11);
  if (v8)
  {
    for (i = 1; i <= v8; ++i)
    {
      v17 = objc_msgSend_summaryCellVendor(self, v12, v13, v14);
      sub_2211A8F64(i, 0, v27);
      v20 = objc_msgSend_cellAtCellUID_(v17, v18, v27, v19);

      if (objc_msgSend_hasFormula(v20, v21, v22, v23))
      {
        objc_msgSend_addIndex_(v15, v24, i, v25);
      }
    }
  }

  return v15;
}

- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)row
{
  v4 = *&row.var0;
  if (!objc_msgSend_isSummaryRow_(self, a2, *&row.var0, v3))
  {
    return -1;
  }

  v9 = objc_msgSend_viewMap(self, v6, v7, v8);
  v12 = objc_msgSend_rowUIDForRowIndex_(v9, v10, v4, v11);
  v14 = v13;

  v18 = objc_msgSend_groupByForRows(self, v15, v16, v17);

  return objc_msgSend_groupLevelForGroupUid_(v18, v19, v12, v14);
}

- (unsigned)groupLevelAtLabelRow:(TSUViewRowIndex)row
{
  v4 = *&row.var0;
  if (!objc_msgSend_isLabelRow_(self, a2, *&row.var0, v3))
  {
    return -1;
  }

  v9 = objc_msgSend_viewMap(self, v6, v7, v8);
  v12 = objc_msgSend_rowUIDForRowIndex_(v9, v10, v4, v11);
  v14 = v13;

  if (!sub_2211A8E20(v12, v14))
  {
    return -1;
  }

  v18 = objc_msgSend_groupByForRows(self, v15, v16, v17);
  v19 = sub_2211A8DC8(v12, v14);
  v21 = objc_msgSend_groupLevelForGroupUid_(v18, v20, v19, v20);
  if (((v21 + 1) & 0x100) != 0)
  {
    return -1;
  }

  else
  {
    return v21 + 1;
  }
}

- (id)allRowGroupUIDs
{
  v3 = objc_alloc_init(TSCEMutableUIDSet);
  v7 = objc_msgSend_groupByForRows(self, v4, v5, v6);
  v11 = objc_msgSend_minRowLevel(self, v8, v9, v10);
  v15 = objc_msgSend_maxRowLevel(self, v12, v13, v14);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2214BD1DC;
  v19[3] = &unk_27845FA48;
  v16 = v3;
  v20 = v16;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v7, v17, v11, v15, v19);

  return v16;
}

- (id)indexesForRowsContainedByGroupUIDs:(id)ds
{
  dsCopy = ds;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  v12 = objc_msgSend_groupByForRows(self, v9, v10, v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2214BD384;
  v20[3] = &unk_27845D948;
  v21 = v12;
  selfCopy = self;
  v13 = v8;
  v23 = v13;
  v14 = v12;
  objc_msgSend_foreachUuid_(dsCopy, v15, v20, v16);
  v17 = v23;
  v18 = v13;

  return v13;
}

- (void)addReceiverToGroupBy:(id)by
{
  v7 = objc_msgSend_groupByChangeDistributor(by, a2, by, v3);
  objc_msgSend_addReceiverIfMissing_(v7, v5, self, v6);
}

- (void)flushCachedIndexSets
{
  self->_cachedIndexSetsAreValid = 0;
  os_unfair_lock_lock(&self->_cachedIndexesUnfairLock);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;
  self->_cachedIndexesForSummaryRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedSummaryRowIndexesAtLevels, v4, v5, v6);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;
  self->_cachedIndexesForLabelRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedLabelRowIndexesAtLevels, v8, v9, v10);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;
  self->_cachedIndexesForSummaryAndLabelRows = 0;

  cachedIndexesForLeadingRows = self->_cachedIndexesForLeadingRows;
  self->_cachedIndexesForLeadingRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedLeadingRowIndexesAtLevels, v13, v14, v15);
  cachedIndexesForLeadingSummaryRows = self->_cachedIndexesForLeadingSummaryRows;
  self->_cachedIndexesForLeadingSummaryRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedLeadingSummaryRowIndexesAtLevels, v17, v18, v19);
  os_unfair_lock_unlock(&self->_cachedIndexesUnfairLock);
  v20.receiver = self;
  v20.super_class = TSTCategoryTranslator;
  [(TSTTableTranslator *)&v20 flushCachedIndexSets];
}

- (id)indexesForSummaryRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;

  return cachedIndexesForSummaryRows;
}

- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, level, v3);
  cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
  v9 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, levelCopy, v8);
  v12 = objc_msgSend_objectForKey_(cachedSummaryRowIndexesAtLevels, v10, v9, v11);

  return v12;
}

- (void)i_populateIndexesForSummaryRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = objc_msgSend_i_indexesForSummaryRowsAtGroupLevel_(self, v3, v6, v4);
    cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
    v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v9, v6, v10);
    objc_msgSend_setObject_forKey_(cachedSummaryRowIndexesAtLevels, v12, v7, v11);

    if (v5)
    {
      v15 = objc_msgSend_tsu_indexSetByAddingIndexes_(v5, v13, v7, v14);

      v5 = v15;
    }

    else
    {
      v5 = v7;
    }

    v16 = v6++;
  }

  while (v16 < 5);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;
  self->_cachedIndexesForSummaryRows = v5;
}

- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  if (levelCopy && objc_msgSend_numberOfRowLevels(self, v8, v9, v10) >= levelCopy)
  {
    v12 = objc_msgSend_viewMap(self, v8, v9, v10);
    v16 = objc_msgSend_groupByForRows(self->super._tableInfo, v13, v14, v15);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = sub_2214BD950;
    v24 = &unk_278466418;
    v17 = v12;
    v25 = v17;
    v26 = v11;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v16, v18, levelCopy, &v21);
  }

  v19 = objc_msgSend_copy(v11, v8, v9, v10, v21, v22, v23, v24);

  return v19;
}

- (id)indexesForLabelRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;

  return cachedIndexesForLabelRows;
}

- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, level, v3);
  cachedLabelRowIndexesAtLevels = self->_cachedLabelRowIndexesAtLevels;
  v9 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, levelCopy, v8);
  v12 = objc_msgSend_objectForKey_(cachedLabelRowIndexesAtLevels, v10, v9, v11);

  return v12;
}

- (void)i_populateIndexesForLabelRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = objc_msgSend_i_indexesForLabelRowsAtGroupLevel_(self, v3, v6, v4);
    cachedLabelRowIndexesAtLevels = self->_cachedLabelRowIndexesAtLevels;
    v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v9, v6, v10);
    objc_msgSend_setObject_forKey_(cachedLabelRowIndexesAtLevels, v12, v7, v11);

    if (v5)
    {
      v15 = objc_msgSend_tsu_indexSetByAddingIndexes_(v5, v13, v7, v14);

      v5 = v15;
    }

    else
    {
      v5 = v7;
    }

    v16 = v6++;
  }

  while (v16 < 5);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;
  self->_cachedIndexesForLabelRows = v5;
}

- (id)i_indexesForLabelRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v8 = objc_msgSend_groupByForRows(self->super._tableInfo, v5, v6, v7);
  v12 = objc_msgSend_summaryModel(self->super._tableInfo, v9, v10, v11);
  v15 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v12, v13, levelCopy, v14);
  v17 = objc_msgSend_labelRowUIDSetForCategoryLevel_labelRowVisibility_(v8, v16, levelCopy, v15);

  v24 = objc_msgSend_viewMap(self, v18, v19, v20);
  if (v17)
  {
    objc_msgSend_uuidsAsVector(v17, v21, v22, v23);
  }

  else
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
  }

  v25 = objc_msgSend_rowIndexesForUIDs_(v24, v21, &__p, v23);
  v29 = v25;
  if (v25)
  {
    v30 = v25;
  }

  else
  {
    v30 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v26, v27, v28);
  }

  v31 = v30;

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return v31;
}

- (BOOL)isSummaryRow:(unsigned int)row
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, *&row, v3);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;

  return objc_msgSend_containsIndex_(cachedIndexesForSummaryRows, v6, row, v7);
}

- (BOOL)isLabelRow:(unsigned int)row
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, *&row, v3);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;

  return objc_msgSend_containsIndex_(cachedIndexesForLabelRows, v6, row, v7);
}

- (BOOL)isSummaryOrLabelRow:(unsigned int)row
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, *&row, v3);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;

  return objc_msgSend_containsIndex_(cachedIndexesForSummaryAndLabelRows, v6, row, v7);
}

- (id)indexesForSummaryAndLabelRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;

  return cachedIndexesForSummaryAndLabelRows;
}

- (void)i_populateIndexesForSummaryAndLabelRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v5 = objc_msgSend_tsu_indexSetByAddingIndexes_(self->_cachedIndexesForSummaryRows, v3, self->_cachedIndexesForLabelRows, v4);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;
  self->_cachedIndexesForSummaryAndLabelRows = v5;
}

- (id)indexesForLeadingRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3);
  cachedIndexesForLeadingRows = self->_cachedIndexesForLeadingRows;

  return cachedIndexesForLeadingRows;
}

- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, level, v3);
  cachedLeadingRowIndexesAtLevels = self->_cachedLeadingRowIndexesAtLevels;
  v9 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, levelCopy, v8);
  v12 = objc_msgSend_objectForKey_(cachedLeadingRowIndexesAtLevels, v10, v9, v11);

  return v12;
}

- (void)i_populateIndexesForLeadingRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v24 = objc_opt_new();
  for (i = 0; objc_msgSend_maxRowLevel(self, v3, v4, v5) >= i; ++i)
  {
    v10 = objc_msgSend_i_indexesForLeadingRowsAtGroupLevel_(self, v7, i, v9);
    cachedLeadingRowIndexesAtLevels = self->_cachedLeadingRowIndexesAtLevels;
    v14 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v12, i, v13);
    objc_msgSend_setObject_forKey_(cachedLeadingRowIndexesAtLevels, v15, v10, v14);

    objc_msgSend_addIndexes_(v24, v16, v10, v17);
  }

  v18 = objc_msgSend_copy(v24, v7, v8, v9);
  cachedIndexesForLeadingRows = self->_cachedIndexesForLeadingRows;
  self->_cachedIndexesForLeadingRows = v18;

  v22 = objc_msgSend_i_indexesForLeadingRowsAtGroupLevel_(self, v20, 255, v21);
  objc_msgSend_setObject_forKey_(self->_cachedLeadingRowIndexesAtLevels, v23, v22, &unk_28350EB90);
}

- (id)i_indexesForLeadingRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v8 = objc_msgSend_pivotOwner(self->super._tableInfo, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v8, v9, levelCopy, v11);
    v17 = objc_msgSend_copy(v13, v14, v15, v16);

    v18 = 0;
  }

  else
  {
    v19 = MEMORY[0x277CCAB58];
    v59.origin = objc_msgSend_bodyRowRange(self->super._tableInfo, v9, v10, v11);
    v59.size = v20;
    v21 = TSUCellRect::rows(&v59);
    v23 = objc_msgSend_indexSetWithIndexesInRange_(v19, v22, v21, v22);
    v30 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v24, v25, v26);
    if (levelCopy == 255)
    {
      Index = objc_msgSend_firstIndex(v23, v27, v28, v29);
      objc_msgSend_addIndex_(v30, v53, Index, v54);
    }

    else if (objc_msgSend_maxRowLevel(self, v27, v28, v29) >= levelCopy)
    {
      v56 = v30;
      v33 = 0;
      do
      {
        cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
        v35 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v31, v33, v32, v56);
        v38 = objc_msgSend_objectForKey_(cachedSummaryRowIndexesAtLevels, v36, v35, v37);
        objc_msgSend_removeIndexes_(v23, v39, v38, v40);

        cachedLabelRowIndexesAtLevels = self->_cachedLabelRowIndexesAtLevels;
        v44 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v42, v33, v43);
        v47 = objc_msgSend_objectForKey_(cachedLabelRowIndexesAtLevels, v45, v44, v46);
        objc_msgSend_removeIndexes_(v23, v48, v47, v49);

        ++v33;
      }

      while (levelCopy >= v33);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_2214BE3D8;
      v57[3] = &unk_27845E1D0;
      v30 = v56;
      v58 = v56;
      objc_msgSend_enumerateRangesUsingBlock_(v23, v50, v57, v51);
    }

    v17 = v30;

    v18 = v17;
  }

  return v17;
}

- (id)indexesForLeadingSummaryRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3);
  cachedIndexesForLeadingSummaryRows = self->_cachedIndexesForLeadingSummaryRows;

  return cachedIndexesForLeadingSummaryRows;
}

- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, level, v3);
  cachedLeadingSummaryRowIndexesAtLevels = self->_cachedLeadingSummaryRowIndexesAtLevels;
  v9 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, levelCopy, v8);
  v12 = objc_msgSend_objectForKey_(cachedLeadingSummaryRowIndexesAtLevels, v10, v9, v11);

  return v12;
}

- (void)i_populateIndexesForLeadingSummaryRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v6 = 0;
  v7 = 0;
  while (objc_msgSend_maxRowLevel(self, v3, v4, v5) >= v6)
  {
    v10 = objc_msgSend_i_indexesForLeadingSummaryRowsAtGroupLevel_(self, v8, v6, v9);
    cachedLeadingSummaryRowIndexesAtLevels = self->_cachedLeadingSummaryRowIndexesAtLevels;
    v14 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v12, v6, v13);
    objc_msgSend_setObject_forKey_(cachedLeadingSummaryRowIndexesAtLevels, v15, v10, v14);

    if (v7)
    {
      v18 = objc_msgSend_tsu_indexSetByAddingIndexes_(v7, v16, v10, v17);

      v7 = v18;
    }

    else
    {
      v7 = v10;
    }

    ++v6;
  }

  cachedIndexesForLeadingSummaryRows = self->_cachedIndexesForLeadingSummaryRows;
  self->_cachedIndexesForLeadingSummaryRows = v7;
}

- (id)i_indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
  v12 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v10, levelCopy, v11);
  v15 = objc_msgSend_objectForKey_(cachedSummaryRowIndexesAtLevels, v13, v12, v14);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2214BE734;
  v24[3] = &unk_27845E1D0;
  v16 = v8;
  v25 = v16;
  objc_msgSend_enumerateRangesUsingBlock_(v15, v17, v24, v18);
  v22 = objc_msgSend_copy(v16, v19, v20, v21);

  return v22;
}

- (void)i_populateCachedIndexSetsIfNeeded
{
  if (!self->_cachedIndexSetsAreValid)
  {
    os_unfair_lock_lock(&self->_cachedIndexesUnfairLock);
    if (!self->_cachedIndexSetsAreValid)
    {
      objc_msgSend_i_populateIndexesForSummaryRows(self, v3, v4, v5);
      objc_msgSend_i_populateIndexesForLabelRows(self, v6, v7, v8);
      objc_msgSend_i_populateIndexesForSummaryAndLabelRows(self, v9, v10, v11);
      objc_msgSend_i_populateIndexesForLeadingRows(self, v12, v13, v14);
      objc_msgSend_i_populateIndexesForLeadingSummaryRows(self, v15, v16, v17);
      self->_cachedIndexSetsAreValid = 1;
    }

    os_unfair_lock_unlock(&self->_cachedIndexesUnfairLock);
  }
}

- (BOOL)checkMapsAndAssert:(BOOL)assert
{
  v5 = objc_msgSend_baseMap(self, a2, assert, v3);
  isEmpty = objc_msgSend_isEmpty(v5, v6, v7, v8);

  v13 = objc_msgSend_summaryMap(self, v10, v11, v12);
  v17 = objc_msgSend_isEmpty(v13, v14, v15, v16);

  v21 = objc_msgSend_viewMap(self, v18, v19, v20);
  v25 = objc_msgSend_isEmpty(v21, v22, v23, v24);

  v26 = [TSCEUIDSet alloc];
  v30 = objc_msgSend_baseMap(self, v27, v28, v29);
  v34 = objc_msgSend_rowUIDs(v30, v31, v32, v33);
  v193 = objc_msgSend_initWithUUIDVector_(v26, v35, v34, v36);

  v37 = [TSCEUIDSet alloc];
  v41 = objc_msgSend_viewMap(self, v38, v39, v40);
  v45 = objc_msgSend_rowUIDs(v41, v42, v43, v44);
  v194 = objc_msgSend_initWithUUIDVector_(v37, v46, v45, v47);

  v48 = [TSCEUIDSet alloc];
  v52 = objc_msgSend_summaryMap(self, v49, v50, v51);
  v56 = objc_msgSend_rowUIDs(v52, v53, v54, v55);
  v192 = objc_msgSend_initWithUUIDVector_(v48, v57, v56, v58);

  v59 = objc_opt_new();
  v63 = objc_msgSend_groupByForRows(self, v60, v61, v62, v59);
  v191 = objc_msgSend_labelRowUIDSet(v63, v64, v65, v66);

  v70 = objc_msgSend_groupByForRows(self, v67, v68, v69);
  v71 = isEmpty;
  v75 = objc_msgSend_maxRowLevel(self, v72, v73, v74);
  v213[0] = MEMORY[0x277D85DD0];
  v213[1] = 3221225472;
  v213[2] = sub_2214BF044;
  v213[3] = &unk_27845FA48;
  v76 = v59;
  v214 = v76;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v70, v77, 1, v75, v213);

  v81 = objc_msgSend_allRowGroupUIDs(self->super._tableInfo, v78, v79, v80);
  v84 = objc_msgSend_setByUnionWithSet_(v193, v82, v81, v83);
  v88 = objc_msgSend_baseMap(self, v85, v86, v87);
  v208.origin = objc_msgSend_headerRowRange(self->super._baseTableModel, v89, v90, v91);
  v208.size = v92;
  v93 = TSUCellRect::rows(&v208);
  if (v88)
  {
    objc_msgSend_rowUIDsForRowRange_(v88, v94, v93, v94);
  }

  else
  {
    v210 = 0;
    v211 = 0;
    v212 = 0;
  }

  v98 = objc_msgSend_viewMap(self, v95, v96, v97);
  v206.origin = objc_msgSend_headerRowRange(self->super._tableInfo, v99, v100, v101);
  v206.size = v102;
  v103 = TSUCellRect::rows(&v206);
  if (v98)
  {
    objc_msgSend_rowUIDsForRowRange_(v98, v104, v103, v104);
  }

  else
  {
    v208.origin = 0;
    v208.size = 0;
    v209 = 0;
  }

  v108 = objc_msgSend_baseMap(self, v105, v106, v107);
  v204.origin = objc_msgSend_footerRowRange(self->super._baseTableModel, v109, v110, v111);
  v204.size = v112;
  v113 = TSUCellRect::rows(&v204);
  if (v108)
  {
    objc_msgSend_rowUIDsForRowRange_(v108, v114, v113, v114);
  }

  else
  {
    v206.origin = 0;
    v206.size = 0;
    v207 = 0;
  }

  v118 = objc_msgSend_viewMap(self, v115, v116, v117);
  v202.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v119, v120, v121);
  v202.size = v122;
  v123 = TSUCellRect::rows(&v202);
  if (v118)
  {
    objc_msgSend_rowUIDsForRowRange_(v118, v124, v123, v124);
  }

  else
  {
    v204.origin = 0;
    v204.size = 0;
    v205 = 0;
  }

  v128 = objc_msgSend_mutableCopy(v84, v125, v126, v127);
  objc_msgSend_addUuidsFromSet_(v128, v129, v191, v130);
  objc_msgSend_addUuidsFromVector_(v128, v131, &v210, v132);
  objc_msgSend_addUuidsFromVector_(v128, v133, &v206, v134);
  isSubsetOf = objc_msgSend_isSubsetOf_(v84, v135, v194, v136);
  isEqual = objc_msgSend_isEqual_(v192, v138, v76, v139);
  v143 = v210;
  origin = v208.origin;
  if (v211 - v210 == *&v208.size - *&v208.origin)
  {
    v145 = isEqual & ((v25 | v17 | v71) ^ 1) & isSubsetOf;
    while (v143 != v211)
    {
      if (*v143 != *origin || v143[1] != origin[1])
      {
        goto LABEL_22;
      }

      v143 += 2;
      origin += 2;
    }
  }

  else
  {
LABEL_22:
    v145 = 0;
  }

  v147 = v206.origin;
  v148 = v204.origin;
  if (*&v206.size - *&v206.origin == *&v204.size - *&v204.origin)
  {
    while (v147 != *&v206.size)
    {
      if (*v147 != *v148 || v147[1] != v148[1])
      {
        goto LABEL_31;
      }

      v147 += 2;
      v148 += 2;
    }
  }

  else
  {
LABEL_31:
    v145 = 0;
  }

  v150 = objc_msgSend_isEqual_(v128, v141, v194, v142);
  v154 = objc_msgSend_baseMap(self, v151, v152, v153);
  v158 = objc_msgSend_columnUIDs(v154, v155, v156, v157);
  v202.origin = 0;
  v202.size = 0;
  v203 = 0;
  sub_221086EBC(&v202, *v158, *(v158 + 8), (*(v158 + 8) - *v158) >> 4);

  v162 = objc_msgSend_viewMap(self, v159, v160, v161);
  v166 = objc_msgSend_columnUIDs(v162, v163, v164, v165);
  v199 = 0;
  v200 = 0;
  v201 = 0;
  sub_221086EBC(&v199, *v166, *(v166 + 8), (*(v166 + 8) - *v166) >> 4);

  strcpy(&v198, "category column");
  __p = 0;
  v196 = 0;
  v197 = 0;
  sub_221086EBC(&__p, *&v202.origin, *&v202.size, (*&v202.size - *&v202.origin) >> 4);
  sub_22129CE20(&__p, __p, &v198);
  v167 = v199;
  v168 = __p;
  if (v200 - v199 == v196 - __p)
  {
    v169 = v150 & v145;
    while (v167 != v200)
    {
      if (*v167 != *v168 || v167[1] != v168[1])
      {
        goto LABEL_41;
      }

      v167 += 2;
      v168 += 2;
    }
  }

  else
  {
LABEL_41:
    v169 = 0;
  }

  v171 = [TSCEUIDSet alloc];
  v175 = objc_msgSend_summaryMap(self, v172, v173, v174);
  v179 = objc_msgSend_columnUIDs(v175, v176, v177, v178);
  v182 = objc_msgSend_initWithUUIDVector_(v171, v180, v179, v181);

  v183 = [TSCEUIDSet alloc];
  v186 = objc_msgSend_initWithUUIDVector_(v183, v184, &__p, v185);
  v189 = objc_msgSend_isEqual_(v182, v187, v186, v188);

  if (__p)
  {
    v196 = __p;
    operator delete(__p);
  }

  if (v199)
  {
    v200 = v199;
    operator delete(v199);
  }

  if (v202.origin)
  {
    v202.size = v202.origin;
    operator delete(*&v202.origin);
  }

  if (v204.origin)
  {
    v204.size = v204.origin;
    operator delete(*&v204.origin);
  }

  if (v206.origin)
  {
    v206.size = v206.origin;
    operator delete(*&v206.origin);
  }

  if (v208.origin)
  {
    v208.size = v208.origin;
    operator delete(*&v208.origin);
  }

  if (v210)
  {
    v211 = v210;
    operator delete(v210);
  }

  return v189 & v169;
}

@end