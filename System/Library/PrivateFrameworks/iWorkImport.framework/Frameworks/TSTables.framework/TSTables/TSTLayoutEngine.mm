@interface TSTLayoutEngine
+ (double)effectiveTableNameHeightForTable:(id)table;
+ (int)tableRowsBehaviorForTable:(id)table andEnvironment:(int)environment;
- (BOOL)adjustGridColumnForVisibility:(unsigned int *)visibility isLeft:(BOOL)left;
- (BOOL)adjustGridRowForVisibility:(unsigned int *)visibility isTop:(BOOL)top;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range;
- (BOOL)anyRowsUserHiddenInCellRange:(TSUCellRect)range;
- (BOOL)cell:(id *)cell forCellID:(TSUCellCoord)d;
- (BOOL)containsAnyContentInRange:(TSUCellRect)range;
- (BOOL)hasMergeRanges;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)range;
- (BOOL)hasStrokeSpillForLeftGridColumn:(unsigned int)column inRow:(unsigned int)row;
- (BOOL)hintIsValid:(id)valid;
- (BOOL)isCategoryLastSummaryRowCollapsed;
- (BOOL)isDynamicallyChangingContent;
- (BOOL)isDynamicallyChangingFontColorOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyChangingRowOrColumnCount;
- (BOOL)isDynamicallyHidingContentOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyHidingRowsCols;
- (BOOL)isDynamicallyHidingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index;
- (BOOL)isDynamicallyHidingRowsColsCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyHidingTextOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyRemovingText;
- (BOOL)isDynamicallyRemovingTextOfCellID:(TSUCellCoord)d;
- (BOOL)isDynamicallyResizingCellIDForColumnRowAdd:(TSUCellCoord)add;
- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add;
- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add rowColIndex:(unsigned int)index;
- (BOOL)isDynamicallyRevealingRowsCols;
- (BOOL)isDynamicallyRevealingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index;
- (BOOL)isEntireCellRangeHidden:(TSUCellRect)hidden;
- (BOOL)isGrouped;
- (BOOL)isLastVisibleBodyRowCategorySummaryOrLabelRow;
- (BOOL)p_containsGradientFillThatFillsContainerInCell:(id)cell cellContents:(id)contents;
- (BOOL)p_containsGradientThatFillsContainerInStyle:(id)style;
- (BOOL)shouldRowUseBandedFill:(unsigned int)fill;
- (BOOL)useBandedFill;
- (BOOL)validateLayoutHint:(id)hint;
- (CGRect)tableNameBounds;
- (CGSize)contentSizeForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap;
- (CGSize)tableNameTextSize;
- (CGSize)tableNameTextSizeForTableName:(id)name maxWidth:(double)width tableNameStyle:(id)style;
- (NSIndexSet)hiddenColumnIndices;
- (NSIndexSet)hiddenRowIndices;
- (NSIndexSet)visibleColumnIndices;
- (NSIndexSet)visibleRowIndices;
- (NSString)description;
- (TSKChangeNotifier)changeNotifier;
- (TSTLayout)dynamicLayout;
- (TSTLayoutEngine)initWithInfo:(id)info layoutEngineBundle:(id)bundle;
- (TSUCellCoord)layoutCellIDForModelCellID:(TSUCellCoord)d;
- (TSUCellCoord)modelCellIDForLayoutCellID:(TSUCellCoord)d;
- (TSUCellCoord)p_validateFittingInfoForEmptyCellsBetween:(TSUCellCoord)between andCellID:(TSUCellCoord)d inRange:(TSUCellRect)range widthHeightCollection:(id)collection;
- (TSUCellRect)categoryColumnsCellRange;
- (TSUCellRect)cellRange;
- (TSUCellRect)dynamicFontColorCellRange;
- (TSUCellRect)dynamicHidingContent;
- (TSUCellRect)dynamicHidingRowsCols;
- (TSUCellRect)dynamicHidingText;
- (TSUCellRect)dynamicRemovingText;
- (TSUCellRect)dynamicResizingColumnRange;
- (TSUCellRect)dynamicResizingRowRange;
- (TSUCellRect)dynamicRevealingRowsCols;
- (TSUCellRect)entireActualHeaderColumnsCellRange;
- (TSUCellRect)entireBodyCellRange;
- (TSUCellRect)entireBodyRowsCellRange;
- (TSUCellRect)entireFooterRowsCellRange;
- (TSUCellRect)entireHeaderColumnsCellRange;
- (TSUCellRect)entireHeaderRowsCellRange;
- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)cells;
- (TSUCellRect)expandCellRangeToVisibleNeighbors:(TSUCellRect)neighbors;
- (UIEdgeInsets)defaultPaddingForCellID:(TSUCellCoord)d;
- (UIEdgeInsets)edgeInsetsFromPadding:(id)padding;
- (UIEdgeInsets)paddingForCellID:(TSUCellCoord)d;
- (double)calculatedTableNameHeightIncludingDynamicResize:(BOOL)resize;
- (double)clampRowHeightAccountingForMaximumPartitionSize:(CGSize)size rowIndex:(unsigned int)index rowHeight:(double)height;
- (double)contentHeightForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap maximumPartitionSize:(CGSize)size;
- (double)fontHeightOfParagraphStyle:(id)style;
- (double)heightOfRow:(unsigned int)row skipDynamicSwap:(BOOL)swap withStrokeHeights:(BOOL)heights returnZeroIfHidden:(BOOL)hidden clampToPartitionSize:(BOOL)size maximumPartitionSize:(CGSize)partitionSize outIsFitting:(BOOL *)fitting;
- (double)heightOfRowIgnoringFitting:(unsigned int)fitting withStrokeHeights:(BOOL)heights;
- (double)p_contentWidthForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap validationBundle:(id)bundle;
- (double)strokeHeightOfGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn;
- (double)strokeWidthOfGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow;
- (double)tableNameHeight;
- (double)tableNameHeightForStorage:(id)storage withMaxWidth:(double)width;
- (double)unwrappedFittingWidthsForColumnInCellRegionWorker:(id)worker;
- (double)widthOfColumn:(unsigned __int16)column skipDynamicSwap:(BOOL)swap returnZeroIfHidden:(BOOL)hidden outIsFitting:(BOOL *)fitting;
- (id).cxx_construct;
- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (id)expandCellRegionToCoverMergedCells:(id)cells;
- (id)fittingWidthsMapForColumns:(id)columns includeStrokes:(BOOL)strokes;
- (id)fixedWidthProvider;
- (id)formattedDataParagraphStylePropertyMapForCell:(id)cell atCellID:(TSUCellCoord)d;
- (id)indexesForCategoryColumnsInRegion:(id)region;
- (id)indexesForLabelRowsInRegion:(id)region;
- (id)indexesForSummaryRowsInRegion:(id)region;
- (id)layoutCellRegionForModelCellRegion:(id)region;
- (id)mergeRangesProppingRowHeightsInRegion:(id)region;
- (id)mergedStrokesForGridColumn:(unsigned int)column;
- (id)mergedStrokesForGridRow:(unsigned int)row;
- (id)mergesIntersectingCellRegion:(id)region;
- (id)mergesIntersectingRange:(TSUCellRect)range;
- (id)modelCellRegionForLayoutCellRegion:(id)region;
- (id)newLayoutHint;
- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style;
- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style naturalAlignment:(int)alignment cellDirection:(int)direction;
- (id)p_resolvedTextStyleForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style outNaturalAlignment:(int *)alignment outCellDirection:(int *)direction;
- (id)p_strokesForGridColumn:(unsigned int)column isLeft:(BOOL)left takeStrokeWriteLock:(BOOL)lock;
- (id)p_strokesForGridRow:(unsigned int)row isTop:(BOOL)top takeStrokeWriteLock:(BOOL)lock;
- (id)p_strokesForValidationOfGridRow:(unsigned int)row isTop:(BOOL)top;
- (id)p_validationBundleForRegionToValidate:(id)validate;
- (id)tableNameTextEngine;
- (id)tableNameTextEngineWithTableNameStyle:(id)style;
- (id)unwrappedFittingWidthsForColumnsInCellRegion:(id)region;
- (id)validateCellForDrawing:(TSUCellCoord)drawing cell:(id)cell contents:(id)contents wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding layoutCacheFlags:(int)flags pageNumber:(unint64_t)self0 pageCount:(unint64_t)self1;
- (id)validateFittingInfoForValidationRegion:(id)region rowsNeedingFittingInfo:(id)info;
- (id)validateFittingRegionForChangeDescriptors:(id)descriptors;
- (unint64_t)tableAreaForCellID:(TSUCellCoord)d;
- (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)d;
- (unsigned)firstEmptyBodyRow;
- (unsigned)layoutRowForModelRow:(unsigned int)row;
- (unsigned)modelRowForLayoutRow:(unsigned int)row;
- (unsigned)numberOfColumns;
- (unsigned)numberOfFooterOrGrandTotalRows;
- (unsigned)numberOfFooterRows;
- (unsigned)numberOfGrandTotalColumns;
- (unsigned)numberOfHeaderColumns;
- (unsigned)numberOfHeaderRows;
- (unsigned)numberOfNonHiddenFooterRows;
- (unsigned)numberOfRows;
- (void)addChangeDescriptor:(id)descriptor;
- (void)addChangeDescriptorWithType:(int)type andCellRange:(TSUCellRect)range andStrokeRange:(TSUCellRect)strokeRange;
- (void)captureDynamicResizeInfo;
- (void)clearDynamicStrokesForCellRange:(TSUCellRect)range;
- (void)clearModelHeightWidthCacheForCellRange:(TSUCellRect)range;
- (void)clearRenderingCaches;
- (void)dealloc;
- (void)enqueueBootstrapChangeDescriptors;
- (void)enumerateMergedStrokesAndCapsForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateMergedStrokesAndCapsForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateMergedStrokesForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)enumerateMergedStrokesForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block;
- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info;
- (void)invalidateStrokeDefaults;
- (void)invalidateStrokeSpills;
- (void)invalidateTableNameHeight;
- (void)iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block;
- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block;
- (void)measureWithLayoutState:(id)state;
- (void)modifySafelyUsingBlock:(id)block;
- (void)p_addFittingInfoForEmptyMergeRange:(TSUCellRect)range;
- (void)p_clearStrokesForMergesInCellRegion:(id)region;
- (void)p_invalidateClearedStrokesForCellRegion:(id)region;
- (void)p_invalidateForStyleProviderChangeWithBroadcast:(BOOL)broadcast;
- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridColumn:(unsigned int)column isLeft:(BOOL)left beginRow:(unsigned int)row endRow:(unsigned int)endRow;
- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridRow:(unsigned int)row isTop:(BOOL)top beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn;
- (void)p_validateCellIDToWPColumnCacheForChangeDescriptors:(id)descriptors;
- (void)p_validateFittingInfoForEmptyCellsOnSingleRowBetween:(TSUCellCoord)between andEndCellID:(TSUCellCoord)d widthHeightCollection:(id)collection;
- (void)p_validateFittingInfoWithCellRangeWorker:(TSUCellRect)worker widthHeightCollection:(id)collection containsMerges:(BOOL)merges validationBundle:(id)bundle;
- (void)p_validateStrokeWidthCachesForGridColumn:(unsigned int)column;
- (void)p_validateStrokeWidthCachesForGridRow:(unsigned int)row;
- (void)p_validateStrokeWidthCachesForRegion:(id)region invalidateStrokeDefaults:(BOOL)defaults;
- (void)p_validateStrokesForRegion:(id)region;
- (void)p_validationFittingCellRegionForColumnsDeleted:(id)deleted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForColumnsInserted:(id)inserted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForColumnsMovedFrom:(id)from toColumnIndex:(unsigned __int16)index cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForColumnsVisibility:(id)visibility cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRangeMergeUnmerge:(id)unmerge cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRowsDeleted:(id)deleted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRowsInserted:(id)inserted cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForRowsMovedFrom:(id)from toRowIndex:(unsigned int)index cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingCellRegionForStrokesChanged:(id)changed cellRegionGatherer:(id)gatherer;
- (void)p_validationFittingForChangeDescriptorType:(int)type regionFromChangeDescriptor:(id)descriptor cellRegionGatherer:(id)gatherer;
- (void)popFromFixedColumnWidthStack;
- (void)popFromStyleProviderStack;
- (void)processLayoutTask:(id)task validationBundle:(id)bundle;
- (void)pushToFixedColumnWidthStack:(void *)stack;
- (void)pushToStyleProviderStack:(id)stack;
- (void)queueCellForValidation:(TSUCellRect)validation cell:(id)cell textStyleHandle:(id)handle modelMergeRange:(TSUCellRect)range wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding prop:(BOOL)self0 layoutCacheFlags:(int)self1 validationBundle:(id)self2 layoutTask:(id)self3;
- (void)readSafelyUsingBlock:(id)block;
- (void)resetModelHeightWidthCache;
- (void)setClearedStrokeForGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow;
- (void)setClearedStrokeForGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn;
- (void)setDynamicCellBorder:(id)border forCellID:(TSUCellCoord)d;
- (void)setMaxConcurrentTasks:(unsigned int)tasks;
- (void)setStrokeSpillForRightGridColumn:(unsigned int)column leftGridColumn:(unsigned int)gridColumn inRow:(unsigned int)row;
- (void)setStyleProvidingSource:(id)source;
- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right;
- (void)updateCellRange;
- (void)validate;
- (void)validateBandedFill;
- (void)validateChangeDescriptorQueue;
- (void)validateDefaultFontHeights;
- (void)validateDynamicResizeInfo;
- (void)validateFittingInfoForCell:(id)cell cellID:(TSUCellCoord)d mergeRange:(TSUCellRect)range setFitting:(BOOL)fitting layoutTask:(id)task widthHeightCollection:(id)collection validationBundle:(id)bundle styleDefaultsCache:(id)self0;
- (void)validateFittingInfoWithCellRange:(TSUCellRect)range validationBundle:(id)bundle;
- (void)validateLayoutEngineForChangeDescriptors:(id)descriptors;
- (void)validateRowVisibility:(id)visibility;
- (void)validateStrokesArrays:(id)arrays;
- (void)validateStrokesForChangeDescriptors:(id)descriptors;
- (void)validateTableNameEnabled;
- (void)validateTableNameHeight;
- (void)waitForLayoutToComplete:(id)complete;
@end

@implementation TSTLayoutEngine

- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  v10 = [TSTLayoutCellIterator alloc];
  v12 = objc_msgSend_initWithLayoutEngine_range_flags_searchFlags_(v10, v11, self, origin, size, flags, searchFlags);

  return v12;
}

- (void)iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block
{
  iteratorCopy = iterator;
  objc_msgSend_iterateCellsUsingBlock_(iteratorCopy, v5, block, v6);
  objc_msgSend_terminate(iteratorCopy, v7, v8, v9);
}

- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  if (objc_msgSend_isNeededWithLayoutEngine_andRange_(TSTLayoutCellIterator, v12, self, origin, size))
  {
    v18 = objc_msgSend_cellIteratorWithRange_flags_searchFlags_(self, v13, origin, size, flags, searchFlags);
    objc_msgSend_iterateCellsAndTerminateWithIterator_usingBlock_(self, v16, v18, blockCopy);
  }

  else
  {
    v18 = objc_msgSend_tableInfo(self, v13, v14, v15);
    objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v18, v17, origin, size, flags, searchFlags, blockCopy);
  }
}

- (void)setStyleProvidingSource:(id)source
{
  if (self->_styleProvidingSource != source)
  {
    objc_msgSend_p_invalidateForStyleProviderChangeWithBroadcast_(self, a2, 0, v3);
    self->_styleProvidingSource = source;
  }
}

- (void)p_invalidateForStyleProviderChangeWithBroadcast:(BOOL)broadcast
{
  cellIDToWPColumnCache = self->_cellIDToWPColumnCache;
  self->_cellIDToWPColumnCache = 0;

  v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
  v12 = objc_msgSend_partitioner(v8, v9, v10, v11);
  v16 = objc_msgSend_scaledLayout(v12, v13, v14, v15);
  objc_msgSend_invalidateLayoutSpaceCoordinates(v16, v17, v18, v19);

  v23 = objc_msgSend_tableInfo(self, v20, v21, v22);
  v27 = objc_msgSend_partitioner(v23, v24, v25, v26);
  objc_msgSend_resetScaleToFit(v27, v28, v29, v30);

  objc_msgSend_invalidateDefaultFontHeights(self, v31, v32, v33);
  objc_msgSend_resetModelHeightWidthCache(self, v34, v35, v36);
  v40 = objc_msgSend_range(self->_tableInfo, v37, v38, v39);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2213A1260;
  v43[3] = &unk_278463CC0;
  v43[4] = self;
  v43[5] = v40;
  v43[6] = v41;
  v42 = MEMORY[0x223DA1C10](v43);
  v42[2](v42, 36);
  v42[2](v42, 22);
  v42[2](v42, 35);
  v42[2](v42, 49);
  v42[2](v42, 37);
}

- (id)fixedWidthProvider
{
  v5 = objc_msgSend_fixedColumnWidthStack(self, a2, v2, v3);
  if (v5 && (v9 = v5, objc_msgSend_fixedColumnWidthStack(self, v6, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_count(v10, v11, v12, v13), v10, v9, v14))
  {
    v18 = objc_msgSend_fixedColumnWidthStack(self, v15, v16, v17);
    v22 = objc_msgSend_fixedColumnWidthStack(self, v19, v20, v21);
    v26 = objc_msgSend_count(v22, v23, v24, v25);
    v29 = objc_msgSend_pointerAtIndex_(v18, v27, v26 - 1, v28);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)pushToStyleProviderStack:(id)stack
{
  stackCopy = stack;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2213A1408;
  v8[3] = &unk_27845FEF0;
  v8[4] = self;
  v9 = stackCopy;
  v5 = stackCopy;
  objc_msgSend_modifySafelyUsingBlock_(self, v6, v8, v7);
}

- (void)popFromStyleProviderStack
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2213A1518;
  v3[3] = &unk_27845E3F8;
  v3[4] = self;
  objc_msgSend_modifySafelyUsingBlock_(self, a2, v3, v2);
}

- (void)pushToFixedColumnWidthStack:(void *)stack
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213A1704;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = stack;
  objc_msgSend_modifySafelyUsingBlock_(self, a2, v4, v3);
}

- (void)popFromFixedColumnWidthStack
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2213A1820;
  v3[3] = &unk_27845E3F8;
  v3[4] = self;
  objc_msgSend_modifySafelyUsingBlock_(self, a2, v3, v2);
}

- (TSTLayoutEngine)initWithInfo:(id)info layoutEngineBundle:(id)bundle
{
  infoCopy = info;
  bundleCopy = bundle;
  v153.receiver = self;
  v153.super_class = TSTLayoutEngine;
  v8 = [(TSTLayoutEngine *)&v153 init];
  v9 = v8;
  if (v8)
  {
    v8->_tableInfo = infoCopy;
    v10 = [TSTWPColumnCache alloc];
    v13 = objc_msgSend_initWithName_(v10, v11, @"cell id to wp column $", v12);
    v14 = *(v9 + 640);
    *(v9 + 640) = v13;

    v15 = [TSTDupContentCache alloc];
    v18 = objc_msgSend_initWithName_(v15, v16, @"dup $", v17);
    v19 = *(v9 + 648);
    *(v9 + 648) = v18;

    v20 = [TSTWPColumnCache alloc];
    v23 = objc_msgSend_initWithName_(v20, v21, @"temp wp column $", v22);
    v24 = *(v9 + 656);
    *(v9 + 656) = v23;

    v28 = objc_msgSend_numberOfRows(infoCopy, v25, v26, v27);
    v32 = objc_msgSend_numberOfColumns(infoCopy, v29, v30, v31);
    v34 = objc_msgSend_widthHeightCacheFromBundle_withNumberOfRows_andNumberOfColumns_(TSTArchivedLayoutEngineBundle, v33, bundleCopy, v28, v32);
    v35 = *(v9 + 664);
    *(v9 + 664) = v34;

    *(v9 + 564) = 0x1000000010;
    v36 = dispatch_group_create();
    v37 = *(v9 + 128);
    *(v9 + 128) = v36;

    v38 = objc_alloc(MEMORY[0x277D81378]);
    v41 = objc_msgSend_initWithLimit_(v38, v39, *(v9 + 564), v40);
    v42 = *(v9 + 864);
    *(v9 + 864) = v41;

    v43 = objc_alloc(MEMORY[0x277D81378]);
    v46 = objc_msgSend_initWithLimit_(v43, v44, *(v9 + 564), v45);
    v47 = *(v9 + 872);
    *(v9 + 872) = v46;

    v48 = dispatch_queue_create("layout engine concurrent queue", MEMORY[0x277D85CD8]);
    v49 = *(v9 + 880);
    *(v9 + 880) = v48;

    *(v9 + 572) = 0;
    v53 = objc_msgSend_array(MEMORY[0x277CBEB18], v50, v51, v52);
    v54 = *(v9 + 832);
    *(v9 + 832) = v53;

    v58 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v55, v56, v57);
    *(v9 + 952) = objc_msgSend_maxNumberOfRows(v58, v59, v60, v61);
    *(v9 + 944) = objc_msgSend_maxNumberOfColumns(v58, v62, v63, v64);
    *(v9 + 576) = objc_msgSend_tableRowsBehaviorForTable_andEnvironment_(TSTLayoutEngine, v65, infoCopy, *(v9 + 572));
    *(v9 + 1032) = xmmword_2217E0780;
    *(v9 + 1080) = xmmword_2217E0780;
    *(v9 + 1096) = xmmword_2217E0780;
    *(v9 + 1112) = xmmword_2217E0780;
    *(v9 + 1128) = xmmword_2217E0780;
    *(v9 + 1048) = xmmword_2217E0780;
    *(v9 + 760) = 0u;
    *(v9 + 1064) = xmmword_2217E0780;
    *(v9 + 1144) = xmmword_2217E0780;
    v66 = *(v9 + 792);
    *(v9 + 792) = 0;

    *(v9 + 928) = 0;
    *(v9 + 556) = 0;
    v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v68 = *(v9 + 936);
    *(v9 + 936) = v67;

    v69 = [TSTStrokeDefaultVendor alloc];
    v73 = objc_msgSend_tableInfo(v9, v70, v71, v72);
    v77 = objc_msgSend_tableInfo(v9, v74, v75, v76);
    v79 = objc_msgSend_initWithStrokeProvider_tableProvider_tableInfo_(v69, v78, v73, v9, v77);
    v80 = *(v9 + 632);
    *(v9 + 632) = v79;

    v81 = objc_alloc_init(TSTConcurrentMutableIndexSet);
    v82 = *(v9 + 888);
    *(v9 + 888) = v81;

    pthread_rwlock_init((v9 + 136), 0);
    v83 = objc_alloc_init(TSTStrokeWidthCache);
    v84 = *(v9 + 904);
    *(v9 + 904) = v83;

    v85 = objc_alloc_init(TSTStrokeWidthCache);
    v86 = *(v9 + 912);
    *(v9 + 912) = v85;

    v87 = objc_alloc_init(TSTTextStyleToFontHeightCache);
    v88 = *(v9 + 920);
    *(v9 + 920) = v87;

    v89 = objc_alloc_init(TSTHiddenRowsColumnsCache);
    v90 = *(v9 + 672);
    *(v9 + 672) = v89;

    v91 = [TSTFontInfoCache alloc];
    v94 = objc_msgSend_initWithName_(v91, v92, @"table fonts and metric cache", v93);
    v95 = *(v9 + 856);
    *(v9 + 856) = v94;

    pthread_rwlock_init((v9 + 336), 0);
    v96 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v97 = *(v9 + 960);
    *(v9 + 960) = v96;

    *(v9 + 536) = 0;
    __dmb(0xBu);
    *(v9 + 557) = 0;
    v101 = objc_msgSend_tableInfo(v9, v98, v99, v100);
    *(v9 + 540) = objc_msgSend_useBandedFill(v101, v102, v103, v104);

    v108 = objc_msgSend_tableInfo(v9, v105, v106, v107);
    v112 = objc_msgSend_bandedFillObject(v108, v109, v110, v111);
    v113 = *(v9 + 680);
    *(v9 + 680) = v112;

    v116 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80DC8], v114, 0, v115);
    v117 = *(v9 + 1000);
    *(v9 + 1000) = v116;

    v152 = 0;
    sub_2213A1E8C((v9 + 104), 0x12uLL, &v152);
    v118 = objc_alloc_init(TSTMergeRangeSortedSet);
    v119 = *(v9 + 840);
    *(v9 + 840) = v118;

    objc_msgSend_updateCellRange(v9, v120, v121, v122);
    v123 = objc_alloc(MEMORY[0x277CCA940]);
    v126 = objc_msgSend_initWithCapacity_(v123, v124, 1, v125);
    v127 = *(v9 + 968);
    *(v9 + 968) = v126;

    *(v9 + 550) = 0;
    *(v9 + 808) = 0x7FFF7FFFFFFFLL;
    objc_msgSend_enqueueBootstrapChangeDescriptors(v9, v128, v129, v130);
    v134 = objc_msgSend_cellRange(v9, v131, v132, v133);
    v136 = objc_msgSend_regionFromRange_(TSTCellRegion, v135, v134, v135);
    v140 = objc_msgSend_hiddenRowsColumnsCache(v9, v137, v138, v139);
    objc_msgSend_validate_(v140, v141, v9, v142);

    objc_msgSend_validateStrokesArrays_(v9, v143, 0, v144);
    objc_msgSend_p_validateStrokesForRegion_(v9, v145, v136, v146);
    objc_msgSend_verifyStrokes(v9, v147, v148, v149);
    objc_msgSend_p_validateStrokeWidthCachesForRegion_invalidateStrokeDefaults_(v9, v150, v136, 1);
  }

  return v9;
}

- (void)dealloc
{
  pthread_rwlock_wrlock(&self->_strokesRWLock);
  begin = self->_topRowStrokes.__begin_;
  for (i = self->_topRowStrokes.var0; i != begin; --i)
  {
    v5 = *(i - 1);
  }

  self->_topRowStrokes.var0 = begin;
  v6 = self->_bottomRowStrokes.__begin_;
  for (j = self->_bottomRowStrokes.var0; j != v6; --j)
  {
    v8 = *(j - 1);
  }

  self->_bottomRowStrokes.var0 = v6;
  v9 = self->_leftColumnStrokes.__begin_;
  for (k = self->_leftColumnStrokes.var0; k != v9; --k)
  {
    v11 = *(k - 1);
  }

  self->_leftColumnStrokes.var0 = v9;
  v12 = self->_rightColumnStrokes.__begin_;
  for (m = self->_rightColumnStrokes.var0; m != v12; --m)
  {
    v14 = *(m - 1);
  }

  self->_rightColumnStrokes.var0 = v12;
  pthread_rwlock_unlock(&self->_strokesRWLock);
  pthread_rwlock_destroy(&self->_strokesRWLock);
  pthread_rwlock_destroy(&self->_contentRWLock);
  v15.receiver = self;
  v15.super_class = TSTLayoutEngine;
  [(TSTLayoutEngine *)&v15 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
  v13 = objc_msgSend_tableName(v9, v10, v11, v12);
  if ((objc_msgSend_cellRange(self, v14, v15, v16) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v19 = @"#REF!:#REF!";
  }

  else
  {
    v19 = @"#REF!:#REF!";
    if (v17 >> 32 && v17)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = NSStringFromTSUCellCoord();
      v22 = NSStringFromTSUCellCoord();
      v19 = objc_msgSend_stringWithFormat_(v20, v23, @"%@:%@", v24, v21, v22);
    }
  }

  if (self->_inDynamicLayoutMode)
  {
    objc_msgSend_stringWithFormat_(v3, v17, @"<%@:%p %@ range:%@ dynamic_mode:%@ >", v18, v5, self, v13, v19, @"YES");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v17, @"<%@:%p %@ range:%@ dynamic_mode:%@ >", v18, v5, self, v13, v19, @"NO");
  }
  v25 = ;

  return v25;
}

- (id)newLayoutHint
{
  v3 = objc_alloc_init(TSTLayoutHint);
  v7 = objc_msgSend_tableInfo(self, v4, v5, v6);
  isInlineWithText = objc_msgSend_isInlineWithText(v7, v8, v9, v10);

  if ((isInlineWithText & 1) == 0)
  {
    v15 = objc_msgSend_cellRange(self, v12, v13, v14);
    objc_msgSend_setCellRange_(v3, v16, v15, v16);
    objc_msgSend_setMaximumSize_(v3, v17, v18, v19, INFINITY, INFINITY);
  }

  objc_msgSend_validateLayoutHint_(self, v12, v3, v14);
  return v3;
}

- (BOOL)hintIsValid:(id)valid
{
  validCopy = valid;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v10 = objc_msgSend_numberOfHeaderRows(self, v7, v8, v9);
  v14 = objc_msgSend_numberOfHeaderColumns(self, v11, v12, v13);
  v18 = objc_msgSend_numberOfFooterRows(self, v15, v16, v17);
  v22 = objc_msgSend_numberOfColumns(self, v19, v20, v21);
  v26 = objc_msgSend_numberOfRows(self, v23, v24, v25);
  v30 = objc_msgSend_cellRange(validCopy, v27, v28, v29);
  sub_221119E0C(v10 | (v14 << 32), (v22 - v14) | ((v26 - (v18 + v10)) << 32), v30, v31);
  v33 = v32;
  headerRowsRepeat = self->_headerRowsRepeat;
  v37 = objc_msgSend_cellRange(validCopy, v32, v35, v36);
  v41 = (v37 & 0xFFFF00000000) != 0x7FFF00000000 && v37 == 0x7FFFFFFF;
  if (!v41 && v10 - 1 < v37 && headerRowsRepeat)
  {
    v42 = 0;
    do
    {
      objc_msgSend_maximumSize(validCopy, v38, v39, v40);
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, v43, v42, 0, 1, 1, 1, 0);
      v6 = v6 + v44;
      v42 = (v42 + 1);
    }

    while (v10 != v42);
  }

  v45 = objc_msgSend_cellRange(validCopy, v38, v39, v40);
  if ((v45 & 0xFFFF00000000) != 0x7FFF00000000 && v45 == 0x7FFFFFFF)
  {
    v50 = 0;
  }

  else
  {
    v50 = v45;
  }

  while (1)
  {
    v51 = objc_msgSend_cellRange(validCopy, v46, v47, v48);
    v55 = !(v52 >> 32) || v51 == 0x7FFFFFFF;
    v56 = v55 ? 0x7FFFFFFF : v51 + HIDWORD(v52) - 1;
    if (v50 > v56)
    {
      break;
    }

    objc_msgSend_maximumSize(validCopy, v52, v53, v54);
    objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, v57, v50, 0, 1, 1, 1, 0);
    v6 = v6 + v58;
    v50 = (v50 + 1);
  }

  objc_msgSend_maximumSize(validCopy, v52, v53, v54);
  v64 = v6 > v62 && v33 >> 32 == 1;
  v65 = objc_msgSend_tableInfo(self, v59, v60, v61);
  isInlineWithText = objc_msgSend_isInlineWithText(v65, v66, v67, v68);

  if ((isInlineWithText & 1) == 0)
  {
    v73 = objc_msgSend_numberOfHeaderColumns(self, v70, v71, v72);
    v77 = objc_msgSend_cellRange(validCopy, v74, v75, v76);
    v81 = v77 != 0x7FFFFFFF && (v77 & 0xFFFF00000000) == 0x7FFF00000000;
    if (!v81 && WORD2(v77) > (v73 - 1))
    {
      v82 = 0;
      do
      {
        objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(self, v78, v82, 0, 1, 0);
        v5 = v5 + v83;
        ++v82;
      }

      while (v82 < v73);
    }

    v84 = objc_msgSend_cellRange(validCopy, v78, v79, v80);
    if (v84 != 0x7FFFFFFF && (v84 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v89 = 0;
    }

    else
    {
      v89 = WORD2(v84);
    }

    while (1)
    {
      v90 = objc_msgSend_cellRange(validCopy, v85, v86, v87);
      v93 = v91 + WORD2(v90) - 1;
      if (v91)
      {
        v94 = WORD2(v90) == 0x7FFF;
      }

      else
      {
        v94 = 1;
      }

      if (v94)
      {
        v93 = 0x7FFF;
      }

      if (v89 > v93)
      {
        break;
      }

      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(self, v91, v89, 0, 1, 0);
      v5 = v5 + v95;
      ++v89;
    }

    objc_msgSend_maximumSize(validCopy, v91, v89, v92);
    v98 = v5 > v96 && v33 == 1;
    v64 |= v98;
  }

  objc_msgSend_maximumSize(validCopy, v70, v71, v72);
  if (v6 <= v102)
  {
    objc_msgSend_maximumSize(validCopy, v99, v100, v101);
    if (v5 <= v103)
    {
      v64 = 1;
    }
  }

  objc_msgSend_setIsValid_(validCopy, v99, v64 & 1, v101);
  isValid = objc_msgSend_isValid(validCopy, v104, v105, v106);

  return isValid;
}

- (BOOL)validateLayoutHint:(id)hint
{
  hintCopy = hint;
  v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
  objc_opt_class();
  v12 = objc_msgSend_partitioner(v8, v9, v10, v11);
  v13 = TSUDynamicCast();

  v17 = objc_msgSend_cellRange(self, v14, v15, v16);
  v19 = v18;
  v25 = objc_msgSend_cellRange(hintCopy, v18, v20, v21);
  v26 = v22;
  if (!v13)
  {
LABEL_4:
    v29 = objc_msgSend_cellRange(self, v22, v23, v24);
    v30 = v31;
    objc_msgSend_setMaximumSize_(hintCopy, v31, v32, v33, INFINITY, INFINITY);
    objc_msgSend_setCacheHintID_(hintCopy, v34, 0, v35);
    goto LABEL_5;
  }

  objc_msgSend_maximumSize(hintCopy, v22, v23, v24);
  if (v28 == INFINITY)
  {
    v29 = v25;
    v30 = v26;
    if (v27 != INFINITY)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v29 = v25;
  v30 = v26;
LABEL_5:
  if (objc_msgSend_isInlineWithText(v8, v22, v23, v24))
  {
    v39 = v19 + WORD2(v17) - 1;
    if (v19)
    {
      v40 = WORD2(v17) == 0x7FFF;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      v39 = 0x7FFF;
    }

    v41 = v26 + WORD2(v25) - 1;
    if (v26)
    {
      v42 = WORD2(v25) == 0x7FFF;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      v41 = 0x7FFF;
    }

    if (v39 <= v41)
    {
      v43 = v30;
    }

    else
    {
      v43 = v30 & 0xFFFFFFFF00000000 | v19;
    }

    v29 = sub_221119E0C(v29, v43, v17, v19);
    v30 = v36;
  }

  if (v29 == 0x7FFFFFFF || (v29 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v30) || !v30)
  {
    objc_msgSend_setCellRange_(hintCopy, v36, 0x7FFF7FFFFFFFLL, 0);
    objc_msgSend_setIsValid_(hintCopy, v52, 0, v53);
  }

  else
  {
    if ((v17 & 0xFFFF00000000) != 0x7FFF00000000 && v17 == 0x7FFFFFFF)
    {
      v45 = 0;
    }

    else
    {
      v45 = v17;
    }

    if (v45 == v29)
    {
      v46 = objc_msgSend_numberOfHeaderRows(self, v36, v37, v38);
      v49 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v47, v46, v48);
      if (v49 < v29 || HIDWORD(v30) + v29 - 1 < v49)
      {
        v85 = (v29 & 0xFFFF00000000 | v49);
        v50 = TSUCellCoord::convertSpanningToInvalid(&v85);
        v29 = sub_221286760(v29, v30, v50);
        v30 = v36;
      }

      v51 = 1;
    }

    else
    {
      v51 = 0;
    }

    if (HIDWORD(v19))
    {
      v57 = v17 == 0x7FFFFFFF;
    }

    else
    {
      v57 = 1;
    }

    if (v57)
    {
      v58 = 0x7FFFFFFF;
    }

    else
    {
      v58 = v17 + HIDWORD(v19) - 1;
    }

    if (HIDWORD(v30))
    {
      v59 = v29 == 0x7FFFFFFF;
    }

    else
    {
      v59 = 1;
    }

    if (v59)
    {
      v60 = 0x7FFFFFFF;
    }

    else
    {
      v60 = v29 + HIDWORD(v30) - 1;
    }

    if (v58 == v60)
    {
      v51 |= 2u;
    }

    if (v17 != 0x7FFFFFFF && (v17 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v62 = 0;
    }

    else
    {
      v62 = WORD2(v17);
    }

    if (v29 != 0x7FFFFFFF && (v29 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v64 = 0;
    }

    else
    {
      v64 = WORD2(v29);
    }

    if (v62 == v64)
    {
      v51 |= 4u;
    }

    v65 = v19 + WORD2(v17) - 1;
    if (v19)
    {
      v66 = WORD2(v17) == 0x7FFF;
    }

    else
    {
      v66 = 1;
    }

    if (v66)
    {
      v65 = 0x7FFF;
    }

    if (v30)
    {
      v67 = WORD2(v29) == 0x7FFF;
    }

    else
    {
      v67 = 1;
    }

    if (v67)
    {
      v68 = 0x7FFF;
    }

    else
    {
      v68 = v30 + WORD2(v29) - 1;
    }

    if (v65 == v68)
    {
      v69 = v51 | 8;
    }

    else
    {
      v69 = v51;
    }

    if (v69 == 15)
    {
      *&self->_headerColumnsRepeat = 0;
      self->_headerColumnsFrozen = objc_msgSend_headerColumnsFrozen(v8, v36, v37, v38);
      v73 = objc_msgSend_headerRowsFrozen(v8, v70, v71, v72);
    }

    else
    {
      self->_headerColumnsRepeat = objc_msgSend_repeatingHeaderColumnsEnabled(v8, v36, v37, v38);
      v79 = objc_msgSend_repeatingHeaderRowsEnabled(v8, v76, v77, v78);
      v73 = 0;
      self->_headerRowsRepeat = v79;
      self->_headerColumnsFrozen = 0;
    }

    self->_headerRowsFrozen = v73;
    objc_msgSend_setPartitionPosition_(hintCopy, v74, v69, v75);
    objc_msgSend_setCellRange_(hintCopy, v80, v29, v30);
    objc_msgSend_setIsValid_(hintCopy, v81, 1, v82);
  }

  isValid = objc_msgSend_isValid(hintCopy, v54, v55, v56);

  return isValid;
}

- (void)resetModelHeightWidthCache
{
  v7 = objc_msgSend_widthHeightCache(self, a2, v2, v3);
  objc_msgSend_resetModelCache(v7, v4, v5, v6);
}

- (void)clearModelHeightWidthCacheForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_widthHeightCache(self, a2, *&range.origin, *&range.size);
  objc_msgSend_resetModelCacheRange_(v6, v5, origin, size);
}

- (id)tableNameTextEngineWithTableNameStyle:(id)style
{
  styleCopy = style;
  v100 = objc_msgSend_tableInfo(self, v5, v6, v7);
  v10 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80DC8], v8, 0, v9);
  v14 = objc_msgSend_tableNameShapeStyle(v100, v11, v12, v13);
  v17 = objc_msgSend_intValueForProperty_(v14, v15, 149, v16);

  objc_msgSend_setIntValue_forProperty_(v10, v18, v17, 149);
  v22 = objc_msgSend_tableNameShapeStyle(v100, v19, v20, v21);
  v25 = objc_msgSend_objectForProperty_(v22, v23, 146, v24);

  if (!v25)
  {
    v25 = objc_msgSend_padding(MEMORY[0x277D80EB0], v26, v27, v28);
  }

  objc_msgSend_setValue_forProperty_(v10, v26, v25, 146);
  v31 = objc_msgSend_intValueForProperty_(styleCopy, v29, 44, v30) == 1;
  v32 = objc_alloc(MEMORY[0x277D80F70]);
  v36 = objc_msgSend_stylesheet(styleCopy, v33, v34, v35);
  v99 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(v32, v37, v36, styleCopy, 0, v10, v31, v31);

  v41 = objc_msgSend_styleProvidingSource(self, v38, v39, v40);

  if (v41)
  {
    objc_msgSend_topInset(v25, v42, v43, v44);
    v46 = v45;
    objc_msgSend_leftInset(v25, v47, v48, v49);
    v51 = v50;
    objc_msgSend_bottomInset(v25, v52, v53, v54);
    v56 = v55;
    objc_msgSend_rightInset(v25, v57, v58, v59);
    v61 = v60;
    objc_opt_class();
    v65 = objc_msgSend_tableInfo(self, v62, v63, v64);
    v69 = objc_msgSend_context(v65, v66, v67, v68);
    v73 = objc_msgSend_documentObject(v69, v70, v71, v72);
    v74 = TSUCheckedDynamicCast();

    v75 = [TSTTextEngineDelegate alloc];
    v79 = objc_msgSend_typesettingLocale(v74, v76, v77, v78);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v74, v80, v81, v82);
    v87 = objc_msgSend_styleProvidingSource(self, v84, v85, v86);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v75, v88, v17, v79, shouldHyphenate, v87, v46, v51, v56, v61);

    objc_msgSend_setTableNameTextEngineDelegate_(self, v90, shouldHyphenate_styleProvidingSource, v91);
    v95 = objc_msgSend_tableNameTextEngineDelegate(self, v92, v93, v94);
    objc_msgSend_setDelegate_(v99, v96, v95, v97);
  }

  return v99;
}

- (id)tableNameTextEngine
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_tableNameStyle(v5, v6, v7, v8);
  v12 = objc_msgSend_tableNameTextEngineWithTableNameStyle_(self, v10, v9, v11);

  return v12;
}

- (CGSize)tableNameTextSize
{
  if (self->_tableNameEnabled)
  {
    v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
    v9 = objc_msgSend_tableName(v5, v6, v7, v8);
    v13 = objc_msgSend_tableInfo(self, v10, v11, v12);
    v17 = objc_msgSend_tableNameStyle(v13, v14, v15, v16);
    objc_msgSend_tableNameTextSizeForTableName_maxWidth_tableNameStyle_(self, v18, v9, v17, 4294967300.0);
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v20 = *MEMORY[0x277CBF3A8];
    v22 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v23 = v20;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)tableNameTextSizeForTableName:(id)name maxWidth:(double)width tableNameStyle:(id)style
{
  nameCopy = name;
  styleCopy = style;
  v16 = objc_msgSend_tableInfo(self, v10, v11, v12);
  v17 = *MEMORY[0x277CBF3A8];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
  if (nameCopy && objc_msgSend_length(nameCopy, v13, v14, v15) && objc_msgSend_tableNameEnabled(v16, v19, v20, v21))
  {
    v24 = objc_msgSend_tableNameTextEngineWithTableNameStyle_(self, v22, styleCopy, v23);
    objc_msgSend_measureText_withMaxWidth_(v24, v25, nameCopy, v26, width);
    v17 = v27;
    v29 = v28;
    v33 = objc_msgSend_paragraphStyle(v24, v30, v31, v32);
    objc_msgSend_CGFloatValueForProperty_(v33, v34, 88, v35);
    v37 = v36;

    objc_opt_class();
    v41 = objc_msgSend_tableNameShapeStyle(v16, v38, v39, v40);
    v44 = objc_msgSend_valueForProperty_(v41, v42, 146, v43);
    v45 = TSUCheckedDynamicCast();

    objc_msgSend_topInset(v45, v46, v47, v48);
    v50 = v49;
    objc_msgSend_bottomInset(v45, v51, v52, v53);
    v18 = v29 + v37 + v50 + v54;
  }

  v55 = v17;
  v56 = v18;
  result.height = v56;
  result.width = v55;
  return result;
}

+ (double)effectiveTableNameHeightForTable:(id)table
{
  tableCopy = table;
  objc_msgSend_tableNameHeight(tableCopy, v4, v5, v6);
  v8 = v7;
  v12 = objc_msgSend_layoutEngine(tableCopy, v9, v10, v11);
  objc_msgSend_tableNameTextSize(v12, v13, v14, v15);
  v17 = v16;

  if (v8 >= v17)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  if (v8 <= 0.0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  return v19;
}

- (double)tableNameHeight
{
  if (!self->_tableNameEnabled)
  {
    return 0.0;
  }

  (MEMORY[0x2821F9670])(self, sel_calculatedTableNameHeight);
  return result;
}

- (double)tableNameHeightForStorage:(id)storage withMaxWidth:(double)width
{
  storageCopy = storage;
  v10 = 0.0;
  if (!self->_tableNameEnabled)
  {
    goto LABEL_18;
  }

  v14 = objc_msgSend_tableNameHeightCache(self, v6, v7, v8);
  if (!storageCopy)
  {
    v15 = objc_msgSend_tableInfo(self, v11, v12, v13);
    v21 = objc_msgSend_tableName(v15, v22, v23, v24);
    goto LABEL_6;
  }

  v15 = objc_msgSend_string(storageCopy, v11, v12, v13);
  if (!objc_msgSend_length(v15, v16, v17, v18))
  {
    v21 = @" ";
LABEL_6:

    v15 = v21;
  }

  v25 = objc_msgSend_objectForKeyedSubscript_(v14, v19, v15, v20);
  v29 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v26, v27, v28, width);
  v32 = objc_msgSend_objectForKeyedSubscript_(v25, v30, v29, v31);

  if (v32)
  {
    objc_msgSend_tsu_CGFloatValue(v32, v33, v34, v35);
    v10 = v36;
  }

  else
  {
    if (storageCopy)
    {
      v38 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(storageCopy, v33, 0, 0);
      v39 = v38;
    }

    else
    {
      v39 = objc_msgSend_tableInfo(self, v33, v34, v35);
      v38 = objc_msgSend_tableNameStyle(v39, v40, v41, v42);
    }

    objc_msgSend_tableNameTextSizeForTableName_maxWidth_tableNameStyle_(self, v37, v15, v38, width);
    v10 = v43;
    if (!storageCopy)
    {
    }

    if (!v25)
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v47 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v45, v46, v10);
    v51 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v48, v49, v50, width);
    objc_msgSend_setObject_forKeyedSubscript_(v25, v52, v47, v51);

    objc_msgSend_setObject_forKeyedSubscript_(v14, v53, v25, v15);
  }

LABEL_18:
  return v10;
}

- (double)calculatedTableNameHeightIncludingDynamicResize:(BOOL)resize
{
  resizeCopy = resize;
  isDynamicallyResizingTableName = objc_msgSend_isDynamicallyResizingTableName(self, a2, resize, v3);
  cachedTableNameHeight = self->_cachedTableNameHeight;
  if (isDynamicallyResizingTableName && resizeCopy)
  {
    objc_msgSend_dynamicTableNameResize(self, v7, v8, v9);
    return cachedTableNameHeight + v11;
  }

  return cachedTableNameHeight;
}

- (void)invalidateTableNameHeight
{
  self->_tableNameHeightValid = 0;
  v7 = objc_msgSend_tableNameHeightCache(self, a2, v2, v3);
  objc_msgSend_removeAllObjects(v7, v4, v5, v6);
}

- (void)validateTableNameHeight
{
  if (!self->_tableNameHeightValid)
  {
    v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
    objc_msgSend_effectiveTableNameHeightForTable_(TSTLayoutEngine, v6, v5, v7);
    self->_cachedTableNameHeight = v8;

    self->_tableNameHeightValid = 1;
  }
}

- (void)validateTableNameEnabled
{
  v6 = objc_msgSend_tableNameEnabled(self->_tableInfo, a2, v2, v3);

  objc_msgSend_setTableNameEnabled_(self, v5, v6, v7);
}

- (void)updateCellRange
{
  v26 = objc_msgSend_tableInfo(self, a2, v2, v3);
  self->_cachedNumberOfColumns = objc_msgSend_numberOfColumns(v26, v5, v6, v7);
  self->_cachedNumberOfRows = objc_msgSend_numberOfRows(v26, v8, v9, v10);
  self->_cachedNumberOfHeaderColumns = objc_msgSend_numberOfHeaderColumns(v26, v11, v12, v13);
  self->_cachedNumberOfHeaderRows = objc_msgSend_numberOfHeaderRows(v26, v14, v15, v16);
  self->_cachedNumberOfGrandTotalColumns = objc_msgSend_numberOfGrandTotalColumns(v26, v17, v18, v19);
  self->_cachedNumberOfFooterRows = objc_msgSend_numberOfFooterRows(v26, v20, v21, v22);
  self->_cachedNumberOfFooterOrGrandTotalRows = objc_msgSend_numberOfFooterOrGrandTotalRows(v26, v23, v24, v25);
}

- (TSUCellRect)cellRange
{
  v5 = objc_msgSend_numberOfColumns(self, a2, v2, v3);
  v9 = v5 | (objc_msgSend_numberOfRows(self, v6, v7, v8) << 32);
  v10 = 0;
  result.size = v9;
  result.origin = v10;
  return result;
}

- (unsigned)numberOfHeaderColumns
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfHeaderColumns;
  }
}

- (unsigned)numberOfHeaderRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfHeaderRows;
  }
}

- (unsigned)numberOfFooterRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfFooterRows;
  }
}

- (unsigned)numberOfFooterOrGrandTotalRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfFooterOrGrandTotalRows;
  }
}

- (unsigned)numberOfGrandTotalColumns
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return self->_cachedNumberOfGrandTotalColumns;
  }
}

- (unsigned)numberOfNonHiddenFooterRows
{
  if (!objc_msgSend_numberOfFooterRows(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_entireFooterRowsCellRange(self, v5, v6, v7);
  v10 = v9;
  v13 = objc_msgSend_hiddenRowsColumnsCache(self, v9, v11, v12);
  v15 = objc_msgSend_numberOfVisibleRowsInCellRange_(v13, v14, v8, v10);

  return v15;
}

- (TSUCellRect)categoryColumnsCellRange
{
  if (objc_msgSend_isCategorized(self, a2, v2, v3))
  {
    v8 = objc_msgSend_indexesForCategoryColumns(self, v5, v6, v7);
    Index = objc_msgSend_firstIndex(v8, v9, v10, v11);
    v16 = objc_msgSend_lastIndex(v8, v13, v14, v15);
    v20 = objc_msgSend_firstIndex(v8, v17, v18, v19);
    v24 = objc_msgSend_numberOfRows(self, v21, v22, v23);
    v25 = Index << 32;
    v26 = (v16 - v20 + 1) | (v24 << 32);
  }

  else
  {
    v26 = 0;
    v25 = 0x7FFF7FFFFFFFLL;
  }

  v27 = v25;
  v28 = v26;
  result.size = v28;
  result.origin = v27;
  return result;
}

- (TSUCellRect)entireHeaderColumnsCellRange
{
  v5 = objc_msgSend_numberOfHeaderColumns(self, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_cellRange(self, v6, v7, v8);
    v12 = v11 & 0xFFFFFFFF00000000 | v9;
  }

  else
  {
    v12 = 0;
    v10 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v12;
  result.origin = v10;
  return result;
}

- (TSUCellRect)entireActualHeaderColumnsCellRange
{
  v5 = objc_msgSend_numberOfHeaderColumns(self, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_numberOfHeaderRows(self, v6, v7, v8);
    v14 = objc_msgSend_numberOfFooterRows(self, v11, v12, v13);
    v18 = objc_msgSend_numberOfRows(self, v15, v16, v17);
    v19 = v10;
    v20 = v9 | ((v18 - (v14 + v10)) << 32);
  }

  else
  {
    v20 = 0;
    v19 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v20;
  result.origin = v19;
  return result;
}

- (TSUCellRect)entireHeaderRowsCellRange
{
  v5 = objc_msgSend_numberOfHeaderRows(self, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_cellRange(self, v6, v7, v8);
    v12 = v11 | (v9 << 32);
  }

  else
  {
    v12 = 0;
    v10 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v12;
  result.origin = v10;
  return result;
}

- (TSUCellRect)entireFooterRowsCellRange
{
  v5 = objc_msgSend_numberOfFooterRows(self, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_cellRange(self, v6, v7, v8);
    v12 = v11 - v9;
    v14 = v13 | (v9 << 32);
    v15 = v10 & 0xFFFFFFFF00000000 | v12;
  }

  else
  {
    v14 = 0;
    v15 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v14;
  result.origin = v15;
  return result;
}

- (TSUCellRect)entireBodyRowsCellRange
{
  v5 = objc_msgSend_numberOfHeaderRows(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfFooterRows(self, v6, v7, v8);
  v13 = objc_msgSend_numberOfColumns(self, v10, v11, v12);
  v17 = v13 | ((objc_msgSend_numberOfRows(self, v14, v15, v16) - (v9 + v5)) << 32);
  v18 = v5;
  result.size = v17;
  result.origin = v18;
  return result;
}

- (TSUCellRect)entireBodyCellRange
{
  v5 = objc_msgSend_numberOfHeaderRows(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfFooterRows(self, v6, v7, v8);
  v13 = objc_msgSend_numberOfHeaderColumns(self, v10, v11, v12);
  v17 = objc_msgSend_numberOfColumns(self, v14, v15, v16);
  v21 = (v17 - v13) | ((objc_msgSend_numberOfRows(self, v18, v19, v20) - (v9 + v5)) << 32);
  v22 = v5 | (v13 << 32);
  result.size = v21;
  result.origin = v22;
  return result;
}

- (unint64_t)tableAreaForCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_entireFooterRowsCellRange(self, a2, *&d, v3);
  if (!(v7 >> 32) || !v7)
  {
    goto LABEL_25;
  }

  v10 = v6 & 0xFFFF00000000;
  if (v6 != 0x7FFFFFFFLL || v10 == 0x7FFF00000000)
  {
    v14 = v6 == 0x7FFFFFFF && v10 != 0x7FFF00000000;
    if (v6 > d.row && !v14)
    {
      goto LABEL_25;
    }

    v15 = v6 + HIDWORD(v7) - 1;
    if (v6 == 0x7FFFFFFF)
    {
      v15 = 0x7FFFFFFF;
    }

    if (v15 < d.row)
    {
      goto LABEL_25;
    }

    if (v6 != 0x7FFFFFFFLL && v10 == 0x7FFF00000000)
    {
      return 4;
    }
  }

  if (WORD2(v6) <= d.column)
  {
    v11 = WORD2(v6) == 0x7FFF || v7 == 0;
    v12 = v11 ? 0x7FFF : v7 + WORD2(v6) - 1;
    if (v12 >= d.column)
    {
      return 4;
    }
  }

LABEL_25:
  v16 = objc_msgSend_entireHeaderRowsCellRange(self, v7, v8, v9);
  if (!(v17 >> 32) || !v17)
  {
    goto LABEL_49;
  }

  v20 = v16 & 0xFFFF00000000;
  if (v16 != 0x7FFFFFFFLL || v20 == 0x7FFF00000000)
  {
    v24 = v16 == 0x7FFFFFFF && v20 != 0x7FFF00000000;
    if (v16 > d.row && !v24)
    {
      goto LABEL_49;
    }

    v25 = v16 + HIDWORD(v17) - 1;
    if (v16 == 0x7FFFFFFF)
    {
      v25 = 0x7FFFFFFF;
    }

    if (v25 < d.row)
    {
      goto LABEL_49;
    }

    if (v16 != 0x7FFFFFFFLL && v20 == 0x7FFF00000000)
    {
      return 2;
    }
  }

  if (WORD2(v16) <= d.column)
  {
    v21 = WORD2(v16) == 0x7FFF || v17 == 0;
    v22 = v21 ? 0x7FFF : v17 + WORD2(v16) - 1;
    if (v22 >= d.column)
    {
      return 2;
    }
  }

LABEL_49:
  v26 = objc_msgSend_entireHeaderColumnsCellRange(self, v17, v18, v19);
  v28 = 1;
  if (HIDWORD(v27) && v27)
  {
    v29 = v26 & 0xFFFF00000000;
    if (v26 != 0x7FFFFFFFLL || v29 == 0x7FFF00000000)
    {
      v33 = v26 == 0x7FFFFFFF && v29 != 0x7FFF00000000;
      if (v26 > d.row && !v33)
      {
        return 1;
      }

      v34 = v26 + HIDWORD(v27) - 1;
      if (v26 == 0x7FFFFFFF)
      {
        v34 = 0x7FFFFFFF;
      }

      if (v34 < d.row)
      {
        return 1;
      }

      if (v26 != 0x7FFFFFFFLL && v29 == 0x7FFF00000000)
      {
        return 3;
      }
    }

    if (WORD2(v26) <= d.column)
    {
      v30 = WORD2(v26) == 0x7FFF || v27 == 0;
      v31 = v30 ? 0x7FFF : v27 + WORD2(v26) - 1;
      if (v31 >= d.column)
      {
        return 3;
      }
    }

    return 1;
  }

  return v28;
}

- (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)d
{
  if (objc_msgSend_isAPivotTable(self, a2, *&d, v3))
  {
    tableInfo = self->_tableInfo;

    return objc_msgSend_tableStyleAreaForCellID_(tableInfo, v6, *&d, v8);
  }

  if (!objc_msgSend_isCategorized(self, v6, v7, v8))
  {
    goto LABEL_13;
  }

  v14 = objc_msgSend_groupLevelAtSummaryRow_(self, v11, *&d, v13);
  if (v14 == 255)
  {
    v18 = objc_msgSend_groupLevelAtLabelRow_(self, v11, *&d, v15);
    if (v18 != 255)
    {
      v16 = v18;
      v17 = 1;
      goto LABEL_10;
    }

LABEL_13:
    if (objc_msgSend_numberOfHeaderRows(self, v11, v12, v13) > d.row)
    {
      return 2;
    }

    v22 = objc_msgSend_numberOfRows(self, v19, v20, v21);
    if (v22 - objc_msgSend_numberOfFooterRows(self, v23, v24, v25) <= d.row)
    {
      return 4;
    }

    if (objc_msgSend_numberOfHeaderColumns(self, v26, v27, v28) <= d.column)
    {
      return 1;
    }

    return 3;
  }

  v16 = v14;
  v17 = 0;
LABEL_10:

  return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v11, v16, v17);
}

- (unsigned)numberOfRows
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3))
  {
    LODWORD(cachedNumberOfRows) = 1;
  }

  else
  {
    isDynamicallyChangingRowOrColumnCount = objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v5, v6, v7);
    cachedNumberOfRows = self->_cachedNumberOfRows;
    if (isDynamicallyChangingRowOrColumnCount)
    {
      cachedNumberOfRows += self->_dynamicRowAdjustment;
      if (cachedNumberOfRows < 1 || (v13 = objc_msgSend_numberOfHeaderRows(self, v10, v11, v12), cachedNumberOfRows < (v13 + objc_msgSend_numberOfFooterRows(self, v14, v15, v16) + 1)))
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTLayoutEngine numberOfRows]", v12);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v20);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1213, 0, "Size invariants violated by dynamic add/remove");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
      }
    }
  }

  return cachedNumberOfRows;
}

- (unsigned)numberOfColumns
{
  if (objc_msgSend_emptyFilteredTable(self, a2, v2, v3))
  {
    LOWORD(cachedNumberOfColumns) = 1;
  }

  else
  {
    isDynamicallyChangingRowOrColumnCount = objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v5, v6, v7);
    cachedNumberOfColumns = self->_cachedNumberOfColumns;
    if (isDynamicallyChangingRowOrColumnCount)
    {
      cachedNumberOfColumns += self->_dynamicColumnAdjustment;
      if (cachedNumberOfColumns < 1 || cachedNumberOfColumns < (objc_msgSend_numberOfHeaderColumns(self, v10, v11, v12) + 1))
      {
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTLayoutEngine numberOfColumns]", v12);
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v16);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1235, 0, "Size invariants violated by dynamic add/remove");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
      }
    }
  }

  return cachedNumberOfColumns;
}

- (BOOL)hasMergeRanges
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  hasMergeRanges = objc_msgSend_hasMergeRanges(v4, v5, v6, v7);

  return hasMergeRanges;
}

- (id)mergeRangesProppingRowHeightsInRegion:(id)region
{
  regionCopy = region;
  if (objc_msgSend_hasMergeRanges(self, v5, v6, v7))
  {
    v11 = objc_msgSend_visibleColumnIndices(self, v8, v9, v10);
    v14 = objc_msgSend_regionByIntersectingColumnIndices_(regionCopy, v12, v11, v13);

    v18 = objc_msgSend_visibleRowIndices(self, v15, v16, v17);
    v21 = objc_msgSend_regionByIntersectingRowIndices_(v14, v19, v18, v20);

    v24 = objc_msgSend_mergesIntersectingCellRegion_(self, v22, v21, v23);
    v27 = objc_msgSend_mergeListWrapperWithRangesPassingTest_(v24, v25, &unk_2834A6ED0, v26);

    if (objc_msgSend_count(v27, v28, v29, v30))
    {
      v34 = objc_msgSend_regionForList(v27, v31, v32, v33);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)mergesIntersectingRange:(TSUCellRect)range
{
  v4 = objc_msgSend_regionFromRange_(TSTCellRegion, a2, *&range.origin, *&range.size);
  v7 = objc_msgSend_mergesIntersectingCellRegion_(self, v5, v4, v6);

  return v7;
}

- (id)mergesIntersectingCellRegion:(id)region
{
  regionCopy = region;
  v11 = objc_msgSend_tableInfo(self, v5, v6, v7);
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v8, v9, v10) & 1) == 0)
  {
    if (objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v12, v13, v14) && objc_msgSend_isDynamicallyChangingContent(self, v16, v17, v18) && (objc_msgSend_dynamicContentDelegate(self, v16, v19, v18), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, (v21 & 1) != 0))
    {
      v23 = objc_msgSend_dynamicContentDelegate(self, v16, v22, v18);
      v15 = objc_msgSend_mergesIntersectingCellRegion_(v23, v24, regionCopy, v25);
    }

    else
    {
      v15 = objc_msgSend_mergesIntersectingCellRegion_(v11, v16, regionCopy, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)cells
{
  size = cells.size;
  origin = cells.origin;
  if ((objc_msgSend_emptyFilteredTable(self, a2, *&cells.origin, *&cells.size) & 1) == 0)
  {
    v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
    origin = objc_msgSend_expandCellRangeToCoverMergedCells_(v9, v10, origin, size);
    size = v11;
  }

  v12 = origin;
  v13 = size;
  result.size = v13;
  result.origin = v12;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)cells
{
  cellsCopy = cells;
  if (objc_msgSend_emptyFilteredTable(self, v5, v6, v7))
  {
    v11 = cellsCopy;
  }

  else
  {
    v12 = objc_msgSend_tableInfo(self, v8, v9, v10);
    v11 = objc_msgSend_expandCellRegionToCoverMergedCells_(v12, v13, cellsCopy, v14);
  }

  return v11;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  if (objc_msgSend_emptyFilteredTable(self, a2, *&range.origin, *&range.size))
  {
    return 0;
  }

  v10 = objc_msgSend_tableInfo(self, v6, v7, v8);
  hasRangeSpanningRowsForCellRange = objc_msgSend_hasRangeSpanningRowsForCellRange_(v10, v11, origin, size);

  return hasRangeSpanningRowsForCellRange;
}

- (double)widthOfColumn:(unsigned __int16)column skipDynamicSwap:(BOOL)swap returnZeroIfHidden:(BOOL)hidden outIsFitting:(BOOL *)fitting
{
  hiddenCopy = hidden;
  columnCopy = column;
  v67 = 0;
  v10 = objc_msgSend_tableInfo(self, a2, column, swap);
  v14 = objc_msgSend_styleProvidingSource(self, v11, v12, v13);

  if (v14)
  {
    v18 = objc_msgSend_fixedWidthProvider(self, v15, v16, v17);
    v22 = objc_msgSend_numberOfColumns(self, v19, v20, v21);
    objc_msgSend_fixedColumnWidth_(v18, v23, v24, v25, v22);
    v27 = v26;

    goto LABEL_3;
  }

  v32 = objc_msgSend_emptyFilteredTable(self, v15, v16, v17) ^ 1;
  if (columnCopy)
  {
    LOBYTE(v32) = 1;
  }

  if ((v32 & 1) == 0)
  {
    if (self->_cachedNumberOfColumns)
    {
      v33 = 0;
      v27 = 0.0;
      do
      {
        if ((objc_msgSend_hasHiddenColumnAtIndex_(v10, v29, v33, v31) & 1) == 0)
        {
          objc_msgSend_widthOfColumnAtIndex_isDefault_(v10, v29, v33, 0);
          v27 = v27 + v34;
        }

        ++v33;
      }

      while (self->_cachedNumberOfColumns > v33);
    }

    else
    {
      v27 = 0.0;
    }

    goto LABEL_3;
  }

  if (hiddenCopy)
  {
    v27 = 0.0;
    if (objc_msgSend_hasHiddenColumnAtIndex_(self, v29, columnCopy, v31))
    {
      goto LABEL_3;
    }
  }

  if (!objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v29, v30, v31) || !self->_dynamicResizingColumns || (objc_msgSend_numberOfColumns(self, v35, v36, v37) - self->_dynamicColumnAdjustment) > columnCopy)
  {
    dynamicResizeInfo = self->_dynamicResizeInfo;
    if (dynamicResizeInfo)
    {
      if (self->_dynamicRepResize)
      {
LABEL_22:
        objc_msgSend_getColumnWidth_(dynamicResizeInfo, v35, columnCopy, v37);
        dynamicAddOrRemoveColumnElementSize = v42;
        goto LABEL_30;
      }

      if (objc_msgSend_hasWidthForColumn_(dynamicResizeInfo, v35, columnCopy, v37))
      {
        dynamicResizeInfo = self->_dynamicResizeInfo;
        goto LABEL_22;
      }
    }

    objc_msgSend_getModelWidthForColumn_(self->_widthHeightCache, v35, columnCopy, v37);
    dynamicAddOrRemoveColumnElementSize = v45;
    if (v45 <= 0.0)
    {
      objc_msgSend_widthOfColumnAtIndex_isDefault_(v10, v44, columnCopy, &v67);
      dynamicAddOrRemoveColumnElementSize = v46;
      objc_msgSend_setModelWidth_forColumn_(self->_widthHeightCache, v47, columnCopy, v48);
    }

    if (fitting)
    {
      *fitting = 0;
    }

    if (!objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v44, 1, columnCopy))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  dynamicAddOrRemoveColumnElementSize = self->_dynamicAddOrRemoveColumnElementSize;
  if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v35, 1, columnCopy))
  {
LABEL_29:
    dynamicAddOrRemoveColumnElementSize = dynamicAddOrRemoveColumnElementSize + self->_dynamicResizingColumnAdjustment;
  }

LABEL_30:
  v52 = objc_msgSend_partitioner(v10, v39, v40, v41);
  v53 = 1.0;
  if (v52)
  {
    v54 = objc_msgSend_partitioner(v10, v49, v50, v51);
    IsValid = objc_msgSend_scaleIsValid(v54, v55, v56, v57);

    if (IsValid)
    {
      v62 = objc_msgSend_partitioner(v10, v59, v60, v61);
      objc_msgSend_scaleToFit(v62, v63, v64, v65);
      v53 = v66;
    }
  }

  v27 = dynamicAddOrRemoveColumnElementSize * v53;
LABEL_3:

  return v27;
}

- (double)heightOfRow:(unsigned int)row skipDynamicSwap:(BOOL)swap withStrokeHeights:(BOOL)heights returnZeroIfHidden:(BOOL)hidden clampToPartitionSize:(BOOL)size maximumPartitionSize:(CGSize)partitionSize outIsFitting:(BOOL *)fitting
{
  height = partitionSize.height;
  width = partitionSize.width;
  sizeCopy = size;
  hiddenCopy = hidden;
  heightsCopy = heights;
  v15 = *&row;
  v17 = objc_msgSend_tableInfo(self, a2, *&row, swap);
  objc_msgSend_defaultRowHeight(v17, v18, v19, v20);
  v22 = v21;
  v28 = objc_msgSend_tableRowsBehavior(self, v23, v24, v25);
  if (hiddenCopy)
  {
    v29 = 0.0;
    if (objc_msgSend_hasHiddenRowAtIndex_(self, v26, v15, v27))
    {
      goto LABEL_60;
    }
  }

  v88 = 0.0;
  v89 = 0.0;
  objc_msgSend_strokeWidthForGridIndex_outWidth_outNextWidth_(self->_rowToStrokeHeightCache, v26, v15, &v89, &v88);
  v88 = v88 * 0.5;
  v89 = v89 * 0.5;
  v36 = objc_msgSend_emptyFilteredTable(self, v30, v31, v32) ^ 1;
  if (v15)
  {
    LOBYTE(v36) = 1;
  }

  if ((v36 & 1) == 0)
  {
    if (fitting)
    {
      *fitting = 1;
    }

    v29 = self->_tableDefaultFontHeightForArea.__begin_[1] + v89 + v88;
    goto LABEL_60;
  }

  if (objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v33, v34, v35))
  {
    if (self->_dynamicResizingRows)
    {
      v40 = objc_msgSend_numberOfRows(self, v37, v38, v39);
      if (v40 - objc_msgSend_numberOfFooterRows(self, v41, v42, v43) - self->_dynamicRowAdjustment <= v15)
      {
        v45 = objc_msgSend_numberOfRows(self, v37, v44, v39);
        if (v45 - objc_msgSend_numberOfFooterRows(self, v46, v47, v48) > v15)
        {
          dynamicAddOrRemoveRowElementSize = self->_dynamicAddOrRemoveRowElementSize;
          if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v37, 0, v15))
          {
            dynamicAddOrRemoveRowElementSize = dynamicAddOrRemoveRowElementSize + self->_dynamicResizingRowAdjustment;
          }

          v52 = 0;
          v54 = dynamicAddOrRemoveRowElementSize == v22 && v28 != 2;
          goto LABEL_26;
        }
      }
    }
  }

  dynamicResizeInfo = self->_dynamicResizeInfo;
  if (!dynamicResizeInfo)
  {
    goto LABEL_27;
  }

  if (!self->_dynamicRepResize)
  {
    if (objc_msgSend_hasHeightForRow_(dynamicResizeInfo, v37, v15, v39))
    {
      dynamicResizeInfo = self->_dynamicResizeInfo;
      goto LABEL_25;
    }

LABEL_27:
    v87 = 0;
    v85 = 0.0;
    v86 = 0.0;
    objc_msgSend_getFitHeight_andModelHeight_forRow_(self->_widthHeightCache, v37, &v85, &v86, v15);
    if (v86 == 0.0)
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v17, v58, v15, &v87, v86);
      if ((v87 & (v28 == 3)) != 0)
      {
        v62 = -1.0;
      }

      v86 = v62;
      objc_msgSend_setModelHeight_forRow_(self->_widthHeightCache, v60, v15, v61);
    }

    else if (v86 == -1.0)
    {
      v87 = 1;
    }

    dynamicAddOrRemoveRowElementSize = v86;
    if (v28 == 1)
    {
      v63 = v85;
      v64 = v86;
      if (v85 == 0.0)
      {
        objc_msgSend_computeDefaultFontHeightForTableStyleArea_(v17, v58, 1, v59, v85, v86);
        v85 = v63;
        v64 = v86;
      }

      v54 = v64 == v22;
      v66 = v88;
      v65 = v89;
      if (v63 >= v64 - (v89 + v88))
      {
        v54 = 1;
        v67 = 1;
        dynamicAddOrRemoveRowElementSize = v63;
      }

      else
      {
        v67 = 0;
      }
    }

    else
    {
      if (v28 == 3)
      {
        if (v86 == -1.0)
        {
          v54 = 1;
          dynamicAddOrRemoveRowElementSize = v85;
          v52 = 1;
        }

        else
        {
          v54 = 0;
          v52 = 0;
        }

LABEL_49:
        if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v58, 0, v15))
        {
          dynamicAddOrRemoveRowElementSize = dynamicAddOrRemoveRowElementSize + self->_dynamicResizingRowAdjustment;
        }

        v71 = objc_msgSend_partitioner(v17, v68, v69, v70);
        IsValid = objc_msgSend_scaleIsValid(v71, v72, v73, v74);

        v57 = 1.0;
        if (IsValid)
        {
          v77 = objc_msgSend_partitioner(v17, v50, v76, v51);
          objc_msgSend_scaleToFit(v77, v78, v79, v80);
          v57 = v81;
        }

        goto LABEL_53;
      }

      v63 = v85;
      if (v85 == 0.0)
      {
        objc_msgSend_computeDefaultFontHeightForTableStyleArea_(v17, v58, 1, v59, v85);
        v85 = v63;
      }

      v54 = 0;
      v67 = 0;
      v66 = v88;
      v65 = v89;
      v64 = v86;
    }

    if (vabdd_f64(v63 + v65 + v66, v64) < 0.01)
    {
      v52 = 1;
    }

    else
    {
      v52 = v67;
    }

    goto LABEL_49;
  }

LABEL_25:
  objc_msgSend_getRowHeight_(dynamicResizeInfo, v37, v15, v39);
  dynamicAddOrRemoveRowElementSize = v56;
  v52 = 0;
  v54 = 0;
LABEL_26:
  v57 = 1.0;
LABEL_53:
  v82 = dynamicAddOrRemoveRowElementSize + v89 + v88;
  if (!heightsCopy || !v54)
  {
    v82 = dynamicAddOrRemoveRowElementSize;
  }

  if (fitting)
  {
    *fitting = v52;
  }

  v29 = v57 * v82;
  if (sizeCopy && height > 0.0)
  {
    objc_msgSend_clampRowHeightAccountingForMaximumPartitionSize_rowIndex_rowHeight_(self, v50, v15, v51, width, height, v29);
    v29 = v83;
  }

LABEL_60:

  return v29;
}

- (double)clampRowHeightAccountingForMaximumPartitionSize:(CGSize)size rowIndex:(unsigned int)index rowHeight:(double)height
{
  height = size.height;
  v8 = MEMORY[0x277CBF3A8];
  if (size.width != *MEMORY[0x277CBF3A8] || size.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v12 = objc_msgSend_numberOfHeaderRows(self, a2, *&index, v5);
    if (self->_headerRowsRepeat && v12 - 1 < index)
    {
      v15 = v12;
      v16 = 0;
      do
      {
        objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, v13, v16, 0, 1, 1, 0, 0, *v8, v8[1]);
        height = height - v17;
        v16 = (v16 + 1);
      }

      while (v15 != v16);
    }

    if (height <= height)
    {
      heightCopy2 = height;
    }

    else
    {
      heightCopy2 = height;
    }

    if (heightCopy2 >= 0.0)
    {
      return heightCopy2;
    }

    else
    {
      return 0.0;
    }
  }

  return height;
}

- (double)heightOfRowIgnoringFitting:(unsigned int)fitting withStrokeHeights:(BOOL)heights
{
  heightsCopy = heights;
  v5 = *&fitting;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v7 = objc_msgSend_tableInfo(self, a2, *&fitting, heights);
  v14 = objc_msgSend_tableRowsBehavior(self, v8, v9, v10);
  v15 = 0.0;
  v16 = 0.0;
  if (heightsCopy)
  {
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, v11, v5, 0, 2147483646);
    v18 = v17;
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, v19, (v5 + 1), 0, 2147483646);
    v16 = v18 * 0.5;
    v15 = v20 * 0.5;
  }

  if (objc_msgSend_isDynamicallyChangingRowOrColumnCount(self, v11, v12, v13) && self->_dynamicResizingRows && (v24 = objc_msgSend_numberOfRows(self, v21, v22, v23), v24 - objc_msgSend_numberOfFooterRows(self, v25, v26, v27) - self->_dynamicRowAdjustment <= v5))
  {
    v67[3] = self->_dynamicAddOrRemoveRowElementSize;
    v36 = 1.0;
  }

  else
  {
    v65 = 0;
    objc_msgSend_getModelHeightForRow_(self->_widthHeightCache, v21, v5, v23);
    if (v31 == 0.0)
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v7, v28, v5, &v65);
      if (v65 != 1 || (v35 = -1.0, v14 != 3))
      {
        v67[3] = v34;
        v35 = v34;
      }

      objc_msgSend_setModelHeight_forRow_(self->_widthHeightCache, v32, v5, v33, v35);
    }

    else
    {
      v35 = -1.0;
      if (v31 == -1.0)
      {
        v65 = 1;
      }

      else
      {
        v67[3] = v31;
        v35 = v31;
      }
    }

    v39 = objc_msgSend_partitioner(v7, v28, v29, v30);
    v36 = 1.0;
    if (v39)
    {
      v40 = objc_msgSend_partitioner(v7, v21, v37, v38);
      IsValid = objc_msgSend_scaleIsValid(v40, v41, v42, v43);

      if (IsValid)
      {
        v45 = objc_msgSend_partitioner(v7, v21, v37, v38);
        objc_msgSend_scaleToFit(v45, v46, v47, v48);
        v36 = v49;
      }
    }

    if (v35 == -1.0)
    {
      v50 = objc_msgSend_numberOfColumns(self, v21, v37, v38);
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x3032000000;
      v63[3] = sub_2213A53FC;
      v63[4] = sub_2213A540C;
      v64 = 0;
      v67[3] = 0.0;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_2213A5414;
      v57[3] = &unk_278463D08;
      v57[4] = self;
      v58 = v7;
      v59 = &v66;
      v61 = v16;
      v62 = v15;
      v60 = v63;
      objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v51, v5, v50 | 0x100000000, 0, 6291456, v57);
      v52 = v67;
      v53 = v67[3];
      if (v53 == 0.0)
      {
        v53 = v15 + v16 + self->_tableDefaultFontHeightForArea.__begin_[1];
        v67[3] = v53;
      }

      if (v53 < 8.0)
      {
        v53 = 8.0;
      }

      v52[3] = v53;

      _Block_object_dispose(v63, 8);
    }
  }

  if (objc_msgSend_isDynamicallyResizingForColumnRowAdd_rowColIndex_(self, v21, 0, v5))
  {
    v54 = self->_dynamicResizingRowAdjustment + v67[3];
    v67[3] = v54;
  }

  else
  {
    v54 = v67[3];
  }

  v55 = v36 * v54;

  _Block_object_dispose(&v66, 8);
  return v55;
}

- (void)invalidateStrokeDefaults
{
  objc_msgSend_invalidateBandedFill(self, a2, v2, v3);
  strokesDefaultVendor = self->_strokesDefaultVendor;

  objc_msgSend_invalidate(strokesDefaultVendor, v5, v6, v7);
}

- (void)invalidateStrokeSpills
{
  v3 = (self->_rightColumnStrokes.var0 - self->_rightColumnStrokes.__begin_) >> 3;
  pthread_rwlock_wrlock(&self->_strokesRWLock);
  spillStrokeColumns = self->_spillStrokeColumns;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213A5978;
  v10[3] = &unk_278463D30;
  v11 = v3;
  v10[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(spillStrokeColumns, v5, v10, v6);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  objc_msgSend_removeAllIndexes(self->_spillStrokeColumns, v7, v8, v9);
}

- (void)validateStrokesArrays:(id)arrays
{
  arraysCopy = arrays;
  v5 = objc_autoreleasePoolPush();
  v121 = objc_msgSend_validateChangeDescriptors_(self->_strokesDefaultVendor, v6, arraysCopy, v7);
  v11 = objc_msgSend_numberOfColumns(self, v8, v9, v10);
  begin = self->_leftColumnStrokes.__begin_;
  var0 = self->_leftColumnStrokes.var0;
  LODWORD(v20) = objc_msgSend_numberOfRows(self, v14, v15, v16);
  if ((v121 & 8) != 0)
  {
    LODWORD(v120) = objc_msgSend_numberOfHeaderRows(self, v17, v18, v19);
  }

  else
  {
    v120 = (self->_topRowStrokes.var0 - self->_topRowStrokes.__begin_) >> 3;
  }

  v21 = (var0 - begin) >> 3;
  v22 = (v20 + 1);
  v23 = v11 + 1 < v21 || v11 >= v21;
  v24 = v23;
  v119 = v24;
  if (v23 || (v22 == v120 ? (v25 = (v121 & 0xA) == 0) : (v25 = 0), !v25))
  {
    pthread_rwlock_wrlock(&self->_strokesRWLock);
    if (v119)
    {
      sub_2213A60DC(&self->_leftColumnStrokes.__begin_, v11 + 1);
      sub_2213A60DC(&self->_rightColumnStrokes.__begin_, v11 + 1);
      objc_msgSend_setCount_(self->_columnToStrokeWidthCache, v28, v11 + 1, v29);
    }

    if (v22 != v120)
    {
      if ((v121 & 8) != 0)
      {
        sub_2213A60DC(&self->_topRowStrokes.__begin_, v120);
        sub_2213A60DC(&self->_bottomRowStrokes.__begin_, v120);
      }

      sub_2213A60DC(&self->_topRowStrokes.__begin_, (v20 + 1));
      sub_2213A60DC(&self->_bottomRowStrokes.__begin_, (v20 + 1));
      objc_msgSend_setCount_(self->_rowToStrokeHeightCache, v30, (v20 + 1), v31);
    }

    v117 = v11 + 1;
    v118 = v5;
    if (v11 + 1 < v21)
    {
      v32 = 1000;
      if (v11 == 1000)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11 >= 0x3E8)
      {
        v33 = v32;
      }

      else
      {
        v33 = v11;
      }

      if (v11 >= 0x3E8)
      {
        v34 = v11 - 1000;
      }

      else
      {
        v34 = 1000 - v11;
      }

      if (v20 != -1)
      {
        v35 = 0;
        do
        {
          v36 = self->_topRowStrokes.__begin_[v35];
          v37 = self->_bottomRowStrokes.__begin_[v35];
          if ((objc_msgSend_isDefaultsOnly(v36, v38, v39, v40) & 1) == 0)
          {
            objc_msgSend_lockForWrite(v36, v41, v42, v43);
            objc_msgSend_invalidateCustomStrokes(v36, v44, v45, v46);
            objc_msgSend_invalidateClearedStrokesInRange_(v36, v47, v33, v34);
            objc_msgSend_invalidateDynamicStrokesInRange_(v36, v48, v33, v34);
            objc_msgSend_unlock(v36, v49, v50, v51);
          }

          if ((objc_msgSend_isDefaultsOnly(v37, v41, v42, v43, v117) & 1) == 0)
          {
            objc_msgSend_lockForWrite(v37, v52, v53, v54);
            objc_msgSend_invalidateCustomStrokes(v37, v55, v56, v57);
            objc_msgSend_invalidateClearedStrokesInRange_(v37, v58, v33, v34);
            objc_msgSend_invalidateDynamicStrokesInRange_(v37, v59, v33, v34);
            objc_msgSend_unlock(v37, v60, v61, v62);
          }

          ++v35;
        }

        while ((v20 + 1) != v35);
      }
    }

    if (v22 < v120)
    {
      v63 = 0;
      v64 = 1000000;
      v65 = 1000000 - v20;
      v66 = v20 - 1000000;
      v67 = v20 >= 0xF4240;
      if (v20 == 1000000)
      {
        v64 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v20 >= 0xF4240)
      {
        v20 = v64;
      }

      else
      {
        v20 = v20;
      }

      if (v67)
      {
        v68 = v66;
      }

      else
      {
        v68 = v65;
      }

      v69 = 8 * v11 + 8;
      do
      {
        v70 = self->_leftColumnStrokes.__begin_[v63 / 8];
        v71 = self->_rightColumnStrokes.__begin_[v63 / 8];
        if ((objc_msgSend_isDefaultsOnly(v70, v72, v73, v74) & 1) == 0)
        {
          objc_msgSend_lockForWrite(v70, v75, v76, v77);
          objc_msgSend_invalidateCustomStrokes(v70, v78, v79, v80);
          objc_msgSend_invalidateClearedStrokesInRange_(v70, v81, v20, v68);
          objc_msgSend_invalidateDynamicStrokesInRange_(v70, v82, v20, v68);
          objc_msgSend_invalidateSpillStrokes(v70, v83, v84, v85);
          objc_msgSend_unlock(v70, v86, v87, v88);
        }

        if ((objc_msgSend_isDefaultsOnly(v71, v75, v76, v77, v117) & 1) == 0)
        {
          objc_msgSend_lockForWrite(v71, v89, v90, v91);
          objc_msgSend_invalidateCustomStrokes(v71, v92, v93, v94);
          objc_msgSend_invalidateClearedStrokesInRange_(v71, v95, v20, v68);
          objc_msgSend_invalidateDynamicStrokesInRange_(v71, v96, v20, v68);
          objc_msgSend_invalidateSpillStrokes(v71, v97, v98, v99);
          objc_msgSend_unlock(v71, v100, v101, v102);
        }

        v63 += 8;
      }

      while (v69 != v63);
    }

    v5 = v118;
    if (v22 != v120 || (v121 & 6) != 0)
    {
      v103 = objc_msgSend_strokeLayerForStrokeType_(self->_strokesDefaultVendor, v26, 41, v27, v117);
      strokesDefaultVendor = self->_strokesDefaultVendor;
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = sub_2213A6164;
      v130[3] = &unk_278463D58;
      v130[4] = self;
      v132 = (v121 & 4) != 0;
      v105 = v103;
      v131 = v105;
      objc_msgSend_enumerateLayerAndStackForGridRowRange_options_usingBlock_(strokesDefaultVendor, v106, 0, v22, 0, v130);
      v107 = self->_strokesDefaultVendor;
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = sub_2213A631C;
      v127[3] = &unk_278463D80;
      v127[4] = self;
      v129 = v22;
      v108 = v105;
      v128 = v108;
      objc_msgSend_enumerateLayerAndStackForGridRowRange_options_usingBlock_(v107, v109, 0, v22, 2, v127);
    }

    if ((v119 | ((v121 & 2) >> 1)) == 1)
    {
      v110 = objc_msgSend_strokeLayerForStrokeType_(self->_strokesDefaultVendor, v26, 5, v27);
      v111 = self->_strokesDefaultVendor;
      v125[0] = MEMORY[0x277D85DD0];
      v125[1] = 3221225472;
      v125[2] = sub_2213A64E8;
      v125[3] = &unk_278463DA8;
      v125[4] = self;
      v112 = v110;
      v126 = v112;
      objc_msgSend_enumerateLayerAndStackForGridColumnRange_options_usingBlock_(v111, v113, 0, v117, 0, v125);
      v114 = self->_strokesDefaultVendor;
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = sub_2213A6694;
      v122[3] = &unk_278463D80;
      v122[4] = self;
      v124 = v117;
      v115 = v112;
      v123 = v115;
      objc_msgSend_enumerateLayerAndStackForGridColumnRange_options_usingBlock_(v114, v116, 0, v117, 2, v122);
    }

    pthread_rwlock_unlock(&self->_strokesRWLock);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridColumn:(unsigned int)column isLeft:(BOOL)left beginRow:(unsigned int)row endRow:(unsigned int)endRow
{
  leftCopy = left;
  v11 = *&column;
  v12 = *&order;
  strokeCopy = stroke;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v15 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v14, v11, leftCopy, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v17 = row - endRow;
  endRowCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endRow >= row)
  {
    v17 = 0;
  }

  else
  {
    endRowCopy = endRow;
  }

  if (row < endRow)
  {
    rowCopy = row;
  }

  else
  {
    rowCopy = endRowCopy;
  }

  if (row < endRow)
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, rowCopy, endRow - row);
  }

  else
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, rowCopy, v17);
  }

  objc_msgSend_unlock(v15, v20, v21, v22);
}

- (void)setStrokeSpillForRightGridColumn:(unsigned int)column leftGridColumn:(unsigned int)gridColumn inRow:(unsigned int)row
{
  v6 = *&gridColumn;
  v7 = *&column;
  objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, a2, *&column, *&row, row + 1);
  v28 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], v9, v10, v11);
  objc_msgSend_addIndex_(self->_spillStrokeColumns, v12, v7, v13);
  if (v6 != v7)
  {
    objc_msgSend_addIndex_(self->_spillStrokeColumns, v14, v6, v15);
  }

  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v17 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v16, v6, 1, 1);
  v19 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v18, v7, 0, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  objc_msgSend_insertSpillStroke_atRange_(v17, v20, v28, row, 1);
  objc_msgSend_unlock(v17, v21, v22, v23);
  objc_msgSend_insertSpillStroke_atRange_(v19, v24, v28, row, 1);
  objc_msgSend_unlock(v19, v25, v26, v27);
}

- (BOOL)hasStrokeSpillForLeftGridColumn:(unsigned int)column inRow:(unsigned int)row
{
  v5 = *&column;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v8 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v7, v5, 1, 0);
  v10 = v8;
  if (v8)
  {
    hasSpillStrokeInRange = objc_msgSend_hasSpillStrokeInRange_(v8, v9, row, 1);
    objc_msgSend_unlock(v10, v12, v13, v14);
  }

  else
  {
    hasSpillStrokeInRange = 0;
  }

  pthread_rwlock_unlock(&self->_strokesRWLock);

  return hasSpillStrokeInRange;
}

- (void)setClearedStrokeForGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow
{
  v7 = *&column;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v26 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v9, v7, 1, 1);
  v11 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v10, v7, 0, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v13 = row - endRow;
  endRowCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endRow >= row)
  {
    v13 = 0;
  }

  else
  {
    endRowCopy = endRow;
  }

  v15 = endRow - row;
  v16 = row >= endRow;
  if (row < endRow)
  {
    rowCopy = row;
  }

  else
  {
    rowCopy = endRowCopy;
  }

  if (v16)
  {
    v18 = v13;
    objc_msgSend_insertClearedStrokeAtRange_(v26, v12, rowCopy, v13);
  }

  else
  {
    v18 = v15;
    objc_msgSend_insertClearedStrokeAtRange_(v26, v12, rowCopy, v15);
  }

  objc_msgSend_unlock(v26, v19, v20, v21);
  objc_msgSend_insertClearedStrokeAtRange_(v11, v22, rowCopy, v18);
  objc_msgSend_unlock(v11, v23, v24, v25);
}

- (void)setClearedStrokeForGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn
{
  v7 = *&row;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v26 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v9, v7, 1, 1);
  v11 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v10, v7, 0, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v13 = column - endColumn;
  endColumnCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endColumn >= column)
  {
    v13 = 0;
  }

  else
  {
    endColumnCopy = endColumn;
  }

  v15 = endColumn - column;
  v16 = column >= endColumn;
  if (column < endColumn)
  {
    columnCopy = column;
  }

  else
  {
    columnCopy = endColumnCopy;
  }

  if (v16)
  {
    v18 = v13;
    objc_msgSend_insertClearedStrokeAtRange_(v26, v12, columnCopy, v13);
  }

  else
  {
    v18 = v15;
    objc_msgSend_insertClearedStrokeAtRange_(v26, v12, columnCopy, v15);
  }

  objc_msgSend_unlock(v26, v19, v20, v21);
  objc_msgSend_insertClearedStrokeAtRange_(v11, v22, columnCopy, v18);
  objc_msgSend_unlock(v11, v23, v24, v25);
}

- (BOOL)adjustGridColumnForVisibility:(unsigned int *)visibility isLeft:(BOOL)left
{
  leftCopy = left;
  v7 = *visibility;
  v8 = 80;
  if (left)
  {
    v8 = 56;
  }

  v9 = (&self->super.isa + v8);
  if (left)
  {
    if (v7 < (v9[1] - *v9) >> 3 && objc_msgSend_hasHiddenColumnAtIndex_(self, a2, *visibility, left))
    {
      LODWORD(v7) = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self, v10, v7, v11);
    }
  }

  else if (v7 && objc_msgSend_hasHiddenColumnAtIndex_(self, a2, (v7 - 1), left))
  {
    LODWORD(v7) = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v12, (v7 - 1), v13) + 1;
  }

  result = 0;
  v15 = !leftCopy;
  if (v7)
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = (v9[1] - *v9) >> 3;
    if (v16 > v7)
    {
      if (leftCopy && v16 - 1 == v7)
      {
        return 0;
      }

      else
      {
        *visibility = v7;
        return 1;
      }
    }
  }

  return result;
}

- (id)p_strokesForGridColumn:(unsigned int)column isLeft:(BOOL)left takeStrokeWriteLock:(BOOL)lock
{
  lockCopy = lock;
  columnCopy = column;
  if (left)
  {
    v7 = 56;
  }

  else
  {
    v7 = 80;
  }

  if (objc_msgSend_adjustGridColumnForVisibility_isLeft_(self, a2, &columnCopy, left))
  {
    v11 = (*(&self->super.isa + v7))[columnCopy];
    if (!lockCopy)
    {
LABEL_6:
      objc_msgSend_lockForRead(v11, v8, v9, v10);
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    if (!lockCopy)
    {
      goto LABEL_6;
    }
  }

  if (objc_msgSend_isDefaultsOnly(v11, v8, v9, v10))
  {
    v15 = objc_msgSend_replacementWithDefaults(v11, v12, v13, v14);

    objc_storeStrong(*(&self->super.isa + v7) + columnCopy, v15);
    v11 = v15;
  }

  objc_msgSend_lockForWrite(v11, v12, v13, v14);
LABEL_11:

  return v11;
}

- (id)mergedStrokesForGridColumn:(unsigned int)column
{
  v3 = *&column;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v6 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v5, v3, 1, 0);
  v8 = objc_msgSend_p_strokesForGridColumn_isLeft_takeStrokeWriteLock_(self, v7, v3, 0, 0);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v10 = objc_msgSend_mergeLeftStrokes_withRightStrokes_(TSTStrokeLayerMergedStack, v9, v6, v8);
  objc_msgSend_unlock(v6, v11, v12, v13);
  objc_msgSend_unlock(v8, v14, v15, v16);

  return v10;
}

- (double)strokeWidthOfGridColumn:(unsigned int)column beginRow:(unsigned int)row endRow:(unsigned int)endRow
{
  v5 = row - endRow;
  endRowCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endRow >= row)
  {
    v5 = 0;
  }

  else
  {
    endRowCopy = endRow;
  }

  v7 = endRow - row;
  v8 = row >= endRow;
  if (row < endRow)
  {
    *&row = row;
  }

  else
  {
    *&row = endRowCopy;
  }

  if (v8)
  {
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, a2, *&column, *&row, v5);
  }

  else
  {
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, a2, *&column, *&row, v7);
  }

  return result;
}

- (void)p_setDynamicStroke:(id)stroke strokeOrder:(int)order forGridRow:(unsigned int)row isTop:(BOOL)top beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn
{
  topCopy = top;
  v11 = *&row;
  v12 = *&order;
  strokeCopy = stroke;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v15 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v14, v11, topCopy, 1);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v17 = column - endColumn;
  endColumnCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endColumn >= column)
  {
    v17 = 0;
  }

  else
  {
    endColumnCopy = endColumn;
  }

  if (column < endColumn)
  {
    columnCopy = column;
  }

  else
  {
    columnCopy = endColumnCopy;
  }

  if (column < endColumn)
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, columnCopy, endColumn - column);
  }

  else
  {
    objc_msgSend_insertDynamicStroke_strokeOrder_atRange_(v15, v16, strokeCopy, v12, columnCopy, v17);
  }

  objc_msgSend_unlock(v15, v20, v21, v22);
}

- (BOOL)adjustGridRowForVisibility:(unsigned int *)visibility isTop:(BOOL)top
{
  topCopy = top;
  v7 = *visibility;
  v8 = 32;
  if (top)
  {
    v8 = 8;
  }

  v9 = (&self->super.isa + v8);
  if (top)
  {
    if (v7 < (v9[1] - *v9) >> 3 && objc_msgSend_hasHiddenRowAtIndex_(self, a2, *visibility, top))
    {
      LODWORD(v7) = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v10, v7, v11);
    }
  }

  else if (v7 && objc_msgSend_hasHiddenRowAtIndex_(self, a2, (v7 - 1), top))
  {
    LODWORD(v7) = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, v12, (v7 - 1), v13) + 1;
  }

  result = 0;
  v15 = !topCopy;
  if (v7)
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = (v9[1] - *v9) >> 3;
    if (v16 > v7)
    {
      if (topCopy && v16 - 1 == v7)
      {
        return 0;
      }

      else
      {
        *visibility = v7;
        return 1;
      }
    }
  }

  return result;
}

- (id)p_strokesForGridRow:(unsigned int)row isTop:(BOOL)top takeStrokeWriteLock:(BOOL)lock
{
  lockCopy = lock;
  rowCopy = row;
  if (top)
  {
    v7 = 8;
  }

  else
  {
    v7 = 32;
  }

  if (objc_msgSend_adjustGridRowForVisibility_isTop_(self, a2, &rowCopy, top))
  {
    v11 = (*(&self->super.isa + v7))[rowCopy];
    if (!lockCopy)
    {
LABEL_6:
      objc_msgSend_lockForRead(v11, v8, v9, v10);
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    if (!lockCopy)
    {
      goto LABEL_6;
    }
  }

  if (objc_msgSend_isDefaultsOnly(v11, v8, v9, v10))
  {
    v15 = objc_msgSend_replacementWithDefaults(v11, v12, v13, v14);

    objc_storeStrong(*(&self->super.isa + v7) + rowCopy, v15);
    v11 = v15;
  }

  objc_msgSend_lockForWrite(v11, v12, v13, v14);
LABEL_11:

  return v11;
}

- (id)p_strokesForValidationOfGridRow:(unsigned int)row isTop:(BOOL)top
{
  topCopy = top;
  rowCopy = row;
  if (objc_msgSend_adjustGridRowForVisibility_isTop_(self, a2, &rowCopy, top))
  {
    v9 = 32;
    if (topCopy)
    {
      v9 = 8;
    }

    v10 = (*(&self->super.isa + v9))[rowCopy];
    objc_msgSend_lockForRead(v10, v6, v7, v8);
  }

  else
  {
    v10 = 0;
    objc_msgSend_lockForRead(0, v6, v7, v8);
  }

  return v10;
}

- (id)mergedStrokesForGridRow:(unsigned int)row
{
  v3 = *&row;
  pthread_rwlock_rdlock(&self->_strokesRWLock);
  v6 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v5, v3, 1, 0);
  v8 = objc_msgSend_p_strokesForGridRow_isTop_takeStrokeWriteLock_(self, v7, v3, 0, 0);
  pthread_rwlock_unlock(&self->_strokesRWLock);
  v10 = objc_msgSend_mergeTopStrokes_withBottomStrokes_(TSTStrokeLayerMergedStack, v9, v6, v8);
  objc_msgSend_unlock(v6, v11, v12, v13);
  objc_msgSend_unlock(v8, v14, v15, v16);

  return v10;
}

- (void)p_validateStrokeWidthCachesForGridRow:(unsigned int)row
{
  v3 = *&row;
  rowCopy = row;
  rowCopy2 = row;
  isTop = objc_msgSend_adjustGridRowForVisibility_isTop_(self, a2, &rowCopy2, 1);
  v7 = objc_msgSend_adjustGridRowForVisibility_isTop_(self, v6, &rowCopy, 0);
  if (isTop)
  {
    v9 = self->_topRowStrokes.__begin_[rowCopy2];
    if (!v7)
    {
LABEL_3:
      objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_rowToStrokeHeightCache, v8, v3, v9, 0);
      return;
    }
  }

  else
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_rowToStrokeHeightCache, v8, v3, v9, self->_bottomRowStrokes.__begin_[rowCopy]);
}

- (void)p_validateStrokeWidthCachesForGridColumn:(unsigned int)column
{
  v3 = *&column;
  columnCopy = column;
  columnCopy2 = column;
  isLeft = objc_msgSend_adjustGridColumnForVisibility_isLeft_(self, a2, &columnCopy2, 1);
  v7 = objc_msgSend_adjustGridColumnForVisibility_isLeft_(self, v6, &columnCopy, 0);
  if (isLeft)
  {
    v9 = self->_leftColumnStrokes.__begin_[columnCopy2];
    if (!v7)
    {
LABEL_3:
      objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_columnToStrokeWidthCache, v8, v3, v9, 0);
      return;
    }
  }

  else
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_updateCacheForGridIndex_withMajorStrokes_andMinorStrokes_(self->_columnToStrokeWidthCache, v8, v3, v9, self->_rightColumnStrokes.__begin_[columnCopy]);
}

- (double)strokeHeightOfGridRow:(unsigned int)row beginColumn:(unsigned int)column endColumn:(unsigned int)endColumn
{
  v5 = column - endColumn;
  endColumnCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (endColumn >= column)
  {
    v5 = 0;
  }

  else
  {
    endColumnCopy = endColumn;
  }

  v7 = endColumn - column;
  v8 = column >= endColumn;
  if (column < endColumn)
  {
    *&column = column;
  }

  else
  {
    *&column = endColumnCopy;
  }

  if (v8)
  {
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, a2, *&row, *&column, v5);
  }

  else
  {
    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(self, a2, *&row, *&column, v7);
  }

  return result;
}

- (void)setDynamicCellBorder:(id)border forCellID:(TSUCellCoord)d
{
  borderCopy = border;
  v9 = objc_msgSend_topStroke(borderCopy, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_topStroke(borderCopy, v10, v11, v12);
    v17 = objc_msgSend_topStrokeOrder(borderCopy, v14, v15, v16);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridRow_isTop_beginColumn_endColumn_(self, v18, v13, v17, d, 1, d.column, d.column + 1);
  }

  v19 = objc_msgSend_bottomStroke(borderCopy, v10, v11, v12);

  if (v19)
  {
    v23 = objc_msgSend_bottomStroke(borderCopy, v20, v21, v22);
    v27 = objc_msgSend_bottomStrokeOrder(borderCopy, v24, v25, v26);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridRow_isTop_beginColumn_endColumn_(self, v28, v23, v27, d.row + 1, 0, d.column, d.column + 1);
  }

  v29 = objc_msgSend_leftStroke(borderCopy, v20, v21, v22);

  if (v29)
  {
    v33 = objc_msgSend_leftStroke(borderCopy, v30, v31, v32);
    v37 = objc_msgSend_leftStrokeOrder(borderCopy, v34, v35, v36);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridColumn_isLeft_beginRow_endRow_(self, v38, v33, v37, d.column, 1, d, d.row + 1);
  }

  v39 = objc_msgSend_rightStroke(borderCopy, v30, v31, v32);

  if (v39)
  {
    v43 = objc_msgSend_rightStroke(borderCopy, v40, v41, v42);
    v47 = objc_msgSend_rightStrokeOrder(borderCopy, v44, v45, v46);
    objc_msgSend_p_setDynamicStroke_strokeOrder_forGridColumn_isLeft_beginRow_endRow_(self, v48, v43, v47, d.column + 1, 0, d, d.row + 1);
  }
}

- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right
{
  topCopy = top;
  column = d.column;
  if (top)
  {
    v59 = objc_msgSend_mergedStrokesForGridRow_(self, a2, *&d, top);
    objc_msgSend_invalidateSpillStrokes(v59, v14, v15, v16);
    v19 = objc_msgSend_lookupStrokeAtIndex_(v59, v17, column, v18);
    v23 = v19;
    if (v19)
    {
      v24 = v19;
      *topCopy = v23;
    }

    objc_msgSend_unlock(v59, v20, v21, v22);

    topCopy = v59;
  }

  if (bottom)
  {
    v60 = objc_msgSend_mergedStrokesForGridRow_(self, a2, d.row + 1, top);

    objc_msgSend_invalidateSpillStrokes(v60, v25, v26, v27);
    v30 = objc_msgSend_lookupStrokeAtIndex_(v60, v28, column, v29);
    v34 = v30;
    if (v30)
    {
      v35 = v30;
      *bottom = v34;
    }

    objc_msgSend_unlock(v60, v31, v32, v33);

    topCopy = v60;
  }

  if (left)
  {
    v61 = objc_msgSend_mergedStrokesForGridColumn_(self, a2, d.column, top);

    objc_msgSend_invalidateSpillStrokes(v61, v36, v37, v38);
    v41 = objc_msgSend_lookupStrokeAtIndex_(v61, v39, d.row, v40);
    v45 = v41;
    if (v41)
    {
      v46 = v41;
      *left = v45;
    }

    objc_msgSend_unlock(v61, v42, v43, v44);

    topCopy = v61;
  }

  if (right)
  {
    v62 = objc_msgSend_mergedStrokesForGridColumn_(self, a2, d.column + 1, top);

    objc_msgSend_invalidateSpillStrokes(v62, v47, v48, v49);
    v52 = objc_msgSend_lookupStrokeAtIndex_(v62, v50, d.row, v51);
    v56 = v52;
    if (v52)
    {
      v57 = v52;
      *right = v56;
    }

    objc_msgSend_unlock(v62, v53, v54, v55);

    v58 = v62;
  }

  else
  {
    v58 = topCopy;
  }
}

- (void)clearDynamicStrokesForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_cellRange(self, a2, *&range.origin, *&range.size);
  if ((*&origin & 0xFFFF00000000) != 0x7FFF00000000 && origin.row == 0x7FFFFFFF)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  v11 = v8 + v6;
  if (v6 == 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (origin.row == 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = size.numberOfRows + origin.row;
  }

  if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = origin.column;
  }

  if (v12 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  v16 = origin.column;
  if (origin.column != 0x7FFF)
  {
    v16 = origin.column + LOWORD(size.numberOfColumns);
  }

  if (WORD2(v6) == 0x7FFF)
  {
    v17 = 0x7FFF;
  }

  else
  {
    v17 = WORD2(v6) + v7;
  }

  if (v16 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (row >= v15)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (v15 < row)
    {
      v20 = v15;
    }

    v59 = v20;
    if (v15 >= row)
    {
      v19 = 0;
    }

    else
    {
      v19 = row - v15;
    }
  }

  else
  {
    v19 = v15 - row;
    v59 = row;
  }

  v21 = column;
  v58 = column;
  if (v18 <= column)
  {
    if (v18 >= column)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v18;
    }

    if (v18 >= column)
    {
      v22 = 0;
    }

    else
    {
      v22 = column - v18;
    }
  }

  else
  {
    v22 = v18 - column;
    v23 = column;
  }

  pthread_rwlock_wrlock(&self->_strokesRWLock);
  if (row <= v15)
  {
    v24 = row;
    do
    {
      if (v24 < v15)
      {
        v25 = self->_topRowStrokes.__begin_[v24];
        objc_msgSend_lockForWrite(v25, v26, v27, v28);
        objc_msgSend_invalidateDynamicStrokesInRange_(v25, v29, v23, v22);
        objc_msgSend_unlock(v25, v30, v31, v32);
      }

      if (v24 > row)
      {
        v33 = self->_bottomRowStrokes.__begin_[v24];
        objc_msgSend_lockForWrite(v33, v34, v35, v36);
        objc_msgSend_invalidateDynamicStrokesInRange_(v33, v37, v23, v22);
        objc_msgSend_unlock(v33, v38, v39, v40);
      }

      ++v24;
    }

    while (v24 <= v15);
  }

  if (v18 >= v58)
  {
    v41 = v21;
    do
    {
      if (v41 < v18)
      {
        v42 = self->_leftColumnStrokes.__begin_[v41];
        objc_msgSend_lockForWrite(v42, v43, v44, v45);
        objc_msgSend_invalidateDynamicStrokesInRange_(v42, v46, v59, v19);
        objc_msgSend_unlock(v42, v47, v48, v49);
      }

      if (v41 > v21)
      {
        v50 = self->_rightColumnStrokes.__begin_[v41];
        objc_msgSend_lockForWrite(v50, v51, v52, v53);
        objc_msgSend_invalidateDynamicStrokesInRange_(v50, v54, v59, v19);
        objc_msgSend_unlock(v50, v55, v56, v57);
      }

      ++v41;
    }

    while (v18 + 1 != v41);
  }

  pthread_rwlock_unlock(&self->_strokesRWLock);
}

- (void)enumerateMergedStrokesForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&column;
  blockCopy = block;
  v12 = objc_msgSend_mergedStrokesForGridColumn_(self, v10, v8, v11);
  objc_msgSend_enumerateStrokesFrom_to_usingBlock_(v12, v13, v7, v6, blockCopy);
  objc_msgSend_unlock(v12, v14, v15, v16);
}

- (void)enumerateMergedStrokesForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&row;
  blockCopy = block;
  v12 = objc_msgSend_mergedStrokesForGridRow_(self, v10, v8, v11);
  objc_msgSend_enumerateStrokesFrom_to_usingBlock_(v12, v13, v7, v6, blockCopy);
  objc_msgSend_unlock(v12, v14, v15, v16);
}

- (void)enumerateMergedStrokesAndCapsForGridColumn:(unsigned int)column from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&column;
  blockCopy = block;
  v12 = objc_msgSend_mergedStrokesForGridColumn_(self, v10, v8, v11);
  objc_msgSend_enumerateStrokesAndCapsFrom_to_usingBlock_(v12, v13, v7, v6, blockCopy);
  objc_msgSend_unlock(v12, v14, v15, v16);
}

- (void)enumerateMergedStrokesAndCapsForGridRow:(unsigned int)row from:(unsigned int)from to:(unsigned int)to usingBlock:(id)block
{
  v6 = *&to;
  v7 = *&from;
  v8 = *&row;
  blockCopy = block;
  v12 = objc_msgSend_mergedStrokesForGridRow_(self, v10, v8, v11);
  objc_msgSend_enumerateStrokesAndCapsFrom_to_usingBlock_(v12, v13, v7, v6, blockCopy);
  objc_msgSend_unlock(v12, v14, v15, v16);
}

- (void)p_invalidateClearedStrokesForCellRegion:(id)region
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213A7FD8;
  v4[3] = &unk_278461548;
  v4[4] = self;
  objc_msgSend_enumerateCellRangesUsingBlock_(region, a2, v4, v3);
}

- (void)p_clearStrokesForMergesInCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_cellRange(self, v5, v6, v7);
  v10 = v9;
  v12 = objc_msgSend_mergesIntersectingCellRegion_(self, v9, regionCopy, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2213A82DC;
  v15[3] = &unk_278463DD0;
  v15[5] = v8;
  v15[6] = v10;
  v15[4] = self;
  objc_msgSend_enumerateRangesUsingBlock_(v12, v13, v15, v14);
}

- (CGSize)contentSizeForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap
{
  swapCopy = swap;
  size = range.size;
  origin = range.origin;
  v8 = 0.0;
  v9 = 0.0;
  if (range.size.numberOfColumns)
  {
    objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, a2, *&range.origin, *&range.size, swap);
    v9 = v10;
  }

  if (HIDWORD(size))
  {
    objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, a2, origin, size, swapCopy, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    v8 = v11;
  }

  v12 = v9;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)p_contentWidthForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap validationBundle:(id)bundle
{
  swapCopy = swap;
  size = range.size;
  origin = range.origin;
  bundleCopy = bundle;
  v11 = bundleCopy;
  v39 = (*&origin & 0xFFFF00000000) == 0x7FFF00000000 && origin.row != 0x7FFFFFFF;
  if (v39)
  {
    v12 = 0;
  }

  else
  {
    v12 = *&origin.column;
  }

  column = origin.column;
  v13 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v14 = v13;
  v35 = __PAIR64__(v14, size.numberOfColumns + *&origin.column + 0xFFFF);
  if (v13)
  {
    v15 = 0x7FFF;
  }

  else
  {
    v15 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  v16 = 0.0;
  if (bundleCopy)
  {
    if (v12 <= v15)
    {
      v17 = MEMORY[0x277D85DD0];
      do
      {
        v40[0] = v17;
        v40[1] = 3221225472;
        v40[2] = sub_2213A86E4;
        v40[3] = &unk_278463DF8;
        v40[4] = self;
        v41 = v12;
        v42 = swapCopy;
        objc_msgSend_widthOfColumn_handleCacheMissUsingBlock_(v11, v10, v12, v40, v35);
        v16 = v16 + v18;
        ++v12;
      }

      while (v12 <= v15);
    }
  }

  else
  {
    for (; v12 <= v15; ++v12)
    {
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(self, v10, v12, swapCopy, 1, 0, v35);
      v16 = v16 + v19;
    }
  }

  v20 = origin.row == 0x7FFFFFFF;
  if (v20 && (*&origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  if (!HIDWORD(*&size))
  {
    v20 = 1;
  }

  if (v20)
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = size.numberOfRows + origin.row;
  }

  if (v39)
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v10, 0, row, v22, v35);
  }

  else
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v10, column, row, v22, v35);
  }

  v27 = v26;
  v28 = objc_msgSend_numberOfColumns(self, v23, v24, v25);
  if (v37)
  {
    v30 = 0x8000;
  }

  else
  {
    v30 = v36 + 1;
  }

  if (v30 >= v28)
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v29, v28, row, v22);
  }

  else
  {
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(self, v29, v30, row, v22);
  }

  v32 = v16 - v27 * 0.5 - v31 * 0.5;
  if (v32 >= 0.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0.0;
  }

  return v33;
}

- (double)contentHeightForCellRange:(TSUCellRect)range skipDynamicSwap:(BOOL)swap maximumPartitionSize:(CGSize)size
{
  numberOfColumns = range.size.numberOfColumns;
  origin = range.origin;
  v8 = range.origin.row == 0x7FFFFFFF;
  v9 = *&range.origin & 0xFFFF00000000;
  if (v8 && (*&range.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    row = 0;
  }

  else
  {
    row = range.origin.row;
  }

  if (!range.size.numberOfRows)
  {
    v8 = 1;
  }

  if (v8)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = range.origin.row + range.size.numberOfRows - 1;
  }

  v12 = 0.0;
  if (row <= v11)
  {
    swapCopy = swap;
    height = size.height;
    width = size.width;
    v16 = row;
    do
    {
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(self, a2, v16, swapCopy, 1, 1, 1, 0, width, height);
      v12 = v12 + size.width;
      v16 = (v16 + 1);
    }

    while (v16 <= v11);
  }

  v17 = HIDWORD(*&origin);
  v18 = origin.row != 0x7FFFFFFF && v9 == 0x7FFF00000000;
  column = origin.column;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = origin.column;
  }

  v21 = numberOfColumns + v17 - 1;
  if (numberOfColumns)
  {
    v22 = column == 0x7FFF;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0x8000;
  }

  else
  {
    v23 = v21 + 1;
  }

  if (v20 + 1 > v23)
  {
    v24 = (v20 + 1);
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, a2, row, v20, v24, size.width, size.height);
  }

  else
  {
    v24 = v23;
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, a2, row, v20, v23, size.width, size.height);
  }

  v29 = v28;
  v30 = objc_msgSend_numberOfRows(self, v25, v26, v27);
  if (v11 + 1 < v30)
  {
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, v31, v11 + 1, v20, v24);
  }

  else
  {
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(self, v31, v30, v20, v24);
  }

  result = v12 - v29 * 0.5 - v32 * 0.5;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)validateStrokesForChangeDescriptors:(id)descriptors
{
  v115 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v7 = objc_msgSend_cellRange(self, v4, v5, v6);
  v104 = v8;
  v105 = v7;
  v109 = objc_msgSend_gatherer(TSTCellRegionGatherer, v8, v9, v10);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = descriptorsCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v110, v114, 16);
  selfCopy = self;
  v16 = 0;
  v17 = 0;
  if (v15)
  {
    v18 = *v111;
    v107 = (v105 + HIDWORD(v104) - 1);
    v106 = (v105 + (v104 << 32) + 0xFFFF00000000) & 0xFFFF00000000;
    do
    {
      v19 = 0;
      do
      {
        if (*v111 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v110 + 1) + 8 * v19);
        v21 = objc_msgSend_changeDescriptor(v20, v12, v13, v14);
        v25 = objc_msgSend_cellID(v20, v22, v23, v24);
        v29 = objc_msgSend_strokeRegion(v20, v26, v27, v28);
        v33 = v29;
        switch(v21)
        {
          case 0:
          case 2:
          case 6:
          case 7:
          case 16:
          case 30:
          case 33:
          case 36:
          case 37:
            v16 = 1;
            goto LABEL_13;
          case 3:
          case 4:
            v34 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v29, v30, v106 | v107, 0x100000001);

            goto LABEL_11;
          case 5:
            v42 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v29, v30, v25, 0x100000001);

            if ((objc_msgSend_firstCellID(v42, v43, v44, v45) & 0xFFFF00000000) == 0)
            {
              goto LABEL_26;
            }

            CellID = objc_msgSend_firstCellID(v42, v46, v47, v48);
            v52 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(selfCopy, v50, (WORD2(CellID) - 1), v51);
            v56 = objc_msgSend_numberOfRows(selfCopy, v53, v54, v55);
            v33 = objc_msgSend_regionByAddingRange_(v42, v57, v52 << 32, (v56 << 32) | 1);

            v35 = objc_msgSend_cellCount(v33, v58, v59, v60);
            break;
          case 8:
          case 9:
          case 10:
          case 17:
          case 31:
          case 49:
          case 50:
            v16 = 1;
            goto LABEL_12;
          case 13:
          case 14:
          case 47:
            v34 = objc_msgSend_regionFromRange_(TSTCellRegion, v30, v105, v104);

LABEL_11:
            v16 = 1;
            v33 = v34;
LABEL_12:
            v17 = 1;
            goto LABEL_13;
          case 24:
          case 25:
            v38 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v29, v30, v106 | v107, 0x100000001);

            v17 = 1;
            goto LABEL_19;
          case 26:
            v42 = objc_msgSend_regionByUnioningEveryRangeInRegionWithRange_(v29, v30, v25, 0x100000001);

            if (objc_msgSend_firstCellID(v42, v71, v72, v73))
            {
              v74 = objc_msgSend_firstCellID(v42, v46, v47, v48);
              v77 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(selfCopy, v75, (v74 - 1), v76);
              v81 = objc_msgSend_numberOfColumns(selfCopy, v78, v79, v80);
              v33 = objc_msgSend_regionByAddingRange_(v42, v82, v77, v81 | 0x100000000);

              v35 = objc_msgSend_cellCount(v33, v83, v84, v85);
            }

            else
            {
LABEL_26:
              v33 = v42;
              v35 = objc_msgSend_cellCount(v42, v46, v47, v48);
            }

            break;
          case 28:
            if (objc_msgSend_isCategorized(selfCopy, v30, v31, v32))
            {
              goto LABEL_13;
            }

            v61 = objc_msgSend_shuffleMapping(v20, v30, v31, v32);
            v65 = objc_msgSend_sourceIndexes(v61, v62, v63, v64);
            v68 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v66, v65, v67);
            v38 = objc_msgSend_regionByAddingRegion_(v33, v69, v68, v70);

LABEL_19:
            v33 = v38;
            v35 = objc_msgSend_cellCount(v38, v39, v40, v41);
            break;
          default:
LABEL_13:
            v35 = objc_msgSend_cellCount(v33, v30, v31, v32);
            break;
        }

        if (v35)
        {
          objc_msgSend_addRegion_(v109, v36, v33, v37);
        }

        ++v19;
      }

      while (v15 != v19);
      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v110, v114, 16);
      v15 = v86;
    }

    while (v86);
  }

  v93 = objc_msgSend_gatheredCellRegion(v109, v87, v88, v89);
  if (v17)
  {
    objc_msgSend_invalidateStrokeDefaults(selfCopy, v90, v91, v92);
  }

  if (v16)
  {
    objc_msgSend_invalidateStrokeSpills(selfCopy, v90, v91, v92);
  }

  objc_msgSend_validateStrokesArrays_(selfCopy, v90, obj, v92);
  v95 = objc_msgSend_regionByIntersectingRange_(v93, v94, v105, v104);

  objc_msgSend_p_validateStrokesForRegion_(selfCopy, v96, v95, v97);
  objc_msgSend_verifyStrokes(selfCopy, v98, v99, v100);
  objc_msgSend_p_validateStrokeWidthCachesForRegion_invalidateStrokeDefaults_(selfCopy, v101, v95, v17 & 1);
}

- (void)p_validateStrokesForRegion:(id)region
{
  regionCopy = region;
  if (!objc_msgSend_cellCount(regionCopy, v5, v6, v7))
  {
    goto LABEL_15;
  }

  v8 = MEMORY[0x277D86228];
  v12 = objc_msgSend_tableInfo(self, v9, v10, v11);
  isDynamicallyChangingRowCount = objc_msgSend_isDynamicallyChangingRowCount(self, v13, v14, v15, v12);
  v20 = isDynamicallyChangingRowCount;
  if (isDynamicallyChangingRowCount)
  {
    dynamicRowAdjustment = self->_dynamicRowAdjustment;
    if (dynamicRowAdjustment >= 1)
    {
      v22 = objc_msgSend_bodyRange(v12, v17, v18, v19);
      v23 = dynamicRowAdjustment >> 31;
      if (v22 == 0x7FFFFFFF)
      {
        v24 = 0x7FFFFFFFLL;
      }

      else
      {
        v24 = (HIDWORD(v17) + v22);
      }

      v59 = v24;
      v60 = self->_dynamicRowAdjustment;
      v25 = 1;
      goto LABEL_10;
    }

    v23 = dynamicRowAdjustment >> 31;
    if (dynamicRowAdjustment < 0)
    {
      v56 = objc_msgSend_bodyRange(v12, v17, v18, v19);
      v25 = 0;
      v57 = HIDWORD(v17) + v56;
      if (v56 == 0x7FFFFFFF)
      {
        v57 = 0x7FFFFFFF;
      }

      v58 = self->_dynamicRowAdjustment;
      v59 = (v58 + v57);
      v60 = -v58;
      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  v25 = 0;
  v59 = 0x7FFFFFFFFFFFFFFFLL;
  v60 = 0;
LABEL_10:
  v26 = objc_msgSend_hiddenColumnIndices(self, v17, v18, v19);
  if (!objc_msgSend_count(v26, v27, v28, v29))
  {

    v26 = 0;
  }

  v33 = objc_msgSend_hiddenRowIndices(self, v30, v31, v32);
  if (!objc_msgSend_count(v33, v34, v35, v36))
  {

    v33 = 0;
  }

  pthread_rwlock_wrlock(&self->_strokesRWLock);
  objc_msgSend_p_invalidateClearedStrokesForCellRegion_(self, v37, regionCopy, v38);
  objc_msgSend_p_clearStrokesForMergesInCellRegion_(self, v39, regionCopy, v40);
  v44 = objc_msgSend_boundingCellRange(regionCopy, v41, v42, v43);
  v46 = HIDWORD(v45);
  v47 = v44;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_2213A9190;
  v65[3] = &unk_278463E20;
  v48 = v12;
  v66 = v48;
  v49 = v33;
  v73 = v25;
  v69 = v59;
  v70 = v60;
  v74 = v23;
  v67 = v49;
  selfCopy = self;
  v71 = v47;
  v72 = v46;
  objc_msgSend_enumerateColumnsUsingBlock_(regionCopy, v50, v65, v51);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_2213A9650;
  v61[3] = &unk_278463E48;
  v64 = v20;
  v61[4] = self;
  v52 = v48;
  v62 = v52;
  v53 = v26;
  v63 = v53;
  objc_msgSend_enumerateRowsUsingBlock_(regionCopy, v54, v61, v55);
  pthread_rwlock_unlock(&self->_strokesRWLock);

LABEL_15:
}

- (void)p_validateStrokeWidthCachesForRegion:(id)region invalidateStrokeDefaults:(BOOL)defaults
{
  regionCopy = region;
  v10 = regionCopy;
  if (defaults || objc_msgSend_cellCount(regionCopy, v7, v8, v9))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2213A9B34;
    v11[3] = &unk_27845FB10;
    v11[4] = self;
    v12 = v10;
    dispatch_apply(2uLL, 0, v11);
  }
}

- (BOOL)useBandedFill
{
  if (!objc_msgSend_isDynamicallySettingBandedFill(self, a2, v2, v3))
  {
    return self->_useBandedFill;
  }

  return MEMORY[0x2821F9670](self, sel_dynamicBandedFill, v5, v6);
}

- (BOOL)shouldRowUseBandedFill:(unsigned int)fill
{
  v4 = *&fill;
  if (!objc_msgSend_isDynamicallySettingBandedFill(self, a2, *&fill, v3))
  {
    if (objc_msgSend_numberOfHeaderRows(self, v6, v7, v8) <= v4)
    {
      if ((objc_msgSend_isCategorized(self, v9, v10, v11) & 1) != 0 || objc_msgSend_isAPivotTable(self, v12, v13, v14))
      {
        if ((objc_msgSend_isSummaryRow_(self, v12, v4, v14) & 1) == 0)
        {
          v18 = objc_msgSend_indexesForLeadingRows(self, v15, v16, v17);
          v21 = objc_msgSend_indexLessThanOrEqualToIndex_(v18, v19, v4, v20);
          started = objc_msgSend_numberOfVisibleRowsFromStartRowIndex_toEndRowIndex_(self->_hiddenRowsColumnsCache, v22, v21, v4);

          if ((started & 1) == 0)
          {
            return 1;
          }
        }
      }

      else if ((objc_msgSend_numberOfVisibleRowsFromHeader_(self->_hiddenRowsColumnsCache, v12, v4, v14) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_dynamicBandedFillSetting, v7, v8);
}

- (void)validateBandedFill
{
  if (!self->_bandedFillIsValid)
  {
    self->_bandedFillIsValid = 1;
    v13 = objc_msgSend_tableInfo(self, a2, v2, v3);
    self->_useBandedFill = objc_msgSend_useBandedFill(v13, v5, v6, v7);
    v11 = objc_msgSend_bandedFillObject(v13, v8, v9, v10);
    bandedFillObject = self->_bandedFillObject;
    self->_bandedFillObject = v11;
  }
}

+ (int)tableRowsBehaviorForTable:(id)table andEnvironment:(int)environment
{
  tableCopy = table;
  v9 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v6, v7, v8);
  v13 = v9;
  if (environment == 1)
  {
    v14 = 2;
  }

  else if (objc_msgSend_supportsAutoResizedTables(v9, v10, v11, v12))
  {
    v18 = objc_msgSend_tableStyle(tableCopy, v15, v16, v17);
    v21 = objc_msgSend_intValueForProperty_(v18, v19, 768, v20);

    if (v21)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 3;
  }

  return v14;
}

- (void)validateDefaultFontHeights
{
  if (!self->_tableDefaultFontHeightsAreValid)
  {
    v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v10 = sub_2213AA288;
    v11 = &unk_27845DE60;
    v6 = v5;
    v12 = v6;
    selfCopy = self;
    v14 = 0;
    v7 = 1;
    do
    {
      (v10)(v9, v7, &v14);
      if (v14)
      {
        break;
      }
    }

    while (v7++ != 17);
    self->_tableDefaultFontHeightsAreValid = 1;
  }
}

- (BOOL)cell:(id *)cell forCellID:(TSUCellCoord)d
{
  dynamicContentDelegate = self->_dynamicContentDelegate;
  if (!dynamicContentDelegate || objc_msgSend_dynamicContentMustDrawOnMainThread(dynamicContentDelegate, a2, cell, *&d) && !objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v8, v9, v10))
  {
    return 0;
  }

  if (objc_msgSend_cell_forCellID_(self->_dynamicContentDelegate, v8, cell, *&d))
  {
    return 1;
  }

  v15 = objc_msgSend_tableInfo(self, v11, v12, v13);
  v19 = objc_msgSend_newCell(v15, v16, v17, v18);
  if (objc_msgSend_getCell_atCellID_(v15, v20, v19, *&d) || !objc_msgSend_valueType(v19, v21, v22, v23))
  {
    v14 = 0;
  }

  else
  {
    v24 = v19;
    *cell = v19;
    v14 = 1;
  }

  return v14;
}

- (unsigned)modelRowForLayoutRow:(unsigned int)row
{
  rowCopy = row;
  if (objc_msgSend_isDynamicallyChangingRowCount(self, a2, *&row, v3))
  {
    v9 = objc_msgSend_numberOfRows(self, v6, v7, v8);
    v13 = v9 - objc_msgSend_numberOfFooterRows(self, v10, v11, v12);
    dynamicRowAdjustment = self->_dynamicRowAdjustment;
    if (v13 - dynamicRowAdjustment <= rowCopy)
    {
      v15 = v13 - dynamicRowAdjustment - 1;
    }

    else
    {
      v15 = rowCopy;
    }

    v16 = rowCopy - dynamicRowAdjustment;
    if (v13 <= rowCopy)
    {
      return v16;
    }

    else
    {
      return v15;
    }
  }

  return rowCopy;
}

- (TSUCellCoord)modelCellIDForLayoutCellID:(TSUCellCoord)d
{
  column = d.column;
  v6 = objc_msgSend_modelRowForLayoutRow_(self, a2, *&d, v3);
  return (v6 | (objc_msgSend_modelColumnForLayoutColumn_(self, v7, column, v8) << 32));
}

- (id)modelCellRegionForLayoutCellRegion:(id)region
{
  regionCopy = region;
  v7 = regionCopy;
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v4, v5, v6) & 1) == 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)layoutRowForModelRow:(unsigned int)row
{
  rowCopy = row;
  if (objc_msgSend_isDynamicallyChangingRowCount(self, a2, *&row, v3))
  {
    v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
    v13 = objc_msgSend_footerRowRange(v9, v10, v11, v12);
    v15 = v14;

    if (HIDWORD(v15))
    {
      if (v15)
      {
        v16 = v13 & 0xFFFF00000000;
        if (v13 == 0x7FFFFFFF && v16 != 0x7FFF00000000)
        {
          goto LABEL_6;
        }

        v17 = v13 != 0x7FFFFFFF || v16 == 0x7FFF00000000;
        v18 = !v17;
        if (v13 <= rowCopy || v18)
        {
          v19 = v13 + HIDWORD(v15) - 1;
          if (v13 == 0x7FFFFFFF)
          {
            v19 = 0x7FFFFFFF;
          }

          if (v19 >= rowCopy)
          {
LABEL_6:
            rowCopy += self->_dynamicRowAdjustment;
          }
        }
      }
    }
  }

  return rowCopy;
}

- (TSUCellCoord)layoutCellIDForModelCellID:(TSUCellCoord)d
{
  column = d.column;
  v6 = objc_msgSend_layoutRowForModelRow_(self, a2, *&d, v3);
  return (v6 | (objc_msgSend_layoutColumnForModelColumn_(self, v7, column, v8) << 32));
}

- (id)layoutCellRegionForModelCellRegion:(id)region
{
  regionCopy = region;
  v7 = regionCopy;
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v4, v5, v6) & 1) == 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add
{
  if (add)
  {
    if (add != 1 || !self->_dynamicResizingColumns)
    {
      return 0;
    }

    origin = self->_dynamicResizingColumnRange.origin;
    if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return 0;
    }

    size = self->_dynamicResizingColumnRange.size;
    if (!HIDWORD(*&size) || !size.numberOfColumns)
    {
      return 0;
    }
  }

  else
  {
    if (!self->_dynamicResizingRows)
    {
      return 0;
    }

    v6 = self->_dynamicResizingRowRange.origin;
    if (v6.row == 0x7FFFFFFF || (*&v6 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return 0;
    }

    v8 = self->_dynamicResizingRowRange.size;
    if (!HIDWORD(*&v8) || v8.numberOfColumns == 0)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)isDynamicallyResizingForColumnRowAdd:(int64_t)add rowColIndex:(unsigned int)index
{
  if (!add)
  {
    if (self->_dynamicResizingRows)
    {
      size = self->_dynamicResizingRowRange.size;
      if (HIDWORD(*&size) && size.numberOfColumns != 0)
      {
        origin = self->_dynamicResizingRowRange.origin;
        if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
        {
          return 1;
        }

        if (origin.column <= index)
        {
          v17 = origin.column == 0x7FFF || size.numberOfColumns == 0;
          v18 = v17 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
          if (v18 >= index)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  if (add != 1 || !self->_dynamicResizingColumns)
  {
    return 0;
  }

  v4 = self->_dynamicResizingColumnRange.size;
  numberOfColumns = v4.numberOfColumns;
  v6 = HIDWORD(*&v4);
  if (!v6 || numberOfColumns == 0)
  {
    return 0;
  }

  v8 = self->_dynamicResizingColumnRange.origin;
  v9 = *&v8 & 0xFFFF00000000;
  if (v8.row != 0x7FFFFFFF || v9 == 0x7FFF00000000)
  {
    v10 = v8.row != 0x7FFFFFFF || v9 == 0x7FFF00000000;
    v11 = !v10;
    if (v8.row > index && !v11)
    {
      return 0;
    }

    v12 = v8.row + v6 - 1;
    if (v8.row == 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    if (v12 < index)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)isDynamicallyResizingCellIDForColumnRowAdd:(TSUCellCoord)add
{
  if (!self->_dynamicResizingRows || self->_dynamicResizingRowAdjustment == 0.0)
  {
    goto LABEL_8;
  }

  size = self->_dynamicResizingRowRange.size;
  numberOfColumns = size.numberOfColumns;
  v5 = HIDWORD(*&size);
  if (!v5 || numberOfColumns == 0)
  {
    goto LABEL_8;
  }

  origin = self->_dynamicResizingRowRange.origin;
  v12 = *&origin & 0xFFFF00000000;
  if (origin.row == 0x7FFFFFFF && v12 != 0x7FFF00000000)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v16 = origin.row != 0x7FFFFFFF || v12 == 0x7FFF00000000;
  v17 = !v16;
  if (origin.row > add.row && !v17)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v18 = origin.row + v5 - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v7 = v18 >= add.row;
LABEL_9:
  if (self->_dynamicResizingColumns && self->_dynamicResizingColumnAdjustment != 0.0)
  {
    v8 = self->_dynamicResizingColumnRange.size;
    if (HIDWORD(*&v8) && v8.numberOfColumns != 0)
    {
      v10 = self->_dynamicResizingColumnRange.origin;
      if (v10.row == 0x7FFFFFFF || (*&v10 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        if (v10.column <= add.column)
        {
          if (v10.column == 0x7FFF || v8.numberOfColumns == 0)
          {
            v14 = 0x7FFF;
          }

          else
          {
            v14 = LOWORD(v8.numberOfColumns) + v10.column - 1;
          }

          v7 |= v14 >= add.column;
        }
      }

      else
      {
        v7 = 1;
      }
    }
  }

  return v7 & 1;
}

- (BOOL)isEntireCellRangeHidden:(TSUCellRect)hidden
{
  size = hidden.size;
  origin = hidden.origin;
  return !objc_msgSend_numberOfVisibleRowsInCellRange_(self->_hiddenRowsColumnsCache, a2, *&hidden.origin, *&hidden.size) || objc_msgSend_numberOfVisibleColumnsInCellRange_(self->_hiddenRowsColumnsCache, v6, origin, size) == 0;
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range
{
  if (range.origin.row == 0x7FFFFFFF || (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000 || !range.size.numberOfRows || !range.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_anyHiddenRowsInCellRange_(self->_hiddenRowsColumnsCache, a2, *&range.origin, *&range.size);
  }
}

- (BOOL)anyRowsUserHiddenInCellRange:(TSUCellRect)range
{
  if (range.origin.row == 0x7FFFFFFF || (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000 || !range.size.numberOfRows || !range.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x2821F9670](self->_hiddenRowsColumnsCache, sel_anyRowsUserHiddenInCellRange_, *&range.origin, *&range.size);
  }
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range
{
  if (range.origin.row == 0x7FFFFFFF || (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000 || !range.size.numberOfRows || !range.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_anyHiddenColumnsInCellRange_(self->_hiddenRowsColumnsCache, a2, *&range.origin, *&range.size);
  }
}

- (NSIndexSet)visibleRowIndices
{
  v4 = objc_msgSend_hiddenRowsColumnsCache(self, a2, v2, v3);
  v8 = objc_msgSend_visibleRowIndices(v4, v5, v6, v7);

  return v8;
}

- (NSIndexSet)visibleColumnIndices
{
  v4 = objc_msgSend_hiddenRowsColumnsCache(self, a2, v2, v3);
  v8 = objc_msgSend_visibleColumnIndices(v4, v5, v6, v7);

  return v8;
}

- (NSIndexSet)hiddenRowIndices
{
  v5 = objc_msgSend_cellRange(self, a2, v2, v3);
  v7 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v6, v5, v6 >> 32);
  v11 = objc_msgSend_visibleRowIndices(self, v8, v9, v10);
  objc_msgSend_removeIndexes_(v7, v12, v11, v13);

  return v7;
}

- (NSIndexSet)hiddenColumnIndices
{
  v5 = objc_msgSend_cellRange(self, a2, v2, v3);
  v7 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v6, WORD2(v5), v6);
  v11 = objc_msgSend_visibleColumnIndices(self, v8, v9, v10);
  objc_msgSend_removeIndexes_(v7, v12, v11, v13);

  return v7;
}

- (TSUCellRect)expandCellRangeToVisibleNeighbors:(TSUCellRect)neighbors
{
  origin = neighbors.origin;
  if (neighbors.origin.row == 0x7FFFFFFF || (*&neighbors.origin & 0xFFFF00000000) == 0x7FFF00000000 || !neighbors.size.numberOfRows || !neighbors.size.numberOfColumns)
  {
    v33 = neighbors.origin;
    size = neighbors.size;
  }

  else
  {
    column = neighbors.origin.column;
    v6 = *&neighbors.origin & 0xFFFF000000000000;
    v7 = neighbors.origin.row + neighbors.size.numberOfRows - 1;
    v8 = ((*&neighbors.origin + 0xFFFF00000000) >> 32) + neighbors.size.numberOfColumns;
    if (neighbors.origin.row)
    {
      v9 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, a2, neighbors.origin.row - 1, *&neighbors.size);
    }

    else
    {
      v9 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, a2, 0, *&neighbors.size);
    }

    v12 = v9;
    if (origin.column)
    {
      v13 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v10, origin.column - 1, v11);
    }

    else
    {
      v13 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v10, 0, v11);
    }

    if (v12 == 0x7FFFFFFF)
    {
      row = origin.row;
    }

    else
    {
      row = v12;
    }

    if (v13 != 0x7FFF)
    {
      column = v13;
    }

    v18 = objc_msgSend_numberOfRows(self, v14, v15, v16);
    v24 = objc_msgSend_numberOfColumns(self, v19, v20, v21);
    if (v18 - 1 <= v7)
    {
      v25 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v22, v7, v23);
    }

    else
    {
      v25 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v22, v7 + 1, v23);
    }

    v28 = v25;
    if (v24 - 1 <= v8)
    {
      v29 = v8;
    }

    else
    {
      v29 = v8 + 1;
    }

    v30 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self, v26, v29, v27);
    if (v28 == 0x7FFFFFFF)
    {
      v31 = v7;
    }

    else
    {
      v31 = v28;
    }

    if (v30 == 0x7FFF)
    {
      v32 = v8;
    }

    else
    {
      v32 = v30;
    }

    v33 = sub_221286760(v6 | (column << 32) | row, 0x100000001uLL, v31 | (v32 << 32));
  }

  result.size = size;
  result.origin = v33;
  return result;
}

- (unsigned)firstEmptyBodyRow
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v42 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_minPopulatedCellRange(v42, v5, v6, v7);
  v10 = v9;
  v13 = objc_msgSend_bodyRowRange(v42, v9, v11, v12);
  v15 = sub_221119E0C(v8, v10, v13, v14);
  v18 = v15;
  if (v16 >> 32)
  {
    v19 = v15 == 0x7FFFFFFF;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0x7FFFFFFFLL;
  }

  else
  {
    v20 = (v15 + HIDWORD(v16) - 1);
  }

  v21 = v8 & 0xFFFFFFFF00000000;
  v22 = v10 | 0x100000000;
  v23 = v20;
  while (1)
  {
    if ((objc_msgSend_hasHiddenRowAtIndex_(self, v16, v23, v17) & 1) == 0)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_2213AB6F0;
      v43[3] = &unk_27845DD70;
      v43[4] = &v44;
      objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v16, v21 | v23, v22, 0, 0x400000, v43);
      if (v45[3])
      {
        break;
      }
    }

    v23 = (v23 - 1);
    if (v23 > v20)
    {
      if ((v45[3] & 1) == 0)
      {
        if ((v18 & 0xFFFF00000000) != 0x7FFF00000000 && v18 == 0x7FFFFFFF)
        {
          v37 = 0;
        }

        else
        {
          v37 = v18;
        }

        v25 = v42;
        v34 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v16, v37, v17);
        goto LABEL_26;
      }

      break;
    }
  }

  v25 = v42;
  if (v23 >= objc_msgSend_numberOfRows(self, v16, v24, v17) - 1)
  {
    v34 = 0x7FFFFFFF;
  }

  else
  {
    v28 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self, v26, (v23 + 1), v27);
    v32 = objc_msgSend_entireBodyRowsCellRange(self, v29, v30, v31);
    v34 = 0x7FFFFFFF;
    if (HIDWORD(v33) && v33)
    {
      v35 = v32 & 0xFFFF00000000;
      if (v32 == 0x7FFFFFFF && v35 != 0x7FFF00000000)
      {
        goto LABEL_17;
      }

      v39 = v32 != 0x7FFFFFFF || v35 == 0x7FFF00000000;
      v40 = !v39;
      if (v28 >= v32 || v40)
      {
        v41 = v32 + HIDWORD(v33) - 1;
        if (v32 == 0x7FFFFFFF)
        {
          v41 = 0x7FFFFFFF;
        }

        if (v41 >= v28)
        {
LABEL_17:
          v34 = v28;
        }
      }
    }
  }

LABEL_26:

  _Block_object_dispose(&v44, 8);
  return v34;
}

- (BOOL)containsAnyContentInRange:(TSUCellRect)range
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213AB824;
  v5[3] = &unk_27845DD70;
  v5[4] = &v6;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, a2, *&range.origin, *&range.size, 0, 0x400000, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (TSTLayout)dynamicLayout
{
  v4 = objc_msgSend_dynamicLayoutParticipants(self, a2, v2, v3);
  v7 = objc_msgSend_objectsPassingTest_(v4, v5, &unk_2834A6EF0, v6);

  v11 = objc_msgSend_anyObject(v7, v8, v9, v10);

  return v11;
}

- (BOOL)isDynamicallyHidingRowsCols
{
  origin = self->_dynamicHidingRowsCols.origin;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  size = self->_dynamicHidingRowsCols.size;
  if (HIDWORD(*&size))
  {
    v6 = size.numberOfColumns == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)isDynamicallyHidingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index
{
  origin = self->_dynamicHidingRowsCols.origin;
  size = self->_dynamicHidingRowsCols.size;
  v8 = origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0;
  if (v8 || self->_dynamicHidingRowsColsDirection != cols)
  {
    return 0;
  }

  if (cols == 1)
  {
    if (origin.column <= index)
    {
      LOWORD(origin.row) = LOWORD(size.numberOfColumns) + origin.column - 1;
      if (origin.column == 0x7FFF || size.numberOfColumns == 0)
      {
        LOWORD(origin.row) = 0x7FFF;
      }

      if (LOWORD(origin.row) >= index)
      {
        return 1;
      }
    }

    return 0;
  }

  if (cols || origin.row > index && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row == 0x7FFFFFFF ? 0x7FFFFFFF : origin.row + size.numberOfRows - 1;
  return v10 >= index;
}

- (BOOL)isDynamicallyHidingRowsColsCellID:(TSUCellCoord)d
{
  origin = self->_dynamicHidingRowsCols.origin;
  size = self->_dynamicHidingRowsCols.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyHidingContentOfCellID:(TSUCellCoord)d
{
  origin = self->_dynamicHidingContent.origin;
  size = self->_dynamicHidingContent.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyHidingTextOfCellID:(TSUCellCoord)d
{
  origin = self->_dynamicHidingText.origin;
  size = self->_dynamicHidingText.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyRemovingTextOfCellID:(TSUCellCoord)d
{
  origin = self->_dynamicRemovingText.origin;
  size = self->_dynamicRemovingText.size;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0)
  {
    return 0;
  }

  if (origin.row > d.row && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (v10 < d.row || origin.column > d.column)
  {
    return 0;
  }

  v11 = origin.column == 0x7FFF || size.numberOfColumns == 0;
  v12 = v11 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
  return v12 >= d.column;
}

- (BOOL)isDynamicallyRemovingText
{
  origin = self->_dynamicRemovingText.origin;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  size = self->_dynamicRemovingText.size;
  if (HIDWORD(*&size))
  {
    v6 = size.numberOfColumns == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)isDynamicallyRevealingRowsCols
{
  origin = self->_dynamicRevealingRowsCols.origin;
  if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  size = self->_dynamicRevealingRowsCols.size;
  if (HIDWORD(*&size))
  {
    v6 = size.numberOfColumns == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (BOOL)isDynamicallyRevealingRowsCols:(int64_t)cols rowColIndex:(unsigned int)index
{
  origin = self->_dynamicRevealingRowsCols.origin;
  size = self->_dynamicRevealingRowsCols.size;
  v8 = origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*&size) == 0 || size.numberOfColumns == 0;
  if (v8 || self->_dynamicRevealingRowsColsDirection != cols)
  {
    return 0;
  }

  if (cols == 1)
  {
    if (origin.column <= index)
    {
      LOWORD(origin.row) = LOWORD(size.numberOfColumns) + origin.column - 1;
      if (origin.column == 0x7FFF || size.numberOfColumns == 0)
      {
        LOWORD(origin.row) = 0x7FFF;
      }

      if (LOWORD(origin.row) >= index)
      {
        return 1;
      }
    }

    return 0;
  }

  if (cols || origin.row > index && origin.row != 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = origin.row == 0x7FFFFFFF ? 0x7FFFFFFF : origin.row + size.numberOfRows - 1;
  return v10 >= index;
}

- (BOOL)isDynamicallyChangingRowOrColumnCount
{
  if (objc_msgSend_isDynamicallyChangingRowCount(self, a2, v2, v3))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_isDynamicallyChangingColumnCount, v5, v6);
}

- (BOOL)isDynamicallyChangingContent
{
  dynamicContentDelegate = self->_dynamicContentDelegate;
  if (dynamicContentDelegate)
  {
    if (!objc_msgSend_dynamicContentMustDrawOnMainThread(dynamicContentDelegate, a2, v2, v3) || (LODWORD(dynamicContentDelegate) = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v5, v6, v7), dynamicContentDelegate))
    {
      LOBYTE(dynamicContentDelegate) = 1;
    }
  }

  return dynamicContentDelegate;
}

- (BOOL)isDynamicallyChangingFontColorOfCellID:(TSUCellCoord)d
{
  if (!self->_dynamicFontColor)
  {
    return 0;
  }

  size = self->_dynamicFontColorCellRange.size;
  if (!HIDWORD(*&size) || size.numberOfColumns == 0)
  {
    return 0;
  }

  origin = self->_dynamicFontColorCellRange.origin;
  v6 = *&origin & 0xFFFF00000000;
  if (origin.row != 0x7FFFFFFFLL || v6 == 0x7FFF00000000)
  {
    v9 = origin.row == 0x7FFFFFFF && v6 != 0x7FFF00000000;
    if (origin.row > d.row && !v9)
    {
      return 0;
    }

    v10 = origin.row + size.numberOfRows - 1;
    if (origin.row == 0x7FFFFFFF)
    {
      v10 = 0x7FFFFFFF;
    }

    if (v10 < d.row)
    {
      return 0;
    }

    if (origin.row != 0x7FFFFFFFLL && v6 == 0x7FFF00000000)
    {
      return 1;
    }
  }

  if (origin.column > d.column)
  {
    return 0;
  }

  if (origin.column == 0x7FFF || size.numberOfColumns == 0)
  {
    v13 = 0x7FFF;
  }

  else
  {
    v13 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  return v13 >= d.column;
}

- (void)captureDynamicResizeInfo
{
  v3 = [TSTLayoutDynamicResizeInfoAccordion alloc];
  v6 = objc_msgSend_initWithLayoutEngine_(v3, v4, self, v5);
  dynamicResizeInfo = self->_dynamicResizeInfo;
  self->_dynamicResizeInfo = v6;
}

- (void)validateDynamicResizeInfo
{
  dynamicResizeInfo = self->_dynamicResizeInfo;
  if (dynamicResizeInfo && (objc_msgSend_valid(dynamicResizeInfo, a2, v2, v3) & 1) == 0)
  {
    v6 = self->_dynamicResizeInfo;
    self->_dynamicResizeInfo = 0;
  }
}

- (BOOL)isGrouped
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_parentInfo(v4, v5, v6, v7);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)addChangeDescriptorWithType:(int)type andCellRange:(TSUCellRect)range andStrokeRange:(TSUCellRect)strokeRange
{
  v8 = objc_msgSend_changeDescriptorWithType_cellRange_strokeRange_(TSTChangeDescriptor, a2, *&type, *&range.origin, *&range.size, *&strokeRange.origin, *&strokeRange.size);
  objc_msgSend_addChangeDescriptor_(self, v6, v8, v7);
}

- (void)addChangeDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v29 = descriptorCopy;
    v5 = self->_changeDescriptors;
    objc_sync_enter(v5);
    if ((objc_msgSend_processedByLayoutEngine(v29, v6, v7, v8) & 1) == 0)
    {
      if (objc_msgSend_changeDescriptor(v29, v9, v10, v11) == 37 || objc_msgSend_changeDescriptor(v29, v12, v13, v14) == 33) && (objc_msgSend_changeDescriptors(self, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_lastObject(v15, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v19, v20, v29, v21), v19, v15, (isEqual))
      {
        v23 = v29;
        v29 = 0;
      }

      else
      {
        objc_msgSend_setProcessedByLayoutEngine_(v29, v12, 1, v14);
        v23 = objc_msgSend_changeDescriptors(self, v24, v25, v26);
        objc_msgSend_addObject_(v23, v27, v29, v28);
      }
    }

    objc_sync_exit(v5);
  }
}

- (void)validate
{
  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    if ((objc_msgSend_wasRemovedFromDocument(tableInfo, a2, v2, v3) & 1) == 0)
    {
      v6 = MEMORY[0x277D86228];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_2213AC4C4;
      v9[3] = &unk_27845E3F8;
      v9[4] = self;
      objc_msgSend_modifySafelyUsingBlock_(self, v7, v9, v8);
    }
  }
}

- (void)validateLayoutEngineForChangeDescriptors:(id)descriptors
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  descriptorsCopy = descriptors;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v5, &v22, v26, 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = objc_msgSend_changeDescriptor(v14, v6, v7, v8, v22) == 35;
        if (objc_msgSend_changeDescriptor(v14, v16, v17, v18) == 33 || objc_msgSend_changeDescriptor(v14, v6, v7, v8) == 49)
        {
          v10 = 1;
        }

        v11 |= v15;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v6, &v22, v26, 16);
    }

    while (v9);

    if (v11)
    {
      objc_msgSend_invalidateTableNameHeight(self, v19, v20, v21);
    }

    if (v10)
    {
      objc_msgSend_invalidateDefaultFontHeights(self, v19, v20, v21);
    }
  }

  else
  {
  }
}

- (void)validateChangeDescriptorQueue
{
  objc_msgSend_numberOfRows(self, a2, v2, v3);
  objc_msgSend_numberOfColumns(self, v7, v8, v9);
  v10 = self->_changeDescriptors;
  objc_sync_enter(v10);
  if (objc_msgSend_count(self->_changeDescriptors, v11, v12, v13))
  {
    v113 = objc_msgSend_mutableCopy(self->_changeDescriptors, v14, v15, v16);
    objc_msgSend_removeAllObjects(self->_changeDescriptors, v17, v18, v19);
  }

  else
  {
    v113 = 0;
  }

  objc_sync_exit(v10);

  objc_msgSend_validateRowVisibility_(self, v20, v113, v21);
  if (objc_msgSend_count(v113, v22, v23, v24) == 1 && objc_msgSend_isInDynamicLayoutMode(self, v25, v26, v27))
  {
    v29 = objc_msgSend_tableInfo(self, v25, v28, v27);
    if (objc_msgSend_tableSizeClass(v29, v30, v31, v32) <= 1)
    {
    }

    else
    {
      v36 = objc_msgSend_firstObject(v113, v33, v34, v35);
      v4 = objc_msgSend_changeDescriptor(v36, v37, v38, v39);

      if (v4 == 6)
      {

LABEL_13:
        v57 = objc_msgSend_widthHeightCache(self, v25, v40, v27);
        objc_msgSend_willModifyIfNeeded_(v57, v58, self->_tableInfo, v59);
        v60 = v57;
        goto LABEL_23;
      }
    }
  }

  v40 = v113;
  if (!v113)
  {
    goto LABEL_13;
  }

  objc_msgSend_p_validateCellIDToWPColumnCacheForChangeDescriptors_(self, v25, v113, v27);
  v47 = objc_msgSend_widthHeightCache(self, v41, v42, v43);
  tableInfo = self->_tableInfo;
  emptyFilteredTable = self->_emptyFilteredTable;
  if (emptyFilteredTable)
  {
    v4 = objc_msgSend_tableInfo(self, v44, v45, v46);
    v56 = objc_msgSend_numberOfRows(v4, v50, v51, v52);
  }

  else
  {
    v56 = objc_msgSend_numberOfRows(self, v44, v45, v46);
  }

  v61 = self->_emptyFilteredTable;
  if (v61)
  {
    v5 = objc_msgSend_tableInfo(self, v53, v54, v55);
    v66 = objc_msgSend_numberOfColumns(v5, v62, v63, v64);
  }

  else
  {
    v66 = objc_msgSend_numberOfColumns(self, v53, v54, v55);
  }

  v67 = objc_msgSend_validateChangeDescriptors_tableInfo_numberOfRows_numberOfColumns_(v47, v65, v113, tableInfo, v56, v66);
  if (v61)
  {
  }

  if (emptyFilteredTable)
  {
  }

  v71 = objc_msgSend_hiddenRowsColumnsCache(self, v68, v69, v70);
  objc_msgSend_validateChangeDescriptors_(v71, v72, v113, v73);

  objc_msgSend_validateLayoutEngineForChangeDescriptors_(self, v74, v113, v75);
  v79 = objc_msgSend_hiddenRowsColumnsCache(self, v76, v77, v78);
  objc_msgSend_validate_(v79, v80, self, v81);

  objc_msgSend_validateDefaultFontHeights(self, v82, v83, v84);
  objc_msgSend_validateStrokesForChangeDescriptors_(self, v85, v113, v86);
  v89 = objc_msgSend_validateFittingRegionForChangeDescriptors_(self, v87, v113, v88);
  v93 = objc_msgSend_widthHeightCache(self, v90, v91, v92);
  v95 = objc_msgSend_validateRowsNeedingFittingInfo_validationRegion_layoutEngine_(v93, v94, v67, v89, self);

  v99 = objc_msgSend_first(v95, v96, v97, v98);

  v103 = objc_msgSend_second(v95, v100, v101, v102);

  v105 = objc_msgSend_validateFittingInfoForValidationRegion_rowsNeedingFittingInfo_(self, v104, v103, v99);
  objc_msgSend_waitForLayoutToComplete_(self, v106, v105, v107);
  objc_msgSend_finalizeLayoutPassWithRowsNeedingFittingInfo_(self, v108, v99, v109);
  objc_msgSend_removeAllObjects(self->_paraStyleToHeightCache, v110, v111, v112);

  v60 = v113;
LABEL_23:
}

- (void)p_validateCellIDToWPColumnCacheForChangeDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3812000000;
  v44 = sub_2213ACDA8;
  v45 = nullsub_58;
  v46 = &unk_22188E88F;
  v47 = 0x7FFF7FFFFFFFLL;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2213ACDB8;
  v40[3] = &unk_278463E90;
  v40[4] = self;
  v40[5] = &v41;
  objc_msgSend_enumerateObjectsUsingBlock_(descriptorsCopy, v5, v40, v6);
  v10 = v42[6];
  if (v10 == 0x7FFFFFFF || (v10 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v12 = objc_msgSend_cellIDToWPColumnCache(self, v7, v8, v9);
    objc_msgSend_removeAllObjects(v12, v13, v14, v15);
  }

  else
  {
    v39.origin = objc_msgSend_cellRange(self, v7, v8, v9);
    v39.size = v16;
    v17 = TSUCellRect::columns(&v39);
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", v19);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 168, 0, "Invalid column range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
      objc_msgSend_regionFromRange_(TSTCellRegion, v29, 0x7FFF7FFFFFFFLL, 0);
    }

    else if (v18)
    {
      objc_msgSend_regionFromRange_(TSTCellRegion, v18, *(v42 + 12) | (v17 << 32), v18 | 0x100000000);
    }

    else
    {
      objc_msgSend_regionFromRange_(TSTCellRegion, 0, 0x7FFF7FFFFFFFLL, 0);
    }
    v30 = ;
    v12 = objc_msgSend_expandCellRegionToCoverMergedCells_(self, v31, v30, v32);

    v36 = objc_msgSend_cellIDToWPColumnCache(self, v33, v34, v35);
    objc_msgSend_invalidateObjectsWithKeysInCellRegion_(v36, v37, v12, v38);
  }

  _Block_object_dispose(&v41, 8);
}

- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info
{
  infoCopy = info;
  mergeRangesForLayoutPass = self->_mergeRangesForLayoutPass;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2213ACFD8;
  v10[3] = &unk_278463EB8;
  v10[4] = self;
  objc_msgSend_enumerateMergeRangesUsingBlock_(mergeRangesForLayoutPass, v6, v10, v7);
  objc_msgSend_finalizeLayoutPassWithRowsNeedingFittingInfo_(self->_widthHeightCache, v8, infoCopy, v9);
}

- (void)validateRowVisibility:(id)visibility
{
  v120 = *MEMORY[0x277D85DE8];
  visibilityCopy = visibility;
  v7 = objc_msgSend_tableInfo(self, v4, v5, v6);
  v11 = objc_msgSend_filterSet(v7, v8, v9, v10);
  v15 = objc_msgSend_numberOfRows(v7, v12, v13, v14);
  v19 = objc_msgSend_numberOfColumns(v7, v16, v17, v18);
  v23 = objc_msgSend_numberOfHiddenRows(v7, v20, v21, v22);
  if (!v11 || ((v27 = v23, isEnabled = objc_msgSend_isEnabled(v11, v24, v25, v26), v27 == v15) ? (v30 = isEnabled) : (v30 = 0), v30 != 1))
  {
    if (!self->_emptyFilteredTable)
    {
      goto LABEL_26;
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v70 = visibilityCopy;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v115, v119, 16);
    if (v75)
    {
      v76 = *v116;
      while (2)
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v116 != v76)
          {
            objc_enumerationMutation(v70);
          }

          v78 = *(*(&v115 + 1) + 8 * i);
          if (objc_msgSend_changeDescriptor(v78, v72, v73, v74) == 29 || objc_msgSend_changeDescriptor(v78, v79, v80, v81) == 25)
          {
            dynamicContentDelegate = self->_dynamicContentDelegate;
            self->_dynamicContentDelegate = 0;

            self->_emptyFilteredTable = 0;
            v84 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v83, 0, v19);
            v87 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v85, v84, v86);
            v89 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v88, 0, v19);
            v92 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v90, v89, v91);
            v94 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v93, 7, v87, v92);

            objc_msgSend_addObject_(v70, v95, v94, v96);
            v97 = v15;
            v99 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v98, 0, v15);
            v102 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v100, v99, v101);
            v104 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v103, 0, v97);
            v107 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v105, v104, v106);
            v109 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v108, 29, v102, v107);

            objc_msgSend_addObject_(v70, v110, v109, v111);
            goto LABEL_24;
          }
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v72, &v115, v119, 16);
        if (v75)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  emptyFilteredTable = self->_emptyFilteredTable;
  if (!emptyFilteredTable)
  {
    self->_emptyFilteredTable = 1;
    v31 = v19;
    v32 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v29, 0, v19);
    v35 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v33, v32, v34);
    v37 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v36, 0, v31);
    v40 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v38, v37, v39);
    v42 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v41, 7, v35, v40);

    objc_msgSend_addObject_(visibilityCopy, v43, v42, v44);
    v45 = v15;
    v47 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v46, 0, v15);
    v50 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v48, v47, v49);
    v52 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v51, 0, v45);
    v55 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v53, v52, v54);
    v57 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v56, 29, v50, v55);

    objc_msgSend_addObject_(visibilityCopy, v58, v57, v59);
  }

  objc_opt_class();
  v60 = TSUDynamicCast();

  if (!v60)
  {
    v64 = self->_dynamicContentDelegate;
    self->_dynamicContentDelegate = 0;

    v65 = [TSTFilteredTableDynamicContentDelegate alloc];
    v68 = objc_msgSend_initWithTableInfo_(v65, v66, v7, v67);
    v69 = self->_dynamicContentDelegate;
    self->_dynamicContentDelegate = v68;
  }

  if (!emptyFilteredTable)
  {
LABEL_24:
    v70 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v61, v62, v63);
    objc_msgSend_postNotificationName_object_(v70, v112, @"TSTLayoutEngineDidChangeEmptyFilteredState", v7);
    goto LABEL_25;
  }

LABEL_26:
}

- (void)validateFittingInfoForCell:(id)cell cellID:(TSUCellCoord)d mergeRange:(TSUCellRect)range setFitting:(BOOL)fitting layoutTask:(id)task widthHeightCollection:(id)collection validationBundle:(id)bundle styleDefaultsCache:(id)self0
{
  size = range.size;
  dCopy = d;
  numberOfRows = range.size.numberOfRows;
  if (range.size.numberOfRows)
  {
    v14 = range.size.numberOfColumns == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v107 = *&range.origin & 0xFFFF00000000;
  row = range.origin.row;
  if ((*&range.origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = 0;
  }

  if (range.origin.row == 0x7FFFFFFFLL)
  {
    v15 = 0;
  }

  v117 = v15;
  v124[0] = 0;
  origin = range.origin;
  v16 = objc_msgSend_modelCellIDForLayoutCellID_(self, a2, *&range.origin, *&d);
  v19 = objc_msgSend_modelCellIDForLayoutCellID_(self, v17, dCopy, v18);
  v23 = v19;
  v24 = 1;
  v116 = dCopy;
  if (v16 == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v25 = 1;
  if ((v16 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_19;
  }

  v24 = 1;
  if (!numberOfRows)
  {
LABEL_18:
    v25 = 1;
  }

  else
  {
    v25 = 1;
    if (size)
    {
      if (v16 != v19)
      {
        return;
      }

      dCopy = v16;
      v24 = numberOfRows;
      v25 = size;
      if (((v19 ^ v16) & 0xFFFF00000000) != 0)
      {
        return;
      }
    }
  }

LABEL_19:
  v110 = v25;
  v111 = v24;
  v112 = dCopy;
  v115 = objc_msgSend_valueType(cell, v20, v21, v22);
  v29 = objc_msgSend_cellStyleHandle(cell, v26, v27, v28);
  v33 = objc_msgSend_textStyleHandle(cell, v30, v31, v32);
  v37 = v33;
  cacheCopy = cache;
  v39 = v33;
  if (!(v29 | v33))
  {
    tableInfo = self->_tableInfo;
    v122 = 0;
    v123 = 0;
    objc_msgSend_defaultStyleHandlesForCellID_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(tableInfo, v34, v23, 1, cache, &v123, &v122);
    v29 = v123;
    v41 = v122;
LABEL_21:
    v39 = v41;
LABEL_26:
    v44 = v41;
    goto LABEL_27;
  }

  if (!v29)
  {
    v43 = self->_tableInfo;
    v121 = 0;
    objc_msgSend_defaultStyleHandlesForCellID_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(v43, v34, v23, 1, cache, &v121, 0);
    v41 = v121;
    v29 = v121;
    goto LABEL_26;
  }

  if (!v33)
  {
    v42 = self->_tableInfo;
    v120 = 0;
    objc_msgSend_defaultStyleHandlesForCellID_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(v42, v34, v23, 1, cache, 0, &v120);
    v41 = v120;
    goto LABEL_21;
  }

LABEL_27:
  v118 = v39;
  if (v115 == 9 || v115 == 3)
  {
    v48 = objc_msgSend_cellFlags(cell, v34, v35, v36, cacheCopy);
    if ((v48 & 1) == 0)
    {
      if (v23 == v116 && ((v23 ^ v116) & 0x101FFFF00000000) == 0)
      {
        v49 = objc_msgSend_formattedValue(cell, v45, v46, v47);
      }

      else
      {
        v49 = objc_msgSend_stringAtCellID_optionalCell_(self->_tableInfo, v45, v23, cell);
      }

      v53 = v49;
      v54 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v50, v51, v52);
      v57 = objc_msgSend_rangeOfCharacterFromSet_(v53, v55, v54, v56);

      v48 = v57 != 0x7FFFFFFFFFFFFFFFLL;
    }

    v124[0] = objc_msgSend_cellWraps(v29, v45, v46, v47);
    v39 = v118;
    if (v118)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v48 = 0;
    if (v39)
    {
LABEL_35:
      if (objc_msgSend_isVariation(v39, v34, v35, v36))
      {
        LOBYTE(v39) = objc_msgSend_nonDefaultFontSize(v118, v34, v35, v36);
        v61 = objc_msgSend_nonDefaultFontName(v118, v58, v59, v60);
      }

      else
      {
        v61 = 0;
        LOBYTE(v39) = 0;
      }

      goto LABEL_40;
    }
  }

  v61 = 0;
LABEL_40:
  v62 = objc_msgSend_padding(v29, v34, v35, v36);
  if ((objc_msgSend_isCategorized(self, v63, v64, v65) & 1) != 0 || objc_msgSend_isAPivotTable(self, v66, v67, v68))
  {
    v70 = self->_tableInfo;
    v119 = v62;
    objc_msgSend_modifiedTextPropertiesForCategoryOrPivotCellAtCellID_wraps_padding_alignment_(v70, v66, v23, v124, &v119, 0);
    v71 = v119;

    v62 = v71;
  }

  objc_msgSend_edgeInsetsFromPadding_(self, v66, v62, v69);
  v73 = v72;
  v75 = v74;
  isVariation = objc_msgSend_isVariation(v29, v76, v77, v78);
  if (isVariation)
  {
    LOBYTE(isVariation) = objc_msgSend_overridesPadding(v29, v80, v81, v82);
  }

  if (v48)
  {
    v83 = 1;
  }

  else
  {
    v83 = v124[0] | (v115 == 9);
  }

  if ((v39 | v61 | isVariation | (v37 != 0)) & v117 & (size >> 33 != 0)) != 0 || (v83)
  {
    v84 = v118;
    objc_msgSend_verticalAlignment(v29, v80, v81, v82);
    objc_msgSend_currentFormatUsesAccountingStyle(cell, v98, v99, v100);
    if (v117)
    {
      v102 = v112;
    }

    else
    {
      v102 = 0x7FFF7FFFFFFFLL;
    }

    if (v117)
    {
      v103 = v110 | (v111 << 32);
    }

    else
    {
      v103 = 0;
    }

    objc_msgSend_queueCellForValidation_cell_textStyleHandle_modelMergeRange_wrap_verticalAlignment_padding_prop_layoutCacheFlags_validationBundle_layoutTask_(self, v101, v112, v110 | (v111 << 32), cell, v118, v102, v103, v124[0], v62, 1, bundle, task);
  }

  else
  {
    v84 = v118;
    if (((v39 | v61) | isVariation) & 1 | (v37 != 0))
    {
      v85 = v116;
      if (v118)
      {
        v86 = objc_msgSend_textStyle(v118, v80, v81, v82);
        objc_msgSend_fontHeightOfParagraphStyle_(self, v87, v86, v88);
        v90 = v89;

        v93 = v75 + v73 + v90;
        if (v93 < 8.0)
        {
          v93 = 8.0;
        }

        if (v117)
        {
          v94 = (origin + numberOfRows - 1);
          if (row != 0x7FFFFFFF && v107 == 0x7FFF00000000)
          {
            v96 = 0;
          }

          else
          {
            v96 = v107;
          }

          if (numberOfRows)
          {
            v97 = row == 0x7FFFFFFF;
          }

          else
          {
            v97 = 1;
          }

          if (v97)
          {
            v94 = 0x7FFFFFFFLL;
          }

          v85 = v96 | v94;
        }

        objc_msgSend_addFittingHeight_forCellID_(collection, v91, v85, v92, v93);
      }
    }

    else if (v117)
    {
      objc_msgSend_p_addFittingInfoForEmptyMergeRange_(self, v80, origin, size);
    }

    else
    {
      v104 = objc_msgSend_tableStyleAreaForCellID_(self, v80, v116, v82);
      objc_msgSend_addFittingHeight_forCellID_(collection, v105, v116, v106, self->_tableDefaultFontHeightForArea.__begin_[v104]);
    }
  }
}

- (void)p_validateFittingInfoWithCellRangeWorker:(TSUCellRect)worker widthHeightCollection:(id)collection containsMerges:(BOOL)merges validationBundle:(id)bundle
{
  mergesCopy = merges;
  size = worker.size;
  origin = worker.origin;
  collectionCopy = collection;
  bundleCopy = bundle;
  v13 = MEMORY[0x277D86228];
  v20 = objc_msgSend_tableRowsBehavior(self, v14, v15, v16, bundleCopy, collectionCopy) == 3 || objc_msgSend_tableRowsBehavior(self, v17, v18, v19) == 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3812000000;
  v50 = sub_2213ACDA8;
  v51 = nullsub_58;
  v52 = &unk_22188E88F;
  v53 = 0x7FFF7FFFFFFFLL;
  v21 = [TSTLayoutTask alloc];
  v36 = objc_msgSend_initWithLayoutEngine_(v21, v22, self, v23);
  v26 = objc_msgSend_cacheWithTableInfo_(TSTStyleDefaultsCache, v24, self->_tableInfo, v25);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2213AE008;
  v37[3] = &unk_278463EE0;
  v45 = mergesCopy;
  if (mergesCopy)
  {
    v27 = 64;
  }

  else
  {
    v27 = 0;
  }

  v42 = &v47;
  v43 = origin;
  v37[4] = self;
  if (mergesCopy)
  {
    v28 = 0x20000000;
  }

  else
  {
    v28 = 66058240;
  }

  v44 = size;
  v29 = collectionCopy;
  v38 = v29;
  v46 = v20;
  v30 = v36;
  v39 = v30;
  v31 = bundleCopy;
  v40 = v31;
  v32 = v26;
  v41 = v32;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v33, origin, size, v27, v28, v37);
  objc_msgSend_processLayoutTask_validationBundle_(self, v34, v30, v31);
  if (!mergesCopy)
  {
    objc_msgSend_p_validateFittingInfoForEmptyCellsBetween_andCellID_inRange_widthHeightCollection_(self, v35, v48[6], 0x7FFF7FFFFFFFLL, origin, size, v29);
  }

  _Block_object_dispose(&v47, 8);
}

- (void)validateFittingInfoWithCellRange:(TSUCellRect)range validationBundle:(id)bundle
{
  size = range.size;
  row = range.origin.row;
  rangeCopy = range;
  bundleCopy = bundle;
  v11 = objc_msgSend_limit(self->_layoutValidateQueue, v8, v9, v10);
  v15 = HIDWORD(*&size);
  v16 = HIDWORD(*&size) * *&size;
  v17 = v16 / (3 * v11);
  if (v17 <= 0x200)
  {
    LODWORD(v17) = 512;
  }

  v18 = v16 / v17;
  if (v18 >= size.numberOfRows)
  {
    v19 = 1;
  }

  else
  {
    v19 = size.numberOfRows / (v18 + 1);
  }

  v20 = *&rangeCopy.origin.column;
  objc_msgSend_loadAllLazyReferences(self->_tableInfo, v12, v13, v14);
  if (v15)
  {
    do
    {
      if (v19 >= v15)
      {
        v24 = v15;
      }

      else
      {
        v24 = v19;
      }

      v25 = objc_msgSend_generateWidthHeightCollection(bundleCopy, v21, v22, v23);
      dispatch_group_enter(self->_layoutInFlight);
      layoutValidateQueue = self->_layoutValidateQueue;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_2213AE364;
      v30[3] = &unk_278463F30;
      v30[4] = self;
      v33 = row;
      v34 = v20;
      v35 = v24;
      v27 = v25;
      v31 = v27;
      v32 = bundleCopy;
      objc_msgSend_performAsync_(layoutValidateQueue, v28, v30, v29);
      row += v24;
      LODWORD(v15) = v15 - v24;
    }

    while (v15);
  }
}

- (void)p_validateFittingInfoForEmptyCellsOnSingleRowBetween:(TSUCellCoord)between andEndCellID:(TSUCellCoord)d widthHeightCollection:(id)collection
{
  if (objc_msgSend_hasHiddenRowAtIndex_(self, a2, *&between, *&d))
  {
    return;
  }

  v11 = HIDWORD(*&d);
  v12 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self, v9, between.column, v10);
  if (v12 > d.column)
  {
    return;
  }

  v15 = v12;
  v16 = v12;
  v17 = *&between & 0xFFFF0000FFFFFFFFLL | (v12 << 32);
  v18 = objc_msgSend_tableStyleAreaForCellID_(self, v13, v17, v14);
  v21 = v18;
  if (between.row == d.row && v15 << 32 == (*&d & 0xFFFF00000000))
  {
LABEL_10:
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = v21;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3812000000;
    v29[3] = sub_2213ACDA8;
    v29[4] = nullsub_58;
    v29[5] = &unk_22188E88F;
    row = between.row;
    v31 = v15;
    v32 = *&between._preserveRow;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    hiddenRowsColumnsCache = self->_hiddenRowsColumnsCache;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2213AE9D0;
    v27[3] = &unk_278463F58;
    v27[4] = v29;
    v27[5] = v28;
    v27[6] = v33;
    v27[7] = v18;
    v27[8] = self;
    v27[9] = collection;
    v27[10] = &self->_tableDefaultFontHeightForArea;
    objc_msgSend_enumerateVisibleColumnIndexesInRange_usingBlock_(hiddenRowsColumnsCache, v19, v16, v11 - v15 + 1, v27);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v33, 8);
    return;
  }

  v22 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(self, v19, d.column, v20);
  if (v15 <= v22)
  {
    LOWORD(v11) = v22;
    v18 = objc_msgSend_tableStyleAreaForCellID_(self, v23, *&d & 0xFFFF0000FFFFFFFFLL | (v22 << 32), v24);
    goto LABEL_10;
  }

  v25 = self->_tableDefaultFontHeightForArea.__begin_[v21];

  objc_msgSend_addFittingHeight_forCellID_(collection, v23, v17, v24, v25);
}

- (TSUCellCoord)p_validateFittingInfoForEmptyCellsBetween:(TSUCellCoord)between andCellID:(TSUCellCoord)d inRange:(TSUCellRect)range widthHeightCollection:(id)collection
{
  size = range.size;
  origin = range.origin;
  collectionCopy = collection;
  if (between.row == 0x7FFFFFFF || (*&between & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = HIDWORD(*&origin);
    row = origin.row;
    between = origin;
  }

  else
  {
    if (size.numberOfColumns)
    {
      v13 = origin.column == 0x7FFF;
    }

    else
    {
      v13 = 1;
    }

    v14 = (LOWORD(size.numberOfColumns) + origin.column - 1);
    if (v13)
    {
      v14 = 0x7FFF;
    }

    if (v14 <= between.column)
    {
      v23 = origin.row + size.numberOfRows - 1;
      if (HIDWORD(*&size))
      {
        v24 = origin.row == 0x7FFFFFFF;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v23 = 0x7FFFFFFF;
      }

      if (v23 <= between.row)
      {
        v18 = 0;
        LOWORD(v17) = 0x7FFF;
        d.row = 0x7FFFFFFF;
        goto LABEL_73;
      }

      if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
      {
        LOWORD(v15) = 0;
      }

      else
      {
        LOWORD(v15) = origin.column;
      }

      row = between.row + 1;
    }

    else
    {
      LOWORD(v15) = between.column + 1;
      row = between.row;
    }
  }

  v17 = HIDWORD(*&d);
  v18 = HIWORD(*&d);
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v44 = HIDWORD(*&d);
    v45 = HIWORD(*&d);
    v18 = 0;
    v22 = origin.row + size.numberOfRows - 1;
    LODWORD(v17) = ((*&origin + 0xFFFF00000000) >> 32) + size.numberOfColumns;
LABEL_50:
    if (v22 > row || v22 == row && v17 >= v15)
    {
      v29 = *&between & 0xFFFF000000000000;
      if (v22 == row)
      {
        objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v11, row | (v15 << 32) | v29, (v17 << 32) | (v18 << 48) | row, collectionCopy);
        LOWORD(v17) = v44;
        v18 = v45;
        goto LABEL_73;
      }

      v30 = *&origin & 0xFFFF00000000;
      if (size.numberOfColumns)
      {
        v31 = v30 == 0x7FFF00000000;
      }

      else
      {
        v31 = 1;
      }

      v32 = v29 | (v15 << 32);
      if (v31)
      {
        v33 = 0x7FFF00000000;
      }

      else
      {
        v33 = (*&origin + (*&size << 32) + 0xFFFF00000000) & 0xFFFF00000000;
      }

      objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v11, v32 | row, v33 | row | v29, collectionCopy, v44);
      if (origin.row != 0x7FFFFFFF && v30 == 0x7FFF00000000)
      {
        v36 = 0;
      }

      else
      {
        v36 = *&origin & 0xFFFF00000000;
      }

      objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v34, v22 | (v18 << 48) | v36, v22 | (v18 << 48) | (v17 << 32), collectionCopy);
      v38 = row + 1;
      v39 = v33 + v38;
      v40 = v36 + v38;
      v18 = v45;
      while (v39 < v22)
      {
        v41 = v39 + 1;
        v42 = v40 + 1;
        objc_msgSend_p_validateFittingInfoForEmptyCellsOnSingleRowBetween_andEndCellID_widthHeightCollection_(self, v37, v40, v39, collectionCopy);
        v40 = v42;
        v39 = v41;
      }
    }

    else
    {
      v18 = v45;
    }

    LOWORD(v17) = v44;
    goto LABEL_73;
  }

  v19 = *&origin & 0xFFFF00000000;
  if (origin.row != 0x7FFFFFFF && v19 == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = origin.column;
  }

  if (column < d.column)
  {
    v44 = HIDWORD(*&d);
    LOWORD(v17) = d.column - 1;
    v22 = d.row;
LABEL_49:
    v45 = HIWORD(*&d);
    goto LABEL_50;
  }

  if (v19 != 0x7FFF00000000 && origin.row == 0x7FFFFFFF)
  {
    v27 = 0;
  }

  else
  {
    v27 = origin.row;
  }

  if (v27 < d.row)
  {
    v44 = HIDWORD(*&d);
    if (size.numberOfColumns)
    {
      v28 = origin.column == 0x7FFF;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      LOWORD(v17) = 0x7FFF;
    }

    else
    {
      LOWORD(v17) = LOWORD(size.numberOfColumns) + origin.column - 1;
    }

    v22 = d.row - 1;
    goto LABEL_49;
  }

LABEL_73:

  return ((v17 << 32) | (v18 << 48) | d.row);
}

- (void)p_addFittingInfoForEmptyMergeRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v7 = self->_tableDefaultFontHeightForArea.__begin_[objc_msgSend_tableStyleAreaForCellID_(self, a2, *&range.origin, *&range.size)];
  mergeRangesForLayoutPass = self->_mergeRangesForLayoutPass;
  v9 = *MEMORY[0x277D81428];
  v10 = *(MEMORY[0x277D81428] + 8);
  v11 = *(MEMORY[0x277D81428] + 16);
  v12 = *(MEMORY[0x277D81428] + 24);

  objc_msgSend_addRange_height_paddingInsets_isCheckbox_(mergeRangesForLayoutPass, v6, origin, size, 0, v7, v9, v10, v11, v12);
}

- (void)p_validationFittingCellRegionForColumnsDeleted:(id)deleted cellRegionGatherer:(id)gatherer
{
  gathererCopy = gatherer;
  v10 = objc_msgSend_intersectingColumnsIndexSet(deleted, v7, v8, v9);
  v14 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13);
  objc_msgSend_removeColumns_(gathererCopy, v15, v10, v16);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2213AF028;
  v38[3] = &unk_278463F80;
  v40 = v41;
  v38[4] = self;
  v17 = v14;
  v39 = v17;
  objc_msgSend_enumerateRangesUsingBlock_(v10, v18, v38, v19);
  v22 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v20, v17, v21);
  v26 = objc_msgSend_cellRange(self, v23, v24, v25);
  v28 = objc_msgSend_regionFromRange_(TSTCellRegion, v27, v26, v27);
  v31 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v29, v28, v30);
  if (objc_msgSend_cellCount(v31, v32, v33, v34))
  {
    v37 = objc_msgSend_region_addingRegion_(TSTCellRegion, v35, v22, v31);

    v22 = v37;
  }

  objc_msgSend_addRegion_(gathererCopy, v35, v22, v36);

  _Block_object_dispose(v41, 8);
}

- (void)p_validationFittingCellRegionForColumnsInserted:(id)inserted cellRegionGatherer:(id)gatherer
{
  insertedCopy = inserted;
  gathererCopy = gatherer;
  v10 = objc_msgSend_intersectingColumnsIndexSet(insertedCopy, v7, v8, v9);
  objc_msgSend_addColumns_(gathererCopy, v11, v10, v12);
  v16 = objc_msgSend_tableInfo(self, v13, v14, v15);
  v19 = objc_msgSend_expandCellRegionToCoverMergedCells_(v16, v17, insertedCopy, v18);

  v23 = objc_msgSend_cellRange(self, v20, v21, v22);
  v25 = objc_msgSend_regionFromRange_(TSTCellRegion, v24, v23, v24);
  v28 = objc_msgSend_regionBySubtractingRegion_(v25, v26, insertedCopy, v27);

  v31 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v29, v28, v30);
  if (objc_msgSend_cellCount(v31, v32, v33, v34))
  {
    v37 = objc_msgSend_region_addingRegion_(TSTCellRegion, v35, v19, v31);

    v19 = v37;
  }

  objc_msgSend_addRegion_(gathererCopy, v35, v19, v36);
}

- (void)p_validationFittingCellRegionForColumnsVisibility:(id)visibility cellRegionGatherer:(id)gatherer
{
  gathererCopy = gatherer;
  v9 = objc_msgSend_intersectingColumnsIndexSet(visibility, v6, v7, v8);
  v12 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v10, v9, v11);
  objc_msgSend_addRegion_(gathererCopy, v13, v12, v14);
  v18 = objc_msgSend_visibleColumnIndices(self, v15, v16, v17);
  v22 = objc_msgSend_mutableCopy(v18, v19, v20, v21);

  objc_msgSend_removeIndexes_(v22, v23, v9, v24);
  v27 = objc_msgSend_regionFromColumnIndices_(TSTCellRegion, v25, v22, v26);
  v30 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v28, v27, v29);
  if (objc_msgSend_cellCount(v30, v31, v32, v33))
  {
    objc_msgSend_addRegion_(gathererCopy, v34, v30, v35);
  }
}

- (void)p_validationFittingCellRegionForColumnsMovedFrom:(id)from toColumnIndex:(unsigned __int16)index cellRegionGatherer:(id)gatherer
{
  indexCopy = index;
  fromCopy = from;
  gathererCopy = gatherer;
  v15.origin = objc_msgSend_boundingCellRange(fromCopy, v9, v10, v11);
  v15.size = v12;
  v13 = TSUCellRect::columns(&v15);
  objc_msgSend_moveColumnsFromRange_toIndex_(gathererCopy, v14, v13, v14, indexCopy);
}

- (void)p_validationFittingCellRegionForRowsDeleted:(id)deleted cellRegionGatherer:(id)gatherer
{
  gathererCopy = gatherer;
  v10 = objc_msgSend_intersectingRowsIndexSet(deleted, v7, v8, v9);
  objc_msgSend_removeRows_(gathererCopy, v11, v10, v12);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v13, v14, v15);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_2213AF660;
  v42 = &unk_2784623E0;
  v44 = v45;
  v17 = v16;
  v43 = v17;
  objc_msgSend_enumerateRangesUsingBlock_(v10, v18, &v39, v19);
  v22 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v20, v17, v21, v39, v40, v41, v42);
  v26 = objc_msgSend_tableInfo(self, v23, v24, v25);
  v29 = objc_msgSend_mergesIntersectingCellRegion_(v26, v27, v22, v28);

  if (objc_msgSend_count(v29, v30, v31, v32))
  {
    v36 = objc_msgSend_regionForList(v29, v33, v34, v35);
    objc_msgSend_addRegion_(gathererCopy, v37, v36, v38);
  }

  else
  {
    v36 = 0;
  }

  _Block_object_dispose(v45, 8);
}

- (void)p_validationFittingCellRegionForRowsInserted:(id)inserted cellRegionGatherer:(id)gatherer
{
  insertedCopy = inserted;
  gathererCopy = gatherer;
  v10 = objc_msgSend_intersectingRowsIndexSet(insertedCopy, v7, v8, v9);
  objc_msgSend_addRows_(gathererCopy, v11, v10, v12);
  v16 = objc_msgSend_tableInfo(self, v13, v14, v15);
  v19 = objc_msgSend_expandCellRegionToCoverMergedCells_(v16, v17, insertedCopy, v18);

  objc_msgSend_addRegion_(gathererCopy, v20, v19, v21);
}

- (void)p_validationFittingCellRegionForRowsMovedFrom:(id)from toRowIndex:(unsigned int)index cellRegionGatherer:(id)gatherer
{
  v6 = *&index;
  fromCopy = from;
  gathererCopy = gatherer;
  v15.origin = objc_msgSend_boundingCellRange(fromCopy, v9, v10, v11);
  v15.size = v12;
  v13 = TSUCellRect::rows(&v15);
  objc_msgSend_moveRowsFromRange_toIndex_(gathererCopy, v14, v13, v14, v6);
}

- (void)p_validationFittingCellRegionForRangeMergeUnmerge:(id)unmerge cellRegionGatherer:(id)gatherer
{
  unmergeCopy = unmerge;
  gathererCopy = gatherer;
  v11 = objc_msgSend_tableInfo(self, v8, v9, v10);
  v14 = objc_msgSend_expandCellRegionToCoverMergedCells_(v11, v12, unmergeCopy, v13);

  objc_msgSend_addRegion_(gathererCopy, v15, v14, v16);
  v20 = objc_msgSend_intersectingRowsIndexSet(v14, v17, v18, v19);
  v39.origin = objc_msgSend_cellRange(self, v21, v22, v23);
  v39.size = v24;
  v25 = TSUCellRect::columns(&v39);
  v27 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v26, v20, v25, v26);

  v30 = objc_msgSend_regionBySubtractingRegion_(v27, v28, v14, v29);

  v33 = objc_msgSend_mergeRangesProppingRowHeightsInRegion_(self, v31, v30, v32);
  if (objc_msgSend_cellCount(v33, v34, v35, v36))
  {
    objc_msgSend_addRegion_(gathererCopy, v37, v33, v38);
  }
}

- (void)p_validationFittingCellRegionForStrokesChanged:(id)changed cellRegionGatherer:(id)gatherer
{
  changedCopy = changed;
  gathererCopy = gatherer;
  v10 = objc_msgSend_regionFillingRowsFromRegion_(TSTCellRegion, v8, changedCopy, v9);
  v14 = objc_msgSend_tableInfo(self, v11, v12, v13);
  v17 = v14;
  if (v14)
  {
    objc_msgSend_mergeRangesIntersectingCellRegion_(v14, v15, v10, v16);
  }

  else
  {
    __p = 0;
    v27 = 0;
    v28 = 0;
  }

  if (__p == v27)
  {
    v23 = changedCopy;
  }

  else
  {
    v20 = objc_msgSend_regionFromMergeList_(TSTCellRegion, v18, &__p, v19);
    v23 = objc_msgSend_regionByAddingRegion_(changedCopy, v21, v20, v22);
  }

  objc_msgSend_addRegion_(gathererCopy, v24, v23, v25);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

- (void)p_validationFittingForChangeDescriptorType:(int)type regionFromChangeDescriptor:(id)descriptor cellRegionGatherer:(id)gatherer
{
  descriptorCopy = descriptor;
  gathererCopy = gatherer;
  if (type > 26)
  {
    if (type <= 0x31)
    {
      if (((1 << type) & 0xC6000000000) != 0)
      {
        goto LABEL_14;
      }

      if (type == 33)
      {
LABEL_19:
        v27 = objc_msgSend_intersectingRowsIndexSet(descriptorCopy, v8, v9, v10);
        v30 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v28, v27, v29);

        v19 = objc_msgSend_tableInfo(self, v31, v32, v33);
        v26 = objc_msgSend_expandCellRegionToCoverMergedCells_(v19, v34, v30, v35);
        descriptorCopy = v30;
        goto LABEL_20;
      }

      if (type == 49)
      {
        goto LABEL_11;
      }
    }

    if (type == 27)
    {
      v36 = objc_msgSend_tableInfo(self, v8, v9, v10);
      v19 = objc_msgSend_mergesIntersectingCellRegion_(v36, v37, descriptorCopy, v38);

      if (!objc_msgSend_count(v19, v39, v40, v41))
      {
        v26 = 0;
        goto LABEL_20;
      }

      v25 = objc_msgSend_regionForList(v19, v42, v43, v44);
      goto LABEL_15;
    }

    if (type == 30)
    {

      goto LABEL_24;
    }
  }

  else
  {
    if (type > 12)
    {
      if ((type - 13) >= 2)
      {
        if (type != 16)
        {
          if (type != 22)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        goto LABEL_14;
      }

LABEL_11:
      v12 = objc_msgSend_dupContentCache(self, v8, v9, v10);
      objc_msgSend_removeAllObjects(v12, v13, v14, v15);

      v19 = objc_msgSend_cellIDToWPColumnCache(self, v16, v17, v18);
      objc_msgSend_removeAllObjects(v19, v20, v21, v22);
LABEL_21:

      goto LABEL_22;
    }

    if (!type || type == 6)
    {
LABEL_14:
      v19 = objc_msgSend_tableInfo(self, v8, v9, v10);
      v25 = objc_msgSend_expandCellRegionToCoverMergedCells_(v19, v23, descriptorCopy, v24);
LABEL_15:
      v26 = v25;
LABEL_20:

      descriptorCopy = v26;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (descriptorCopy)
  {
    objc_msgSend_addRegion_(gathererCopy, v8, descriptorCopy, v10);
    goto LABEL_25;
  }

LABEL_24:
  descriptorCopy = 0;
LABEL_25:
}

- (BOOL)p_containsGradientFillThatFillsContainerInCell:(id)cell cellContents:(id)contents
{
  cellCopy = cell;
  contentsCopy = contents;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_range(v8, v9, v10, v11);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2213AFEDC;
    v22[3] = &unk_278463FD0;
    v22[5] = v12;
    v22[6] = &v23;
    v22[4] = self;
    objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v12, v14, 0, v13, v14, v22);
  }

  else
  {
    v15 = objc_msgSend_textStyleHandle(cellCopy, v9, v10, v11);
    v19 = objc_msgSend_containsGradientThatFillsContainer(v15, v16, v17, v18);
    *(v24 + 24) = v19;
  }

  v20 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v20;
}

- (BOOL)p_containsGradientThatFillsContainerInStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTLayoutEngine p_containsGradientThatFillsContainerInStyle:]", v5);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v9);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 6108, 0, "style must be character or paragraph.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    }
  }

  if (objc_msgSend_intValueForProperty_(styleCopy, v4, 49, v5))
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForProperty_(styleCopy, v15, 48, v16);
    v18 = TSUCheckedDynamicCast();
    v22 = objc_msgSend_fillType(v18, v19, v20, v21) == 1;
  }

  else
  {
LABEL_7:
    v22 = 0;
  }

  return v22;
}

- (id)validateFittingRegionForChangeDescriptors:(id)descriptors
{
  v49 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v8 = objc_msgSend_gatherer(TSTCellRegionGatherer, v5, v6, v7);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = descriptorsCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v44, v48, 16);
  if (v14)
  {
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = objc_msgSend_changeDescriptor(v17, v11, v12, v13, v44);
        v19 = v18;
        if (v18 <= 16)
        {
          if (v18 <= 3)
          {
            if (v18 == 2)
            {
              continue;
            }

            if (v18 != 3)
            {
LABEL_29:
              v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
              objc_msgSend_p_validationFittingForChangeDescriptorType_regionFromChangeDescriptor_cellRegionGatherer_(self, v38, v19, v20, v8);
              goto LABEL_30;
            }

            v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
            objc_msgSend_p_validationFittingCellRegionForColumnsDeleted_cellRegionGatherer_(self, v24, v20, v8);
          }

          else
          {
            switch(v18)
            {
              case 4:
                v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
                objc_msgSend_p_validationFittingCellRegionForColumnsInserted_cellRegionGatherer_(self, v35, v20, v8);
                break;
              case 5:
                v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
                v28 = objc_msgSend_cellID(v17, v25, v26, v27);
                objc_msgSend_p_validationFittingCellRegionForColumnsMovedFrom_toColumnIndex_cellRegionGatherer_(self, v29, v20, WORD2(v28), v8);
                break;
              case 7:
                v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
                objc_msgSend_p_validationFittingCellRegionForColumnsVisibility_cellRegionGatherer_(self, v22, v20, v8);
                break;
              default:
                goto LABEL_29;
            }
          }
        }

        else if (v18 > 24)
        {
          switch(v18)
          {
            case 0x19:
              v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
              objc_msgSend_p_validationFittingCellRegionForRowsInserted_cellRegionGatherer_(self, v37, v20, v8);
              break;
            case 0x1A:
              v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
              v33 = objc_msgSend_cellID(v17, v30, v31, v32);
              objc_msgSend_p_validationFittingCellRegionForRowsMovedFrom_toRowIndex_cellRegionGatherer_(self, v34, v20, v33, v8);
              break;
            case 0x20:
              v20 = objc_msgSend_strokeRegion(v17, v11, v12, v13);
              objc_msgSend_p_validationFittingCellRegionForStrokesChanged_cellRegionGatherer_(self, v23, v20, v8);
              break;
            default:
              goto LABEL_29;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x11:
              v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
              objc_msgSend_p_validationFittingCellRegionForRangeMergeUnmerge_cellRegionGatherer_(self, v36, v20, v8);
              break;
            case 0x17:
              continue;
            case 0x18:
              v20 = objc_msgSend_cellRegion(v17, v11, v12, v13);
              objc_msgSend_p_validationFittingCellRegionForRowsDeleted_cellRegionGatherer_(self, v21, v20, v8);
              break;
            default:
              goto LABEL_29;
          }
        }

LABEL_30:
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v44, v48, 16);
    }

    while (v14);
  }

  v42 = objc_msgSend_gatheredCellRegion(v8, v39, v40, v41);

  return v42;
}

- (id)validateFittingInfoForValidationRegion:(id)region rowsNeedingFittingInfo:(id)info
{
  regionCopy = region;
  infoCopy = info;
  v40.origin = objc_msgSend_cellRange(self, v8, v9, v10);
  v40.size = v11;
  if (infoCopy)
  {
    v14 = objc_msgSend_hiddenRowsColumnsCache(self, v11, v12, v13);
    v18 = objc_msgSend_visibleRowIndices(v14, v15, v16, v17);
    objc_msgSend_tsu_intersectionWithIndexSet_(infoCopy, v19, v18, v20);

    if (objc_msgSend_count(infoCopy, v21, v22, v23))
    {
      v24 = TSUCellRect::columns(&v40);
      v26 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v25, infoCopy, v24, v25);
      v28 = objc_msgSend_region_addingRegion_(TSTCellRegion, v27, regionCopy, v26);

      regionCopy = v28;
    }
  }

  v29 = objc_msgSend_p_validationBundleForRegionToValidate_(self, v11, regionCopy, v13);
  v31 = objc_msgSend_regionByIntersectingRange_(regionCopy, v30, *&v40.origin, *&v40.size);

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2213B07CC;
  v38[3] = &unk_278462B70;
  v38[4] = self;
  v32 = v29;
  v39 = v32;
  objc_msgSend_enumerateCellRangesUsingBlock_(v31, v33, v38, v34);
  v35 = v39;
  v36 = v32;

  return v36;
}

- (id)fittingWidthsMapForColumns:(id)columns includeStrokes:(BOOL)strokes
{
  strokesCopy = strokes;
  v78 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  v61 = objc_msgSend_tableInfo(self, v6, v7, v8);
  v72.origin = objc_msgSend_cellRange(self, v9, v10, v11);
  v72.size = v12;
  v13 = TSUCellRect::rows(&v72);
  v15 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v14, columnsCopy, v13, v14);
  v72.origin = 0;
  v72.size = &v72;
  v73 = 0x3032000000;
  v74 = sub_2213A53FC;
  v75 = sub_2213A540C;
  v76 = 0;
  v62 = v15;
  if ((objc_msgSend_isEmpty(v15, v16, v17, v18) & 1) == 0)
  {
    v22 = MEMORY[0x277D86228];
    v23 = [TSTConcurrentCellIterator alloc];
    v27 = objc_msgSend_tableInfo(self, v24, v25, v26);
    v29 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v23, v28, v27, v62, 64, 66058240);

    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_2213B0C98;
    v69[3] = &unk_278464018;
    v70 = v61;
    selfCopy = self;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2213B1644;
    v68[3] = &unk_278464040;
    v68[4] = self;
    v68[5] = &v72;
    objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v29, v30, &unk_2834A6F10, v69, v68);
  }

  if (strokesCopy)
  {
    v31 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v19, v20, v21);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v32 = *(*&v72.size + 40);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v64, v77, 16);
    if (v37)
    {
      v38 = *v65;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v65 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = *(*(&v64 + 1) + 8 * i);
          v41 = objc_msgSend_unsignedIntValue(v40, v34, v35, v36);
          v44 = objc_msgSend_objectForKey_(*(*&v72.size + 40), v42, v40, v43);
          objc_msgSend_tsu_CGFloatValue(v44, v45, v46, v47);
          v49 = v48;

          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v50, v41, 0, 2147483646);
          v52 = v51;
          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v53, v41 + 1, 0, 2147483646);
          v58 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v55, v56, v57, ceil(v49 + v52 * 0.5 + v54 * 0.5));
          objc_msgSend_setObject_forKey_(v31, v59, v58, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v64, v77, 16);
      }

      while (v37);
    }
  }

  else
  {
    v31 = *(*&v72.size + 40);
  }

  _Block_object_dispose(&v72, 8);

  return v31;
}

- (id)validateCellForDrawing:(TSUCellCoord)drawing cell:(id)cell contents:(id)contents wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding layoutCacheFlags:(int)flags pageNumber:(unint64_t)self0 pageCount:(unint64_t)self1
{
  wrapCopy = wrap;
  flagsCopy3 = flags;
  cellCopy = cell;
  contentsCopy = contents;
  paddingCopy = padding;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_length(contentsCopy, v18, v19, v20) == 0;
  }

  else
  {
    v21 = contentsCopy == 0;
  }

  v22 = !v21;
  v23 = objc_msgSend_tableInfo(self, v18, v19, v20);
  v26 = v23;
  if (!v22)
  {
    v38 = 0;
    goto LABEL_63;
  }

  alignmentCopy = alignment;
  v157 = wrapCopy;
  v27 = objc_msgSend_mergeRangeAtCellID_(v23, v24, *&drawing, v25);
  v154 = v27;
  v155 = v28;
  countCopy = count;
  v158 = 0;
  v30 = 0x100000001;
  if (v27 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  drawingCopy3 = drawing;
  if ((v27 & 0xFFFF00000000) == 0x7FFF00000000)
  {
LABEL_17:
    v34 = objc_msgSend_layoutCellIDForModelCellID_(self, v28, drawingCopy3, v29, count);
    goto LABEL_18;
  }

  v158 = 0;
  v32 = HIDWORD(v28);
  if (!HIDWORD(v28))
  {
LABEL_16:
    drawingCopy3 = drawing;
    goto LABEL_17;
  }

  drawingCopy3 = drawing;
  if (!v28)
  {
    goto LABEL_17;
  }

  v33 = v27;
  if (HIDWORD(v28) + v27 > v27)
  {
    do
    {
      v162 = 0;
      objc_msgSend_heightOfRowAtIndex_isDefault_(v26, v28, v33, &v162, countCopy);
      v33 = (v33 + 1);
      LODWORD(v32) = v32 - 1;
    }

    while (v32);
  }

  v158 = 1;
  v30 = v155;
  v34 = objc_msgSend_layoutCellIDForModelCellID_(self, v28, v154, v29, countCopy);
LABEL_18:
  v39 = v34;
  if (v158)
  {
    v40 = objc_msgSend_cellRange(self, v35, v36, v37);
    v39 = sub_221119E0C(v40, v41, v39, v30);
    v30 = v35;
  }

  objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v35, v39, v30, 0);
  v43 = v42;
  v44 = MEMORY[0x277CBF3A8];
  objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, v45, v39, v30, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  v50 = v49;
  if (v157)
  {
    v51 = 8.0;
  }

  else
  {
    v51 = v43;
  }

  if (v157)
  {
    v52 = v43;
  }

  else
  {
    v52 = 4294967300.0;
  }

  if (alignment)
  {
    v53 = v49;
  }

  else
  {
    v53 = 0.0;
    v50 = 50000.0;
    if (objc_msgSend_p_containsGradientFillThatFillsContainerInCell_cellContents_(self, v46, cellCopy, contentsCopy))
    {
      objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, v46, v39, v30, 0, *v44, v44[1]);
      v53 = v54;
    }
  }

  if ((flags & 4) != 0)
  {
    v56 = objc_msgSend_cellIDToWPColumnCache(self, v46, v47, v48);
    v57 = drawing.row << 15;
    v60 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v58, v57 | drawing.column, v59);
    v38 = objc_msgSend_objectForKey_(v56, v61, v60, v62);

    if (v38)
    {
      if (sub_2213A5824(v38) == v43)
      {
        flagsCopy3 = flags;
        v55 = 0;
        goto LABEL_37;
      }

      v63 = objc_msgSend_cellIDToWPColumnCache(self, v46, v47, v48);
      v66 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v64, v57 | drawing.column, v65);
      objc_msgSend_removeObjectForKey_(v63, v67, v66, v68);
    }

    v55 = 1;
    flagsCopy3 = flags;
  }

  else
  {
    v38 = 0;
    v55 = 1;
  }

  if (!objc_msgSend_dynamicRepResize(self, v46, v47, v48))
  {
    goto LABEL_48;
  }

LABEL_37:
  if (objc_msgSend_numberOfPopulatedCells(v26, v69, v70, v71) > 0x19)
  {
    goto LABEL_63;
  }

  if (v51 < 0.0)
  {
    v51 = 0.0;
  }

  if (v53 < 0.0)
  {
    v53 = 0.0;
  }

  if (v52 < 0.0)
  {
    v52 = 0.0;
  }

  if (v50 < 0.0)
  {
    v50 = 0.0;
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_48:
    if (!v55)
    {
      goto LABEL_63;
    }
  }

  v72 = objc_alloc_init(TSTCellStateForLayout);
  objc_msgSend_setModelCellID_(v72, v73, *&drawing, v74);
  objc_msgSend_setCell_(v72, v75, cellCopy, v76);
  objc_msgSend_setCellPropsRowHeight_(v72, v77, 0, v78);
  objc_msgSend_setNeedWPColumn_(v72, v79, 1, v80);
  objc_msgSend_setCellWraps_(v72, v81, v157, v82);
  objc_msgSend_edgeInsetsFromPadding_(self, v83, paddingCopy, v84);
  objc_msgSend_setPaddingInsets_(v72, v85, v86, v87);
  objc_msgSend_setVerticalAlignment_(v72, v88, alignmentCopy, v89);
  objc_msgSend_setMinSize_(v72, v90, v91, v92, v51, v53);
  objc_msgSend_setMaxSize_(v72, v93, v94, v95, v52, v50);
  objc_msgSend_setForDrawing_(v72, v96, 1, v97);
  v101 = objc_msgSend_isInDynamicLayoutMode(self, v98, v99, v100);
  objc_msgSend_setInDynamicLayout_(v72, v102, v101, v103);
  objc_msgSend_setCellContents_(v72, v104, contentsCopy, v105);
  objc_opt_class();
  v106 = TSUDynamicCast();
  v110 = v106;
  if (!v106)
  {
    goto LABEL_53;
  }

  if (!objc_msgSend_hasAttachmentsThatChangeWithPageNumberOrPageCount(v106, v107, v108, v109))
  {
    flagsCopy3 = flagsCopy3;
LABEL_53:
    objc_msgSend_setLayoutCacheFlags_(v72, v107, flagsCopy3, v109);
    goto LABEL_54;
  }

  LOBYTE(flagsCopy3) = 0;
  objc_msgSend_setLayoutCacheFlags_(v72, v107, 0, v109);
LABEL_54:
  objc_msgSend_setPageNumber_(v72, v111, number, v112);
  objc_msgSend_setPageCount_(v72, v113, v153, v114);
  if (v158)
  {
    v117 = objc_msgSend_layoutCellIDForModelCellID_(self, v115, v154, v116);
    objc_msgSend_setLayoutMergeRange_(v72, v118, v117, v155);
  }

  else
  {
    objc_msgSend_setLayoutMergeRange_(v72, v115, 0x7FFF7FFFFFFFLL, 0);
  }

  objc_msgSend_measureWithLayoutState_(self, v119, v72, v120);
  v124 = objc_msgSend_keyVal(v72, v121, v122, v123);

  if ((flagsCopy3 & 2) != 0 && v124)
  {
    v128 = objc_msgSend_dupContentCache(self, v125, v126, v127);
    v132 = objc_msgSend_wpColumn(v72, v129, v130, v131);
    v136 = objc_msgSend_keyVal(v72, v133, v134, v135);
    objc_msgSend_setObject_forKey_(v128, v137, v132, v136);
  }

  if (objc_msgSend_layoutCacheFlags(v72, v125, v126, v127))
  {
    v141 = objc_msgSend_cellIDToWPColumnCache(self, v138, v139, v140);
    v145 = objc_msgSend_wpColumn(v72, v142, v143, v144);
    v148 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v146, (drawing.row << 15) | drawing.column, v147);
    objc_msgSend_setObject_forKey_(v141, v149, v145, v148);
  }

  v150 = objc_msgSend_wpColumn(v72, v138, v139, v140);

  v38 = v150;
LABEL_63:

  return v38;
}

- (void)queueCellForValidation:(TSUCellRect)validation cell:(id)cell textStyleHandle:(id)handle modelMergeRange:(TSUCellRect)range wrap:(BOOL)wrap verticalAlignment:(int)alignment padding:(id)padding prop:(BOOL)self0 layoutCacheFlags:(int)self1 validationBundle:(id)self2 layoutTask:(id)self3
{
  size = range.size;
  origin = range.origin;
  v16 = validation.size;
  v17 = validation.origin;
  cellCopy = cell;
  handleCopy = handle;
  paddingCopy = padding;
  bundleCopy = bundle;
  taskCopy = task;
  v19 = objc_alloc_init(TSTCellStateForLayout);
  v22 = objc_msgSend_layoutCellIDForModelCellID_(self, v20, v17, v21);
  v25 = v22;
  v26 = *&origin & 0xFFFF00000000;
  if (HIDWORD(size) != 0 && size != 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = origin;
  }

  v28 = v26 == 0x7FFF00000000;
  v29 = v26 != 0x7FFF00000000 && HIDWORD(size) != 0 && size != 0;
  if (v28)
  {
    v30 = origin;
  }

  else
  {
    v30 = v27;
  }

  v31 = origin.row != 0x7FFFFFFF && v29;
  if (origin.row == 0x7FFFFFFF)
  {
    objc_msgSend_setModelCellID_(v19, v23, v17, v24, origin);
  }

  else
  {
    objc_msgSend_setModelCellID_(v19, v23, v17, v24, v30);
  }

  objc_msgSend_setCell_(v19, v32, cellCopy, v33);
  v37 = objc_msgSend_cellContents(v19, v34, v35, v36);
  v41 = objc_msgSend_length(v37, v38, v39, v40);

  v157 = objc_msgSend_tableInfo(self, v42, v43, v44);
  if (v41)
  {
    objc_opt_class();
    v49 = objc_msgSend_cellContents(v19, v46, v47, v48);
    v50 = TSUDynamicCast();
    flagsCopy = flags;

    if (v50)
    {
      v54 = objc_msgSend_hasAttachmentsThatChangeWithPageNumberOrPageCount(v50, v51, v52, v53);
      flagsCopy2 = flags;
      if (v54)
      {
        flagsCopy2 = 0;
      }

      flagsCopy = flagsCopy2;
    }
  }

  else
  {
    flagsCopy = 10;
  }

  objc_msgSend_contentWidthForCellRange_validationBundle_(self, v45, v25, v16, bundleCopy);
  v57 = v56;
  v62 = 1.79769313e308;
  if (!(v31 | (objc_msgSend_valueType(cellCopy, v58, v59, v60) != 9)) && !wrap)
  {
    v161[0] = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v157, v61, cellCopy, v17, 0, v161, 0, 0);
    v66 = v161[0];
    if (v161[0] == 4)
    {
      v67 = objc_msgSend_tableStyle(v157, v63, v64, v65);
      v70 = objc_msgSend_intValueForProperty_(v67, v68, 798, v69);

      v66 = v70 == 1;
      v161[0] = v66;
    }

    v71 = v16 & 0xFFFFFFFF00000000;
    if (v66 == 2)
    {
      v75 = objc_msgSend_numberOfColumns(self, v63, v64, v65);
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v76, v17, v71 | v75, 0);
    }

    else if (v66 == 1)
    {
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v63, v17, (v16 + WORD2(v17)) | v71, 0);
    }

    else if (v66)
    {
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v63, v17, v16, 0);
    }

    else
    {
      v72 = (objc_msgSend_numberOfColumns(self, v63, v64, v65) - WORD2(v17)) | v71;
      objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v73, v17, v72, 0);
    }

    v62 = v74;
  }

  v80 = 0.0;
  if (objc_msgSend_p_containsGradientFillThatFillsContainerInCell_cellContents_(self, v61, cellCopy, 0))
  {
    objc_msgSend_contentHeightForCellRange_skipDynamicSwap_maximumPartitionSize_(self, v77, v25, v16, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    v80 = v81;
  }

  if (wrap)
  {
    v82 = 8.0;
  }

  else
  {
    v82 = v57;
  }

  if (wrap)
  {
    v83 = v57;
  }

  else
  {
    v83 = 4294967300.0;
  }

  if (objc_msgSend_dynamicRepResize(self, v77, v78, v79) && objc_msgSend_numberOfPopulatedCells(v157, v84, v85, v86) <= 0x19)
  {
    if (v82 < 0.0)
    {
      v82 = 0.0;
    }

    if (v80 < 0.0)
    {
      v80 = 0.0;
    }

    if (v83 < 0.0)
    {
      v83 = 0.0;
    }
  }

  v87 = objc_msgSend_cellIDToWPColumnCache(self, v84, v85, v86);
  v88 = v17 << 15;
  v89 = WORD2(v17);
  v92 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v90, v88 | WORD2(v17), v91);
  v95 = objc_msgSend_objectForKey_(v87, v93, v92, v94);

  if (v95)
  {
    if (sub_2213A5824(v95) == v57)
    {
      goto LABEL_56;
    }

    v101 = objc_msgSend_cellIDToWPColumnCache(self, v98, v99, v100);
    v104 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v102, v88 | v89, v103);
    objc_msgSend_removeObjectForKey_(v101, v105, v104, v106);
  }

  objc_msgSend_setTextStyleHandle_(v19, v96, handleCopy, v97);
  objc_msgSend_setCellPropsRowHeight_(v19, v107, prop, v108);
  v112 = objc_msgSend_styleProvidingSource(self, v109, v110, v111);
  objc_msgSend_setNeedWPColumn_(v19, v113, v112 != 0, v114);

  objc_msgSend_setCellWraps_(v19, v115, wrap, v116);
  objc_msgSend_edgeInsetsFromPadding_(self, v117, paddingCopy, v118);
  objc_msgSend_setPaddingInsets_(v19, v119, v120, v121);
  objc_msgSend_setVerticalAlignment_(v19, v122, alignment, v123);
  objc_msgSend_setMinSize_(v19, v124, v125, v126, v82, v80);
  objc_msgSend_setMaxSize_(v19, v127, v128, v129, v83, 50000.0);
  objc_msgSend_setMaxWidthForChildren_(v19, v130, v131, v132, v62);
  objc_msgSend_setLayoutMergeRange_(v19, v133, v153, size);
  objc_msgSend_setLayoutCacheFlags_(v19, v134, flagsCopy, v135);
  objc_msgSend_addCellState_(taskCopy, v136, v19, v137);
  v141 = objc_msgSend_numberOfCellStates(taskCopy, v138, v139, v140);
  if (v141 >= objc_msgSend_numCellsPerTask(self, v142, v143, v144))
  {
    v148 = objc_msgSend_copy(taskCopy, v145, v146, v147);
    objc_msgSend_clear(taskCopy, v149, v150, v151);
    objc_msgSend_processLayoutTask_validationBundle_(self, v152, v148, bundleCopy);
  }

LABEL_56:
}

- (void)measureWithLayoutState:(id)state
{
  stateCopy = state;
  v8 = objc_msgSend_cell(stateCopy, v5, v6, v7);
  v283 = v8;
  v12 = objc_msgSend_modelCellID(stateCopy, v9, v10, v11);
  objc_msgSend_minSize(stateCopy, v13, v14, v15);
  v281 = v16;
  v18 = v17;
  objc_msgSend_maxSize(stateCopy, v19, v20, v21);
  v23 = v22;
  v25 = v24;
  v29 = objc_msgSend_cellWraps(stateCopy, v26, v27, v28);
  v33 = objc_msgSend_needWPColumn(stateCopy, v30, v31, v32);
  v282 = objc_msgSend_tableInfo(self, v34, v35, v36);
  objc_opt_class();
  v40 = objc_msgSend_cellContents(stateCopy, v37, v38, v39);
  v285 = TSUDynamicCast();

  if ((objc_msgSend_hasContent(stateCopy, v41, v42, v43) & 1) == 0)
  {

    v50 = objc_msgSend_layoutCacheFlags(stateCopy, v47, v48, v49);
    v285 = @"Z";
    objc_msgSend_setLayoutCacheFlags_(stateCopy, v51, v50 & 0xFFFFFFFC, v52);
  }

  *v288 = 0;
  v53 = objc_msgSend_textStyleHandle(stateCopy, v44, v45, v46);
  v57 = objc_msgSend_textStyle(v53, v54, v55, v56);

  v284 = objc_msgSend_p_resolvedTextStyleForCell_atCellID_textStyle_outNaturalAlignment_outCellDirection_(self, v58, v8, v12, v57, &v288[1], v288);

  if (objc_msgSend_valueType(v8, v59, v60, v61) == 9)
  {
    dynamicSuppressingConditionalStylesCellID = self->_dynamicSuppressingConditionalStylesCellID;
    if (dynamicSuppressingConditionalStylesCellID.row != v12 || ((*&dynamicSuppressingConditionalStylesCellID ^ v12) & 0xFFFF00000000) != 0)
    {
      v66 = objc_msgSend_richTextStorageForLayout(v8, v62, v63, v64);
    }

    else
    {
      v66 = objc_msgSend_richTextValue(v8, v62, v63, v64);
    }

    v69 = v66;
    if (v66 && !objc_msgSend_length(v66, v62, v67, v68))
    {

      v69 = 0;
      v285 = @"X";
    }
  }

  else
  {
    v69 = 0;
  }

  if (v29)
  {
    v70 = 3;
  }

  else
  {
    v70 = 15;
  }

  if (v18 == v25 && v18 < 50000.0)
  {
    v70 &= ~2u;
  }

  v280 = v70;
  if (v69)
  {
    v72 = 1;
  }

  else
  {
    v72 = v33;
  }

  if ((v72 & 1) == 0)
  {
    v73 = v284;
    v80 = objc_msgSend_styleProvidingSource(self, v74, v75, v76);
    v81 = v73;
    if (v80)
    {
      v82 = objc_msgSend_styleProvidingSource(self, v77, v78, v79);
      v83 = objc_opt_respondsToSelector();

      v81 = v73;
      if (v83)
      {
        v86 = objc_msgSend_styleProvidingSource(self, v77, v84, v85);
        v90 = objc_msgSend_styleProviderForCells(v86, v87, v88, v89);

        v81 = v73;
        if (v90)
        {
          v81 = objc_msgSend_cellTextStyleForStyle_(v90, v91, v73, v92);
        }
      }
    }

    v93 = objc_msgSend_fontInfoForTextStyle_withString_(self->_fontInfoCache, v77, v81, v285);
    if (v93)
    {

      if (!v285)
      {
        v97 = MEMORY[0x277D81150];
        v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "[TSTLayoutEngine measureWithLayoutState:]", v96);
        v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v100);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v102, v98, v101, 6910, 0, "invalid nil value for '%{public}s'", "stringContents");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105);
      }

      objc_msgSend_paddingInsets(stateCopy, v94, v95, v96);
      v112 = 4294967300.0;
      if (v29)
      {
        v112 = v23;
      }

      v287[0] = v108;
      v287[1] = v109;
      v287[2] = v110;
      v287[3] = v111;
      objc_msgSend_columnLayoutWidthForBodyWidth_insets_(MEMORY[0x277D80F70], v106, v287, v107, v112);
      v114 = v113;
      v286 = 0.0;
      shouldFastPathMeasureFitWidth = objc_msgSend_shouldFastPathMeasureFitWidth(stateCopy, v115, v116, v117);
      v120 = shouldFastPathMeasureFitWidth;
      if (shouldFastPathMeasureFitWidth)
      {
        objc_msgSend_heightForString_width_outFitWidth_(v93, v119, v285, &v286, v114);
      }

      else
      {
        objc_msgSend_heightForString_width_outFitWidth_(v93, v119, v285, 0, v114);
      }

      if (v120)
      {
        objc_msgSend_paddingInsets(stateCopy, v121, v122, v123);
        v125 = v124;
        objc_msgSend_paddingInsets(stateCopy, v126, v127, v128);
        v286 = v125 + v129 + v286;
      }

      objc_msgSend_setSizeOfText_(stateCopy, v121, v122, v123);
      v284 = v81;
      goto LABEL_54;
    }
  }

  v130 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_naturalAlignment_cellDirection_(self, v62, v283, v12, v284, v288[1], v288[0]);
  if ((objc_msgSend_layoutCacheFlags(stateCopy, v131, v132, v133) & 0x10) != 0)
  {
    v137 = objc_msgSend_blackColor(MEMORY[0x277D81180], v134, v135, v136);
    objc_msgSend_setTextColorOverride_(v130, v138, v137, v139);
  }

  if ((objc_msgSend_layoutCacheFlags(stateCopy, v134, v135, v136) & 8) == 0 || (objc_msgSend_cell(stateCopy, v140, v141, v142), v143 = objc_claimAutoreleasedReturnValue(), v147 = objc_msgSend_valueType(v143, v144, v145, v146), v143, v147 == 9) || ((v151 = [TSTLayoutContentCachedKey alloc], !v29) ? (v152 = v281) : (v152 = v23), objc_msgSend_paragraphStyle(v130, v148, v149, v150), v279 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cell(stateCopy, v153, v154, v155), v277 = v151, v278 = objc_claimAutoreleasedReturnValue(), v276 = objc_msgSend_valueType(v278, v156, v157, v158), objc_msgSend_paddingInsets(stateCopy, v159, v160, v161), v163 = v162, v165 = v164, v167 = v166, v169 = v168, v173 = objc_msgSend_verticalAlignment(stateCopy, v170, v171, v172), objc_msgSend_tableStyle(v282, v174, v175, v176), v177 = objc_claimAutoreleasedReturnValue(), v180 = objc_msgSend_intValueForProperty_(v177, v178, 798, v179), v184 = objc_msgSend_naturalAlignment(v130, v181, v182, v183), objc_msgSend_styleProvidingSource(self, v185, v186, v187), v188 = objc_claimAutoreleasedReturnValue(), v190 = objc_msgSend_initWithString_width_height_paragraphStyle_cellWraps_valueType_paddingInsets_verticalAlignment_writingDirection_naturalAlignment_styleProvidingSource_(v277, v189, v285, v279, v29, v276, v173, v180, v152, v18, v163, v165, v167, v169, v184, v188), v188, v177, v278, v279, objc_msgSend_setKeyVal_(stateCopy, v191, v190, v192), objc_msgSend_dupContentCache(self, v193, v194, v195), v196 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v196, v197, v190, v198), v93 = objc_claimAutoreleasedReturnValue(), v196, v190, !v93))
  {
    objc_opt_class();
    v204 = objc_msgSend_context(v282, v201, v202, v203);
    v208 = objc_msgSend_documentObject(v204, v205, v206, v207);
    v209 = TSUCheckedDynamicCast();

    v210 = [TSTTextEngineDelegate alloc];
    objc_msgSend_paddingInsets(stateCopy, v211, v212, v213);
    v215 = v214;
    v217 = v216;
    v219 = v218;
    v221 = v220;
    v225 = objc_msgSend_verticalAlignment(stateCopy, v222, v223, v224);
    v229 = objc_msgSend_typesettingLocale(v209, v226, v227, v228);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v209, v230, v231, v232);
    v237 = objc_msgSend_styleProvidingSource(self, v234, v235, v236);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v210, v238, v225, v229, shouldHyphenate, v237, v215, v217, v219, v221);

    objc_msgSend_maxWidthForChildren(stateCopy, v240, v241, v242);
    objc_msgSend_setMaxWidthForChildren_(shouldHyphenate_styleProvidingSource, v243, v244, v245);
    objc_msgSend_setDelegate_(v130, v246, shouldHyphenate_styleProvidingSource, v247);
    v251 = *MEMORY[0x277CBF348];
    v252 = *(MEMORY[0x277CBF348] + 8);
    if (v69)
    {
      v253 = objc_msgSend_pageNumber(stateCopy, v248, v249, v250);
      v257 = objc_msgSend_pageCount(stateCopy, v254, v255, v256);
      objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(v130, v258, v69, v253, v257, v280, v281, v18, v23, v25, v251, v252);
    }

    else
    {
      objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v130, v248, v285, 0, 5, v280, v281, v18, v23, v25, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    }
    v93 = ;
    objc_msgSend_setDelegate_(v130, v259, 0, v260);
  }

  objc_msgSend_setWpColumn_(stateCopy, v199, v93, v200);
  v261 = sub_2213A5824(v93);
  v263 = v262;
  objc_msgSend_paddingInsets(stateCopy, v264, v265, v266);
  v268 = v267;
  objc_msgSend_paddingInsets(stateCopy, v269, v270, v271);
  objc_msgSend_setSizeOfText_(stateCopy, v273, v274, v275, v261 + v268 + v272, v263);

LABEL_54:
}

- (void)processLayoutTask:(id)task validationBundle:(id)bundle
{
  taskCopy = task;
  bundleCopy = bundle;
  if (objc_msgSend_numberOfCellStates(taskCopy, v8, v9, v10))
  {
    objc_msgSend_loadAllLazyReferences(self->_tableInfo, v11, v12, v13);
    dispatch_group_enter(self->_layoutInFlight);
    layoutMeasureQueue = self->_layoutMeasureQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2213B2EEC;
    v17[3] = &unk_278462620;
    v18 = taskCopy;
    selfCopy = self;
    v20 = bundleCopy;
    objc_msgSend_performAsync_(layoutMeasureQueue, v15, v17, v16);
  }
}

- (void)waitForLayoutToComplete:(id)complete
{
  completeCopy = complete;
  dispatch_group_wait(self->_layoutInFlight, 0xFFFFFFFFFFFFFFFFLL);
  widthHeightCache = self->_widthHeightCache;
  v8 = objc_msgSend_widthHeightCollections(completeCopy, v5, v6, v7);
  objc_msgSend_setFittingHeightsFromCollectionArray_(widthHeightCache, v9, v8, v10);
}

- (void)setMaxConcurrentTasks:(unsigned int)tasks
{
  self->_maxConcurrentTasks = tasks;
  v4 = objc_alloc(MEMORY[0x277D81378]);
  v7 = objc_msgSend_initWithLimit_(v4, v5, self->_maxConcurrentTasks, v6);
  layoutMeasureQueue = self->_layoutMeasureQueue;
  self->_layoutMeasureQueue = v7;

  v9 = objc_alloc(MEMORY[0x277D81378]);
  v12 = objc_msgSend_initWithLimit_(v9, v10, self->_maxConcurrentTasks, v11);
  layoutValidateQueue = self->_layoutValidateQueue;
  self->_layoutValidateQueue = v12;
}

- (double)unwrappedFittingWidthsForColumnInCellRegionWorker:(id)worker
{
  workerCopy = worker;
  v8 = objc_msgSend_boundingTopLeftCellID(workerCopy, v5, v6, v7);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v12 = objc_msgSend_tableInfo(self, v9, v10, v11);
  v16 = objc_msgSend_boundingCellRange(workerCopy, v13, v14, v15);
  v18 = v17;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2213B3280;
  v28[3] = &unk_278464090;
  v19 = v12;
  v29 = v19;
  selfCopy = self;
  v31 = &v32;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v20, v16, v18, 2, 0x400000, v28);
  v22 = v33[3];
  if (v22 > 8.0)
  {
    v23 = WORD2(v8);
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v21, v23, 0, 2147483646);
    v33[3] = v24 * 0.5 + v33[3];
    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(self, v25, (v23 + 1), 0, 2147483646);
    v22 = ceil(v26 * 0.5 + v33[3]);
    v33[3] = v22;
  }

  _Block_object_dispose(&v32, 8);
  return v22;
}

- (id)unwrappedFittingWidthsForColumnsInCellRegion:(id)region
{
  regionCopy = region;
  v36 = 0;
  v37 = &v36;
  v38 = 0x4812000000;
  v39 = sub_2213B3A78;
  v40 = sub_2213B3A9C;
  v41 = &unk_22188E88F;
  v43 = 0;
  v44 = 0;
  __p = 0;
  v8 = objc_msgSend_boundingBottomRightCellID(regionCopy, v5, v6, v7);
  v35 = 0xBFF0000000000000;
  sub_2213A1E8C(&__p, WORD2(v8) + 1, &v35);
  v12 = (objc_msgSend_boundingBottomRightCellID(regionCopy, v9, v10, v11) >> 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213B3AB4;
  block[3] = &unk_2784640B8;
  v13 = regionCopy;
  v32 = v13;
  selfCopy = self;
  v34 = &v36;
  dispatch_apply(v12 + 1, 0, block);
  v20 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15, v16);
  v21 = v37;
  v22 = v37[6];
  if (v37[7] != v22)
  {
    v23 = 0;
    do
    {
      if (*(v22 + 8 * v23) > 0.0)
      {
        v24 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v17, v18, v19);
        v27 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v25, v23, v26);
        objc_msgSend_setObject_forKey_(v20, v28, v24, v27);

        v21 = v37;
      }

      ++v23;
      v22 = v21[6];
    }

    while (v23 < (v21[7] - v22) >> 3);
  }

  v29 = objc_msgSend_copy(v20, v17, v18, v19);

  _Block_object_dispose(&v36, 8);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  return v29;
}

- (id)p_validationBundleForRegionToValidate:(id)validate
{
  validateCopy = validate;
  v5 = [TSTLayoutValidationBundle alloc];
  v8 = objc_msgSend_initWithTableInfo_(v5, v6, self->_tableInfo, v7);
  v12 = objc_msgSend_intersectingColumnsIndexSet(validateCopy, v9, v10, v11);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2213B3C88;
  v19[3] = &unk_27845DE60;
  v19[4] = self;
  v13 = v8;
  v20 = v13;
  objc_msgSend_enumerateIndexesUsingBlock_(v12, v14, v19, v15);
  v16 = v20;
  v17 = v13;

  return v13;
}

- (void)enqueueBootstrapChangeDescriptors
{
  v5 = objc_msgSend_cellRange(self, a2, v2, v3);
  v7 = v6;
  objc_msgSend_addChangeDescriptorWithType_andCellRange_andStrokeRange_(self, v6, 23, v5, v6, v5, v6);

  objc_msgSend_addChangeDescriptorWithType_andCellRange_andStrokeRange_(self, v8, 2, v5, v7, v5, v7);
}

- (id)p_resolvedTextStyleForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style outNaturalAlignment:(int *)alignment outCellDirection:(int *)direction
{
  cellCopy = cell;
  styleCopy = style;
  v119 = objc_msgSend_tableInfo(self, v14, v15, v16);
  if (!styleCopy)
  {
    styleCopy = objc_msgSend_textStyle(cellCopy, v17, v18, v19);
    if (!styleCopy)
    {
      styleCopy = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(v119, v17, *&d, 1, 0);
    }
  }

  if (objc_msgSend_valueType(cellCopy, v17, v18, v19) == 2 || objc_msgSend_valueType(cellCopy, v20, v21, v22) == 10)
  {
    objc_msgSend_underlyingDoubleValue(cellCopy, v20, v21, v22);
    if (v23 < 0.0)
    {
      v24 = objc_msgSend_currentFormatNegativeStyle(cellCopy, v20, v21, v22);
      v28 = objc_msgSend_currentFormatUsesAccountingStyle(cellCopy, v25, v26, v27);
      v29 = (v24 & 0xFD) == 1 ? v28 : 1;
      if ((v29 & 1) == 0)
      {
        v30 = objc_msgSend_copyPropertyMap(styleCopy, v20, v21, v22);
        v34 = objc_msgSend_redColor(MEMORY[0x277D801F8], v31, v32, v33);
        objc_msgSend_setObject_forProperty_(v30, v35, v34, 48);

        v38 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v36, v30, v37);

        styleCopy = v38;
      }
    }
  }

  v42 = objc_msgSend_hasConditionalStyle(cellCopy, v20, v21, v22) ^ 1;
  if (!cellCopy)
  {
    LOBYTE(v42) = 1;
  }

  if ((v42 & 1) == 0 && objc_msgSend_conditionalStyleAppliedRule(cellCopy, v39, v40, v41) != 15 && objc_msgSend_valueType(cellCopy, v39, v40, v41) != 9)
  {
    v43 = objc_msgSend_conditionalStyle(cellCopy, v39, v40, v41);
    v47 = objc_msgSend_conditionalStyleAppliedRule(cellCopy, v44, v45, v46);
    v50 = objc_msgSend_ruleAtIndex_(v43, v48, v47, v49);
    v54 = objc_msgSend_textStyle(v50, v51, v52, v53);

    if (v54)
    {
      v118 = v43;
      v58 = objc_msgSend_copyPropertyMap(styleCopy, v55, v56, v57);
      v62 = objc_msgSend_propertyMap(v54, v59, v60, v61);
      objc_msgSend_addValuesFromPropertyMap_(v58, v63, v62, v64);

      v67 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v65, v58, v66);

      styleCopy = v67;
      v43 = v118;
    }
  }

  IsNumberOrTime = objc_msgSend_valueIsNumberOrTime(cellCopy, v39, v40, v41);
  if (IsNumberOrTime)
  {
    v72 = objc_msgSend_formattedDataParagraphStylePropertyMapForCell_atCellID_(self, v68, cellCopy, *&d);
    if (v72 || (objc_msgSend_valueType(cellCopy, v68, v71, v69) == 5 || objc_msgSend_valueType(cellCopy, v68, v73, v69) == 7) && (objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v68, v73, v69), v72 = objc_claimAutoreleasedReturnValue(), objc_msgSend_setIntValue_forProperty_(v72, v74, 0xFFFFFFFFLL, 44), v72))
    {
      v75 = objc_msgSend_copyPropertyMap(styleCopy, v68, v71, v69);
      objc_msgSend_addValuesFromPropertyMap_(v75, v76, v72, v77);
      v80 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v78, v75, v79);

      styleCopy = v80;
    }
  }

  if (alignment && direction)
  {
    v120 = 4;
    v84 = objc_msgSend_intValueForProperty_(styleCopy, v68, 44, v69);
    if (v84 == -1)
    {
      v85 = objc_msgSend_tableStyle(v119, v81, v82, v83);
      v88 = objc_msgSend_intValueForProperty_(v85, v86, 798, v87);

      v84 = v88 == 1;
    }

    if ((objc_msgSend_isCategoryGroupValueCell_(self, v81, *&d, v83) & 1) != 0 || objc_msgSend_isCategoryGroupValueLabelCell_(self, v89, *&d, v91))
    {
      v92 = objc_msgSend_tableStyle(v119, v89, v90, v91);
      v95 = objc_msgSend_intValueForProperty_(v92, v93, 798, v94);

      v120 = v95 == 1;
      if (objc_msgSend_intValueForProperty_(styleCopy, v96, 86, v97) != v120)
      {
        v101 = objc_msgSend_copyPropertyMap(styleCopy, v98, v99, v100);
        objc_msgSend_setIntValue_forProperty_(v101, v102, v120, 86);
        v105 = objc_msgSend_resolvedTextStyleWithPropertyMap_(self->_fontInfoCache, v103, v101, v104);

        styleCopy = v105;
      }

      goto LABEL_38;
    }

    if (objc_msgSend_isCategoryLabelCell_(self, v89, *&d, v91) || objc_msgSend_isPivotTrailingAligned_(self, v106, *&d, v107))
    {
      v111 = v84 != 1;
    }

    else
    {
      if (objc_msgSend_isAPivotTable(self->_tableInfo, v108, v109, v110) && (objc_msgSend_numberOfHeaderRows(self, v113, v114, v115) > d.row || objc_msgSend_numberOfHeaderColumns(self, v113, v116, v117) > d.column))
      {
        objc_msgSend_modifiedTextPropertiesForCategoryOrPivotCellAtCellID_wraps_padding_alignment_(self->_tableInfo, v113, *&d, 0, 0, &v120);
        goto LABEL_38;
      }

      if (IsNumberOrTime)
      {
        v111 = 1;
      }

      else
      {
        if (objc_msgSend_valueType(cellCopy, v113, v114, v115) == 9)
        {
          goto LABEL_38;
        }

        v111 = v84 == 1;
      }
    }

    v120 = v111;
LABEL_38:
    *alignment = v120;
    *direction = v84;
  }

  return styleCopy;
}

- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style naturalAlignment:(int)alignment cellDirection:(int)direction
{
  v7 = *&direction;
  v8 = *&alignment;
  styleCopy = style;
  v15 = objc_msgSend_tableInfo(self, v12, v13, v14);
  v19 = objc_msgSend_defaultColumnStyle(self, v16, v17, v18);
  objc_opt_class();
  v23 = objc_msgSend_context(v15, v20, v21, v22);
  v27 = objc_msgSend_documentObject(v23, v24, v25, v26);
  v28 = TSUCheckedDynamicCast();

  v29 = objc_alloc(MEMORY[0x277D80F70]);
  v33 = objc_msgSend_stylesheet(v28, v30, v31, v32);
  v35 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(v29, v34, v33, styleCopy, 0, v19, v8, v7);

  if (objc_msgSend_isDynamicallyChangingFontColorOfCellID_(self, v36, *&d, v37))
  {
    v41 = objc_msgSend_dynamicFontColor(self, v38, v39, v40);
    objc_msgSend_setTextColorOverride_(v35, v42, v41, v43);
  }

  return v35;
}

- (id)newTextEngineForCell:(id)cell atCellID:(TSUCellCoord)d textStyle:(id)style
{
  cellCopy = cell;
  styleCopy = style;
  v15 = 0;
  v11 = objc_msgSend_p_resolvedTextStyleForCell_atCellID_textStyle_outNaturalAlignment_outCellDirection_(self, v10, cellCopy, *&d, styleCopy, &v15 + 4, &v15);

  v13 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_naturalAlignment_cellDirection_(self, v12, cellCopy, *&d, v11, HIDWORD(v15), v15);
  return v13;
}

- (id)formattedDataParagraphStylePropertyMapForCell:(id)cell atCellID:(TSUCellCoord)d
{
  cellCopy = cell;
  v10 = objc_msgSend_formattedValue(cellCopy, v7, v8, v9);
  objc_msgSend_formatType(cellCopy, v11, v12, v13);
  v17 = objc_msgSend_locale(cellCopy, v14, v15, v16);
  v18 = TSWPGetDefaultParagraphDirectionForFormattedText();

  if (objc_msgSend_currentFormatUsesAccountingStyle(cellCopy, v19, v20, v21))
  {
    v25 = objc_msgSend_tableInfo(self, v22, v23, v24);
    dCopy = objc_msgSend_mergeRangeAtCellID_(v25, v26, *&d, v27);
    v30 = v29;

    if (dCopy == 0x7FFFFFFF || (dCopy & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v30) || !v30)
    {
      v30 = 0x100000001;
      dCopy = d;
    }

    objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(self, v31, dCopy, v30, 0);
    v33 = v32;
    v37 = objc_msgSend_tab(MEMORY[0x277D80F58], v34, v35, v36);
    v41 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v38, v39, v40);
    objc_msgSend_paddingForCellID_(self, v42, *&d, v43);
    v48 = v33 - v47;
    if (v33 - v47 > 4.0)
    {
      objc_msgSend_setPosition_(v37, v44, v45, v46, v33 + -4.0 - v47);
      objc_msgSend_setAlignment_(v37, v49, 2, v50);
      v54 = objc_msgSend_tabs(MEMORY[0x277D80F60], v51, v52, v53);
      objc_msgSend_insertTab_(v54, v55, v37, v56);
      objc_msgSend_setObject_forProperty_(v41, v57, v54, 84);
    }

    objc_msgSend_setIntValue_forProperty_(v41, v44, 0, 86, v48);
    objc_msgSend_setIntValue_forProperty_(v41, v58, 0, 44);
  }

  else if (v18 == -1)
  {
    v41 = 0;
  }

  else
  {
    v41 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v22, v23, v24);
    objc_msgSend_setIntValue_forProperty_(v41, v59, v18, 44);
  }

  return v41;
}

- (UIEdgeInsets)edgeInsetsFromPadding:(id)padding
{
  paddingCopy = padding;
  objc_msgSend_topInset(paddingCopy, v4, v5, v6);
  v8 = v7;
  objc_msgSend_leftInset(paddingCopy, v9, v10, v11);
  v13 = v12;
  objc_msgSend_bottomInset(paddingCopy, v14, v15, v16);
  v18 = v17;
  objc_msgSend_rightInset(paddingCopy, v19, v20, v21);
  if (v13 < 2.0)
  {
    v13 = 2.0;
  }

  if (v22 >= 2.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 2.0;
  }

  v24 = v8;
  v25 = v13;
  v26 = v18;
  v27 = v23;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (UIEdgeInsets)paddingForCellID:(TSUCellCoord)d
{
  if ((d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000 || (objc_msgSend_tableInfo(self, a2, *&d, v3), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellStyleAtCellID_isDefault_(v6, v7, *&d, 0), v8 = objc_claimAutoreleasedReturnValue(), v6, !v8)) && (objc_msgSend_tableInfo(self, a2, *&d, v3), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(v9, v10, *&d, 1, 0), v8 = objc_claimAutoreleasedReturnValue(), v9, !v8))
  {
    v11 = 0;
    objc_msgSend_edgeInsetsFromPadding_(self, a2, 0, v3);
  }

  else
  {
    v11 = objc_msgSend_valueForProperty_(v8, a2, 904, v3);
    objc_msgSend_edgeInsetsFromPadding_(self, v12, v11, v13);
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (UIEdgeInsets)defaultPaddingForCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_tableInfo(self, a2, *&d, v3);
  v8 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(v6, v7, *&d, 1, 0);

  if (v8)
  {
    v11 = objc_msgSend_valueForProperty_(v8, v9, 904, v10);
    objc_msgSend_edgeInsetsFromPadding_(self, v12, v11, v13);
  }

  else
  {
    v11 = 0;
    objc_msgSend_edgeInsetsFromPadding_(self, v9, 0, v10);
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (double)fontHeightOfParagraphStyle:(id)style
{
  objc_msgSend_heightForTextStyle_(self->_paraStyleToHeightCache, a2, style, v3);
  v7 = v6;
  if (v6 <= 0.0)
  {
    objc_opt_class();
    v10 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80DC8], v8, 0, v9);
    v11 = TSUCheckedDynamicCast();

    objc_opt_class();
    v15 = objc_msgSend_tableInfo(self, v12, v13, v14);
    v19 = objc_msgSend_context(v15, v16, v17, v18);
    v23 = objc_msgSend_documentObject(v19, v20, v21, v22);
    v24 = TSUCheckedDynamicCast();

    v25 = objc_alloc(MEMORY[0x277D80F70]);
    v29 = objc_msgSend_stylesheet(v24, v26, v27, v28);
    v31 = objc_msgSend_initWithStylesheet_paragraphStyle_listStyle_columnStyle_alignmentForNaturalAlignment_naturalDirection_(v25, v30, v29, style, 0, v11, 0, 0);

    v32 = [TSTTextEngineDelegate alloc];
    v33 = *MEMORY[0x277D81428];
    v34 = *(MEMORY[0x277D81428] + 8);
    v35 = *(MEMORY[0x277D81428] + 16);
    v36 = *(MEMORY[0x277D81428] + 24);
    v40 = objc_msgSend_typesettingLocale(v24, v37, v38, v39);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v24, v41, v42, v43);
    v48 = objc_msgSend_styleProvidingSource(self, v45, v46, v47);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v32, v49, 0, v40, shouldHyphenate, v48, v33, v34, v35, v36);

    objc_msgSend_setMaxWidthForChildren_(shouldHyphenate_styleProvidingSource, v51, v52, v53, 1.79769313e308);
    objc_msgSend_setDelegate_(v31, v54, shouldHyphenate_styleProvidingSource, v55);
    v57 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v31, v56, @"W", 0, 5, 15, 8.0, 0.0, 4294967300.0, 50000.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    v58 = sub_2213A5824(v57);
    v7 = v59;
    objc_msgSend_setDelegate_(v31, v60, 0, v61, v58);
    objc_msgSend_setHeight_forTextStyle_(self->_paraStyleToHeightCache, v62, style, v63, v7);
  }

  return v7;
}

- (void)clearRenderingCaches
{
  v14 = objc_msgSend_cellIDToWPColumnCache(self, a2, v2, v3);
  objc_msgSend_removeAllObjects(v14, v5, v6, v7);

  v15 = objc_msgSend_dupContentCache(self, v8, v9, v10);
  objc_msgSend_removeAllObjects(v15, v11, v12, v13);
}

- (id)indexesForSummaryRowsInRegion:(id)region
{
  v4 = objc_msgSend_indexesForSummaryRowsInRegion_(self->_tableInfo, a2, region, v3);

  return v4;
}

- (id)indexesForLabelRowsInRegion:(id)region
{
  v4 = objc_msgSend_indexesForLabelRowsInRegion_(self->_tableInfo, a2, region, v3);

  return v4;
}

- (id)indexesForCategoryColumnsInRegion:(id)region
{
  v4 = objc_msgSend_indexesForCategoryColumnsInRegion_(self->_tableInfo, a2, region, v3);

  return v4;
}

- (BOOL)isCategoryLastSummaryRowCollapsed
{
  result = 0;
  if (objc_msgSend_isCategorized(self, a2, v2, v3))
  {
    v16.origin = objc_msgSend_entireBodyRowsCellRange(self, v5, v6, v7);
    v16.size = v8;
    v9 = TSUCellRect::lastRow(&v16);
    v12 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, v10, v9, v11);
    if (objc_msgSend_isGroupingRowCollapsed_(self, v13, v12, v14))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isLastVisibleBodyRowCategorySummaryOrLabelRow
{
  result = 0;
  if (objc_msgSend_isCategorized(self, a2, v2, v3))
  {
    v16.origin = objc_msgSend_entireBodyRowsCellRange(self, v5, v6, v7);
    v16.size = v8;
    v9 = TSUCellRect::lastRow(&v16);
    v12 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(self, v10, v9, v11);
    if (objc_msgSend_isSummaryOrLabelRow_(self, v13, v12, v14))
    {
      return 1;
    }
  }

  return result;
}

- (void)modifySafelyUsingBlock:(id)block
{
  blockCopy = block;
  pthread_rwlock_wrlock(&self->_contentRWLock);
  blockCopy[2]();
  pthread_rwlock_unlock(&self->_contentRWLock);
}

- (void)readSafelyUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v4, v5, v6);
  v8 = self->_contentReadingThreads;
  objc_sync_enter(v8);
  if (objc_msgSend_containsObject_(self->_contentReadingThreads, v9, v7, v10))
  {
    objc_sync_exit(v8);

    blockCopy[2]();
  }

  else
  {
    objc_msgSend_addObject_(self->_contentReadingThreads, v11, v7, v12);
    objc_sync_exit(v8);

    pthread_rwlock_rdlock(&self->_contentRWLock);
    blockCopy[2]();
    pthread_rwlock_unlock(&self->_contentRWLock);
    v13 = self->_contentReadingThreads;
    objc_sync_enter(v13);
    objc_msgSend_removeObject_(self->_contentReadingThreads, v14, v7, v15);
    objc_sync_exit(v13);
  }
}

- (TSKChangeNotifier)changeNotifier
{
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);

  return WeakRetained;
}

- (TSUCellRect)dynamicFontColorCellRange
{
  size = self->_dynamicFontColorCellRange.size;
  origin = self->_dynamicFontColorCellRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicResizingColumnRange
{
  size = self->_dynamicResizingColumnRange.size;
  origin = self->_dynamicResizingColumnRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicResizingRowRange
{
  size = self->_dynamicResizingRowRange.size;
  origin = self->_dynamicResizingRowRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGRect)tableNameBounds
{
  x = self->_tableNameBounds.origin.x;
  y = self->_tableNameBounds.origin.y;
  width = self->_tableNameBounds.size.width;
  height = self->_tableNameBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSUCellRect)dynamicHidingContent
{
  size = self->_dynamicHidingContent.size;
  origin = self->_dynamicHidingContent.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicHidingRowsCols
{
  size = self->_dynamicHidingRowsCols.size;
  origin = self->_dynamicHidingRowsCols.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicHidingText
{
  size = self->_dynamicHidingText.size;
  origin = self->_dynamicHidingText.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicRemovingText
{
  size = self->_dynamicRemovingText.size;
  origin = self->_dynamicRemovingText.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)dynamicRevealingRowsCols
{
  size = self->_dynamicRevealingRowsCols.size;
  origin = self->_dynamicRevealingRowsCols.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end