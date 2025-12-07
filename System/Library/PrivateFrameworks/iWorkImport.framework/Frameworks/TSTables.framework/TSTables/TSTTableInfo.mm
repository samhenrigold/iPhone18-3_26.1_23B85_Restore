@interface TSTTableInfo
+ (BOOL)validateNewName:(id)name forTable:(id)table;
+ (TSUCellRect)cellRangeForTableArea:(unint64_t)area givenTableSize:(id)size numberOfHeaderRows:(unsigned int)rows numberOfFooterRows:(unsigned int)footerRows numberOfHeaderColumns:(unsigned int)columns;
+ (id)displayNameForColumnName:(id)name;
+ (id)geometryForPrototypeIndex:(int64_t)index withCanvasPoint:(CGPoint)point;
+ (id)localizedDescriptionForProtoIndex:(unint64_t)index;
+ (id)pivotDetailTableNameFromSourcePivotTableInfo:(id)info pivotSourceCell:(TSUCellCoord)cell;
+ (id)pivotTableNameForSourceTable:(id)table;
+ (id)tableInfoForTableUID:(TSKUIDStruct)d withCalcEngine:(id)engine;
+ (id)tablePrototypeWithIndex:(int64_t)index context:(id)context geometry:(id)geometry stylePreset:(id)preset;
+ (id)tablePrototypeWithIndex:(int64_t)index context:(id)context geometry:(id)geometry stylePreset:(id)preset forTableInsertOnly:(BOOL)only;
+ (unint64_t)tableAreaForCellID:(TSUCellCoord)d inTableWithHeaderColumns:(unsigned int)columns headerRows:(unsigned int)rows footerRows:(unsigned int)footerRows totalRows:(unsigned int)totalRows;
+ (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)d inTableWithHeaderColumns:(unsigned int)columns headerRows:(unsigned int)rows footerRows:(unsigned int)footerRows totalRows:(unsigned int)totalRows;
+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)index;
+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)index;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate reservedCount:(unint64_t)count;
+ (void)ensureAllTablesAreRegisteredInDocumentRoot:(id)root;
+ (void)performRewritesForInsertedTableInfos:(id)infos;
+ (void)upgradeTablesIfNeeded:(unint64_t)needed forDocumentRoot:(id)root;
- (BOOL)canTranspose;
- (BOOL)checkStateForArchiving:(BOOL)archiving;
- (BOOL)containsProperty:(int)property;
- (BOOL)findChartableRangesFromTableRange:(TSCERangeCoordinate)range getBodyRange:(TSCERangeCoordinate *)bodyRange headerColumnRange:(TSCERangeCoordinate *)columnRange headerRowRange:(TSCERangeCoordinate *)rowRange;
- (BOOL)groupingTypesAreUniqueForColumn:(unsigned __int16)column;
- (BOOL)hasActiveFilters;
- (BOOL)hasCellID:(TSUCellCoord)d;
- (BOOL)hasFilterRulesAffectingInsertRows;
- (BOOL)hasFilterRulesInBaseColumns:(id)columns;
- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d;
- (BOOL)hasGroupingArrowInCellRegion:(id)region;
- (BOOL)hasHeaderColumnForAggregateNames;
- (BOOL)hasHeaderRowForAggregateNames;
- (BOOL)hasMergeFragmentAtCellID:(TSUCellCoord)d;
- (BOOL)hasMergeRanges;
- (BOOL)hasMigratableStylesInCells;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)range;
- (BOOL)hasSpillingErrors;
- (BOOL)hasSummaryRowsInRegion:(id)region;
- (BOOL)hasUntitledTableNameFormat;
- (BOOL)hasUsefulPivotSourceCellsInBodyRange:(TSUCellRect)range;
- (BOOL)hideColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action;
- (BOOL)hideRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action;
- (BOOL)isCategoryAnyKindOfCell:(TSUCellCoord)cell;
- (BOOL)isCategoryColumn:(unsigned __int16)column;
- (BOOL)isCategoryColumnUneditableCell:(TSUCellCoord)cell;
- (BOOL)isCategoryGroupValueCell:(TSUCellCoord)cell;
- (BOOL)isCategoryGroupValueLabelCell:(TSUCellCoord)cell;
- (BOOL)isCategoryGroupingColumn:(unsigned __int16)column;
- (BOOL)isCategoryLabelCell:(TSUCellCoord)cell;
- (BOOL)isCellRangeHidden:(TSUCellRect)hidden;
- (BOOL)isEmptyPivot;
- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison objectComparisonBlock:(id)block;
- (BOOL)isGroupCollapsedAndVisible:(TSKUIDStruct)visible dimension:(int64_t)dimension;
- (BOOL)isGroupOrParentsCollapsed:(TSKUIDStruct)collapsed dimension:(int64_t)dimension;
- (BOOL)isGroupingColumnCollapsed:(unsigned __int16)collapsed;
- (BOOL)isGroupingColumnCollapsedAndVisible:(unsigned __int16)visible;
- (BOOL)isGroupingRowCollapsed:(unsigned int)collapsed;
- (BOOL)isGroupingRowCollapsedAndVisible:(unsigned int)visible;
- (BOOL)isLabelRow:(unsigned int)row;
- (BOOL)isNewlyImported;
- (BOOL)isPivotAnyKindOfCell:(TSUCellCoord)cell;
- (BOOL)isPivotGrandTotalColumn:(unsigned __int16)column;
- (BOOL)isPivotGrandTotalRow:(unsigned int)row;
- (BOOL)isPivotLeadingColumn:(unsigned __int16)column;
- (BOOL)isPivotLeadingRow:(unsigned int)row;
- (BOOL)isPivotTrailingAligned:(TSUCellCoord)aligned;
- (BOOL)isPivotUnwrapped:(TSUCellCoord)unwrapped;
- (BOOL)isRegisteredWithCalcEngine:(id)engine;
- (BOOL)isReimportable;
- (BOOL)isSafeToConvertToImageForImagePaste;
- (BOOL)isSingleCellOrMergeRange:(TSUCellRect)range;
- (BOOL)isSummaryCell:(TSUCellCoord)cell;
- (BOOL)isSummaryColumn:(unsigned __int16)column;
- (BOOL)isSummaryOrLabelRow:(unsigned int)row;
- (BOOL)isSummaryRow:(unsigned int)row;
- (BOOL)isValidForInteraction;
- (BOOL)needsFilterFormulaRewriteForImport;
- (BOOL)pivotSourceIsRangeBased;
- (BOOL)pivotTableCanBeRefreshed;
- (BOOL)registerLast;
- (BOOL)shouldDisplaySummaryLabelRowAtGroupLevel:(unsigned __int8)level;
- (BOOL)shouldUseWideRows;
- (BOOL)showColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action;
- (BOOL)showRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action;
- (BOOL)supportsRichTextUndoAtCellID:(TSUCellCoord)d;
- (BOOL)useBandedFill;
- (BOOL)verifySubOwnerUIDsUsed;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (NSSet)referencedStyles;
- (NSString)description;
- (NSString)pivotSourceRangeName;
- (NSString)pivotSourceTableName;
- (NSUUID)nsFilteringTableUID;
- (NSUUID)nsTableUID;
- (NSUUID)pivotSourceNSTableUID;
- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)region affectedRegion:(id)affectedRegion;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)column toColumn:(unsigned __int16)toColumn;
- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)row toRow:(unsigned int)toRow;
- (TSDFill)bodyFill;
- (TSDFill)footerRowsFill;
- (TSDFill)headerColumnsFill;
- (TSDFill)headerRowsFill;
- (TSDStroke)bodyColumnStroke;
- (TSDStroke)bodyPivotDeEmphasisHorizontalStroke;
- (TSDStroke)bodyPivotEmphasisVerticalStroke;
- (TSDStroke)bodyPivotGroupHorizontalStroke;
- (TSDStroke)bodyPivotGroupVerticalStroke;
- (TSDStroke)bodyRowStroke;
- (TSDStroke)bodyRowStrokeEvenIfNotVisible;
- (TSDStroke)categoryLevel1BottomStroke;
- (TSDStroke)categoryLevel1InteriorStroke;
- (TSDStroke)categoryLevel1LabelSeparatorStroke;
- (TSDStroke)categoryLevel1TopStroke;
- (TSDStroke)categoryLevel2BottomStroke;
- (TSDStroke)categoryLevel2InteriorStroke;
- (TSDStroke)categoryLevel2LabelSeparatorStroke;
- (TSDStroke)categoryLevel2TopStroke;
- (TSDStroke)categoryLevel3BottomStroke;
- (TSDStroke)categoryLevel3InteriorStroke;
- (TSDStroke)categoryLevel3LabelSeparatorStroke;
- (TSDStroke)categoryLevel3TopStroke;
- (TSDStroke)categoryLevel4BottomStroke;
- (TSDStroke)categoryLevel4InteriorStroke;
- (TSDStroke)categoryLevel4LabelSeparatorStroke;
- (TSDStroke)categoryLevel4TopStroke;
- (TSDStroke)categoryLevel5BottomStroke;
- (TSDStroke)categoryLevel5InteriorStroke;
- (TSDStroke)categoryLevel5LabelSeparatorStroke;
- (TSDStroke)categoryLevel5TopStroke;
- (TSDStroke)defaultHorizontalBorderStroke;
- (TSDStroke)defaultHorizontalBorderStrokeEvenIfNotVisible;
- (TSDStroke)defaultVerticalBorderStroke;
- (TSDStroke)footerRowBodyColumnStroke;
- (TSDStroke)footerRowBodyRowStroke;
- (TSDStroke)footerRowBorderStroke;
- (TSDStroke)footerRowPivotGroupVerticalStroke;
- (TSDStroke)footerRowSeparatorStroke;
- (TSDStroke)headerColumnBodyColumnStroke;
- (TSDStroke)headerColumnBodyRowStroke;
- (TSDStroke)headerColumnBorderStroke;
- (TSDStroke)headerColumnPivotGroupDeEmphasisStroke;
- (TSDStroke)headerColumnPivotGroupHorizontalStroke;
- (TSDStroke)headerColumnPivotSeparatorStroke;
- (TSDStroke)headerColumnSeparatorStroke;
- (TSDStroke)headerRowBodyColumnStroke;
- (TSDStroke)headerRowBodyRowStroke;
- (TSDStroke)headerRowBorderStroke;
- (TSDStroke)headerRowPivotGroupDeEmphasisStroke;
- (TSDStroke)headerRowPivotGroupVerticalStroke;
- (TSDStroke)headerRowPivotTitleStroke;
- (TSDStroke)headerRowSeparatorStroke;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index;
- (TSKUIDStruct)conditionalStyleFormulaOwnerUID;
- (TSKUIDStruct)filteringTableUID;
- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)fromGroupByUID;
- (TSKUIDStruct)fromTableUID;
- (TSKUIDStruct)groupByUid;
- (TSKUIDStruct)hiddenStatesUid;
- (TSKUIDStruct)pivotSourceTableUID;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructCoord)cellUIDForCellID:(SEL)d;
- (TSKUIDStructCoord)cellUIDForCellID:(SEL)d useCategoriesWildcards:(TSUCellCoord)wildcards;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range;
- (TSKUIDStructTract)tableTranslatorBaseMapForPasteboard;
- (TSKUIDStructTract)tableTranslatorViewMapForPasteboard;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range;
- (TSTPivotOwner)pivotOwner;
- (TSTTableFilterSet)filterSet;
- (TSTTableInfo)initWithContext:(id)context fromSourceInfo:(id)info cellRegion:(id)region waitForCalcEngine:(BOOL)engine flattenCategories:(int64_t)categories isSnapshot:(BOOL)snapshot;
- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry rows:(unsigned int)rows columns:(unsigned int)columns;
- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry rows:(unsigned int)rows columns:(unsigned int)columns stylePreset:(id)preset styles:(id)styles;
- (TSTTableInfo)initWithContext:(id)context otherTableInfo:(id)info;
- (TSTTableInfo)pivotSourceTableInfo;
- (TSTTableModel)filteringTableModel;
- (TSTTableTranslator)filteringTableTranslator;
- (TSUCellCoord)cellIDAboveCellID:(TSUCellCoord)d;
- (TSUCellCoord)cellIDBelowCellID:(TSUCellCoord)d;
- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)d;
- (TSUCellCoord)cellIDLeftOfCellID:(TSUCellCoord)d;
- (TSUCellCoord)cellIDRightOfCellID:(TSUCellCoord)d;
- (TSUCellRect)actualHeaderColumnRange;
- (TSUCellRect)baseColumnRange;
- (TSUCellRect)bodyColumnRange;
- (TSUCellRect)bodyRange;
- (TSUCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)d;
- (TSUCellRect)bodyRowRange;
- (TSUCellRect)bottomCornerRange;
- (TSUCellRect)categoryColumnRange;
- (TSUCellRect)cellRangeForTableArea:(unint64_t)area;
- (TSUCellRect)cellRangeForUIDRange:(const void *)range;
- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)cells;
- (TSUCellRect)filteringBaseColumnRange;
- (TSUCellRect)filteringBodyRange;
- (TSUCellRect)filteringBodyRowRange;
- (TSUCellRect)filteringRange;
- (TSUCellRect)footerRowRange;
- (TSUCellRect)headerColumnRange;
- (TSUCellRect)headerRowRange;
- (TSUCellRect)mergeRangeAtCellID:(TSUCellCoord)d;
- (TSUCellRect)minPopulatedCellRange;
- (TSUCellRect)range;
- (TSUCellRect)topCornerRange;
- (TSUChromeColumnIndex)numberOfChromeColumns;
- (TSUChromeColumnIndex)numberOfChromeHeaderColumns;
- (TSUChromeRowIndex)numberOfChromeFooterRows;
- (TSUChromeRowIndex)numberOfChromeHeaderRows;
- (TSUChromeRowIndex)numberOfChromeRows;
- (TSUModelColumnIndex)numberOfBaseColumns;
- (TSUModelColumnIndex)numberOfBaseHeaderColumns;
- (TSUModelRowIndex)numberOfBaseBodyRows;
- (TSUModelRowIndex)numberOfBaseFooterRows;
- (TSUModelRowIndex)numberOfBaseHeaderRows;
- (TSUModelRowIndex)numberOfBaseRows;
- (_NSRange)columnRangeForUIDs:(const void *)ds;
- (_NSRange)rowRangeForUIDs:(const void *)ds;
- (_NSRange)rowRangeUnderSummaryOrLabelRow:(unsigned int)row;
- (float)floatValueForProperty:(int)property;
- (id).cxx_construct;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)_initWithContext:(id)context flatteningFromComplexInfo:(id)info cellRegion:(id)region waitForCalcEngine:(BOOL)engine flatteningOptions:(int64_t)options isSnapshot:(BOOL)snapshot;
- (id)_initWithContext:(id)context fromSourceInfo:(id)info cellRegion:(id)region tableModel:(id)model waitForCalcEngine:(BOOL)engine formulaCoordSpace:(int64_t)space;
- (id)additionalObjectsToCopy;
- (id)allAnnotations;
- (id)allBodyValuesAsPregArgDataListForColumnIndex:(TSUViewColumnIndex)index;
- (id)allColumnUIDsAtGroupLevel:(unsigned __int8)level withFilter:(id)filter;
- (id)allRowUIDsAtGroupLevel:(unsigned __int8)level withFilter:(id)filter;
- (id)annotationWithUUID:(id)d;
- (id)applyCellDiff:(id)diff atCellUID:(const TSKUIDStructCoord *)d migrationMap:(id)map inverseCellDiff:(id)cellDiff defaultCellStyle:(id)style defaultTextStyle:(id)textStyle;
- (id)applyCellDiffMap:(id)map migrationHelper:(id)helper updateProperties:(id)properties;
- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState;
- (id)bandedFillObject;
- (id)categoryRefReferringToCellRef:(const void *)ref;
- (id)cellAfterApplyDiff:(id)diff toCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d migrationMap:(id)map inverseCellDiff:(id)cellDiff concurrentStylesheet:(id)stylesheet defaultCellStyle:(id)style defaultTextStyle:(id)self0;
- (id)cellAtCellID:(TSUCellCoord)d;
- (id)cellBorderAtCellID:(TSUCellCoord)d;
- (id)cellIteratorWithFlags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (id)cellIteratorWithRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (id)cellIteratorWithRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range;
- (id)cellMapForRegion:(id)region uidBased:(BOOL)based suppressMergeContent:(BOOL)content useCategoriesWildcards:(BOOL)wildcards;
- (id)cellRangeName:(TSCERangeCoordinate)name usedSymbolicName:(BOOL *)symbolicName;
- (id)cellRegionFromCellUIDList:(id)list;
- (id)cellRegionFromCellUIDList:(id)list includeLabelsWithSummaries:(BOOL)summaries didAddLabels:(BOOL *)labels;
- (id)cellRegionFromCellUIDLookupList:(id)list;
- (id)cellRegionFromCellUIDLookupList:(id)list includeLabelsWithSummaries:(BOOL)summaries didAddLabels:(BOOL *)labels;
- (id)cellRegionFromCellUIDRegion:(id)region;
- (id)cellRegionWithConditionalStyleMatchingCell:(TSUCellCoord)cell;
- (id)cellStyleAtCellID:(TSUCellCoord)d isDefault:(BOOL *)default;
- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)cellStyleOfColumnAtIndex:(unsigned __int16)index isDefault:(BOOL *)default;
- (id)cellStyleOfRowAtIndex:(unsigned int)index isDefault:(BOOL *)default;
- (id)cellTractRefForUIDRectRef:(id)ref;
- (id)cellUIDListFromCellRegion:(id)region;
- (id)cellUIDListFromCellRegion:(id)region useCategoriesWildcards:(BOOL)wildcards;
- (id)cellUIDRegionFromCellRegion:(id)region;
- (id)cellValueFromCell:(id)cell atCellID:(TSUCellCoord)d;
- (id)cellValueViewStringAtCellID:(TSUCellCoord)d optionalCell:(id)cell;
- (id)changeDescriptorsForReorganizingFromRowUids:(const void *)uids toRowUids:(const void *)rowUids;
- (id)characterFillAtCellID:(TSUCellCoord)d optionalCell:(id)cell;
- (id)childEnumerator;
- (id)childEnumeratorForUserFlags:(unint64_t)flags;
- (id)chromeLabelForCellID:(TSUCellCoord)d;
- (id)chromeLabelForColumn:(unsigned __int16)column;
- (id)chromeLabelForRow:(unsigned int)row;
- (id)collapseSummaryGroupUIDs:(id)ds;
- (id)columnDisplayNameForCategoryLevel:(unsigned __int8)level;
- (id)columnNameForCellID:(TSUCellCoord)d restrictToBodyRange:(BOOL)range;
- (id)columnNameForColumnIndex:(unsigned __int16)index;
- (id)columnNameForColumnIndex:(unsigned __int16)index withFallbackFormat:(id)format;
- (id)commentHostingAtCellID:(TSUCellCoord)d forCommentStorage:(id)storage;
- (id)commentHostingAtCellID:(TSUCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps;
- (id)compatibilityCheckerForData:(id)data associatedHint:(id)hint;
- (id)componentRootObject;
- (id)concurrentCellMapForRegion:(id)region suppressMergeContent:(BOOL)content gatherCellBorders:(BOOL)borders;
- (id)conditionalStyleSetAtCellID:(TSUCellCoord)d;
- (id)createDetailTableForPivotTableCell:(TSUCellCoord)cell;
- (id)defaultCellStyleForCellID:(TSUCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultCellStyleForTableStyleArea:(unint64_t)area;
- (id)defaultTextStyleForCellID:(TSUCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultTextStyleForTableStyleArea:(unint64_t)area;
- (id)displayableDescriptiveName;
- (id)duplicateFilterSet;
- (id)duplicateFilterSetInUidForm;
- (id)expandCellRegionToCoverMergedCells:(id)cells;
- (id)expandSummaryGroupUIDs:(id)ds;
- (id)fillForColumn:(unsigned __int16)column;
- (id)fillForRow:(unsigned int)row;
- (id)filteringColumnNameForBaseColumnIndex:(TSUModelColumnIndex)index;
- (id)filteringColumnNameForColumnIndex:(unsigned __int16)index;
- (id)filteringDisplayColumnNameForBaseColumnIndex:(TSUModelColumnIndex)index;
- (id)formulaAtCellID:(TSUCellCoord)d;
- (id)geometryForRTLTableWithGeometry:(id)geometry;
- (id)indexesForBodyAndFooterRows;
- (id)indexesForBodyRowsInGroupWithRowAtIndex:(unsigned int)index;
- (id)indexesForCategoryColumns;
- (id)indexesForCategoryColumnsInRegion:(id)region;
- (id)indexesForColumnsContainedByGroupUIDs:(id)ds;
- (id)indexesForGroupingColumns;
- (id)indexesForGroupingColumnsInRegion:(id)region;
- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)level inRegion:(id)region;
- (id)indexesForLabelRowsInRegion:(id)region;
- (id)indexesForLabelRowsUpToGroupLevel:(unsigned __int8)level omitGroupsWithUids:(const void *)uids;
- (id)indexesForLeadingColumnsInRegion:(id)region;
- (id)indexesForLeadingRowsInRegion:(id)region;
- (id)indexesForNonSummaryBodyColumns;
- (id)indexesForNonSummaryBodyRows;
- (id)indexesForRowsContainedByGroupUIDs:(id)ds;
- (id)indexesForSummaryAndLabelRowsInRegion:(id)region;
- (id)indexesForSummaryColumnsFromGroupLevel:(unsigned __int8)level toGroupLevel:(unsigned __int8)groupLevel;
- (id)indexesForSummaryColumnsInRegion:(id)region;
- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level inRegion:(id)region;
- (id)indexesForSummaryRowsFromGroupLevel:(unsigned __int8)level toGroupLevel:(unsigned __int8)groupLevel;
- (id)indexesForSummaryRowsInRegion:(id)region;
- (id)indexesForSummaryRowsUpToGroupLevel:(unsigned __int8)level omitGroupsWithUids:(const void *)uids;
- (id)indexesOfVisibleColumnsInCellRegion:(id)region;
- (id)indexesOfVisibleColumnsInColumnRange:(id)range;
- (id)indexesOfVisibleRowsInCellRegion:(id)region;
- (id)indexesOfVisibleRowsInRowRange:(id)range;
- (id)initAsDetailTableWithContext:(id)context sourcePivotTableInfo:(id)info pivotSourceCell:(TSUCellCoord)cell;
- (id)initForTestingWithContext:(id)context rows:(unsigned int)rows columns:(unsigned int)columns;
- (id)initPivotTableWithContext:(id)context sourceTableInfo:(id)info sourceBodyRange:(TSUCellRect)range sourceHeaderRowRange:(_NSRange)rowRange optionalDataModel:(id)model;
- (id)labelValueViewStringAtCellID:(TSUCellCoord)d optionalCell:(id)cell;
- (id)mappingForSortingColumns:(id)columns withRules:(id)rules;
- (id)mappingForSortingRows:(id)rows withRules:(id)rules;
- (id)mappingFromRowUids:(const void *)uids toRowUids:(const void *)rowUids;
- (id)mergeActionForRegion:(id)region;
- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only;
- (id)mergesIntersectingCellRegion:(id)region;
- (id)mergesIntersectingRange:(TSUCellRect)range;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
- (id)noRuleConditionalStyleSet;
- (id)objectForProperty:(int)property;
- (id)p_cellRegionFromWildcardCellUIDs:()vector<TSKUIDStructCoord includeLabelsWithSummaries:(std:(BOOL)summaries :(BOOL *)a5 allocator<TSKUIDStructCoord>> *)a3 didAddLabels:;
- (id)p_fillResourceWithFilename:(id)filename;
- (id)p_layoutEngineCreateIfNeeded:(BOOL)needed;
- (id)p_mappingForSortingRowsOrColumns:(id)columns withRules:(id)rules dimension:(int64_t)dimension;
- (id)peerCellRegionForCellRegion:(id)region;
- (id)performActionReturningInverse:(id)inverse formulaReplacer:(id)replacer;
- (id)pivotDataLocalizedColumnNameAtDataColumnIndex:(TSUModelColumnIndex)index;
- (id)pivotHeaderColumnDisplayNameAtIndex:(unsigned __int16)index;
- (id)pivotHeaderRowDisplayNameAtIndex:(unsigned int)index;
- (id)pivotLeadingColumnDisplayNameAtIndex:(unsigned __int16)index;
- (id)pivotLeadingRowDisplayNameAtIndex:(unsigned int)index;
- (id)processRowsWithPendingGroupingChangesAndReturnAffectedCellRegion;
- (id)regionSubtractingCategoryColumnsAndRows:(id)rows;
- (id)removeReturningInverseForRegion:(id)region;
- (id)replicateForReinsertion;
- (id)rowNameForCellID:(TSUCellCoord)d restrictToBodyRange:(BOOL)range;
- (id)shrinkReturningInverseForRegion:(id)region;
- (id)sortTagsForSortingColumns:(id)columns byRows:(const void *)rows;
- (id)sortTagsForSortingRows:(id)rows byColumns:(const void *)columns;
- (id)stringAtCellID:(TSUCellCoord)d optionalCell:(id)cell;
- (id)strokeExporterReturningDefaultStrokes:(BOOL)strokes;
- (id)strokeLayerForBottomOfRow:(unsigned int)row;
- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)column;
- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)column;
- (id)strokeLayerForTopOfRow:(unsigned int)row;
- (id)tableAreasForCellRange:(TSUCellRect)range;
- (id)textStyleAtCellID:(TSUCellCoord)d isDefault:(BOOL *)default;
- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)textStyleForCellWithEmptyStyleAtCellUID:(TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)textStyleOfColumnAtIndex:(unsigned __int16)index isDefault:(BOOL *)default;
- (id)textStyleOfRowAtIndex:(unsigned int)index isDefault:(BOOL *)default;
- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter;
- (id)typeName;
- (int)getCell:(id)cell atCellID:(TSUCellCoord)d;
- (int)getCell:(id)cell atCellID:(TSUCellCoord)d holdingReadLockWithAccessController:(id)controller;
- (int)getCell:(id)cell atCellID:(TSUCellCoord)d suppressCellBorder:(BOOL)border;
- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d;
- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d suppressCellBorder:(BOOL)border;
- (int)getDefaultCell:(id)cell forCellID:(TSUCellCoord)d;
- (int)getValue:(id *)value atCellID:(TSUCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text;
- (int)maxStrokeOrder;
- (int)p_fillPropertyForStyle:(id)style;
- (int)parseNumberFromTableName:(id)name;
- (int)registerWithCalcEngine:(id)engine;
- (int)setCell:(id)cell atCellCoord:(TSUCellCoord)coord;
- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings;
- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer;
- (int)setCellStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d;
- (int)setCellStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d;
- (int)setCellsWithCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells;
- (int)setTextStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d;
- (int)setTextStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d;
- (int)writingDirectionForCellwithTableDefault:(id)default;
- (int64_t)contentWritingDirection;
- (int64_t)groupingArrowStateAtCellID:(TSUCellCoord)d;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)groupingColumnLevelCountForColumn:(unsigned __int16)column;
- (unint64_t)pivotDataModelSizeClass;
- (unint64_t)pivotSizeClass;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d;
- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (unsigned)categoryColumnIndex;
- (unsigned)cellValueTypeAtCellID:(TSUCellCoord)d;
- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)d;
- (unsigned)columnIndexForGroupingColumn:(id)column;
- (unsigned)groupLevelAtRow:(unsigned int)row;
- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid;
- (unsigned)numberOfGroupLevelsShowingLabelsUnderGroupAtIndex:(unsigned int)index;
- (unsigned)numberOfUserVisibleBodyRows;
- (unsigned)numberOfVisibleBaseBodyRows;
- (unsigned)numberOfVisibleBodyColumns;
- (unsigned)numberOfVisibleBodyRows;
- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableInfo *)self;
- (vector<TSUCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableInfo *)self;
- (vector<TSUCellRect,)mergeRangesIntersectingCellRegion:(TSTTableInfo *)self;
- (vector<TSUCellRect,)mergeRangesIntersectingRange:(TSTTableInfo *)self;
- (void)_correctAndCheckStateSuppressingAssertions:(BOOL)assertions;
- (void)_setCellBordersFlatteningFromComplexInfo:(id)info sourceRegion:(id)region;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)applyGroupingColumns:(id)columns;
- (void)applyPivotWithColumns:(id)columns rows:(id)rows aggregates:(id)aggregates flatteningDimension:(int64_t)dimension optionsMap:(id)map pivotRowColumnRuleChangeUid:(TSKUIDStruct)uid pivotAggregateRuleChangeUid:(TSKUIDStruct)changeUid;
- (void)applyWritingDirection:(int)direction toCell:(id)cell cellID:(TSUCellCoord)d;
- (void)bakeFormulas;
- (void)chooseUniqueNameInContainer:(id)container forPaste:(BOOL)paste needsNewName:(BOOL)name avoidNames:(id)names;
- (void)clearPartitioner;
- (void)commitPivotChanges;
- (void)convertFormulasToUidForm:(id)form atCellID:(TSUCellCoord)d preserveHostCell:(BOOL)cell;
- (void)dealloc;
- (void)didReplaceTextsInStoragesWithPlaceHolderString;
- (void)dirtyFilterState;
- (void)enableFilterSet:(BOOL)set;
- (void)enumerateCellStringsForRows:(unsigned int)rows rowCount:(unsigned int)count usingBlock:(id)block;
- (void)enumerateCellStringsUsingBlock:(id)block;
- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block;
- (void)filterSetUpdated;
- (void)flattenGroupValuesIfNeededForCell:(id)cell viewCellCoord:(TSUViewCellCoord)coord summaryAndLabelRows:(id)rows categoryColumns:(id)columns;
- (void)getTextPropertiesWithCell:(id)cell cellID:(TSUCellCoord)d wraps:(BOOL *)wraps alignment:(int *)alignment verticalAlignment:(int *)verticalAlignment padding:(id *)padding;
- (void)importDeferredRemoveGroupingRowsAtIndexes:(id)indexes;
- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count addBefore:(BOOL)before;
- (void)insertRowsAtIndex:(unsigned int)index count:(unsigned int)count addBefore:(BOOL)before;
- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block;
- (void)iterateCellsInRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range usingBlock:(id)block;
- (void)iterateCellsInRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block;
- (void)iterateCellsWithFlags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block;
- (void)loadAllLazyReferences;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)markPrecedentsDirtyForSpillContentChange;
- (void)markPrecedentsDirtyForSpillMergeChange;
- (void)markSpillingErrorsAsDirty;
- (void)modifiedTextPropertiesForCategoryOrPivotCellAtCellID:(TSUCellCoord)d wraps:(BOOL *)wraps padding:(id *)padding alignment:(int *)alignment;
- (void)notifyTableOfNewResults;
- (void)p_bakeMixedCellStrokesIntoTable:(id)table outgoingTable:(id)outgoingTable incomingTable:(id)incomingTable fraction:(double)fraction;
- (void)p_initializeDefaultHeight:(double)height andWidth:(double)width;
- (void)p_iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block;
- (void)p_performCommentStorageDOLC:(id)c;
- (void)p_setFillOnCell:(id)cell positive:(BOOL)positive;
- (void)p_setFilterSet:(id)set;
- (void)p_setFormula:(id)formula atCellID:(TSUCellCoord)d;
- (void)p_setFormulaWithSymbolString:(id)string atCellID:(TSUCellCoord)d;
- (void)p_setupTableModelforNewForm;
- (void)p_setupTableModelforStockSwatch;
- (void)p_updateStorageParentInfoForModels;
- (void)performReadForOneOffFormulaEvaluation:(id)evaluation forCellCoord:(TSUCellCoord)coord;
- (void)prepareForPasteWithSourceOffset:(TSUColumnRowOffset)offset bakeFormulas:(BOOL)formulas;
- (void)rearrangeWithMapping:(id)mapping;
- (void)reassignPasteboardCustomFormatKeys;
- (void)registerAllFormulasWithCalculationEngine:(id)engine wasCrossDocumentPaste:(BOOL)paste wasUndo:(BOOL)undo;
- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind;
- (void)releaseLayoutEngine;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine bakeForBadRefs:(BOOL)refs;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)resetArrayFormulasSpillingIntoRegion:(id)region;
- (void)resetCategoriesGroupByForOwnerRemapping;
- (void)resetPivotOrder;
- (void)resetSpillingRangesInUIDRanges:(const void *)ranges;
- (void)resetViewMap;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)scaleInfoGeometry:(CGSize)geometry;
- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (void)setCategoryOrder:(id)order;
- (void)setColumnRowUIDMap:(id)map;
- (void)setContentWritingDirection:(int64_t)direction;
- (void)setDrawableIsBeingCopied:(BOOL)copied;
- (void)setFilterSet:(id)set;
- (void)setFilterSetType:(int)type;
- (void)setFormulaOwnerUIDsWithMap:(id)map shouldStealReferences:(BOOL)references;
- (void)setHasReference:(BOOL)reference;
- (void)setInsertionCenterPosition:(CGPoint)position;
- (void)setIsCategoryEnabled:(BOOL)enabled;
- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)import;
- (void)setPrimitiveGeometry:(id)geometry;
- (void)setShouldUseWideRows:(BOOL)rows;
- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order;
- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range;
- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order;
- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range;
- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order;
- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range;
- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order;
- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range;
- (void)setStyleNetwork:(id)network;
- (void)setSummaryModel:(id)model;
- (void)setTableStyle:(id)style;
- (void)setTableTranslatorBaseMapForPasteboard:(TSKUIDStructTract *)pasteboard;
- (void)setTableTranslatorViewMapForPasteboard:(TSKUIDStructTract *)pasteboard;
- (void)setupTableModelForPrototypeIndex:(int64_t)index forTableInsertOnly:(BOOL)only;
- (void)shiftGeometryToIncludeTableNameHeight;
- (void)unregisterFromCalcEngine:(id)engine;
- (void)updateCalcEngineForTableSize;
- (void)updatePivotDataModel:(id)model pivotDataRefreshUID:(TSKUIDStruct)d pivotDataRefreshTimestamp:(double)timestamp uidBodyTract:(TSKUIDStructTract *)tract;
- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)needed;
- (void)willClose;
@end

@implementation TSTTableInfo

+ (id)pivotTableNameForSourceTable:(id)table
{
  tableCopy = table;
  v7 = objc_msgSend_documentRoot(tableCopy, v4, v5, v6);
  v11 = objc_msgSend_documentLocale(v7, v8, v9, v10);

  v13 = sub_22113105C(v11, v12);
  v14 = MEMORY[0x277CCACA8];
  v18 = objc_msgSend_tableName(tableCopy, v15, v16, v17);
  v21 = objc_msgSend_stringWithFormat_(v14, v19, v13, v20, v18);

  return v21;
}

- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry rows:(unsigned int)rows columns:(unsigned int)columns stylePreset:(id)preset styles:(id)styles
{
  v10 = *&columns;
  v11 = *&rows;
  contextCopy = context;
  geometryCopy = geometry;
  presetCopy = preset;
  stylesCopy = styles;
  v113.receiver = self;
  v113.super_class = TSTTableInfo;
  v18 = [(TSTTableInfo *)&v113 initWithContext:contextCopy geometry:geometryCopy];
  v22 = v18;
  if (v18)
  {
    v23 = objc_alloc(objc_msgSend_tableModelClass(v18, v19, v20, v21));
    v25 = objc_msgSend_initWithContext_rows_columns_styles_stylePreset_tableInfo_(v23, v24, contextCopy, v11, v10, stylesCopy, presetCopy, v22);
    v26 = *(v22 + 200);
    *(v22 + 200) = v25;

    v27 = *(v22 + 240);
    *(v22 + 240) = 0;

    v31 = objc_msgSend_columnRowUIDMap(*(v22 + 200), v28, v29, v30);
    v32 = *(v22 + 296);
    *(v22 + 296) = v31;

    v33 = [TSTSummaryModel alloc];
    v36 = objc_msgSend_initWithTableInfo_(v33, v34, v22, v35);
    v37 = *(v22 + 248);
    *(v22 + 248) = v36;

    v38 = [TSTCategoryOrder alloc];
    v41 = objc_msgSend_initWithTableInfo_(v38, v39, v22, v40);
    v42 = *(v22 + 304);
    *(v22 + 304) = v41;

    v46 = objc_msgSend_baseTableModel(v22, v43, v44, v45);
    v50 = objc_msgSend_categoryOwner(v46, v47, v48, v49);

    v53 = objc_msgSend_groupByForOwnerIndex_(v50, v51, 8, v52);
    v54 = *(v22 + 256);
    *(v22 + 256) = v53;

    if (!*(v22 + 256))
    {
      v55 = [TSTGroupBy alloc];
      v57 = objc_msgSend_initWithGroupings_categoryOwner_(v55, v56, MEMORY[0x277CBEBF8], v50);
      v58 = *(v22 + 256);
      *(v22 + 256) = v57;

      objc_msgSend_linkGroupBy_(v50, v59, *(v22 + 256), v60);
    }

    v61 = objc_alloc_init(TSCEMutableUIDSet);
    v62 = *(v22 + 264);
    *(v22 + 264) = v61;

    v63 = [TSTHiddenStates alloc];
    v67 = objc_msgSend_hiddenStatesOwner(*(v22 + 200), v64, v65, v66);
    v70 = objc_msgSend_initWithHiddenStatesOwner_(v63, v68, v67, v69);
    v71 = *(v22 + 328);
    *(v22 + 328) = v70;

    v72 = [TSTTableTranslator alloc];
    v75 = objc_msgSend_initWithTableInfo_(v72, v73, v22, v74);
    v76 = *(v22 + 336);
    *(v22 + 336) = v75;

    v80 = objc_msgSend_translator(v22, v77, v78, v79);
    objc_msgSend_addReceiverToGroupBy_(v80, v81, *(v22 + 256), v82);

    objc_msgSend_p_updateStorageParentInfoForModels(v22, v83, v84, v85);
    v89 = objc_msgSend_summaryModel(v22, v86, v87, v88);
    objc_msgSend_setupReceiver(v89, v90, v91, v92);

    objc_msgSend_setTableModel_(*(v22 + 328), v93, *(v22 + 200), v94);
    v95 = [TSTTablePartitioner alloc];
    v98 = objc_msgSend_initWithInfo_(v95, v96, v22, v97);
    v99 = *(v22 + 232);
    *(v22 + 232) = v98;

    objc_msgSend_size(geometryCopy, v100, v101, v102);
    v104 = v103;
    objc_msgSend_size(geometryCopy, v105, v106, v107);
    objc_msgSend_p_initializeDefaultHeight_andWidth_(v22, v108, v109, v110, v104, v111);
  }

  return v22;
}

- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry rows:(unsigned int)rows columns:(unsigned int)columns
{
  v6 = *&columns;
  v7 = *&rows;
  contextCopy = context;
  geometryCopy = geometry;
  objc_opt_class();
  v15 = objc_msgSend_documentRoot(contextCopy, v12, v13, v14);
  v19 = objc_msgSend_theme(v15, v16, v17, v18);
  v21 = objc_msgSend_presetOfKind_index_(v19, v20, *MEMORY[0x277D80BA8], 0);
  v22 = TSUDynamicCast();

  if (!v22)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTTableInfo initWithContext:geometry:rows:columns:]", v24);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 453, 0, "invalid nil value for '%{public}s'", "stylePreset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  }

  v34 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v23, contextCopy, geometryCopy, v7, v6, v22, 0);

  return v34;
}

- (id)initForTestingWithContext:(id)context rows:(unsigned int)rows columns:(unsigned int)columns
{
  v5 = *&columns;
  v6 = *&rows;
  contextCopy = context;
  v9 = objc_alloc(MEMORY[0x277D802E8]);
  v13 = objc_msgSend_initWithPosition_size_(v9, v10, v11, v12, 0.0, 0.0, 100.0, 200.0);
  v67.receiver = self;
  v67.super_class = TSTTableInfo;
  v15 = [(TSTTableInfo *)&v67 initWithContext:contextCopy geometry:v13];
  if (v15)
  {
    v16 = objc_msgSend_networkWithContext_presetID_colors_alternate_(TSTTableStyleNetwork, v14, contextCopy, 0, 0, 2);
    v20 = objc_alloc(objc_msgSend_tableModelClass(v15, v17, v18, v19));
    v22 = objc_msgSend_initWithContext_rows_columns_styles_stylePreset_tableInfo_(v20, v21, contextCopy, v6, v5, v16, 0, v15);
    v23 = *(v15 + 25);
    *(v15 + 25) = v22;

    v24 = *(v15 + 30);
    *(v15 + 30) = 0;

    v25 = [TSTSummaryModel alloc];
    v28 = objc_msgSend_initWithTableInfo_(v25, v26, v15, v27);
    v29 = *(v15 + 31);
    *(v15 + 31) = v28;

    v30 = [TSTCategoryOrder alloc];
    v33 = objc_msgSend_initWithTableInfo_(v30, v31, v15, v32);
    v34 = *(v15 + 38);
    *(v15 + 38) = v33;

    v38 = objc_msgSend_baseTableModel(v15, v35, v36, v37);
    v42 = objc_msgSend_categoryOwner(v38, v39, v40, v41);

    v45 = objc_msgSend_groupByForOwnerIndex_(v42, v43, 8, v44);
    v46 = *(v15 + 32);
    *(v15 + 32) = v45;

    if (!*(v15 + 32))
    {
      v47 = [TSTGroupBy alloc];
      v49 = objc_msgSend_initWithGroupings_categoryOwner_(v47, v48, MEMORY[0x277CBEBF8], v42);
      v50 = *(v15 + 32);
      *(v15 + 32) = v49;

      objc_msgSend_linkGroupBy_(v42, v51, *(v15 + 32), v52);
    }

    v53 = [TSTTableTranslator alloc];
    v56 = objc_msgSend_initWithTableInfo_(v53, v54, v15, v55);
    v57 = *(v15 + 42);
    *(v15 + 42) = v56;

    v58 = [TSTTablePartitioner alloc];
    v61 = objc_msgSend_initWithInfo_(v58, v59, v15, v60);
    v62 = *(v15 + 29);
    *(v15 + 29) = v61;

    objc_msgSend_p_updateStorageParentInfoForModels(v15, v63, v64, v65);
  }

  return v15;
}

- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo initWithContext:geometry:]", geometry);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 499, 0, "call - (instancetype) initWithContext: (TSPObjectContext *) context geometry: (TSDInfoGeometry *) geometry styles:(TSTTableStyleNetwork *)styles please");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

- (TSTTableInfo)initWithContext:(id)context otherTableInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  v11 = objc_msgSend_geometry(infoCopy, v8, v9, v10);
  v22.receiver = self;
  v22.super_class = TSTTableInfo;
  v12 = [(TSTTableInfo *)&v22 initWithContext:contextCopy geometry:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_tableModel, infoCopy[25]);
    v13 = [TSTTablePartitioner alloc];
    v16 = objc_msgSend_initWithInfo_(v13, v14, v12, v15);
    partitioner = v12->_partitioner;
    v12->_partitioner = v16;

    layoutEngine = v12->_layoutEngine;
    v12->_layoutEngine = 0;

    objc_msgSend_setStorageParentToInfo_(v12->_tableModel, v19, v12, v20);
  }

  return v12;
}

- (id)initPivotTableWithContext:(id)context sourceTableInfo:(id)info sourceBodyRange:(TSUCellRect)range sourceHeaderRowRange:(_NSRange)rowRange optionalDataModel:(id)model
{
  length = rowRange.length;
  location = rowRange.location;
  rangeCopy = range;
  contextCopy = context;
  infoCopy = info;
  modelCopy = model;
  if (TSUCellRect::isValid(&rangeCopy))
  {
    v15 = [TSCECellTractRef alloc];
    *&__p = objc_msgSend_tableUID(infoCopy, v16, v17, v18);
    __p._singleRange._begin = v19;
    TSCERangeRef::TSCERangeRef(&v174, &rangeCopy, &__p);
    v22 = objc_msgSend_initWithRangeRef_(v15, v20, &v174, v21);
    v26 = objc_msgSend_translator(infoCopy, v23, v24, v25);
    v170 = objc_msgSend_baseTractRefForViewTractRef_(v26, v27, v22, v28);
  }

  else
  {
    v170 = 0;
  }

  if (location == *MEMORY[0x277D81490] && length == *(MEMORY[0x277D81490] + 8))
  {
    v169 = 0;
  }

  else
  {
    v176.location = location;
    v176.length = length;
    TSUIndexRange::TSUIndexRange(&__p, v176);
    TSUIndexSet::TSUIndexSet(&v174, &__p);
    v172 = vdupq_n_s64(0x7FFFuLL);
    TSUIndexSet::TSUIndexSet(&__p, &v172);
    v30 = [TSCECellTractRef alloc];
    v172._begin = objc_msgSend_tableUID(infoCopy, v31, v32, v33);
    v172._end = v34;
    v35 = objc_msgSend_initWithColumns_rows_tableUID_(v30, v34, &__p, &v174, &v172);
    v39 = objc_msgSend_translator(infoCopy, v36, v37, v38);
    v169 = objc_msgSend_baseTractRefForViewTractRef_(v39, v40, v35, v41);

    TSUIndexSet::~TSUIndexSet(&__p);
    TSUIndexSet::~TSUIndexSet(&v174);
  }

  if (modelCopy)
  {
    v42 = objc_msgSend_tableStylePreset(modelCopy, v12, v13, v14);
    v46 = objc_msgSend_styleNetwork(v42, v43, v44, v45);
  }

  else
  {
    v47 = infoCopy;
    v42 = objc_msgSend_tableStylePreset(v47, v48, v49, v50);
    v53 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v51, v47, v52);
    v46 = objc_msgSend_networkForPivotTables(v53, v54, v55, v56);
  }

  v57 = objc_alloc(MEMORY[0x277D802E8]);
  v167 = objc_msgSend_initWithPosition_size_(v57, v58, v59, v60, 0.0, 0.0, 250.0, 120.0);
  v62 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v61, contextCopy, v167, 10, 6, v42, v46);
  v65 = v62;
  if (v62)
  {
    *(v62 + 220) = 1;
    v66 = objc_msgSend_pivotTableNameForSourceTable_(TSTTableInfo, v63, infoCopy, v64);
    objc_msgSend_setTableName_(v65, v67, v66, v68);

    objc_msgSend_setDefaultColumnWidth_(v65, v69, v70, v71, 80.0);
    v75 = objc_msgSend_exteriorTextWrap(infoCopy, v72, v73, v74);
    objc_msgSend_setExteriorTextWrap_(v65, v76, v75, v77);

    v81 = objc_msgSend_summaryModel(v65, v78, v79, v80);
    objc_msgSend_setCategoryColumnWidth_(v81, v82, v83, v84, 80.0);

    v85 = [TSTPivotTranslator alloc];
    v88 = objc_msgSend_initWithTableInfo_(v85, v86, v65, v87);
    v89 = *(v65 + 336);
    *(v65 + 336) = v88;

    v90 = [TSTColumnRowUIDMap alloc];
    v94 = objc_msgSend_context(v65, v91, v92, v93);
    memset(&v174, 0, 24);
    memset(&__p, 0, 24);
    v96 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v90, v95, v94, &v174, &__p);
    v97 = *(v65 + 296);
    *(v65 + 296) = v96;

    if (*&__p)
    {
      __p._singleRange._begin = __p;
      operator delete(*&__p);
    }

    if (*&v174)
    {
      v174._singleRange._begin = v174;
      operator delete(*&v174);
    }

    v101 = [TSTTableModel alloc];
    v102 = modelCopy;
    if (!modelCopy)
    {
      v102 = objc_msgSend_baseTableModel(infoCopy, v98, v99, v100);
    }

    inited = objc_msgSend_initAsPivotDataWithContext_tableInfo_sourceModel_sourceBody_sourceHeader_(v101, v98, contextCopy, v65, v102, v170, v169);
    v104 = *(v65 + 312);
    *(v65 + 312) = inited;

    if (!modelCopy)
    {
    }

    objc_msgSend_setStyleNetwork_(*(v65 + 312), v105, v46, v106);
    v107 = [TSTPivotRowColumnOrder alloc];
    v110 = objc_msgSend_initWithTableInfo_(v107, v108, v65, v109);
    v111 = *(v65 + 320);
    *(v65 + 320) = v110;

    v115 = objc_msgSend_baseTableModel(v65, v112, v113, v114);
    v119 = objc_msgSend_createPivotOwner(v115, v116, v117, v118);

    v123 = objc_msgSend_tableUID(infoCopy, v120, v121, v122);
    objc_msgSend_setPivotSourceTableUID_(v119, v124, v123, v124);
    v128 = objc_msgSend_tableName(infoCopy, v125, v126, v127);
    objc_msgSend_setPivotSourceTableName_(v119, v129, v128, v130);

    v131 = TSKMakeUIDStructRandom();
    objc_msgSend_setPivotDataRefreshUID_(v119, v132, v131, v132);
    v133 = objc_opt_new();
    objc_msgSend_timeIntervalSinceReferenceDate(v133, v134, v135, v136);
    objc_msgSend_setPivotDataRefreshTimestamp_(v119, v137, v138, v139);

    if (v170)
    {
      objc_msgSend_setPreserveFlags_(v170, v140, 15, v141);
      objc_msgSend_setPivotSourceBodyTract_(v119, v142, v170, v143);
    }

    if (v169)
    {
      objc_msgSend_setPreserveFlags_(v169, v140, 15, v141);
      objc_msgSend_setPivotSourceHeaderTract_(v119, v144, v169, v145);
    }

    v146 = objc_alloc_init(TSTGroupingColumnList);
    v147 = objc_alloc_init(TSTGroupingColumnList);
    v148 = [TSTColumnAggregateList alloc];
    v151 = objc_msgSend_initWithColumnAggregates_(v148, v149, MEMORY[0x277CBEBF8], v150);
    v152 = TSKMakeUIDStructRandom();
    v154 = v153;
    v155 = TSKMakeUIDStructRandom();
    objc_msgSend_applyPivotWithColumns_rows_aggregates_flatteningDimension_optionsMap_pivotRowColumnRuleChangeUid_pivotAggregateRuleChangeUid_(v65, v156, v146, v147, v151, 1, 0, v152, v154, v155, v156);

    objc_msgSend_resetCellsForNewPivotRules(v65, v157, v158, v159);
    objc_msgSend_commitPivotChanges(v65, v160, v161, v162);
    objc_msgSend_p_updateStorageParentInfoForModels(v65, v163, v164, v165);
  }

  return v65;
}

- (BOOL)hasUsefulPivotSourceCellsInBodyRange:(TSUCellRect)range
{
  rangeCopy = range;
  if (TSUCellRect::isValid(&rangeCopy))
  {
    v6 = [TSCECellTractRef alloc];
    v27._lower = objc_msgSend_tableUID(self, v7, v8, v9);
    v27._upper = v10;
    TSCERangeRef::TSCERangeRef(&v28, &rangeCopy, &v27);
    v13 = objc_msgSend_initWithRangeRef_(v6, v11, &v28, v12);
    v17 = objc_msgSend_translator(self, v14, v15, v16);
    v20 = objc_msgSend_baseTractRefForViewTractRef_(v17, v18, v13, v19);

    v21 = v20;
    hasUsefulPivotDataInSourceBodyTract = objc_msgSend_hasUsefulPivotDataInSourceBodyTract_(self->_tableModel, v22, v20, v23);
  }

  else
  {
    v21 = 0;
    hasUsefulPivotDataInSourceBodyTract = objc_msgSend_hasUsefulPivotDataInSourceBodyTract_(self->_tableModel, v4, 0, v5);
  }

  v25 = hasUsefulPivotDataInSourceBodyTract;

  return v25;
}

- (id)initAsDetailTableWithContext:(id)context sourcePivotTableInfo:(id)info pivotSourceCell:(TSUCellCoord)cell
{
  contextCopy = context;
  infoCopy = info;
  if ((objc_msgSend_isAPivotTable(infoCopy, v9, v10, v11) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableInfo initAsDetailTableWithContext:sourcePivotTableInfo:pivotSourceCell:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 648, 0, "Expect only pivotTable to be passed in.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_msgSend_tableStylePreset(infoCopy, v12, v13, v14);
  v28 = objc_msgSend_styleNetwork(v24, v25, v26, v27);
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = infoCopy;
  }

  v31 = v30;

  v130 = v31;
  v132 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v32, v31, v33);
  v34 = objc_alloc(MEMORY[0x277D802E8]);
  v131 = objc_msgSend_initWithPosition_size_(v34, v35, v36, v37, 0.0, 0.0, 250.0, 120.0);
  v41 = objc_msgSend_pivotDataModel(infoCopy, v38, v39, v40);
  v139.length = objc_msgSend_numberOfColumns(v41, v42, v43, v44);
  v139.location = 0;
  TSUIndexRange::TSUIndexRange(&v137, v139);
  TSUIndexSet::TSUIndexSet(&v138, &v137);
  TSUIndexSet::TSUIndexSet(&v137);
  if (cell.row != 0x7FFFFFFF && (*&cell & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v135 = 0;
    v136 = 0u;
    if (infoCopy)
    {
      objc_msgSend_cellUIDForCellID_(infoCopy, v45, *&cell, v47);
    }

    v48 = objc_msgSend_pivotOwner(infoCopy, v45, v46, v47);
    v52 = objc_msgSend_groupBySet(v48, v49, v50, v51);
    v56 = v52;
    if (v52)
    {
      objc_msgSend_pivotDataModelRowIndexesNeededForCell_(v52, v53, &v135, v55);
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v134);
    }

    v57 = objc_msgSend_hiddenStates(v56, v53, v54, v55);
    v61 = v57;
    if (v57)
    {
      v62 = objc_msgSend_hiddenRowIndexes(v57, v58, v59, v60);
      MEMORY[0x223D9F7A0](&v134, v62);
      TSUIndexSet::removeIndexes(&v137, &v134);
      TSUIndexSet::~TSUIndexSet(&v134);
    }
  }

  v135._begin = objc_msgSend_headerRowRange(v41, v45, v46, v47);
  v135._end = v63;
  v64 = TSUCellRect::rows(&v135);
  v66 = v65;
  v135._begin = objc_msgSend_footerRowRange(v41, v65, v67, v68);
  v135._end = v69;
  v70 = TSUCellRect::rows(&v135);
  v72 = v71;
  if (v66)
  {
    v140.location = v64;
    v140.length = v66;
    TSUIndexRange::TSUIndexRange(&v135, v140);
    TSUIndexSet::addIndexesInRange(&v137, &v135);
  }

  if (v72)
  {
    v141.location = v70;
    v141.length = v72;
    TSUIndexRange::TSUIndexRange(&v135, v141);
    TSUIndexSet::addIndexesInRange(&v137, &v135);
  }

  v73 = TSUIndexSet::count(&v138);
  v74 = TSUIndexSet::count(&v137);
  if (v73 <= 1)
  {
    v76 = 1;
  }

  else
  {
    v76 = v73;
  }

  if (v74 <= 1)
  {
    v77 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v75, contextCopy, v131, 1, v76, v24, v132);
  }

  else
  {
    v77 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(self, v75, contextCopy, v131, v74, v76, v24, v132);
  }

  v81 = v77;
  if (v77)
  {
    v82 = objc_msgSend_numberOfHeaderColumns(v41, v78, v79, v80);
    objc_msgSend_setNumberOfHeaderColumns_(v81, v83, v82, v84);
    v88 = objc_msgSend_numberOfHeaderRows(v41, v85, v86, v87);
    objc_msgSend_setNumberOfHeaderRows_(v81, v89, v88, v90);
    v94 = objc_msgSend_numberOfFooterRows(v41, v91, v92, v93);
    objc_msgSend_setNumberOfFooterRows_(v81, v95, v94, v96);
    objc_msgSend_setDefaultColumnWidth_(v81, v97, v98, v99, 80.0);
    v103 = objc_msgSend_exteriorTextWrap(infoCopy, v100, v101, v102);
    objc_msgSend_setExteriorTextWrap_(v81, v104, v103, v105);

    v109 = objc_msgSend_contentWritingDirection(infoCopy, v106, v107, v108);
    objc_msgSend_setContentWritingDirection_(v81, v110, v109, v111);
    v112 = TSUIndexSet::asNSIndexSet(&v138);
    v113 = TSUIndexSet::asNSIndexSet(&v137);
    v114 = objc_opt_new();
    v115 = [TSCEColumnRowIndexMapper alloc];
    inited = objc_msgSend_initAsCompressionMapForIndexes_(v115, v116, v113, v117);
    v120 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v119, v112, v113);
    v122 = objc_msgSend_pivotDetailTableNameFromSourcePivotTableInfo_pivotSourceCell_(TSTTableInfo, v121, infoCopy, *&cell);
    objc_msgSend_setTableName_(v81, v123, v122, v124);

    objc_msgSend_copyPivotDetailDataFromSourceModel_inSourceRegion_columnMapping_rowMapping_(v81[25], v125, v41, v120, v114, inited);
    objc_msgSend_p_updateStorageParentInfoForModels(v81, v126, v127, v128);
  }

  TSUIndexSet::~TSUIndexSet(&v137);
  TSUIndexSet::~TSUIndexSet(&v138);

  return v81;
}

- (TSTTableInfo)initWithContext:(id)context fromSourceInfo:(id)info cellRegion:(id)region waitForCalcEngine:(BOOL)engine flattenCategories:(int64_t)categories isSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  engineCopy = engine;
  contextCopy = context;
  infoCopy = info;
  regionCopy = region;
  v20 = objc_msgSend_range(infoCopy, v17, v18, v19);
  v22 = objc_msgSend_regionByIntersectingRange_(regionCopy, v21, v20, v21);

  if (snapshotCopy)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_isCategorized(infoCopy, v23, v24, v25))
  {
    if (categories)
    {
LABEL_4:
      v26 = objc_msgSend_boundingCellRange(v22, v23, v24, v25);
      objc_msgSend_boundingCellRange(v22, v27, v28, v29);
      v31 = v30 + WORD2(v26);
      if (v31 >= 0x3E8)
      {
        v31 = 1000;
      }

      v32 = HIDWORD(v30) + v26;
      if ((HIDWORD(v30) + v26) >= 0xF4240)
      {
        v32 = 1000000;
      }

      v33 = objc_msgSend_regionByIntersectingRange_(v22, v30, v26, (v31 - WORD2(v26)) | ((v32 - v26) << 32));
      v35 = objc_msgSend__initWithContext_flatteningFromComplexInfo_cellRegion_waitForCalcEngine_flatteningOptions_isSnapshot_(self, v34, contextCopy, infoCopy, v33, engineCopy, categories, snapshotCopy);

      goto LABEL_17;
    }
  }

  else
  {
    isAPivotTable = objc_msgSend_isAPivotTable(infoCopy, v23, v24, v25);
    if (categories)
    {
      v37 = isAPivotTable;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      goto LABEL_4;
    }
  }

  if ((objc_msgSend_isCategorized(infoCopy, v23, v24, v25) & 1) != 0 || objc_msgSend_isAPivotTable(infoCopy, v38, v39, v40))
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTTableInfo initWithContext:fromSourceInfo:cellRegion:waitForCalcEngine:flattenCategories:isSnapshot:]", v40);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v44);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 878, 0, "Copying a categorized table without flattening. If you know how you got here, please write a bug.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v47, v48, v49);
  }

  v35 = objc_msgSend__initWithContext_fromSourceInfo_cellRegion_tableModel_waitForCalcEngine_formulaCoordSpace_(self, v38, contextCopy, infoCopy, v22, 0, engineCopy, categories);
LABEL_17:

  return v35;
}

- (id)_initWithContext:(id)context flatteningFromComplexInfo:(id)info cellRegion:(id)region waitForCalcEngine:(BOOL)engine flatteningOptions:(int64_t)options isSnapshot:(BOOL)snapshot
{
  contextCopy = context;
  infoCopy = info;
  regionCopy = region;
  v20 = objc_msgSend_geometry(infoCopy, v17, v18, v19);
  v106.receiver = self;
  v106.super_class = TSTTableInfo;
  v21 = [(TSTTableInfo *)&v106 initWithContext:contextCopy geometry:v20];

  if (v21)
  {
    v25 = objc_msgSend_exteriorTextWrap(infoCopy, v22, v23, v24);
    v90 = contextCopy;
    objc_msgSend_setExteriorTextWrap_(v21, v26, v25, v27);

    if (!snapshot)
    {
      v31 = objc_msgSend_expandCellRegionToCoverMergedCells_(infoCopy, v28, regionCopy, v30);

      regionCopy = v31;
    }

    v89 = objc_msgSend_baseTableModel(infoCopy, v28, v29, v30);
    v35 = objc_msgSend_boundingCellRange(regionCopy, v32, v33, v34);
    v37 = v36;
    snapshotCopy = snapshot;
    v85 = v36;
    v45 = objc_msgSend_isRectangle(regionCopy, v36, v38, v39) && (v43 = objc_msgSend_range(infoCopy, v40, v41, v42), v35 == v43) && ((v43 ^ v35) & 0x101FFFF00000000) == 0 && v37 == v44;
    v21->_formulaCoordSpace = options;
    v87 = regionCopy;
    v49 = objc_msgSend_boundingCellRange(v87, v46, v47, v48);
    v51 = v50;
    engineCopy = engine;
    v88 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v50, v89, v53);
    v54 = [TSTTableModel alloc];
    v58 = objc_msgSend_tableStylePreset(v89, v55, v56, v57);
    v60 = objc_msgSend_initWithContext_rows_columns_styles_stylePreset_tableInfo_(v54, v59, v90, v51 >> 32, v51, v88, v58, v21);

    objc_msgSend_setStorageParentToInfo_(v60, v61, v21, v62, v60);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_2210F5F10;
    v91[3] = &unk_27845ECD8;
    v63 = v89;
    v92 = v63;
    v64 = v60;
    v93 = v64;
    v103 = engineCopy;
    v94 = infoCopy;
    v99 = v49;
    v100 = v51;
    v104 = v45;
    v95 = v87;
    v65 = v21;
    v96 = v65;
    v66 = v95;
    v97 = v66;
    v105 = snapshotCopy;
    v98 = v90;
    v101 = v35;
    v102 = v85;
    objc_msgSend_performBlockIgnoringModifications_(v65, v67, v91, v68);
    if ((objc_msgSend_isCategorized(v65, v69, v70, v71) & 1) != 0 || objc_msgSend_isAPivotTable(v65, v72, v73, v74))
    {
      v75 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "[TSTTableInfo _initWithContext:flatteningFromComplexInfo:cellRegion:waitForCalcEngine:flatteningOptions:isSnapshot:]", v74);
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v78);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v80, v76, v79, 1427, 0, "not expecting categorized or pivot table");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83);
    }

    regionCopy = v66;
    contextCopy = v90;
  }

  return v21;
}

- (id)_initWithContext:(id)context fromSourceInfo:(id)info cellRegion:(id)region tableModel:(id)model waitForCalcEngine:(BOOL)engine formulaCoordSpace:(int64_t)space
{
  engineCopy = engine;
  v205 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  infoCopy = info;
  regionCopy = region;
  modelCopy = model;
  v19 = objc_msgSend_geometry(infoCopy, v16, v17, v18);
  v203.receiver = self;
  v203.super_class = TSTTableInfo;
  v20 = [(TSTTableInfo *)&v203 initWithContext:contextCopy geometry:v19];

  if (v20)
  {
    v24 = objc_msgSend_exteriorTextWrap(infoCopy, v21, v22, v23);
    objc_msgSend_setExteriorTextWrap_(v20, v25, v24, v26);

    v188 = objc_msgSend_expandCellRegionToCoverMergedCells_(infoCopy, v27, regionCopy, v28);

    v20->_formulaCoordSpace = space;
    v35 = objc_alloc(objc_msgSend_tableModelClass(v20, v29, v30, v31));
    v36 = modelCopy;
    if (!modelCopy)
    {
      v36 = objc_msgSend_baseTableModel(infoCopy, v32, v33, v34);
    }

    v37 = objc_msgSend_initWithContext_fromSourceModel_region_tableInfo_waitForCalcEngine_formulaCoordSpace_(v35, v32, contextCopy, v36, v188, v20, engineCopy, v20->_formulaCoordSpace);
    tableModel = v20->_tableModel;
    v20->_tableModel = v37;

    if (!modelCopy)
    {
    }

    v184 = objc_msgSend_baseTableModel(infoCopy, v39, v40, v41);
    v45 = objc_msgSend_boundingCellRange(v188, v42, v43, v44);
    v47 = v46;
    v183 = objc_msgSend_isRectangle(v188, v46, v48, v49) && (v53 = objc_msgSend_range(v184, v50, v51, v52), v45 == v53) && ((v53 ^ v45) & 0x101FFFF00000000) == 0 && v47 == v50;
    v54 = objc_msgSend_hiddenStatesOwner(v20->_tableModel, v50, v51, v52);
    objc_msgSend_setTableModel_(v54, v55, v20->_tableModel, v56);

    v57 = [TSTHiddenStates alloc];
    v61 = objc_msgSend_hiddenStatesOwner(v20->_tableModel, v58, v59, v60);
    v64 = objc_msgSend_initWithHiddenStatesOwner_(v57, v62, v61, v63);
    hiddenStates = v20->_hiddenStates;
    v20->_hiddenStates = v64;

    objc_msgSend_setTableModel_(v20->_hiddenStates, v66, v20->_tableModel, v67);
    v68 = [TSTTablePartitioner alloc];
    v71 = objc_msgSend_initWithInfo_(v68, v69, v20, v70);
    partitioner = v20->_partitioner;
    v20->_partitioner = v71;

    layoutEngine = v20->_layoutEngine;
    v20->_layoutEngine = 0;

    v202[0] = 0;
    v202[1] = v202;
    v202[2] = 0x2020000000;
    v202[3] = 0;
    v201[0] = 0;
    v201[1] = v201;
    v201[2] = 0x2020000000;
    v201[3] = 0;
    v199 = objc_msgSend_range(v20->_tableModel, v74, v75, v76);
    v200 = v77;
    v196[0] = MEMORY[0x277D85DD0];
    v196[1] = 3221225472;
    v196[2] = sub_2210F938C;
    v196[3] = &unk_27845EC88;
    v198 = v202;
    v78 = v20;
    v197 = v78;
    sub_22109D0C8(&v199, v196);
    v199 = objc_msgSend_range(v20->_tableModel, v79, v80, v81);
    v200 = v82;
    v193[0] = MEMORY[0x277D85DD0];
    v193[1] = 3221225472;
    v193[2] = sub_2210F93DC;
    v193[3] = &unk_27845ECB0;
    v195 = v201;
    v83 = v78;
    v194 = v83;
    sub_22109D1B8(&v199, v193);
    v84 = objc_alloc(MEMORY[0x277D802E8]);
    v88 = objc_msgSend_geometry(infoCopy, v85, v86, v87);
    objc_msgSend_position(v88, v89, v90, v91);
    v185 = objc_msgSend_initWithPosition_size_(v84, v92, v93, v94);

    objc_msgSend_setPrimitiveGeometry_(v83, v95, v185, v96);
    v100 = objc_msgSend_columnRowUIDMap(v20->_tableModel, v97, v98, v99);
    columnRowUIDMap = v83->_columnRowUIDMap;
    v83->_columnRowUIDMap = v100;

    v102 = [TSTSummaryModel alloc];
    v105 = objc_msgSend_initWithTableInfo_(v102, v103, v83, v104);
    summaryModel = v83->_summaryModel;
    v83->_summaryModel = v105;

    v107 = [TSTCategoryOrder alloc];
    v110 = objc_msgSend_initWithTableInfo_(v107, v108, v83, v109);
    categoryOrder = v83->_categoryOrder;
    v83->_categoryOrder = v110;

    v115 = objc_msgSend_baseTableModel(v83, v112, v113, v114);
    v119 = objc_msgSend_categoryOwner(v115, v116, v117, v118);

    v122 = objc_msgSend_groupByForOwnerIndex_(v119, v120, 8, v121);
    groupBy = v83->_groupBy;
    v83->_groupBy = v122;

    if (!v83->_groupBy)
    {
      v124 = [TSTGroupBy alloc];
      v126 = objc_msgSend_initWithGroupings_categoryOwner_(v124, v125, MEMORY[0x277CBEBF8], v119);
      v127 = v83->_groupBy;
      v83->_groupBy = v126;

      objc_msgSend_linkGroupBy_(v119, v128, v83->_groupBy, v129);
    }

    v130 = [TSTTableTranslator alloc];
    v133 = objc_msgSend_initWithTableInfo_(v130, v131, v83, v132);
    translator = v83->_translator;
    v83->_translator = v133;

    v138 = objc_msgSend_hiddenStates(infoCopy, v135, v136, v137);
    objc_msgSend_copyFromHiddenStates_forRange_withContext_isWholeTableCopy_(v20->_hiddenStates, v139, v138, v45, v47, contextCopy, v183);
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v143 = objc_msgSend_allRichTextStorages(v83, v140, v141, v142);
    v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v144, &v189, v204, 16);
    if (v147)
    {
      v148 = *v190;
      do
      {
        v149 = 0;
        do
        {
          if (*v190 != v148)
          {
            objc_enumerationMutation(v143);
          }

          objc_msgSend_setParentInfo_(*(*(&v189 + 1) + 8 * v149++), v145, v83, v146);
        }

        while (v147 != v149);
        v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v145, &v189, v204, 16);
      }

      while (v147);
    }

    objc_msgSend_p_updateStorageParentInfoForModels(v83, v150, v151, v152);
    v156 = objc_msgSend_translator(v83, v153, v154, v155);
    objc_msgSend_addReceiverToGroupBy_(v156, v157, v83->_groupBy, v158);

    v162 = objc_msgSend_summaryModel(v83, v159, v160, v161);
    objc_msgSend_setupReceiver(v162, v163, v164, v165);

    objc_msgSend__correctAndCheckStateSuppressingAssertions_(v83, v166, 0, v167);
    if (objc_msgSend_isCategorized(v83, v168, v169, v170))
    {
      v173 = MEMORY[0x277D81150];
      v174 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v171, "[TSTTableInfo _initWithContext:fromSourceInfo:cellRegion:tableModel:waitForCalcEngine:formulaCoordSpace:]", v172);
      v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v175, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v176);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v173, v178, v174, v177, 1517, 0, "not expecting a categorized table");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v179, v180, v181);
    }

    _Block_object_dispose(v201, 8);
    _Block_object_dispose(v202, 8);
  }

  else
  {
    v188 = regionCopy;
  }

  return v20;
}

- (void)releaseLayoutEngine
{
  layoutEngine = self->_layoutEngine;
  if (layoutEngine)
  {
    objc_msgSend_setTableInfo_(layoutEngine, a2, 0, v2);
    v5 = self->_layoutEngine;
    self->_layoutEngine = 0;
  }
}

- (void)willClose
{
  objc_msgSend_setDocumentIsClosing_(self, a2, 1, v2);
  objc_msgSend_clearPartitioner(self, v4, v5, v6);

  objc_msgSend_releaseLayoutEngine(self, v7, v8, v9);
}

- (void)dealloc
{
  objc_msgSend_teardown(self->_translator, a2, v2, v3);
  v8 = objc_msgSend_categoryOwner(self->_tableModel, v5, v6, v7);
  objc_msgSend_teardown(v8, v9, v10, v11);

  objc_msgSend_releaseLayoutEngine(self, v12, v13, v14);
  v15.receiver = self;
  v15.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v15 dealloc];
}

- (id)replicateForReinsertion
{
  v3 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_context(self, v4, v5, v6);
  v11 = objc_msgSend_range(self, v8, v9, v10);
  v13 = objc_msgSend_regionFromRange_(TSTCellRegion, v12, v11, v12);
  isSnapshot = objc_msgSend_initWithContext_fromSourceInfo_cellRegion_waitForCalcEngine_flattenCategories_isSnapshot_(v3, v14, v7, self, v13, 0, 0, 0);

  if (isSnapshot)
  {
    v19 = objc_msgSend_exteriorTextWrap(self, v16, v17, v18);
    v23 = objc_msgSend_copy(v19, v20, v21, v22);
    v24 = *MEMORY[0x277D80428];
    v25 = *&isSnapshot[v24];
    *&isSnapshot[v24] = v23;

    isSnapshot[*MEMORY[0x277D80438]] = *(&self->super.super.super.isa + *MEMORY[0x277D80438]);
    isSnapshot[*MEMORY[0x277D80400]] = *(&self->super.super.super.isa + *MEMORY[0x277D80400]);
    v26 = *MEMORY[0x277D80430];
    v30 = objc_msgSend_copy(*(&self->super.super.super.isa + v26), v27, v28, v29);
    v31 = *&isSnapshot[v26];
    *&isSnapshot[v26] = v30;

    v32 = *MEMORY[0x277D803F8];
    v36 = objc_msgSend_copy(*(&self->super.super.super.isa + v32), v33, v34, v35);
    v37 = *&isSnapshot[v32];
    *&isSnapshot[v32] = v36;

    v38 = *MEMORY[0x277D80420];
    v42 = objc_msgSend_copy(*(&self->super.super.super.isa + v38), v39, v40, v41);
    v43 = *&isSnapshot[v38];
    *&isSnapshot[v38] = v42;

    objc_msgSend_setParent_(*&isSnapshot[v38], v44, isSnapshot, v45);
    v46 = *MEMORY[0x277D80440];
    v50 = objc_msgSend_copy(*(&self->super.super.super.isa + v46), v47, v48, v49);
    v51 = *&isSnapshot[v46];
    *&isSnapshot[v46] = v50;

    v52 = *MEMORY[0x277D80408];
    v56 = objc_msgSend_replicateForReinsertion(*(&self->super.super.super.isa + v52), v53, v54, v55);
    v57 = *&isSnapshot[v52];
    *&isSnapshot[v52] = v56;

    objc_msgSend_setParentInfo_(*&isSnapshot[v52], v58, isSnapshot, v59);
    isSnapshot[*MEMORY[0x277D80410]] = *(&self->super.super.super.isa + *MEMORY[0x277D80410]);
    v60 = *MEMORY[0x277D80448];
    v64 = objc_msgSend_replicateForReinsertion(*(&self->super.super.super.isa + v60), v61, v62, v63);
    v65 = *&isSnapshot[v60];
    *&isSnapshot[v60] = v64;

    objc_msgSend_setParentInfo_(*&isSnapshot[v60], v66, isSnapshot, v67);
    isSnapshot[*MEMORY[0x277D80450]] = *(&self->super.super.super.isa + *MEMORY[0x277D80450]);
    v68 = *MEMORY[0x277D80418];
    v69 = *(&self->super.super.super.isa + v68);
    v73 = objc_msgSend_context(self, v70, v71, v72);
    v76 = objc_msgSend_copyWithContext_(v69, v74, v73, v75);
    v77 = *&isSnapshot[v68];
    *&isSnapshot[v68] = v76;

    v78 = *MEMORY[0x277D80458];
    v79 = *(&self->super.super.super.isa + v78);
    v83 = objc_msgSend_context(self, v80, v81, v82);
    v86 = objc_msgSend_copyWithContext_(v79, v84, v83, v85);
    v87 = *&isSnapshot[v78];
    *&isSnapshot[v78] = v86;
  }

  return isSnapshot;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v8 = objc_msgSend_objectUUID(self, v5, v6, v7);
  v22._lower = objc_msgSend_tableUID(self, v9, v10, v11);
  v22._upper = v12;
  v13 = TSKUIDStruct::description(&v22);
  v17 = objc_msgSend_tableName(self, v14, v15, v16);
  v20 = objc_msgSend_stringWithFormat_(v3, v18, @"%@ %p: %@ (tableUID: %@ tableName: %@)", v19, v4, self, v8, v13, v17);

  return v20;
}

- (void)setupTableModelForPrototypeIndex:(int64_t)index forTableInsertOnly:(BOOL)only
{
  onlyCopy = only;
  if (index <= 3)
  {
    if (index)
    {
      if (index != 1)
      {
        if (index == 3)
        {
          objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, only);
          objc_msgSend_setNumberOfHeaderColumns_(self, v7, 1, v8);
          objc_msgSend_setNumberOfFooterRows_(self, v9, 1, v10);
        }

        goto LABEL_15;
      }

LABEL_10:
      objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, only);
      goto LABEL_15;
    }

    objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, only);
LABEL_14:
    objc_msgSend_setNumberOfHeaderColumns_(self, v16, 1, v17);
    goto LABEL_15;
  }

  switch(index)
  {
    case 4:
      goto LABEL_10;
    case 5:
      objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, only);
      if (onlyCopy)
      {
        objc_msgSend_setNumberOfHeaderColumns_(self, v16, 2, v17);
        break;
      }

      goto LABEL_14;
    case 6:
      objc_msgSend_setNumberOfHeaderRows_(self, a2, 1, only);
      objc_msgSend_setNumberOfHeaderColumns_(self, v11, 1, v12);
      objc_msgSend_p_setupTableModelforNewForm(self, v13, v14, v15);
      break;
  }

LABEL_15:
  v18 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, index, only);
  if (objc_msgSend_headersFrozenByDefault(v18, v19, v20, v21))
  {
    objc_msgSend_setHeaderRowsFrozen_(self, v22, 1, v23);
    objc_msgSend_setHeaderColumnsFrozen_(self, v24, 1, v25);
  }

  objc_msgSend_setRepeatingHeaderRowsEnabled_(self, v22, 1, v23);
  objc_msgSend_setRepeatingHeaderColumnsEnabled_(self, v26, 1, v27);
  if (index == 5)
  {
    if (onlyCopy)
    {
      objc_msgSend_p_setupTableModelforStockPrototype(self, v28, v29, v30);
    }

    else
    {
      objc_msgSend_p_setupTableModelforStockSwatch(self, v28, v29, v30);
    }
  }

  else if (index == 4)
  {
    v31 = objc_msgSend_numberOfRows(self, v28, v29, v30);
    v35 = objc_msgSend_newCell(self, v32, v33, v34);
    v39 = objc_msgSend_checkboxFormat(MEMORY[0x277D80680], v36, v37, v38);
    objc_msgSend_setCurrentFormat_isExplicit_(v35, v40, v39, 1);

    v44 = objc_msgSend_toggleControlSpec(TSTCellToggleControlSpec, v41, v42, v43);
    objc_msgSend_setCellSpec_(v35, v45, v44, v46);

    objc_msgSend_setBoolValue_(v35, v47, 0, v48);
    objc_msgSend_setWidth_ofColumnAtIndex_(self, v49, 1, v50, 147.0);
    objc_msgSend_setWidth_ofColumnAtIndex_(self, v51, 0, v52, 49.0);
    if (v31 >= 2)
    {
      v55 = v31;
      for (i = 1; i != v55; ++i)
      {
        objc_msgSend_cellUIDForCellID_(self, v53, i, v54, 0, 0, 0, 0);
        v60 = objc_msgSend_translator(self, v57, v58, v59);
        objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v60, v61, v35, &v62, 0, 0);
      }
    }
  }
}

+ (id)localizedDescriptionForProtoIndex:(unint64_t)index
{
  if (index > 2)
  {
    switch(index)
    {
      case 3uLL:
        v5 = sub_2214AAEA8(self, a2, 3, v3);
        v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v10, @"Headers and footers table", &stru_2834BADA0, @"TSTables");
        goto LABEL_15;
      case 4uLL:
        v5 = sub_2214AAEA8(self, a2, 4, v3);
        v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v22, @"Checklist table", &stru_2834BADA0, @"TSTables");
        goto LABEL_15;
      case 5uLL:
        v5 = sub_2214AAEA8(self, a2, 5, v3);
        v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v8, @"Stocks table", &stru_2834BADA0, @"TSTables");
        goto LABEL_15;
    }

LABEL_12:
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTTableInfo localizedDescriptionForProtoIndex:]", v3);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1706, 0, "No description for table proto index: %lu", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v20 = 0;
    goto LABEL_16;
  }

  if (!index)
  {
    v5 = sub_2214AAEA8(self, a2, 0, v3);
    v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v9, @"Headers table", &stru_2834BADA0, @"TSTables");
    goto LABEL_15;
  }

  if (index == 1)
  {
    v5 = sub_2214AAEA8(self, a2, 1, v3);
    v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v21, @"Basic table", &stru_2834BADA0, @"TSTables");
    goto LABEL_15;
  }

  if (index != 2)
  {
    goto LABEL_12;
  }

  v5 = sub_2214AAEA8(self, a2, 2, v3);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"Plain table", &stru_2834BADA0, @"TSTables");
LABEL_15:
  v20 = v7;

LABEL_16:

  return v20;
}

+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)index
{
  v5 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, index, v3);
  v9 = v5;
  if (index == 6)
  {
    v10 = 4;
  }

  else if (objc_msgSend_createLargeDefaultTables(v5, v6, v7, v8))
  {
    v10 = 10;
  }

  else
  {
    v10 = 5;
  }

  return v10;
}

+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)index
{
  v5 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, index, v3);
  if (objc_msgSend_createLargeDefaultTables(v5, v6, v7, v8))
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  if (index == 6)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  if (index == 5)
  {
    v11 = 6;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

+ (id)geometryForPrototypeIndex:(int64_t)index withCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9 = objc_msgSend_numberOfRowsForProtoIndex_(self, a2, index, v4);
  v12 = objc_msgSend_numberOfColumnsForProtoIndex_(self, v10, index, v11) * 98.0;
  v13 = objc_alloc(MEMORY[0x277D802E8]);
  v17 = objc_msgSend_initWithPosition_size_(v13, v14, v15, v16, x - v12 * 0.5, y - v9 * 22.0 * 0.5, v12, v9 * 22.0);

  return v17;
}

+ (id)tablePrototypeWithIndex:(int64_t)index context:(id)context geometry:(id)geometry stylePreset:(id)preset
{
  contextCopy = context;
  geometryCopy = geometry;
  presetCopy = preset;
  v12 = objc_opt_class();
  v14 = objc_msgSend_tablePrototypeWithIndex_context_geometry_stylePreset_forTableInsertOnly_(v12, v13, index, contextCopy, geometryCopy, presetCopy, 0);

  return v14;
}

+ (id)tablePrototypeWithIndex:(int64_t)index context:(id)context geometry:(id)geometry stylePreset:(id)preset forTableInsertOnly:(BOOL)only
{
  onlyCopy = only;
  contextCopy = context;
  geometryCopy = geometry;
  presetCopy = preset;
  v17 = objc_msgSend_numberOfRowsForProtoIndex_(self, v15, index, v16);
  v20 = objc_msgSend_numberOfColumnsForProtoIndex_(self, v18, index, v19);
  v21 = objc_alloc(objc_opt_class());
  v25 = objc_msgSend_styleNetwork(presetCopy, v22, v23, v24);
  v27 = objc_msgSend_initWithContext_geometry_rows_columns_stylePreset_styles_(v21, v26, contextCopy, geometryCopy, v17, v20, presetCopy, v25);

  objc_msgSend_setupTableModelForPrototypeIndex_forTableInsertOnly_(v27, v28, index, onlyCopy);

  return v27;
}

+ (id)tableInfoForTableUID:(TSKUIDStruct)d withCalcEngine:(id)engine
{
  dCopy = d;
  v4 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, a2, &dCopy, engine);
  v8 = objc_msgSend_tableInfo(v4, v5, v6, v7);

  return v8;
}

- (void)p_setupTableModelforNewForm
{
  objc_msgSend_rowUIDForRowIndex_(self, a2, 0, v2);
  v7 = objc_msgSend_columnUIDs(self, v4, v5, v6);
  v64 = 0;
  v65 = 0;
  __p = 0;
  sub_221086EBC(&__p, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 4);
  v11 = objc_msgSend_newCell(self, v8, v9, v10);
  v15 = objc_msgSend_documentRoot(self, v12, v13, v14);
  v19 = objc_msgSend_documentLocale(v15, v16, v17, v18);

  objc_msgSend_columnUIDForColumnIndex_(self, v20, 0, v21);
  objc_msgSend_clear(v11, v22, v23, v24);
  v26 = objc_msgSend_localizedStringForKey_value_table_(v19, v25, @"Field 1", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v11, v27, v26, v28);

  v32 = objc_msgSend_translator(self, v29, v30, v31);
  TSTMakeCellUID(v62);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v32, v33, v11, v62, 0, 0);

  objc_msgSend_columnUIDForColumnIndex_(self, v34, 1, v35);
  objc_msgSend_clear(v11, v36, v37, v38);
  v40 = objc_msgSend_localizedStringForKey_value_table_(v19, v39, @"Field 2", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v11, v41, v40, v42);

  v46 = objc_msgSend_translator(self, v43, v44, v45);
  TSTMakeCellUID(v62);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v46, v47, v11, v62, 0, 0);

  objc_msgSend_columnUIDForColumnIndex_(self, v48, 2, v49);
  objc_msgSend_clear(v11, v50, v51, v52);
  v54 = objc_msgSend_localizedStringForKey_value_table_(v19, v53, @"Field 3", &stru_2834BADA0, @"TSTables");
  objc_msgSend_setStringValue_(v11, v55, v54, v56);

  v60 = objc_msgSend_translator(self, v57, v58, v59);
  TSTMakeCellUID(v62);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v60, v61, v11, v62, 0, 0);

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }
}

- (void)p_setupTableModelforStockSwatch
{
  objc_msgSend_columnUIDForColumnIndex_(self, a2, 1, v2);
  objc_msgSend_columnUIDForColumnIndex_(self, v4, 2, v5);
  objc_msgSend_columnUIDForColumnIndex_(self, v6, 3, v7);
  v11 = objc_msgSend_newCell(self, v8, v9, v10);
  v15 = objc_msgSend_newCell(self, v12, v13, v14);
  objc_msgSend_p_setFillOnCell_positive_(self, v16, v11, 1);
  objc_msgSend_p_setFillOnCell_positive_(self, v17, v15, 0);
  v21 = objc_msgSend_rowUIDs(self, v18, v19, v20);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  sub_221086EBC(&v55, *v21, *(v21 + 8), (*(v21 + 8) - *v21) >> 4);
  v24 = v55;
  v23 = v56;
  if (v55 != v56)
  {
    do
    {
      v25 = objc_msgSend_rowIndexForRowUID_(self, v22, *v24, v24[1]);
      if (v25 >= objc_msgSend_numberOfHeaderRows(self, v26, v27, v28))
      {
        objc_msgSend_translator(self, v22, v29, v30);
        if (v25)
          v43 = {;
          TSTMakeCellUID(v54);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v43, v44, v11, v54, 0, 0);

          v48 = objc_msgSend_translator(self, v45, v46, v47);
          TSTMakeCellUID(v54);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v48, v49, v15, v54, 0, 0);

          v41 = objc_msgSend_translator(self, v50, v51, v52);
          TSTMakeCellUID(v54);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v41, v53, v11, v54, 0, 0);
        }

        else
          v31 = {;
          TSTMakeCellUID(v54);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v31, v32, v15, v54, 0, 0);

          v36 = objc_msgSend_translator(self, v33, v34, v35);
          TSTMakeCellUID(v54);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v36, v37, v11, v54, 0, 0);

          v41 = objc_msgSend_translator(self, v38, v39, v40);
          TSTMakeCellUID(v54);
          objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(v41, v42, v15, v54, 0, 0);
        }
      }

      v24 += 2;
    }

    while (v24 != v23);
    v24 = v55;
  }

  if (v24)
  {
    v56 = v24;
    operator delete(v24);
  }
}

- (void)p_setFormulaWithSymbolString:(id)string atCellID:(TSUCellCoord)d
{
  stringCopy = string;
  v7 = sub_2212199B4(26);
  TSCEFormulaCreationMagic::STOCK(&v14, stringCopy, v7);
  v8 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v13, &v14);
  v11 = objc_msgSend_initWithCreator_(v8, v9, &v13, v10);

  objc_msgSend_p_setFormula_atCellID_(self, v12, v11, *&d);
}

- (void)p_setFormula:(id)formula atCellID:(TSUCellCoord)d
{
  formulaCopy = formula;
  v10 = objc_msgSend_newCell(self, v7, v8, v9);
  if (objc_msgSend_getCell_atCellID_(self, v11, v10, *&d))
  {
    objc_msgSend_clear(v10, v12, v13, v14);
  }

  if ((objc_msgSend_hasFormula(v10, v12, v13, v14) & 1) == 0)
  {
    objc_msgSend_clearValue(v10, v15, v16, v17);
  }

  objc_msgSend_setFormulaSyntaxError_(v10, v15, 0, v17);
  objc_msgSend_setFormulaObject_(v10, v18, formulaCopy, v19);
  objc_msgSend_cellUIDForCellID_(self, v20, *&d, v21, 0, 0, 0, 0);
  objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(self, v22, v10, &v23, 0, 0);
}

- (void)p_setFillOnCell:(id)cell positive:(BOOL)positive
{
  positiveCopy = positive;
  cellCopy = cell;
  if (positiveCopy)
  {
    objc_msgSend_p_positiveImageFill(self, v6, v7, v8);
  }

  else
  {
    objc_msgSend_p_negativeImageFill(self, v6, v7, v8);
  }
  v9 = ;
  v13 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v10, v11, v12);
  objc_msgSend_setObject_forProperty_(v13, v14, v9, 898);
  v15 = [TSTCellStyle alloc];
  v19 = objc_msgSend_context(self, v16, v17, v18);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v15, v20, v19, 0, v13, 0);
  objc_msgSend_setCellStyle_(cellCopy, v22, isVariation, v23);
}

- (id)p_fillResourceWithFilename:(id)filename
{
  filenameCopy = filename;
  if (qword_27CFB51B0 != -1)
  {
    sub_2216F6508();
  }

  v8 = objc_msgSend_context(self, v4, v5, v6);
  if (v8)
  {
    os_unfair_lock_lock(&dword_27CFB51A8);
    v13 = objc_msgSend_objectForKey_(qword_27CFB51A0, v9, v8, v10);
    if (!v13)
    {
      v14 = objc_alloc(MEMORY[0x277CBEB38]);
      v13 = objc_msgSend_initWithCapacity_(v14, v15, 2, v16);
      objc_msgSend_setObject_forKey_(qword_27CFB51A0, v17, v13, v8);
    }

    v21 = objc_msgSend_objectForKeyedSubscript_(v13, v11, filenameCopy, v12);
    if (!v21)
    {
      v22 = sub_2214AAEA8(0, v18, v19, v20);
      v26 = objc_msgSend_resourceURL(v22, v23, v24, v25);
      v29 = objc_msgSend_URLByAppendingPathComponent_(v26, v27, filenameCopy, v28);

      v31 = objc_msgSend_dataFromURL_context_(MEMORY[0x277D80828], v30, v29, v8);
      v32 = objc_alloc(MEMORY[0x277D802C0]);
      v21 = objc_msgSend_initWithImageData_technique_tintColor_size_(v32, v33, v31, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
      objc_msgSend_setObject_forKeyedSubscript_(v13, v34, v21, filenameCopy);
    }

    os_unfair_lock_unlock(&dword_27CFB51A8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)additionalObjectsToCopy
{
  v6 = objc_msgSend_tableStylePreset(self, a2, v2, v3);
  if (v6)
  {
    v7 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v4, v6, v5);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)componentRootObject
{
  v4 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v8 = objc_msgSend_calculationEngine(v4, v5, v6, v7);

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableInfo componentRootObject]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 2101, 0, "Component root object is nil!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  return v8;
}

- (void)shiftGeometryToIncludeTableNameHeight
{
  v39 = objc_msgSend_geometry(self, a2, v2, v3);
  if (objc_msgSend_tableNameEnabled(self, v5, v6, v7))
  {
    v11 = objc_msgSend_layoutEngine(self, v8, v9, v10);
    objc_msgSend_tableNameTextSize(v11, v12, v13, v14);
    v16 = v15;

    v17 = objc_alloc(MEMORY[0x277D802E8]);
    objc_msgSend_position(v39, v18, v19, v20);
    v22 = v21;
    objc_msgSend_position(v39, v23, v24, v25);
    v27 = v26;
    objc_msgSend_size(v39, v28, v29, v30);
    v36 = objc_msgSend_initWithPosition_size_(v17, v31, v32, v33, v22, v27 - v16, v34, v35);
    objc_msgSend_setPrimitiveGeometry_(self, v37, v36, v38);
  }
}

- (BOOL)isSafeToConvertToImageForImagePaste
{
  v5 = objc_msgSend_range(self, a2, v2, v3);
  if (objc_msgSend_isSingleCellOrMergeRange_(self, v6, v5, v6))
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_isSafeToConvertToImage, v7, v8);
}

- (void)clearPartitioner
{
  partitioner = self->_partitioner;
  self->_partitioner = 0;
}

- (id)p_layoutEngineCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  layoutEngine = selfCopy->_layoutEngine;
  if (layoutEngine)
  {
    v6 = 1;
  }

  else
  {
    v6 = !neededCopy;
  }

  if (!v6)
  {
    v7 = [TSTLayoutEngine alloc];
    v11 = objc_msgSend_archivedLayoutEngineBundle(selfCopy, v8, v9, v10);
    v13 = objc_msgSend_initWithInfo_layoutEngineBundle_(v7, v12, selfCopy, v11);
    v14 = selfCopy->_layoutEngine;
    selfCopy->_layoutEngine = v13;

    v18 = objc_msgSend_documentRoot(selfCopy, v15, v16, v17);
    v22 = objc_msgSend_changeNotifier(v18, v19, v20, v21);
    objc_msgSend_setChangeNotifier_(selfCopy->_layoutEngine, v23, v22, v24);

    layoutEngine = selfCopy->_layoutEngine;
  }

  v25 = layoutEngine;
  objc_sync_exit(selfCopy);

  return v25;
}

- (BOOL)supportsRichTextUndoAtCellID:(TSUCellCoord)d
{
  if (objc_msgSend_hasActiveFilters(self, a2, *&d, v3))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isCategoryGroupValueCell_(self, v6, *&d, v7) ^ 1;
  }
}

- (BOOL)isReimportable
{
  v5 = objc_msgSend_textImportRecord(self, a2, v2, v3);
  if (objc_msgSend_isReimportable(v5, v6, v7, v8) && (objc_msgSend_isLocked(self, v9, v10, v11) & 1) == 0)
  {
    v16 = objc_msgSend_context(self, v12, v13, v14);
    v15 = objc_msgSend_isInReadOnlyMode(v16, v17, v18, v19) ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)isNewlyImported
{
  v4 = objc_msgSend_textImportRecord(self, a2, v2, v3);
  v8 = objc_msgSend_importDate(v4, v5, v6, v7);

  objc_msgSend_timeIntervalSinceNow(v8, v9, v10, v11);
  LOBYTE(v4) = v12 > -300.0;

  return v4;
}

- (void)p_updateStorageParentInfoForModels
{
  v17 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  objc_msgSend_setStorageParentToInfo_(v17, v5, self, v6);

  v18 = objc_msgSend_summaryModel(self, v7, v8, v9);
  objc_msgSend_setStorageParentToInfo_(v18, v10, self, v11);

  v19 = objc_msgSend_pivotDataModel(self, v12, v13, v14);
  objc_msgSend_setStorageParentToInfo_(v19, v15, self, v16);
}

- (TSKUIDStruct)tableUID
{
  v4 = objc_msgSend_tableUID(self->_tableModel, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)fromTableUID
{
  v4 = objc_msgSend_fromTableUID(self->_tableModel, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)fromGroupByUID
{
  v4 = objc_msgSend_fromGroupByUID(self->_tableModel, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (NSUUID)nsTableUID
{
  v7._lower = objc_msgSend_tableUID(self, a2, v2, v3);
  v7._upper = v4;
  v5 = TSKUIDStruct::NSUUIDValue(&v7);

  return v5;
}

- (NSUUID)nsFilteringTableUID
{
  v7._lower = objc_msgSend_filteringTableUID(self, a2, v2, v3);
  v7._upper = v4;
  v5 = TSKUIDStruct::NSUUIDValue(&v7);

  return v5;
}

- (TSKUIDStruct)pivotSourceTableUID
{
  if (self->_pivotDataModel)
  {
    v4 = objc_msgSend_pivotOwner(self, a2, v2, v3);
    v8 = objc_msgSend_pivotSourceTableUID(v4, v5, v6, v7);
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (NSUUID)pivotSourceNSTableUID
{
  v7._lower = objc_msgSend_pivotSourceTableUID(self, a2, v2, v3);
  v7._upper = v4;
  v5 = TSKUIDStruct::NSUUIDValue(&v7);

  return v5;
}

- (NSString)pivotSourceTableName
{
  if (self->_pivotDataModel)
  {
    v4 = objc_msgSend_pivotOwner(self, a2, v2, v3);
    v8 = objc_msgSend_pivotSourceTableName(v4, v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TSTTableInfo)pivotSourceTableInfo
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    v8 = objc_msgSend_pivotSourceTableUID(self, v5, v6, v7);
    v12 = objc_msgSend_calcEngine(self, v9, v10, v11, v8, v9);
    v14 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v13, &v20, v12);

    v18 = objc_msgSend_tableInfo(v14, v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)pivotTableCanBeRefreshed
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    v8 = objc_msgSend_pivotSourceTableInfo(self, v5, v6, v7);

    if (v8)
    {
      v12 = objc_msgSend_pivotOwner(self, v9, v10, v11);
      v16 = objc_msgSend_pivotSourceBodyTract(v12, v13, v14, v15);

      if (v16)
      {
        LOBYTE(v8) = objc_msgSend_isValid(v16, v17, v18, v19);
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)pivotSourceIsRangeBased
{
  if (!self->_pivotDataModel)
  {
    return 0;
  }

  v4 = objc_msgSend_pivotOwner(self, a2, v2, v3);
  v8 = objc_msgSend_pivotSourceBodyTract(v4, v5, v6, v7);
  v9 = v8 != 0;

  return v9;
}

- (NSString)pivotSourceRangeName
{
  v4 = objc_msgSend_pivotOwner(self, a2, v2, v3);
  v8 = objc_msgSend_pivotSourceRangeName(v4, v5, v6, v7);

  return v8;
}

+ (id)pivotDetailTableNameFromSourcePivotTableInfo:(id)info pivotSourceCell:(TSUCellCoord)cell
{
  infoCopy = info;
  v9 = objc_msgSend_objectLocale(infoCopy, v6, v7, v8);
  v13 = objc_msgSend_pivotOwner(infoCopy, v10, v11, v12);
  v17 = objc_msgSend_groupBySet(v13, v14, v15, v16);

  v23 = objc_msgSend_tableName(infoCopy, v18, v19, v20);
  if (infoCopy)
  {
    objc_msgSend_cellUIDForCellID_(infoCopy, v21, *&cell, v22);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  v24 = objc_msgSend_descriptionForPivotBodyCellForUidCoord_(v17, v21, v32, v22);
  v25 = MEMORY[0x277CCACA8];
  v27 = sub_2211310B0(v9, v26);
  v30 = objc_msgSend_stringWithFormat_(v25, v28, v27, v29, v23, v24, &stru_2834BADA0);

  return v30;
}

- (TSKUIDStruct)filteringTableUID
{
  if (self->_pivotDataModel)
  {
    self = self->_pivotDataModel;
  }

  v4 = objc_msgSend_tableUID(self, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v4 = objc_msgSend_tableRangeCoordinate(self->_tableModel, a2, v2, v3);
  result._bottomRight = v5;
  result._topLeft = v4;
  return result;
}

- (BOOL)shouldUseWideRows
{
  if (objc_msgSend_shouldUseWideRows(self->_tableModel, a2, v2, v3))
  {
    return 1;
  }

  summaryModel = self->_summaryModel;

  return objc_msgSend_shouldUseWideRows(summaryModel, v5, v6, v7);
}

- (void)setShouldUseWideRows:(BOOL)rows
{
  rowsCopy = rows;
  objc_msgSend_setShouldUseWideRows_(self->_tableModel, a2, rows, v3);
  summaryModel = self->_summaryModel;

  objc_msgSend_setShouldUseWideRows_(summaryModel, v6, rowsCopy, v7);
}

- (TSKUIDStruct)conditionalStyleFormulaOwnerUID
{
  v4 = objc_msgSend_conditionalStyleFormulaOwnerUID(self->_tableModel, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (BOOL)isRegisteredWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_baseTableModel(self, v5, v6, v7);
  isRegisteredWithCalcEngine = objc_msgSend_isRegisteredWithCalcEngine_(v8, v9, engineCopy, v10);

  return isRegisteredWithCalcEngine;
}

- (int)registerWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_baseTableModel(self, v5, v6, v7);
  objc_msgSend_willModify(v8, v9, v10, v11);

  objc_msgSend_willModify(engineCopy, v12, v13, v14);
  if (!objc_msgSend_isAPivotTable(self, v15, v16, v17) || (objc_msgSend_pivotDataModel(self, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend_registerWithCalcEngine_ownerKind_(v21, v22, engineCopy, 100), v21, !v23))
  {
    v24 = objc_msgSend_baseTableModel(self, v18, v19, v20);
    v23 = objc_msgSend_registerWithCalcEngine_ownerKind_(v24, v25, engineCopy, 1);

    if (!v23)
    {
      v29 = objc_msgSend_summaryModel(self, v26, v27, v28);

      if (v29)
      {
        v33 = objc_msgSend_summaryModel(self, v30, v31, v32);
        v37 = objc_msgSend_aggregateFormulaOwner(v33, v34, v35, v36);
        v43[0] = objc_msgSend_tableUID(self, v38, v39, v40);
        v43[1] = v41;
        v23 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v37, v41, engineCopy, v43);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  return v23;
}

- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind
{
  loadCopy = load;
  v9 = objc_msgSend_baseTableModel(self, v6, v7, v8);
  objc_msgSend_setTableInfo_(v9, v10, self, v11);

  if (objc_msgSend_isAPivotTable(self, v12, v13, v14))
  {
    v18 = objc_msgSend_pivotDataModel(self, v15, v16, v17);
    objc_msgSend_setIsAPivotDataModel_(v18, v19, 1, v20);

    v24 = objc_msgSend_pivotDataModel(self, v21, v22, v23);
    objc_msgSend_linkToCalcEngine_ownerKind_(v24, v25, loadCopy, 100);
  }

  v26 = objc_msgSend_baseTableModel(self, v15, v16, v17);
  objc_msgSend_linkToCalcEngine_ownerKind_(v26, v27, loadCopy, 1);

  v31 = objc_msgSend_summaryModel(self, v28, v29, v30);

  if (v31)
  {
    v35 = objc_msgSend_summaryModel(self, v32, v33, v34);
    v39 = objc_msgSend_aggregateFormulaOwner(v35, v36, v37, v38);
    v68[0] = objc_msgSend_tableUID(self, v40, v41, v42);
    v68[1] = v43;
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v39, v43, loadCopy, v68);
  }

  if (self->_needsFilterSetUpdated)
  {
    objc_msgSend_filterSetUpdated(self, v32, v33, v34);
  }

  if (self->_resetGroupingsOnUpgrade)
  {
    v44 = objc_msgSend_groupBy(self, v32, v33, v34);
    v48 = objc_msgSend_groupingColumnListCopy(v44, v45, v46, v47);
    objc_msgSend_applyGroupingColumns_(self, v49, v48, v50);

    objc_msgSend_setIsCategoryEnabled_(self, v51, 1, v52);
    v56 = objc_msgSend_summaryModel(self, v53, v54, v55);
    objc_msgSend_setNeedsFormulaReset_(v56, v57, 1, v58);

    v62 = objc_msgSend_summaryModel(self, v59, v60, v61);
    objc_msgSend_resetForCategoriesWithForce_(v62, v63, 1, v64);

    objc_msgSend_resetViewMap(self, v65, v66, v67);
    self->_resetGroupingsOnUpgrade = 0;
  }
}

- (void)unregisterFromCalcEngine:(id)engine
{
  engineCopy = engine;
  v7 = objc_msgSend_baseTableModel(self, v4, v5, v6);
  objc_msgSend_willModify(v7, v8, v9, v10);

  objc_msgSend_willModify(engineCopy, v11, v12, v13);
  v17 = objc_msgSend_baseTableModel(self, v14, v15, v16);
  objc_msgSend_unregisterFromCalcEngine_(v17, v18, engineCopy, v19);

  v23 = objc_msgSend_summaryModel(self, v20, v21, v22);
  objc_msgSend_willModify(v23, v24, v25, v26);

  v30 = objc_msgSend_summaryModel(self, v27, v28, v29);
  v34 = objc_msgSend_aggregateFormulaOwner(v30, v31, v32, v33);
  objc_msgSend_unregisterFromCalcEngine(v34, v35, v36, v37);

  v41 = objc_msgSend_pivotDataModel(self, v38, v39, v40);
  objc_msgSend_unregisterFromCalcEngine_(v41, v42, engineCopy, v43);
}

- (void)performReadForOneOffFormulaEvaluation:(id)evaluation forCellCoord:(TSUCellCoord)coord
{
  evaluationCopy = evaluation;
  translator = self->_translator;
  if (!translator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo performReadForOneOffFormulaEvaluation:forCellCoord:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 2660, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    translator = self->_translator;
  }

  v18 = objc_msgSend_baseCellCoordForViewCellCoord_(translator, v6, *&coord, v7);
  v22 = objc_msgSend_baseTableModel(self, v19, v20, v21);
  objc_msgSend_performReadForOneOffFormulaEvaluation_forCellCoord_(v22, v23, evaluationCopy, v18);
}

- (BOOL)registerLast
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8 = objc_msgSend_registerLast(v4, v5, v6, v7);

  return v8;
}

- (TSKUIDStruct)formulaOwnerUID
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8 = objc_msgSend_tableUID(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (void)notifyTableOfNewResults
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo notifyTableOfNewResults]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 2683, 0, "There are no callers of this, but its needed to conform to TSCECalculationEngineRegistration protocol");

  v12 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v12, v9, v10, v11);
}

- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)region affectedRegion:(id)affectedRegion
{
  affectedRegionCopy = affectedRegion;
  if (affectedRegionCopy)
  {
    v12 = objc_msgSend_translator(self, v8, v9, v10);
    v15 = objc_msgSend_baseCellRegionForViewCellRegion_(v12, v13, affectedRegionCopy, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_msgSend_baseTableModel(self, v8, v9, v10);
  v18 = v16;
  if (a5)
  {
    v19 = &v33;
  }

  else
  {
    v19 = 0;
  }

  if (a5)
  {
    v33 = 0;
  }

  if (!v16)
  {
    v20 = 0;
    retstr->_rowsPerColumn.__tree_.__size_ = 0;
    retstr->_rectRepresentation = 0u;
    *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
    goto LABEL_15;
  }

  objc_msgSend_clearArrayFormulasSpillingIntoRegion_affectedRegion_(v16, v17, v15, v19);
  if (!a5)
  {
    v20 = 0;
    goto LABEL_15;
  }

  v20 = v33;

  if (v20)
  {
    v18 = objc_msgSend_translator(self, v21, v22, v23);
    *a5 = objc_msgSend_viewCellRegionForBaseCellRegion_(v18, v24, v20, v25);
LABEL_15:
  }

  v26 = objc_msgSend_calcEngine(self, v21, v22, v23);
  v32[0] = objc_msgSend_tableUID(self, v27, v28, v29);
  v32[1] = v30;
  objc_msgSend_markCoordsDirty_inOwner_(v26, v30, retstr, v32);

  return result;
}

- (void)resetArrayFormulasSpillingIntoRegion:(id)region
{
  objc_msgSend_spillingRangesInRegion_(self, a2, region, v3);
  objc_msgSend_resetSpillingRangesInUIDRanges_(self, v5, v7, v6);
  v8 = v7;
  sub_2210BC30C(&v8);
}

- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableInfo *)self
{
  v7 = objc_msgSend_baseCellRegionForViewCellRegion_(self->_translator, a3, a4, v4);
  tableModel = self->_tableModel;
  v11 = v7;
  if (tableModel)
  {
    objc_msgSend_spillingRangesInRegion_(tableModel, v7, v7, v8);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (void)resetSpillingRangesInUIDRanges:(const void *)ranges
{
  v4 = *ranges;
  v5 = *(ranges + 1);
  if (*ranges != v5)
  {
    do
    {
      v7 = objc_msgSend_baseCellRegionForUIDRange_(self->_translator, a2, v4, v3);
      v12.origin = objc_msgSend_boundingCellRange(v7, v8, v9, v10);
      v12.size = v11;

      if (TSUCellRect::isValid(&v12))
      {
        objc_msgSend_resetSpillingRangesInRange_(self->_tableModel, a2, &v12, v3);
      }

      v4 += 48;
    }

    while (v4 != v5);
  }
}

- (void)markPrecedentsDirtyForSpillContentChange
{
  v8 = objc_msgSend_calcEngine(self, a2, v2, v3);
  if (v8)
  {
    v13[0] = objc_msgSend_tableUID(self, v5, v6, v7);
    v13[1] = v9;
    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v9, v13, v10);
    objc_msgSend_markCellRefAsDirty_(v8, v11, v14, v12);
  }

  objc_msgSend_markSpillingErrorsAsDirty(self, v5, v6, v7);
}

- (void)markPrecedentsDirtyForSpillMergeChange
{
  v8 = objc_msgSend_calcEngine(self, a2, v2, v3);
  if (v8)
  {
    v13[0] = objc_msgSend_tableUID(self, v5, v6, v7);
    v13[1] = v9;
    objc_msgSend_spillBlockedByMergePrecedentForTableUID_(TSCEHauntedOwner, v9, v13, v10);
    objc_msgSend_markCellRefAsDirty_(v8, v11, v14, v12);
  }

  objc_msgSend_markSpillingErrorsAsDirty(self, v5, v6, v7);
}

- (void)markSpillingErrorsAsDirty
{
  v10 = objc_msgSend_calcEngine(self, a2, v2, v3);
  if (v10)
  {
    v8 = objc_msgSend_tableUID(self, v5, v6, v7);
    objc_msgSend_markSpillingErrorsAsDirtyForTable_(v10, v9, v8, v9);
  }
}

- (BOOL)hasSpillingErrors
{
  selfCopy = self;
  v5 = objc_msgSend_calcEngine(self, a2, v2, v3);
  v9 = objc_msgSend_tableUID(selfCopy, v6, v7, v8);
  LOBYTE(selfCopy) = objc_msgSend_hasSpillingErrorsForTable_(v5, v10, v9, v10);

  return selfCopy;
}

- (TSUCellRect)filteringRange
{
  v4 = objc_msgSend_filteringTableTranslator(self, a2, v2, v3);
  v8 = objc_msgSend_range(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.origin = v11;
  return result;
}

- (TSUCellRect)filteringBodyRange
{
  v4 = objc_msgSend_filteringTableTranslator(self, a2, v2, v3);
  v8 = objc_msgSend_bodyRange(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.origin = v11;
  return result;
}

- (TSUCellRect)filteringBodyRowRange
{
  v4 = objc_msgSend_filteringTableTranslator(self, a2, v2, v3);
  v8 = objc_msgSend_bodyRowRange(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.origin = v11;
  return result;
}

- (TSUCellRect)filteringBaseColumnRange
{
  if (self->_pivotDataModel)
  {
    v4 = objc_msgSend_range(self->_pivotDataModel, a2, v2, v3);
  }

  else
  {
    v4 = (MEMORY[0x2821F9670])(self, sel_baseColumnRange);
  }

  result.size = v5;
  result.origin = v4;
  return result;
}

- (id)filteringColumnNameForColumnIndex:(unsigned __int16)index
{
  indexCopy = index;
  if (self->_pivotDataModel)
  {
    v6 = objc_msgSend_calcEngine(self, a2, index, v3);
    v10 = objc_msgSend_namer(v6, v7, v8, v9);

    if (!v10)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableInfo filteringColumnNameForColumnIndex:]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 2785, 0, "invalid nil value for '%{public}s'", "refNamer");

      v11 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    v24 = sub_2214AAEA8(v11, v12, v13, v14);
    v26 = objc_msgSend_localizedStringForKey_value_table_(v24, v25, @"Column %@", &stru_2834BADA0, @"TSTables");
    v30 = objc_msgSend_identityTranslator(self->_pivotDataModel, v27, v28, v29);
    v32 = objc_msgSend_columnNameForColumnIndex_withFallbackFormat_translator_(v10, v31, indexCopy, v26, v30);
  }

  else
  {
    v32 = objc_msgSend_columnNameForColumnIndex_(self, a2, index, v3);
  }

  return v32;
}

- (id)filteringColumnNameForBaseColumnIndex:(TSUModelColumnIndex)index
{
  if (self->_pivotDataModel)
  {
    objc_msgSend_filteringColumnNameForColumnIndex_(self, a2, index._column, v3);
  }

  else
  {
    v7 = objc_msgSend_translator(self, a2, *&index._column, v3);
    v10 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v7, v8, index._column, v9);

    objc_msgSend_columnNameForColumnIndex_(self, v11, v10, v12);
  }
  v6 = ;

  return v6;
}

- (id)filteringDisplayColumnNameForBaseColumnIndex:(TSUModelColumnIndex)index
{
  pivotDataModel = self->_pivotDataModel;
  if (pivotDataModel)
  {
    objc_msgSend_displayNameForColumnAtIndex_(pivotDataModel, a2, index._column, v3);
  }

  else
  {
    v7 = objc_msgSend_translator(self, a2, *&index._column, v3);
    v10 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v7, v8, index._column, v9);

    objc_msgSend_displayNameForColumnAtIndex_(self, v11, v10, v12);
  }
  v13 = ;

  return v13;
}

- (TSTTableFilterSet)filterSet
{
  if (self->_pivotDataModel)
  {
    v5 = objc_msgSend_pivotOwner(self, a2, v2, v3);
    v8 = objc_msgSend_filterSetForPivotDataTable_(v5, v6, self->_pivotDataModel, v7);
  }

  else
  {
    v8 = objc_msgSend_filterSetForRows(self->_hiddenStates, a2, v2, v3);
  }

  return v8;
}

- (void)setFilterSet:(id)set
{
  setCopy = set;
  if (objc_msgSend_containsFilterRulesInUIDForm(setCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_context(self, v7, v8, v9);
    v12 = objc_msgSend_copyByRewritingFilterRulesToGeometricFormWithContext_withTableInfo_(setCopy, v11, v10, self);
  }

  else
  {
    v10 = objc_msgSend_context(self, v7, v8, v9);
    v12 = objc_msgSend_copyWithContext_(setCopy, v13, v10, v14);
  }

  v15 = v12;

  objc_msgSend_p_setFilterSet_(self, v16, v15, v17);
}

- (void)p_setFilterSet:(id)set
{
  setCopy = set;
  if (objc_msgSend_containsFilterRulesInUIDForm(setCopy, v5, v6, v7))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableInfo p_setFilterSet:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 2833, 0, "Must convert filters to geometric before setting");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (self->_pivotDataModel)
  {
    v20 = objc_msgSend_baseTableModel(self, v8, v9, v10);
    objc_msgSend_willModify(v20, v21, v22, v23);

    v27 = objc_msgSend_pivotOwner(self, v24, v25, v26);
    objc_msgSend_setFilterSet_forPivotDataTable_(v27, v28, setCopy, self->_pivotDataModel);

    if (objc_msgSend_filterCount(setCopy, v29, v30, v31) && objc_msgSend_isEnabled(setCopy, v32, v33, v34))
    {
      v35 = [TSTTableFilterSet alloc];
      v39 = objc_msgSend_context(self, v36, v37, v38);
      v41 = objc_msgSend_initWithNotBlankRowGroupsWithContext_withPivotTable_(v35, v40, v39, self);

      objc_msgSend_setFilterSetForRows_(self->_hiddenStates, v42, v41, v43);
      v44 = [TSTTableFilterSet alloc];
      v48 = objc_msgSend_context(self, v45, v46, v47);
      v50 = objc_msgSend_initWithNotBlankColumnGroupsWithContext_withPivotTable_(v44, v49, v48, self);

      objc_msgSend_setFilterSetForColumns_(self->_hiddenStates, v51, v50, v52);
    }

    else
    {
      objc_msgSend_enableFilterSet_(self->_hiddenStates, v32, 0, v34);
      objc_msgSend_clearAllFiltered(self->_hiddenStates, v56, v57, v58);
    }

    v59 = objc_msgSend_calcEngine(self, v53, v54, v55);
    v73[0] = objc_msgSend_tableUID(self, v60, v61, v62);
    v73[1] = v63;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v63, v73, v64);
    objc_msgSend_intendToChangePrecedent_(v59, v65, v74, v66);

    objc_msgSend_filterSetUpdated(self, v67, v68, v69);
  }

  else
  {
    objc_msgSend_setFilterSetForRows_(self->_hiddenStates, v8, setCopy, v10);
    objc_msgSend_filterSetUpdated(self, v70, v71, v72);
  }
}

- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter
{
  v4 = objc_msgSend_textureDeliveryStylesLocalized_(TSTAnimation, a2, localized, filter);

  return v4;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v12 = objc_msgSend_baseTableModel(self, v9, v10, v11);
  v16 = objc_msgSend_baseTableModel(v8, v13, v14, v15);
  TSDMixingTypeWithObjects();
  TSDMixingTypeBestFromMixingTypes();

  v20 = objc_msgSend_geometry(self, v17, v18, v19);
  v24 = objc_msgSend_geometry(v8, v21, v22, v23);
  TSDMixingTypeWithObjects();
  v25 = TSDMixingTypeBestFromMixingTypes();

  return v25;
}

- (void)p_bakeMixedCellStrokesIntoTable:(id)table outgoingTable:(id)outgoingTable incomingTable:(id)incomingTable fraction:(double)fraction
{
  tableCopy = table;
  outgoingTableCopy = outgoingTable;
  incomingTableCopy = incomingTable;
  v132 = outgoingTableCopy;
  v137 = objc_msgSend_cellIteratorWithFlags_searchFlags_(outgoingTableCopy, v10, 2, 0x20000000);
  v136 = objc_msgSend_cellIteratorWithFlags_searchFlags_(incomingTableCopy, v11, 2, 0x20000000);
  v134 = objc_msgSend_cellIteratorWithFlags_searchFlags_(tableCopy, v12, 2, 0x20000000);
  v16 = objc_msgSend_context(self, v13, v14, v15);
  v135 = objc_msgSend_cellMapWithContext_(TSTCellMap, v17, v16, v18);

  v21 = 0;
  v22 = 0;
  for (i = 0; ; i = v25)
  {
    v140 = i;
    NextCellData = objc_msgSend_getNextCellData_(v137, v19, &v140, v20);
    v25 = v140;

    if (!NextCellData)
    {
      v32 = v21;
      v30 = v22;
      goto LABEL_8;
    }

    v139 = v22;
    v29 = objc_msgSend_getNextCellData_(v136, v26, &v139, v28);
    v30 = v139;

    if (!v29)
    {
      break;
    }

    v138 = v21;
    v31 = objc_msgSend_getNextCellData_(v134, v26, &v138, v28);
    v32 = v138;

    if (!v31)
    {
      goto LABEL_8;
    }

    v33 = objc_msgSend_cell(v32, v26, v27, v28);
    v37 = objc_msgSend_cellFlags(v33, v34, v35, v36);
    objc_msgSend_setCellFlags_(v33, v38, v37 & 0xF70F, v39);
    v43 = objc_msgSend_cell(v25, v40, v41, v42);
    v47 = objc_msgSend_cellBorder(v43, v44, v45, v46);

    v51 = objc_msgSend_cell(v30, v48, v49, v50);
    v55 = objc_msgSend_cellBorder(v51, v52, v53, v54);

    v59 = objc_msgSend_cellBorder(v33, v56, v57, v58);
    v63 = objc_msgSend_topStroke(v47, v60, v61, v62);
    v67 = objc_msgSend_topStroke(v55, v64, v65, v66);
    v68 = TSDMixingMixedObjectWithFraction();
    v72 = objc_msgSend_topStrokeOrder(v59, v69, v70, v71);
    objc_msgSend_setTopStroke_order_(v59, v73, v68, v72);

    v77 = objc_msgSend_leftStroke(v47, v74, v75, v76);
    v81 = objc_msgSend_leftStroke(v55, v78, v79, v80);
    v82 = TSDMixingMixedObjectWithFraction();
    v86 = objc_msgSend_leftStrokeOrder(v59, v83, v84, v85);
    objc_msgSend_setLeftStroke_order_(v59, v87, v82, v86);

    v91 = objc_msgSend_bottomStroke(v47, v88, v89, v90);
    v95 = objc_msgSend_bottomStroke(v55, v92, v93, v94);
    v96 = TSDMixingMixedObjectWithFraction();
    v100 = objc_msgSend_bottomStrokeOrder(v59, v97, v98, v99);
    objc_msgSend_setBottomStroke_order_(v59, v101, v96, v100);

    v105 = objc_msgSend_rightStroke(v47, v102, v103, v104);
    v109 = objc_msgSend_rightStroke(v55, v106, v107, v108);
    v110 = TSDMixingMixedObjectWithFraction();
    v114 = objc_msgSend_rightStrokeOrder(v59, v111, v112, v113);
    objc_msgSend_setRightStroke_order_(v59, v115, v110, v114);

    v119 = objc_msgSend_cellID(v32, v116, v117, v118);
    objc_msgSend_addCell_andCellID_(v135, v120, v33, v119);

    v21 = v32;
    v22 = v30;
  }

  v32 = v21;
LABEL_8:
  objc_msgSend_terminate(v134, v26, v27, v28);
  objc_msgSend_terminate(v136, v121, v122, v123);
  objc_msgSend_terminate(v137, v124, v125, v126);
  if (objc_msgSend_count(v135, v127, v128, v129))
  {
    objc_msgSend_setCellsWithCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(tableCopy, v130, v135, 1, 0);
  }
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v11 = objc_msgSend_baseTableModel(self, v8, v9, v10);
  v15 = objc_msgSend_baseTableModel(v7, v12, v13, v14);
  v16 = TSDMixingMixedObjectWithFraction();

  v17 = objc_alloc(objc_opt_class());
  v21 = objc_msgSend_context(self, v18, v19, v20);
  v25 = objc_msgSend_range(self, v22, v23, v24);
  v27 = objc_msgSend_regionFromRange_(TSTCellRegion, v26, v25, v26);
  v29 = objc_msgSend__initWithContext_fromSourceInfo_cellRegion_tableModel_waitForCalcEngine_formulaCoordSpace_(v17, v28, v21, self, v27, v16, 0, 0);

  objc_msgSend_p_bakeMixedCellStrokesIntoTable_outgoingTable_incomingTable_fraction_(self, v30, v29, self, v7, fraction);

  return v29;
}

- (void)setPrimitiveGeometry:(id)geometry
{
  geometryCopy = geometry;
  objc_msgSend_angle(geometryCopy, v5, v6, v7);
  if (v11 != 0.0)
  {
    v12 = objc_msgSend_mutableCopy(geometryCopy, v8, v9, v10);
    objc_msgSend_setAngle_(v12, v13, v14, v15, 0.0);

    geometryCopy = v12;
  }

  v23.receiver = self;
  v23.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v23 setGeometry:geometryCopy];
  v19 = objc_msgSend_partitioner(self, v16, v17, v18);
  objc_msgSend_resetScaleToFit(v19, v20, v21, v22);
}

- (void)setContentWritingDirection:(int64_t)direction
{
  v19 = objc_msgSend_tableStyle(self, a2, direction, v3);
  v7 = objc_msgSend_intValueForProperty_(v19, v5, 798, v6);
  if (v7 != NStoTSWPWritingDirection())
  {
    v8 = objc_alloc_init(MEMORY[0x277D80AB8]);
    v9 = NStoTSWPWritingDirection();
    objc_msgSend_setIntValue_forProperty_(v8, v10, v9, 798);
    v14 = objc_msgSend_stylesheet(v19, v11, v12, v13);
    v16 = objc_msgSend_variationOfStyle_propertyMap_(v14, v15, v19, v8);

    objc_msgSend_setTableStyle_(self, v17, v16, v18);
  }
}

- (int64_t)contentWritingDirection
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_intValueForProperty_(v4, v5, 798, v6);

  v8 = v7 == 1;
  if (v7 == -1)
  {
    v8 = 0;
  }

  if (v7 == 0x80000000)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

- (void)scaleInfoGeometry:(CGSize)geometry
{
  height = geometry.height;
  width = geometry.width;
  if ((*MEMORY[0x277CBF3A8] != geometry.width || *(MEMORY[0x277CBF3A8] + 8) != geometry.height) && (geometry.width != 1.0 || geometry.height != 1.0))
  {
    v52 = objc_msgSend_geometry(self, a2, v3, v4);
    objc_msgSend_size(v52, v10, v11, v12);
    v14 = v13;
    objc_msgSend_size(v52, v15, v16, v17);
    v19 = v18;
    v20 = objc_alloc(MEMORY[0x277D802E8]);
    objc_msgSend_position(v52, v21, v22, v23);
    v25 = v24;
    v27 = v26;
    v31 = objc_msgSend_widthValid(v52, v28, v29, v30);
    v35 = objc_msgSend_heightValid(v52, v32, v33, v34);
    v39 = objc_msgSend_horizontalFlip(v52, v36, v37, v38);
    v43 = objc_msgSend_verticalFlip(v52, v40, v41, v42);
    objc_msgSend_angle(v52, v44, v45, v46);
    valid = objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(v20, v47, v31, v35, v39, v43, v25, v27, width * v14, height * v19, v48);
    objc_msgSend_setPrimitiveGeometry_(self, v50, valid, v51);
  }
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v17.receiver = self;
  v17.super_class = TSTTableInfo;
  childEnumerator = [(TSTTableInfo *)&v17 childEnumerator];
  v8 = objc_msgSend_allRichTextStorages(self, v5, v6, v7);
  v12 = objc_msgSend_objectEnumerator(v8, v9, v10, v11);
  v15 = objc_msgSend_aggregateEnumeratorWithObjects_(v3, v13, childEnumerator, v14, v12, 0);

  return v15;
}

- (id)childEnumeratorForUserFlags:(unint64_t)flags
{
  if ((flags & 5) != 0)
  {
    v6.receiver = self;
    v6.super_class = TSTTableInfo;
    childEnumerator = [(TSTTableInfo *)&v6 childEnumerator];
  }

  else
  {
    childEnumerator = objc_msgSend_childEnumerator(self, a2, flags, v3);
  }

  return childEnumerator;
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate reservedCount:(unint64_t)count
{
  kindCopy = kind;
  themeCopy = theme;
  v51 = objc_msgSend_documentStylesheet(themeCopy, v10, v11, v12);
  v50 = objc_msgSend_context(themeCopy, v13, v14, v15);
  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v17 = 6 - count;
  v20 = objc_msgSend_initWithCapacity_(v16, v18, 6 - count, v19);
  if (objc_msgSend_isEqual_(kindCopy, v21, *MEMORY[0x277D80BA8], v22))
  {
    if (count != 6)
    {
      v26 = 0;
      do
      {
        v27 = objc_msgSend_colors(themeCopy, v23, v24, v25);
        v29 = objc_msgSend_createStylesInStylesheet_presetID_colors_alternate_(TSTTableStyleNetwork, v28, v51, v26, v27, alternate);

        v30 = [TSTTableStylePreset alloc];
        v33 = objc_msgSend_initWithStyleNetwork_(v30, v31, v29, v32);
        v37 = objc_msgSend_context(v33, v34, v35, v36);

        if (v37 != v50)
        {
          v40 = MEMORY[0x277D81150];
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "+[TSTTableInfo bootstrapPresetsOfKind:inTheme:alternate:reservedCount:]", v39);
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v43);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 3631, 0, "expected equality between %{public}s and %{public}s", "p.context", "context");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
        }

        objc_msgSend_addObject_(v20, v38, v33, v39);

        ++v26;
      }

      while (v17 != v26);
    }

    objc_msgSend_setPresets_ofKind_(themeCopy, v23, v20, kindCopy);
  }
}

- (NSSet)referencedStyles
{
  v4 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, a2, self, v2);
  v8 = objc_msgSend_set(MEMORY[0x277D81258], v5, v6, v7);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2210FEDEC;
  v32[3] = &unk_27845ED00;
  v9 = v8;
  v33 = v9;
  objc_msgSend_enumerateAllStylesWithBlock_(v4, v10, v32, v11);
  objc_msgSend_addReferencedStylesToSet_(self->_tableModel, v12, v9, v13);
  objc_msgSend_addReferencedStylesToSet_(self->_summaryModel, v14, v9, v15);
  if (objc_msgSend_isAPivotTable(self, v16, v17, v18))
  {
    objc_msgSend_addReferencedStylesToSet_(self->_pivotDataModel, v19, v9, v20);
  }

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_2210FEDF8;
  v30 = &unk_27845E490;
  v21 = v9;
  v31 = v21;
  v22 = MEMORY[0x223DA1C10](&v27);
  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v23, v22, v24, v27, v28, v29, v30);
  v25 = v21;

  return v21;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v5, self, v6);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v11 = objc_msgSend_context(self, v8, v9, v10);
  v15 = objc_msgSend_presetID(v7, v12, v13, v14);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = sub_2210FF04C;
  v31 = &unk_27845ED28;
  v16 = blockCopy;
  v32 = v16;
  v33 = &v34;
  v18 = objc_msgSend_networkWithContext_presetID_styleProvider_styleMorphingBlock_(TSTTableStyleNetwork, v17, v11, v15, v7, &v28);

  if (*(v35 + 24) == 1)
  {
    objc_msgSend_setStyleNetwork_(self, v19, v18, v20, v28, v29, v30, v31);
  }

  objc_msgSend_replaceReferencedStylesUsingBlock_(self->_tableModel, v19, v16, v20, v28, v29, v30, v31);
  objc_msgSend_replaceReferencedStylesUsingBlock_(self->_summaryModel, v21, v16, v22);
  if (objc_msgSend_isAPivotTable(self, v23, v24, v25))
  {
    objc_msgSend_replaceReferencedStylesUsingBlock_(self->_pivotDataModel, v26, v16, v27);
  }

  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v26, v16, v27);

  _Block_object_dispose(&v34, 8);
}

- (void)setInsertionCenterPosition:(CGPoint)position
{
  v32 = objc_msgSend_geometry(self, a2, v3, v4);
  objc_msgSend_size(v32, v6, v7, v8);
  TSURectWithCenterAndSize();
  MaxX = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20 = objc_msgSend_geometry(self, v17, v18, v19);
  v33 = objc_msgSend_mutableCopy(v20, v21, v22, v23);

  if (objc_msgSend_tableWritingDirection(self, v24, v25, v26) == 1)
  {
    v35.origin.x = MaxX;
    v35.origin.y = v12;
    v35.size.width = v14;
    v35.size.height = v16;
    MaxX = CGRectGetMaxX(v35);
  }

  objc_msgSend_setPosition_(v33, v27, v28, v29, MaxX, v12);
  objc_msgSend_setGeometry_(self, v30, v33, v31);
}

- (id)geometryForRTLTableWithGeometry:(id)geometry
{
  geometryCopy = geometry;
  v8 = objc_msgSend_tableWritingDirection(self, v5, v6, v7);
  v12 = geometryCopy;
  if (v8 == 1)
  {
    objc_msgSend_position(geometryCopy, v9, v10, v11);
    v14 = v13;
    objc_msgSend_size(geometryCopy, v15, v16, v17);
    v19 = v18;
    objc_msgSend_position(geometryCopy, v20, v21, v22);
    v24 = v23;
    v25 = objc_alloc(MEMORY[0x277D802E8]);
    objc_msgSend_size(geometryCopy, v26, v27, v28);
    v12 = objc_msgSend_initWithPosition_size_(v25, v29, v30, v31, v14 + v19, v24, v32, v33);
  }

  return v12;
}

- (id)typeName
{
  v4 = sub_2214AAEA8(self, a2, v2, v3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Table", &stru_2834BADA0, @"TSTables");

  return v6;
}

- (void)setHasReference:(BOOL)reference
{
  if (self->_hasReference != reference)
  {
    self->_hasReference = reference;
  }
}

- (void)p_initializeDefaultHeight:(double)height andWidth:(double)width
{
  v52 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, v4, v5);
  v12 = objc_msgSend_numberOfRows(self, v9, v10, v11);
  v16 = objc_msgSend_numberOfColumns(self, v13, v14, v15);
  objc_msgSend_computeDefaultFontHeightForTableStyleArea_(self, v17, 1, v18);
  v23 = v22;
  if (height / v12 >= v22)
  {
    v24 = height / v12;
  }

  else
  {
    v24 = v22;
  }

  objc_msgSend_setDefaultRowHeight_(self, v19, v20, v21, v22);
  v28 = width / v16;
  if (v28 < 8.0)
  {
    v28 = 8.0;
  }

  objc_msgSend_setDefaultColumnWidth_(self, v25, v26, v27, v28);
  v32 = objc_msgSend_supportsAutoResizedTables(v52, v29, v30, v31);
  if (v24 > v23)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  if (v35 == 1 && v12 != 0)
  {
    v37 = 0;
    do
    {
      objc_msgSend_setHeight_ofRowAtIndex_(self, v33, v37, v34, v24);
      v37 = (v37 + 1);
    }

    while (v12 != v37);
  }

  if (v24 * v12 != height)
  {
    v38 = objc_alloc(MEMORY[0x277D802E8]);
    v42 = objc_msgSend_geometry(self, v39, v40, v41);
    objc_msgSend_position(v42, v43, v44, v45);
    v49 = objc_msgSend_initWithPosition_size_(v38, v46, v47, v48);

    objc_msgSend_setPrimitiveGeometry_(self, v50, v49, v51);
  }
}

- (void)didReplaceTextsInStoragesWithPlaceHolderString
{
  v14 = objc_msgSend_dupContentCache(self->_layoutEngine, a2, v2, v3);
  objc_msgSend_removeAllObjects(v14, v5, v6, v7);

  v15 = objc_msgSend_cellIDToWPColumnCache(self->_layoutEngine, v8, v9, v10);
  objc_msgSend_removeAllObjects(v15, v11, v12, v13);
}

- (void)prepareForPasteWithSourceOffset:(TSUColumnRowOffset)offset bakeFormulas:(BOOL)formulas
{
  formulasCopy = formulas;
  v7 = objc_msgSend_documentRoot(self, a2, *&offset, formulas);
  v12 = objc_msgSend_calculationEngine(v7, v8, v9, v10);

  objc_msgSend_prepareForPasteWithCalculationEngine_sourceOffset_bakeFormulas_(self->_tableModel, v11, v12, *&offset, formulasCopy);
}

+ (BOOL)validateNewName:(id)name forTable:(id)table
{
  nameCopy = name;
  tableCopy = table;
  v10 = objc_msgSend_documentRoot(tableCopy, v7, v8, v9);
  if (objc_msgSend_conformsToProtocol_(v10, v11, &unk_283599058, v12))
  {
    v59 = &unk_283599058;
    v16 = TSUProtocolCast();
    if (!v16)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSTTableInfo validateNewName:forTable:]", v15, &unk_283599058);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 4274, 0, "Unable to get sheetNameProvider");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }

    v26 = objc_msgSend_baseTableModel(tableCopy, v13, v14, v15, v59);
    v29 = objc_msgSend_resolverContainerNameForResolver_(v16, v27, v26, v28);

    v31 = objc_msgSend_resolverContainerForName_caseSensitive_(v16, v30, v29, 1);
    v34 = objc_msgSend_resolverMatchingName_(v31, v32, nameCopy, v33);
    v38 = v34;
    if (v34 && (v39 = objc_msgSend_resolverUID(v34, v35, v36, v37), v41 = v40, v39 == objc_msgSend_tableUID(tableCopy, v40, v42, v43)) && v41 == v35)
    {
      v45 = objc_msgSend_tableName(tableCopy, v35, v44, v37);
      v48 = objc_msgSend_caseInsensitiveCompare_(v45, v46, nameCopy, v47);

      v52 = objc_msgSend_tableName(tableCopy, v49, v50, v51);
      v55 = objc_msgSend_compare_(v52, v53, nameCopy, v54);

      if (v48)
      {
        v56 = 1;
      }

      else
      {
        v56 = v55 == 0;
      }

      LOBYTE(v57) = !v56;
    }

    else
    {
      v57 = objc_msgSend_resolverNameIsUsed_(v31, v35, nameCopy, v37) ^ 1;
    }
  }

  else
  {
    LOBYTE(v57) = 1;
  }

  return v57;
}

- (BOOL)isEquivalentForCrossDocumentPasteMasterComparison:(id)comparison objectComparisonBlock:(id)block
{
  comparisonCopy = comparison;
  blockCopy = block;
  if (self != comparisonCopy)
  {
    objc_opt_class();
    v11 = TSUDynamicCast();
    if (v11)
    {
      v12 = objc_msgSend_geometry(self, v8, v9, v10);
      objc_msgSend_position(v12, v13, v14, v15);
      v17 = v16;
      v19 = v18;
      v23 = objc_msgSend_geometry(v11, v20, v21, v22);
      objc_msgSend_position(v23, v24, v25, v26);
      v28 = v27;
      v30 = v29;

      if (v17 == v28 && v19 == v30)
      {
        v35 = objc_msgSend_range(self, v31, v32, v33);
        v37 = v36;
        v40 = objc_msgSend_range(v11, v36, v38, v39);
        if (v35 == v40)
        {
          v44 = 0;
          if (((v40 ^ v35) & 0x101FFFF00000000) != 0 || v37 != v41)
          {
            goto LABEL_42;
          }

          v45 = objc_msgSend_bodyRange(self, v41, v42, v43);
          v47 = v46;
          v50 = objc_msgSend_bodyRange(v11, v46, v48, v49);
          if (v45 == v50)
          {
            v44 = 0;
            if (((v50 ^ v45) & 0x101FFFF00000000) != 0 || v47 != v51)
            {
              goto LABEL_42;
            }

            v54 = objc_msgSend_bodyColumnRange(self, v51, v52, v53);
            v56 = v55;
            v59 = objc_msgSend_bodyColumnRange(v11, v55, v57, v58);
            if (v54 == v59)
            {
              v44 = 0;
              if (((v59 ^ v54) & 0x101FFFF00000000) != 0 || v56 != v60)
              {
                goto LABEL_42;
              }

              v63 = objc_msgSend_bodyRowRange(self, v60, v61, v62);
              v65 = v64;
              v68 = objc_msgSend_bodyRowRange(v11, v64, v66, v67);
              if (v63 == v68)
              {
                v44 = 0;
                if (((v68 ^ v63) & 0x101FFFF00000000) != 0 || v65 != v69)
                {
                  goto LABEL_42;
                }

                v72 = objc_msgSend_headerRowRange(self, v69, v70, v71);
                v74 = v73;
                v77 = objc_msgSend_headerRowRange(v11, v73, v75, v76);
                if (v72 == v77)
                {
                  v44 = 0;
                  if (((v77 ^ v72) & 0x101FFFF00000000) != 0 || v74 != v78)
                  {
                    goto LABEL_42;
                  }

                  v81 = objc_msgSend_footerRowRange(self, v78, v79, v80);
                  v83 = v82;
                  v86 = objc_msgSend_footerRowRange(v11, v82, v84, v85);
                  if (v81 == v86)
                  {
                    v44 = 0;
                    if (((v86 ^ v81) & 0x101FFFF00000000) != 0 || v83 != v87)
                    {
                      goto LABEL_42;
                    }

                    v90 = objc_msgSend_headerColumnRange(self, v87, v88, v89);
                    v92 = v91;
                    v95 = objc_msgSend_headerColumnRange(v11, v91, v93, v94);
                    if (v90 == v95)
                    {
                      v44 = 0;
                      if (((v95 ^ v90) & 0x101FFFF00000000) != 0 || v92 != v96)
                      {
                        goto LABEL_42;
                      }

                      v99 = objc_msgSend_rowHeights(self, v96, v97, v98);
                      v103 = objc_msgSend_rowHeights(v11, v100, v101, v102);
                      if (sub_221100234(v103, v99, v103))
                      {
                        v107 = objc_msgSend_columnWidths(self, v104, v105, v106);
                        v111 = objc_msgSend_columnWidths(v11, v108, v109, v110);
                        v112 = sub_221100234(v111, v107, v111);

                        if (v112)
                        {
                          v115 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v113, self, v114);
                          v118 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v116, v11, v117);
                          if (objc_msgSend_isEquivalentForCrossDocumentPasteMasterComparison_objectComparisonBlock_(v115, v119, v118, blockCopy))
                          {
                            v123 = objc_msgSend_tableName(self, v120, v121, v122);
                            v127 = objc_msgSend_tableName(v11, v124, v125, v126);
                            if (objc_msgSend_isEqualToString_(v123, v128, v127, v129) && (v133 = objc_msgSend_tableNameEnabled(self, v130, v131, v132), v133 == objc_msgSend_tableNameEnabled(v11, v134, v135, v136)) && (objc_msgSend_tableNameHeight(self, v137, v138, v139), v141 = v140, objc_msgSend_tableNameHeight(v11, v142, v143, v144), v141 == v148) && (v149 = objc_msgSend_tableNameBorderEnabled(self, v145, v146, v147), v149 == objc_msgSend_tableNameBorderEnabled(v11, v150, v151, v152)))
                            {
                              v263 = objc_msgSend_tableNameBorderStroke(self, v153, v154, v155);
                              v160 = objc_msgSend_tableNameBorderStroke(v11, v157, v158, v159);
                              isEqual = objc_msgSend_isEqual_(v263, v161, v160, v162);

                              if (isEqual)
                              {
                                hasTableBorder = objc_msgSend_hasTableBorder(self, v163, v164, v165);
                                if (hasTableBorder == objc_msgSend_hasTableBorder(v11, v167, v168, v169))
                                {
                                  hasAlternatingRows = objc_msgSend_hasAlternatingRows(self, v170, v171, v172);
                                  if (hasAlternatingRows == objc_msgSend_hasAlternatingRows(v11, v174, v175, v176))
                                  {
                                    v180 = objc_msgSend_numberOfHiddenRows(self, v177, v178, v179);
                                    if (v180 == objc_msgSend_numberOfHiddenRows(v11, v181, v182, v183))
                                    {
                                      v187 = objc_msgSend_numberOfUserHiddenRows(self, v184, v185, v186);
                                      if (v187 == objc_msgSend_numberOfUserHiddenRows(v11, v188, v189, v190))
                                      {
                                        v194 = objc_msgSend_numberOfHiddenColumns(self, v191, v192, v193);
                                        if (v194 == objc_msgSend_numberOfHiddenColumns(v11, v195, v196, v197))
                                        {
                                          v201 = objc_msgSend_numberOfUserHiddenColumns(self, v198, v199, v200);
                                          if (v201 == objc_msgSend_numberOfUserHiddenColumns(v11, v202, v203, v204))
                                          {
                                            v257 = objc_msgSend_cellIteratorWithFlags_searchFlags_(self, v205, 2, 0x20000000);
                                            v256 = objc_msgSend_cellIteratorWithFlags_searchFlags_(v11, v206, 2, 0x20000000);
                                            v209 = 0;
                                            v210 = 0;
                                            v255 = (blockCopy + 2);
                                            while (1)
                                            {
                                              v266 = v209;
                                              NextCellData = objc_msgSend_getNextCellData_(v257, v207, &v266, v208, v255);
                                              v264 = v266;

                                              if (!NextCellData)
                                              {
                                                v44 = 1;

                                                goto LABEL_82;
                                              }

                                              v265 = v210;
                                              v214 = objc_msgSend_getNextCellData_(v256, v212, &v265, v213);
                                              v262 = v265;

                                              if (!v214)
                                              {
                                                v44 = 1;
                                                goto LABEL_81;
                                              }

                                              v218 = objc_msgSend_cellID(v264, v215, v216, v217);
                                              v222 = objc_msgSend_cellID(v262, v219, v220, v221);
                                              if (v218 != v222)
                                              {
                                                break;
                                              }

                                              if (((v222 ^ v218) & 0xFFFF00000000) != 0)
                                              {
                                                break;
                                              }

                                              v226 = objc_msgSend_mergeRange(v264, v223, v224, v225);
                                              v228 = v227;
                                              v231 = objc_msgSend_mergeRange(v262, v227, v229, v230);
                                              if (v226 != v231 || ((v231 ^ v226) & 0x101FFFF00000000) != 0 || v228 != v232)
                                              {
                                                break;
                                              }

                                              v260 = objc_msgSend_cell(v264, v232, v233, v234);
                                              v259 = objc_msgSend_cell(v262, v235, v236, v237);
                                              if ((objc_msgSend_hasEqualContentToCell_usingRichTextObjectComparisonBlock_(v260, v238, v259, blockCopy) & 1) == 0)
                                              {
                                                goto LABEL_79;
                                              }

                                              v242 = objc_msgSend_cellStyle(v260, v239, v240, v241);
                                              v258 = objc_msgSend_cellStyle(v259, v243, v244, v245);
                                              v249 = objc_msgSend_textStyle(v260, v246, v247, v248);
                                              v253 = objc_msgSend_textStyle(v259, v250, v251, v252);
                                              v254 = v253;
                                              if (!v242 && v258)
                                              {
                                                v242 = 0;
LABEL_78:

LABEL_79:
                                                break;
                                              }

                                              if (v242 && !v258)
                                              {
                                                v258 = 0;
                                                goto LABEL_78;
                                              }

                                              if (!v249 && v253)
                                              {
                                                v249 = 0;
                                                goto LABEL_78;
                                              }

                                              if (v249 && !v253 || v242 && (blockCopy[2](blockCopy, v242, v258) & 1) == 0 || v249 && !blockCopy[2](blockCopy, v249, v254))
                                              {
                                                goto LABEL_78;
                                              }

                                              v210 = v262;
                                              v209 = v264;
                                            }

                                            v44 = 0;
LABEL_81:

LABEL_82:
                                            goto LABEL_38;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            else
                            {
                            }
                          }

                          v44 = 0;
LABEL_38:

LABEL_42:
                          goto LABEL_43;
                        }
                      }

                      else
                      {
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v44 = 0;
    goto LABEL_42;
  }

  v44 = 1;
LABEL_43:

  return v44;
}

+ (void)performRewritesForInsertedTableInfos:(id)infos
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  infosCopy = infos;
  v5 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(infosCopy, v4, &v30, v34, 16);
  if (v9)
  {
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(infosCopy);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        if (!v5)
        {
          v5 = objc_msgSend_calcEngine(*(*(&v30 + 1) + 8 * v11), v6, v7, v8);
        }

        v13 = [TSTFormulaRewriteSpec alloc];
        v29[0] = objc_msgSend_tableUID(v12, v14, v15, v16);
        v29[1] = v17;
        v28[0] = objc_msgSend_fromTableUID(v12, v17, v18, v19);
        v28[1] = v20;
        v21 = objc_msgSend_initWithOwnerInsertion_fromOwnerUID_(v13, v20, v29, v28);
        v25 = objc_msgSend_baseTableModel(v12, v22, v23, v24);
        objc_msgSend_willModifyTable_uidResolver_calcEngine_(v21, v26, v25, v25, v5);
        objc_msgSend_didModifyTable_calcEngine_(v21, v27, v25, v5);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(infosCopy, v6, &v30, v34, 16);
    }

    while (v9);
  }
}

+ (void)ensureAllTablesAreRegisteredInDocumentRoot:(id)root
{
  v151 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v6 = objc_msgSend_calculationEngine(rootCopy, v3, v4, v5);
  v137 = objc_msgSend_allOwnersRegistered(v6, v7, v8, v9);
  if ((objc_msgSend_shouldForceRegisterAllTables(v6, v10, v11, v12) & 1) == 0)
  {
    v19 = objc_msgSend_loadFromFileVersion(v6, v13, v14, v15) >= *MEMORY[0x277D80968] ? v137 : 0;
    if (v19)
    {
      goto LABEL_52;
    }
  }

  v135 = objc_opt_new();
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = objc_msgSend_modelEnumeratorForObjectsConformingToProtocol_(rootCopy, v20, &unk_2835174A8, v21);
  v23 = 0;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v145, v150, 16);
  if (!v27)
  {
    goto LABEL_40;
  }

  v138 = *v146;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v146 != v138)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v145 + 1) + 8 * i);
      if (objc_msgSend_registerLast(v29, v24, v25, v26))
      {
        objc_msgSend_addObject_(v135, v30, v29, v31);
        continue;
      }

      objc_opt_class();
      v35 = TSUDynamicCast();
      if (!v35)
      {
        v78 = objc_msgSend_formulaOwnerUID(v29, v32, v33, v34);
        if ((objc_msgSend_ownerIsRegistered_(v6, v79, v78, v79) & 1) == 0)
        {
          v83 = objc_msgSend_ownerKind(v29, v80, v81, v82);
          objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v29, v84, v6, v83);
        }

        goto LABEL_37;
      }

      if ((v137 & 1) == 0)
      {
        objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v29, v32, v6, 1);
      }

      v144._lower = 0;
      v144._upper = 0;
      v144._lower = objc_msgSend_tableUID(v35, v32, v33, v34);
      v144._upper = v36;
      v40 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v36, v144._lower, v36, v6);
      if (v40 != v35)
      {
        if ((v23 & 1) == 0)
        {
          objc_msgSend_willModify(v6, v37, v38, v39);
        }

        v41 = objc_msgSend_tableName(v35, v37, v38, v39);
        v45 = objc_msgSend_ownerUIDMapper(v35, v42, v43, v44);
        objc_msgSend_setFormulaOwnerUIDsWithMap_shouldStealReferences_(v35, v46, v45, 0);
        v50 = objc_msgSend_ownerUIDMap(v45, v47, v48, v49);
        objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_bakeForBadRefs_(v35, v51, v50, v6, 1);
        if (objc_msgSend_conformsToProtocol_(rootCopy, v52, &unk_283599058, v53))
        {
          v132 = &unk_283599058;
          v57 = TSUProtocolCast();
          if (v57 && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_isPendingTableNameUniquification(v57, v58, v59, v60, &unk_283599058) & 1) == 0))
          {
            v61 = objc_msgSend_baseTableModel(v35, v58, v59, v60, v132);
            v64 = objc_msgSend_resolverContainerNameForResolver_(v57, v62, v61, v63);

            v67 = objc_msgSend_resolverContainerForName_caseSensitive_(rootCopy, v65, v64, 1);
            if (v67)
            {
              objc_msgSend_chooseUniqueNameInContainer_forPaste_(v35, v66, v67, 1);
            }
          }
        }

        v143._lower = 0;
        v143._upper = 0;
        v143._lower = objc_msgSend_tableUID(v35, v54, v55, v56, v132);
        v143._upper = v68;
        v71 = objc_msgSend_tableName(v35, v68, v69, v70);
        v72 = TSKUIDStruct::description(&v144);
        v73 = TSKUIDStruct::description(&v143);
        NSLog(&cfstr_TableinfoPWith.isa, v35, v41, v72, v71, v73);

        if (!objc_msgSend_registerWithCalcEngine_(v35, v74, v6, v75))
        {
          objc_msgSend_setCalcEngine_(v35, v76, v6, v77);

          v23 = 1;
LABEL_34:
          objc_msgSend_resetSortRuleReferenceTrackerForInsert(v35, v37, v38, v39);
          v88 = objc_msgSend_tableUID(v35, v85, v86, v87);
          objc_msgSend_markOwnerAsDirty_(v6, v89, v88, v89);
          objc_msgSend_registerAllFormulasWithCalculationEngine_(v35, v90, v6, v91);
          v95 = objc_msgSend_headerNameMgr(v6, v92, v93, v94);
          objc_msgSend_beginTrackingNamesInTable_(v95, v96, &v144, v97);

          v101 = objc_msgSend_baseTableModel(v35, v98, v99, v100);
          hasNamesInHeaders = objc_msgSend_hasNamesInHeaders(v101, v102, v103, v104);

          if (hasNamesInHeaders)
          {
            v143._lower = objc_msgSend_tableUID(v35, v106, v107, v108);
            v143._upper = v109;
            objc_msgSend_beginTrackingNamesInTableForLegacyNRM_(v6, v109, &v143, v110);
          }

          goto LABEL_36;
        }

        v23 = 1;
      }

      if ((v137 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_36:

LABEL_37:
    }

    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v145, v150, 16);
  }

  while (v27);
LABEL_40:

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v111 = v135;
  v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v112, &v139, v149, 16);
  if (v116)
  {
    v117 = *v140;
    do
    {
      for (j = 0; j != v116; ++j)
      {
        if (*v140 != v117)
        {
          objc_enumerationMutation(v111);
        }

        v119 = *(*(&v139 + 1) + 8 * j);
        v120 = objc_msgSend_formulaOwnerUID(v119, v113, v114, v115);
        if ((objc_msgSend_ownerIsRegistered_(v6, v121, v120, v121) & 1) == 0)
        {
          v122 = objc_msgSend_ownerKind(v119, v113, v114, v115);
          objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v119, v123, v6, v122);
        }
      }

      v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v113, &v139, v149, 16);
    }

    while (v116);
  }

  if (v23)
  {
    objc_msgSend_scheduleDetectAndRepairConsistencyViolations(v6, v124, v125, v126);
  }

LABEL_52:
  if ((objc_msgSend_needsSubOwnerIDUpgrade(v6, v16, v17, v18) & 1) != 0 || objc_msgSend_loadFromFileVersion(v6, v127, v128, v129) <= 0xB000200000005)
  {
    objc_msgSend_upgradeSubOwnerUidForMapperOnCalcEngine_(self, v127, v6, v129);
    objc_msgSend_setNeedsSubOwnerIDUpgrade_(v6, v130, 0, v131);
  }
}

- (id)commentHostingAtCellID:(TSUCellCoord)d forCommentStorage:(id)storage
{
  v4 = objc_msgSend_commentHostingAtCellID_forCommentStorage_updateCommentMaps_(self, a2, *&d, storage, 1);

  return v4;
}

- (id)commentHostingAtCellID:(TSUCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps
{
  v5 = objc_msgSend_commentHostingAtCellID_forCommentStorage_updateCommentMaps_(self->_translator, a2, *&d, storage, maps);

  return v5;
}

- (id)allAnnotations
{
  v6 = objc_msgSend_numberOfComments(self, a2, v2, v3);
  if (v6)
  {
    v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v6, v7);
    v9 = [TSTConcurrentCellIterator alloc];
    v11 = objc_msgSend_initWithTableInfo_flags_searchFlags_(v9, v10, self, 0, 4096);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221100EA0;
    v17[3] = &unk_27845ED50;
    v17[4] = self;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221101018;
    v15[3] = &unk_27845EDE8;
    v15[4] = self;
    v12 = v8;
    v16 = v12;
    objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v11, v13, v17, &unk_2834A1D60, v15);
  }

  else
  {
    v12 = 0;
  }

  objc_msgSend_setCachedAllAnnotations_(self, v5, 1, v7);

  return v12;
}

- (id)annotationWithUUID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = objc_msgSend_initWithUUIDString_(v5, v6, dCopy, v7);
  if (v11)
  {
    if ((objc_msgSend_cachedAllAnnotations(self, v8, v9, v10) & 1) == 0)
    {
      v15 = objc_msgSend_allAnnotations(self, v12, v13, v14);
    }

    v16 = objc_msgSend_cachedCommentHostingForAnnotationUUID_(self->_translator, v12, v11, v14);
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableInfo annotationWithUUID:]", v10);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 4721, 0, "Given UUID is not a valid UUID: %@", dCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    v16 = 0;
  }

  return v16;
}

- (void)setStyleNetwork:(id)network
{
  networkCopy = network;
  objc_msgSend_setStyleNetwork_(self->_tableModel, v4, networkCopy, v5);
  if (self->_isAPivotTable)
  {
    objc_msgSend_setStyleNetwork_(self->_pivotDataModel, v6, networkCopy, v7);
  }
}

- (void)setTableStyle:(id)style
{
  styleCopy = style;
  objc_msgSend_setTableStyle_(self->_tableModel, v4, styleCopy, v5);
  if (self->_isAPivotTable)
  {
    objc_msgSend_setTableStyle_(self->_pivotDataModel, v6, styleCopy, v7);
  }
}

- (void)loadAllLazyReferences
{
  objc_msgSend_loadAllLazyReferences(self->_tableModel, a2, v2, v3);
  objc_msgSend_loadAllLazyReferences(self->_summaryModel, v5, v6, v7);
  if (self->_isAPivotTable)
  {
    pivotDataModel = self->_pivotDataModel;

    objc_msgSend_loadAllLazyReferences(pivotDataModel, v8, v9, v10);
  }
}

+ (void)upgradeTablesIfNeeded:(unint64_t)needed forDocumentRoot:(id)root
{
  v34 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v9 = objc_msgSend_calculationEngine(rootCopy, v6, v7, v8);
  objc_msgSend_beginUpgradingFormulasMode(v9, v10, v11, v12);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = objc_opt_class();
  v16 = objc_msgSend_modelEnumeratorForObjectsOfClass_(rootCopy, v14, v13, v15, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16);
  if (v18)
  {
    v19 = *v30;
    do
    {
      v20 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * v20);
        v22 = objc_autoreleasePoolPush();
        objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(v21, v23, needed, v24);
        objc_autoreleasePoolPop(v22);
        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v25, &v29, v33, 16);
    }

    while (v18);
  }

  objc_msgSend_scheduleDetectAndRepairConsistencyViolations(v9, v26, v27, v28);
}

- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)needed
{
  if (objc_msgSend_isAPivotTable(self, a2, needed, v3))
  {
    objc_msgSend_setUpgradeShouldSuppressFormulaWarnings_(self->_tableModel, v6, 1, v7);
  }

  objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(self->_tableModel, v6, needed, v7);
  objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(self->_summaryModel, v8, needed, v9);
  if (objc_msgSend_isAPivotTable(self, v10, v11, v12))
  {
    objc_msgSend_setUpgradeShouldSuppressFormulaWarnings_(self->_pivotDataModel, v13, 1, v15);
    objc_msgSend_upgradeDuringDocumentUpgradeIfNeeded_(self->_pivotDataModel, v16, needed, v17);
  }

  if (*MEMORY[0x277D808D0] > needed)
  {
    self->_needsFilterSetUpdated = 1;
  }

  if (objc_msgSend_isCategorized(self, v13, v14, v15))
  {
    if (needed > 0xC000000000005 || *MEMORY[0x277D808F0] > needed)
    {
      p_resetGroupingsOnUpgrade = &self->_resetGroupingsOnUpgrade;
      if (needed > 0xF000000000001)
      {
        if (!*p_resetGroupingsOnUpgrade)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {
      p_resetGroupingsOnUpgrade = &self->_resetGroupingsOnUpgrade;
    }

    *p_resetGroupingsOnUpgrade = 1;
LABEL_13:
    if (objc_msgSend_isRegisteredWithCalcEngine(self, v18, v19, v20))
    {
      v23 = objc_msgSend_groupBy(self, v18, v22, v20);
      v27 = objc_msgSend_groupingColumnListCopy(v23, v24, v25, v26);
      objc_msgSend_applyGroupingColumns_(self, v28, v27, v29);

      objc_msgSend_setIsCategoryEnabled_(self, v30, 1, v31);
      v35 = objc_msgSend_summaryModel(self, v32, v33, v34);
      objc_msgSend_setNeedsFormulaReset_(v35, v36, 1, v37);

      v41 = objc_msgSend_summaryModel(self, v38, v39, v40);
      objc_msgSend_resetForCategoriesWithForce_(v41, v42, 1, v43);

      objc_msgSend_resetViewMap(self, v44, v45, v46);
      self->_resetGroupingsOnUpgrade = 0;
    }
  }

LABEL_16:

  objc_msgSend__correctAndCheckStateSuppressingAssertions_(self, v18, 1, v20);
}

- (void)setDrawableIsBeingCopied:(BOOL)copied
{
  v5 = objc_msgSend_calcEngine(self, a2, copied, v3);

  if (v5)
  {
    v12 = objc_msgSend_calcEngine(self, v6, v7, v8);
    objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v12, v9, v10, v11, 0.2);
  }
}

- (void)bakeFormulas
{
  v4 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, a2, 0, v2);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_2211019F4;
  v16 = &unk_27845E3A8;
  selfCopy = self;
  v5 = v4;
  v18 = v5;
  objc_msgSend_iterateCellsWithFlags_searchFlags_usingBlock_(self, v6, 2, 0x20000, &v13);
  v10 = objc_msgSend_calcEngine(self, v7, v8, v9, v13, v14, v15, v16, selfCopy);
  v11 = v10 == 0;

  objc_msgSend_setCellsWithCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self, v12, v5, v11, 0);
}

- (int)writingDirectionForCellwithTableDefault:(id)default
{
  defaultCopy = default;
  v8 = defaultCopy;
  if (!defaultCopy || (v9 = objc_msgSend_writingDirection(defaultCopy, v5, v6, v7), v9 == -1))
  {
    v9 = objc_msgSend_tableWritingDirection(self, v5, v6, v7) == 1;
  }

  return v9;
}

- (void)applyWritingDirection:(int)direction toCell:(id)cell cellID:(TSUCellCoord)d
{
  v6 = *&direction;
  cellCopy = cell;
  if (objc_msgSend_writingDirectionForCellwithTableDefault_(self, v8, cellCopy, v9) != v6)
  {
    if (objc_msgSend_valueType(cellCopy, v10, v11, v12) == 9)
    {
      v16 = objc_msgSend_richTextValue(cellCopy, v13, v14, v15);
      v20 = objc_msgSend_context(self, v17, v18, v19);
      v23 = objc_msgSend_copyWithContext_(v16, v21, v20, v22);

      v27 = objc_msgSend_range(v23, v24, v25, v26);
      objc_msgSend_setParagraphWritingDirection_forCharRange_undoTransaction_(v23, v28, v6, v27, v28, 0);
      objc_msgSend_setRichTextValue_(cellCopy, v29, v23, v30);
    }

    else
    {
      v31 = objc_msgSend_textStyleAtCellID_isDefault_(self, v13, *&d, 0);
      v34 = objc_msgSend_propertyMapWithPropertiesAndValues_(MEMORY[0x277D80AB8], v32, 44, v33, v6, 0);
      v38 = objc_msgSend_documentRoot(self, v35, v36, v37);
      v42 = objc_msgSend_stylesheet(v38, v39, v40, v41);
      v23 = objc_msgSend_variationOfStyle_propertyMap_(v42, v43, v31, v34);

      objc_msgSend_setTextStyle_(cellCopy, v44, v23, v45);
    }
  }
}

- (void)modifiedTextPropertiesForCategoryOrPivotCellAtCellID:(TSUCellCoord)d wraps:(BOOL *)wraps padding:(id *)padding alignment:(int *)alignment
{
  v11 = objc_msgSend_tableWritingDirection(self, a2, *&d, wraps);
  v12 = v11 != 0;
  if (!objc_msgSend_isCategorized(self, v13, v14, v15))
  {
    if (!objc_msgSend_isAPivotTable(self, v16, v17, v18))
    {
      return;
    }

    if (objc_msgSend_hasGroupingArrowAtCellID_(self, v30, *&d, v31))
    {
      v35 = 1;
      if (!padding)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v98.origin = objc_msgSend_headerColumnRange(self, v32, v33, v34);
      v98.size = v59;
      dCopy = d;
      if ((TSUCellRect::contains(&v98, dCopy) & 1) == 0)
      {
        goto LABEL_35;
      }

      v97 = objc_msgSend_pivotOwner(self, v32, v61, v34);
      v64 = objc_msgSend_pivotOptionsForRowGroupsAtLevel_(v97, v62, (LOBYTE(d.column) + 1), v63);
      if (objc_msgSend_repeatLabels(v64, v65, v66, v67))
      {
        v71 = objc_msgSend_indexesForNonSummaryBodyRows(self, v68, v69, v70);
        v35 = objc_msgSend_containsIndex_(v71, v72, d.row, v73);
      }

      else
      {
        v35 = 0;
      }

      if (!padding)
      {
        goto LABEL_35;
      }
    }

    if (v35)
    {
      v74 = sub_221446548(1);
      v75 = *padding;
      v76 = MEMORY[0x277D80EB0];
      objc_msgSend_topInset(v75, v77, v78, v79);
      v84 = v83;
      v85 = v74;
      if (v11)
      {
        objc_msgSend_leftInset(v75, v80, v81, v82);
        v85 = v86;
      }

      objc_msgSend_bottomInset(v75, v80, v81, v82);
      v91 = v90;
      if (!v11)
      {
        objc_msgSend_rightInset(v75, v87, v88, v89);
        v74 = v92;
      }

      v93 = objc_msgSend_paddingWithTopInset_leftInset_bottomInset_rightInset_(v76, v87, v88, v89, v84, v85, v91, v74);

      v94 = v93;
      *padding = v93;
    }

LABEL_35:
    if (alignment)
    {
      if (objc_msgSend_isPivotTrailingAligned_(self, v32, *&d, v34))
      {
        v12 = v11 == 0;
LABEL_40:
        *alignment = v12;
        goto LABEL_41;
      }

      if (objc_msgSend_numberOfHeaderRows(self, v32, v95, v34) > d.row || objc_msgSend_numberOfHeaderColumns(self, v32, v96, v34) > d.column)
      {
        goto LABEL_40;
      }
    }

LABEL_41:
    if (!wraps || !objc_msgSend_isPivotUnwrapped_(self, v32, *&d, v34))
    {
      return;
    }

LABEL_43:
    *wraps = 0;
    return;
  }

  isCategoryGroupValueCell = objc_msgSend_isCategoryGroupValueCell_(self, v16, *&d, v18);
  isCategoryGroupValueLabelCell = objc_msgSend_isCategoryGroupValueLabelCell_(self, v20, *&d, v21);
  isSummaryOrLabelRow = objc_msgSend_isSummaryOrLabelRow_(self, v23, *&d, v24);
  if (isCategoryGroupValueCell)
  {
    if (!padding)
    {
      goto LABEL_19;
    }

    v28 = objc_msgSend_groupLevelAtRow_(self, v25, *&d, v26);
    v29 = sub_221446548(v28);
  }

  else
  {
    if (padding)
    {
      v36 = isCategoryGroupValueLabelCell;
    }

    else
    {
      v36 = 0;
    }

    if ((v36 & 1) == 0)
    {
      goto LABEL_19;
    }

    v37 = objc_msgSend_groupLevelAtRow_(self, v25, *&d, v26);
    v29 = sub_221446548(v37) - 7.0 - 7.0;
  }

  v38 = *padding;
  v39 = MEMORY[0x277D80EB0];
  objc_msgSend_topInset(v38, v40, v41, v42);
  v47 = v46;
  v48 = v29;
  if (v11)
  {
    objc_msgSend_leftInset(v38, v43, v44, v45);
    v48 = v49;
  }

  objc_msgSend_bottomInset(v38, v43, v44, v45);
  v54 = v53;
  if (!v11)
  {
    objc_msgSend_rightInset(v38, v50, v51, v52);
    v29 = v55;
  }

  v56 = objc_msgSend_paddingWithTopInset_leftInset_bottomInset_rightInset_(v39, v50, v51, v52, v47, v48, v54, v29);

  v57 = v56;
  *padding = v56;

LABEL_19:
  if (wraps)
  {
    v58 = isSummaryOrLabelRow;
  }

  else
  {
    v58 = 0;
  }

  if (v58)
  {
    goto LABEL_43;
  }
}

- (void)getTextPropertiesWithCell:(id)cell cellID:(TSUCellCoord)d wraps:(BOOL *)wraps alignment:(int *)alignment verticalAlignment:(int *)verticalAlignment padding:(id *)padding
{
  cellCopy = cell;
  isCategorized = objc_msgSend_isCategorized(self, v13, v14, v15);
  isAPivotTable = objc_msgSend_isAPivotTable(self, v16, v17, v18);
  if (alignment)
  {
    v22 = objc_msgSend_effectiveTextStyle(cellCopy, v19, v20, v21);
    if (!v22)
    {
      v22 = objc_msgSend_defaultTextStyleForCellID_(self, v19, *&d, v21);
    }
  }

  else
  {
    v22 = 0;
  }

  if (wraps || verticalAlignment || padding)
  {
    v23 = objc_msgSend_cellStyle(cellCopy, v19, v20, v21);
    if (v23 || (objc_msgSend_cellStyleAtCellID_isDefault_(self, v19, *&d, 0), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (verticalAlignment)
      {
        *verticalAlignment = 1;
        v24 = objc_msgSend_intValueForProperty_(v23, v19, 903, v21);
        if (v24 != 0x80000000)
        {
          *verticalAlignment = v24;
        }
      }

      if (wraps)
      {
        *wraps = 0;
        v25 = objc_msgSend_valueType(cellCopy, v19, v20, v21);
        if (v25 == 9 || v25 == 3)
        {
          v26 = objc_msgSend_intValueForProperty_(v23, v19, 896, v21);
          if (v26 != 0x80000000)
          {
            *wraps = v26 != 0;
          }
        }
      }

      if (padding)
      {
        objc_opt_class();
        v29 = objc_msgSend_valueForProperty_(v23, v27, 904, v28);
        v30 = TSUCheckedDynamicCast();

        if (v30)
        {
          v31 = v30;
          *padding = v30;
        }

        if (!alignment)
        {
          goto LABEL_45;
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  v30 = 0;
  if (!alignment)
  {
    goto LABEL_45;
  }

LABEL_25:
  if (!v22)
  {
    goto LABEL_45;
  }

  v32 = objc_msgSend_tableWritingDirection(self, v19, v20, v21) == 1;
  *alignment = v32;
  v35 = objc_msgSend_intValueForProperty_(v22, v33, 86, v34);
  if (v35 == 0x80000000)
  {
    goto LABEL_45;
  }

  v36 = objc_msgSend_intValueForProperty_(v22, v19, 44, v21);
  if (v36 == -1)
  {
    v36 = objc_msgSend_tableWritingDirection(self, v19, v20, v21);
  }

  *alignment = v35;
  if (isCategorized && ((objc_msgSend_isCategoryGroupValueCell_(self, v19, *&d, v21) & 1) != 0 || objc_msgSend_isCategoryGroupValueLabelCell_(self, v19, *&d, v21)))
  {
    *alignment = v32;
    goto LABEL_45;
  }

  if (v35 != 4)
  {
    if (v35 == 3 && wraps)
    {
      *wraps = 1;
    }

    goto LABEL_45;
  }

  if (isCategorized && objc_msgSend_isSummaryOrLabelRow_(self, v19, *&d, v21))
  {
    v37 = v36 != 1;
LABEL_44:
    *alignment = v37;
    goto LABEL_45;
  }

  if (v36 == 1)
  {
    v37 = 1;
    goto LABEL_44;
  }

  if (!v36)
  {
    *alignment = 0;
  }

LABEL_45:
  if (objc_msgSend_currentFormatUsesAccountingStyle(cellCopy, v19, v20, v21))
  {
    if (alignment)
    {
      *alignment = 0;
    }

    if (wraps)
    {
      *wraps = 0;
    }
  }

  if ((isCategorized | isAPivotTable))
  {
    objc_msgSend_modifiedTextPropertiesForCategoryOrPivotCellAtCellID_wraps_padding_alignment_(self, v38, *&d, wraps, padding, alignment);
  }
}

- (id)duplicateFilterSet
{
  v5 = objc_msgSend_filterSet(self, a2, v2, v3);
  v9 = objc_msgSend_context(self, v6, v7, v8);
  v12 = objc_msgSend_copyWithContext_(v5, v10, v9, v11);

  return v12;
}

- (id)duplicateFilterSetInUidForm
{
  v5 = objc_msgSend_hiddenStates(self, a2, v2, v3);
  v8 = objc_msgSend_duplicateFilterSetInUidFormWithTable_(v5, v6, self, v7);

  return v8;
}

- (BOOL)needsFilterFormulaRewriteForImport
{
  v4 = objc_msgSend_filterSet(self, a2, v2, v3);
  v8 = objc_msgSend_needsFormulaRewriteForImport(v4, v5, v6, v7);

  return v8;
}

- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)import
{
  importCopy = import;
  v7 = objc_msgSend_filterSet(self, a2, import, v3);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v7, v5, importCopy, v6);
}

- (void)enableFilterSet:(BOOL)set
{
  setCopy = set;
  if (self->_pivotDataModel)
  {
    v6 = objc_msgSend_pivotOwner(self, a2, set, v3);
    v9 = objc_msgSend_hiddenStatesForPivotDataTable_(v6, v7, self->_pivotDataModel, v8);
    objc_msgSend_enableFilterSet_(v9, v10, setCopy, v11);
  }

  hiddenStates = self->_hiddenStates;

  objc_msgSend_enableFilterSet_(hiddenStates, a2, setCopy, v3);
}

- (void)setFilterSetType:(int)type
{
  v4 = *&type;
  v6 = objc_msgSend_filterSet(self, a2, *&type, v3);
  v10 = objc_msgSend_context(self, v7, v8, v9);
  v17 = objc_msgSend_copyWithContext_(v6, v11, v10, v12);

  objc_msgSend_setFilterSetType_(v17, v13, v4, v14);
  objc_msgSend_p_setFilterSet_(self, v15, v17, v16);
}

- (BOOL)hasActiveFilters
{
  v8 = objc_msgSend_filterSet(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_filterSet(self, v5, v6, v7);
    if (objc_msgSend_isEnabled(v9, v10, v11, v12))
    {
      v16 = objc_msgSend_filterSet(self, v13, v14, v15);
      v20 = objc_msgSend_ruleCount(v16, v17, v18, v19) != 0;
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

- (void)filterSetUpdated
{
  if (self->_isAPivotTable)
  {
    v11 = objc_msgSend_pivotOwner(self, a2, v2, v3);
    objc_msgSend_filterSetUpdated(v11, v5, v6, v7);
  }

  v12 = objc_msgSend_hiddenStates(self, a2, v2, v3);
  objc_msgSend_filterSetUpdated(v12, v8, v9, v10);
}

- (void)dirtyFilterState
{
  v7 = objc_msgSend_hiddenStates(self, a2, v2, v3);
  objc_msgSend_dirtyFilterState(v7, v4, v5, v6);
}

- (BOOL)hasFilterRulesInBaseColumns:(id)columns
{
  columnsCopy = columns;
  v8 = objc_msgSend_hiddenStates(self, v5, v6, v7);
  LOBYTE(self) = objc_msgSend_hasFilterRulesWithTable_inBaseColumns_(v8, v9, self, columnsCopy);

  return self;
}

- (BOOL)hasFilterRulesAffectingInsertRows
{
  if (!objc_msgSend_hasActiveFilters(self, a2, v2, v3))
  {
    return 0;
  }

  if (!objc_msgSend_numberOfVisibleBaseBodyRows(self, v5, v6, v7))
  {
    return 1;
  }

  v11 = objc_msgSend_filterSet(self, v8, v9, v10);
  v15 = objc_msgSend_preventsRowInsertion(v11, v12, v13, v14);

  return v15;
}

- (id)allBodyValuesAsPregArgDataListForColumnIndex:(TSUViewColumnIndex)index
{
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v24.origin = objc_msgSend_bodyRange(self, v7, v8, v9);
  v24.size = v10;
  v11 = TSUCellRect::firstRow(&v24);
  v12 = TSUCellRect::numRows(&v24);
  v14 = objc_msgSend_regionFromRange_(TSTCellRegion, v13, v11 | (index.var0 << 32), (v12 << 32) | 1);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_221102B70;
  v21[3] = &unk_27845E3A8;
  v15 = v6;
  v22 = v15;
  v16 = v5;
  v23 = v16;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(self, v17, v14, 10, 0x400000, v21);
  v18 = v23;
  v19 = v16;

  return v19;
}

- (BOOL)canTranspose
{
  if (objc_msgSend_hasCategoryRules(self, a2, v2, v3) & 1) != 0 || (objc_msgSend_isAPivotTable(self, v5, v6, v7))
  {
    return 0;
  }

  v12 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v8, v9, v10);
  objc_msgSend_range(self, v13, v14, v15);
  v17 = v16;
  v20 = objc_msgSend_numberOfRows(self, v16, v18, v19);
  v24 = objc_msgSend_maxNumberOfColumns(v12, v21, v22, v23);
  v11 = ((HIDWORD(v17) * v17) & 0xFFFFFFFE) != 0 && v20 <= v24;

  return v11;
}

- (BOOL)useBandedFill
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_intValueForProperty_(v4, v5, 769, v6) != 0;

  return v7;
}

- (id)bandedFillObject
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 770, v6);

  return v7;
}

- (int)parseNumberFromTableName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6, v7);
  v11 = objc_msgSend_rangeOfCharacterFromSet_(nameCopy, v9, v8, v10);

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = -1;
  }

  else
  {
    v16 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v12, v13, v14);
    v18 = objc_msgSend_rangeOfCharacterFromSet_options_(nameCopy, v17, v16, 4);

    v20 = objc_msgSend_substringWithRange_(nameCopy, v19, v11, v18 - v11 + 1);
    v34 = 0.0;
    v33 = 0;
    v21 = MEMORY[0x277D81290];
    v25 = objc_msgSend_documentRoot(self, v22, v23, v24);
    v29 = objc_msgSend_documentLocale(v25, v26, v27, v28);
    LODWORD(v21) = objc_msgSend_numberValueFromString_locale_outDoubleValue_outValueType_(v21, v30, v20, v29, &v34, &v33);
    v31 = v33 == 0;

    if ((v21 & v31) != 0)
    {
      v15 = v34;
    }

    else
    {
      v15 = -1;
    }
  }

  return v15;
}

- (BOOL)hasUntitledTableNameFormat
{
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v9 = objc_msgSend_documentLocale(v5, v6, v7, v8);

  v11 = objc_msgSend_localizedStringForKey_value_table_(v9, v10, @"Table", &stru_2834BADA0, @"TSTables");
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"^%@\\s\\d+(-\\d+)?$", v13, v11);
  v36 = 0;
  v16 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v15, v14, 16, &v36);
  v17 = v36;
  v21 = objc_msgSend_tableName(self, v18, v19, v20);
  v25 = objc_msgSend_tableName(self, v22, v23, v24);
  v29 = objc_msgSend_length(v25, v26, v27, v28);
  v31 = objc_msgSend_matchesInString_options_range_(v16, v30, v21, 0, 0, v29);

  LOBYTE(v25) = objc_msgSend_count(v31, v32, v33, v34) != 0;
  return v25;
}

- (void)chooseUniqueNameInContainer:(id)container forPaste:(BOOL)paste needsNewName:(BOOL)name avoidNames:(id)names
{
  pasteCopy = paste;
  containerCopy = container;
  namesCopy = names;
  v13 = objc_msgSend_tableName(self, v10, v11, v12);
  v79 = objc_msgSend_remappedTableNames(containerCopy, v14, v15, v16);
  v19 = objc_msgSend_parseNumberFromTableName_(self, v17, v13, v18);
  if (v19 == -1 || pasteCopy)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  objc_opt_class();
  v25 = objc_msgSend_tableName(self, v22, v23, v24);
  v28 = objc_msgSend_resolverMatchingName_(containerCopy, v26, v25, v27);
  v83 = TSUCheckedDynamicCast();

  if (objc_msgSend_length(v13, v29, v30, v31))
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = 1;
  }

  v36 = objc_msgSend_documentRoot(self, v32, v33, v34);
  v40 = objc_msgSend_documentLocale(v36, v37, v38, v39);

  v81 = v40;
  v82 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, @"Table %@", &stru_2834BADA0, @"TSTables");
  v45 = 0;
  v46 = (v21 + 1);
  v47 = v13;
  if (nameCopy)
  {
    goto LABEL_19;
  }

  while (1)
  {
    IsUsed = objc_msgSend_resolverNameIsUsed_(containerCopy, v42, v47, v44);
    v49 = v83 ? IsUsed : 0;
    if ((v49 & 1) == 0 && (objc_msgSend_containsObject_(namesCopy, v42, v47, v44) & 1) == 0 && !objc_msgSend_containsObject_(v79, v42, v47, v44))
    {
      break;
    }

LABEL_19:
    if (!v45)
    {
      v45 = objc_msgSend_checkoutNumberFormatter(v81, v42, v43, v44);
    }

    v50 = objc_alloc(MEMORY[0x277CCABB0]);
    v53 = objc_msgSend_initWithUnsignedInt_(v50, v51, v46, v52);
    StringWithNumber = objc_msgSend_createStringWithNumber_(v45, v54, v53, v55);
    if (pasteCopy)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"%@-%@", v57, v13, StringWithNumber);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, v82, v57, StringWithNumber);
    }
    v59 = ;
    if (objc_msgSend_isEqualToString_(v59, v60, v47, v61) && (objc_msgSend_isEqualToString_(v59, v62, v13, v63) & 1) == 0)
    {
      if (objc_msgSend_resolverNameIsUsed_(containerCopy, v64, v59, v65))
      {
        v78 = MEMORY[0x277D81150];
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTTableInfo chooseUniqueNameInContainer:forPaste:needsNewName:avoidNames:]", v67);
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v70);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v72, v68, v71, 5395, 0, "Fresh table name is the same as the old one - aborting infinite loop.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
      }

      break;
    }

    v46 = (v46 + 1);
    v47 = v59;
  }

  objc_msgSend_returnNumberFormatter_(v81, v42, v45, v44);
  objc_msgSend_setTableName_(self, v76, v47, v77);
}

+ (TSUCellRect)cellRangeForTableArea:(unint64_t)area givenTableSize:(id)size numberOfHeaderRows:(unsigned int)rows numberOfFooterRows:(unsigned int)footerRows numberOfHeaderColumns:(unsigned int)columns
{
  v7 = 0x7FFF7FFFFFFFLL;
  if (area > 3)
  {
    v8 = (size.var1 - footerRows) | (columns << 32);
    v9 = ((size.var0 - columns) | (*&footerRows << 32));
    if (size.var1 < footerRows)
    {
      v8 = 0x7FFF7FFFFFFFLL;
      v9 = 0;
    }

    if (size.var0 < columns)
    {
      v8 = 0x7FFF7FFFFFFFLL;
      v9 = 0;
    }

    if (size.var1 >= footerRows)
    {
      v14 = size.var1 - footerRows;
    }

    else
    {
      v14 = 0x7FFF7FFFFFFFLL;
    }

    if (size.var1 >= footerRows)
    {
      v15 = columns | (*&rows << 32);
    }

    else
    {
      v15 = 0;
    }

    if (area == 6)
    {
      v7 = v14;
      v12 = v15;
    }

    else
    {
      v12 = 0;
    }

    if (area == 5)
    {
      v7 = 0;
      v12 = columns | (*&rows << 32);
    }

    v13 = area == 4;
    goto LABEL_31;
  }

  if (area != 1)
  {
    v8 = columns << 32;
    v9 = ((size.var0 - columns) | (*&rows << 32));
    if (size.var0 < columns)
    {
      v8 = 0x7FFF7FFFFFFFLL;
      v9 = 0;
    }

    if (size.var1 >= footerRows + rows)
    {
      rowsCopy = rows;
    }

    else
    {
      rowsCopy = 0x7FFF7FFFFFFFLL;
    }

    if (size.var1 >= footerRows + rows)
    {
      v11 = columns | ((size.var1 - (footerRows + rows)) << 32);
    }

    else
    {
      v11 = 0;
    }

    if (area == 3)
    {
      v7 = rowsCopy;
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = area == 2;
LABEL_31:
    if (v13)
    {
      v16 = v8;
    }

    else
    {
      v16 = v7;
    }

    if (v13)
    {
      v17 = v9;
    }

    else
    {
      v17 = v12;
    }

    goto LABEL_49;
  }

  if (size.var1 >= footerRows + rows)
  {
    v18 = rows | (columns << 32);
  }

  else
  {
    v18 = 0x7FFF7FFFFFFFLL;
  }

  if (size.var1 >= footerRows + rows)
  {
    v19 = (size.var0 - columns) | ((size.var1 - (footerRows + rows)) << 32);
  }

  else
  {
    v19 = 0;
  }

  if (size.var0 >= columns)
  {
    v16 = v18;
  }

  else
  {
    v16 = 0x7FFF7FFFFFFFLL;
  }

  if (size.var0 >= columns)
  {
    v17 = v19;
  }

  else
  {
    v17 = 0;
  }

LABEL_49:
  result.size = v17;
  result.origin = v16;
  return result;
}

- (TSUCellRect)cellRangeForTableArea:(unint64_t)area
{
  v3 = (MEMORY[0x2821F9670])(self->_translator, sel_cellRangeForTableArea_, area);
  result.size = v4;
  result.origin = v3;
  return result;
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d
{
  translator = self->_translator;
  row = d->_row;
  v7[0] = d->_column;
  v7[1] = row;
  return objc_msgSend_tableStyleAreaForCellUID_(translator, a2, v7, v3);
}

- (void)updateCalcEngineForTableSize
{
  objc_msgSend_updateCalcEngineForTableSize(self->_tableModel, a2, v2, v3);
  pivotDataModel = self->_pivotDataModel;

  objc_msgSend_updateCalcEngineForTableSize(pivotDataModel, v5, v6, v7);
}

+ (unint64_t)tableStyleAreaForCellID:(TSUCellCoord)d inTableWithHeaderColumns:(unsigned int)columns headerRows:(unsigned int)rows footerRows:(unsigned int)footerRows totalRows:(unsigned int)totalRows
{
  if (d.row < rows)
  {
    return 2;
  }

  if (footerRows && totalRows - footerRows <= d.row)
  {
    return 4;
  }

  if (columns <= d.column)
  {
    return 1;
  }

  return 3;
}

+ (unint64_t)tableAreaForCellID:(TSUCellCoord)d inTableWithHeaderColumns:(unsigned int)columns headerRows:(unsigned int)rows footerRows:(unsigned int)footerRows totalRows:(unsigned int)totalRows
{
  v7 = 2;
  v8 = totalRows - footerRows > d.row || footerRows == 0;
  v9 = 4;
  if (v8)
  {
    v9 = 1;
  }

  if (d.row >= rows)
  {
    v7 = v9;
  }

  v10 = 6;
  if (totalRows - footerRows > d.row)
  {
    v10 = 3;
  }

  if (d.row < rows)
  {
    v10 = 5;
  }

  if (columns > d.column)
  {
    return v10;
  }

  else
  {
    return v7;
  }
}

- (id)tableAreasForCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&range.origin, *&range.size);
  v10 = objc_msgSend_bodyRange(self, v7, v8, v9);
  v12 = sub_221119E0C(origin, size, v10, v11);
  if ((v12 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v13 >> 32 != 0 && v13 != 0)
  {
    if (v12 != *MEMORY[0x277D813C8] || (((*MEMORY[0x277D813C8] ^ v12) & 0x101FFFF00000000) == 0 ? (v53 = v13 == *(MEMORY[0x277D813C8] + 8)) : (v53 = 0), !v53))
    {
      objc_msgSend_addIndex_(v6, v13, 1, v15);
    }
  }

  v18 = objc_msgSend_headerRowRange(self, v13, v14, v15);
  v20 = sub_221119E0C(origin, size, v18, v19);
  if ((v20 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v21 >> 32 && v21)
  {
    if (v20 != *MEMORY[0x277D813C8] || (((*MEMORY[0x277D813C8] ^ v20) & 0x101FFFF00000000) == 0 ? (v24 = v21 == *(MEMORY[0x277D813C8] + 8)) : (v24 = 0), !v24))
    {
      objc_msgSend_addIndex_(v6, v21, 2, v23);
    }
  }

  v25 = objc_msgSend_actualHeaderColumnRange(self, v21, v22, v23);
  v27 = sub_221119E0C(origin, size, v25, v26);
  if ((v27 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v28 >> 32 && v28 && (v27 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v27) & 0x101FFFF00000000) != 0 || v28 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v6, v28, 3, v30);
  }

  v31 = objc_msgSend_footerRowRange(self, v28, v29, v30);
  v33 = sub_221119E0C(origin, size, v31, v32);
  if ((v33 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v34 >> 32 && v34 && (v33 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v33) & 0x101FFFF00000000) != 0 || v34 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v6, v34, 4, v36);
  }

  v37 = objc_msgSend_topCornerRange(self, v34, v35, v36);
  v39 = sub_221119E0C(origin, size, v37, v38);
  if ((v39 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v40 >> 32 && v40 && (v39 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v39) & 0x101FFFF00000000) != 0 || v40 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v6, v40, 5, v42);
  }

  v43 = objc_msgSend_bottomCornerRange(self, v40, v41, v42);
  v45 = sub_221119E0C(origin, size, v43, v44);
  if ((v45 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v46 >> 32 && v46 && (v45 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v45) & 0x101FFFF00000000) != 0 || v46 != *(MEMORY[0x277D813C8] + 8)))
  {
    objc_msgSend_addIndex_(v6, v46, 6, v47);
  }

  v48 = objc_alloc(MEMORY[0x277CCAA78]);
  v51 = objc_msgSend_initWithIndexSet_(v48, v49, v6, v50);

  return v51;
}

- (int)getDefaultCell:(id)cell forCellID:(TSUCellCoord)d
{
  cellCopy = cell;
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo getDefaultCell:forCellID:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 5605, 0, "trying to get a default cell for an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  DefaultCell_forCellID = objc_msgSend_getDefaultCell_forCellID_(self->_translator, v6, cellCopy, *&d);

  return DefaultCell_forCellID;
}

- (int)getCell:(id)cell atCellID:(TSUCellCoord)d suppressCellBorder:(BOOL)border
{
  borderCopy = border;
  cellCopy = cell;
  translator = self->_translator;
  if (!translator)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableInfo getCell:atCellID:suppressCellBorder:]", v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 5616, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    translator = self->_translator;
  }

  Cell_atCellID_suppressCellBorder = objc_msgSend_getCell_atCellID_suppressCellBorder_(translator, v8, cellCopy, *&d, borderCopy);

  return Cell_atCellID_suppressCellBorder;
}

- (int)getCell:(id)cell atCellID:(TSUCellCoord)d
{
  cellCopy = cell;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo getCell:atCellID:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 5621, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  Cell_atCellID = objc_msgSend_getCell_atCellID_(translator, v6, cellCopy, *&d);

  return Cell_atCellID;
}

- (id)cellAtCellID:(TSUCellCoord)d
{
  if (objc_msgSend_cellExistsAtCellID_(self, a2, *&d, v3))
  {
    v9 = objc_msgSend_newCell(self, v6, v7, v8);
    if (!objc_msgSend_getCell_atCellID_(self, v10, v9, *&d))
    {
      goto LABEL_9;
    }
  }

  v11 = objc_msgSend_cellBorderAtCellID_(self, v6, *&d, v8);
  v15 = v11;
  if (v11 && objc_msgSend_hasContent(v11, v12, v13, v14))
  {
    v19 = objc_msgSend_newCell(self, v16, v17, v18);
    objc_msgSend_setCellBorder_(v19, v20, v15, v21);
  }

  else
  {
    v19 = 0;
  }

  v9 = v19;
LABEL_9:

  return v9;
}

- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d
{
  translator = self->_translator;
  if (!translator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo hasFormulaAtCellUID:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5648, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_hasFormulaAtCellUID_, d, v3);
}

- (void)convertFormulasToUidForm:(id)form atCellID:(TSUCellCoord)d preserveHostCell:(BOOL)cell
{
  cellCopy = cell;
  formCopy = form;
  if ((objc_msgSend_hasFormula(formCopy, v9, v10, v11) & 1) != 0 || objc_msgSend_hasConditionalStyle(formCopy, v12, v13, v14))
  {
    v15 = objc_msgSend_translator(self, v12, v13, v14);
    v18 = objc_msgSend_baseCellCoordForViewCellCoord_(v15, v16, *&d, v17);

    if (objc_msgSend_hasConditionalStyle(formCopy, v19, v20, v21))
    {
      v25 = objc_msgSend_conditionalStyle(formCopy, v22, v23, v24);
      v27 = objc_msgSend_copyToUidFormForTableInfo_inCellCoordinate_preserveHostCell_(v25, v26, self, v18, cellCopy);
      objc_msgSend_setConditionalStyle_(formCopy, v28, v27, v29);
    }

    if (objc_msgSend_hasFormula(formCopy, v22, v23, v24))
    {
      v36 = objc_msgSend_formulaObject(formCopy, v30, v31, v32);
      if (v36)
      {
        v37 = objc_msgSend_calcEngine(self, v33, v34, v35);
        v52.coordinate = v18;
        v52._tableUID._lower = objc_msgSend_tableUID(self, v38, v39, v40);
        v52._tableUID._upper = v41;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v53, v37, &v52);

        TSCEFormulaRewriteContext::setPreserveHostCell(&v53, cellCopy);
        v52.coordinate = objc_msgSend_tableUID(self, v42, v43, v44);
        v52._tableUID._lower = v45;
        *&v46 = TSCEFormulaRewriteContext::setResolverTableUID(&v53, &v52).n128_u64[0];
        v49 = objc_msgSend_copyByRewritingReferencesToUidForm_(v36, v47, &v53, v48, v46);
        objc_msgSend_setFormulaObject_(formCopy, v50, v49, v51);
      }
    }
  }
}

- (id)formulaAtCellID:(TSUCellCoord)d
{
  translator = self->_translator;
  if (!translator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo formulaAtCellID:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5681, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    translator = self->_translator;
  }

  return objc_msgSend_formulaAtCellID_(translator, a2, *&d, v3);
}

- (int)setCell:(id)cell atCellCoord:(TSUCellCoord)coord
{
  cellCopy = cell;
  objc_msgSend_cellUIDForCellID_(self, v7, *&coord, v8);
  LODWORD(self) = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(self, v9, cellCopy, &v11, 0, 0);

  return self;
}

- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer
{
  warningsCopy = warnings;
  formulaCopy = formula;
  cellCopy = cell;
  replacerCopy = replacer;
  translator = self->_translator;
  if (!translator)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableInfo setCell:atCellUID:ignoreFormula:clearImportWarnings:formulaReplacer:]", v14);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 5694, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    translator = self->_translator;
  }

  v26 = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_formulaReplacer_(translator, v13, cellCopy, d, formulaCopy, warningsCopy, replacerCopy);

  return v26;
}

- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings
{
  warningsCopy = warnings;
  formulaCopy = formula;
  cellCopy = cell;
  translator = self->_translator;
  if (!translator)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableInfo setCell:atCellUID:ignoreFormula:clearImportWarnings:]", v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 5706, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    translator = self->_translator;
  }

  v23 = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(translator, v10, cellCopy, d, formulaCopy, warningsCopy);

  return v23;
}

- (int)setCellsWithCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells
{
  cellsCopy = cells;
  formulasCopy = formulas;
  mapCopy = map;
  if (!self->_translator)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableInfo setCellsWithCellMap:ignoreFormulas:skipDirtyingNonFormulaCells:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 5714, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if ((objc_msgSend_isUIDBased(mapCopy, v8, v9, v10) & 1) == 0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableInfo setCellsWithCellMap:ignoreFormulas:skipDirtyingNonFormulaCells:]", v22);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 5715, 0, "coord based cellmaps no longer ok");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  v32 = objc_msgSend_setCellsWithCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self->_translator, v21, mapCopy, formulasCopy, cellsCopy);

  return v32;
}

- (BOOL)isValidForInteraction
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  if (objc_msgSend_emptyFilteredTable(v5, v6, v7, v8))
  {

    return 0;
  }

  v12 = objc_msgSend_numberOfHiddenRows(self, v9, v10, v11);
  v16 = objc_msgSend_numberOfRows(self, v13, v14, v15);

  if (v12 == v16)
  {
    return 0;
  }

  return objc_msgSend_isEmptyPivot(self, v17, v18, v19) ^ 1;
}

- (void)flattenGroupValuesIfNeededForCell:(id)cell viewCellCoord:(TSUViewCellCoord)coord summaryAndLabelRows:(id)rows categoryColumns:(id)columns
{
  cellCopy = cell;
  rowsCopy = rows;
  columnsCopy = columns;
  if (objc_msgSend_isCategorized(self, v12, v13, v14) & 1) != 0 || (objc_msgSend_isAPivotTable(self, v15, v16, v17))
  {
    if (objc_msgSend_isCategorized(self, v15, v16, v17) && objc_msgSend_containsIndex_(rowsCopy, v18, coord._coord.row, v20) && objc_msgSend_containsIndex_(columnsCopy, v18, coord._coord.column, v20))
    {
      v21 = objc_msgSend_groupBy(self, v18, v19, v20);
      v24 = objc_msgSend_rowUIDForRowIndex_(self, v22, *&coord, v23);
      v26 = objc_msgSend_groupNodeForGroupUid_(v21, v25, v24, v25);

      if (v26)
      {
        v30 = objc_msgSend_groupCellValue(v26, v27, v28, v29);
        v34 = objc_msgSend_valueType(v30, v31, v32, v33);
        if (v34 <= 0xA && ((1 << v34) & 0x605) != 0)
        {
          v38 = objc_msgSend_formattedValue(cellCopy, v35, v36, v37);
          objc_msgSend_setStringValue_(cellCopy, v39, v38, v40);

          v44 = objc_msgSend_textFormat(MEMORY[0x277D80680], v41, v42, v43);
          objc_msgSend_setCurrentFormat_isExplicit_(cellCopy, v45, v44, 0);
        }
      }

      goto LABEL_14;
    }

    if (objc_msgSend_isAPivotTable(self, v18, v19, v20) && (objc_msgSend_cellFlags(cellCopy, v46, v47, v48) & 4) != 0)
    {
      v26 = objc_msgSend_formattedValue(cellCopy, v49, v50, v51);
      objc_msgSend_setStringValue_(cellCopy, v52, v26, v53);
      v57 = objc_msgSend_textFormat(MEMORY[0x277D80680], v54, v55, v56);
      objc_msgSend_setCurrentFormat_isExplicit_(cellCopy, v58, v57, 0);

      v62 = objc_msgSend_cellFlags(cellCopy, v59, v60, v61);
      objc_msgSend_setCellFlags_(cellCopy, v63, v62 & 0xFFFFFFFB, v64);
LABEL_14:
    }
  }
}

- (id)cellMapForRegion:(id)region uidBased:(BOOL)based suppressMergeContent:(BOOL)content useCategoriesWildcards:(BOOL)wildcards
{
  wildcardsCopy = wildcards;
  basedCopy = based;
  regionCopy = region;
  if (regionCopy)
  {
    v14 = regionCopy;
    if (objc_msgSend_cellCount(regionCopy, v11, v12, v13))
    {
      v15 = [TSTCellMap alloc];
      v19 = objc_msgSend_context(self, v16, v17, v18);
      v21 = objc_msgSend_initWithContext_uidBased_(v15, v20, v19, basedCopy);

      if ((objc_msgSend_isCategorized(self, v22, v23, v24) & wildcardsCopy) == 1 && basedCopy)
      {
        v26 = objc_msgSend_prunedCellRegionAgainstTable_behavior_(v14, v25, self, 1);
        v29 = objc_msgSend_regionBySubtractingRegion_(v14, v27, v26, v28);
        v30 = v26;

        v34 = objc_msgSend_newCell(self, v31, v32, v33);
        v36 = objc_msgSend_cellUIDListFromCellRegion_useCategoriesWildcards_(self, v35, v29, 1);
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = sub_221104FA4;
        v85[3] = &unk_27845EE10;
        v37 = v34;
        v86 = v37;
        selfCopy = self;
        v88 = v21;
        objc_msgSend_enumerateCellUIDsUsingBlock_(v36, v38, v85, v39);

        v14 = v30;
      }

      v40 = [TSTConcurrentCellIterator alloc];
      v42 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v40, v41, self, v14, 194, 536871936);
      isCategorized = objc_msgSend_isCategorized(self, v43, v44, v45);
      v50 = isCategorized;
      if (isCategorized)
      {
        v51 = objc_msgSend_indexesForSummaryAndLabelRows(self, v47, v48, v49);
        v55 = objc_msgSend_indexesForCategoryColumns(self, v52, v53, v54);
      }

      else
      {
        v55 = 0;
        v51 = 0;
      }

      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = sub_221104FF8;
      v83[3] = &unk_27845EE30;
      v84 = basedCopy;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = sub_221105040;
      v75[3] = &unk_27845EE58;
      contentCopy = content;
      v57 = v14;
      v76 = v57;
      selfCopy2 = self;
      v81 = basedCopy;
      v82 = v50;
      v58 = v51;
      v78 = v58;
      v59 = v55;
      v79 = v59;
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_2211052AC;
      v73[3] = &unk_27845DDE8;
      v56 = v21;
      v74 = v56;
      objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v42, v60, v83, v75, v73);
      v63 = objc_msgSend_mergeActionForRegion_(self, v61, v57, v62);
      objc_msgSend_addMergeAction_(v56, v64, v63, v65);

      if (!objc_msgSend_count(v56, v66, v67, v68) && (objc_msgSend_containsMergeChanges(v56, v69, v70, v71) & 1) == 0)
      {

        v56 = 0;
      }
    }

    else
    {
      v56 = 0;
      v57 = v14;
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  return v56;
}

- (id)concurrentCellMapForRegion:(id)region suppressMergeContent:(BOOL)content gatherCellBorders:(BOOL)borders
{
  bordersCopy = borders;
  regionCopy = region;
  v12 = regionCopy;
  if (regionCopy && objc_msgSend_cellCount(regionCopy, v9, v10, v11))
  {
    if (objc_msgSend_isCategorized(self, v13, v14, v15))
    {
      v19 = 0;
      v20 = 66;
    }

    else
    {
      isAPivotTable = objc_msgSend_isAPivotTable(self, v16, v17, v18);
      v23 = 194;
      if (!bordersCopy)
      {
        v23 = 66;
      }

      if (isAPivotTable)
      {
        v20 = 66;
      }

      else
      {
        v20 = v23;
      }

      v19 = bordersCopy & ~isAPivotTable;
    }

    v24 = [TSTConcurrentCellMap alloc];
    v28 = objc_msgSend_context(self, v25, v26, v27);
    v30 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v24, v29, v28, 0, v19);

    v31 = [TSTConcurrentCellIterator alloc];
    v33 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v31, v32, self, v12, v20, 536871936);
    isCategorized = objc_msgSend_isCategorized(self, v34, v35, v36);
    v41 = isCategorized;
    if (isCategorized)
    {
      v42 = objc_msgSend_indexesForSummaryAndLabelRows(self, v38, v39, v40);
      v46 = objc_msgSend_indexesForCategoryColumns(self, v43, v44, v45);
    }

    else
    {
      v46 = 0;
      v42 = 0;
    }

    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_2211056DC;
    v60[3] = &unk_27845EE80;
    v60[4] = self;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_22110576C;
    v53[3] = &unk_27845EEA8;
    contentCopy = content;
    v54 = v12;
    selfCopy = self;
    v59 = v41;
    v47 = v42;
    v56 = v47;
    v57 = v46;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_221105938;
    v51[3] = &unk_27845DDE8;
    v21 = v30;
    v52 = v21;
    v48 = v46;
    objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v33, v49, v60, v53, v51);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (int)getCell:(id)cell atCellID:(TSUCellCoord)d holdingReadLockWithAccessController:(id)controller
{
  cellCopy = cell;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221105A44;
  v13[3] = &unk_27845EED0;
  v13[4] = self;
  v14 = cellCopy;
  v15 = &v17;
  dCopy = d;
  v9 = cellCopy;
  objc_msgSend_performRead_(controller, v10, v13, v11);
  LODWORD(controller) = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return controller;
}

- (unsigned)cellValueTypeAtCellID:(TSUCellCoord)d
{
  translator = self->_translator;
  if (!translator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellValueTypeAtCellID:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5932, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    translator = self->_translator;
  }

  return objc_msgSend_cellValueTypeAtCellID_(translator, a2, *&d, v3);
}

- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)d
{
  translator = self->_translator;
  if (!translator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellValueTypeAtCellUID:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5937, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_cellValueTypeAtCellUID_, d, v3);
}

- (int)setCellStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setCellStyle:ofRowAtUID:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 5944, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  v19 = objc_msgSend_setCellStyle_ofRowAtUID_(translator, v6, styleCopy, d);

  return v19;
}

- (int)setTextStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setTextStyle:ofRowAtUID:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 5949, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  v19 = objc_msgSend_setTextStyle_ofRowAtUID_(translator, v6, styleCopy, d);

  return v19;
}

- (id)cellStyleOfRowAtIndex:(unsigned int)index isDefault:(BOOL *)default
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleOfRowAtIndex:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 5954, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return objc_msgSend_cellStyleOfRowAtIndex_isDefault_(translator, a2, index, default);
}

- (id)textStyleOfRowAtIndex:(unsigned int)index isDefault:(BOOL *)default
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleOfRowAtIndex:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 5959, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return objc_msgSend_textStyleOfRowAtIndex_isDefault_(translator, a2, index, default);
}

- (int)setCellStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setCellStyle:ofColumnAtUID:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 5964, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  v19 = objc_msgSend_setCellStyle_ofColumnAtUID_(translator, v6, styleCopy, d);

  return v19;
}

- (int)setTextStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo setTextStyle:ofColumnAtUID:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 5969, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  v19 = objc_msgSend_setTextStyle_ofColumnAtUID_(translator, v6, styleCopy, d);

  return v19;
}

- (id)cellStyleOfColumnAtIndex:(unsigned __int16)index isDefault:(BOOL *)default
{
  indexCopy = index;
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleOfColumnAtIndex:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 5974, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return objc_msgSend_cellStyleOfColumnAtIndex_isDefault_(translator, a2, indexCopy, default);
}

- (id)textStyleOfColumnAtIndex:(unsigned __int16)index isDefault:(BOOL *)default
{
  indexCopy = index;
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleOfColumnAtIndex:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 5979, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return objc_msgSend_textStyleOfColumnAtIndex_isDefault_(translator, a2, indexCopy, default);
}

- (id)defaultCellStyleForCellID:(TSUCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultCellStyleForCellID:useSoftDefault:outSource:]", default);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 5988, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(translator, a2, *&d, defaultCopy, source);
}

- (id)defaultCellStyleForTableStyleArea:(unint64_t)area
{
  translator = self->_translator;
  if (!translator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultCellStyleForTableStyleArea:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5993, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    translator = self->_translator;
  }

  return objc_msgSend_defaultCellStyleForTableStyleArea_(translator, a2, area, v3);
}

- (id)defaultTextStyleForCellID:(TSUCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultTextStyleForCellID:useSoftDefault:outSource:]", default);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 6002, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(translator, a2, *&d, defaultCopy, source);
}

- (id)defaultTextStyleForTableStyleArea:(unint64_t)area
{
  translator = self->_translator;
  if (!translator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo defaultTextStyleForTableStyleArea:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 6007, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    translator = self->_translator;
  }

  return objc_msgSend_defaultTextStyleForTableStyleArea_(translator, a2, area, v3);
}

- (id)cellStyleAtCellID:(TSUCellCoord)d isDefault:(BOOL *)default
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleAtCellID:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 6012, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return objc_msgSend_cellStyleAtCellID_isDefault_(translator, a2, *&d, default);
}

- (id)textStyleAtCellID:(TSUCellCoord)d isDefault:(BOOL *)default
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleAtCellID:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 6017, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return objc_msgSend_textStyleAtCellID_isDefault_(translator, a2, *&d, default);
}

- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo cellStyleAtCellUID:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 6022, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_cellStyleAtCellUID_isDefault_, d, default);
}

- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  translator = self->_translator;
  if (!translator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo textStyleAtCellUID:isDefault:]", default);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 6027, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    translator = self->_translator;
  }

  return MEMORY[0x2821F9670](translator, sel_textStyleAtCellUID_isDefault_, d, default);
}

- (id)conditionalStyleSetAtCellID:(TSUCellCoord)d
{
  translator = self->_translator;
  if (!translator)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo conditionalStyleSetAtCellID:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 6037, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    translator = self->_translator;
  }

  return objc_msgSend_conditionalStyleSetAtCellID_(translator, a2, *&d, v3);
}

- (id)noRuleConditionalStyleSet
{
  noRuleConditionalStyleSet = self->_noRuleConditionalStyleSet;
  if (!noRuleConditionalStyleSet)
  {
    v4 = [TSTConditionalStyleSet alloc];
    v8 = objc_msgSend_context(self, v5, v6, v7);
    v12 = objc_msgSend_array(MEMORY[0x277CBEA60], v9, v10, v11);
    v14 = objc_msgSend_initWithContext_rules_(v4, v13, v8, v12);
    v15 = self->_noRuleConditionalStyleSet;
    self->_noRuleConditionalStyleSet = v14;

    noRuleConditionalStyleSet = self->_noRuleConditionalStyleSet;
  }

  return noRuleConditionalStyleSet;
}

- (BOOL)hasMigratableStylesInCells
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  if (objc_msgSend_hasMigratableStylesInCells(v5, v6, v7, v8))
  {
    hasMigratableStylesInCells = 1;
  }

  else if (objc_msgSend_isAPivotTable(self, v9, v10, v11))
  {
    v16 = objc_msgSend_summaryModel(self, v13, v14, v15);
    hasMigratableStylesInCells = objc_msgSend_hasMigratableStylesInCells(v16, v17, v18, v19);
  }

  else
  {
    hasMigratableStylesInCells = 0;
  }

  return hasMigratableStylesInCells;
}

- (id)columnNameForCellID:(TSUCellCoord)d restrictToBodyRange:(BOOL)range
{
  rangeCopy = range;
  dCopy = d;
  v6 = objc_msgSend_calcEngine(self, a2, *&d, range);
  v10 = objc_msgSend_namer(v6, v7, v8, v9);

  if (!v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableInfo columnNameForCellID:restrictToBodyRange:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 6057, 0, "invalid nil value for '%{public}s'", "refNamer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(v10, v11, &dCopy, rangeCopy, self->_translator, 0);

  return v22;
}

- (id)rowNameForCellID:(TSUCellCoord)d restrictToBodyRange:(BOOL)range
{
  rangeCopy = range;
  dCopy = d;
  v6 = objc_msgSend_calcEngine(self, a2, *&d, range);
  v10 = objc_msgSend_namer(v6, v7, v8, v9);

  if (!v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableInfo rowNameForCellID:restrictToBodyRange:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 6064, 0, "invalid nil value for '%{public}s'", "refNamer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_rowNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(v10, v11, &dCopy, rangeCopy, self->_translator, 0);

  return v22;
}

- (id)columnNameForColumnIndex:(unsigned __int16)index
{
  indexCopy = index;
  v6 = sub_2214AAEA8(self, a2, index, v3);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Column %@", &stru_2834BADA0, @"TSTables");
  v10 = objc_msgSend_columnNameForColumnIndex_withFallbackFormat_(self, v9, indexCopy, v8);

  return v10;
}

- (id)columnNameForColumnIndex:(unsigned __int16)index withFallbackFormat:(id)format
{
  indexCopy = index;
  formatCopy = format;
  v10 = objc_msgSend_calcEngine(self, v7, v8, v9);
  v14 = objc_msgSend_namer(v10, v11, v12, v13);

  if (!v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableInfo columnNameForColumnIndex:withFallbackFormat:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 6075, 0, "invalid nil value for '%{public}s'", "refNamer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  v26 = objc_msgSend_columnNameForColumnIndex_withFallbackFormat_translator_(v14, v15, indexCopy, formatCopy, self->_translator);

  return v26;
}

+ (id)displayNameForColumnName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v4, v5, v6);
  v10 = objc_msgSend_componentsSeparatedByCharactersInSet_(nameCopy, v8, v7, v9);
  v13 = objc_msgSend_componentsJoinedByString_(v10, v11, @" ", v12);

  return v13;
}

- (id)pivotDataLocalizedColumnNameAtDataColumnIndex:(TSUModelColumnIndex)index
{
  if (self->_isAPivotTable)
  {
    v4 = objc_msgSend_documentLocalizedDisplayNameForColumnAtIndex_(self->_pivotDataModel, a2, index._column, v3);
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo pivotDataLocalizedColumnNameAtDataColumnIndex:]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 6088, 0, "Only ask about the pivotDataModel on a pivot table.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    v4 = &stru_2834BADA0;
  }

  return v4;
}

- (id)pivotHeaderColumnDisplayNameAtIndex:(unsigned __int16)index
{
  indexCopy = index;
  v6 = objc_msgSend_pivotOwner(self, a2, index, v3);
  v9 = objc_msgSend_baseColumnIndexForGroupingAtColumnIndex_(v6, v7, indexCopy, v8);

  if (v9 == 0x7FFF)
  {
    objc_msgSend_columnNameForColumnIndex_(self, v10, indexCopy, v11);
  }

  else
  {
    objc_msgSend_pivotDataLocalizedColumnNameAtDataColumnIndex_(self, v10, v9, v11);
  }
  v12 = ;

  return v12;
}

- (id)pivotLeadingColumnDisplayNameAtIndex:(unsigned __int16)index
{
  indexCopy = index;
  v5 = objc_msgSend_pivotOwner(self, a2, index, v3);
  v8 = objc_msgSend_lowestCategoryLevelAsLeadingColumnGroupName_(v5, v6, indexCopy, v7);

  return v8;
}

- (id)pivotHeaderRowDisplayNameAtIndex:(unsigned int)index
{
  v4 = *&index;
  v6 = objc_msgSend_pivotOwner(self, a2, *&index, v3);
  v9 = objc_msgSend_baseColumnIndexForGroupingAtRowIndex_(v6, v7, v4, v8);

  return objc_msgSend_pivotDataLocalizedColumnNameAtDataColumnIndex_(self, v10, v9, v11);
}

- (id)pivotLeadingRowDisplayNameAtIndex:(unsigned int)index
{
  v4 = *&index;
  v5 = objc_msgSend_pivotOwner(self, a2, *&index, v3);
  v8 = objc_msgSend_lowestCategoryLevelAsLeadingRowGroupName_(v5, v6, v4, v7);

  return v8;
}

- (id)cellRangeName:(TSCERangeCoordinate)name usedSymbolicName:(BOOL *)symbolicName
{
  nameCopy = name;
  v33 = objc_msgSend_tableUID(self, a2, *&name._topLeft, *&name._bottomRight);
  v34 = v6;
  v9 = objc_msgSend_translator(self, v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v9, v10, &nameCopy, v11);
  }

  else
  {
    memset(&v31, 0, sizeof(v31));
  }

  if (TSCERangeRef::isValid(&v31))
  {
    v14 = objc_opt_new();
    objc_msgSend_setSuppressIdenticalEndReference_(v14, v15, 1, v16);
    v20 = objc_msgSend_calcEngine(self, v17, v18, v19);
    v24 = objc_msgSend_namer(v20, v21, v22, v23);
    v26 = objc_msgSend_cellRangeNameFromChromeRangeRef_namingContext_(v24, v25, &v31, v14);

    if (symbolicName)
    {
      *symbolicName = objc_msgSend_usedSymbolicName(v14, v27, v28, v29);
    }
  }

  else
  {
    v26 = objc_msgSend_translatedCellRangeName_usedSymbolicName_(self->_translator, v13, &nameCopy, symbolicName);
  }

  return v26;
}

- (id)chromeLabelForColumn:(unsigned __int16)column
{
  if (objc_msgSend_chromeColumnIndexForViewColumnIndex_(self->_translator, a2, column, v3) == 0x7FFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = TSUColumnLabel();
  }

  return v4;
}

- (id)chromeLabelForRow:(unsigned int)row
{
  if (objc_msgSend_chromeRowIndexForViewRowIndex_(self->_translator, a2, row, v3) == 0x7FFFFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = TSURowLabel();
  }

  return v4;
}

- (id)chromeLabelForCellID:(TSUCellCoord)d
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_chromeLabelForColumn_(self, a2, d.column, v3);
  v10 = objc_msgSend_chromeLabelForRow_(self, v8, *&d, v9);
  v13 = objc_msgSend_stringWithFormat_(v6, v11, @"%@%@", v12, v7, v10);

  return v13;
}

- (TSUCellCoord)cellIDLeftOfCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&d, v3);
  if (v7)
  {
    v9 = v7 >> 32 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    column = d.column;
  }

  else
  {
    column = WORD2(v6);
  }

  if ((v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = d.column;
  }

  else
  {
    v11 = column;
  }

  if (v6 == 0x7FFFFFFF)
  {
    v11 = d.column;
  }

  v12 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(self, v7, v11, v8);
  row = d.row;
  if (v12 == 0x7FFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = *&d & 0xFFFF000000000000;
  }

  v15 = v14 | (v12 << 32);
  if (v12 == 0x7FFF)
  {
    row = 0x7FFFFFFFLL;
  }

  return (v15 | row);
}

- (TSUCellCoord)cellIDRightOfCellID:(TSUCellCoord)d
{
  column = d.column;
  v7 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&d, v3);
  v10 = v8 + WORD2(v7) - 1;
  if (v8)
  {
    v11 = WORD2(v7) == 0x7FFF;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v10 = 0x7FFF;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = column;
  }

  if (!(v8 >> 32))
  {
    v12 = column;
  }

  if ((v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = column;
  }

  else
  {
    v13 = v12;
  }

  if (v7 == 0x7FFFFFFF)
  {
    v13 = column;
  }

  v14 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(self, v8, v13, v9);
  row = d.row;
  if (v14 == 0x7FFF)
  {
    v16 = 0;
  }

  else
  {
    v16 = *&d & 0xFFFF000000000000;
  }

  v17 = v16 | (v14 << 32);
  if (v14 == 0x7FFF)
  {
    row = 0x7FFFFFFFLL;
  }

  return (v17 | row);
}

- (TSUCellCoord)cellIDAboveCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&d, v3);
  if (v6 == 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v7)
  {
    row = v9;
  }

  else
  {
    row = d.row;
  }

  if (!(v7 >> 32))
  {
    row = d.row;
  }

  if ((v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = d.row;
  }

  else
  {
    v11 = row;
  }

  if (v6 == 0x7FFFFFFF)
  {
    v12 = d.row;
  }

  else
  {
    v12 = v11;
  }

  v13 = *&d & 0xFFFFFFFF00000000;
  v14 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(self, v7, v12, v8);
  if (v14 == 0x7FFFFFFF)
  {
    v15 = 0x7FFF00000000;
  }

  else
  {
    v15 = v13;
  }

  return (v15 | v14);
}

- (TSUCellCoord)cellIDBelowCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&d, v3);
  v9 = v6 + HIDWORD(v7) - 1;
  if (v6 == 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  if (v7)
  {
    row = v9;
  }

  else
  {
    row = d.row;
  }

  if (!(v7 >> 32))
  {
    row = d.row;
  }

  if ((v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = d.row;
  }

  else
  {
    v11 = row;
  }

  if (v6 == 0x7FFFFFFF)
  {
    v12 = d.row;
  }

  else
  {
    v12 = v11;
  }

  v13 = *&d & 0xFFFFFFFF00000000;
  v14 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(self, v7, v12, v8);
  if (v14 == 0x7FFFFFFF)
  {
    v15 = 0x7FFF00000000;
  }

  else
  {
    v15 = v13;
  }

  return (v15 | v14);
}

- (TSUCellRect)range
{
  v4 = objc_msgSend_range(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)bodyRange
{
  v4 = objc_msgSend_bodyRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)d
{
  v3 = (MEMORY[0x2821F9670])(self->_translator, sel_bodyRangeForLowestLevelGroupEnclosingCellAtCellID_, d);
  result.size = v4;
  result.origin = v3;
  return result;
}

- (TSUCellRect)bodyColumnRange
{
  v4 = objc_msgSend_bodyColumnRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)bodyRowRange
{
  v4 = objc_msgSend_bodyRowRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)headerRowRange
{
  v4 = objc_msgSend_headerRowRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)headerColumnRange
{
  v4 = objc_msgSend_headerColumnRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)actualHeaderColumnRange
{
  v4 = objc_msgSend_actualHeaderColumnRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)footerRowRange
{
  v4 = objc_msgSend_footerRowRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)topCornerRange
{
  v4 = objc_msgSend_topCornerRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)bottomCornerRange
{
  v4 = objc_msgSend_bottomCornerRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)categoryColumnRange
{
  v4 = objc_msgSend_categoryColumnRange(self->_translator, a2, v2, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSUCellRect)baseColumnRange
{
  v2 = (MEMORY[0x2821F9670])(self->_translator, sel_baseColumnRange);
  result.size = v3;
  result.origin = v2;
  return result;
}

- (void)insertRowsAtIndex:(unsigned int)index count:(unsigned int)count addBefore:(BOOL)before
{
  beforeCopy = before;
  countCopy = count;
  countCopy2 = count;
  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, count, *&count);
  {
    v14 = objc_alloc_init(TSTColumnRowMetadata);
    objc_msgSend_addObject_(i, v15, v14, v16);
  }

  if (objc_msgSend_numberOfHeaderRows(self, v10, v11, v12) <= index)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v17, v18, v19) == index)
    {
      if (beforeCopy)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v24 = objc_msgSend_numberOfRows(self, v21, v22, v23);
      if (v24 - objc_msgSend_numberOfFooterRows(self, v25, v26, v27) <= index)
      {
        v31 = objc_msgSend_numberOfRows(self, v28, v29, v30);
        if (v31 - objc_msgSend_numberOfFooterRows(self, v32, v33, v34) == index && beforeCopy)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }
      }

      else
      {
        v20 = 1;
      }
    }
  }

  else
  {
    v20 = 2;
  }

  sub_2211A9184(countCopy2, __p);
  objc_msgSend_insertRowsAtIndex_uids_metadatas_tableArea_(self, v35, !beforeCopy + index, __p, i, v20);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count addBefore:(BOOL)before
{
  beforeCopy = before;
  countCopy = count;
  indexCopy = index;
  countCopy2 = count;
  for (i = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, count, *&count);
  {
    v14 = objc_alloc_init(TSTColumnRowMetadata);
    objc_msgSend_addObject_(i, v15, v14, v16);
  }

  if (objc_msgSend_numberOfHeaderColumns(self, v10, v11, v12) <= indexCopy)
  {
    if (((objc_msgSend_numberOfHeaderRows(self, v17, v18, v19) == indexCopy) & beforeCopy) != 0)
    {
      v20 = 3;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 3;
  }

  sub_2211A9184(countCopy2, __p);
  objc_msgSend_insertColumnsAtIndex_uids_metadatas_tableArea_(self, v21, ((beforeCopy ^ 1) + indexCopy), __p, i, v20);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)importDeferredRemoveGroupingRowsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v5, v6, v7))
  {
    objc_msgSend_rowUIDsForRowIndexes_(self, v8, indexesCopy, v9);
    v12 = __p;
    if (v33 != __p)
    {
      rowUIDsForImportedGroupingRows = self->_rowUIDsForImportedGroupingRows;
      if (rowUIDsForImportedGroupingRows)
      {
        objc_msgSend_addUuidsFromVector_(rowUIDsForImportedGroupingRows, v10, &__p, v11);
      }

      else
      {
        v17 = [TSCEMutableUIDSet alloc];
        v20 = objc_msgSend_initWithUUIDVector_(v17, v18, &__p, v19);
        v21 = self->_rowUIDsForImportedGroupingRows;
        self->_rowUIDsForImportedGroupingRows = v20;
      }

      v22 = objc_msgSend_hiddenStates(self, v14, v15, v16);
      v26 = objc_msgSend_rowHiddenStateExtent(v22, v23, v24, v25);

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_221108374;
      v30[3] = &unk_27845E958;
      v31 = v26;
      v27 = v26;
      objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v28, v30, v29);

      v12 = __p;
    }

    if (v12)
    {
      v33 = v12;
      operator delete(v12);
    }
  }
}

- (BOOL)hideRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v5 = *&index;
  objc_msgSend_willModify(self->_tableModel, a2, *&index, action);
  hiddenStates = self->_hiddenStates;

  return objc_msgSend_hideRowAtIndex_forAction_(hiddenStates, v7, v5, actionCopy);
}

- (BOOL)hideColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  indexCopy = index;
  objc_msgSend_willModify(self->_tableModel, a2, index, action);
  hiddenStates = self->_hiddenStates;

  return objc_msgSend_hideColumnAtIndex_forAction_(hiddenStates, v7, indexCopy, actionCopy);
}

- (BOOL)showRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v5 = *&index;
  objc_msgSend_willModify(self->_tableModel, a2, *&index, action);
  hiddenStates = self->_hiddenStates;

  return MEMORY[0x2821F9670](hiddenStates, sel_showRowAtIndex_forAction_, v5, actionCopy);
}

- (BOOL)showColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  indexCopy = index;
  objc_msgSend_willModify(self->_tableModel, a2, index, action);
  hiddenStates = self->_hiddenStates;

  return MEMORY[0x2821F9670](hiddenStates, sel_showColumnAtIndex_forAction_, indexCopy, actionCopy);
}

- (id)indexesOfVisibleColumnsInCellRegion:(id)region
{
  v4 = objc_msgSend_indexesOfVisibleColumnsInCellRegion_(self->_hiddenStates, a2, region, v3);

  return v4;
}

- (id)indexesOfVisibleColumnsInColumnRange:(id)range
{
  v4 = objc_msgSend_indexesOfVisibleColumnsInColumnRange_(self->_hiddenStates, a2, range, v3);

  return v4;
}

- (id)indexesOfVisibleRowsInCellRegion:(id)region
{
  v4 = objc_msgSend_indexesOfVisibleRowsInCellRegion_(self->_hiddenStates, a2, region, v3);

  return v4;
}

- (id)indexesOfVisibleRowsInRowRange:(id)range
{
  v4 = objc_msgSend_indexesOfVisibleRowsInRowRange_(self->_hiddenStates, a2, range, v3);

  return v4;
}

- (BOOL)isCellRangeHidden:(TSUCellRect)hidden
{
  size = hidden.size;
  origin = hidden.origin;
  return objc_msgSend_numberOfHiddenRowsInCellRange_(self, a2, *&hidden.origin, *&hidden.size) == hidden.size.numberOfRows || objc_msgSend_numberOfHiddenColumnsInCellRange_(self, v6, origin, size) == size;
}

- (unsigned)numberOfVisibleBodyRows
{
  v8 = objc_msgSend_numberOfHiddenRows(self, a2, v2, v3);
  if (v8)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v5, v6, v7))
    {
      v12 = objc_msgSend_headerRowRange(self, v9, v10, v11);
      v8 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v13, v12, v13);
    }

    if (objc_msgSend_numberOfFooterRows(self, v9, v10, v11))
    {
      v14 = objc_msgSend_footerRowRange(self, v5, v6, v7);
      v8 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v15, v14, v15);
    }
  }

  objc_msgSend_bodyRowRange(self, v5, v6, v7);
  return v16 - v8;
}

- (unsigned)numberOfUserVisibleBodyRows
{
  v8 = objc_msgSend_numberOfUserHiddenRows(self, a2, v2, v3);
  if (v8)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v5, v6, v7))
    {
      v12 = objc_msgSend_headerRowRange(self, v9, v10, v11);
      v8 -= objc_msgSend_numberOfUserHiddenRowsInCellRange_(self, v13, v12, v13);
    }

    if (objc_msgSend_numberOfFooterRows(self, v9, v10, v11))
    {
      v14 = objc_msgSend_footerRowRange(self, v5, v6, v7);
      v8 -= objc_msgSend_numberOfUserHiddenRowsInCellRange_(self, v15, v14, v15);
    }
  }

  objc_msgSend_bodyRowRange(self, v5, v6, v7);
  return v16 - v8;
}

- (unsigned)numberOfVisibleBaseBodyRows
{
  v8 = objc_msgSend_numberOfHiddenRows(self, a2, v2, v3);
  if (v8)
  {
    if (objc_msgSend_numberOfHeaderRows(self, v5, v6, v7))
    {
      v12 = objc_msgSend_headerRowRange(self, v9, v10, v11);
      v8 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v13, v12, v13);
    }

    if (objc_msgSend_numberOfFooterRows(self, v9, v10, v11))
    {
      v14 = objc_msgSend_footerRowRange(self, v5, v6, v7);
      v8 -= objc_msgSend_numberOfHiddenRowsInCellRange_(self, v15, v14, v15);
    }
  }

  return objc_msgSend_numberOfBaseBodyRows(self, v5, v6, v7) - v8;
}

- (unsigned)numberOfVisibleBodyColumns
{
  v8 = objc_msgSend_numberOfHiddenColumns(self, a2, v2, v3);
  if (v8 && objc_msgSend_numberOfHeaderColumns(self, v5, v6, v7))
  {
    v9 = objc_msgSend_headerColumnRange(self, v5, v6, v7);
    v8 -= objc_msgSend_numberOfHiddenColumnsInCellRange_(self, v10, v9, v10);
  }

  objc_msgSend_bodyColumnRange(self, v5, v6, v7);
  return v11 - v8;
}

- (id)stringAtCellID:(TSUCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo stringAtCellID:optionalCell:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 6755, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  v19 = objc_msgSend_stringAtCellID_optionalCell_(translator, v6, *&d, cellCopy);

  return v19;
}

- (id)characterFillAtCellID:(TSUCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo characterFillAtCellID:optionalCell:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 6760, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  v19 = objc_msgSend_characterFillAtCellID_optionalCell_(translator, v6, *&d, cellCopy);

  return v19;
}

- (id)cellValueViewStringAtCellID:(TSUCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    v10 = cellCopy;
    hasValueOrError = objc_msgSend_hasValueOrError(cellCopy, v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_cellAtCellID_(self, v7, *&d, v9);
    if (!v10)
    {
      v37 = 0;
      goto LABEL_33;
    }

    hasValueOrError = objc_msgSend_hasValueOrError(v10, v15, v16, v17);
  }

  if (!hasValueOrError || !objc_msgSend_isAPivotTable(self, v12, v13, v14) || (objc_msgSend_isEmptyPivot(self, v12, v13, v14) & 1) != 0)
  {
LABEL_29:
    if ((objc_msgSend_cellFlags(v10, v12, v13, v14) & 4) != 0)
    {
      objc_msgSend_formattedValue(v10, v55, v56, v57);
    }

    else
    {
      objc_msgSend_stringForUnderlyingValue(v10, v55, v56, v57);
    }
    v37 = ;
    goto LABEL_33;
  }

  v18 = objc_msgSend_pivotOwner(self, v12, v13, v14);
  v22 = objc_msgSend_groupBySet(v18, v19, v20, v21);

  v26 = objc_msgSend_numberOfHeaderRows(self, v23, v24, v25);
  v30 = objc_msgSend_numberOfHeaderColumns(self, v27, v28, v29);
  v60 = 0u;
  v61 = 0u;
  objc_msgSend_cellUIDForCellID_(self, v31, *&d, v32);
  v36 = d.column < v30 && v60 == *"aggre names col" && *(&v60 + 1) == *"mes col";
  v38 = v26 > d.row && v61 == *"aggre names row" && *(&v61 + 1) == *"mes row";
  v39 = objc_msgSend_objectLocale(self, v33, v34, v35);
  v42 = v39;
  v44 = v26 <= d.row || d.column >= v30;
  if (v38 || v36 || !v44)
  {

    goto LABEL_29;
  }

  if (v26 > d.row)
  {
    v59 = objc_msgSend_descriptionForPivotGroupCellForColumnUid_upToLevel_(v22, v40, &v60, (LOBYTE(d.row) + 1));
LABEL_38:
    v37 = v59;
    goto LABEL_39;
  }

  if (d.column < v30)
  {
    v59 = objc_msgSend_descriptionForPivotGroupCellForRowUid_upToLevel_(v22, v40, &v61, (LOBYTE(d.column) + 1));
    goto LABEL_38;
  }

  v45 = objc_msgSend_descriptionForPivotBodyCellForUidCoord_(v22, v40, &v60, v41);
  v46 = MEMORY[0x277CCACA8];
  v48 = sub_2211310B0(v42, v47);
  v52 = objc_msgSend_formattedValue(v10, v49, v50, v51);
  v37 = objc_msgSend_stringWithFormat_(v46, v53, v48, v54, v52, v45, &stru_2834BADA0);

LABEL_39:
LABEL_33:

  return v37;
}

- (id)labelValueViewStringAtCellID:(TSUCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  if (!objc_msgSend_isAPivotTable(self, v7, v8, v9) || (objc_msgSend_isEmptyPivot(self, v10, v11, v12) & 1) != 0 || !cellCopy && (objc_msgSend_cellAtCellID_(self, v13, *&d, v15), (cellCopy = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 0;
    goto LABEL_44;
  }

  v17 = objc_msgSend_objectLocale(self, v13, v14, v15);
  v21 = objc_msgSend_numberOfHeaderRows(self, v18, v19, v20);
  v25 = objc_msgSend_numberOfHeaderColumns(self, v22, v23, v24);
  isSummaryRow = objc_msgSend_isSummaryRow_(self, v26, *&d, v27);
  isSummaryColumn = objc_msgSend_isSummaryColumn_(self, v29, d.column, v30);
  v34 = objc_msgSend_cellUIDForCellID_(self, v32, *&d, v33);
  v38 = d.column < v25 && !*"aggre names col" && *"mes col" == 0;
  v39 = v21 > d.row && !*"aggre names row" && *"mes row" == 0;
  if (v39 || v38)
  {
    if (v39 && v38)
    {
      goto LABEL_25;
    }

    if (d.column >= v25)
    {
      v38 = 0;
    }

    if (v38 && v21 <= d.row || (v21 > d.row ? (v40 = v39) : (v40 = 0), (v41 = @"Field", v40) && d.column >= v25))
    {
LABEL_25:
      v41 = @"Value Field";
    }

    goto LABEL_26;
  }

  if (d.column >= v25 && v21 <= d.row)
  {
    if (((isSummaryRow | isSummaryColumn) & 1) == 0 || (objc_msgSend_translator(self, v35, v36, v37), v43 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(v43, v44, d.column, 0), v43, objc_msgSend_translator(self, v46, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(v49, v50, d.row, 0), v49, v45) && v51)
    {
      v42 = sub_2211094CC(v34, v17);
    }

    else
    {
      v42 = sub_221109484(v34, v17);
    }

    goto LABEL_43;
  }

  if (d.column < v25 && v21 <= d.row)
  {
    if ((isSummaryRow & 1) == 0)
    {
      v42 = sub_2211093F4(v34, v17);
      goto LABEL_43;
    }

LABEL_40:
    v42 = sub_2211093AC(v34, v17);
    goto LABEL_43;
  }

  v41 = @"Field";
  if (v21 > d.row && d.column >= v25)
  {
    if (!isSummaryColumn)
    {
      v42 = sub_22110943C(v34, v17);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_26:
  v42 = objc_msgSend_localizedStringForKey_value_table_(v17, v35, v41, &stru_2834BADA0, @"TSTables");
LABEL_43:
  v16 = v42;

LABEL_44:

  return v16;
}

- (TSUCellRect)mergeRangeAtCellID:(TSUCellCoord)d
{
  v4 = objc_msgSend_mergeRangeAtCellID_(self->_translator, a2, *&d, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (BOOL)isSingleCellOrMergeRange:(TSUCellRect)range
{
  origin = range.origin;
  v5 = range.origin.row != 0x7FFFFFFF && (*&range.origin & 0xFFFF00000000) != 0x7FFF00000000;
  v6 = v5 && *&range.size == 0x100000001;
  result = 1;
  if (!v6)
  {
    if (!v5)
    {
      return 0;
    }

    size = range.size;
    if (!range.size.numberOfRows)
    {
      return 0;
    }

    if (!range.size.numberOfColumns)
    {
      return 0;
    }

    v8 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&range.origin, *&range.size);
    if (origin.row != v8 || ((v8 ^ *&origin) & 0x101FFFF00000000) != 0 || size != v9)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)hasMergeFragmentAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_mergeRangeAtCellID_(self, a2, *&d, v3);
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = ((v5 ^ *&d) & 0xFFFF00000000) != 0 || v5 != d.row;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!HIDWORD(v6))
  {
    v9 = 0;
  }

  return (v5 & 0xFFFF00000000) != 0x7FFF00000000 && v9;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUCellRect)range
{
  if (range.origin.row == 0x7FFFFFFF || (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000 || !range.size.numberOfRows || !range.size.numberOfColumns)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_hasRangeSpanningRowsForCellRange_(self->_translator, a2, *&range.origin, *&range.size);
  }
}

- (TSUCellRect)expandCellRangeToCoverMergedCells:(TSUCellRect)cells
{
  v3 = objc_msgSend_expandCellRangeToCoverMergedCells_(self->_translator, a2, *&cells.origin, *&cells.size);
  result.size = v4;
  result.origin = v3;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)cells
{
  v4 = objc_msgSend_expandCellRegionToCoverMergedCells_(self->_translator, a2, cells, v3);

  return v4;
}

- (BOOL)hasMergeRanges
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8 = objc_msgSend_mergeOwner(v4, v5, v6, v7);
  hasMergeRanges = objc_msgSend_hasMergeRanges(v8, v9, v10, v11);

  return hasMergeRanges;
}

- (id)shrinkReturningInverseForRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->_tableModel, v5, v6, v7);
  isEmpty = objc_msgSend_isEmpty(v8, v9, v10, v11);

  if (isEmpty)
  {
    v15 = 0;
  }

  else
  {
    v15 = objc_msgSend_shrinkReturningInverseForRegion_(self->_translator, v13, regionCopy, v14);
  }

  return v15;
}

- (id)removeReturningInverseForRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->_tableModel, v5, v6, v7);
  isEmpty = objc_msgSend_isEmpty(v8, v9, v10, v11);

  if (isEmpty)
  {
    v15 = 0;
  }

  else
  {
    v15 = objc_msgSend_removeReturningInverseForRegion_(self->_translator, v13, regionCopy, v14);
  }

  return v15;
}

- (id)performActionReturningInverse:(id)inverse formulaReplacer:(id)replacer
{
  inverseCopy = inverse;
  replacerCopy = replacer;
  v11 = objc_msgSend_baseTableModel(self, v8, v9, v10);
  v15 = objc_msgSend_mergeOwner(v11, v12, v13, v14);
  v17 = objc_msgSend_performActionReturningInverse_formulaReplacer_(v15, v16, inverseCopy, replacerCopy);

  return v17;
}

- (id)mergeActionForRegion:(id)region
{
  v4 = objc_msgSend_mergeActionForRegion_(self->_translator, a2, region, v3);

  return v4;
}

- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only
{
  v4 = objc_msgSend_mergeActionForRegion_nonOriginPartialsOnly_(self->_translator, a2, region, only);

  return v4;
}

- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block
{
  blockCopy = block;
  translator = self->_translator;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221109B18;
  v10[3] = &unk_27845EEF8;
  v11 = blockCopy;
  v8 = blockCopy;
  objc_msgSend_enumerateMergesIntersectingCellRegion_usingBlock_(translator, v9, region, v10);
}

- (vector<TSUCellRect,)mergeRangesIntersectingRange:(TSTTableInfo *)self
{
  translator = self->_translator;
  if (translator)
  {
    objc_msgSend_mergeRangesIntersectingRange_(translator, a3, *&a4.origin, *&a4.size);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorToCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (vector<TSUCellRect,)mergeRangesIntersectingCellRegion:(TSTTableInfo *)self
{
  v7 = a4;
  translator = self->_translator;
  if (translator)
  {
    objc_msgSend_mergeRangesIntersectingCellRegion_(translator, v5, v7, v6);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorToCellRectVector();
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (vector<TSUCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableInfo *)self
{
  translator = self->_translator;
  if (translator)
  {
    objc_msgSend_mergeRangesAndCrumbsIntersectingRange_(translator, a3, *&a4.origin, *&a4.size);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorToCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (id)mergesIntersectingRange:(TSUCellRect)range
{
  objc_msgSend_mergeRangesIntersectingRange_(self, a2, *&range.origin, *&range.size);
  v3 = [TSTMergeListWrapper alloc];
  v6 = objc_msgSend_initWithMergeList_(v3, v4, __p, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v6;
}

- (id)mergesIntersectingCellRegion:(id)region
{
  objc_msgSend_mergeRangesIntersectingCellRegion_(self, a2, region, v3);
  v4 = [TSTMergeListWrapper alloc];
  v7 = objc_msgSend_initWithMergeList_(v4, v5, __p, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v7;
}

- (TSDFill)bodyFill
{
  v4 = objc_msgSend_bodyCellStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 898, v6);

  return v7;
}

- (TSDFill)headerColumnsFill
{
  v4 = objc_msgSend_headerColumnCellStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 898, v6);

  return v7;
}

- (TSDFill)headerRowsFill
{
  v4 = objc_msgSend_headerRowCellStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 898, v6);

  return v7;
}

- (TSDFill)footerRowsFill
{
  v4 = objc_msgSend_footerRowCellStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 898, v6);

  return v7;
}

- (id)fillForRow:(unsigned int)row
{
  v9 = 0;
  v3 = objc_msgSend_cellStyleOfRowAtIndex_isDefault_(self, a2, *&row, &v9);
  v6 = v3;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_valueForProperty_(v3, v4, 898, v5);
  }

  return v7;
}

- (id)fillForColumn:(unsigned __int16)column
{
  v9 = 0;
  v3 = objc_msgSend_cellStyleOfColumnAtIndex_isDefault_(self, a2, column, &v9);
  v6 = v3;
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_valueForProperty_(v3, v4, 898, v5);
  }

  return v7;
}

- (TSDStroke)defaultHorizontalBorderStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 796, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 771, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)defaultVerticalBorderStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 796, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 772, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)defaultHorizontalBorderStrokeEvenIfNotVisible
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 771, v6);

  return v7;
}

- (TSDStroke)bodyColumnStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 788, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 774, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)bodyRowStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 789, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 773, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)bodyRowStrokeEvenIfNotVisible
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 773, v6);

  return v7;
}

- (TSDStroke)headerColumnBorderStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 796, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 778, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)headerColumnBodyColumnStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 777, v6);

  return v7;
}

- (TSDStroke)headerColumnBodyRowStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 793, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 776, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)headerColumnSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 775, v6);

  return v7;
}

- (TSDStroke)headerRowBorderStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 796, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 782, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)headerRowBodyColumnStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 791, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 780, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)headerRowBodyRowStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 781, v6);

  return v7;
}

- (TSDStroke)headerRowSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 779, v6);

  return v7;
}

- (TSDStroke)footerRowBorderStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 796, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 786, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)footerRowBodyColumnStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 795, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 784, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)footerRowBodyRowStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 785, v6);

  return v7;
}

- (TSDStroke)footerRowSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 783, v6);

  return v7;
}

- (TSDStroke)categoryLevel1TopStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 808, v6);

  return v7;
}

- (TSDStroke)categoryLevel2TopStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 809, v6);

  return v7;
}

- (TSDStroke)categoryLevel3TopStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 810, v6);

  return v7;
}

- (TSDStroke)categoryLevel4TopStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 811, v6);

  return v7;
}

- (TSDStroke)categoryLevel5TopStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 812, v6);

  return v7;
}

- (TSDStroke)categoryLevel1LabelSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 818, v6);

  return v7;
}

- (TSDStroke)categoryLevel2LabelSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 819, v6);

  return v7;
}

- (TSDStroke)categoryLevel3LabelSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 820, v6);

  return v7;
}

- (TSDStroke)categoryLevel4LabelSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 821, v6);

  return v7;
}

- (TSDStroke)categoryLevel5LabelSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 822, v6);

  return v7;
}

- (TSDStroke)categoryLevel1BottomStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 813, v6);

  return v7;
}

- (TSDStroke)categoryLevel2BottomStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 814, v6);

  return v7;
}

- (TSDStroke)categoryLevel3BottomStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 815, v6);

  return v7;
}

- (TSDStroke)categoryLevel4BottomStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 816, v6);

  return v7;
}

- (TSDStroke)categoryLevel5BottomStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 817, v6);

  return v7;
}

- (TSDStroke)categoryLevel1InteriorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 791, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 823, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)categoryLevel2InteriorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 791, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 824, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)categoryLevel3InteriorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 791, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 825, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)categoryLevel4InteriorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 791, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 826, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)categoryLevel5InteriorStroke
{
  v5 = objc_msgSend_tableStyle(self, a2, v2, v3);
  if (objc_msgSend_intValueForProperty_(v5, v6, 791, v7))
  {
    v11 = objc_msgSend_tableStyle(self, v8, v9, v10);
    v14 = objc_msgSend_valueForProperty_(v11, v12, 827, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSDStroke)bodyPivotGroupHorizontalStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 828, v6);

  return v7;
}

- (TSDStroke)bodyPivotGroupVerticalStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 829, v6);

  return v7;
}

- (TSDStroke)bodyPivotDeEmphasisHorizontalStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 830, v6);

  return v7;
}

- (TSDStroke)bodyPivotEmphasisVerticalStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 831, v6);

  return v7;
}

- (TSDStroke)headerColumnPivotGroupHorizontalStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 832, v6);

  return v7;
}

- (TSDStroke)headerColumnPivotGroupDeEmphasisStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 833, v6);

  return v7;
}

- (TSDStroke)headerRowPivotGroupVerticalStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 835, v6);

  return v7;
}

- (TSDStroke)headerRowPivotGroupDeEmphasisStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 836, v6);

  return v7;
}

- (TSDStroke)headerColumnPivotSeparatorStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 834, v6);

  return v7;
}

- (TSDStroke)headerRowPivotTitleStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 837, v6);

  return v7;
}

- (TSDStroke)footerRowPivotGroupVerticalStroke
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_valueForProperty_(v4, v5, 838, v6);

  return v7;
}

- (id)strokeExporterReturningDefaultStrokes:(BOOL)strokes
{
  strokesCopy = strokes;
  v5 = [TSTStrokeExporter alloc];
  if (strokesCopy)
  {
    v7 = objc_msgSend_initWithDefaultStrokeProvider_customStrokeProvider_tableInfo_(v5, v6, self, self, self);
  }

  else
  {
    v7 = objc_msgSend_initWithDefaultStrokeProvider_customStrokeProvider_tableInfo_(v5, v6, 0, self, self);
  }

  return v7;
}

- (int)maxStrokeOrder
{
  v8 = objc_msgSend_strokeSidecar(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_strokeSidecar(self, v5, v6, v7);
    v13 = objc_msgSend_maxOrder(v9, v10, v11, v12);
  }

  else
  {
    v13 = 2;
  }

  return v13;
}

- (id)cellBorderAtCellID:(TSUCellCoord)d
{
  v9 = objc_msgSend_strokeSidecar(self, a2, *&d, v3);
  if (v9)
  {
    v10 = objc_msgSend_strokeSidecar(self, v6, v7, v8);
    v13 = objc_msgSend_cellBorderAtCellID_(v10, v11, *&d, v12);
  }

  else
  {
    v13 = objc_msgSend_cellBorder(TSTCellBorder, v6, v7, v8);
  }

  return v13;
}

- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order
{
  v5 = *&order;
  v6 = *&row;
  strokeCopy = stroke;
  v11 = objc_msgSend_strokeSidecar(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfColumns(self, v12, v13, v14);
  if (v15)
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(v11, v16, strokeCopy, v6, v5, 0, v15);
  }

  else
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(v11, v16, strokeCopy, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order
{
  v5 = *&order;
  v6 = *&row;
  strokeCopy = stroke;
  v11 = objc_msgSend_strokeSidecar(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfColumns(self, v12, v13, v14);
  if (v15)
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(v11, v16, strokeCopy, v6, v5, 0, v15);
  }

  else
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(v11, v16, strokeCopy, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order
{
  v5 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  v11 = objc_msgSend_strokeSidecar(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfRows(self, v12, v13, v14);
  if (v15)
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(v11, v16, strokeCopy, columnCopy, v5, 0, v15);
  }

  else
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(v11, v16, strokeCopy, columnCopy, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order
{
  v5 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  v11 = objc_msgSend_strokeSidecar(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfRows(self, v12, v13, v14);
  if (v15)
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(v11, v16, strokeCopy, columnCopy, v5, 0, v15);
  }

  else
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(v11, v16, strokeCopy, columnCopy, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  v9 = *&row;
  strokeCopy = stroke;
  v14 = objc_msgSend_strokeSidecar(self, v11, v12, v13);
  objc_msgSend_setStroke_forTopOfRow_order_columnRange_(v14, v15, strokeCopy, v9, v8, origin, length);
}

- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  v9 = *&row;
  strokeCopy = stroke;
  v14 = objc_msgSend_strokeSidecar(self, v11, v12, v13);
  objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(v14, v15, strokeCopy, v9, v8, origin, length);
}

- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  v14 = objc_msgSend_strokeSidecar(self, v11, v12, v13);
  objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(v14, v15, strokeCopy, columnCopy, v8, origin, length);
}

- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  v14 = objc_msgSend_strokeSidecar(self, v11, v12, v13);
  objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(v14, v15, strokeCopy, columnCopy, v8, origin, length);
}

- (void)_setCellBordersFlatteningFromComplexInfo:(id)info sourceRegion:(id)region
{
  v62[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  regionCopy = region;
  v11 = objc_msgSend_boundingTopLeftCellID(regionCopy, v8, v9, v10);
  v15 = objc_msgSend_boundingTopLeftCellID(regionCopy, v12, v13, v14) >> 32;
  v18 = objc_msgSend_strokeExporterReturningDefaultStrokes_(infoCopy, v16, 1, v17);
  v19 = [TSTStrokeDefaultVendor alloc];
  v21 = objc_msgSend_initWithStrokeProvider_tableProvider_tableInfo_(v19, v20, self, self, self);
  v25 = objc_msgSend_range(self, v22, v23, v24);
  v27 = objc_msgSend_changeDescriptorWithType_cellRange_(TSTChangeDescriptor, v26, 31, v25, v26);
  v62[0] = v27;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v62, 1);
  objc_msgSend_validateChangeDescriptors_(v21, v30, v29, v31);

  v61.origin = objc_msgSend_range(self, v32, v33, v34);
  v61.size = v35;
  LODWORD(v27) = TSUCellRect::numRows(&v61);
  v61.origin = objc_msgSend_range(self, v36, v37, v38);
  v61.size = v39;
  v40 = TSUCellRect::numColumns(&v61);
  v41 = v27;
  v42 = v15;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22110C05C;
  block[3] = &unk_27845EF20;
  v43 = v40;
  v57 = v11;
  v58 = v41;
  v44 = v18;
  v54 = v44;
  v45 = v21;
  v55 = v45;
  selfCopy = self;
  v59 = v42;
  v60 = v43;
  dispatch_apply(2uLL, 0, block);
  v49 = objc_msgSend_strokeSidecar(self, v46, v47, v48);
  objc_msgSend_flattenStrokeOrder(v49, v50, v51, v52);
}

- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  v5 = objc_msgSend_strokeSidecar(self, a2, column, v3);
  v8 = objc_msgSend_strokeLayerForLeftSideOfColumn_(v5, v6, columnCopy, v7);

  return v8;
}

- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  v5 = objc_msgSend_strokeSidecar(self, a2, column, v3);
  v8 = objc_msgSend_strokeLayerForRightSideOfColumn_(v5, v6, columnCopy, v7);

  return v8;
}

- (id)strokeLayerForTopOfRow:(unsigned int)row
{
  v4 = *&row;
  v5 = objc_msgSend_strokeSidecar(self, a2, *&row, v3);
  v8 = objc_msgSend_strokeLayerForTopOfRow_(v5, v6, v4, v7);

  return v8;
}

- (id)strokeLayerForBottomOfRow:(unsigned int)row
{
  v4 = *&row;
  v5 = objc_msgSend_strokeSidecar(self, a2, *&row, v3);
  v8 = objc_msgSend_strokeLayerForBottomOfRow_(v5, v6, v4, v7);

  return v8;
}

- (int)getValue:(id *)value atCellID:(TSUCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text
{
  textCopy = text;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo getValue:atCellID:fetchRichTextAttributesIfPlainText:]", *&d);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 7451, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  return objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(translator, a2, value, *&d, textCopy);
}

- (id)cellValueFromCell:(id)cell atCellID:(TSUCellCoord)d
{
  cellCopy = cell;
  translator = self->_translator;
  if (!translator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableInfo cellValueFromCell:atCellID:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 7456, 0, "invalid nil value for '%{public}s'", "_translator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    translator = self->_translator;
  }

  v19 = objc_msgSend_cellValueFromCell_atCellID_(translator, v6, cellCopy, *&d);

  return v19;
}

- (BOOL)hasCellID:(TSUCellCoord)d
{
  v8.origin = objc_msgSend_range(self, a2, *&d, v3);
  v8.size = v5;
  dCopy = d;
  return TSUCellRect::contains(&v8, dCopy);
}

- (id)cellRegionWithConditionalStyleMatchingCell:(TSUCellCoord)cell
{
  v5 = objc_msgSend_cellAtCellID_(self, a2, *&cell, v3);
  if (objc_msgSend_hasConditionalStyle(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_conditionalStyle(v5, v9, v10, v11);
    v13 = v12;
    if (v12)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x4812000000;
      v25 = sub_22110C938;
      v26 = sub_22110C95C;
      v27 = &unk_22188E88F;
      v29 = 0;
      v30 = 0;
      __p = 0;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22110C974;
      v19[3] = &unk_27845E5A8;
      v20 = v12;
      v21 = &v22;
      objc_msgSend_iterateCellsWithFlags_searchFlags_usingBlock_(self, v14, 66, 0x2000, v19);
      v17 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v15, (v23 + 6), v16);

      _Block_object_dispose(&v22, 8);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }
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

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine bakeForBadRefs:(BOOL)refs
{
  refsCopy = refs;
  engineCopy = engine;
  v14 = engineCopy;
  if (self->_isAPivotTable)
  {
    objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_bakeForBadRefs_(self->_pivotDataModel, engineCopy, map, engineCopy, refsCopy);
    v12 = objc_msgSend_pivotOwner(self, v9, v10, v11);
    objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v12, v13, map, v14);

    engineCopy = v14;
  }

  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_bakeForBadRefs_(self->_tableModel, engineCopy, map, engineCopy, refsCopy);
}

- (void)setFormulaOwnerUIDsWithMap:(id)map shouldStealReferences:(BOOL)references
{
  referencesCopy = references;
  mapCopy = map;
  v9 = mapCopy;
  v13 = mapCopy;
  if (self->_isAPivotTable)
  {
    pivotDataModel = self->_pivotDataModel;
    v11 = objc_msgSend_pivotDataTableMapper(mapCopy, mapCopy, v7, v8);
    objc_msgSend_setFormulaOwnerUIDsWithMap_shouldStealReferences_(pivotDataModel, v12, v11, referencesCopy);

    v9 = v13;
  }

  objc_msgSend_setFormulaOwnerUIDsWithMap_shouldStealReferences_(self->_tableModel, v9, v9, referencesCopy);
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(self->_tableModel, a2, v2, v3);
  objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(self->_summaryModel, v5, v6, v7);
  if (self->_isAPivotTable)
  {
    pivotDataModel = self->_pivotDataModel;

    objc_msgSend_addPasteboardCustomFormatsToDocumentAndUpdateCells(pivotDataModel, v8, v9, v10);
  }
}

- (void)reassignPasteboardCustomFormatKeys
{
  v10 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_tableModel, a2, 0, v2);
  v6 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_summaryModel, v4, v10, v5);
  if (self->_isAPivotTable)
  {
    v9 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_pivotDataModel, v7, v10, v8);
  }
}

- (void)registerAllFormulasWithCalculationEngine:(id)engine wasCrossDocumentPaste:(BOOL)paste wasUndo:(BOOL)undo
{
  undoCopy = undo;
  pasteCopy = paste;
  engineCopy = engine;
  tableModel = self->_tableModel;
  isCategorized = objc_msgSend_isCategorized(self, v9, v10, v11);
  objc_msgSend_registerAllFormulasWithCalculationEngine_wasCrossDocumentPaste_infoIsCategorized_wasUndo_(tableModel, v13, engineCopy, pasteCopy, isCategorized, undoCopy);
  objc_msgSend_registerAllFormulasWithCalculationEngine_wasCrossDocumentPaste_(self->_summaryModel, v14, engineCopy, pasteCopy);
}

- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)row toRow:(unsigned int)toRow
{
  v5 = *&a5;
  v6 = *&toRow;
  v8 = objc_msgSend_hiddenStates(self, row, *&toRow, *&a5);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_referenceToHiddenStateFromRow_toRow_(v8, v9, v6, v5);
  }

  else
  {
    retstr->range = 0u;
    retstr->_tableUID = 0u;
  }

  return result;
}

- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)column toColumn:(unsigned __int16)toColumn
{
  v5 = a5;
  toColumnCopy = toColumn;
  v8 = objc_msgSend_hiddenStates(self, column, toColumn, a5);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_referenceToHiddenStateFromColumn_toColumn_(v8, v9, toColumnCopy, v5);
  }

  else
  {
    retstr->range = 0u;
    retstr->_tableUID = 0u;
  }

  return result;
}

- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState
{
  stateCopy = state;
  objc_msgSend_willModify(self, v7, v8, v9);
  v11 = objc_msgSend_applyCollapseExpandState_outUndoState_(self->_hiddenStates, v10, stateCopy, undoState);
  v15 = objc_msgSend_pivotOwner(self, v12, v13, v14);
  objc_msgSend_collapseExpandChanged_forState_(v15, v16, v11, stateCopy);

  return v11;
}

- (TSUCellRect)minPopulatedCellRange
{
  v5 = objc_msgSend_numberOfHeaderColumns(self, a2, v2, v3) + 1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4012000000;
  v34 = sub_22110D388;
  v35 = nullsub_11;
  v36 = &unk_22188E88F;
  v37 = 0;
  v38 = v5 | ((objc_msgSend_numberOfHeaderRows(self, v6, v7, v8) + 1) << 32);
  LODWORD(v5) = objc_msgSend_numberOfColumns(self, v9, v10, v11);
  v15 = objc_msgSend_numberOfRows(self, v12, v13, v14);
  v19 = objc_msgSend_numberOfRows(self, v16, v17, v18);
  v23 = objc_msgSend_numberOfFooterRows(self, v20, v21, v22);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22110D398;
  v29[3] = &unk_27845EF70;
  v30 = v19 + ~v23;
  v29[4] = &v31;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v24, 0, v5 | (v15 << 32), 66, 4198400, v29);
  v25 = v32[6];
  v26 = v32[7];
  _Block_object_dispose(&v31, 8);
  v27 = v25;
  v28 = v26;
  result.size = v28;
  result.origin = v27;
  return result;
}

- (BOOL)findChartableRangesFromTableRange:(TSCERangeCoordinate)range getBodyRange:(TSCERangeCoordinate *)bodyRange headerColumnRange:(TSCERangeCoordinate *)columnRange headerRowRange:(TSCERangeCoordinate *)rowRange
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  column = range._bottomRight.column;
  row = range._topLeft.row;
  v11 = *&range._topLeft & 0xFFFF00000000;
  if (range._topLeft.row == 0x7FFFFFFFLL || v11 == 0x7FFF00000000)
  {
    v13 = *&range._bottomRight & 0xFFFF00000000;
  }

  else
  {
    v12 = range._bottomRight.row;
    v13 = *&range._bottomRight & 0xFFFF00000000;
    if (range._bottomRight.row != 0x7FFFFFFFLL && v13 != 0x7FFF00000000)
    {
      v14 = range._bottomRight.column;
      if (range._bottomRight.column >= range._topLeft.column && range._topLeft.row <= range._bottomRight.row)
      {
        goto LABEL_20;
      }
    }
  }

  if (range._topLeft.row != 0x7FFFFFFFLL && v11 == 0x7FFF00000000 && v13 == 0x7FFF00000000)
  {
    result = 0;
    v12 = range._bottomRight.row;
    if (range._bottomRight.row == 0x7FFFFFFFLL || range._topLeft.row > range._bottomRight.row)
    {
      return result;
    }

    v14 = range._bottomRight.column;
  }

  else
  {
    result = 0;
    if (range._topLeft.row != 0x7FFFFFFFLL)
    {
      return result;
    }

    if (v11 == 0x7FFF00000000)
    {
      return result;
    }

    if (v13 == 0x7FFF00000000)
    {
      return result;
    }

    result = 0;
    v12 = 0x7FFFFFFFLL;
    if (range._bottomRight.row != 0x7FFFFFFF)
    {
      return result;
    }

    v14 = range._bottomRight.column;
    if (range._topLeft.column > range._bottomRight.column)
    {
      return result;
    }
  }

LABEL_20:
  LOWORD(v150) = range._topLeft.column;
  v158 = *&range._topLeft & 0xFFFF00000000;
  v149 = objc_msgSend_numberOfRows(self, x1_0, *&range._topLeft, *&range._bottomRight);
  v151 = objc_msgSend_numberOfColumns(self, v16, v17, v18);
  v22 = objc_msgSend_numberOfHeaderRows(self, v19, v20, v21);
  v26 = objc_msgSend_numberOfHeaderColumns(self, v23, v24, v25);
  v153 = objc_msgSend_numberOfCategoryColumns(self, v27, v28, v29);
  v148 = objc_msgSend_numberOfBaseHeaderColumns(self, v30, v31, v32);
  if (v26)
  {
    v36 = v14 >= v26;
  }

  else
  {
    v36 = 1;
  }

  v37 = v36;
  v157 = v22;
  if (v22)
  {
    v38 = v22 > bottomRight.row;
  }

  else
  {
    v38 = 0;
  }

  v39 = !v38;
  selfCopy = self;
  v43 = objc_msgSend_categoryColumnIndex(self, v33, v34, v35) != 0x7FFF && objc_msgSend_categoryColumnIndex(self, v40, v41, v42) == column;
  if (topLeft == bottomRight.row)
  {
    isLabelRow = objc_msgSend_isLabelRow_(selfCopy, v40, topLeft, v42);
    v47 = objc_msgSend_isSummaryRow_(selfCopy, v45, topLeft, v46) ^ 1;
  }

  else
  {
    isLabelRow = 0;
    v47 = 1;
  }

  if (v43 || ((v37 | v39) & 1) == 0 || isLabelRow & 1 | (((v37 | v47) & 1) == 0))
  {
    return 0;
  }

  if ((v37 & 1) == 0)
  {
    v61 = v12 & 0xFFFF0000FFFFFFFFLL | ((v151 - 1) << 32);
    v62 = (v22 - 1) | ((v151 - 1) << 32);
    if (!v22)
    {
      v62 = 0x7FFF7FFFFFFFLL;
    }

    v152 = v62;
    v147 = 0x7FFF7FFFFFFFLL;
    if (v22)
    {
      v63 = v26 << 32;
    }

    else
    {
      v63 = 0x7FFF7FFFFFFFLL;
    }

    v158 = v63;
    v64 = row | (v153 << 32);
    LODWORD(v65) = topLeft;
    LOWORD(v66) = v26;
    v67 = v12 | ((v26 - 1) << 32);
    rowRangeCopy4 = rowRange;
    v49 = selfCopy;
    v69 = objc_msgSend_footerRowRange(selfCopy, v40, v41, v42);
    goto LABEL_142;
  }

  v48 = *&bottomRight & 0xFFFF00000000;
  v49 = selfCopy;
  if ((v39 & 1) == 0)
  {
    v147 = 0x7FFF7FFFFFFFLL;
    v71 = (v149 - 1);
    v61 = v48 | v71;
    v152 = (v48 | (v157 - 1));
    rowRangeCopy4 = rowRange;
    if (v26)
    {
      v64 = v157;
      v67 = v71 | ((v26 - 1) << 32);
      LODWORD(v65) = v157;
    }

    else
    {
      LODWORD(v65) = v157;
      v67 = 0x7FFF7FFFFFFFLL;
      v64 = 0x7FFF7FFFFFFFLL;
    }

    goto LABEL_140;
  }

  v50 = objc_msgSend_numberOfColumns(selfCopy, v40, v41, v42) - 1;
  LODWORD(v57) = objc_msgSend_numberOfRows(selfCopy, v51, v52, v53) - 1;
  v58 = v158;
  if (row != 0x7FFFFFFF && v158 == 0x7FFF00000000 && v48 == 0x7FFF00000000)
  {
    v59 = 0;
    v60 = v12 != 0x7FFFFFFF;
  }

  else
  {
    v60 = 0;
    v59 = v158 != 0x7FFF00000000 && v48 != 0x7FFF00000000 && row == 0x7FFFFFFF && v12 == 0x7FFFFFFF;
  }

  v75 = v157;
  if (v157 != 0x7FFFFFFF && v26 == 0x7FFF && v50 == 0x7FFF)
  {
    v76 = 0;
    v77 = v57 != 0x7FFFFFFF;
  }

  else
  {
    v77 = 0;
    v76 = v26 != 0x7FFF && v50 != 0x7FFF && v157 == 0x7FFFFFFF && v57 == 0x7FFFFFFF;
  }

  if (v60)
  {
    v58 = 0;
    v48 = 0x3E700000000;
  }

  else if (v59)
  {
    LODWORD(topLeft) = 0;
    bottomRight.row = 999999;
  }

  LODWORD(v81) = v157;
  if (v77)
  {
    v82 = 0;
    v83 = 0x3E700000000;
  }

  else
  {
    v82 = v26 << 32;
    v83 = v50 << 32;
    if (v76)
    {
      LODWORD(v81) = 0;
      LODWORD(v57) = 999999;
    }

    v75 = v81;
  }

  v84 = 0x7FFFFFFFLL;
  v61 = 0x7FFF7FFFFFFFLL;
  v85 = 0x7FFF00000000;
  if (topLeft <= v57 && v81 <= bottomRight.row)
  {
    v86 = HIDWORD(v58);
    v84 = 0x7FFFFFFFLL;
    if (HIDWORD(v58) <= HIDWORD(v83))
    {
      v54 = HIDWORD(v48);
      v55 = HIDWORD(v82);
      if (HIDWORD(v82) <= HIDWORD(v48))
      {
        v56 = topLeft;
        v84 = 0x7FFFFFFFLL;
        if (topLeft != 0x7FFFFFFFLL && v58 != 0x7FFF00000000)
        {
          v56 = bottomRight.row;
          v84 = 0x7FFFFFFFLL;
          if (bottomRight.row != 0x7FFFFFFFLL && v48 != 0x7FFF00000000)
          {
            v84 = 0x7FFFFFFFLL;
            if (v54 >= v86 && topLeft <= bottomRight.row)
            {
              v84 = 0x7FFFFFFFLL;
              if (v75 != 0x7FFFFFFF && v82 != 0x7FFF00000000)
              {
                v84 = 0x7FFFFFFFLL;
                if (v57 != 0x7FFFFFFFLL && v83 != 0x7FFF00000000)
                {
                  v87 = HIDWORD(v83);
                  v84 = 0x7FFFFFFFLL;
                  if (v55 <= HIDWORD(v83) && v81 <= v57)
                  {
                    if (v86 <= v55)
                    {
                      v88 = HIDWORD(v82);
                    }

                    else
                    {
                      v88 = HIDWORD(v58);
                    }

                    if (topLeft <= v81)
                    {
                      v81 = v81;
                    }

                    else
                    {
                      v81 = topLeft;
                    }

                    if (v54 < v87)
                    {
                      v87 = HIDWORD(v48);
                    }

                    if (bottomRight.row >= v57)
                    {
                      v57 = v57;
                    }

                    else
                    {
                      v57 = bottomRight.row;
                    }

                    v89 = v87 << 32;
                    v90 = !v60 || !v77;
                    if (v60 && v77)
                    {
                      v91 = 0x7FFF00000000;
                    }

                    else
                    {
                      v91 = v89;
                    }

                    if (v90)
                    {
                      v85 = v88 << 32;
                    }

                    else
                    {
                      v85 = 0x7FFF00000000;
                    }

                    if (v59 && v76)
                    {
                      v57 = 0x7FFFFFFFLL;
                    }

                    v61 = v91 | v57;
                    if (v59 && v76)
                    {
                      v84 = 0x7FFFFFFFLL;
                    }

                    else
                    {
                      v84 = v81;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  result = 0;
  v92 = v85 & 0xFFFF00000000;
  if ((v85 & 0xFFFF00000000) != 0x7FFF00000000 && v84 != 0x7FFFFFFF)
  {
    result = 0;
    if (v61 != 0x7FFFFFFFLL)
    {
      v93 = v61 & 0xFFFF00000000;
      if ((v61 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        result = 0;
        if (HIDWORD(v85) <= HIDWORD(v61))
        {
          v65 = v84 | v85;
          if ((v84 | v85) <= v61)
          {
            v150 = HIDWORD(v85);
            if (v157)
            {
              v94 = objc_msgSend_headerRowRange(selfCopy, v54, v55, v56);
              v95 = __C(v94, v169);
              v96 = v95;
              v98 = v97;
              v99 = sub_22110E12C(v95, v97);
              v100 = 0x7FFF7FFFFFFFLL;
              v158 = 0x7FFF7FFFFFFFLL;
              if (v99)
              {
                v158 = v96 | v92;
                v100 = v98 | v93;
              }
            }

            else
            {
              v100 = 0x7FFF7FFFFFFFLL;
              v158 = 0x7FFF7FFFFFFFLL;
              if (v65)
              {
                v119 = (v65 - 1);
                v120 = v119 | v93;
                v166.origin = 0;
                v166.size = &v166;
                v167 = 0x2020000000;
                v168 = 1;
                v162 = 0;
                v163 = &v162;
                v164 = 0x2020000000;
                v165 = 0;
                v121 = v119 | v92;
                TSUCellRectFromTSCERangeCoordinate();
                v161[0] = MEMORY[0x277D85DD0];
                v161[1] = 3221225472;
                v161[2] = sub_22110E180;
                v161[3] = &unk_27845EF98;
                v161[4] = &v166;
                v161[5] = &v162;
                objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(selfCopy, v123, v122, v123, 0, 0x20000000, v161);
                v124 = 0x7FFF7FFFFFFFLL;
                v158 = 0x7FFF7FFFFFFFLL;
                if (*(*&v166.size + 24) == 1)
                {
                  if (*(v163 + 24))
                  {
                    v124 = v120;
                  }

                  else
                  {
                    v124 = 0x7FFF7FFFFFFFLL;
                  }

                  if (*(v163 + 24))
                  {
                    v125 = v121;
                  }

                  else
                  {
                    v125 = 0x7FFF7FFFFFFFLL;
                  }

                  v158 = v125;
                }

                v126 = v124;
                _Block_object_dispose(&v162, 8);
                _Block_object_dispose(&v166, 8);
                v100 = v126;
                v49 = selfCopy;
              }
            }

            v152 = v100;
            v147 = 0x7FFF7FFFFFFFLL;
            if (objc_msgSend_isCategorized(v49, v54, v55, v56) && (objc_msgSend_indexesForSummaryRows(v49, v40, v41, v42), v127 = objc_claimAutoreleasedReturnValue(), v129 = objc_msgSend_intersectsIndexesInRange_(v127, v128, v84, (v61 - v84 + 1)), v127, v129))
            {
              v130 = objc_msgSend_headerColumnRange(v49, v40, v41, v42);
              v131 = __C(v130, v170);
              v133 = v132;
              if (sub_22110E12C(v131, v132))
              {
                v64 = v131 & 0xFFFF00000000 | v84;
                v67 = v133 & 0xFFFF00000000 | v61;
              }

              else
              {
                v67 = 0x7FFF7FFFFFFFLL;
                v64 = 0x7FFF7FFFFFFFLL;
              }
            }

            else
            {
              if (!v148)
              {
                rowRangeCopy4 = rowRange;
                if (!HIDWORD(v65))
                {
                  LOWORD(v66) = 0;
                  v67 = 0x7FFF7FFFFFFFLL;
                  v64 = 0x7FFF7FFFFFFFLL;
                  goto LABEL_141;
                }

                v142 = (v85 + 0xFFFF00000000) & 0xFFFF00000000;
                v166.origin = 0;
                v166.size = &v166;
                v143 = v142 | v61;
                v167 = 0x2020000000;
                v168 = 1;
                v162 = 0;
                v163 = &v162;
                v164 = 0x2020000000;
                v165 = 0;
                v144 = v84 | v142;
                TSUCellRectFromTSCERangeCoordinate();
                v160[0] = MEMORY[0x277D85DD0];
                v160[1] = 3221225472;
                v160[2] = sub_22110E234;
                v160[3] = &unk_27845EF98;
                v160[4] = &v166;
                v160[5] = &v162;
                objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(selfCopy, v146, v145, v146, 0, 0x20000000, v160);
                v67 = 0x7FFF7FFFFFFFLL;
                v64 = 0x7FFF7FFFFFFFLL;
                if (*(*&v166.size + 24) == 1)
                {
                  if (*(v163 + 24))
                  {
                    v67 = v143;
                  }

                  else
                  {
                    v67 = 0x7FFF7FFFFFFFLL;
                  }

                  if (*(v163 + 24))
                  {
                    v64 = v144;
                  }

                  else
                  {
                    v64 = 0x7FFF7FFFFFFFLL;
                  }
                }

                _Block_object_dispose(&v162, 8);
                _Block_object_dispose(&v166, 8);
                v49 = selfCopy;
LABEL_140:
                LOWORD(v66) = v150;
LABEL_141:
                v69 = objc_msgSend_footerRowRange(v49, v40, v41, v42);
LABEL_142:
                v101 = j__TSUCellRectToTSCERangeCoordinate(v69, v70);
                if (WORD2(v101) > v66 || v65 > v102 || v65 < v101 || WORD2(v102) < v66 || WORD2(v101) > HIDWORD(v61) || v61 > v102 || v61 < v101 || WORD2(v102) < HIDWORD(v61))
                {
                  v105 = objc_msgSend_bodyRange(v49, v102, v103, v104);
                  v107 = j__TSUCellRectToTSCERangeCoordinate(v105, v106);
                  if (v65 == 0x7FFFFFFF)
                  {
                    v114 = 0x7FFF7FFFFFFFLL;
                    bodyRangeCopy4 = bodyRange;
                    columnRangeCopy4 = columnRange;
                  }

                  else
                  {
                    bodyRangeCopy4 = bodyRange;
                    columnRangeCopy4 = columnRange;
                    if (v66 == 0x7FFF || v61 == 0x7FFFFFFF || (v61 & 0xFFFF00000000) == 0x7FFF00000000 || v66 > HIDWORD(v61) || v65 > v61)
                    {
                      v114 = 0x7FFF7FFFFFFFLL;
                    }

                    else
                    {
                      v111 = v107;
                      v112 = v108;
                      v113 = sub_22110E12C(v107, v108);
                      bodyRangeCopy4 = bodyRange;
                      columnRangeCopy4 = columnRange;
                      v114 = 0x7FFF7FFFFFFFLL;
                      if (v113)
                      {
                        LOWORD(v115) = v66;
                        if (v66 < WORD2(v111))
                        {
                          v115 = HIDWORD(v111);
                        }

                        if (v65 <= v111)
                        {
                          v116 = v111;
                        }

                        else
                        {
                          v116 = v65;
                        }

                        v147 = v116 & 0xFFFF0000FFFFFFFFLL | (v115 << 32);
                        if (HIDWORD(v61) >= WORD2(v112))
                        {
                          v117 = HIDWORD(v112);
                        }

                        else
                        {
                          v117 = HIDWORD(v61);
                        }

                        if (v61 >= v112)
                        {
                          v118 = v112;
                        }

                        else
                        {
                          v118 = v61;
                        }

                        v114 = v118 & 0xFFFF0000FFFFFFFFLL | (v117 << 32);
                      }
                    }
                  }

                  LODWORD(v65) = v147;
                  v66 = HIDWORD(v147);
                  v61 = v114;
                }

                else
                {
                  bodyRangeCopy4 = bodyRange;
                  columnRangeCopy4 = columnRange;
                }

                if (bodyRangeCopy4)
                {
                  bodyRangeCopy4->_topLeft = (v65 | (v66 << 32));
                  bodyRangeCopy4->_bottomRight = v61;
                }

                if (columnRangeCopy4)
                {
                  columnRangeCopy4->_topLeft = v64;
                  columnRangeCopy4->_bottomRight = v67;
                }

                if (rowRangeCopy4)
                {
                  rowRangeCopy4->_topLeft = v158;
                  rowRangeCopy4->_bottomRight = v152;
                }

                return 1;
              }

              v166.origin = objc_msgSend_headerColumnRange(v49, v40, v41, v42);
              v166.size = v134;
              TSUCellRect::insetLeft(&v166);
              origin = v166.origin;
              size = v166.size;
              v137 = __C(origin, size);
              v139 = v138;
              v140 = sub_22110E12C(v137, v138);
              v141 = v137 & 0xFFFF00000000 | v84;
              if (v140)
              {
                v67 = v139 & 0xFFFF00000000 | v61;
              }

              else
              {
                v67 = 0x7FFF7FFFFFFFLL;
              }

              if (v140)
              {
                v64 = v141;
              }

              else
              {
                v64 = 0x7FFF7FFFFFFFLL;
              }
            }

            rowRangeCopy4 = rowRange;
            goto LABEL_140;
          }
        }
      }
    }
  }

  return result;
}

- (TSKUIDStructCoord)cellUIDForCellID:(SEL)d
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_cellUIDForCellID_(result, d, *&a4, v4);
  }

  retstr->_column = 0u;
  retstr->_row = 0u;
  return result;
}

- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)d
{
  columnRowUIDMap = self->_columnRowUIDMap;
  row = d->_row;
  v7[0] = d->_column;
  v7[1] = row;
  return objc_msgSend_cellIDForCellUID_(columnRowUIDMap, a2, v7, v3);
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  v4 = objc_msgSend_rowUIDForRowIndex_(self->_columnRowUIDMap, a2, *&index, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes
{
  v6 = a4;
  columnRowUIDMap = self->_columnRowUIDMap;
  v10 = v6;
  if (columnRowUIDMap)
  {
    objc_msgSend_rowUIDsForRowIndexes_(columnRowUIDMap, v6, v6, v7);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_rowUIDsForRowRange_(result, range, a4.location, a4.length);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_orderedRowUidsFromUids_(result, uids, a4, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_columnUIDForColumnIndex_(self->_columnRowUIDMap, a2, index, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
{
  v6 = a4;
  columnRowUIDMap = self->_columnRowUIDMap;
  v10 = v6;
  if (columnRowUIDMap)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(columnRowUIDMap, v6, v6, v7);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_columnUIDsForColumnRange_(result, range, a4.location, a4.length);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_orderedColumnUidsFromUids_(result, uids, a4, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_prunedColumnUIDsFromColumnUIDs_(result, ds, a4, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_prunedRowUIDsFromRowUIDs_(result, ds, a4, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  v4 = objc_msgSend_UIDSetForIndexes_isRows_(self->_columnRowUIDMap, a2, indexes, rows);

  return v4;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows
{
  v4 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self->_columnRowUIDMap, a2, set, rows);

  return v4;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(self->_columnRowUIDMap, a2, set, rows);
  result._upper = v5;
  result._lower = isRows;
  return result;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  v5 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self->_columnRowUIDMap, a2, set, rows, ds);

  return v5;
}

- (_NSRange)rowRangeForUIDs:(const void *)ds
{
  v4 = objc_msgSend_rowRangeForUIDs_(self->_columnRowUIDMap, a2, ds, v3);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)ds
{
  v4 = objc_msgSend_columnRangeForUIDs_(self->_columnRowUIDMap, a2, ds, v3);
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)cellUIDListFromCellRegion:(id)region
{
  v3 = objc_msgSend_cellUIDListFromCellRegion_useCategoriesWildcards_(self, a2, region, 0);

  return v3;
}

- (id)cellUIDListFromCellRegion:(id)region useCategoriesWildcards:(BOOL)wildcards
{
  wildcardsCopy = wildcards;
  regionCopy = region;
  v7 = objc_alloc_init(TSTCellUIDList);
  v11 = objc_msgSend_range(self, v8, v9, v10);
  v13 = objc_msgSend_regionByIntersectingRange_(regionCopy, v12, v11, v12);

  if (objc_msgSend_cellCount(v13, v14, v15, v16))
  {
    v140 = v7;
    v142 = objc_msgSend_uncompressedCellUIDs(v7, v17, v18, v19);
    isCategorized = objc_msgSend_isCategorized(self, v20, v21, v22);
    if (objc_msgSend_isAPivotTable(self, v24, v25, v26) & 1 | ((isCategorized & 1) == 0) || !wildcardsCopy)
    {
      v64 = 0;
      v141 = 0;
      v41 = 0;
      v48 = 0;
    }

    else
    {
      v30 = objc_msgSend_intersectingRowsIndexSet(v13, v27, v28, v29);
      v34 = objc_msgSend_intersectingColumnsIndexSet(v13, v31, v32, v33);
      v38 = objc_msgSend_indexesForSummaryRows(self->_translator, v35, v36, v37);
      v41 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v30, v39, v38, v40);

      v45 = objc_msgSend_indexesForLabelRows(self->_translator, v42, v43, v44);
      v48 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v30, v46, v45, v47);

      v141 = v34;
      if (objc_msgSend_count(v41, v49, v50, v51) || objc_msgSend_count(v48, v52, v53, v54))
      {
        v55 = objc_msgSend_count(v30, v52, v53, v54);
        v59 = objc_msgSend_count(v41, v56, v57, v58);
        v63 = objc_msgSend_count(v48, v60, v61, v62) + v59;

        if (v55 == v63)
        {
LABEL_17:
          if (objc_msgSend_count(v41, v27, v28, v29))
          {
            v90 = objc_msgSend_regionByIntersectingRowIndices_(v13, v87, v41, v89);
            if (objc_msgSend_cellCount(v90, v91, v92, v93))
            {
              v97 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v94, v95, v96);
              objc_msgSend_setCount_(v97, v98, 6, v99);
              v138 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v100, v101, v102);
              v106 = objc_msgSend_numberOfRowLevels(self, v103, v104, v105);
              v153[0] = MEMORY[0x277D85DD0];
              v153[1] = 3221225472;
              v153[2] = sub_22110EF28;
              v153[3] = &unk_27845EFC0;
              v153[4] = self;
              v154 = v41;
              v107 = v138;
              v155 = v107;
              v156 = v90;
              v108 = v97;
              v157 = v108;
              v158 = v141;
              v159 = v106;
              objc_msgSend_enumerateIndexesUsingBlock_(v154, v109, v153, v110);
              v151[0] = MEMORY[0x277D85DD0];
              v151[1] = 3221225472;
              v151[2] = sub_22110F1B8;
              v151[3] = &unk_27845EFE8;
              v151[4] = self;
              v152 = v142;
              objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(v108, v111, v151, v112);
            }
          }

          if (objc_msgSend_count(v48, v87, v88, v89))
          {
            v139 = objc_msgSend_regionByIntersectingRowIndices_(v13, v113, v48, v114);
            v118 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v115, v116, v117);
            objc_msgSend_setCount_(v118, v119, 6, v120);
            v137 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v121, v122, v123);
            v127 = objc_msgSend_numberOfRowLevels(self, v124, v125, v126);
            v145[0] = MEMORY[0x277D85DD0];
            v145[1] = 3221225472;
            v145[2] = sub_22110F2A4;
            v145[3] = &unk_27845F010;
            v145[4] = self;
            v128 = v48;
            v146 = v128;
            v129 = v137;
            v147 = v129;
            v130 = v139;
            v148 = v130;
            v131 = v118;
            v149 = v131;
            v150 = v127;
            objc_msgSend_enumerateIndexesUsingBlock_(v128, v132, v145, v133);
            v143[0] = MEMORY[0x277D85DD0];
            v143[1] = 3221225472;
            v143[2] = sub_22110F50C;
            v143[3] = &unk_27845EFE8;
            v143[4] = self;
            v144 = v142;
            objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(v131, v134, v143, v135);

            v48 = v128;
          }

LABEL_23:

          v7 = v140;
          goto LABEL_24;
        }

        v64 = 1;
      }

      else
      {

        v64 = 0;
      }
    }

    v65 = objc_msgSend_boundingCellRange(v13, v27, v28, v29);
    v67 = v66;
    if (objc_msgSend_count(v48, v66, v68, v69) || objc_msgSend_count(v41, v70, v71, v72))
    {
      v73 = objc_msgSend_regionBySubtractingRowIndexes_(v13, v70, v48, v72);
      v76 = objc_msgSend_regionBySubtractingRowIndexes_(v73, v74, v41, v75);

      v78 = v76;
    }

    else
    {
      v78 = v13;
    }

    objc_msgSend_columnUIDsForColumnRange_(self, v77, WORD2(v65), v67);
    objc_msgSend_rowUIDsForRowRange_(self, v79, v65, v67 >> 32);
    v82 = objc_msgSend_regionOffsetBy_(v78, v80, -WORD2(v65) - (v65 << 32), v81);

    v86 = objc_msgSend_UIDLookupList(v142, v83, v84, v85);
    sub_22137AC20(v86, v82, v161, v160);
    if (v160[0])
    {
      v160[1] = v160[0];
      operator delete(v160[0]);
    }

    if (v161[0])
    {
      v161[1] = v161[0];
      operator delete(v161[0]);
    }

    if (!v64)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_24:

  return v7;
}

- (id)cellRegionFromCellUIDList:(id)list
{
  listCopy = list;
  if (objc_msgSend_compressedSize(listCopy, v5, v6, v7))
  {
    v16 = 0;
    v11 = objc_msgSend_cellRegionFromCellUIDList_includeLabelsWithSummaries_didAddLabels_(self, v8, listCopy, 0, &v16);
  }

  else if (listCopy)
  {
    v12 = objc_msgSend_uncompressedCellUIDs(listCopy, v8, v9, v10);
    v11 = objc_msgSend_cellRegionFromCellUIDLookupList_(self, v13, v12, v14);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)cellRegionFromCellUIDList:(id)list includeLabelsWithSummaries:(BOOL)summaries didAddLabels:(BOOL *)labels
{
  summariesCopy = summaries;
  listCopy = list;
  if (!objc_msgSend_compressedSize(listCopy, v9, v10, v11))
  {
    v20 = objc_msgSend_uncompressedCellUIDs(listCopy, v12, v13, v14);
    v22 = objc_msgSend_cellRegionFromCellUIDLookupList_includeLabelsWithSummaries_didAddLabels_(self, v21, v20, summariesCopy, labels);

    goto LABEL_55;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (objc_msgSend_writeCellIDsInCellUIDList_toVector_prunedCellUIDs_(self, v12, listCopy, &v44, &v41))
  {
    v17 = *v44;
    v18 = *(v45 - 1);
    v19 = HIDWORD(v18);
    if ((*v44 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
      objc_msgSend_regionFromRange_(TSTCellRegion, v15, v18 & 0xFFFF000000000000 | *(v45 - 1) | (WORD2(v18) << 32), 0x100000001);
      v23 = LABEL_44:;
      goto LABEL_45;
    }

    v24 = HIDWORD(v17);
    if ((v18 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
LABEL_8:
      objc_msgSend_regionFromRange_(TSTCellRegion, v15, v17 & 0xFFFF0000FFFFFFFFLL | (WORD2(v17) << 32), 0x100000001);
      goto LABEL_44;
    }

    v25 = v17 & 0xFFFF00000000;
    if (v17 != 0x7FFFFFFFLL || v25 == 0x7FFF00000000)
    {
      v28 = v17 == 0x7FFFFFFF && v25 != 0x7FFF00000000;
      if (v17 <= v18)
      {
        v28 = 1;
      }

      if (v17 < v18 || !v28)
      {
        goto LABEL_31;
      }

      if (v17 != 0x7FFFFFFFLL && v25 == 0x7FFF00000000)
      {
        goto LABEL_8;
      }
    }

    if (WORD2(v17) <= WORD2(v18))
    {
      v29 = v25 == 0x7FFF00000000 ? 0x7FFF : HIDWORD(*v44);
      if (v29 >= WORD2(v18))
      {
        goto LABEL_8;
      }
    }

LABEL_31:
    if (WORD2(v17) >= WORD2(v18))
    {
      v30 = HIDWORD(v18);
    }

    else
    {
      v30 = HIDWORD(v17);
    }

    if (WORD2(v17) == 0x7FFF)
    {
      LOWORD(v24) = 0x7FFF;
    }

    if (WORD2(v18) <= v24)
    {
      LOWORD(v19) = v24;
    }

    if (v17 >= v18)
    {
      v31 = *(v45 - 1);
    }

    else
    {
      v31 = *v44;
    }

    if (v17 <= v18)
    {
      LODWORD(v17) = *(v45 - 1);
    }

    objc_msgSend_regionFromRange_(TSTCellRegion, v15, v31 | (v30 << 32), ((v19 - v30 + 1) | ((v17 - v31) << 32)) + 0x100000000);
    goto LABEL_44;
  }

  v23 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v15, &v44, v16);
LABEL_45:
  v32 = v23;
  if (labels)
  {
    *labels = 0;
  }

  if (v42 == v41)
  {
    v22 = v23;
  }

  else
  {
    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_22111A04C(&__p, v41, v42, (v42 - v41) >> 5);
    v34 = objc_msgSend_p_cellRegionFromWildcardCellUIDs_includeLabelsWithSummaries_didAddLabels_(self, v33, &__p, summariesCopy, labels);
    v22 = objc_msgSend_regionByAddingRegion_(v32, v35, v34, v36);

    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

LABEL_55:

  return v22;
}

- (id)cellRegionFromCellUIDLookupList:(id)list
{
  v3 = objc_msgSend_cellRegionFromCellUIDLookupList_includeLabelsWithSummaries_didAddLabels_(self, a2, list, 0, 0);

  return v3;
}

- (id)cellRegionFromCellUIDLookupList:(id)list includeLabelsWithSummaries:(BOOL)summaries didAddLabels:(BOOL *)labels
{
  summariesCopy = summaries;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  objc_msgSend_convertCellUIDLookupList_toCellRangeVector_prunedSummaryCellUIDs_(self, a2, list, &v24, &v21);
  v10 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v8, &v24, v9);
  v11 = v10;
  if (labels)
  {
    *labels = 0;
  }

  if (v22 == v21)
  {
    v16 = v10;
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_22111A04C(&__p, v21, v22, (v22 - v21) >> 5);
    v13 = objc_msgSend_p_cellRegionFromWildcardCellUIDs_includeLabelsWithSummaries_didAddLabels_(self, v12, &__p, summariesCopy, labels);
    v16 = objc_msgSend_regionByAddingRegion_(v11, v14, v13, v15);

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v16;
}

- (id)p_cellRegionFromWildcardCellUIDs:()vector<TSKUIDStructCoord includeLabelsWithSummaries:(std:(BOOL)summaries :(BOOL *)a5 allocator<TSKUIDStructCoord>> *)a3 didAddLabels:
{
  summariesCopy = summaries;
  v9 = objc_opt_new();
  if (objc_msgSend_isCategorized(self, v10, v11, v12))
  {
    begin = a3->__begin_;
    end = a3->__end_;
    if (a3->__begin_ != end)
    {
      v44 = a5;
      while (1)
      {
        v16 = objc_msgSend_columnIndexForColumnUID_(self, v13, begin->_column._lower, begin->_column._upper);
        row = begin->_row;
        column = begin->_column;
        v46 = row;
        if (sub_2211A9038(&column))
        {
          break;
        }

        v35 = begin->_row;
        column = begin->_column;
        v46 = v35;
        if (sub_2211A910C(&column))
        {
          v36 = begin->_row;
          column = begin->_column;
          v46 = v36;
          v37 = sub_2211A8FF4(&column);
          v23 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self, v38, v37, v39);
          v32 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v40, v23, v16, 1);
          v34 = objc_msgSend_region_addingRegion_(TSTCellRegion, v41, v9, v32);
LABEL_12:
          v42 = v34;

          v9 = v42;
        }

        if (++begin == end)
        {
          goto LABEL_14;
        }
      }

      v18 = begin->_row;
      column = begin->_column;
      v46 = v18;
      v19 = sub_2211A8FF4(&column);
      v23 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v20, v19, v21);
      if (summariesCopy)
      {
        v24 = begin->_row;
        column = begin->_column;
        v46 = v24;
        v25 = sub_2211A8FF4(&column);
        v30 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self, v26, v25, v27);
        if (v44)
        {
          *v44 = 1;
        }

        v31 = objc_msgSend_tsu_indexSetByAddingIndexes_(v23, v28, v30, v29);

        v23 = v31;
      }

      v32 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v22, v23, v16, 1);
      v34 = objc_msgSend_region_addingRegion_(TSTCellRegion, v33, v9, v32);
      goto LABEL_12;
    }
  }

LABEL_14:

  return v9;
}

- (id)cellUIDRegionFromCellRegion:(id)region
{
  v3 = objc_msgSend_cellUIDRegionFromRegion_inTable_(TSTCellUIDRegion, a2, region, self);

  return v3;
}

- (id)cellRegionFromCellUIDRegion:(id)region
{
  v4 = objc_msgSend_cellRegionFromTable_(region, a2, self, v3);

  return v4;
}

- (TSKUIDStructCoord)cellUIDForCellID:(SEL)d useCategoriesWildcards:(TSUCellCoord)wildcards
{
  if (a5 && objc_msgSend_isCategorized(self, d, *&wildcards, a5))
  {
    v8 = objc_msgSend_groupLevelAtSummaryRow_(self->_translator, d, wildcards.row, a5);
    if (v8 != 255)
    {
      v11 = v8;
      objc_msgSend_columnUIDForColumnIndex_(self, v9, wildcards.column, v10);
      v12 = retstr;
      v13 = v11;
      v14 = 0;
LABEL_7:

      return sub_2211A8F64(v13, v14, v12);
    }

    v15 = objc_msgSend_groupLevelAtLabelRow_(self, v9, *&wildcards, v10);
    if (v15 != 255)
    {
      v16 = v15;
      objc_msgSend_columnUIDForColumnIndex_(self, d, wildcards.column, a5);
      v12 = retstr;
      v13 = v16;
      v14 = 1;
      goto LABEL_7;
    }
  }

  return objc_msgSend_cellUIDForCellID_(self, d, *&wildcards, a5);
}

- (void)setCategoryOrder:(id)order
{
  orderCopy = order;
  if (self->_categoryOrder != orderCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryOrder, order);
  }
}

- (void)setSummaryModel:(id)model
{
  modelCopy = model;
  if (self->_summaryModel != modelCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_summaryModel, model);
  }
}

- (void)setColumnRowUIDMap:(id)map
{
  mapCopy = map;
  if (self->_columnRowUIDMap != mapCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_columnRowUIDMap, map);
  }
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)range
{
  v4 = objc_msgSend_cellRangeForUIDRange_(self->_columnRowUIDMap, a2, range, v3);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range
{
  result = self->_columnRowUIDMap;
  if (result)
  {
    return objc_msgSend_cellUIDRangeForCellRange_(result, range, *&a4.origin, *&a4.size);
  }

  *&retstr->_colIdList.__cap_ = 0u;
  *&retstr->_rowIdList.__end_ = 0u;
  *&retstr->_colIdList.__begin_ = 0u;
  return result;
}

- (id)cellTractRefForUIDRectRef:(id)ref
{
  v4 = objc_msgSend_cellTractRefForUIDRectRef_(self->_columnRowUIDMap, a2, ref, v3);

  return v4;
}

- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  v10 = objc_msgSend_translator(self, v7, v8, v9);
  LODWORD(d) = objc_msgSend_getCell_atCellUID_(v10, v11, cellCopy, d);

  return d;
}

- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d suppressCellBorder:(BOOL)border
{
  borderCopy = border;
  cellCopy = cell;
  v12 = objc_msgSend_translator(self, v9, v10, v11);
  LODWORD(borderCopy) = objc_msgSend_getCell_atCellUID_suppressCellBorder_(v12, v13, cellCopy, d, borderCopy);

  return borderCopy;
}

- (id)textStyleForCellWithEmptyStyleAtCellUID:(TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  row = d->_row;
  column = d->_column;
  v25 = row;
  if (sub_2211A9038(&column))
  {
    v8 = d->_row;
    column = d->_column;
    v25 = v8;
    v9 = sub_2211A8FF4(&column);
    if (default)
    {
      *default = 1;
    }

    objc_msgSend_defaultTextStyleForTableStyleArea_(self, v10, v9 + 4, v11);
    v19 = LABEL_9:;
    goto LABEL_11;
  }

  v12 = d->_row;
  column = d->_column;
  v25 = v12;
  if (sub_2211A910C(&column))
  {
    v15 = d->_row;
    column = d->_column;
    v25 = v15;
    v16 = sub_2211A8FF4(&column);
    if (default)
    {
      *default = 1;
    }

    objc_msgSend_defaultTextStyleForTableStyleArea_(self, v17, v16 + 9, v18);
    goto LABEL_9;
  }

  v20 = d->_row;
  column = d->_column;
  v25 = v20;
  v21 = objc_msgSend_cellIDForCellUID_(self, v13, &column, v14);
  v19 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(self, v22, v21, 1, 0);
LABEL_11:

  return v19;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v14.receiver = self;
  v14.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v14 adoptStylesheet:stylesheetCopy withMapper:mapperCopy];
  objc_msgSend_adoptStylesheet_withMapper_(self->_tableModel, v8, stylesheetCopy, mapperCopy);
  objc_msgSend_adoptStylesheet_withMapper_(self->_summaryModel, v9, stylesheetCopy, mapperCopy);
  if (objc_msgSend_isAPivotTable(self, v10, v11, v12))
  {
    objc_msgSend_adoptStylesheet_withMapper_(self->_pivotDataModel, v13, stylesheetCopy, mapperCopy);
  }
}

- (TSTTableModel)filteringTableModel
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    objc_msgSend_pivotDataModel(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_baseTableModel(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (TSTTableTranslator)filteringTableTranslator
{
  if (objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    v8 = objc_msgSend_filteringTableModel(self, v5, v6, v7);
    v12 = objc_msgSend_identityTranslator(v8, v9, v10, v11);
  }

  else
  {
    v12 = objc_msgSend_translator(self, v5, v6, v7);
  }

  return v12;
}

- (unint64_t)pivotSizeClass
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_numberOfRows(self, v5, v6, v7);
  v12 = objc_msgSend_numberOfColumns(self, v9, v10, v11);
  if (!HIWORD(v8) && v12 < 0x100)
  {
    return 1;
  }

  if (v12 * v8 > 0x2625A0 || v8 > 0x3D090)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)pivotDataModelSizeClass
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_pivotDataModel(self, v5, v6, v7);
  v12 = objc_msgSend_tableSizeClass(v8, v9, v10, v11);

  return v12;
}

- (BOOL)checkStateForArchiving:(BOOL)archiving
{
  if (objc_msgSend_isAPivotTable(self, a2, archiving, v3))
  {
    v9 = 1;
    return v9 & 1;
  }

  if (objc_msgSend_numberOfLevels(self->_groupBy, v6, v7, v8))
  {
    isEnabled = objc_msgSend_isEnabled(self->_groupBy, v10, v11, v12);
    v17 = objc_msgSend_groupBy(self, v14, v15, v16);
    v21 = v17;
    if (isEnabled)
    {
      if (v17)
      {
        v22 = objc_msgSend_groupBy(self, v18, v19, v20);
        if (objc_msgSend_isEnabled(v22, v23, v24, v25))
        {
          v29 = objc_msgSend_groupBy(self, v26, v27, v28);
          v33 = objc_msgSend_numberOfLevels(v29, v30, v31, v32);

          if (v33)
          {
            v34 = 1;
LABEL_33:
            v119 = objc_msgSend_categoryOrder(self, v18, v19, v20);

            if (v119 && (objc_msgSend_categoryOrder(self, v120, v121, v122), v123 = objc_claimAutoreleasedReturnValue(), hasValidInfo = objc_msgSend_hasValidInfo(v123, v124, v125, v126), v123, (hasValidInfo & 1) != 0))
            {
              v128 = objc_msgSend_categoryOrder(self, v120, v121, v122);
              hasValidUidMap = objc_msgSend_hasValidUidMap(v128, v129, v130, v131);

              v133 = v34 & hasValidUidMap;
            }

            else
            {
              v133 = 0;
            }

            v134 = objc_msgSend_summaryModel(self, v120, v121, v122);

            if (v134 && (objc_msgSend_summaryModel(self, v135, v136, v137), v138 = objc_claimAutoreleasedReturnValue(), v142 = objc_msgSend_numberOfRows(v138, v139, v140, v141), v138, v142))
            {
              v143 = objc_msgSend_groupBy(self, v135, v136, v137);
              v147 = objc_msgSend_groupByChangeDistributor(v143, v144, v145, v146);
              v151 = objc_msgSend_summaryModel(self, v148, v149, v150);
              hasReceiver = objc_msgSend_hasReceiver_(v147, v152, v151, v153);

              v155 = hasReceiver & v133;
              if (archiving)
              {
LABEL_43:
                v171 = objc_msgSend_baseTableModel(self, v135, v136, v137);
                v175 = objc_msgSend_strokeSidecar(v171, v172, v173, v174);

                v179 = objc_msgSend_columnRowUIDMap(self, v176, v177, v178);
                v183 = objc_msgSend_baseTableModel(self, v180, v181, v182);
                v187 = objc_msgSend_columnRowUIDMap(v183, v184, v185, v186);

                v192 = v179 != v187 && v175 == 0;
                v193 = objc_msgSend_translator(self, v188, v189, v190);
                v194 = objc_opt_class();
                if (objc_msgSend_isMemberOfClass_(v193, v195, v194, v196))
                {
                  v200 = objc_msgSend_groupBy(self, v197, v198, v199);
                  v204 = objc_msgSend_groupByChangeDistributor(v200, v201, v202, v203);
                  v207 = objc_msgSend_hasReceiver_(v204, v205, self->_translator, v206);

                  if (v207)
                  {
                    v210 = v192 & v155;
LABEL_54:
                    v211 = objc_msgSend_checkMapsAndAssert_(self->_translator, v208, 1, v209);
                    v278 = 0;
                    v279 = &v278;
                    v280 = 0x2020000000;
                    v281 = 1;
                    v215 = objc_msgSend_groupBy(self, v212, v213, v214);
                    v277[0] = MEMORY[0x277D85DD0];
                    v277[1] = 3221225472;
                    v277[2] = sub_221110F50;
                    v277[3] = &unk_27845F038;
                    v277[4] = self;
                    v277[5] = &v278;
                    objc_msgSend_enumerateAggregates_(v215, v216, v277, v217);
                    v9 = v211 & v210;

                    if ((v211 & v210) != 0)
                    {
                      v9 = *(v279 + 24);
                    }

                    _Block_object_dispose(&v278, 8);
                    return v9 & 1;
                  }
                }

                else
                {
                }

                v210 = 0;
                goto LABEL_54;
              }
            }

            else
            {
              v155 = 0;
              if (archiving)
              {
                goto LABEL_43;
              }
            }

            v156 = objc_msgSend_baseTableModel(self, v135, v136, v137);
            v160 = objc_msgSend_mergeOwner(v156, v157, v158, v159);
            v164 = objc_msgSend_baseTableModel(self, v161, v162, v163);
            v168 = objc_msgSend_bodyRowRange(v164, v165, v166, v167);
            hasMergeRangeSpanningRowsForBaseCellRect = objc_msgSend_hasMergeRangeSpanningRowsForBaseCellRect_(v160, v169, v168, v169);

            v155 &= hasMergeRangeSpanningRowsForBaseCellRect ^ 1;
            goto LABEL_43;
          }
        }

        else
        {
        }
      }

      v34 = 0;
      goto LABEL_33;
    }

    if (v17)
    {
      v47 = objc_msgSend_groupBy(self, v18, v19, v20);
      if (objc_msgSend_isEnabled(v47, v48, v49, v50))
      {
      }

      else
      {
        v218 = objc_msgSend_groupBy(self, v51, v52, v53);
        v222 = objc_msgSend_numberOfLevels(v218, v219, v220, v221);

        if (v222)
        {
          v223 = 1;
          goto LABEL_60;
        }
      }
    }

    v223 = 0;
LABEL_60:
    v224 = objc_msgSend_categoryOrder(self, v18, v19, v20);

    if (v224 && (objc_msgSend_categoryOrder(self, v225, v226, v227), v228 = objc_claimAutoreleasedReturnValue(), v232 = objc_msgSend_hasValidInfo(v228, v229, v230, v231), v228, (v232 & 1) != 0))
    {
      v233 = objc_msgSend_categoryOrder(self, v225, v226, v227);
      v237 = objc_msgSend_hasValidUidMap(v233, v234, v235, v236);

      v238 = v223 & (v237 ^ 1);
    }

    else
    {
      v238 = 0;
    }

    v239 = objc_msgSend_summaryModel(self, v225, v226, v227);

    v243 = objc_msgSend_baseTableModel(self, v240, v241, v242);
    v247 = objc_msgSend_strokeSidecar(v243, v244, v245, v246);

    v251 = objc_msgSend_columnRowUIDMap(self, v248, v249, v250);
    v255 = objc_msgSend_baseTableModel(self, v252, v253, v254);
    v259 = objc_msgSend_columnRowUIDMap(v255, v256, v257, v258);

    v263 = objc_msgSend_translator(self, v260, v261, v262);
    v264 = objc_opt_class();
    isMemberOfClass = objc_msgSend_isMemberOfClass_(v263, v265, v264, v266);

    v270 = objc_msgSend_checkMapsAndAssert_(self->_translator, v268, 1, v269) & isMemberOfClass;
    if (v251 != v259)
    {
      LOBYTE(v270) = 0;
    }

    if (!v247)
    {
      LOBYTE(v270) = 0;
    }

    if (!v239)
    {
      LOBYTE(v270) = 0;
    }

    v9 = v270 & v238;
    return v9 & 1;
  }

  v38 = objc_msgSend_groupBy(self, v10, v11, v12);
  if (v38)
  {
    v39 = objc_msgSend_groupBy(self, v35, v36, v37);
    if (objc_msgSend_isEnabled(v39, v40, v41, v42))
    {
      v46 = 0;
    }

    else
    {
      v54 = objc_msgSend_groupBy(self, v43, v44, v45);
      v46 = objc_msgSend_numberOfLevels(v54, v55, v56, v57) == 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v61 = objc_msgSend_categoryOrder(self, v58, v59, v60);

  if (v61 && (objc_msgSend_categoryOrder(self, v62, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_hasValidInfo(v65, v66, v67, v68), v65, (v69 & 1) != 0))
  {
    v70 = objc_msgSend_categoryOrder(self, v62, v63, v64);
    v74 = objc_msgSend_hasValidUidMap(v70, v71, v72, v73);

    v75 = (v74 ^ 1) & v46;
  }

  else
  {
    v75 = 0;
  }

  v76 = objc_msgSend_summaryModel(self, v62, v63, v64);

  if (!v76 || (objc_msgSend_summaryModel(self, v77, v78, v79), v80 = objc_claimAutoreleasedReturnValue(), v84 = objc_msgSend_numberOfRows(v80, v81, v82, v83), v80, v84) || (objc_msgSend_summaryModel(self, v77, v78, v79), v85 = objc_claimAutoreleasedReturnValue(), v89 = objc_msgSend_numberOfColumns(v85, v86, v87, v88), v85, v89))
  {
    v90 = 0;
  }

  else
  {
    v272 = objc_msgSend_summaryModel(self, v77, v78, v79);
    v276 = objc_msgSend_numberOfPopulatedCells(v272, v273, v274, v275) == 0;

    v90 = v276 & v75;
  }

  v91 = objc_msgSend_baseTableModel(self, v77, v78, v79);
  v95 = objc_msgSend_strokeSidecar(v91, v92, v93, v94);

  v99 = objc_msgSend_columnRowUIDMap(self, v96, v97, v98);
  v103 = objc_msgSend_baseTableModel(self, v100, v101, v102);
  v107 = objc_msgSend_columnRowUIDMap(v103, v104, v105, v106);

  v111 = objc_msgSend_translator(self, v108, v109, v110);
  v112 = objc_opt_class();
  v115 = objc_msgSend_isMemberOfClass_(v111, v113, v112, v114);

  v118 = objc_msgSend_checkMapsAndAssert_(self->_translator, v116, 1, v117) & v115;
  if (v99 != v107)
  {
    LOBYTE(v118) = 0;
  }

  if (!v95)
  {
    LOBYTE(v118) = 0;
  }

  v9 = v118 & v90;
  return v9 & 1;
}

- (void)_correctAndCheckStateSuppressingAssertions:(BOOL)assertions
{
  if (objc_msgSend_numberOfLevels(self->_groupBy, a2, assertions, v3) && (objc_msgSend_isEnabled(self->_groupBy, v6, v7, v8) & 1) != 0)
  {
    v9 = objc_msgSend_baseTableModel(self, v6, v7, v8);
    v13 = objc_msgSend_strokeSidecar(v9, v10, v11, v12);

    if (v13)
    {
      if (!assertions)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v16);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v20);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 8545, 0, "TableChecker: correcting strokeSidecar");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
      }

      v26 = objc_msgSend_baseTableModel(self, v14, v15, v16);
      objc_msgSend_setStrokeSidecar_(v26, v27, 0, v28);
    }

    v29 = objc_msgSend_summaryModel(self, v14, v15, v16);

    if (!v29)
    {
      v33 = [TSTSummaryModel alloc];
      v36 = objc_msgSend_initWithTableInfo_(v33, v34, self, v35);
      objc_msgSend_setSummaryModel_(self, v37, v36, v38);
    }

    v39 = objc_msgSend_summaryModel(self, v30, v31, v32);
    if (objc_msgSend_numberOfRows(v39, v40, v41, v42))
    {
      v46 = objc_msgSend_groupBy(self, v43, v44, v45);
      v50 = objc_msgSend_groupByChangeDistributor(v46, v47, v48, v49);
      v54 = objc_msgSend_summaryModel(self, v51, v52, v53);
      hasReceiver = objc_msgSend_hasReceiver_(v50, v55, v54, v56);

      if (hasReceiver)
      {
        p_translator = &self->_translator;
        if (objc_msgSend_checkMapsAndAssert_(self->_translator, v58, 0, v60))
        {
          goto LABEL_35;
        }

LABEL_31:
        if (!assertions)
        {
          v127 = MEMORY[0x277D81150];
          v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v64);
          v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v130);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v132, v128, v131, 8562, 0, "TableChecker: correcting maps");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135);
        }

        self->_resetGroupingsOnUpgrade = 1;
LABEL_34:
        v136 = objc_msgSend_summaryModel(self, v62, v63, v64);
        objc_msgSend_resetForCategories(v136, v137, v138, v139);

        objc_msgSend_resetViewMap(*p_translator, v140, v141, v142);
        goto LABEL_35;
      }
    }

    else
    {
    }

    if (!assertions)
    {
      v112 = MEMORY[0x277D81150];
      v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v60);
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v115);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v117, v113, v116, 8556, 0, "TableChecker: correcting summaryModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v118, v119, v120);
    }

    v121 = objc_msgSend_summaryModel(self, v58, v59, v60);
    objc_msgSend_setupReceiver(v121, v122, v123, v124);

    p_translator = &self->_translator;
    if (objc_msgSend_checkMapsAndAssert_(self->_translator, v125, 0, v126))
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v65 = objc_msgSend_categoryOrder(self, v6, v7, v8);

  if (!v65)
  {
    if (!assertions)
    {
      v94 = MEMORY[0x277D81150];
      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v68);
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v97);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v99, v95, v98, 8530, 0, "TableChecker: correcting nil categoryOrder in normal/disabled state");
LABEL_25:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106);
    }

LABEL_26:
    v107 = [TSTCategoryOrder alloc];
    v110 = objc_msgSend_initWithTableInfo_(v107, v108, self, v109);
    categoryOrder = self->_categoryOrder;
    self->_categoryOrder = v110;

    goto LABEL_35;
  }

  v69 = objc_msgSend_categoryOrder(self, v66, v67, v68);
  hasValidInfo = objc_msgSend_hasValidInfo(v69, v70, v71, v72);

  if ((hasValidInfo & 1) == 0)
  {
    if (!assertions)
    {
      v100 = MEMORY[0x277D81150];
      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v76);
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v102);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v103, v95, v98, 8533, 0, "TableChecker: correcting missing backpointer in normal/disabled state");
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v77 = objc_msgSend_categoryOrder(self, v74, v75, v76);
  hasValidUidMap = objc_msgSend_hasValidUidMap(v77, v78, v79, v80);

  if (hasValidUidMap)
  {
    if (!assertions)
    {
      v82 = MEMORY[0x277D81150];
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSTTableInfo _correctAndCheckStateSuppressingAssertions:]", v64);
      v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v85);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v87, v83, v86, 8536, 0, "TableChecker: correcting uid map in normal/disabled state");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90);
    }

    v91 = objc_msgSend_categoryOrder(self, v62, v63, v64);
    __p = 0;
    v144 = 0;
    v145 = 0;
    objc_msgSend_setRowOrder_(v91, v92, &__p, v93);
    if (__p)
    {
      v144 = __p;
      operator delete(__p);
    }
  }

LABEL_35:
  objc_msgSend_checkState(self, v62, v63, v64);
}

- (void)resetCategoriesGroupByForOwnerRemapping
{
  objc_msgSend_willModify(self, a2, v2, v3);
  v8 = objc_msgSend_baseTableModel(self, v5, v6, v7);
  v49 = objc_msgSend_categoryOwner(v8, v9, v10, v11);

  v15 = objc_msgSend_groupByChangeDistributor(self->_groupBy, v12, v13, v14);
  objc_msgSend_removeReceiver_(v15, v16, self->_translator, v17);

  v20 = objc_msgSend_groupByForOwnerIndex_(v49, v18, 8, v19);
  v24 = objc_msgSend_hiddenStates(self, v21, v22, v23);
  objc_msgSend_willChangeGroupByTo_(v24, v25, v20, v26);

  v30 = objc_msgSend_calcEngine(self, v27, v28, v29);
  v34 = objc_msgSend_duringSubOwnerUIDUpgrade(v30, v31, v32, v33);

  groupBy = self->_groupBy;
  if (v34)
  {
    if (v20 != groupBy)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTTableInfo resetCategoriesGroupByForOwnerRemapping]", v36);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 8594, 0, "Not expecting our pointer to change during subOwnerUIDUpgrade, if so, categoryOwner will need to update its structures");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
    }

    objc_storeStrong(&self->_groupBy, v20);
  }

  else
  {
    objc_msgSend_unregisterGroupBy_(v49, v35, groupBy, v36);
    objc_storeStrong(&self->_groupBy, v20);
    objc_msgSend_linkGroupBy_(v49, v47, v20, v48);
  }
}

- (void)applyGroupingColumns:(id)columns
{
  columnsCopy = columns;
  if (objc_msgSend_numberOfLevels(self->_groupBy, v5, v6, v7))
  {
    v14 = objc_msgSend_count(columnsCopy, v8, v9, v10);
    groupBy = self->_groupBy;
    if (v14)
    {
      v16 = objc_msgSend_groupByChangeDistributor(groupBy, v11, v12, v13);
      objc_msgSend_removeReceiver_(v16, v17, self->_translator, v18);

      v22 = objc_msgSend_groupByChangeDistributor(self->_groupBy, v19, v20, v21);
      v26 = objc_msgSend_summaryModel(self, v23, v24, v25);
      objc_msgSend_removeReceiver_(v22, v27, v26, v28);

      objc_msgSend_setGroupingColumnList_(self->_groupBy, v29, columnsCopy, v30);
      v34 = objc_msgSend_translator(self, v31, v32, v33);
      objc_msgSend_addReceiverToGroupBy_(v34, v35, self->_groupBy, v36);
    }

    else
    {
      v93 = objc_msgSend_groupByChangeDistributor(groupBy, v11, v12, v13);
      objc_msgSend_removeReceiver_(v93, v94, self->_translator, v95);

      objc_msgSend_resetGroupBy(self->_groupBy, v96, v97, v98);
      v99 = [TSTTableTranslator alloc];
      v102 = objc_msgSend_initWithTableInfo_(v99, v100, self, v101);
      translator = self->_translator;
      self->_translator = v102;
    }

    v40 = objc_msgSend_summaryModel(self, v37, v38, v39);
    objc_msgSend_resetForCategories(v40, v41, v42, v43);

    objc_msgSend_resetViewMap(self, v104, v105, v106);
  }

  else if (objc_msgSend_count(columnsCopy, v8, v9, v10))
  {
    objc_msgSend_setGroupingColumnList_(self->_groupBy, v44, columnsCopy, v45);
    v49 = objc_msgSend_hiddenStates(self, v46, v47, v48);
    objc_msgSend_willChangeGroupByTo_(v49, v50, self->_groupBy, v51);

    v55 = objc_msgSend_summaryModel(self, v52, v53, v54);
    objc_msgSend_resetForCategories(v55, v56, v57, v58);

    objc_msgSend_resetViewMap(self, v59, v60, v61);
    v65 = objc_msgSend_summaryModel(self, v62, v63, v64);
    v69 = objc_msgSend_aggregateFormulaOwner(v65, v66, v67, v68);
    v73 = objc_msgSend_calcEngine(self, v70, v71, v72);
    isRegisteredWithCalcEngine = objc_msgSend_isRegisteredWithCalcEngine_(v69, v74, v73, v75);

    if ((isRegisteredWithCalcEngine & 1) == 0)
    {
      v80 = objc_msgSend_summaryModel(self, v77, v78, v79);
      v84 = objc_msgSend_aggregateFormulaOwner(v80, v81, v82, v83);
      v88 = objc_msgSend_calcEngine(self, v85, v86, v87);
      v107[0] = objc_msgSend_tableUID(self, v89, v90, v91);
      v107[1] = v92;
      objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v84, v92, v88, v107);
    }
  }
}

- (void)setIsCategoryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  groupBy = self->_groupBy;
  if (!groupBy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableInfo setIsCategoryEnabled:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 8655, 0, "Cannot enable/disable categories without a groupBy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    groupBy = self->_groupBy;
  }

  if (objc_msgSend_isEnabled(groupBy, a2, enabled, v3) != enabledCopy)
  {
    objc_msgSend_willModify(self, v16, v17, v18);
    objc_msgSend_setIsEnabled_(self->_groupBy, v19, enabledCopy, v20);
    if (enabledCopy)
    {
      v24 = objc_msgSend_summaryModel(self, v21, v22, v23);
      objc_msgSend_resetForCategories(v24, v25, v26, v27);

      v28 = [TSTColumnRowUIDMap alloc];
      v32 = objc_msgSend_context(self, v29, v30, v31);
      v110[0] = 0;
      v110[1] = 0;
      *&v111 = 0;
      __p = 0;
      v114 = 0;
      v115 = 0;
      v34 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v28, v33, v32, v110, &__p);
      columnRowUIDMap = self->_columnRowUIDMap;
      self->_columnRowUIDMap = v34;

      if (__p)
      {
        v114 = __p;
        operator delete(__p);
      }

      if (v110[0])
      {
        v110[1] = v110[0];
        operator delete(v110[0]);
      }

      v36 = [TSTCategoryTranslator alloc];
      v39 = objc_msgSend_initWithTableInfo_(v36, v37, self, v38);
      objc_msgSend_setTranslator_(self, v40, v39, v41);

      objc_msgSend_resetViewMap(self, v42, v43, v44);
      v48 = objc_msgSend_groupingColumns(self->_groupBy, v45, v46, v47);
      v52 = objc_msgSend_count(v48, v49, v50, v51);

      if (v52)
      {
        v56 = objc_msgSend_baseTableModel(self, v53, v54, v55);
        objc_msgSend_setStrokeSidecar_(v56, v57, 0, v58);
LABEL_13:

        v96 = objc_msgSend_calcEngine(self, v93, v94, v95);
        __p = objc_msgSend_tableUID(self, v97, v98, v99);
        v114 = v100;
        if (v96)
        {
          objc_msgSend_verticalSpillingCellsInTable_(v96, v100, &__p, v101);
        }

        else
        {
          v112 = 0;
          *v110 = 0u;
          v111 = 0u;
        }

        v105 = objc_msgSend_calcEngine(self, v102, v103, v104);
        __p = objc_msgSend_tableUID(self, v106, v107, v108);
        v114 = v109;
        objc_msgSend_markCoordsDirty_inOwner_(v105, v109, v110, &__p);

        sub_22107C860(&v111, *(&v111 + 1));
        return;
      }
    }

    else
    {
      v59 = objc_msgSend_groupByChangeDistributor(self->_groupBy, v21, v22, v23);
      v63 = objc_msgSend_translator(self, v60, v61, v62);
      objc_msgSend_removeReceiver_(v59, v64, v63, v65);

      v69 = objc_msgSend_columnRowUIDMap(self->_tableModel, v66, v67, v68);
      v70 = self->_columnRowUIDMap;
      self->_columnRowUIDMap = v69;

      v71 = [TSTTableTranslator alloc];
      v74 = objc_msgSend_initWithTableInfo_(v71, v72, self, v73);
      objc_msgSend_setTranslator_(self, v75, v74, v76);

      objc_msgSend_resetViewMap(self, v77, v78, v79);
    }

    v80 = [TSTStrokeSidecar alloc];
    v56 = objc_msgSend_baseTableModel(self, v81, v82, v83);
    v86 = objc_msgSend_initWithTableModel_(v80, v84, v56, v85);
    v90 = objc_msgSend_baseTableModel(self, v87, v88, v89);
    objc_msgSend_setStrokeSidecar_(v90, v91, v86, v92);

    goto LABEL_13;
  }
}

- (BOOL)isEmptyPivot
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_pivotOwner(self, v5, v6, v7);

  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableInfo isEmptyPivot]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 8697, 0, "invalid nil value for '%{public}s'", "self.pivotOwner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_pivotOwner(self, v9, v10, v11);
  isEmptyPivot = objc_msgSend_isEmptyPivot(v21, v22, v23, v24);

  return (isEmptyPivot & 1) != 0;
}

- (TSTPivotOwner)pivotOwner
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8 = objc_msgSend_pivotOwner(v4, v5, v6, v7);

  return v8;
}

- (void)updatePivotDataModel:(id)model pivotDataRefreshUID:(TSKUIDStruct)d pivotDataRefreshTimestamp:(double)timestamp uidBodyTract:(TSKUIDStructTract *)tract
{
  modelCopy = model;
  v13 = objc_msgSend_pivotOwner(self, v10, v11, v12);
  pivotDataModel = self->_pivotDataModel;
  v18 = objc_msgSend_columnRowUIDMap(modelCopy, v15, v16, v17);
  v22 = objc_msgSend_rowUIDs(v18, v19, v20, v21);
  v26 = objc_msgSend_columnRowUIDMap(modelCopy, v23, v24, v25);
  v30 = objc_msgSend_columnUIDs(v26, v27, v28, v29);
  v34 = objc_msgSend_numberOfHeaderRows(modelCopy, v31, v32, v33);
  objc_msgSend_resetForPivotingWithRowUids_columnUids_numberOfHeaderRows_numberOfHeaderColumns_(pivotDataModel, v35, v22, v30, v34, 0);

  objc_msgSend_updateMergesAndCellsAsPivotDataWithSourceModel_(self->_pivotDataModel, v36, modelCopy, v37);
  objc_msgSend_setPivotDataRefreshUID_(v13, v38, d._lower, d._upper);
  objc_msgSend_setPivotDataRefreshTimestamp_(v13, v39, v40, v41, timestamp);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  sub_221086EBC(&v45, tract->_colIdList.__begin_, tract->_colIdList.__end_, tract->_colIdList.__end_ - tract->_colIdList.__begin_);
  __p = 0;
  v49 = 0;
  v50 = 0;
  sub_221086EBC(&__p, tract->_rowIdList.__begin_, tract->_rowIdList.__end_, tract->_rowIdList.__end_ - tract->_rowIdList.__begin_);
  objc_msgSend_setPivotSourceBodyUidTract_(v13, v42, &v45, v43);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

- (void)applyPivotWithColumns:(id)columns rows:(id)rows aggregates:(id)aggregates flatteningDimension:(int64_t)dimension optionsMap:(id)map pivotRowColumnRuleChangeUid:(TSKUIDStruct)uid pivotAggregateRuleChangeUid:(TSKUIDStruct)changeUid
{
  columnsCopy = columns;
  rowsCopy = rows;
  aggregatesCopy = aggregates;
  mapCopy = map;
  if (!self->_isAPivotTable)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableInfo applyPivotWithColumns:rows:aggregates:flatteningDimension:optionsMap:pivotRowColumnRuleChangeUid:pivotAggregateRuleChangeUid:]", v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 8749, 0, "Cannot apply pivot rules to a non-pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  objc_msgSend_resetViewMap(self, v15, v16, v17);
}

- (void)resetPivotOrder
{
  objc_msgSend_setOrderUsingViewOrderForDimension_(self->_pivotOrder, a2, 1, v2);
  pivotOrder = self->_pivotOrder;

  objc_msgSend_setOrderUsingViewOrderForDimension_(pivotOrder, v4, 0, v5);
}

- (void)commitPivotChanges
{
  v5 = objc_msgSend_hiddenStates(self, a2, v2, v3);
  v9 = objc_msgSend_rowHiddenStateExtent(v5, v6, v7, v8);
  objc_msgSend_didChangeGroupByStructure(v9, v10, v11, v12);

  objc_msgSend_updateCalcEngineForTableSize(self, v13, v14, v15);
}

- (id)createDetailTableForPivotTableCell:(TSUCellCoord)cell
{
  inited = 0;
  if (cell.row != 0x7FFFFFFF && (*&cell & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (objc_msgSend_isAPivotTable(self, a2, *&cell, v3))
    {
      v7 = [TSTTableInfo alloc];
      v11 = objc_msgSend_context(self, v8, v9, v10);
      inited = objc_msgSend_initAsDetailTableWithContext_sourcePivotTableInfo_pivotSourceCell_(v7, v12, v11, self, cell);
    }

    else
    {
      inited = 0;
    }
  }

  return inited;
}

- (BOOL)isSummaryRow:(unsigned int)row
{
  v4 = *&row;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&row, v3);
  if (isGroupedForRows)
  {
    translator = self->_translator;

    LOBYTE(isGroupedForRows) = objc_msgSend_isSummaryRow_(translator, v7, v4, v8);
  }

  return isGroupedForRows;
}

- (BOOL)isLabelRow:(unsigned int)row
{
  v4 = *&row;
  isCategorized = objc_msgSend_isCategorized(self, a2, *&row, v3);
  if (isCategorized)
  {
    translator = self->_translator;

    LOBYTE(isCategorized) = objc_msgSend_isLabelRow_(translator, v7, v4, v8);
  }

  return isCategorized;
}

- (BOOL)isSummaryOrLabelRow:(unsigned int)row
{
  v4 = *&row;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&row, v3);
  if (isGroupedForRows)
  {
    translator = self->_translator;

    LOBYTE(isGroupedForRows) = objc_msgSend_isSummaryOrLabelRow_(translator, v7, v4, v8);
  }

  return isGroupedForRows;
}

- (unsigned)groupLevelAtRow:(unsigned int)row
{
  if (objc_msgSend_isGroupedForRows(self, a2, *&row, v3))
  {
    v8 = objc_msgSend_groupLevelAtSummaryRow_(self->_translator, v6, row, v7);
    if (v8 == 255)
    {
      translator = self->_translator;

      LOBYTE(v8) = objc_msgSend_groupLevelAtLabelRow_(translator, v9, row, v10);
    }
  }

  else
  {
    LOBYTE(v8) = -1;
  }

  return v8;
}

- (TSUModelColumnIndex)numberOfBaseColumns
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8._column = objc_msgSend_numberOfColumns(v4, v5, v6, v7);

  return v8;
}

- (TSUModelRowIndex)numberOfBaseRows
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8._row = objc_msgSend_numberOfRows(v4, v5, v6, v7);

  return v8;
}

- (TSUModelColumnIndex)numberOfBaseHeaderColumns
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8._column = objc_msgSend_numberOfHeaderColumns(v4, v5, v6, v7);

  return v8;
}

- (TSUModelRowIndex)numberOfBaseHeaderRows
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8._row = objc_msgSend_numberOfHeaderRows(v4, v5, v6, v7);

  return v8;
}

- (TSUModelRowIndex)numberOfBaseFooterRows
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8._row = objc_msgSend_numberOfFooterRows(v4, v5, v6, v7);

  return v8;
}

- (TSUModelRowIndex)numberOfBaseBodyRows
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfRows(v5, v6, v7, v8);
  v13 = objc_msgSend_baseTableModel(self, v10, v11, v12);
  v17 = objc_msgSend_numberOfHeaderRows(v13, v14, v15, v16);
  v21 = objc_msgSend_baseTableModel(self, v18, v19, v20);
  v25._row = v9 - (v17 + objc_msgSend_numberOfFooterRows(v21, v22, v23, v24));

  return v25;
}

- (TSUChromeColumnIndex)numberOfChromeColumns
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8.var0 = objc_msgSend_numberOfColumns(v4, v5, v6, v7);

  return v8;
}

- (TSUChromeRowIndex)numberOfChromeRows
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8.var0 = objc_msgSend_numberOfRows(v4, v5, v6, v7);

  return v8;
}

- (TSUChromeColumnIndex)numberOfChromeHeaderColumns
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8.var0 = objc_msgSend_numberOfHeaderColumns(v4, v5, v6, v7);

  return v8;
}

- (TSUChromeRowIndex)numberOfChromeHeaderRows
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8.var0 = objc_msgSend_numberOfHeaderRows(v4, v5, v6, v7);

  return v8;
}

- (TSUChromeRowIndex)numberOfChromeFooterRows
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8.var0 = objc_msgSend_numberOfFooterRows(v4, v5, v6, v7);

  return v8;
}

- (unsigned)numberOfGroupLevelsShowingLabelsUnderGroupAtIndex:(unsigned int)index
{
  v4 = *&index;
  v6 = objc_msgSend_groupLevelAtRow_(self, a2, *&index, v3);
  if (objc_msgSend_numberOfCategoryLevels(self, v7, v8, v9) < v6)
  {
    return 0;
  }

  v12 = 0;
  do
  {
    isLabelRow = objc_msgSend_isLabelRow_(self, v10, v4, v11);
    v12 += isLabelRow;
    v4 = (v4 + 1);
    v6 = v6 - isLabelRow + 1;
  }

  while (v6 <= objc_msgSend_numberOfCategoryLevels(self, v14, v15, v16));
  return v12;
}

- (unsigned)categoryColumnIndex
{
  if (objc_msgSend_isCategorized(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return 0x7FFF;
  }
}

- (BOOL)isCategoryColumn:(unsigned __int16)column
{
  columnCopy = column;
  result = objc_msgSend_isCategorized(self, a2, column, v3);
  if (columnCopy)
  {
    return 0;
  }

  return result;
}

- (BOOL)isSummaryColumn:(unsigned __int16)column
{
  columnCopy = column;
  isAPivotTable = objc_msgSend_isAPivotTable(self, a2, column, v3);
  if (isAPivotTable)
  {
    translator = self->_translator;

    LOBYTE(isAPivotTable) = objc_msgSend_isSummaryColumn_(translator, v7, columnCopy, v8);
  }

  return isAPivotTable;
}

- (BOOL)isSummaryCell:(TSUCellCoord)cell
{
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&cell, v3);
  if (isGroupedForRows)
  {
    isGroupedForRows = objc_msgSend_isSummaryRow_(self, v7, *&cell, v8);
    if (isGroupedForRows)
    {
      LOBYTE(isGroupedForRows) = objc_msgSend_isCategoryColumn_(self, v9, cell.column, v10) ^ 1;
    }
  }

  return isGroupedForRows;
}

- (BOOL)isCategoryLabelCell:(TSUCellCoord)cell
{
  isCategorized = objc_msgSend_isCategorized(self, a2, *&cell, v3);
  if (isCategorized)
  {
    isCategorized = objc_msgSend_isLabelRow_(self, v7, *&cell, v8);
    if (isCategorized)
    {
      LOBYTE(isCategorized) = objc_msgSend_isCategoryColumn_(self, v9, cell.column, v10) ^ 1;
    }
  }

  return isCategorized;
}

- (BOOL)isCategoryColumnUneditableCell:(TSUCellCoord)cell
{
  isCategorized = objc_msgSend_isCategorized(self, a2, *&cell, v3);
  if (isCategorized)
  {
    isCategorized = objc_msgSend_isCategoryColumn_(self, v7, cell.column, v8);
    if (isCategorized)
    {
      LOBYTE(isCategorized) = objc_msgSend_isSummaryRow_(self, v9, *&cell, v10) ^ 1;
    }
  }

  return isCategorized;
}

- (BOOL)isCategoryGroupValueCell:(TSUCellCoord)cell
{
  if (!objc_msgSend_isCategorized(self, a2, *&cell, v3) || !objc_msgSend_isCategoryColumn_(self, v6, cell.column, v7))
  {
    return 0;
  }

  return objc_msgSend_isSummaryRow_(self, v8, *&cell, v9);
}

- (BOOL)isCategoryGroupValueLabelCell:(TSUCellCoord)cell
{
  if (!objc_msgSend_isCategorized(self, a2, *&cell, v3) || !objc_msgSend_isCategoryColumn_(self, v6, cell.column, v7))
  {
    return 0;
  }

  return objc_msgSend_isLabelRow_(self, v8, *&cell, v9);
}

- (BOOL)isCategoryGroupingColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (!objc_msgSend_isCategorized(self, a2, column, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_groupBy(self, v6, v7, v8);
  v16[0] = objc_msgSend_columnUIDForColumnIndex_(self, v10, columnCopy, v11);
  v16[1] = v12;
  isGroupingColumn = objc_msgSend_isGroupingColumn_(v9, v12, v16, v13);

  return isGroupingColumn;
}

- (BOOL)isCategoryAnyKindOfCell:(TSUCellCoord)cell
{
  isCategorized = objc_msgSend_isCategorized(self, a2, *&cell, v3);
  if (isCategorized)
  {
    if (objc_msgSend_isCategoryColumn_(self, v7, cell.column, v8))
    {
      LOBYTE(isCategorized) = 1;
    }

    else
    {

      LOBYTE(isCategorized) = objc_msgSend_isSummaryOrLabelRow_(self, v9, *&cell, v10);
    }
  }

  return isCategorized;
}

- (BOOL)isPivotAnyKindOfCell:(TSUCellCoord)cell
{
  isAPivotTable = objc_msgSend_isAPivotTable(self, a2, *&cell, v3);
  if (isAPivotTable)
  {
    if (objc_msgSend_isSummaryColumn_(self, v7, cell.column, v8))
    {
      LOBYTE(isAPivotTable) = 1;
    }

    else
    {

      LOBYTE(isAPivotTable) = objc_msgSend_isSummaryRow_(self, v9, *&cell, v10);
    }
  }

  return isAPivotTable;
}

- (BOOL)isPivotTrailingAligned:(TSUCellCoord)aligned
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&aligned, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_pivotOwner(self, v6, v7, v8);
  v12 = objc_msgSend_requiresTrailingAlignment_(v9, v10, *&aligned, v11);

  return v12;
}

- (BOOL)isPivotUnwrapped:(TSUCellCoord)unwrapped
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&unwrapped, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_pivotOwner(self, v6, v7, v8);
  v12 = objc_msgSend_requiresUnwrapping_(v9, v10, *&unwrapped, v11);

  return v12;
}

- (BOOL)isPivotGrandTotalRow:(unsigned int)row
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&row, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_indexesForGrandTotalRows(self, v6, v7, v8);
  v12 = objc_msgSend_containsIndex_(v9, v10, row, v11);

  return v12;
}

- (BOOL)isPivotGrandTotalColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (!objc_msgSend_isAPivotTable(self, a2, column, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_indexesForGrandTotalColumns(self, v6, v7, v8);
  v12 = objc_msgSend_containsIndex_(v9, v10, columnCopy, v11);

  return v12;
}

- (BOOL)isPivotLeadingRow:(unsigned int)row
{
  if (!objc_msgSend_isAPivotTable(self, a2, *&row, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_indexesForLeadingRows(self, v6, v7, v8);
  v12 = objc_msgSend_containsIndex_(v9, v10, row, v11);

  return v12;
}

- (BOOL)isPivotLeadingColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (!objc_msgSend_isAPivotTable(self, a2, column, v3))
  {
    return 0;
  }

  v9 = objc_msgSend_indexesForLeadingColumns(self, v6, v7, v8);
  v12 = objc_msgSend_containsIndex_(v9, v10, columnCopy, v11);

  return v12;
}

- (BOOL)hasHeaderColumnForAggregateNames
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_pivotOwner(self, v5, v6, v7);
  hasHeaderColumnForAggregateNames = objc_msgSend_hasHeaderColumnForAggregateNames(v8, v9, v10, v11);

  return hasHeaderColumnForAggregateNames;
}

- (BOOL)hasHeaderRowForAggregateNames
{
  if (!objc_msgSend_isAPivotTable(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_pivotOwner(self, v5, v6, v7);
  hasHeaderRowForAggregateNames = objc_msgSend_hasHeaderRowForAggregateNames(v8, v9, v10, v11);

  return hasHeaderRowForAggregateNames;
}

- (unsigned)columnIndexForGroupingColumn:(id)column
{
  columnCopy = column;
  v8 = objc_msgSend_columnUid(columnCopy, v5, v6, v7);
  LOWORD(self) = objc_msgSend_columnIndexForColumnUID_(self, v9, v8, v9);

  return self;
}

- (id)allRowUIDsAtGroupLevel:(unsigned __int8)level withFilter:(id)filter
{
  levelCopy = level;
  filterCopy = filter;
  if ((objc_msgSend_isCategorized(self, v7, v8, v9) & 1) != 0 || objc_msgSend_isAPivotTable(self, v10, v11, v12))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_2210F7420;
    v30 = sub_2210F7430;
    v31 = 0;
    if (levelCopy == 255)
    {
      v20 = 0;
    }

    else
    {
      v13 = objc_alloc_init(TSCEMutableUIDSet);
      v14 = v27[5];
      v27[5] = v13;

      v18 = objc_msgSend_groupByForRows(self->_translator, v15, v16, v17);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_2211133E8;
      v23[3] = &unk_27845F060;
      v24 = filterCopy;
      v25 = &v26;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v18, v19, levelCopy, v23);

      v20 = v27[5];
    }

    v21 = v20;
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)allColumnUIDsAtGroupLevel:(unsigned __int8)level withFilter:(id)filter
{
  levelCopy = level;
  filterCopy = filter;
  if (objc_msgSend_isAPivotTable(self, v7, v8, v9))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_2210F7420;
    v27 = sub_2210F7430;
    v28 = 0;
    if (levelCopy == 255)
    {
      v17 = 0;
    }

    else
    {
      v10 = objc_alloc_init(TSCEMutableUIDSet);
      v11 = v24[5];
      v24[5] = v10;

      v15 = objc_msgSend_groupByForColumns(self->_translator, v12, v13, v14);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_221113650;
      v20[3] = &unk_27845F060;
      v21 = filterCopy;
      v22 = &v23;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v15, v16, levelCopy, v20);

      v17 = v24[5];
    }

    v18 = v17;
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)indexesForRowsContainedByGroupUIDs:(id)ds
{
  v4 = objc_msgSend_indexesForRowsContainedByGroupUIDs_(self->_translator, a2, ds, v3);

  return v4;
}

- (id)indexesForColumnsContainedByGroupUIDs:(id)ds
{
  v4 = objc_msgSend_indexesForColumnsContainedByGroupUIDs_(self->_translator, a2, ds, v3);

  return v4;
}

- (id)collapseSummaryGroupUIDs:(id)ds
{
  dsCopy = ds;
  v8 = objc_msgSend_hiddenStates(self, v5, v6, v7);
  v11 = objc_msgSend_collapseSummaryRowGroupUIDs_(v8, v9, dsCopy, v10);

  return v11;
}

- (id)expandSummaryGroupUIDs:(id)ds
{
  dsCopy = ds;
  v8 = objc_msgSend_hiddenStates(self, v5, v6, v7);
  v11 = objc_msgSend_expandSummaryRowGroupUIDs_(v8, v9, dsCopy, v10);

  return v11;
}

- (BOOL)isGroupingRowCollapsed:(unsigned int)collapsed
{
  v4 = *&collapsed;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&collapsed, v3);
  if (isGroupedForRows)
  {
    v10 = objc_msgSend_rowUIDForRowIndex_(self, v7, v4, v8);

    LOBYTE(isGroupedForRows) = objc_msgSend_isGroupOrParentsCollapsed_dimension_(self, v9, v10, v9, 0);
  }

  return isGroupedForRows;
}

- (BOOL)isGroupingRowCollapsedAndVisible:(unsigned int)visible
{
  v4 = *&visible;
  isGroupedForRows = objc_msgSend_isGroupedForRows(self, a2, *&visible, v3);
  if (isGroupedForRows)
  {
    v10 = objc_msgSend_rowUIDForRowIndex_(self, v7, v4, v8);

    LOBYTE(isGroupedForRows) = objc_msgSend_isGroupCollapsedAndVisible_dimension_(self, v9, v10, v9, 0);
  }

  return isGroupedForRows;
}

- (BOOL)isGroupingColumnCollapsed:(unsigned __int16)collapsed
{
  collapsedCopy = collapsed;
  isGroupedForColumns = objc_msgSend_isGroupedForColumns(self, a2, collapsed, v3);
  if (isGroupedForColumns)
  {
    v10 = objc_msgSend_columnUIDForColumnIndex_(self, v7, collapsedCopy, v8);

    LOBYTE(isGroupedForColumns) = objc_msgSend_isGroupOrParentsCollapsed_dimension_(self, v9, v10, v9, 1);
  }

  return isGroupedForColumns;
}

- (BOOL)isGroupingColumnCollapsedAndVisible:(unsigned __int16)visible
{
  visibleCopy = visible;
  isGroupedForColumns = objc_msgSend_isGroupedForColumns(self, a2, visible, v3);
  if (isGroupedForColumns)
  {
    v10 = objc_msgSend_columnUIDForColumnIndex_(self, v7, visibleCopy, v8);

    LOBYTE(isGroupedForColumns) = objc_msgSend_isGroupCollapsedAndVisible_dimension_(self, v9, v10, v9, 1);
  }

  return isGroupedForColumns;
}

- (id)indexesForSummaryRowsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingRowsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForSummaryRows(self->_translator, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (BOOL)hasSummaryRowsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingRowsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForSummaryRows(self->_translator, v6, v7, v8);
  v12 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v5, v10, v9, v11);

  return v12;
}

- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level inRegion:(id)region
{
  levelCopy = level;
  regionCopy = region;
  if (objc_msgSend_isGroupedForRows(self, v7, v8, v9) && objc_msgSend_maxRowLevel(self, v10, v11, v12) >= levelCopy)
  {
    v14 = objc_msgSend_intersectingRowsIndexSet(regionCopy, v10, v11, v12);
    v17 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self->_translator, v15, levelCopy, v16);
    v13 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v14, v18, v17, v19);
  }

  else
  {
    v13 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v10, v11, v12);
  }

  return v13;
}

- (id)indexesForSummaryRowsUpToGroupLevel:(unsigned __int8)level omitGroupsWithUids:(const void *)uids
{
  LODWORD(v5) = level;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, level, uids);
  if (objc_msgSend_isGroupedForRows(self, v8, v9, v10))
  {
    v14 = objc_msgSend_maxRowLevel(self, v11, v12, v13);
    v18 = objc_msgSend_groupByForRows(self->_translator, v15, v16, v17);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_221113D70;
    v21[3] = &unk_27845F088;
    if (v14 >= v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = v14;
    }

    uidsCopy = uids;
    v21[4] = self;
    v22 = v7;
    objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v18, v19, 1, v5, v21);
  }

  return v7;
}

- (id)indexesForSummaryRowsFromGroupLevel:(unsigned __int8)level toGroupLevel:(unsigned __int8)groupLevel
{
  groupLevelCopy = groupLevel;
  levelCopy = level;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, level, groupLevel);
  if (objc_msgSend_isGroupedForRows(self, v8, v9, v10) && objc_msgSend_maxRowLevel(self, v11, v12, v13) >= levelCopy)
  {
    v17 = objc_msgSend_maxRowLevel(self, v14, v15, v16);
    v20 = v17 >= groupLevelCopy ? groupLevelCopy : v17;
    if (v20 >= levelCopy)
    {
      do
      {
        v21 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v18, levelCopy, v19);
        objc_msgSend_addIndexes_(v7, v22, v21, v23);

        ++levelCopy;
      }

      while (v20 >= levelCopy);
    }
  }

  return v7;
}

- (id)indexesForSummaryColumnsFromGroupLevel:(unsigned __int8)level toGroupLevel:(unsigned __int8)groupLevel
{
  groupLevelCopy = groupLevel;
  levelCopy = level;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, level, groupLevel);
  if (objc_msgSend_isGroupedForColumns(self, v8, v9, v10) && objc_msgSend_maxColumnLevel(self, v11, v12, v13) >= levelCopy)
  {
    v17 = objc_msgSend_maxColumnLevel(self, v14, v15, v16);
    v20 = v17 >= groupLevelCopy ? groupLevelCopy : v17;
    if (v20 >= levelCopy)
    {
      do
      {
        v21 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self, v18, levelCopy, v19);
        objc_msgSend_addIndexes_(v7, v22, v21, v23);

        ++levelCopy;
      }

      while (v20 >= levelCopy);
    }
  }

  return v7;
}

- (id)indexesForSummaryColumnsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingColumnsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForSummaryColumns(self, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (id)indexesForLabelRowsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingRowsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForLabelRows(self->_translator, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)level inRegion:(id)region
{
  levelCopy = level;
  v6 = objc_msgSend_intersectingRowsIndexSet(region, a2, level, region);
  v9 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self->_translator, v7, levelCopy, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v10, v9, v11);

  return v12;
}

- (id)indexesForLabelRowsUpToGroupLevel:(unsigned __int8)level omitGroupsWithUids:(const void *)uids
{
  levelCopy = level;
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, level, uids);
  v11 = objc_msgSend_groupByForRows(self->_translator, v8, v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221114310;
  v17[3] = &unk_27845F088;
  uidsCopy = uids;
  v17[4] = self;
  v12 = v7;
  v18 = v12;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v11, v13, 1, levelCopy, v17);

  v14 = v18;
  v15 = v12;

  return v12;
}

- (id)indexesForSummaryAndLabelRowsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingRowsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForSummaryAndLabelRows(self, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (id)indexesForLeadingRowsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingRowsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForLeadingRows(self->_translator, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (id)indexesForLeadingColumnsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingColumnsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForLeadingColumns(self->_translator, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (id)indexesForNonSummaryBodyRows
{
  v5 = MEMORY[0x277CCAB58];
  v17.origin = objc_msgSend_bodyRowRange(self, a2, v2, v3);
  v17.size = v6;
  v7 = TSUCellRect::rows(&v17);
  v9 = objc_msgSend_indexSetWithIndexesInRange_(v5, v8, v7, v8);
  v13 = objc_msgSend_indexesForSummaryAndLabelRows(self, v10, v11, v12);
  objc_msgSend_removeIndexes_(v9, v14, v13, v15);

  return v9;
}

- (id)indexesForBodyAndFooterRows
{
  v5 = MEMORY[0x277CCAB58];
  v24.origin = objc_msgSend_bodyRowRange(self, a2, v2, v3);
  v24.size = v6;
  v7 = TSUCellRect::rows(&v24);
  v9 = v8;
  v23.origin = objc_msgSend_footerRowRange(self, v8, v10, v11);
  v23.size = v12;
  v27.location = TSUCellRect::rows(&v23);
  v27.length = v13;
  v26.location = v7;
  v26.length = v9;
  v14 = NSUnionRange(v26, v27);
  v15 = objc_msgSend_indexSetWithIndexesInRange_(v5, v14.length, v14.location, v14.length);
  v19 = objc_msgSend_indexesForSummaryAndLabelRows(self, v16, v17, v18);
  objc_msgSend_removeIndexes_(v15, v20, v19, v21);

  return v15;
}

- (id)indexesForNonSummaryBodyColumns
{
  v5 = MEMORY[0x277CCAB58];
  v23.origin = objc_msgSend_bodyColumnRange(self, a2, v2, v3);
  v23.size = v6;
  v7 = TSUCellRect::columns(&v23);
  v9 = objc_msgSend_indexSetWithIndexesInRange_(v5, v8, v7, v8);
  v13 = objc_msgSend_indexesForCategoryColumns(self, v10, v11, v12);
  objc_msgSend_removeIndexes_(v9, v14, v13, v15);

  v19 = objc_msgSend_indexesForSummaryColumns(self, v16, v17, v18);
  objc_msgSend_removeIndexes_(v9, v20, v19, v21);

  return v9;
}

- (id)indexesForCategoryColumns
{
  v4 = MEMORY[0x277CCAA78];
  v6 = objc_msgSend_categoryColumnIndex(self, a2, v2, v3);

  return objc_msgSend_indexSetWithIndex_(v4, v5, v6, v7);
}

- (id)indexesForCategoryColumnsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingColumnsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForCategoryColumns(self, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (id)indexesForGroupingColumns
{
  v31 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCategorized(self, a2, v2, v3))
  {
    v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = objc_msgSend_groupingColumns(self->_groupBy, v9, v10, v11, 0);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v26, v30, 16);
    if (v17)
    {
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = objc_msgSend_columnUid(*(*(&v26 + 1) + 8 * i), v14, v15, v16);
          v22 = objc_msgSend_columnIndexForColumnUID_(self, v21, v20, v21);
          objc_msgSend_addIndex_(v8, v23, v22, v24);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v26, v30, 16);
      }

      while (v17);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)indexesForGroupingColumnsInRegion:(id)region
{
  v5 = objc_msgSend_intersectingColumnsIndexSet(region, a2, region, v3);
  v9 = objc_msgSend_indexesForGroupingColumns(self, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v5, v10, v9, v11);

  return v12;
}

- (_NSRange)rowRangeUnderSummaryOrLabelRow:(unsigned int)row
{
  Index = *MEMORY[0x277D81490];
  v7 = *(MEMORY[0x277D81490] + 8);
  isLabelRow = objc_msgSend_isLabelRow_(self, a2, *&row, v3);
  if (objc_msgSend_isSummaryRow_(self, v9, isLabelRow + row, v10))
  {
    v13 = objc_msgSend_rowUIDForRowIndex_(self, v11, isLabelRow + row, v12);
    v15 = v14;
    v18 = objc_msgSend_groupBy(self, v14, v16, v17);
    v20 = objc_msgSend_groupNodeForGroupUid_(v18, v19, v13, v15);

    if (v20)
    {
      objc_msgSend_unfilteredRowUidsAsVector(v20, v21, v22, v23);
    }

    else
    {
      __p = 0;
      v37 = 0;
      v38 = 0;
    }

    v27 = objc_msgSend_rowIndexesForUIDs_(self, v21, &__p, v23);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    if (objc_msgSend_count(v27, v24, v25, v26))
    {
      Index = objc_msgSend_firstIndex(v27, v28, v29, v30);
      v7 = objc_msgSend_lastIndex(v27, v31, v32, v33) - Index + 1;
    }
  }

  v34 = Index;
  v35 = v7;
  result.length = v35;
  result.location = v34;
  return result;
}

- (id)indexesForBodyRowsInGroupWithRowAtIndex:(unsigned int)index
{
  v3 = *&index;
  v5 = objc_alloc_init(MEMORY[0x277CCAA78]);
  if ((objc_msgSend_isSummaryOrLabelRow_(self, v6, v3, v7) & 1) == 0)
  {
    v10 = objc_msgSend_rowUIDForRowIndex_(self, v8, v3, v9);
    v12 = v11;
    v15 = objc_msgSend_groupBy(self, v11, v13, v14);
    v19 = objc_msgSend_groupBy(self, v16, v17, v18);
    v23 = objc_msgSend_numberOfLevels(v19, v20, v21, v22);
    v25 = objc_msgSend_groupNodeForRowUid_atLevel_(v15, v24, v10, v12, v23);

    if (v25)
    {
      objc_msgSend_unfilteredRowUidsAsVector(v25, v26, v27, v28);
    }

    else
    {
      __p = 0;
      v32 = 0;
      v33 = 0;
    }

    v29 = objc_msgSend_rowIndexesForUIDs_(self, v26, &__p, v28);

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    v5 = v29;
  }

  return v5;
}

- (id)regionSubtractingCategoryColumnsAndRows:(id)rows
{
  rowsCopy = rows;
  if (objc_msgSend_isCategorized(self, v5, v6, v7))
  {
    v11 = objc_msgSend_indexesForCategoryColumns(self, v8, v9, v10);
    v14 = objc_msgSend_regionBySubtractingColumnIndexes_(rowsCopy, v12, v11, v13);

    v18 = objc_msgSend_indexesForSummaryAndLabelRows(self, v15, v16, v17);
    rowsCopy = objc_msgSend_regionBySubtractingRowIndexes_(v14, v19, v18, v20);
  }

  return rowsCopy;
}

- (id)columnDisplayNameForCategoryLevel:(unsigned __int8)level
{
  levelCopy = level;
  if (objc_msgSend_isCategorized(self, a2, level, v3) && (objc_msgSend_groupBy(self, v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_groupingColumnAtCategoryLevel_(v9, v10, levelCopy, v11), v12 = objc_claimAutoreleasedReturnValue(), v9, v12))
  {
    v16 = objc_msgSend_columnUid(v12, v13, v14, v15);
    v18 = objc_msgSend_columnIndexForColumnUID_(self, v17, v16, v17);
    v21 = objc_msgSend_columnNameForColumnIndex_(self, v19, v18, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)groupingColumnLevelCountForColumn:(unsigned __int16)column
{
  v13[0] = objc_msgSend_columnUIDForColumnIndex_(self, a2, column, v3);
  v13[1] = v5;
  groupBy = self->_groupBy;
  if (groupBy)
  {
    objc_msgSend_groupingColumnLevelsForColumn_(groupBy, v5, v13, v6);
    v8 = v11;
    v9 = v12;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 - v8;
}

- (BOOL)groupingTypesAreUniqueForColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (objc_msgSend_isCategorized(self, a2, column, v3) && (v19 = objc_msgSend_columnUIDForColumnIndex_(self, v6, columnCopy, v7), v20 = v8, (objc_msgSend_isGroupingColumn_(self->_groupBy, v8, &v19, v9) & 1) != 0))
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    groupBy = self->_groupBy;
    v18 = 1;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211151B0;
    v14[3] = &unk_27845F0B0;
    v14[4] = &v15;
    objc_msgSend_enumerateGroupingColumnsForColumn_withBlock_(groupBy, v10, v19, v20, v14);
    v12 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (int64_t)groupingArrowStateAtCellID:(TSUCellCoord)d
{
  if (!objc_msgSend_isCategorized(self, a2, *&d, v3) || !objc_msgSend_isCategoryGroupValueCell_(self, v6, *&d, v8))
  {
    if (objc_msgSend_isAPivotTable(self, v6, v7, v8))
    {
      v82.origin = objc_msgSend_headerColumnRange(self, v10, v11, v12);
      v82.size = v13;
      column = d.column;
      v15 = *&d & 0xFFFF000000000000 | (d.column << 32);
      v16 = (v15 | d.row);
      if (TSUCellRect::contains(&v82, v16))
      {
        if (d.column < objc_msgSend_maxRowLevel(self, v17, v18, v19))
        {
          v20 = objc_msgSend_rowUIDForRowIndex_(self, v17, *&d, v19);
          v22 = v21;
          v25 = objc_msgSend_groupByForRows(self, v21, v23, v24);
          for (i = objc_msgSend_groupNodeForGroupUid_(v25, v26, v20, v22);
          {
            v28 = v25;
            v25 = i;

            if (objc_msgSend_groupLevel(v25, v29, v30, v31) <= (LOBYTE(d.column) + 1))
            {
              break;
            }

            objc_msgSend_parentNode(v25, v32, v33, v34);
          }

          if (d.column == ((LOBYTE(d.column) + 1) - 1))
          {
            v35 = objc_msgSend_hiddenStates(self, v32, v33, v34);
            v81.origin = objc_msgSend_groupUid(v25, v36, v37, v38);
            v81.size = v39;
            isRowGroupUIDCollapsed = objc_msgSend_isRowGroupUIDCollapsed_(v35, v39, &v81, v40);

            if (isRowGroupUIDCollapsed)
            {

              return 2;
            }
          }

          v42 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(self, v32, (LOBYTE(d.column) + 1), v34);
          v45 = objc_msgSend_containsIndex_(v42, v43, d.row, v44);

          if (v45)
          {
            return 1;
          }
        }
      }

      v81.origin = objc_msgSend_headerRowRange(self, v17, v18, v19);
      v81.size = v46;
      v47 = (v15 | d.row);
      if (TSUCellRect::contains(&v81, v47))
      {
        if (d.row < objc_msgSend_maxColumnLevel(self, v48, v49, v50))
        {
          v53 = objc_msgSend_columnUIDForColumnIndex_(self, v51, d.column, v52);
          v55 = v54;
          v58 = objc_msgSend_groupByForColumns(self, v54, v56, v57);
          v60 = objc_msgSend_groupNodeForGroupUid_(v58, v59, v53, v55);
          v61 = LOBYTE(d.row) + 1;
          while (1)
          {
            v62 = v58;
            v58 = v60;

            if (objc_msgSend_groupLevel(v58, v63, v64, v65) <= v61)
            {
              break;
            }

            v60 = objc_msgSend_parentNode(v58, v66, v67, v68);
          }

          if ((LOBYTE(d.row) + 1) - 1 == d.row)
          {
            v69 = objc_msgSend_hiddenStates(self, v66, v67, v68);
            v80[0] = objc_msgSend_groupUid(v58, v70, v71, v72);
            v80[1] = v73;
            isColumnGroupUIDCollapsed = objc_msgSend_isColumnGroupUIDCollapsed_(v69, v73, v80, v74);

            if (isColumnGroupUIDCollapsed)
            {

              return 2;
            }
          }

          v76 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(self, v66, v61, v68);
          v79 = objc_msgSend_containsIndex_(v76, v77, column, v78);

          if (v79)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  if (objc_msgSend_isGroupingRowCollapsed_(self, v6, *&d, v8))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)hasGroupingArrowInCellRegion:(id)region
{
  regionCopy = region;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  if (objc_msgSend_isCategorized(self, v5, v6, v7))
  {
    v11 = objc_msgSend_indexesForCategoryColumns(self, v8, v9, v10);
    v14 = objc_msgSend_regionByIntersectingColumnIndices_(regionCopy, v12, v11, v13);

    v18 = objc_msgSend_indexesForSummaryRows(self, v15, v16, v17);
    regionCopy = objc_msgSend_regionByIntersectingRowIndices_(v14, v19, v18, v20);

    v23 = objc_msgSend_indexesOfVisibleRowsInCellRegion_(self, v21, regionCopy, v22);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_2211159D4;
    v88[3] = &unk_27845F0D8;
    v88[4] = self;
    v88[5] = &v89;
    objc_msgSend_enumerateIndexesUsingBlock_(v23, v24, v88, v25);
LABEL_3:

    goto LABEL_10;
  }

  if (objc_msgSend_isAPivotTable(self, v8, v9, v10))
  {
    v29 = objc_msgSend_headerColumnRange(self, v26, v27, v28);
    v31 = v30;
    v34 = objc_msgSend_headerRowRange(self, v30, v32, v33);
    v36 = v35;
    if (objc_msgSend_intersectsCellRange_(regionCopy, v35, v29, v31))
    {
      v38 = objc_msgSend_regionByIntersectingRange_(regionCopy, v37, v29, v31);
      v41 = objc_msgSend_indexesOfVisibleRowsInCellRegion_(self, v39, v38, v40);
      v44 = objc_msgSend_regionByIntersectingRowIndices_(v38, v42, v41, v43);

      v48 = objc_msgSend_indexesForLeadingRows(self, v45, v46, v47);
      v52 = objc_msgSend_indexesForSummaryRows(self, v49, v50, v51);
      v55 = objc_msgSend_tsu_indexSetByAddingIndexes_(v48, v53, v52, v54);

      v58 = objc_msgSend_regionByIntersectingRowIndices_(v44, v56, v55, v57);

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = sub_221115A34;
      v87[3] = &unk_27845EF48;
      v87[4] = self;
      v87[5] = &v89;
      objc_msgSend_enumerateCellIDsUsingBlock_(v58, v59, v87, v60);
    }

    if ((v90[3] & 1) == 0 && objc_msgSend_intersectsCellRange_(regionCopy, v37, v34, v36))
    {
      v62 = objc_msgSend_regionByIntersectingRange_(regionCopy, v61, v34, v36);
      v65 = objc_msgSend_indexesOfVisibleColumnsInCellRegion_(self, v63, v62, v64);
      v68 = objc_msgSend_regionByIntersectingColumnIndices_(v62, v66, v65, v67);

      v72 = objc_msgSend_indexesForLeadingColumns(self, v69, v70, v71);
      v76 = objc_msgSend_indexesForSummaryColumns(self, v73, v74, v75);
      v79 = objc_msgSend_tsu_indexSetByAddingIndexes_(v72, v77, v76, v78);

      v23 = objc_msgSend_regionByIntersectingColumnIndices_(v68, v80, v79, v81);

      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = sub_221115A7C;
      v86[3] = &unk_27845EF48;
      v86[4] = self;
      v86[5] = &v89;
      objc_msgSend_enumerateCellIDsUsingBlock_(v23, v82, v86, v83);

      goto LABEL_3;
    }
  }

LABEL_10:
  v84 = *(v90 + 24);
  _Block_object_dispose(&v89, 8);

  return v84;
}

- (id)peerCellRegionForCellRegion:(id)region
{
  v4 = objc_msgSend_peerCellRegionForCellRegion_(self->_translator, a2, region, v3);

  return v4;
}

- (TSKUIDStruct)groupByUid
{
  *&v9 = objc_msgSend_baseTableUID(self, a2, v2, v3);
  *(&v9 + 1) = v4;
  v7 = sub_2212C4930(&v9, 8, v5, v6);
  result._upper = v8;
  result._lower = v7;
  return result;
}

- (BOOL)isGroupOrParentsCollapsed:(TSKUIDStruct)collapsed dimension:(int64_t)dimension
{
  v5 = objc_msgSend_hiddenStates(self, a2, collapsed._lower, collapsed._upper, collapsed._lower, collapsed._upper);
  LOBYTE(dimension) = objc_msgSend_isGroupOrParentsCollapsed_dimension_(v5, v6, &v8, dimension);

  return dimension;
}

- (BOOL)isGroupCollapsedAndVisible:(TSKUIDStruct)visible dimension:(int64_t)dimension
{
  v5 = objc_msgSend_hiddenStates(self, a2, visible._lower, visible._upper, visible._lower, visible._upper);
  LOBYTE(dimension) = objc_msgSend_isGroupCollapsedAndVisible_dimension_(v5, v6, &v8, dimension);

  return dimension;
}

- (id)categoryRefReferringToCellRef:(const void *)ref
{
  if (objc_msgSend_isCategorized(self, a2, ref, v3) && (v8 = *ref, objc_msgSend_isSummaryRow_(self, v6, v8, v7)))
  {
    v25[0] = objc_msgSend_columnUIDForColumnIndex_(self, v9, WORD2(v8), v10);
    v25[1] = v11;
    v24[0] = objc_msgSend_rowUIDForRowIndex_(self, v11, v8, v12);
    v24[1] = v13;
    v15 = objc_msgSend_groupLevelForGroupUid_(self, v13, v24, v14);
    v16 = [TSCECategoryRef alloc];
    v23[0] = objc_msgSend_groupByUid(self, v17, v18, v19);
    v23[1] = v20;
    v21 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v16, v20, v23, v24, v25, 11, v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid
{
  uidCopy = uid;
  v5 = objc_msgSend_groupByForRows(self->_translator, a2, uid, v3);
  LOBYTE(uidCopy) = objc_msgSend_groupLevelForGroupUid_(v5, v6, uidCopy->_lower, uidCopy->_upper);

  return uidCopy;
}

- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  upper = d._upper;
  lower = d._lower;
  v7 = objc_msgSend_groupBy(self, a2, d._lower, d._upper);
  LOBYTE(levelCopy) = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v7, v8, lower, upper, levelCopy);

  return levelCopy;
}

- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  typeCopy = type;
  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(self->_groupBy, a2, type, d._lower, d._lower, d._upper);
  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(self->_summaryModel, v8, typeCopy, &v9, levelCopy);
}

- (BOOL)shouldDisplaySummaryLabelRowAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_summaryModel(self, a2, level, v3);
  v9 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v6, v7, levelCopy, v8);

  if (v9)
  {
    return v9 == 2;
  }

  v13 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(self, v10, levelCopy, v11);
  v17 = v13;
  if (v13)
  {
    v12 = objc_msgSend_count(v13, v14, v15, v16) != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)processRowsWithPendingGroupingChangesAndReturnAffectedCellRegion
{
  if (objc_msgSend_count(self->_rowUIDsWithPendingGroupingChanges, a2, v2, v3))
  {
    v5 = self->_rowUIDsWithPendingGroupingChanges;
    v6 = objc_alloc_init(TSCEMutableUIDSet);
    rowUIDsWithPendingGroupingChanges = self->_rowUIDsWithPendingGroupingChanges;
    self->_rowUIDsWithPendingGroupingChanges = v6;

    v9 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self, v8, v5, 1);
    objc_msgSend_didMakeGroupingChangesInRowUIDs_(self->_translator, v10, v5, v11);
    v13 = objc_msgSend_mutableIndexesForUIDSet_isRows_(self, v12, v5, 1);
    objc_msgSend_addIndexes_(v13, v14, v9, v15);
    v18 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v16, v13, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)resetViewMap
{
  objc_msgSend_resetViewMap(self->_translator, a2, v2, v3);

  objc_msgSend_updateCalcEngineForTableSize(self, v5, v6, v7);
}

- (BOOL)verifySubOwnerUIDsUsed
{
  v5 = objc_msgSend_calcEngine(self, a2, v2, v3);
  if (objc_msgSend_needsSubOwnerIDUpgrade(v5, v6, v7, v8))
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v13 = objc_msgSend_hiddenStates(self, v9, v10, v11);
    v17 = objc_msgSend_hiddenStateOwnerForRowsUID(v13, v14, v15, v16);
    v19 = v18;
    v122._lower = v17;
    v122._upper = v18;

    if (!(v17 | v19) || (*&v121 = objc_msgSend_tableUID(self, v20, v21, v22), *(&v121 + 1) = v23, v26 = sub_2212C4930(&v121, 4, v24, v25), v122._lower == v26) && v122._upper == v20)
    {
      v12 = 1;
    }

    else
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTTableInfo verifySubOwnerUIDsUsed]", v22);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v30);
      v32 = TSKUIDStruct::description(&v122);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v31, 9690, 0, "Row hidden state ownerUid isn't subOwner uid: %@", v32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
      v12 = 0;
    }

    v37 = objc_msgSend_hiddenStates(self, v20, v21, v22);
    v41 = objc_msgSend_hiddenStateOwnerForColumnsUID(v37, v38, v39, v40);
    v43 = v42;

    if (v41 | v43)
    {
      *&v121 = objc_msgSend_tableUID(self, v44, v45, v46);
      *(&v121 + 1) = v47;
      if (v41 != sub_2212C4930(&v121, 0xB, v48, v49) || v43 != v44)
      {
        v50 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSTTableInfo verifySubOwnerUIDsUsed]", v46);
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v53);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v51, v54, 9697, 0, "Column hidden state ownerUid isn't subOwner uid");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58);
        v12 = 0;
      }
    }

    v59 = objc_msgSend_summaryModel(self, v44, v45, v46);
    v63 = objc_msgSend_aggregateFormulaOwnerUID(v59, v60, v61, v62);
    v65 = v64;

    if (v63 | v65)
    {
      *&v121 = objc_msgSend_tableUID(self, v66, v67, v68);
      *(&v121 + 1) = v69;
      if (v63 != sub_2212C4930(&v121, 9, v70, v71) || v65 != v66)
      {
        v72 = MEMORY[0x277D81150];
        v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTTableInfo verifySubOwnerUIDsUsed]", v68);
        v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v75);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v77, v73, v76, 9704, 0, "Category Aggregate ownerUid isn't subOwner uid");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80);
        v12 = 0;
      }
    }

    v84 = objc_msgSend_groupByUid(self, v66, v67, v68);
    v85 = v81;
    if (v84 | v81)
    {
      *&v121 = objc_msgSend_tableUID(self, v81, v82, v83);
      *(&v121 + 1) = v86;
      if (v84 != sub_2212C4930(&v121, 8, v87, v88) || v85 != v81)
      {
        v89 = MEMORY[0x277D81150];
        v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSTTableInfo verifySubOwnerUIDsUsed]", v83);
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v92);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v94, v90, v93, 9712, 0, "GroupBy uid isn't subOwner uid");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97);
        v12 = 0;
      }
    }

    if (self->_isAPivotTable)
    {
      v98 = objc_msgSend_pivotDataModel(self, v81, v82, v83);
      v102 = objc_msgSend_tableUID(v98, v99, v100, v101);
      v104 = v103;

      if (v102 | v104)
      {
        *&v121 = objc_msgSend_tableUID(self, v105, v106, v107);
        *(&v121 + 1) = v108;
        if (v102 != sub_2212C4930(&v121, 0x64, v109, v110) || v104 != v105)
        {
          v111 = MEMORY[0x277D81150];
          v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "[TSTTableInfo verifySubOwnerUIDsUsed]", v107);
          v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v114);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v116, v112, v115, 9721, 0, "PivotDataModel uid isn't subOwner uid");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118, v119);
          v12 = 0;
        }
      }

      v12 &= objc_msgSend_verifySubOwnerUIDsUsed(self->_pivotDataModel, v105, v106, v107);
    }
  }

  return v12;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = MEMORY[0x277D804B0];
  }

  v54.receiver = self;
  v54.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v54 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 4);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_221116AC4;
  v53[3] = &unk_27845F100;
  v53[4] = self;
  v9 = unarchiverCopy;
  v11 = objc_opt_class();
  if (v8)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, v8, v11, 0, v53);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, MEMORY[0x277D80A18], v11, 0, v53);
  }

  v14 = *(archive + 4);
  if ((v14 & 0x4000) != 0)
  {
    self->_isAPivotTable = *(archive + 128);
  }

  if ((v14 & 8) != 0)
  {
    v15 = *(archive + 6);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_221116AD8;
    v52[3] = &unk_27845F128;
    v52[4] = self;
    v16 = v9;
    v17 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v18, v15, v17, 0, v52);

    v14 = *(archive + 4);
  }

  if ((v14 & 0x20) != 0)
  {
    v19 = *(archive + 8);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_221116AE4;
    v51[3] = &unk_27845E0B8;
    v51[4] = self;
    v20 = v9;
    v21 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v20, v22, v19, v21, 0, v51);

    v14 = *(archive + 4);
  }

  if ((v14 & 0x10) != 0)
  {
    v23 = *(archive + 7);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_221116AF8;
    v50[3] = &unk_27845F150;
    v50[4] = self;
    v24 = v9;
    v25 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v26, v23, v25, 0, v50);

    v14 = *(archive + 4);
  }

  self->_formulaCoordSpace = *(archive + 31) & (v14 << 18 >> 31);
  if ((v14 & 0x100) != 0)
  {
    v27 = [TSCECoordMapper alloc];
    if (*(archive + 11))
    {
      v30 = objc_msgSend_initFromArchive_(v27, v28, *(archive + 11), v29);
    }

    else
    {
      v30 = objc_msgSend_initFromArchive_(v27, v28, &TSCE::_CoordMapperArchive_default_instance_, v29);
    }

    fromTableCoordMapperForPasteboard = self->_fromTableCoordMapperForPasteboard;
    self->_fromTableCoordMapperForPasteboard = v30;
  }

  if (self->_isAPivotTable)
  {
    v32 = *(archive + 4);
    if ((v32 & 0x400) != 0)
    {
      v33 = *(archive + 13);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_221116B04;
      v49[3] = &unk_27845F100;
      v49[4] = self;
      v34 = v9;
      v35 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v34, v36, v33, v35, 0, v49);

      v32 = *(archive + 4);
    }

    if ((v32 & 0x800) != 0)
    {
      v37 = *(archive + 14);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_221116BCC;
      v48[3] = &unk_27845F178;
      v48[4] = self;
      v38 = v9;
      v39 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v38, v40, v37, v39, 0, v48);
    }
  }

  objc_msgSend_setLayoutEngine_(self, v12, 0, v13);
  if ((*(archive + 17) & 2) != 0)
  {
    v43 = [TSTArchivedLayoutEngineBundle alloc];
    if (*(archive + 12))
    {
      v45 = objc_msgSend_initWithArchive_unarchiver_(v43, v44, *(archive + 12), v9);
    }

    else
    {
      v45 = objc_msgSend_initWithArchive_unarchiver_(v43, v44, &TST::_LayoutEngineArchive_default_instance_, v9);
    }

    archivedLayoutEngineBundle = self->_archivedLayoutEngineBundle;
    self->_archivedLayoutEngineBundle = v45;
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_221116C50;
  v47[3] = &unk_27845E3F8;
  v47[4] = self;
  objc_msgSend_addFinalizeHandler_(v9, v41, v47, v42);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v5, v6, v7) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v8, v9, v10);
  }

  v11 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v14 = objc_msgSend_messageWithDescriptor_(v11, v12, off_2812E4498[54], v13);

  objc_msgSend_loadFromArchive_unarchiver_(self, v15, v14, v11);
  if (objc_msgSend_preUFFVersion(v11, v16, v17, v18) <= 0x2CBEA17F7)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2211176E4;
    v29[3] = &unk_27845E3F8;
    v29[4] = self;
    objc_msgSend_addFinalizeHandler_(v11, v19, v29, v21);
  }

  if (objc_msgSend_sourceType(v11, v19, v20, v21) == 2)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_221117768;
    v28[3] = &unk_27845E3F8;
    v28[4] = self;
    objc_msgSend_addFinalizeHandler_(v11, v22, v28, v24);
  }

  if (objc_msgSend_fileFormatVersion(v11, v22, v23, v24) < *MEMORY[0x277D80990])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_221117770;
    v27[3] = &unk_27845E3F8;
    v27[4] = self;
    objc_msgSend_addFinalizeHandler_(v11, v25, v27, v26);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_checkStateForArchiving_(self, v7, 1, v8);
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = sub_221118284;
  v160[3] = &unk_27845F1A0;
  archiveCopy = archive;
  v9 = archiverCopy;
  v161 = v9;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v9, v10, 1, archive, v160);
  v15 = objc_msgSend_baseTableModel(self, v11, v12, v13);
  *(archive + 4) |= 2u;
  v16 = *(archive + 4);
  if (!v16)
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA0390](v17);
    *(archive + 4) = v16;
  }

  objc_msgSend_setStrongReference_message_(v9, v14, v15, v16);

  v21 = objc_msgSend_summaryModel(self, v18, v19, v20);

  if (v21)
  {
    v26 = objc_msgSend_summaryModel(self, v22, v23, v24);
    *(archive + 4) |= 8u;
    v27 = *(archive + 6);
    if (!v27)
    {
      v28 = *(archive + 1);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x223DA0390](v28);
      *(archive + 6) = v27;
    }

    objc_msgSend_setStrongReference_message_(v9, v25, v26, v27);
  }

  v29 = objc_msgSend_columnRowUIDMap(self, v22, v23, v24);
  v33 = objc_msgSend_baseTableModel(self, v30, v31, v32);
  v37 = objc_msgSend_columnRowUIDMap(v33, v34, v35, v36);

  if (v29 != v37)
  {
    v42 = objc_msgSend_columnRowUIDMap(self, v38, v39, v40);
    *(archive + 4) |= 0x20u;
    v43 = *(archive + 8);
    if (!v43)
    {
      v44 = *(archive + 1);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x223DA0390](v44);
      *(archive + 8) = v43;
    }

    objc_msgSend_setStrongReference_message_(v9, v41, v42, v43);
  }

  v45 = objc_msgSend_categoryOrder(self, v38, v39, v40);

  if (v45)
  {
    v50 = objc_msgSend_categoryOrder(self, v46, v47, v48);
    *(archive + 4) |= 0x10u;
    v51 = *(archive + 7);
    if (!v51)
    {
      v52 = *(archive + 1);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x223DA0390](v52);
      *(archive + 7) = v51;
    }

    objc_msgSend_setStrongReference_message_(v9, v49, v50, v51);
  }

  if (self->_layoutEngine)
  {
    v53 = [TSTArchivedLayoutEngineBundle alloc];
    v56 = objc_msgSend_initWithLayoutEngine_(v53, v54, self->_layoutEngine, v55);
    archivedLayoutEngineBundle = self->_archivedLayoutEngineBundle;
    self->_archivedLayoutEngineBundle = v56;

    *(archive + 4) |= 0x200u;
    v59 = *(archive + 12);
    if (!v59)
    {
      v60 = *(archive + 1);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      v59 = google::protobuf::Arena::CreateMaybeMessage<TST::LayoutEngineArchive>(v60);
      *(archive + 12) = v59;
    }

    objc_msgSend_saveToArchive_archiver_(self->_archivedLayoutEngineBundle, v58, v59, v9);
  }

  v159._lower = objc_msgSend_groupByUid(self, v46, v47, v48);
  v159._upper = v61;
  *(archive + 4) |= 0x40u;
  v62 = *(archive + 9);
  if (!v62)
  {
    v63 = *(archive + 1);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x223DA0360](v63);
    *(archive + 9) = v62;
  }

  TSKUIDStruct::saveToMessage(&v159, v62);
  formulaCoordSpace = self->_formulaCoordSpace;
  if (formulaCoordSpace >= 0x100000000)
  {
    v141 = MEMORY[0x277D81150];
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSTTableInfo saveToArchive:archiver:]", v66);
    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v144);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v141, v146, v142, v145, 10109, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149);
    LODWORD(formulaCoordSpace) = -1;
  }

  else if (formulaCoordSpace < 0)
  {
    v150 = MEMORY[0x277D81150];
    v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSTTableInfo saveToArchive:archiver:]", v66);
    v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v153);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v155, v151, v154, 10109, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157, v158);
    LODWORD(formulaCoordSpace) = 0;
  }

  *(archive + 4) |= 0x2000u;
  *(archive + 31) = formulaCoordSpace;
  v159._lower = 0;
  v159._upper = 0;
  v68 = objc_msgSend_hiddenStates(self, v64, v65, v66);
  v72 = objc_msgSend_rowHiddenStateExtent(v68, v69, v70, v71);
  v159._lower = objc_msgSend_hiddenStateExtentUid(v72, v73, v74, v75);
  v159._upper = v76;

  *(archive + 4) |= 0x80u;
  v77 = *(archive + 10);
  if (!v77)
  {
    v78 = *(archive + 1);
    if (v78)
    {
      v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
    }

    v77 = MEMORY[0x223DA0360](v78);
    *(archive + 10) = v77;
  }

  TSKUIDStruct::saveToMessage(&v159, v77);
  if (self->_fromTableCoordMapperForPasteboard && objc_msgSend_isForCopy(v9, v79, v80, v81))
  {
    fromTableCoordMapperForPasteboard = self->_fromTableCoordMapperForPasteboard;
    *(archive + 4) |= 0x100u;
    v83 = *(archive + 11);
    if (!v83)
    {
      v84 = *(archive + 1);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive>(v84);
      *(archive + 11) = v83;
    }

    objc_msgSend_encodeToArchive_(fromTableCoordMapperForPasteboard, v79, v83, v81);
  }

  if (objc_msgSend_isAPivotTable(self, v79, v80, v81))
  {
    isAPivotTable = objc_msgSend_isAPivotTable(self, v85, v86, v87);
    v91 = *(archive + 4) | 0x4000;
    *(archive + 4) = v91;
    *(archive + 128) = isAPivotTable;
    pivotDataModel = self->_pivotDataModel;
    if (!pivotDataModel)
    {
      v93 = MEMORY[0x277D81150];
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "[TSTTableInfo saveToArchive:archiver:]", v90);
      v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v96);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v98, v94, v97, 10123, 0, "invalid nil value for '%{public}s'", "_pivotDataModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100, v101);
      pivotDataModel = self->_pivotDataModel;
      v91 = *(archive + 4);
    }

    *(archive + 4) = v91 | 0x400;
    v102 = *(archive + 13);
    if (!v102)
    {
      v103 = *(archive + 1);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      v102 = MEMORY[0x223DA0390](v103);
      *(archive + 13) = v102;
    }

    objc_msgSend_setStrongReference_message_(v9, v89, pivotDataModel, v102);
    pivotOrder = self->_pivotOrder;
    if (!pivotOrder)
    {
      v107 = MEMORY[0x277D81150];
      v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "[TSTTableInfo saveToArchive:archiver:]", v105);
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v110);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v112, v108, v111, 10126, 0, "invalid nil value for '%{public}s'", "_pivotOrder");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115);
      pivotOrder = self->_pivotOrder;
    }

    *(archive + 4) |= 0x800u;
    v116 = *(archive + 14);
    if (!v116)
    {
      v117 = *(archive + 1);
      if (v117)
      {
        v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
      }

      v116 = MEMORY[0x223DA0390](v117);
      *(archive + 14) = v116;
    }

    objc_msgSend_setStrongReference_message_(v9, v104, pivotOrder, v116);
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v85, 4, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v118, 6, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v119, 5, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v120, 7, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v121, 8, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v9, v122, 10, archive);
  v126 = objc_msgSend_archivingCompatibilityVersion(self, v123, v124, v125);
  v128 = v126;
  v129 = 0;
  if (v126 == 0x300020000000ALL || v126 == 0x4000100000000)
  {
LABEL_67:
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v127, v126, v129);
    goto LABEL_68;
  }

  if (v126 != 0xA000000000003)
  {
    if (*MEMORY[0x277D808F0] != v126)
    {
      if (v126 <= 0xD000000000000)
      {
        if (v126 == 0xB000200000006)
        {
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v127, 0xB000200000006, @"TSTPivotTables");
          goto LABEL_68;
        }

        if (v126 == 0xC000000000007)
        {
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v127, 0xC000000000007, @"TSTPivotTables v2");
          goto LABEL_68;
        }
      }

      else
      {
        switch(v126)
        {
          case 0xD000000000001:
            objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v127, 0xD000000000001, @"TSTDropPreBNCData");
            goto LABEL_68;
          case 0xD000000000002:
            objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v127, 0xD000000000002, @"TSTPivotTables MoreAggregates");
            goto LABEL_68;
          case 0xE000400000001:
            objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v127, 0xE000400000001, @"TSTArrayFormulas");
            goto LABEL_68;
        }
      }

      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "NSString *TSTFeatureIdentifierForCompatibilityVersion(TSPVersion)", 0);
      v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCompatibility.h", v133);
      v135 = NSStringFromTSPVersion();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v136, v131, v134, 99, 0, "Unimplemented version for TSTCompatibility: %@", v135);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138, v139);
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v140, v128, 0);
      goto LABEL_68;
    }

    v129 = @"TSTFutureProofCell";
    goto LABEL_67;
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(v9, v127, 0xA000000000003, @"TSTExpandedTables");
LABEL_68:
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22111A104, off_2812E4498[54]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (unint64_t)archivingCompatibilityVersion
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v9 = objc_msgSend_archivingCompatibilityVersion(v5, v6, v7, v8);

  v13 = objc_msgSend_groupBy(self, v10, v11, v12);
  v17 = objc_msgSend_archivingCompatibilityVersion(v13, v14, v15, v16);

  if (v9 <= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v9;
  }

  isAPivotTable = objc_msgSend_isAPivotTable(self, v18, v19, v20);
  v23 = 0x300020000000ALL;
  if (isAPivotTable)
  {
    v23 = 0xB000200000006;
  }

  if (v23 <= v21)
  {
    return v21;
  }

  else
  {
    return v23;
  }
}

- (id)displayableDescriptiveName
{
  v5 = objc_msgSend_userDescription(self, a2, v2, v3);
  v9 = v5;
  if ((!v5 || !objc_msgSend_length(v5, v6, v7, v8)) && (objc_msgSend_tableName(self, v6, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v9, (v9 = v10) == 0) || !objc_msgSend_length(v9, v6, v7, v8))
  {
    v17.receiver = self;
    v17.super_class = TSTTableInfo;
    displayableDescriptiveName = [(TSTTableInfo *)&v17 displayableDescriptiveName];

    v9 = displayableDescriptiveName;
  }

  v15 = objc_msgSend_copy(v9, v11, v12, v13);

  return v15;
}

- (TSKUIDStruct)hiddenStatesUid
{
  p_hiddenStatesUid = &self->_hiddenStatesUid;
  lower = self->_hiddenStatesUid._lower;
  upper = p_hiddenStatesUid->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStructTract)tableTranslatorBaseMapForPasteboard
{
  p_tableTranslatorBaseMapForPasteboard = &self->_tableTranslatorBaseMapForPasteboard;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  retstr->_colIdList.__begin_ = 0;
  sub_221086EBC(retstr, self->_tableTranslatorBaseMapForPasteboard._colIdList.__begin_, self->_tableTranslatorBaseMapForPasteboard._colIdList.__end_, self->_tableTranslatorBaseMapForPasteboard._colIdList.__end_ - self->_tableTranslatorBaseMapForPasteboard._colIdList.__begin_);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, p_tableTranslatorBaseMapForPasteboard->_rowIdList.__begin_, p_tableTranslatorBaseMapForPasteboard->_rowIdList.__end_, p_tableTranslatorBaseMapForPasteboard->_rowIdList.__end_ - p_tableTranslatorBaseMapForPasteboard->_rowIdList.__begin_);
}

- (void)setTableTranslatorBaseMapForPasteboard:(TSKUIDStructTract *)pasteboard
{
  p_tableTranslatorBaseMapForPasteboard = &self->_tableTranslatorBaseMapForPasteboard;
  if (&self->_tableTranslatorBaseMapForPasteboard != pasteboard)
  {
    sub_2210BD068(&self->_tableTranslatorBaseMapForPasteboard, pasteboard->_colIdList.__begin_, pasteboard->_colIdList.__end_, pasteboard->_colIdList.__end_ - pasteboard->_colIdList.__begin_);
    begin = pasteboard->_rowIdList.__begin_;
    end = pasteboard->_rowIdList.__end_;

    sub_2210BD068(&p_tableTranslatorBaseMapForPasteboard->_rowIdList, begin, end, (end - begin) >> 4);
  }
}

- (TSKUIDStructTract)tableTranslatorViewMapForPasteboard
{
  p_tableTranslatorViewMapForPasteboard = &self->_tableTranslatorViewMapForPasteboard;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  retstr->_colIdList.__begin_ = 0;
  sub_221086EBC(retstr, self->_tableTranslatorViewMapForPasteboard._colIdList.__begin_, self->_tableTranslatorViewMapForPasteboard._colIdList.__end_, self->_tableTranslatorViewMapForPasteboard._colIdList.__end_ - self->_tableTranslatorViewMapForPasteboard._colIdList.__begin_);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, p_tableTranslatorViewMapForPasteboard->_rowIdList.__begin_, p_tableTranslatorViewMapForPasteboard->_rowIdList.__end_, p_tableTranslatorViewMapForPasteboard->_rowIdList.__end_ - p_tableTranslatorViewMapForPasteboard->_rowIdList.__begin_);
}

- (void)setTableTranslatorViewMapForPasteboard:(TSKUIDStructTract *)pasteboard
{
  p_tableTranslatorViewMapForPasteboard = &self->_tableTranslatorViewMapForPasteboard;
  if (&self->_tableTranslatorViewMapForPasteboard != pasteboard)
  {
    sub_2210BD068(&self->_tableTranslatorViewMapForPasteboard, pasteboard->_colIdList.__begin_, pasteboard->_colIdList.__end_, pasteboard->_colIdList.__end_ - pasteboard->_colIdList.__begin_);
    begin = pasteboard->_rowIdList.__begin_;
    end = pasteboard->_rowIdList.__end_;

    sub_2210BD068(&p_tableTranslatorViewMapForPasteboard->_rowIdList, begin, end, (end - begin) >> 4);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 25) = 0u;
  *(self + 26) = 0u;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 27) = 0u;
  return self;
}

- (BOOL)containsProperty:(int)property
{
  if (property == 807)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TSTTableInfo;
  return [(TSTTableInfo *)&v6 containsProperty:?];
}

- (id)objectForProperty:(int)property
{
  if (property == 512)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_2210F7420;
    v20 = sub_2210F7430;
    v21 = 0;
    v6 = self->_layoutEngine;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221118DD8;
    v15[3] = &unk_27845F1C8;
    v15[4] = &v16;
    objc_msgSend_performBlockWithTemporaryLayout_(self, v7, v15, v8);
    if (!v6 && self->_layoutEngine)
    {
      objc_msgSend_releaseLayoutEngine(self, v9, v10, v11);
    }

    v12 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    if (property == 807)
    {
      v5 = objc_msgSend_tableStylePreset(self, a2, *&property, v3);
    }

    else
    {
      v14.receiver = self;
      v14.super_class = TSTTableInfo;
      v5 = [(TSTTableInfo *)&v14 objectForProperty:?];
    }

    v12 = v5;
  }

  return v12;
}

- (float)floatValueForProperty:(int)property
{
  v4.receiver = self;
  v4.super_class = TSTTableInfo;
  [(TSTTableInfo *)&v4 floatValueForProperty:*&property];
  return result;
}

- (id)applyCellDiffMap:(id)map migrationHelper:(id)helper updateProperties:(id)properties
{
  v5 = objc_msgSend_context(self, a2, map, helper, properties);
  v8 = objc_msgSend_cellDiffMapWithContext_(TSTCellDiffMap, v6, v5, v7);

  return v8;
}

- (id)applyCellDiff:(id)diff atCellUID:(const TSKUIDStructCoord *)d migrationMap:(id)map inverseCellDiff:(id)cellDiff defaultCellStyle:(id)style defaultTextStyle:(id)textStyle
{
  diffCopy = diff;
  mapCopy = map;
  cellDiffCopy = cellDiff;
  styleCopy = style;
  textStyleCopy = textStyle;
  if (!cellDiffCopy)
  {
    cellDiffCopy = objc_msgSend_cellDiff(TSTCellDiff, v18, v19, v20);
  }

  v22 = objc_msgSend_cellAfterApplyDiff_toCell_atCellUID_migrationMap_inverseCellDiff_concurrentStylesheet_defaultCellStyle_defaultTextStyle_(self, v18, diffCopy, 0, d, mapCopy, cellDiffCopy, 0, styleCopy, textStyleCopy);
  if ((objc_msgSend_isEmpty(cellDiffCopy, v23, v24, v25) & 1) == 0)
  {
    objc_msgSend_p_performCommentStorageDOLC_(self, v26, v22, v27);
    if (objc_msgSend_doesSetProperty_(diffCopy, v28, 907, v29) && (objc_msgSend_BOOLValueForSetProperty_(diffCopy, v30, 914, v31) & 1) == 0)
    {
      v33 = objc_msgSend_documentRoot(self, v30, v32, v31);
      v37 = objc_msgSend_customFormatList(v33, v34, v35, v36);

      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = sub_221119364;
      v76[3] = &unk_27845F1F0;
      v76[4] = self;
      v77 = v37;
      v78 = v22;
      v38 = v37;
      objc_msgSend_processCustomFormatsWithBlock_(v78, v39, v76, v40);
    }

    if (objc_msgSend_doesSetProperty_(diffCopy, v30, 907, v31) & 1) != 0 || (objc_msgSend_doesSetProperty_(diffCopy, v41, 913, v42) & 1) != 0 || (objc_msgSend_doesSetProperty_(diffCopy, v41, 906, v42) & 1) != 0 || (objc_msgSend_containsParagraphStyleProperties(diffCopy, v41, v43, v42))
    {
      doesSetProperty = 1;
    }

    else
    {
      doesSetProperty = objc_msgSend_doesSetProperty_(diffCopy, v41, 909, v42);
    }

    if (objc_msgSend_canBeVendorStorageUid_(TSTSummaryCellVendor, v41, d, v42))
    {
      v48 = objc_msgSend_summaryModel(self, v45, v46, v47);
      v50 = objc_msgSend_setCell_atCellUID_(v48, v49, v22, d);

      if (v50)
      {
        v53 = MEMORY[0x277D81150];
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSTTableInfo(CellMap) applyCellDiff:atCellUID:migrationMap:inverseCellDiff:defaultCellStyle:defaultTextStyle:]", v52);
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v56);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 11095, 0, "expected equality between %{public}s and %{public}s", "TSU_SUCCESS", "rc");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
      }
    }

    else
    {
      v62 = objc_msgSend_doesSetProperty_(cellDiffCopy, v45, 908, v47);
      if (objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_(self, v63, v22, d, doesSetProperty ^ 1u, v62 ^ 1u))
      {
        v66 = MEMORY[0x277D81150];
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSTTableInfo(CellMap) applyCellDiff:atCellUID:migrationMap:inverseCellDiff:defaultCellStyle:defaultTextStyle:]", v65);
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v69);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v71, v67, v70, 11092, 0, "expected equality between %{public}s and %{public}s", "TSU_SUCCESS", "rc");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74);
      }
    }
  }

  return cellDiffCopy;
}

- (id)cellAfterApplyDiff:(id)diff toCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d migrationMap:(id)map inverseCellDiff:(id)cellDiff concurrentStylesheet:(id)stylesheet defaultCellStyle:(id)style defaultTextStyle:(id)self0
{
  diffCopy = diff;
  cellCopy = cell;
  cellDiffCopy = cellDiff;
  stylesheetCopy = stylesheet;
  styleCopy = style;
  textStyleCopy = textStyle;
  doesSetProperty = objc_msgSend_doesSetProperty_(diffCopy, v16, 913, v17);
  v21 = objc_msgSend_doesSetProperty_(diffCopy, v19, 912, v20);
  v25 = objc_msgSend_baseTableModel(self, v22, v23, v24);
  v29 = objc_msgSend_columnRowUIDMap(v25, v26, v27, v28);
  row = d->_row;
  *&v219.var0 = d->_column;
  *&v219.var2.var0.var0.coordinate.row = row;
  v33 = objc_msgSend_cellIDForCellUID_(v29, v31, &v219, v32);

  v34 = d->_row;
  *&v219.var0 = d->_column;
  *&v219.var2.var0.var0.coordinate.row = v34;
  v40 = objc_msgSend_cellIDForCellUID_(self, v35, &v219, v36);
  if (cellCopy)
  {
    v41 = cellCopy;
  }

  else
  {
    v41 = objc_msgSend_newCell(self, v37, v38, v39);
  }

  v45 = v41;
  if ((objc_msgSend_isAPivotTable(self, v42, v43, v44) & 1) == 0 && (v33 == 0x7FFFFFFF || (v33 & 0xFFFF00000000) == 0x7FFF00000000))
  {
    if (!objc_msgSend_canBeVendorStorageUid_(TSTSummaryCellVendor, v46, d, v47))
    {
      v111 = 0;
      goto LABEL_58;
    }

    if (!cellCopy)
    {
      v144 = objc_msgSend_summaryModel(self, v141, v142, v143);
      v148 = objc_msgSend_summaryCellVendor(v144, v145, v146, v147);
      objc_msgSend_getCell_atCellUID_(v148, v149, v45, d);
    }

    v150 = d->_row;
    *&v219.var0 = d->_column;
    *&v219.var2.var0.var0.coordinate.row = v150;
    v151 = objc_msgSend_tableStyleAreaForCellUID_(self, v141, &v219, v143);
    v54 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v152, v151, v153);
    v53 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v154, v151, v155);
  }

  else
  {
    if (!cellCopy)
    {
      objc_msgSend_getCell_atCellID_suppressCellBorder_(self, v46, v45, v40, v21 ^ 1u);
    }

    v48 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(self, v46, v40, 1, 0);
    v53 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(self, v49, v40, 1, 0);
    v54 = v48;
  }

  v55 = objc_msgSend_cellStyle(v45, v50, v51, v52);
  if (v55)
  {
  }

  else if ((objc_msgSend_doesSetProperty_(diffCopy, v56, 905, v57) & 1) != 0 || objc_msgSend_containsCellStyleProperties(diffCopy, v58, v61, v60))
  {
    v62 = styleCopy;
    if (!styleCopy)
    {
      v62 = v54;
    }

    styleCopy = v62;
    objc_msgSend_setCellStyle_(v45, v58, v62, v60);
  }

  v63 = objc_msgSend_textStyle(v45, v58, v59, v60);
  if (v63)
  {
  }

  else if ((objc_msgSend_doesSetProperty_(diffCopy, v64, 906, v65) & 1) != 0 || objc_msgSend_containsParagraphStyleProperties(diffCopy, v66, v69, v68))
  {
    v70 = textStyleCopy;
    if (!textStyleCopy)
    {
      v70 = v53;
    }

    objc_msgSend_setTextStyle_(v45, v66, v70, v68, v70);
  }

  if (doesSetProperty && objc_msgSend_hasFormula(v45, v66, v67, v68))
  {
    v71 = objc_msgSend_formulaObject(v45, v66, v67, v68);
    v75 = objc_msgSend_translator(self, v72, v73, v74);
    v78 = objc_msgSend_baseCellCoordForViewCellCoord_(v75, v76, v40, v77);

    v82 = objc_msgSend_calcEngine(self, v79, v80, v81);
    v218.coordinate = v78;
    v218._tableUID._lower = objc_msgSend_tableUID(self, v83, v84, v85);
    v218._tableUID._upper = v86;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v219, v82, &v218);

    v89 = objc_msgSend_copyByRewritingReferencesToUidForm_(v71, v87, &v219, v88);
    if (objc_msgSend_containsUidReferences(v89, v90, v91, v92))
    {
      objc_msgSend_setFormulaObject_(v45, v93, v89, v94);
    }
  }

  if (objc_msgSend_hasConditionalStyle(v45, v66, v67, v68) && objc_msgSend_doesSetProperty_(diffCopy, v95, 909, v96))
  {
    v99 = objc_msgSend_translator(self, v95, v97, v98);
    v102 = objc_msgSend_baseCellCoordForViewCellCoord_(v99, v100, v40, v101);

    v106 = objc_msgSend_conditionalStyle(v45, v103, v104, v105);
    v108 = objc_msgSend_copyToUidFormForTableInfo_inCellCoordinate_(v106, v107, self, v102);

    objc_msgSend_setConditionalStyle_(v45, v109, v108, v110);
  }

  v111 = objc_msgSend_cellByApplyingCellDiff_toTable_andUpdateInverse_optionalConcurrentStylesheet_(v45, v95, diffCopy, self, cellDiffCopy, stylesheetCopy);
  if (objc_msgSend_hasRichText(v111, v112, v113, v114))
  {
    v118 = objc_msgSend_richTextValue(v111, v115, v116, v117);
    objc_msgSend_setParentInfo_(v118, v119, self, v120);
  }

  if (objc_msgSend_hasFormula(v111, v115, v116, v117))
  {
    v124 = objc_msgSend_formulaObject(v111, v121, v122, v123);
    isSpillFormula = objc_msgSend_isSpillFormula(v124, v125, v126, v127);

    if (isSpillFormula)
    {
      v129 = objc_msgSend_translator(self, v121, v122, v123);
      v132 = objc_msgSend_baseCellCoordForViewCellCoord_(v129, v130, v40, v131);

      v136 = objc_msgSend_calcEngine(self, v133, v134, v135);
      v218.coordinate = v132;
      v218._tableUID._lower = 0x100000001;
      v217[0] = objc_msgSend_tableUID(self, v137, v138, v139);
      v217[1] = v140;
      if (v136)
      {
        objc_msgSend_spillOriginsSpillingIntoRange_inOwner_(v136, v140, &v218, v217);
      }

      else
      {
        memset(&v219, 0, 24);
      }

      v159 = objc_msgSend_calcEngine(self, v156, v157, v158);
      objc_msgSend_markCellRefSetAsDirty_(v159, v160, &v219, v161);

      sub_22107C800(&v219, v219.var1);
    }
  }

  if ((objc_msgSend_hasFormula(v111, v121, v122, v123) & doesSetProperty) == 1)
  {
    v165 = objc_msgSend_calcEngine(self, v162, v163, v164);
    v169 = objc_msgSend_tableUIDHistory(v165, v166, v167, v168);

    if (v169 && *(objc_msgSend_tableUIDMap(v169, v170, v171, v172) + 24))
    {
      v179 = objc_msgSend_formulaObject(v111, v173, v174, v175);
      if (v179)
      {
        v180 = objc_msgSend_translator(self, v176, v177, v178);
        v183 = objc_msgSend_baseCellCoordForViewCellCoord_(v180, v181, v40, v182);

        v187 = objc_msgSend_calcEngine(self, v184, v185, v186);
        v191 = objc_msgSend_tableUID(self, v188, v189, v190);
        v218.coordinate = v183;
        v218._tableUID._lower = v191;
        v218._tableUID._upper = v192;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v219, v187, &v218);

        v196 = objc_msgSend_tableUIDMap(v169, v193, v194, v195);
        v198 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v179, v197, v196, &v219, 0);
        objc_msgSend_setFormulaObject_(v111, v199, v198, v200);
      }
    }
  }

  if ((objc_msgSend_isEmpty(cellDiffCopy, v162, v163, v164) & 1) == 0)
  {
    v204 = objc_msgSend_cellStyle(v111, v201, v202, v203);

    if (v204 == v54)
    {
      objc_msgSend_setCellStyle_(v111, v205, 0, v207);
    }

    v208 = objc_msgSend_textStyle(v111, v205, v206, v207);

    if (v208 == v53)
    {
      objc_msgSend_setTextStyle_(v111, v209, 0, v210);
    }
  }

LABEL_58:

  return v111;
}

- (void)p_performCommentStorageDOLC:(id)c
{
  v7 = objc_msgSend_commentStorage(c, a2, c, v3);
  if (v7)
  {
    objc_msgSend_commentWillBeAddedToDocumentRoot(v7, v4, v5, v6);
  }
}

- (int)p_fillPropertyForStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = 898;
  }

  else
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      v5 = 48;
    }

    else
    {
      objc_opt_class();
      v7 = TSUDynamicCast();
      if (v7)
      {
        v5 = 516;
      }

      else
      {
        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          v5 = 770;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  hintCopy = hint;
  objc_opt_class();
  v6 = TSUDynamicCast();
  objc_msgSend_maximumSize(v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v14 = TSDTopmostInfoFromInfo();
  v18 = objc_msgSend_parentInfo(v14, v15, v16, v17);
  v19 = TSUProtocolCast();

  if (v19)
  {
    objc_msgSend_highestScaleFactorForRenderingDrawableInfo_(v19, v20, self, v21, &unk_283510BD8);
    if (v22 > 1.0)
    {
      TSUMultiplySizeScalar();
      v11 = v23;
      v13 = v24;
    }
  }

  v25 = v11;
  v26 = v13;
  result.height = v26;
  result.width = v25;
  return result;
}

- (id)compatibilityCheckerForData:(id)data associatedHint:(id)hint
{
  dataCopy = data;
  v5 = objc_alloc(MEMORY[0x277D802A8]);
  v8 = objc_msgSend_initWithImageData_(v5, v6, dataCopy, v7);

  return v8;
}

- (void)enumerateCellStringsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_numberOfRows(self, v4, v5, v6);
  objc_msgSend_enumerateCellStringsForRows_rowCount_usingBlock_(self, v8, 0, v7, blockCopy);
}

- (void)enumerateCellStringsForRows:(unsigned int)rows rowCount:(unsigned int)count usingBlock:(id)block
{
  LODWORD(v6) = rows;
  blockCopy = block;
  v53 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11);
  v15 = objc_msgSend_numberOfRows(self, v12, v13, v14);
  v50 = objc_msgSend_numberOfColumns(self, v16, v17, v18);
  LODWORD(v21) = count + v6;
  if (count + v6 >= v15)
  {
    v21 = v15;
  }

  else
  {
    v21 = v21;
  }

  v49 = v21;
  if (v21 > v6)
  {
    v52 = (v21 - 1);
    v6 = v6;
    while (1)
    {
      isSummaryOrLabelRow = objc_msgSend_isSummaryOrLabelRow_(self, v19, v6, v20);
      if (v50)
      {
        break;
      }

LABEL_23:
      if (++v6 == v49)
      {
        goto LABEL_24;
      }
    }

    v23 = isSummaryOrLabelRow;
    v24 = 0;
    v25 = v6;
    while ((v23 & 1) != 0 || objc_msgSend_isCategoryColumn_(self, v19, v24, v20))
    {
      if (objc_msgSend_isSummaryCell_(self, v19, v25, v20))
      {
        v29 = objc_msgSend_newCell(self, v26, v27, v28);
        if (!objc_msgSend_getCell_atCellID_(self, v30, v29, v25))
        {
          v34 = objc_msgSend_formattedValue(v29, v31, v32, v33);
          goto LABEL_20;
        }

LABEL_15:
        v35 = 0;
        goto LABEL_21;
      }

      v35 = objc_msgSend_stringAtCellID_optionalCell_(self, v26, v25, 0);
LABEL_22:
      blockCopy[2](blockCopy, v35, v53, v50 - 1 == v24, v6 == v52);

      ++v24;
      v25 += 0x100000000;
      if (v50 == v24)
      {
        goto LABEL_23;
      }
    }

    v55 = 0;
    RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(self, v19, &v55, v25, 0);
    v37 = v55;
    v29 = v37;
    if (RichTextAttributesIfPlainText)
    {
      goto LABEL_15;
    }

    if (v37)
    {
      objc_msgSend_format(v37, v38, v39, v40);
      if (v54 == 267)
      {
        v51 = objc_msgSend_number(v29, v38, v41, v40);
        v45 = objc_msgSend_rawDecimalValue(v51, v42, v43, v44);
        v48 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v46, v45, v47);

        v29 = v48;
      }
    }

    v34 = objc_msgSend_coercedStringWithLocale_(v29, v38, v53, v40);
LABEL_20:
    v35 = v34;
LABEL_21:

    goto LABEL_22;
  }

LABEL_24:
}

- (id)cellIteratorWithFlags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  v7 = [TSTCellIterator alloc];
  v9 = objc_msgSend_initWithTableInfo_flags_searchFlags_(v7, v8, self, flags, searchFlags);

  return v9;
}

- (id)cellIteratorWithRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  v10 = [TSTCellIterator alloc];
  v12 = objc_msgSend_initWithTableInfo_range_flags_searchFlags_(v10, v11, self, origin, size, flags, searchFlags);

  return v12;
}

- (id)cellIteratorWithRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  regionCopy = region;
  v9 = [TSTCellIterator alloc];
  v11 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v9, v10, self, regionCopy, flags, searchFlags);

  return v11;
}

- (id)cellIteratorWithRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  regionCopy = region;
  v12 = [TSTCellIterator alloc];
  v14 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_clampingRange_(v12, v13, self, regionCopy, flags, searchFlags, origin, size);

  return v14;
}

- (void)p_iterateCellsAndTerminateWithIterator:(id)iterator usingBlock:(id)block
{
  iteratorCopy = iterator;
  objc_msgSend_iterateCellsUsingBlock_(iteratorCopy, v5, block, v6);
  objc_msgSend_terminate(iteratorCopy, v7, v8, v9);
}

- (void)iterateCellsWithFlags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block
{
  blockCopy = block;
  v11 = objc_msgSend_cellIteratorWithFlags_searchFlags_(self, v9, flags, searchFlags);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v10, v11, blockCopy);
}

- (void)iterateCellsInRange:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v14 = objc_msgSend_cellIteratorWithRange_flags_searchFlags_(self, v12, origin, size, flags, searchFlags);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v13, v14, blockCopy);
}

- (void)iterateCellsInRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags usingBlock:(id)block
{
  blockCopy = block;
  v13 = objc_msgSend_cellIteratorWithRegion_flags_searchFlags_(self, v11, region, flags, searchFlags);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v12, v13, blockCopy);
}

- (void)iterateCellsInRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v16 = objc_msgSend_cellIteratorWithRegion_flags_searchFlags_clampingRange_(self, v14, region, flags, searchFlags, origin, size);
  objc_msgSend_p_iterateCellsAndTerminateWithIterator_usingBlock_(self, v15, v16, blockCopy);
}

- (id)p_mappingForSortingRowsOrColumns:(id)columns withRules:(id)rules dimension:(int64_t)dimension
{
  v174 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  rulesCopy = rules;
  if (!rulesCopy || !objc_msgSend_count(rulesCopy, v7, v8, v9))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableInfo(Reorganize) p_mappingForSortingRowsOrColumns:withRules:dimension:]", v9);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 51, 0, "Can't sort by an empty rule list!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    started = 0;
    goto LABEL_55;
  }

  if (dimension)
  {
    v11 = (objc_msgSend_bodyColumnRange(self, v7, v10, v9) >> 32);
    objc_msgSend_tsu_indexSetByIntersectingWithRange_(columnsCopy, v12, v11, v12);
  }

  else
  {
    v23 = objc_msgSend_bodyRowRange(self, v7, v10, v9);
    objc_msgSend_tsu_indexSetByIntersectingWithRange_(columnsCopy, v24, v23, v24 >> 32);
  }
  v142 = ;
  if (objc_msgSend_count(v142, v25, v26, v27) < 2)
  {
    started = 0;
    goto LABEL_54;
  }

  v145 = objc_msgSend_count(v142, v28, v29, v30);
  __src = 0;
  v171 = 0;
  v172 = 0;
  v150 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v31, v32, v33);
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v34 = rulesCopy;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v166, v173, 16);
  if (!v36)
  {
    goto LABEL_39;
  }

  v37 = *v167;
  v146 = v34;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v167 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v39 = *(*(&v166 + 1) + 8 * i);
      objc_opt_class();
      v40 = TSUDynamicCast();
      v44 = v40;
      if (v40)
      {
        v47 = objc_msgSend_viewIndex(v40, v41, v42, v43);
        if (dimension)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (dimension)
        {
          v48 = objc_msgSend_translator(self, v41, v42, v43);
          v52 = objc_msgSend_baseIndex(v39, v49, v50, v51);
          v47 = objc_msgSend_viewRowIndexForBaseRowIndex_(v48, v53, v52, v54);

LABEL_19:
          if (v47 == 0x7FFFFFFF)
          {
            goto LABEL_37;
          }

          goto LABEL_23;
        }

        v55 = objc_msgSend_translator(self, v41, v42, v43);
        v59 = objc_msgSend_baseIndex(v39, v56, v57, v58);
        v62 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v55, v60, v59, v61);

        v47 = v62;
      }

      if (v47 == 0x7FFF)
      {
        goto LABEL_37;
      }

LABEL_23:
      if ((objc_msgSend_containsIndex_(v150, v45, v47, v46) & 1) == 0)
      {
        objc_msgSend_addIndex_(v150, v63, v47, v64);
        v65 = v171;
        if (v171 >= v172)
        {
          v67 = __src;
          v68 = v171 - __src;
          v69 = (v171 - __src) >> 2;
          v70 = v69 + 1;
          if ((v69 + 1) >> 62)
          {
            sub_22107C148();
          }

          v71 = v172 - __src;
          if ((v172 - __src) >> 1 > v70)
          {
            v70 = v71 >> 1;
          }

          v72 = v71 >= 0x7FFFFFFFFFFFFFFCLL;
          v73 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v72)
          {
            v73 = v70;
          }

          if (v73)
          {
            sub_2210C836C(&__src, v73);
          }

          *(4 * v69) = v47;
          v66 = 4 * v69 + 4;
          memcpy(0, v67, v68);
          v74 = __src;
          __src = 0;
          v171 = v66;
          v172 = 0;
          if (v74)
          {
            operator delete(v74);
          }

          v34 = v146;
        }

        else
        {
          *v171 = v47;
          v66 = (v65 + 4);
        }

        v171 = v66;
      }

LABEL_37:
    }

    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v75, &v166, v173, 16);
  }

  while (v36);
LABEL_39:

  v79 = objc_msgSend_translator(self, v76, v77, v78);
  v141 = objc_msgSend_objectLocale(v79, v80, v81, v82);

  if (dimension)
  {
    objc_msgSend_sortTagsForSortingColumns_byRows_(self, v83, v142, &__src);
  }

  else
  {
    objc_msgSend_sortTagsForSortingRows_byColumns_(self, v83, v142, &__src);
  }
  v147 = ;
  if (objc_msgSend_count(v147, v84, v85, v86) == v145)
  {
    v162[0] = MEMORY[0x277D85DD0];
    v162[1] = 3221225472;
    v162[2] = sub_2214ACAF8;
    v162[3] = &unk_278465EF0;
    v163 = v150;
    v164 = v34;
    v165 = v141;
    v149 = objc_msgSend_sortedArrayUsingComparator_(v147, v89, v162, v90);
    Index = objc_msgSend_firstIndex(v142, v91, v92, v93);
    v98 = objc_msgSend_lastIndex(v142, v95, v96, v97);
    v153 = 0;
    v154 = &v153;
    v155 = 0x4812000000;
    v156 = sub_2214ACC20;
    v157 = sub_2214ACC44;
    v158 = &unk_22188E88F;
    v160 = 0;
    v161 = 0;
    __p = 0;
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = sub_2214ACC5C;
    v151[3] = &unk_278465F18;
    v152 = Index;
    v151[4] = &v153;
    objc_msgSend_enumerateIndexesUsingBlock_(v142, v99, v151, v100);
    v101 = objc_alloc(MEMORY[0x277D806D0]);
    started = objc_msgSend_initWithStartIndex_endIndex_(v101, v102, Index, v98);
    v106 = objc_msgSend_mapping(started, v103, v104, v105);
    if (v145)
    {
      v109 = v106;
      for (j = 0; j != v145; ++j)
      {
        v111 = objc_msgSend_objectAtIndexedSubscript_(v149, v107, j, v108);
        v117 = objc_msgSend_columnOrRowIndex(v111, v112, v113, v114);
        if (v145 <= v117)
        {
          v118 = MEMORY[0x277D81150];
          v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "[TSTTableInfo(Reorganize) p_mappingForSortingRowsOrColumns:withRules:dimension:]", v116);
          v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v121);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v123, v119, v122, 148, 0, "Index out of range!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126);
        }

        *(*v109 + 4 * *(v154[6] + 4 * v117)) = *(v154[6] + 4 * j);
      }
    }

    _Block_object_dispose(&v153, 8);
    if (__p)
    {
      v160 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v127 = MEMORY[0x277D81150];
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSTTableInfo(Reorganize) p_mappingForSortingRowsOrColumns:withRules:dimension:]", v88);
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v130);
    v135 = objc_msgSend_count(v147, v132, v133, v134);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v136, v128, v131, 92, 0, "Expected sort tag count:%lu to match itemCount:%lu.", v135, v145, v141);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138, v139);
    started = 0;
  }

  if (__src)
  {
    v171 = __src;
    operator delete(__src);
  }

LABEL_54:

LABEL_55:

  return started;
}

- (id)mappingForSortingColumns:(id)columns withRules:(id)rules
{
  v4 = objc_msgSend_p_mappingForSortingRowsOrColumns_withRules_dimension_(self, a2, columns, rules, 1);

  return v4;
}

- (id)mappingForSortingRows:(id)rows withRules:(id)rules
{
  v4 = objc_msgSend_p_mappingForSortingRowsOrColumns_withRules_dimension_(self, a2, rows, rules, 0);

  return v4;
}

- (id)sortTagsForSortingColumns:(id)columns byRows:(const void *)rows
{
  columnsCopy = columns;
  v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  v10 = objc_opt_new();
  v41 = 0;
  v42 = &v41;
  v43 = 0x5812000000;
  v44 = sub_2214AD0D0;
  v45 = sub_2214AD0DC;
  v46 = &unk_22188E88F;
  memset(v47, 0, sizeof(v47));
  v48 = 1065353216;
  v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13);
  v17 = *rows;
  v18 = *(rows + 1);
  if (*rows != v18)
  {
    v19 = 0;
    do
    {
      objc_msgSend_addIndex_(v16, v14, *v17, v15, v29);
      v39[0] = v17;
      *(sub_2214AE9F4(v42 + 6, v17++, &unk_2217E1FF2, v39) + 5) = v19++;
    }

    while (v17 != v18);
  }

  v20 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v14, columnsCopy, v16, v29);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = -1;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2214AD0E4;
  v33[3] = &unk_278465F40;
  v21 = v10;
  v34 = v21;
  selfCopy = self;
  v36 = v39;
  v37 = &v41;
  rowsCopy = rows;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(self, v22, v20, 67, 0x20000000, v33);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2214AD42C;
  v31[3] = &unk_278465F68;
  v23 = v30;
  v32 = v23;
  objc_msgSend_foreach_(v21, v24, v31, v25);
  v26 = v32;
  v27 = v23;

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
  sub_2210BDEC0(v47);

  return v27;
}

- (id)sortTagsForSortingRows:(id)rows byColumns:(const void *)columns
{
  rowsCopy = rows;
  v43 = rowsCopy;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  v58 = 0;
  v59 = &v58;
  v60 = 0x5812000000;
  v61 = sub_2214AD0D0;
  v62 = sub_2214AD0DC;
  v63 = &unk_22188E88F;
  memset(v64, 0, sizeof(v64));
  v65 = 1065353216;
  v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13);
  v17 = *columns;
  v18 = *(columns + 1);
  if (*columns != v18)
  {
    v19 = 0;
    do
    {
      objc_msgSend_addIndex_(v16, v14, *v17, v15);
      v56[0] = v17;
      *(sub_2214AE9F4(v59 + 6, v17++, &unk_2217E1FF2, v56) + 5) = v19++;
    }

    while (v17 != v18);
  }

  v20 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v14, v16, rowsCopy);
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = -1;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v55 = 0x7FFFFFFF;
  if (objc_msgSend_isCategorized(self, v21, v22, v23))
  {
    v27 = objc_msgSend_categoryColumnIndex(self, v24, v25, v26);
    v30 = objc_msgSend_containsIndex_(v16, v28, v27, v29);
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_msgSend_columnRowUIDMap(self, v24, v25, v26);
  v35 = objc_msgSend_groupBy(self, v32, v33, v34);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2214AD7AC;
  v44[3] = &unk_278465F90;
  v49 = v54;
  v50 = v56;
  columnsCopy = columns;
  v36 = v10;
  v45 = v36;
  selfCopy = self;
  v53 = v30;
  v37 = v31;
  v47 = v37;
  v48 = v35;
  v51 = &v58;
  v38 = v35;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(self, v39, v20, 67, 0x20000000, v44);
  v40 = v48;
  v41 = v36;

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v56, 8);

  _Block_object_dispose(&v58, 8);
  sub_2210BDEC0(v64);

  return v41;
}

- (void)rearrangeWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v8 = objc_msgSend_mapping(mappingCopy, v5, v6, v7);
  v12 = objc_msgSend_mappingSize(mappingCopy, v9, v10, v11);
  started = objc_msgSend_startIndex(mappingCopy, v13, v14, v15);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  sub_2214AEE5C(&v89, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 2);
  v20 = objc_msgSend_range(self, v17, v18, v19);
  v22 = v21;
  v25 = objc_msgSend_tableUID(self, v21, v23, v24);
  v64 = v26;
  v65 = v25;
  v63 = mappingCopy;
  v29 = objc_msgSend_calcEngine(self, v26, v27, v28);
  v81 = 0;
  v82 = &v81;
  v83 = 0x4812000000;
  v84 = sub_2214ADF9C;
  v85 = sub_2214ADFA8;
  v86 = &unk_22188E88F;
  v88[0] = 0;
  v88[1] = 0;
  v87 = v88;
  v33 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v30, v31, v32);
  objc_msgSend_beginBatchingGroupCellDirtying(v29, v34, v35, v36);
  v79[0] = MEMORY[0x277D85DD0];
  v61 = v22;
  v79[1] = 3221225472;
  v79[2] = sub_2214ADFB4;
  v79[3] = &unk_278465FB8;
  v80 = started;
  v37 = v22 | (v12 << 32);
  v79[6] = v65;
  v79[7] = v64;
  v62 = v8;
  v79[4] = &v81;
  v79[5] = v8;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v38, v20 & 0xFFFF00000000 | started, v37, 34, 0x20000, v79);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      while (1)
      {
        v41 = v89;
        v42 = v89[i];
        if (i == v42)
        {
          break;
        }

        v89[i] = v89[v42];
        v41[v42] = v42;
        v43 = v42 + started;
        objc_msgSend_swapRowAtIndex_withRowAtIndex_(self, v39, started + i, v43);
        objc_msgSend_addIndex_(v33, v44, started + i, v45);
        objc_msgSend_addIndex_(v33, v46, v43, v47);
      }
    }
  }

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_2214AE048;
  v72[3] = &unk_278465FE0;
  v78 = started;
  v76 = v65;
  v77 = v64;
  v74 = &v81;
  v75 = v62;
  v48 = v29;
  v73 = v48;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(self, v49, v20 & 0xFFFF00000000 | started, v37, 258, 0x20000, v72);
  v50 = j__TSUCellRectToTSCERangeCoordinate(v20, v61);
  v52 = v51;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_2214AE130;
  v66[3] = &unk_278466008;
  v53 = v48;
  v67 = v53;
  v68 = v65;
  v69 = v64;
  v70 = v50;
  v71 = v52;
  objc_msgSend_enumerateRangesUsingBlock_(v33, v54, v66, v55);
  objc_msgSend_removeFormulasAt_(v53, v56, (v82 + 6), v57);
  objc_msgSend_endBatchingGroupCellDirtying(v53, v58, v59, v60);

  _Block_object_dispose(&v81, 8);
  sub_22107C800(&v87, v88[0]);

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }
}

- (id)mappingFromRowUids:(const void *)uids toRowUids:(const void *)rowUids
{
  v6 = objc_msgSend_rowIndexesForUIDs_(self, a2, uids, rowUids);
  Index = objc_msgSend_firstIndex(v6, v7, v8, v9);
  v14 = objc_msgSend_lastIndex(v6, v11, v12, v13);
  v15 = objc_alloc(MEMORY[0x277D806D0]);
  started = objc_msgSend_initWithStartIndex_endIndex_(v15, v16, Index, v14);
  v62 = v6;
  v63 = objc_msgSend_mapping(started, v17, v18, v19);
  v23 = objc_msgSend_mappingSize(started, v20, v21, v22);
  if (v23)
  {
    v25 = 0;
    v26 = vdupq_n_s64(v23 - 1);
    v27 = xmmword_2217E0F70;
    v28 = xmmword_2217E0F60;
    v29 = (*v63 + 8);
    v30 = vdupq_n_s64(4uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v26, v28));
      if (vuzp1_s16(v31, *v26.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v26).i8[2])
      {
        *(v29 - 1) = v25 + 1;
      }

      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
      {
        *v29 = v25 + 2;
        v29[1] = v25 + 3;
      }

      v25 += 4;
      v27 = vaddq_s64(v27, v30);
      v28 = vaddq_s64(v28, v30);
      v29 += 4;
    }

    while (((v23 + 3) & 0x1FFFFFFFCLL) != v25);
  }

  v32 = *rowUids;
  if (*rowUids != *(rowUids + 1))
  {
    v33 = *uids;
    do
    {
      v34 = objc_msgSend_rowIndexForRowUID_(self, v24, *v33, v33[1]);
      v37 = objc_msgSend_rowIndexForRowUID_(self, v35, *v32, v32[1]);
      v38 = v34 - Index;
      if (v34 < Index || v34 > v14)
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableInfo(Reorganize) mappingFromRowUids:toRowUids:]", v36);
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v43);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 374, 0, "From index out of range!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
      }

      v49 = v37 - Index;
      if (v37 < Index || v37 > v14)
      {
        v51 = MEMORY[0x277D81150];
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableInfo(Reorganize) mappingFromRowUids:toRowUids:]", v36);
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo_Reorganize.mm", v54);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 375, 0, "From index out of range!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
      }

      *(*v63 + 4 * v38) = v49;
      v33 += 2;
      v32 += 2;
    }

    while (v32 != *(rowUids + 1));
  }

  return started;
}

- (id)changeDescriptorsForReorganizingFromRowUids:(const void *)uids toRowUids:(const void *)rowUids
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, uids, rowUids);
  v8 = [TSCEMutableUIDSet alloc];
  v11 = objc_msgSend_initWithUUIDVector_(v8, v9, rowUids, v10);
  v74 = 0;
  v75 = &v74;
  v76 = 0x4812000000;
  v77 = sub_2214AE95C;
  v78 = sub_2214AE980;
  *v79 = 0u;
  v80 = 0u;
  sub_221086EBC(&v79[1], *uids, *(uids + 1), (*(uids + 1) - *uids) >> 4);
  v18 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14);
  v19 = *uids;
  v20 = *(uids + 1) - *uids;
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      if ((objc_msgSend_removeUUID_(v11, v15, *&v19[v21], *&v19[v21 + 8]) & 1) == 0)
      {
        objc_msgSend_addIndex_(v18, v15, v22, v17);
      }

      ++v22;
      v19 = *uids;
      v20 = *(uids + 1) - *uids;
      v21 += 16;
    }

    while (v22 < v20 >> 4);
  }

  v23 = v20 >> 4;
  v30 = (v20 >> 4) - objc_msgSend_count(v18, v15, v16, v17);
  if (objc_msgSend_count(v18, v24, v25, v26))
  {
    v31 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v27, v18, v29);
    v33 = objc_msgSend_changeDescriptorWithType_cellRegion_beforeCount_afterCount_(TSTChangeDescriptor, v32, 24, v31, v23, v30);

    objc_msgSend_addObject_(v7, v34, v33, v35);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_2214AE998;
    v73[3] = &unk_278462AA8;
    v73[4] = &v74;
    objc_msgSend_enumerateRangesWithOptions_usingBlock_(v18, v36, 2, v73);
  }

  if (objc_msgSend_count(v11, v27, v28, v29))
  {
    v43 = objc_msgSend_count(v11, v37, v38, v39);
    if (v11)
    {
      objc_msgSend_uuidsAsVector(v11, v40, v41, v42);
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v44, (v75[7] - v75[6]) >> 4, (v72 - __p) >> 4);
    }

    else
    {
      __p = 0;
      v72 = 0;
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v40, (v75[7] - v75[6]) >> 4, 0);
    }
    v45 = ;
    v48 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v46, v45, v47);
    v50 = objc_msgSend_changeDescriptorWithType_cellRegion_beforeCount_afterCount_(TSTChangeDescriptor, v49, 25, v48, v30, v43 + v30);

    objc_msgSend_addObject_(v7, v51, v50, v52);
    sub_22133594C(v75 + 6, v75[7], __p, v72, (v72 - __p) >> 4);

    if (__p)
    {
      operator delete(__p);
    }
  }

  v53 = objc_msgSend_mappingFromRowUids_toRowUids_(self, v37, rowUids, (v75 + 6));
  if ((objc_msgSend_isIdentityMapping(v53, v54, v55, v56) & 1) == 0)
  {
    v59 = objc_msgSend_changeDescriptorWithType_shuffleMapping_(TSTChangeDescriptor, v57, 28, v53);
    objc_msgSend_addObject_(v7, v60, v59, v61);
  }

  if (*(rowUids + 1) != *rowUids)
  {
    v62 = objc_msgSend_mutableRowIndexesForUIDs_(self, v57, rowUids, v58);
    v65 = objc_msgSend_regionFromRowIndices_(TSTCellRegion, v63, v62, v64);

    v67 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v66, 29, v65, v65);
    objc_msgSend_addObject_(v7, v68, v67, v69);
  }

  _Block_object_dispose(&v74, 8);
  if (v79[1])
  {
    *&v80 = v79[1];
    operator delete(v79[1]);
  }

  return v7;
}

@end