@interface TSTTableModel
+ (id)tableModelForTableUID:(const TSKUIDStruct *)d withCalcEngine:(id)engine;
+ (int64_t)dateGroupingTypeForMinMaxDatePair:(id)pair;
- (BOOL)auditColumnRowCellCountsReturningResult:(id *)result hasUndercounts:(BOOL *)undercounts;
- (BOOL)auditDatalistDuplicationReturningResult:(id *)result;
- (BOOL)auditRowInfoCellCountsReturningResult:(id *)result;
- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)bounds result:(id *)result;
- (BOOL)cellExistsAtBaseCellCoord:(TSUModelCellCoord)coord;
- (BOOL)cellModifiedInCurrentRecalcCycle:(const TSUCellCoord *)cycle;
- (BOOL)confirmRefCountsReturningResult:(id *)result;
- (BOOL)hasCellID:(TSUCellCoord)d;
- (BOOL)hasCommentAtBaseCellCoord:(TSUModelCellCoord)coord;
- (BOOL)hasFormulaAtBaseCellCoord:(TSUModelCellCoord)coord;
- (BOOL)hasNamesInHeaders;
- (BOOL)hasPastableFormulas;
- (BOOL)hasSpillRangesIntersectingCellRegion:(id)region;
- (BOOL)hasUsefulPivotDataInSourceBodyTract:(id)tract;
- (BOOL)isRegisteredWithCalcEngine:(id)engine;
- (BOOL)p_auditTableHealthUpgradingFromVersion:(unint64_t)version;
- (BOOL)p_auditTilesForRowOverlapAndExtensionPastTableBoundsWithVersion:(unint64_t)version;
- (BOOL)spillArrayValue:(id)x2_0 primaryCell:(id)cell withContext:(id)context hasWarnings:(BOOL)warnings didBeginOrEndWithTextCell:(BOOL *)textCell propagateCheckboxes:(BOOL)checkboxes;
- (BOOL)verifySubOwnerUIDsUsed;
- (NSArray)columnWidths;
- (NSArray)rowHeights;
- (NSMapTable)commentHostingMap;
- (NSMapTable)commentStorageMap;
- (NSString)description;
- (NSUUID)nsTableUID;
- (TSCECellCoordSet)arrayFormulasSpillingIntoRegion:(SEL)region;
- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle;
- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)region affectedRegion:(id)affectedRegion;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSDStroke)bodyColumnStroke;
- (TSDStroke)bodyRowStroke;
- (TSDStroke)bodyRowStrokeEvenIfNotVisible;
- (TSDStroke)categoryLevel1InteriorStroke;
- (TSDStroke)categoryLevel2InteriorStroke;
- (TSDStroke)categoryLevel3InteriorStroke;
- (TSDStroke)categoryLevel4InteriorStroke;
- (TSDStroke)categoryLevel5InteriorStroke;
- (TSDStroke)defaultHorizontalBorderStroke;
- (TSDStroke)defaultHorizontalBorderStrokeEvenIfNotVisible;
- (TSDStroke)defaultVerticalBorderStroke;
- (TSDStroke)footerRowBodyColumnStroke;
- (TSDStroke)footerRowBodyRowStroke;
- (TSDStroke)footerRowBorderStroke;
- (TSDStroke)footerRowSeparatorStroke;
- (TSDStroke)headerColumnBodyColumnStroke;
- (TSDStroke)headerColumnBodyRowStroke;
- (TSDStroke)headerColumnBorderStroke;
- (TSDStroke)headerColumnSeparatorStroke;
- (TSDStroke)headerRowBodyColumnStroke;
- (TSDStroke)headerRowBodyRowStroke;
- (TSDStroke)headerRowBorderStroke;
- (TSDStroke)headerRowSeparatorStroke;
- (TSKUIDStruct)UIDForIndex:(unsigned int)index isRows:(BOOL)rows;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index;
- (TSKUIDStruct)conditionalStyleFormulaOwnerUID;
- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows;
- (TSKUIDStruct)fromGroupByUID;
- (TSKUIDStruct)fromTableUID;
- (TSKUIDStruct)groupByUID;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index;
- (TSKUIDStruct)tableUID;
- (TSKUIDStruct)upgradeHiddenFormulaOwnerForColumnsUID;
- (TSKUIDStruct)upgradeHiddenFormulaOwnerForRowsUID;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)indexes isRows:(id)rows;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)range isRows:(_NSRange)rows;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range;
- (TSTCellWillChangeDistributor)cellWillChangeDistributor;
- (TSTOwnerUidMapper)identityOwnerUIDMapper;
- (TSTOwnerUidMapper)ownerUIDMapper;
- (TSTOwnerUidMapper)upgradeToSubOwnerUIDMapper;
- (TSTTableModel)initWithContext:(id)context fromSourceModel:(id)model region:(id)region tableInfo:(id)info waitForCalcEngine:(BOOL)engine formulaCoordSpace:(int64_t)space;
- (TSTTableModel)initWithContext:(id)context rowUids:(const void *)uids columnUids:(const void *)columnUids styles:(id)styles stylePreset:(id)preset tableInfo:(id)info;
- (TSTTableModel)initWithContext:(id)context rows:(unsigned int)rows columns:(unsigned int)columns styles:(id)styles stylePreset:(id)preset tableInfo:(id)info;
- (TSTTableModel)initWithContext:(id)context tableUID:(TSKUIDStruct)d columnRowUIDMap:(id)map styles:(id)styles stylePreset:(id)preset tableInfo:(id)info;
- (TSTTableSortOrder)sortOrder;
- (TSTTableTranslator)identityTranslator;
- (TSUCellRect)cellRangeForUIDRange:(const void *)range;
- (TSUModelCellCoord)baseCellCoordForCellContainingRichTextStorage:(id)storage;
- (TSUModelCellRect)actualHeaderColumnRange;
- (TSUModelCellRect)bodyColumnRange;
- (TSUModelCellRect)bodyRange;
- (TSUModelCellRect)bodyRowRange;
- (TSUModelCellRect)bottomCornerRange;
- (TSUModelCellRect)cellRangeForTableArea:(unint64_t)area;
- (TSUModelCellRect)footerRowRange;
- (TSUModelCellRect)headerColumnRange;
- (TSUModelCellRect)headerRowRange;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUModelCellRect)range;
- (TSUModelCellRect)topCornerRange;
- (_NSRange)columnRangeForUIDs:(const void *)ds;
- (_NSRange)rowRangeForUIDs:(const void *)ds;
- (double)computeDefaultFontHeightForTableStyleArea:(unint64_t)area;
- (double)heightOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default;
- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default;
- (id).cxx_construct;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)UIDSetForRange:(_NSRange)range isRows:(BOOL)rows;
- (id)cachedCommentHostingForAnnotationUUID:(id)d;
- (id)cellAtBaseCellCoord:(TSUModelCellCoord)coord;
- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default;
- (id)cellStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default;
- (id)cellStyleOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default;
- (id)cellStyleOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default;
- (id)cellValueAtBaseCellCoord:(TSUModelCellCoord)coord;
- (id)cellValueFromCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord;
- (id)columnIndexesForUIDs:(const void *)ds;
- (id)columnNameForCellID:(TSUCellCoord)d restrictToBodyRange:(BOOL)range;
- (id)columnUuids;
- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)coord;
- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)coord forCommentStorage:(id)storage;
- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)coord forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps;
- (id)createPivotOwner;
- (id)defaultCellStyleForBaseCellCoord:(TSUModelCellCoord)coord useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultCellStyleForTableStyleArea:(unint64_t)area;
- (id)defaultTextStyleForBaseCellCoord:(TSUModelCellCoord)coord useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultTextStyleForTableStyleArea:(unint64_t)area;
- (id)expectedSpillErrorForValue:(id)value withContext:(id)context;
- (id)fillForRow:(TSUModelRowIndex)row;
- (id)formatForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)coord formatIsExplicitOut:(BOOL *)out;
- (id)initAsPivotDataWithContext:(id)context tableInfo:(id)info sourceModel:(id)model sourceBody:(id)body sourceHeader:(id)header;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys;
- (id)metadataForColumnIndex:(TSUModelColumnIndex)index hidingAction:(unsigned __int8)action;
- (id)metadataForRowIndex:(TSUModelRowIndex)index hidingAction:(unsigned __int8)action;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableColumnIndexesForUIDs:(const void *)ds;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
- (id)mutableIndexesForUIDs:(const void *)ds isRows:(BOOL)rows;
- (id)mutableRowIndexesForUIDs:(const void *)ds;
- (id)newCell;
- (id)newCellWithLocale:(id)locale;
- (id)objectToArchiveInDependencyTracker;
- (id)p_displayNameForColumnAtIndex:(unsigned __int16)index documentLocalized:(BOOL)localized derivation:(int64_t *)derivation;
- (id)regionForValueOrCommentCellsInBaseCellRect:(TSUModelCellRect)rect;
- (id)rowIndexesForUIDs:(const void *)ds;
- (id)rowUuids;
- (id)sheetName;
- (id)stringAtBaseCellCoord:(TSUModelCellCoord)coord optionalCell:(id)cell;
- (id)tableAreasForBaseCellRect:(TSUModelCellRect)rect;
- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default;
- (id)textStyleForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default;
- (id)textStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default;
- (id)textStyleOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default;
- (id)textStyleOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default;
- (id)unnamedTableString;
- (int)getCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord suppressCellBorder:(BOOL)border;
- (int)getDefaultCell:(id)cell forBaseCellCoord:(TSUModelCellCoord)coord;
- (int)getDefaultCell:(id)cell forTableStyleArea:(unint64_t)area;
- (int)getValue:(id *)value atBaseCellCoord:(TSUModelCellCoord)coord fetchRichTextAttributesIfPlainText:(BOOL)text skipPendingWrites:(BOOL)writes;
- (int)insertColumnsAtIndex:(TSUModelColumnIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area;
- (int)insertRowsAtIndex:(TSUModelRowIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area unsetFilterHidingAction:(BOOL)action;
- (int)insertRowsInBaseRange:(_NSRange)range uids:(const void *)uids metadata:(id)metadata unsetFilterHidingAction:(BOOL)action;
- (int)maxStrokeOrder;
- (int)p_shouldAllowApplyBaseCellMap:(id)map;
- (int)p_shouldAllowSetCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord;
- (int)registerWithCalcEngine:(id)engine ownerKind:(unsigned __int16)kind linkOnly:(BOOL)only;
- (int)removeCommentStorageAtBaseCellCoord:(TSUModelCellCoord)coord;
- (int)setCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings calcEngine:(id)engine;
- (int)setCellsWithBaseCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells;
- (int)setCommentStorage:(id)storage atBaseCellCoord:(TSUModelCellCoord)coord;
- (int)tableWritingDirection;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)tableAreaForBaseCellCoord:(TSUModelCellCoord)coord;
- (unint64_t)tableAreaForColumn:(TSUModelColumnIndex)column;
- (unint64_t)tableAreaForRow:(TSUModelRowIndex)row;
- (unint64_t)tableSizeClass;
- (unint64_t)tableStyleAreaForBaseCellCoord:(TSUModelCellCoord)coord;
- (unint64_t)tableStyleAreaForRow:(TSUModelRowIndex)row;
- (unsigned)cellValueTypeAtBaseCellCoord:(TSUModelCellCoord)coord;
- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d;
- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (unsigned)headerInfo_hidingActionForColumnAtIndex:(TSUModelColumnIndex)index;
- (unsigned)headerInfo_hidingActionForRowAtIndex:(TSUModelRowIndex)index;
- (unsigned)pivotDataCellValueTypeForColumn:(TSUModelColumnIndex)column;
- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d;
- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableModel *)self;
- (void)_removeAnnotationsFromDeleteRange:(TSUModelCellRect)range;
- (void)accumulateCurrentCellsConcurrently:(id)concurrently;
- (void)addCellRefToClearError:(const TSCECellRef *)error;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)addReferencedStylesToSet:(id)set;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)assertListTilesAndRows;
- (void)clearCommentHostingMapForCommentStorage:(id)storage;
- (void)clearErrors;
- (void)clearPivotOwner;
- (void)clearSpillCellsForOriginID:(TSUCellCoord)d boundingResultRegion:(id *)region;
- (void)clearSpillCellsInRange:(const TSUCellRect *)range;
- (void)computeDefaultRowHeight;
- (void)copyPivotDetailDataFromSourceModel:(id)model inSourceRegion:(id)region columnMapping:(id)mapping rowMapping:(id)rowMapping;
- (void)dealloc;
- (void)defaultStyleHandlesAtBaseCellCoord:(TSUModelCellCoord)coord useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (void)defaultStylesForTableStyleArea:(unint64_t)area outCellStyle:(id *)style outTextStyle:(id *)textStyle;
- (void)didApplyConcurrentCellMap:(id)map;
- (void)documentLocaleDidChange;
- (void)getPendingCellCopy:(id)copy atBaseCellCoord:(TSUModelCellCoord)coord suppressCellBorder:(BOOL)border;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index;
- (void)invalidateForCalcEngine:(id)engine;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)mapTableStylesToStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)moveBaseColumnRange:(_NSRange)range toColumnIndex:(TSUModelColumnIndex)index;
- (void)moveBaseRowRange:(_NSRange)range toRowIndex:(TSUModelRowIndex)index;
- (void)p_clearDefaultStyles;
- (void)p_createCommentMapsIfNeeded;
- (void)p_iterateDataStoreCellsInRegion:(id)region searchFlags:(unint64_t)flags usingBlock:(id)block;
- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)flags affectsCellBorders:(BOOL)borders ignoreFormulas:(BOOL)formulas clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer modificationBlock:(id)block furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)self0 preApplyBlock:(id)self1;
- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)flags affectsCellBorders:(BOOL)borders ignoreFormulas:(BOOL)formulas clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer modificationBlock:(id)block preApplyBlock:(id)applyBlock;
- (void)p_modifyCellsConcurrentlyInBaseRegion:(id)region searchFlags:(unint64_t)flags affectsCellBorders:(BOOL)borders ignoreFormulas:(BOOL)formulas clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer modificationBlock:(id)block furtherPassNeededBlock:(id)self0 furtherPassConcurrentBlock:(id)self1 preApplyBlock:(id)self2;
- (void)p_rebuildTheTable;
- (void)p_upgradeDefaultCellStylesForStrokeSidecar;
- (void)p_upgradeMerges;
- (void)performReadForOneOffFormulaEvaluation:(id)evaluation forCellCoord:(TSUCellCoord)coord;
- (void)postCommentNotificationForStorage:(id)storage baseCellCoord:(TSUModelCellCoord)coord notificationKey:(id)key;
- (void)prepareForPasteWithCalculationEngine:(id)engine sourceOffset:(TSUColumnRowOffset)offset bakeFormulas:(BOOL)formulas;
- (void)prepareToApplyConcurrentCellMap:(id)map;
- (void)registerAllFormulasWithCalculationEngine:(id)engine wasCrossDocumentPaste:(BOOL)paste infoIsCategorized:(BOOL)categorized wasUndo:(BOOL)undo;
- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine bakeForBadRefs:(BOOL)refs;
- (void)removeAnnotationsFromColumnsAtBaseIndexes:(id)indexes;
- (void)removeAnnotationsFromRowsAtBaseIndexes:(id)indexes;
- (void)removeColumnsAtBaseIndexes:(id)indexes;
- (void)removeColumnsAtIndex:(TSUModelColumnIndex)index count:(TSUModelColumnIndex)count;
- (void)removeRowsAtBaseIndexes:(id)indexes;
- (void)removeRowsAtIndex:(TSUModelRowIndex)index count:(TSUModelRowIndex)count;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)resetDependenciesForCell:(TSUCellCoord)cell;
- (void)resetForPivotingWithRowUids:(const void *)uids columnUids:(const void *)columnUids numberOfHeaderRows:(TSUModelRowIndex)rows numberOfHeaderColumns:(TSUModelColumnIndex)columns;
- (void)resetSortRuleReferenceTrackerForInsert;
- (void)resetSpillingRangesInRange:(const TSUCellRect *)range;
- (void)saveToArchiver:(id)archiver;
- (void)setBodyCellStyle:(id)style;
- (void)setBodyTextStyle:(id)style;
- (void)setCategoryLevel1CellStyle:(id)style;
- (void)setCategoryLevel1TextStyle:(id)style;
- (void)setCategoryLevel2CellStyle:(id)style;
- (void)setCategoryLevel2TextStyle:(id)style;
- (void)setCategoryLevel3CellStyle:(id)style;
- (void)setCategoryLevel3TextStyle:(id)style;
- (void)setCategoryLevel4CellStyle:(id)style;
- (void)setCategoryLevel4TextStyle:(id)style;
- (void)setCategoryLevel5CellStyle:(id)style;
- (void)setCategoryLevel5TextStyle:(id)style;
- (void)setCellsConcurrently:(id)concurrently ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer;
- (void)setColumnRowUIDMap:(id)map;
- (void)setColumnWidths:(id)widths;
- (void)setFooterRowCellStyle:(id)style;
- (void)setFooterRowTextStyle:(id)style;
- (void)setFormulaOwnerUIDsWithMap:(id)map shouldStealReferences:(BOOL)references;
- (void)setFromGroupByUID:(TSKUIDStruct)d;
- (void)setFromTableUID:(TSKUIDStruct)d;
- (void)setHeaderColumnCellStyle:(id)style;
- (void)setHeaderColumnTextStyle:(id)style;
- (void)setHeaderColumnsFrozen:(BOOL)frozen;
- (void)setHeaderRowCellStyle:(id)style;
- (void)setHeaderRowTextStyle:(id)style;
- (void)setHeaderRowsFrozen:(BOOL)frozen;
- (void)setHeight:(double)height ofRowAtIndex:(TSUModelRowIndex)index;
- (void)setHidingState:(unsigned __int8)state atColumnIndex:(const TSUModelColumnIndex *)index;
- (void)setHidingState:(unsigned __int8)state atRowIndex:(const TSUModelRowIndex *)index;
- (void)setIsAPivotDataModel:(BOOL)model;
- (void)setNumberOfFooterRows:(TSUModelRowIndex)rows;
- (void)setNumberOfHeaderColumns:(TSUModelColumnIndex)columns;
- (void)setNumberOfHeaderRows:(TSUModelRowIndex)rows;
- (void)setPivotBodySummaryColumnCellStyle:(id)style;
- (void)setPivotBodySummaryRowCellStyle:(id)style;
- (void)setPivotHeaderColumnSummaryCellStyle:(id)style;
- (void)setPresetNeedsStrongOwnership:(BOOL)ownership;
- (void)setRepeatingHeaderColumnsEnabled:(BOOL)enabled;
- (void)setRepeatingHeaderRowsEnabled:(BOOL)enabled;
- (void)setRowHeights:(id)heights;
- (void)setSortOrder:(id)order;
- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order;
- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order;
- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order;
- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order;
- (void)setStrokeSidecar:(id)sidecar;
- (void)setStyleApplyClearsAll:(BOOL)all;
- (void)setStyleNetwork:(id)network;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTableInfo:(id)info;
- (void)setTableName:(id)name;
- (void)setTableNameBorderEnabled:(BOOL)enabled;
- (void)setTableNameEnabled:(BOOL)enabled;
- (void)setTableNameHeight:(double)height;
- (void)setTableNameShapeStyle:(id)style;
- (void)setTableNameStyle:(id)style;
- (void)setTableStyle:(id)style;
- (void)setTableStylePreset:(id)preset;
- (void)setTableUID:(TSKUIDStruct)d;
- (void)setTextImportRecord:(id)record;
- (void)setWasCut:(BOOL)cut;
- (void)setWidth:(double)width ofColumnAtIndex:(TSUModelColumnIndex)index;
- (void)setlabelLevel1CellStyle:(id)style;
- (void)setlabelLevel1TextStyle:(id)style;
- (void)setlabelLevel2CellStyle:(id)style;
- (void)setlabelLevel2TextStyle:(id)style;
- (void)setlabelLevel3CellStyle:(id)style;
- (void)setlabelLevel3TextStyle:(id)style;
- (void)setlabelLevel4CellStyle:(id)style;
- (void)setlabelLevel4TextStyle:(id)style;
- (void)setlabelLevel5CellStyle:(id)style;
- (void)setlabelLevel5TextStyle:(id)style;
- (void)swapRowAtIndex:(TSUModelRowIndex)index withRowAtIndex:(TSUModelRowIndex)atIndex;
- (void)unregisterFromCalcEngine:(id)engine;
- (void)updateCalcEngineForTableSize;
- (void)updateCalculationEngineForFormula:(id)formula inBaseCellCoord:(TSUModelCellCoord)coord usingCalcEngine:(id)engine;
- (void)updateMergesAndCellsAsPivotDataWithSourceModel:(id)model;
- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)needed;
- (void)upgradeFormatsForCustomFormatListU2_0;
- (void)upgradeFromPreUFF;
- (void)upgradeHiddenStates;
- (void)validateTableStylesInSameStylesheetExpectingDocSS:(BOOL)s;
- (void)willBeAddedCellCleanup:(BOOL)cleanup;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSTTableModel

- (void)setStrokeSidecar:(id)sidecar
{
  sidecarCopy = sidecar;
  if (self->_strokeSidecar != sidecarCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_strokeSidecar, sidecar);
  }
}

- (void)documentLocaleDidChange
{
  categoryOwner = self->_categoryOwner;
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3);
  objc_msgSend_updateWithDocumentRoot_(categoryOwner, v5, v7, v6);
}

- (TSTTableTranslator)identityTranslator
{
  identityTranslator = self->_identityTranslator;
  if (!identityTranslator)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_identityTranslator)
    {
      v5 = [TSTTableTranslator alloc];
      v8 = objc_msgSend_initWithBaseTableModel_(v5, v6, selfCopy, v7);
      v9 = self->_identityTranslator;
      self->_identityTranslator = v8;
    }

    objc_sync_exit(selfCopy);

    identityTranslator = self->_identityTranslator;
  }

  return identityTranslator;
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  objc_msgSend_willModifyForUpgrade(self, v5, v6, v7);
  v11 = objc_msgSend_tableStylePreset(self, v8, v9, v10);

  if (!v11)
  {
    v15 = objc_msgSend_documentRoot(self, v12, v13, v14);
    v19 = objc_msgSend_theme(v15, v16, v17, v18);
    v22 = objc_msgSend_presetsOfKind_(v19, v20, *MEMORY[0x277D80BA8], v21);

    if (!v22)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTTableModel setStylesheetForUpgradeToSingleStylesheet:]", v24);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 430, 0, "invalid nil value for '%{public}s'", "presets");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_22109AB0C;
    v40[3] = &unk_27845DB98;
    v40[4] = self;
    objc_msgSend_enumerateObjectsUsingBlock_(v22, v23, v40, v24);
  }

  v34 = objc_msgSend_documentRoot(self, v12, v13, v14);
  v38 = objc_msgSend_makeStyleMapper(v34, v35, v36, v37);
  objc_msgSend_mapTableStylesToStylesheet_withMapper_(self, v39, stylesheetCopy, v38);
}

- (void)p_clearDefaultStyles
{
  tableStyle = self->_tableStyle;
  self->_tableStyle = 0;

  bodyCellStyle = self->_bodyCellStyle;
  self->_bodyCellStyle = 0;

  headerRowCellStyle = self->_headerRowCellStyle;
  self->_headerRowCellStyle = 0;

  headerColumnCellStyle = self->_headerColumnCellStyle;
  self->_headerColumnCellStyle = 0;

  footerRowCellStyle = self->_footerRowCellStyle;
  self->_footerRowCellStyle = 0;

  categoryLevel1CellStyle = self->_categoryLevel1CellStyle;
  self->_categoryLevel1CellStyle = 0;

  categoryLevel2CellStyle = self->_categoryLevel2CellStyle;
  self->_categoryLevel2CellStyle = 0;

  categoryLevel3CellStyle = self->_categoryLevel3CellStyle;
  self->_categoryLevel3CellStyle = 0;

  categoryLevel4CellStyle = self->_categoryLevel4CellStyle;
  self->_categoryLevel4CellStyle = 0;

  categoryLevel5CellStyle = self->_categoryLevel5CellStyle;
  self->_categoryLevel5CellStyle = 0;

  labelLevel1CellStyle = self->_labelLevel1CellStyle;
  self->_labelLevel1CellStyle = 0;

  labelLevel2CellStyle = self->_labelLevel2CellStyle;
  self->_labelLevel2CellStyle = 0;

  labelLevel3CellStyle = self->_labelLevel3CellStyle;
  self->_labelLevel3CellStyle = 0;

  labelLevel4CellStyle = self->_labelLevel4CellStyle;
  self->_labelLevel4CellStyle = 0;

  labelLevel5CellStyle = self->_labelLevel5CellStyle;
  self->_labelLevel5CellStyle = 0;

  bodyTextStyle = self->_bodyTextStyle;
  self->_bodyTextStyle = 0;

  headerRowTextStyle = self->_headerRowTextStyle;
  self->_headerRowTextStyle = 0;

  headerColumnTextStyle = self->_headerColumnTextStyle;
  self->_headerColumnTextStyle = 0;

  footerRowTextStyle = self->_footerRowTextStyle;
  self->_footerRowTextStyle = 0;

  categoryLevel1TextStyle = self->_categoryLevel1TextStyle;
  self->_categoryLevel1TextStyle = 0;

  categoryLevel2TextStyle = self->_categoryLevel2TextStyle;
  self->_categoryLevel2TextStyle = 0;

  categoryLevel3TextStyle = self->_categoryLevel3TextStyle;
  self->_categoryLevel3TextStyle = 0;

  categoryLevel4TextStyle = self->_categoryLevel4TextStyle;
  self->_categoryLevel4TextStyle = 0;

  categoryLevel5TextStyle = self->_categoryLevel5TextStyle;
  self->_categoryLevel5TextStyle = 0;

  labelLevel1TextStyle = self->_labelLevel1TextStyle;
  self->_labelLevel1TextStyle = 0;

  labelLevel2TextStyle = self->_labelLevel2TextStyle;
  self->_labelLevel2TextStyle = 0;

  labelLevel3TextStyle = self->_labelLevel3TextStyle;
  self->_labelLevel3TextStyle = 0;

  labelLevel4TextStyle = self->_labelLevel4TextStyle;
  self->_labelLevel4TextStyle = 0;

  labelLevel5TextStyle = self->_labelLevel5TextStyle;
  self->_labelLevel5TextStyle = 0;

  tableNameStyle = self->_tableNameStyle;
  self->_tableNameStyle = 0;

  tableNameShapeStyle = self->_tableNameShapeStyle;
  self->_tableNameShapeStyle = 0;

  pivotBodySummaryRowCellStyle = self->_pivotBodySummaryRowCellStyle;
  self->_pivotBodySummaryRowCellStyle = 0;

  pivotBodySummaryColumnCellStyle = self->_pivotBodySummaryColumnCellStyle;
  self->_pivotBodySummaryColumnCellStyle = 0;

  pivotHeaderColumnSummaryCellStyle = self->_pivotHeaderColumnSummaryCellStyle;
  self->_pivotHeaderColumnSummaryCellStyle = 0;
}

- (void)setStyleNetwork:(id)network
{
  networkCopy = network;
  objc_msgSend_willModify(self, v4, v5, v6);
  objc_msgSend_p_clearDefaultStyles(self, v7, v8, v9);
  if (networkCopy)
  {
    v13 = objc_msgSend_tableStyle(networkCopy, v10, v11, v12);
    objc_msgSend_setTableStyle_(self, v14, v13, v15);

    v19 = objc_msgSend_bodyCellStyle(networkCopy, v16, v17, v18);
    objc_msgSend_setBodyCellStyle_(self, v20, v19, v21);

    v25 = objc_msgSend_headerRowCellStyle(networkCopy, v22, v23, v24);
    objc_msgSend_setHeaderRowCellStyle_(self, v26, v25, v27);

    v31 = objc_msgSend_headerColumnCellStyle(networkCopy, v28, v29, v30);
    objc_msgSend_setHeaderColumnCellStyle_(self, v32, v31, v33);

    v37 = objc_msgSend_footerRowCellStyle(networkCopy, v34, v35, v36);
    objc_msgSend_setFooterRowCellStyle_(self, v38, v37, v39);

    v43 = objc_msgSend_categoryLevel1CellStyle(networkCopy, v40, v41, v42);
    objc_msgSend_setCategoryLevel1CellStyle_(self, v44, v43, v45);

    v49 = objc_msgSend_categoryLevel2CellStyle(networkCopy, v46, v47, v48);
    objc_msgSend_setCategoryLevel2CellStyle_(self, v50, v49, v51);

    v55 = objc_msgSend_categoryLevel3CellStyle(networkCopy, v52, v53, v54);
    objc_msgSend_setCategoryLevel3CellStyle_(self, v56, v55, v57);

    v61 = objc_msgSend_categoryLevel4CellStyle(networkCopy, v58, v59, v60);
    objc_msgSend_setCategoryLevel4CellStyle_(self, v62, v61, v63);

    v67 = objc_msgSend_categoryLevel5CellStyle(networkCopy, v64, v65, v66);
    objc_msgSend_setCategoryLevel5CellStyle_(self, v68, v67, v69);

    v73 = objc_msgSend_labelLevel1CellStyle(networkCopy, v70, v71, v72);
    objc_msgSend_setLabelLevel1CellStyle_(self, v74, v73, v75);

    v79 = objc_msgSend_labelLevel2CellStyle(networkCopy, v76, v77, v78);
    objc_msgSend_setLabelLevel2CellStyle_(self, v80, v79, v81);

    v85 = objc_msgSend_labelLevel3CellStyle(networkCopy, v82, v83, v84);
    objc_msgSend_setLabelLevel3CellStyle_(self, v86, v85, v87);

    v91 = objc_msgSend_labelLevel4CellStyle(networkCopy, v88, v89, v90);
    objc_msgSend_setLabelLevel4CellStyle_(self, v92, v91, v93);

    v97 = objc_msgSend_labelLevel5CellStyle(networkCopy, v94, v95, v96);
    objc_msgSend_setLabelLevel5CellStyle_(self, v98, v97, v99);

    v103 = objc_msgSend_bodyTextStyle(networkCopy, v100, v101, v102);
    objc_msgSend_setBodyTextStyle_(self, v104, v103, v105);

    v109 = objc_msgSend_headerRowTextStyle(networkCopy, v106, v107, v108);
    objc_msgSend_setHeaderRowTextStyle_(self, v110, v109, v111);

    v115 = objc_msgSend_headerColumnTextStyle(networkCopy, v112, v113, v114);
    objc_msgSend_setHeaderColumnTextStyle_(self, v116, v115, v117);

    v121 = objc_msgSend_footerRowTextStyle(networkCopy, v118, v119, v120);
    objc_msgSend_setFooterRowTextStyle_(self, v122, v121, v123);

    v127 = objc_msgSend_categoryLevel1TextStyle(networkCopy, v124, v125, v126);
    objc_msgSend_setCategoryLevel1TextStyle_(self, v128, v127, v129);

    v133 = objc_msgSend_categoryLevel2TextStyle(networkCopy, v130, v131, v132);
    objc_msgSend_setCategoryLevel2TextStyle_(self, v134, v133, v135);

    v139 = objc_msgSend_categoryLevel3TextStyle(networkCopy, v136, v137, v138);
    objc_msgSend_setCategoryLevel3TextStyle_(self, v140, v139, v141);

    v145 = objc_msgSend_categoryLevel4TextStyle(networkCopy, v142, v143, v144);
    objc_msgSend_setCategoryLevel4TextStyle_(self, v146, v145, v147);

    v151 = objc_msgSend_categoryLevel5TextStyle(networkCopy, v148, v149, v150);
    objc_msgSend_setCategoryLevel5TextStyle_(self, v152, v151, v153);

    v157 = objc_msgSend_labelLevel1TextStyle(networkCopy, v154, v155, v156);
    objc_msgSend_setLabelLevel1TextStyle_(self, v158, v157, v159);

    v163 = objc_msgSend_labelLevel2TextStyle(networkCopy, v160, v161, v162);
    objc_msgSend_setLabelLevel2TextStyle_(self, v164, v163, v165);

    v169 = objc_msgSend_labelLevel3TextStyle(networkCopy, v166, v167, v168);
    objc_msgSend_setLabelLevel3TextStyle_(self, v170, v169, v171);

    v175 = objc_msgSend_labelLevel4TextStyle(networkCopy, v172, v173, v174);
    objc_msgSend_setLabelLevel4TextStyle_(self, v176, v175, v177);

    v181 = objc_msgSend_labelLevel5TextStyle(networkCopy, v178, v179, v180);
    objc_msgSend_setLabelLevel5TextStyle_(self, v182, v181, v183);

    v187 = objc_msgSend_tableNameStyle(networkCopy, v184, v185, v186);
    objc_msgSend_setTableNameStyle_(self, v188, v187, v189);

    v193 = objc_msgSend_tableNameShapeStyle(networkCopy, v190, v191, v192);
    objc_msgSend_setTableNameShapeStyle_(self, v194, v193, v195);

    v199 = objc_msgSend_pivotBodySummaryRowCellStyle(networkCopy, v196, v197, v198);
    objc_msgSend_setPivotBodySummaryRowCellStyle_(self, v200, v199, v201);

    v205 = objc_msgSend_pivotBodySummaryColumnCellStyle(networkCopy, v202, v203, v204);
    objc_msgSend_setPivotBodySummaryColumnCellStyle_(self, v206, v205, v207);

    v211 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(networkCopy, v208, v209, v210);
    objc_msgSend_setPivotHeaderColumnSummaryCellStyle_(self, v212, v211, v213);
  }

  v214 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v10, v11, v12);
  v218 = objc_msgSend_designModeEnabled(v214, v215, v216, v217);

  if ((v218 & 1) == 0)
  {
    objc_msgSend_validateTableStylesInSameStylesheetExpectingDocSS_(self, v219, 0, v220);
  }
}

- (id)newCell
{
  v3 = [TSTCell alloc];
  v7 = objc_msgSend_objectLocale(self, v4, v5, v6);
  v10 = objc_msgSend_initWithLocale_(v3, v8, v7, v9);

  return v10;
}

- (id)newCellWithLocale:(id)locale
{
  v4 = [TSTCell alloc];

  return objc_msgSend_initWithLocale_(v4, v5, locale, v6);
}

- (TSTTableModel)initWithContext:(id)context tableUID:(TSKUIDStruct)d columnRowUIDMap:(id)map styles:(id)styles stylePreset:(id)preset tableInfo:(id)info
{
  upper = d._upper;
  lower = d._lower;
  contextCopy = context;
  mapCopy = map;
  stylesCopy = styles;
  presetCopy = preset;
  infoCopy = info;
  v38.receiver = self;
  v38.super_class = TSTTableModel;
  v22 = [(TSTTableModel *)&v38 initWithContext:contextCopy];
  if (v22)
  {
    v23 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v19, v20, v21);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22109B6E8;
    v28[3] = &unk_27845DBC0;
    v29 = v22;
    v36 = lower;
    v37 = upper;
    v30 = mapCopy;
    v31 = infoCopy;
    v32 = contextCopy;
    v33 = stylesCopy;
    v34 = presetCopy;
    v35 = v23;
    v24 = v23;
    objc_msgSend_performBlockIgnoringModifications_(v29, v25, v28, v26);
  }

  return v22;
}

- (TSTTableModel)initWithContext:(id)context rowUids:(const void *)uids columnUids:(const void *)columnUids styles:(id)styles stylePreset:(id)preset tableInfo:(id)info
{
  contextCopy = context;
  stylesCopy = styles;
  presetCopy = preset;
  infoCopy = info;
  v18 = TSKMakeUIDStructRandom();
  v20 = v19;
  v21 = [TSTColumnRowUIDMap alloc];
  v23 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v21, v22, contextCopy, columnUids, uids);
  v25 = objc_msgSend_initWithContext_tableUID_columnRowUIDMap_styles_stylePreset_tableInfo_(self, v24, contextCopy, v18, v20, v23, stylesCopy, presetCopy, infoCopy);

  return v25;
}

- (TSTTableModel)initWithContext:(id)context rows:(unsigned int)rows columns:(unsigned int)columns styles:(id)styles stylePreset:(id)preset tableInfo:(id)info
{
  v11 = *&columns;
  v12 = *&rows;
  contextCopy = context;
  stylesCopy = styles;
  presetCopy = preset;
  infoCopy = info;
  v17 = TSKMakeUIDStructRandom();
  v19 = v18;
  v20 = [TSTColumnRowUIDMap alloc];
  v24 = objc_msgSend_objectUUID(infoCopy, v21, v22, v23);
  v26 = objc_msgSend_initWithContext_tableUUID_numberOfRows_numberOfColumns_(v20, v25, contextCopy, v24, v12, v11);
  v28 = objc_msgSend_initWithContext_tableUID_columnRowUIDMap_styles_stylePreset_tableInfo_(self, v27, contextCopy, v17, v19, v26, stylesCopy, presetCopy, infoCopy);

  return v28;
}

- (TSTTableModel)initWithContext:(id)context fromSourceModel:(id)model region:(id)region tableInfo:(id)info waitForCalcEngine:(BOOL)engine formulaCoordSpace:(int64_t)space
{
  engineCopy = engine;
  contextCopy = context;
  modelCopy = model;
  regionCopy = region;
  infoCopy = info;
  v60 = modelCopy;
  objc_opt_class();
  v16 = TSUCheckedDynamicCast();
  v20 = objc_msgSend_range(v16, v17, v18, v19);
  v22 = objc_msgSend_regionByIntersectingRange_(regionCopy, v21, v20, v21);

  v77.origin = objc_msgSend_boundingCellRange(v22, v23, v24, v25);
  v77.size = v26;
  v28 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v26, v16, v27);
  if (objc_msgSend_isRectangle(v22, v29, v30, v31) && (v35 = objc_msgSend_range(v16, v32, v33, v34), v77.origin.row == v35))
  {
    v37 = ((*&v77.origin ^ v35) & 0x101FFFF00000000) == 0 && *&v77.size == v32;
    if (!engineCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37 = 0;
    if (!engineCopy)
    {
      goto LABEL_14;
    }
  }

  v38 = objc_msgSend_calcEngine(v16, v32, v33, v34);

  if (v38)
  {
    v39 = objc_msgSend_calcEngine(v16, v32, v33, v34);
    objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v39, v40, v41, v42, 0.2);
  }

LABEL_14:
  v43 = objc_msgSend_columnRowUIDMap(v16, v32, v33, v34);
  v44 = TSUCellRect::rows(&v77);
  if (v43)
  {
    objc_msgSend_rowUIDsForRowRange_(v43, v45, v44, v45);
  }

  else
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
  }

  v48 = objc_msgSend_columnRowUIDMap(v16, v45, v46, v47);
  v49 = TSUCellRect::columns(&v77);
  if (v48)
  {
    objc_msgSend_columnUIDsForColumnRange_(v48, v50, v49, v50);
  }

  else
  {
    __p = 0;
    v72 = 0;
    v73 = 0;
  }

  v53 = objc_msgSend_tableStylePreset(v16, v50, v51, v52);
  v55 = objc_msgSend_initWithContext_rowUids_columnUids_styles_stylePreset_tableInfo_(self, v54, contextCopy, &v74, &__p, v28, v53, infoCopy);

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v55)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_22109C3F8;
    v62[3] = &unk_27845DD00;
    v63 = v55;
    v64 = infoCopy;
    v65 = v16;
    v69 = v77;
    v70 = v37;
    v66 = v22;
    v67 = contextCopy;
    spaceCopy = space;
    objc_msgSend_performBlockIgnoringModifications_(v63, v56, v62, v57);
  }

  return v55;
}

- (id)initAsPivotDataWithContext:(id)context tableInfo:(id)info sourceModel:(id)model sourceBody:(id)body sourceHeader:(id)header
{
  contextCopy = context;
  infoCopy = info;
  modelCopy = model;
  bodyCopy = body;
  headerCopy = header;
  v146 = infoCopy;
  v145 = headerCopy;
  v19 = objc_msgSend_numberOfHeaderRows(modelCopy, v16, v17, v18);
  if (!headerCopy)
  {
    Index = 0;
    v31 = v19;
    if (bodyCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v23 = objc_msgSend_rows(headerCopy, v20, v21, v22);
  Index = TSUIndexSet::firstIndex(v23);
  v28 = objc_msgSend_rows(headerCopy, v25, v26, v27);
  v29 = TSUIndexSet::lastIndex(v28);
  v30 = v29 - Index + 1;
  if (v30 < 5)
  {
    v31 = v29 - Index + 1;
  }

  else
  {
    v31 = 5;
  }

  if (v30 > 5)
  {
    Index = v29 - 4;
  }

  if (!bodyCopy)
  {
LABEL_10:
    v161.origin = objc_msgSend_bodyRowRange(modelCopy, v20, v21, v22);
    v161.size = v32;
    v33 = [TSCECellTractRef alloc];
    v163._lower = objc_msgSend_tableUID(modelCopy, v34, v35, v36);
    v163._upper = v37;
    TSCERangeRef::TSCERangeRef(&v164, &v161, &v163);
    bodyCopy = objc_msgSend_initWithRangeRef_(v33, v38, &v164, v39);
    if (!bodyCopy)
    {
      v134 = TSUCellRect::description(&v161);
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Problem making sourceBodyRef with range: %@", "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 1216, v134);

      v135 = MEMORY[0x277D81150];
      v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v136, "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", v137);
      v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v140);
      v142 = TSUCellRect::description(&v161);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v143, v138, v141, 1216, 1, "Problem making sourceBodyRef with range: %@", v142);

      TSUCrashBreakpoint();
      abort();
    }
  }

LABEL_11:
  v40 = objc_msgSend_copy(bodyCopy, v20, v21, v22);
  v165.location = Index;
  v165.length = v31;
  TSUIndexRange::TSUIndexRange(&v164, v165);
  objc_msgSend_addRowRange_(v40, v41, &v164, v42);
  v161.origin = objc_msgSend_footerRowRange(modelCopy, v43, v44, v45);
  v161.size = v46;
  v47 = TSUCellRect::rows(&v161);
  v49 = v48;
  v166.location = v47;
  v166.length = v49;
  TSUIndexRange::TSUIndexRange(&v164, v166);
  objc_msgSend_removeRowRange_(v40, v50, &v164, v51);
  v152 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v52, modelCopy, v53);
  v57 = objc_msgSend_documentRoot(contextCopy, v54, v55, v56);
  v61 = objc_msgSend_calculationEngine(v57, v58, v59, v60);
  v144 = v31;

  v153 = v61;
  if (v61)
  {
    if (objc_msgSend_isRecalculationStarted(v61, v62, v63, v64) && (objc_msgSend_recalculationIsPaused(v61, v65, v66, v67) & 1) == 0)
    {
      objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v61, v65, v66, v67, 0.2);
    }
  }

  else
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", v64);
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v71);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 1232, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
  }

  v77 = objc_msgSend_columns(v40, v65, v66, v67);
  v150 = TSUIndexSet::asNSIndexSet(v77);
  v81 = objc_msgSend_rows(v40, v78, v79, v80);
  v149 = TSUIndexSet::asNSIndexSet(v81);
  v148 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v82, v150, v149);
  v86 = objc_msgSend_columns(bodyCopy, v83, v84, v85);
  v87 = TSUIndexSet::asNSIndexSet(v86);
  v91 = objc_msgSend_rows(bodyCopy, v88, v89, v90);
  v92 = TSUIndexSet::asNSIndexSet(v91);
  v147 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v93, v87, v92);

  v164.range._topLeft = objc_msgSend_tableUID(infoCopy, v94, v95, v96);
  v164.range._bottomRight = v97;
  v100 = sub_2212C4930(&v164, 0x64, v98, v99);
  v102 = v101;
  v103 = [TSTColumnRowUIDMap alloc];
  v107 = objc_msgSend_columnRowUIDMap(modelCopy, v104, v105, v106);
  v111 = v107;
  if (v107)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v107, v108, v150, v110);
  }

  else
  {
    memset(&v164, 0, 24);
  }

  v112 = objc_msgSend_columnRowUIDMap(modelCopy, v108, v109, v110);
  v115 = v112;
  if (v112)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v112, v113, v149, v114);
  }

  else
  {
    v161.origin = 0;
    v161.size = 0;
    v162 = 0;
  }

  v116 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v103, v113, contextCopy, &v164, &v161);
  if (v161.origin)
  {
    v161.size = v161.origin;
    operator delete(*&v161.origin);
  }

  if (v164.range._topLeft)
  {
    v164.range._bottomRight = v164.range._topLeft;
    operator delete(*&v164.range._topLeft);
  }

  v118 = objc_msgSend_initWithContext_tableUID_columnRowUIDMap_styles_stylePreset_tableInfo_(self, v117, contextCopy, v100, v102, v116, v152, 0, 0);
  v121 = v118;
  if (v118)
  {
    *(v118 + 180) = 1;
    if (*(v118 + 272))
    {
      v122 = MEMORY[0x277D81150];
      v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "[TSTTableModel initAsPivotDataWithContext:tableInfo:sourceModel:sourceBody:sourceHeader:]", v120);
      v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v125);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v127, v123, v126, 1257, 0, "expected nil value for '%{public}s'", "_tableStylePreset");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v129, v130);
    }

    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_22109E458;
    v154[3] = &unk_27845DD28;
    v155 = v121;
    v156 = modelCopy;
    v160 = v144;
    v157 = v148;
    v158 = v147;
    v159 = v153;
    objc_msgSend_performBlockIgnoringModifications_(v155, v131, v154, v132);
  }

  return v121;
}

- (void)dealloc
{
  objc_msgSend_dropAllTargets(self->_cellWillChangeDistributor, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = TSTTableModel;
  [(TSTTableModel *)&v5 dealloc];
}

- (void)p_upgradeDefaultCellStylesForStrokeSidecar
{
  v5 = objc_msgSend_bodyCellStyle(self, a2, v2, v3);
  v6 = sub_22109E74C(v5, v5);

  v10 = objc_msgSend_headerColumnCellStyle(self, v7, v8, v9);
  v11 = sub_22109E74C(v10, v10);

  v15 = objc_msgSend_headerRowCellStyle(self, v12, v13, v14);
  v16 = sub_22109E74C(v15, v15);

  v20 = objc_msgSend_footerRowCellStyle(self, v17, v18, v19);
  v21 = sub_22109E74C(v20, v20);

  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v22, &unk_2834A1640, v23);
}

- (void)resetForPivotingWithRowUids:(const void *)uids columnUids:(const void *)columnUids numberOfHeaderRows:(TSUModelRowIndex)rows numberOfHeaderColumns:(TSUModelColumnIndex)columns
{
  objc_msgSend_willModify(self, a2, uids, columnUids);
  objc_msgSend_replaceRowsWithUids_(self->_columnRowUIDMap, v11, uids, v12);
  objc_msgSend_replaceColumnsWithUids_(self->_columnRowUIDMap, v13, columnUids, v14);
  self->_numberOfHeaderRows = rows;
  self->_numberOfHeaderColumns = columns;
  objc_msgSend_clearAllMergeRanges(self->_mergeOwner, v15, v16, v17);
  objc_msgSend_updateCalcEngineForTableSize(self, v18, v19, v20);
  v24 = objc_msgSend_calcEngine(self, v21, v22, v23);
  v49 = objc_msgSend_tableUID(self, v25, v26, v27);
  v50 = v28;
  objc_msgSend_removeAllFormulasFromOwner_(v24, v28, &v49, v29);

  v33 = objc_msgSend_calcEngine(self, v30, v31, v32);
  v37 = objc_msgSend_conditionalStyleFormulaOwner(self, v34, v35, v36);
  v49 = objc_msgSend_ownerUID(v37, v38, v39, v40);
  v50 = v41;
  objc_msgSend_removeAllFormulasFromOwner_(v33, v41, &v49, v42);

  objc_msgSend_resetAlmostEverything(self->_dataStore, v43, v44, v45);
  objc_msgSend_resetAllColumnRowSizes(self->_dataStore, v46, v47, v48);
}

- (void)updateMergesAndCellsAsPivotDataWithSourceModel:(id)model
{
  modelCopy = model;
  v7 = objc_msgSend_range(modelCopy, v4, v5, v6);
  v9 = objc_msgSend_regionFromRange_(TSTCellRegion, v8, v7, v8);
  v13 = objc_msgSend_bodyRowRange(modelCopy, v10, v11, v12);
  v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, v13, v14);
  objc_msgSend_p_updateMergesAndCellsAsPivotDataWithSourceModel_sourceRegion_sourceBodyRegion_(self, v16, modelCopy, v9, v15);
}

- (BOOL)hasUsefulPivotDataInSourceBodyTract:(id)tract
{
  tractCopy = tract;
  v8 = tractCopy;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (tractCopy)
  {
    v9 = objc_msgSend_columns(tractCopy, v5, v6, v7);
    v10 = TSUIndexSet::asNSIndexSet(v9);
    v14 = objc_msgSend_rows(v8, v11, v12, v13);
    v15 = TSUIndexSet::asNSIndexSet(v14);
    v17 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v16, v10, v15);
  }

  else
  {
    v18 = objc_msgSend_bodyRowRange(self, v5, v6, v7);
    v17 = objc_msgSend_regionFromRange_(TSTCellRegion, v19, v18, v19);
  }

  v20 = [TSTCellIterator alloc];
  v24 = objc_msgSend_range(self, v21, v22, v23);
  v26 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_baseClampingRange_(v20, v25, self, v17, 34, 0x2000000, v24, v25);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22109EBF4;
  v31[3] = &unk_27845DD70;
  v31[4] = &v32;
  objc_msgSend_iterateCellsUsingBlock_(v26, v27, v31, v28);
  v29 = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  return v29;
}

- (void)copyPivotDetailDataFromSourceModel:(id)model inSourceRegion:(id)region columnMapping:(id)mapping rowMapping:(id)rowMapping
{
  modelCopy = model;
  regionCopy = region;
  mappingCopy = mapping;
  rowMappingCopy = rowMapping;
  v17 = rowMappingCopy;
  v45 = modelCopy;
  if (!mappingCopy)
  {
    v18 = 0;
    if (rowMappingCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  v18 = objc_msgSend_isIdentityMapping(mappingCopy, v14, v15, v16, modelCopy) ^ 1;
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = objc_msgSend_isIdentityMapping(v17, v14, v15, v16, v45) ^ 1;
LABEL_6:
  v20 = [TSTCellMap alloc];
  v24 = objc_msgSend_context(self, v21, v22, v23);
  v26 = objc_msgSend_initWithContext_uidBased_(v20, v25, v24, 0);

  v27 = [TSTConcurrentCellIterator alloc];
  v29 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_(v27, v28, modelCopy, regionCopy, 0, 66058240);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_22109EF40;
  v54[3] = &unk_27845DD98;
  v54[4] = self;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_22109EFBC;
  v49[3] = &unk_27845DDC0;
  v52 = v18;
  v30 = mappingCopy;
  v50 = v30;
  v53 = v19;
  v31 = v17;
  v51 = v31;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_22109F0E0;
  v47[3] = &unk_27845DDE8;
  v32 = v26;
  v48 = v32;
  objc_msgSend_enumerateModelConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v29, v33, v54, v49, v47);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_22109F200;
  v46[3] = &unk_27845DE10;
  v46[4] = self;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(v32, v34, v46, v35);
  v39 = objc_msgSend_calcEngine(self, v36, v37, v38);
  v43 = objc_msgSend_tableUID(self, v40, v41, v42);
  objc_msgSend_markOwnerAsDirty_(v39, v44, v43, v44);
}

+ (int64_t)dateGroupingTypeForMinMaxDatePair:(id)pair
{
  pairCopy = pair;
  v7 = objc_msgSend_first(pairCopy, v4, v5, v6);
  v11 = objc_msgSend_second(pairCopy, v8, v9, v10);
  objc_msgSend_timeIntervalSinceDate_(v11, v12, v7, v13);
  v18 = vcvtmd_s64_f64(v17 / 86400.0);
  if (v18 <= 365)
  {
    if (v18 <= 31)
    {
      if (v18 >= 28)
      {
        v20 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v14, v15, v16);
        v22 = objc_msgSend_components_fromDate_(v20, v21, 28, v7);

        v26 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v23, v24, v25);
        v28 = objc_msgSend_components_fromDate_(v26, v27, 28, v11);

        v32 = objc_msgSend_month(v22, v29, v30, v31);
        if (v32 == objc_msgSend_month(v28, v33, v34, v35) || (v39 = objc_msgSend_day(v22, v36, v37, v38), v39 >= objc_msgSend_day(v28, v40, v41, v42)))
        {
          v19 = 4;
        }

        else
        {
          v19 = 2;
        }
      }

      else
      {
        v19 = 4;
      }
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (unsigned)pivotDataCellValueTypeForColumn:(TSUModelColumnIndex)column
{
  begin = self->_pivotValueTypesByColumn.__begin_;
  if ((self->_pivotValueTypesByColumn.__end_ - begin) <= column._column)
  {
    return 0;
  }

  else
  {
    return begin[column._column];
  }
}

- (void)p_rebuildTheTable
{
  v3 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_context(self, v4, v5, v6);
  if ((objc_msgSend_isReadCancelled(v7, v8, v9, v10) & 1) == 0)
  {
    if (self->_numberOfHeaderRows._row >= 7)
    {
      self->_numberOfHeaderRows._row = 0;
    }

    if (self->_numberOfFooterRows._row >= 7)
    {
      self->_numberOfFooterRows._row = 0;
    }

    if (self->_numberOfHeaderColumns._column >= 7u)
    {
      self->_numberOfHeaderColumns._column = 0;
    }

    if (!objc_msgSend_numberOfRows(self->_columnRowUIDMap, v11, v12, v13))
    {
      objc_msgSend_insertNewRowsInIndexRange_(self->_columnRowUIDMap, v14, 0, self->_numberOfHeaderRows._row + self->_numberOfFooterRows._row + 1);
    }

    if (!objc_msgSend_numberOfColumns(self->_columnRowUIDMap, v14, v15, v16))
    {
      objc_msgSend_insertNewColumnsInIndexRange_(self->_columnRowUIDMap, v17, 0, (self->_numberOfHeaderColumns._column + 1));
    }

    objc_msgSend_updateCalcEngineForTableSize(self, v17, v18, v19);
    v20 = objc_alloc_init(MEMORY[0x277D80888]);
    v21 = objc_alloc(MEMORY[0x277D80878]);
    v24 = objc_msgSend_initWithDelegate_(v21, v22, v20, v23);
    v27 = objc_msgSend_cellMapWithContext_(TSTCellMap, v25, v24, v26);
    v77.origin = objc_msgSend_range(self, v28, v29, v30);
    v77.size = v31;
    v32 = TSUCellRect::bottomRight(&v77);
    v77.origin = 0;
    v77.size = &v77;
    v78 = 0x3032000000;
    v79 = sub_22109F7B4;
    v80 = sub_22109F7C4;
    v36 = objc_msgSend_newCell(self, v33, v34, v35);
    dataStore = self->_dataStore;
    v81 = v36;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_22109F7CC;
    v74[3] = &unk_27845DE38;
    v76 = &v77;
    v74[4] = self;
    v38 = v27;
    v75 = v38;
    objc_msgSend_enumerateCellStoragesRowByRowToMaxID_withBlock_(dataStore, v39, v32, v74);
    objc_msgSend_clearDataListIDs(v38, v40, v41, v42);
    if ((objc_msgSend_isReadCancelled(v7, v43, v44, v45) & 1) == 0)
    {
      v49 = objc_msgSend_calcEngine(self, v46, v47, v48);
      v72 = objc_msgSend_tableUID(self, v50, v51, v52);
      v73 = v53;
      objc_msgSend_removeAllFormulasFromOwner_(v49, v53, &v72, v54);

      v58 = objc_msgSend_calcEngine(self, v55, v56, v57);
      v62 = objc_msgSend_conditionalStyleFormulaOwner(self, v59, v60, v61);
      v72 = objc_msgSend_ownerUID(v62, v63, v64, v65);
      v73 = v66;
      objc_msgSend_removeAllFormulasFromOwner_(v58, v66, &v72, v67);

      objc_msgSend_resetAlmostEverything(self->_dataStore, v68, v69, v70);
      objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self, v71, v38, 0, 0);
    }

    _Block_object_dispose(&v77, 8);
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)p_auditTilesForRowOverlapAndExtensionPastTableBoundsWithVersion:(unint64_t)version
{
  v15.origin = objc_msgSend_range(self, a2, version, v3);
  v15.size = v6;
  if (TSUCellRect::numColumns(&v15) && TSUCellRect::numRows(&v15))
  {
    v7 = TSUCellRect::bottomRight(&v15);
    dataStore = self->_dataStore;
    v14 = 0;
    v10 = objc_msgSend_auditTilesForRowOverlapAndExtensionPastTableBounds_result_(dataStore, v9, v7, &v14);
    v11 = v14;
    objc_msgSend_logTableTileAuditStatus_withVersion_(self, v12, v10, version);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)p_auditTableHealthUpgradingFromVersion:(unint64_t)version
{
  if (objc_msgSend_p_auditTilesForRowOverlapAndExtensionPastTableBoundsWithVersion_(self, a2, version, v3) && (v8 = self->_dataStore, v22 = 0, objc_msgSend_auditDatalistDuplicationReturningResult_(v8, v5, &v22, v7)))
  {
    dataStore = self->_dataStore;
    v21 = 0;
    hasUndercounts = objc_msgSend_auditColumnRowCellCountsReturningResult_hasUndercounts_(dataStore, v5, &v21, 0);
  }

  else
  {
    hasUndercounts = 0;
  }

  v11 = objc_msgSend_context(self, v5, v6, v7);
  Cancelled = objc_msgSend_isReadCancelled(v11, v12, v13, v14);

  if (!(Cancelled & 1 | ((hasUndercounts & 1) == 0)))
  {
    v18 = self->_dataStore;
    v20 = 0;
    return objc_msgSend_confirmRefCountsReturningResult_(v18, v16, &v20, v17);
  }

  return hasUndercounts;
}

- (void)upgradeDuringDocumentUpgradeIfNeeded:(unint64_t)needed
{
  v504 = objc_msgSend_context(self, a2, needed, v3);
  if ((objc_msgSend_isReadCancelled(v504, v5, v6, v7) & 1) == 0)
  {
    objc_msgSend_setUpgrading_(self->_dataStore, v8, 1, v9);
    v502 = objc_msgSend_tableInfo(self, v10, v11, v12);
    if (!v502 && (objc_msgSend_isAPivotDataModel(self, v13, v14, v15) & 1) == 0)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v15);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 2060, 0, "A tableModel with no tableInfo is only allowed for a pivot data model.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    objc_msgSend_loadAllLazyReferences(self->_dataStore, v13, v14, v15);
    v28 = objc_msgSend_documentRoot(self, v25, v26, v27);
    v503 = objc_msgSend_calculationEngine(v28, v29, v30, v31);

    objc_msgSend_upgradeDataStoreCellStorageIfNeededWithTableUID_conditionalStyleOwner_fileFormatVersion_(self->_dataStore, v32, &self->_tableUID, self->_conditionalStyleFormulaOwner, needed);
    if (needed - 0x4000100000000 <= 0x100000001)
    {
      objc_msgSend_repairStyleDatalistStylesheetIfNecessary(self->_dataStore, v33, v34, v35);
    }

    if (objc_msgSend_isReadCancelled(v504, v33, v34, v35))
    {
      goto LABEL_129;
    }

    if (UnsafePointer() > needed)
    {
      if ((objc_msgSend_p_auditTableHealthUpgradingFromVersion_(self, v36, needed, v38) & 1) == 0)
      {
        objc_msgSend_p_rebuildTheTable(self, v39, v40, v41);
      }

      if ((objc_msgSend_shouldUseWideRows(self->_dataStore, v39, v40, v41) & 1) == 0 && objc_msgSend_tableSizeClass(self, v36, v37, v38) >= 2)
      {
        objc_msgSend_setShouldUseWideRows_(self->_dataStore, v36, 1, v38);
      }
    }

    if (objc_msgSend_isReadCancelled(v504, v36, v37, v38))
    {
      goto LABEL_129;
    }

    if (!self->_strokeSidecar)
    {
      objc_msgSend_willModifyForUpgrade(self, v42, v43, v44);
      objc_msgSend_p_upgradeDefaultCellStylesForStrokeSidecar(self, v57, v58, v59);
      if (v502)
      {
        if ((objc_msgSend_isCategorized(v502, v42, v43, v44) & 1) == 0)
        {
          v60 = [TSTStrokeSidecar alloc];
          v63 = objc_msgSend_initForUpgradeWithTableModel_(v60, v61, self, v62);
          strokeSidecar = self->_strokeSidecar;
          self->_strokeSidecar = v63;
        }
      }
    }

    v538 = 0;
    v539 = &v538;
    v540 = 0x2020000000;
    v541 = objc_msgSend_numberOfPopulatedCells(self, v42, v43, v44);
    v48 = *MEMORY[0x277D80968];
    if (*MEMORY[0x277D80968] > needed)
    {
      objc_msgSend_willModifyForUpgrade(self, v45, v46, v47);
      v52 = objc_msgSend_mergeOwner(self, v49, v50, v51);
      v56 = v52;
      if (v52)
      {
        objc_msgSend_mergeRanges(v52, v53, v54, v55);
      }

      else
      {
        memset(&__p, 0, 24);
      }

      v68 = objc_msgSend_hiddenStatesOwner(self, v65, v66, v67);
      v72 = objc_msgSend_hiddenStates(v68, v69, v70, v71);

      var0 = __p.var0;
      if (__p.var0 != __p.var1)
      {
        v76 = 0x277CCA000uLL;
        do
        {
          v78 = *var0;
          v77 = var0[1];
          if (v77 >> 33)
          {
            if (!v72)
            {
              v79 = MEMORY[0x277D81150];
              v80 = objc_msgSend_stringWithUTF8String_(*(v76 + 3240), v73, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v74);
              v83 = objc_msgSend_stringWithUTF8String_(*(v76 + 3240), v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v82);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v84, v80, v83, 2129, 0, "invalid nil value for '%{public}s'", "hiddenStates");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87);
              v76 = 0x277CCA000uLL;
            }

            v88 = objc_msgSend_indexesOfUserHiddenRowsInCellRange_(v72, v73, v78, v77);
            v536[0] = MEMORY[0x277D85DD0];
            v536[1] = 3221225472;
            v536[2] = sub_2210A124C;
            v536[3] = &unk_27845DE60;
            v536[4] = self;
            v537 = v72;
            objc_msgSend_enumerateIndexesUsingBlock_(v88, v89, v536, v90);
          }

          if ((v77 & 0xFFFFFFFE) != 0)
          {
            if (!v72)
            {
              v91 = MEMORY[0x277D81150];
              v92 = objc_msgSend_stringWithUTF8String_(*(v76 + 3240), v73, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v74);
              v95 = objc_msgSend_stringWithUTF8String_(*(v76 + 3240), v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v94);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v96, v92, v95, 2137, 0, "invalid nil value for '%{public}s'", "hiddenStates");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99);
              v76 = 0x277CCA000;
            }

            v100 = objc_msgSend_indexesOfUserHiddenColumnsInCellRange_(v72, v73, v78, v77);
            v534[0] = MEMORY[0x277D85DD0];
            v534[1] = 3221225472;
            v534[2] = sub_2210A1294;
            v534[3] = &unk_27845DE60;
            v534[4] = self;
            v535 = v72;
            objc_msgSend_enumerateIndexesUsingBlock_(v100, v101, v534, v102);
          }

          var0 += 2;
        }

        while (var0 != __p.var1);
      }

      if (__p.var0)
      {
        __p.var1 = __p.var0;
        operator delete(__p.var0);
      }
    }

    if (needed < 0x2000100000004)
    {
      dataStore = self->_dataStore;
      __p.var0 = objc_msgSend_tableUID(self, v45, v46, v47);
      __p.var1 = v104;
      objc_msgSend_upgradeConditionalStylesToLinkedRefWithTableUID_(dataStore, v104, &__p, v105);
    }

    if (objc_msgSend_isReadCancelled(v504, v45, v46, v47))
    {
LABEL_128:
      _Block_object_dispose(&v538, 8);
LABEL_129:

      goto LABEL_130;
    }

    if (*MEMORY[0x277D808D0] <= needed || objc_msgSend_archivingCompatibilityVersion(self, v106, v107, v108) <= 0xA000000000002)
    {
      objc_msgSend_purgePreBNCDatalists(self->_dataStore, v106, v107, v108);
    }

    else
    {
      objc_msgSend_embiggenTableForUpgrade(self->_dataStore, v106, v107, v108);
    }

    if (needed < 0xC000200000008)
    {
      objc_msgSend_updateCommentsWhenAddingTable(self, v109, v110, v111);
    }

    v524 = 0;
    v525 = &v524;
    v526 = 0x5812000000;
    v527 = sub_2210A12DC;
    v528 = sub_2210A12E8;
    v529 = &unk_22188E88F;
    v533[0] = 0;
    v533[1] = 0;
    v530 = 0;
    v531 = 0;
    v532 = v533;
    if (needed >= 0xF000000000001)
    {
      goto LABEL_108;
    }

    objc_msgSend_willModifyForUpgrade(self, v109, v110, v111);
    v115 = objc_msgSend_documentRoot(self, v112, v113, v114);
    v119 = objc_msgSend_stylesheet(v115, v116, v117, v118);

    v123 = objc_msgSend_range(self, v120, v121, v122);
    v125 = objc_msgSend_regionFromRange_(TSTCellRegion, v124, v123, v124);
    v126 = v125;
    if (!v125)
    {
LABEL_72:

      if (needed <= 0x300020000000ALL)
      {
        if (!self->_categoryLevel1CellStyle || !self->_categoryLevel2CellStyle || !self->_categoryLevel3CellStyle || !self->_categoryLevel4CellStyle || !self->_categoryLevel5CellStyle || !self->_labelLevel1CellStyle || !self->_labelLevel2CellStyle || !self->_labelLevel3CellStyle || !self->_labelLevel4CellStyle || !self->_labelLevel5CellStyle || !self->_categoryLevel1TextStyle || !self->_categoryLevel2TextStyle || !self->_categoryLevel3TextStyle || !self->_categoryLevel4TextStyle || !self->_categoryLevel5TextStyle || !self->_labelLevel1TextStyle || !self->_labelLevel2TextStyle || !self->_labelLevel3TextStyle || !self->_labelLevel4TextStyle || !self->_labelLevel5TextStyle)
        {
          objc_msgSend_willModifyForUpgrade(self, v109, v110, v111);
          v311 = objc_msgSend_tableStylePreset(self, v308, v309, v310);
          v315 = objc_msgSend_styleNetwork(v311, v312, v313, v314);

          if (!v315)
          {
            v315 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v316, self, v318);
            objc_msgSend_generateCategoryStylesConnectedToStylesheet_(v315, v319, 1, v320);
          }

          v321 = objc_msgSend_categoryLevel1CellStyle(v315, v316, v317, v318);
          categoryLevel1CellStyle = self->_categoryLevel1CellStyle;
          self->_categoryLevel1CellStyle = v321;

          v326 = objc_msgSend_categoryLevel2CellStyle(v315, v323, v324, v325);
          categoryLevel2CellStyle = self->_categoryLevel2CellStyle;
          self->_categoryLevel2CellStyle = v326;

          v331 = objc_msgSend_categoryLevel3CellStyle(v315, v328, v329, v330);
          categoryLevel3CellStyle = self->_categoryLevel3CellStyle;
          self->_categoryLevel3CellStyle = v331;

          v336 = objc_msgSend_categoryLevel4CellStyle(v315, v333, v334, v335);
          categoryLevel4CellStyle = self->_categoryLevel4CellStyle;
          self->_categoryLevel4CellStyle = v336;

          v341 = objc_msgSend_categoryLevel5CellStyle(v315, v338, v339, v340);
          categoryLevel5CellStyle = self->_categoryLevel5CellStyle;
          self->_categoryLevel5CellStyle = v341;

          v346 = objc_msgSend_labelLevel1CellStyle(v315, v343, v344, v345);
          labelLevel1CellStyle = self->_labelLevel1CellStyle;
          self->_labelLevel1CellStyle = v346;

          v351 = objc_msgSend_labelLevel2CellStyle(v315, v348, v349, v350);
          labelLevel2CellStyle = self->_labelLevel2CellStyle;
          self->_labelLevel2CellStyle = v351;

          v356 = objc_msgSend_labelLevel3CellStyle(v315, v353, v354, v355);
          labelLevel3CellStyle = self->_labelLevel3CellStyle;
          self->_labelLevel3CellStyle = v356;

          v361 = objc_msgSend_labelLevel4CellStyle(v315, v358, v359, v360);
          labelLevel4CellStyle = self->_labelLevel4CellStyle;
          self->_labelLevel4CellStyle = v361;

          v366 = objc_msgSend_labelLevel5CellStyle(v315, v363, v364, v365);
          labelLevel5CellStyle = self->_labelLevel5CellStyle;
          self->_labelLevel5CellStyle = v366;

          v371 = objc_msgSend_categoryLevel1TextStyle(v315, v368, v369, v370);
          categoryLevel1TextStyle = self->_categoryLevel1TextStyle;
          self->_categoryLevel1TextStyle = v371;

          v376 = objc_msgSend_categoryLevel2TextStyle(v315, v373, v374, v375);
          categoryLevel2TextStyle = self->_categoryLevel2TextStyle;
          self->_categoryLevel2TextStyle = v376;

          v381 = objc_msgSend_categoryLevel3TextStyle(v315, v378, v379, v380);
          categoryLevel3TextStyle = self->_categoryLevel3TextStyle;
          self->_categoryLevel3TextStyle = v381;

          v386 = objc_msgSend_categoryLevel4TextStyle(v315, v383, v384, v385);
          categoryLevel4TextStyle = self->_categoryLevel4TextStyle;
          self->_categoryLevel4TextStyle = v386;

          v391 = objc_msgSend_categoryLevel5TextStyle(v315, v388, v389, v390);
          categoryLevel5TextStyle = self->_categoryLevel5TextStyle;
          self->_categoryLevel5TextStyle = v391;

          v396 = objc_msgSend_labelLevel1TextStyle(v315, v393, v394, v395);
          labelLevel1TextStyle = self->_labelLevel1TextStyle;
          self->_labelLevel1TextStyle = v396;

          v401 = objc_msgSend_labelLevel2TextStyle(v315, v398, v399, v400);
          labelLevel2TextStyle = self->_labelLevel2TextStyle;
          self->_labelLevel2TextStyle = v401;

          v406 = objc_msgSend_labelLevel3TextStyle(v315, v403, v404, v405);
          labelLevel3TextStyle = self->_labelLevel3TextStyle;
          self->_labelLevel3TextStyle = v406;

          v411 = objc_msgSend_labelLevel4TextStyle(v315, v408, v409, v410);
          labelLevel4TextStyle = self->_labelLevel4TextStyle;
          self->_labelLevel4TextStyle = v411;

          v416 = objc_msgSend_labelLevel5TextStyle(v315, v413, v414, v415);
          labelLevel5TextStyle = self->_labelLevel5TextStyle;
          self->_labelLevel5TextStyle = v416;
        }

LABEL_105:
        v439 = objc_msgSend_groupBy(v502, v109, v110, v111);
        objc_msgSend_upgradeForNewAggregateTypes_(v439, v440, v503, v441);

        v445 = objc_msgSend_tableStylePreset(self, v442, v443, v444);
        v449 = objc_msgSend_styleNetwork(v445, v446, v447, v448);

        if (!v449)
        {
          v449 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v450, self, v452);
          objc_msgSend_generatePivotStylesConnectedToStylesheet_(v449, v453, 1, v454);
        }

        v455 = objc_msgSend_pivotBodySummaryRowCellStyle(v449, v450, v451, v452);
        pivotBodySummaryRowCellStyle = self->_pivotBodySummaryRowCellStyle;
        self->_pivotBodySummaryRowCellStyle = v455;

        v460 = objc_msgSend_pivotBodySummaryColumnCellStyle(v449, v457, v458, v459);
        pivotBodySummaryColumnCellStyle = self->_pivotBodySummaryColumnCellStyle;
        self->_pivotBodySummaryColumnCellStyle = v460;

        v465 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(v449, v462, v463, v464);
        pivotHeaderColumnSummaryCellStyle = self->_pivotHeaderColumnSummaryCellStyle;
        self->_pivotHeaderColumnSummaryCellStyle = v465;

        goto LABEL_108;
      }

      if (needed <= 0x4000000000000)
      {
        v418 = objc_msgSend_documentRoot(self, v109, v110, v111);
        v422 = objc_msgSend_stylesheet(v418, v419, v420, v421);

        for (i = 5; i != 15; ++i)
        {
          v426 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v423, i, v424);
          v430 = objc_msgSend_stylesheet(v426, v427, v428, v429);

          if (!v430)
          {
            objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(v422, v431, v426, 0, 0, 0);
          }

          v433 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v431, i, v432);
          v437 = objc_msgSend_stylesheet(v433, v434, v435, v436);

          if (!v437)
          {
            objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(v422, v438, v433, 0, 0, 0);
          }
        }
      }

      if (needed < 0xB000200000006)
      {
        goto LABEL_105;
      }

LABEL_108:
      if (v502)
      {
        v467 = objc_msgSend_isAPivotTable(v502, v109, v110, v111) ^ 1;
        if (needed <= 0xB000200000005)
        {
          LOBYTE(v467) = 1;
        }

        if ((v467 & 1) == 0)
        {
          if (needed < 0xB000200000008)
          {
            v468 = objc_msgSend_pivotOwner(v502, v109, v110, v111);
            objc_msgSend_upgradeSourceTractsForHostCellChange(v468, v469, v470, v471);
LABEL_121:

            goto LABEL_123;
          }

          if (needed <= 0xC0000FFFFFFFFLL)
          {
            v468 = objc_msgSend_pivotOwner(v502, v109, v110, v111);
            objc_msgSend_upgradeSourceTractsForAbsoluteRefs(v468, v476, v477, v478);
            goto LABEL_121;
          }

LABEL_122:
          if (needed > 0xD0001FFFFFFFFLL)
          {
            if (needed >= 0xE000400000001)
            {
              goto LABEL_125;
            }

            goto LABEL_124;
          }

LABEL_123:
          v479 = objc_msgSend_categoryOwner(self, v109, v110, v111);
          objc_msgSend_rebuildAllAggFormulas(v479, v480, v481, v482);

LABEL_124:
          objc_msgSend_markAllErrorsAsDirty(v503, v109, v110, v111);
          v483 = v525;
          __p.var0 = objc_msgSend_tableUID(self, v484, v485, v486);
          __p.var1 = v487;
          objc_msgSend_markCoordsDirty_inOwner_(v503, v487, (v483 + 6), &__p);
LABEL_125:
          v488 = objc_msgSend_numberOfPopulatedCells(self, v109, v110, v111);
          if (v488 != v539[3])
          {
            v491 = MEMORY[0x277D81150];
            v492 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v489, "[TSTTableModel upgradeDuringDocumentUpgradeIfNeeded:]", v490);
            v495 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v493, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v494);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v491, v496, v492, v495, 2859, 0, "Expected to keep all the cells.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v497, v498, v499);
          }

          objc_msgSend_setUpgrading_(self->_dataStore, v489, 0, v490);
          _Block_object_dispose(&v524, 8);
          sub_22107C860(&v532, v533[0]);
          goto LABEL_128;
        }
      }

      if (needed >= 0x4000200000002)
      {
        if (needed >= 0xA000000000006)
        {
          goto LABEL_122;
        }
      }

      else
      {
        objc_msgSend_updateCalcEngineForTableSize(self, v109, v110, v111);
        objc_msgSend_scheduleRepairingSpanningFormulasInOwner_(v503, v472, &self->_tableUID, v473);
      }

      if (objc_msgSend_tableSizeClass(self, v109, v110, v111) >= 2)
      {
        __p.var0 = objc_msgSend_tableUID(self, v109, v110, v111);
        __p.var1 = v474;
        objc_msgSend_endTrackingNamesInTableForLegacyNRM_(v503, v474, &__p, v475);
      }

      goto LABEL_123;
    }

    v500 = v119;
    v501 = v125;
    v127 = [TSCEFunctionsInUse alloc];
    v130 = objc_msgSend_initWithCalcEngine_(v127, v128, v503, v129);
    v523[0] = 0;
    v523[1] = 0;
    v520 = 0;
    v521 = 0;
    v522 = v523;
    v518.coordinate = 0;
    v518._tableUID._lower = objc_msgSend_tableUID(self, v131, v132, v133);
    v518._tableUID._upper = v134;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&__p, v503, &v518);
    v138 = 688128;
    if (v48 <= needed)
    {
      v138 = 0x20000;
    }

    if (needed < 0x2000200000003)
    {
      v138 = 66041856;
    }

    v139 = 4341760;
    if (needed >= 0x4000100000003)
    {
      v139 = 0x4000;
    }

    v140 = v138 | v139;
    if (needed < 0xA000000000003)
    {
      v141 = objc_msgSend_headerNameMgr(v503, v135, v136, v137);
      v518.coordinate = objc_msgSend_NRM_formulaOwnerUID(v141, v142, v143, v144);
      v518._tableUID._lower = v145;
      objc_msgSend_removeAllFormulasFromOwner_(v503, v145, &v518, v146);
      v140 |= 0x22000uLL;
    }

    if (needed < 0x4000200000001)
    {
      v140 |= 0x8000uLL;
    }

    v147 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v135, v136, v137);
    v151 = objc_msgSend_supportsControlCells(v147, v148, v149, v150);

    objc_msgSend_registerOwners(v503, v152, v153, v154);
    v510[0] = MEMORY[0x277D85DD0];
    v510[1] = 3221225472;
    v510[2] = sub_2210A12F4;
    v510[3] = &unk_27845DEB0;
    neededCopy = needed;
    v510[4] = self;
    v517 = v151;
    v511 = v119;
    v516 = 0xF000000000001;
    v155 = v130;
    v512 = v155;
    v514 = &v524;
    v513 = v503;
    v156 = MEMORY[0x223DA1C10](v510);
    v157 = [TSTConcurrentCellMap alloc];
    v159 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v157, v158, 0, 1, 0);
    v160 = [TSTConcurrentCellIterator alloc];
    v162 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_(v160, v161, self, v501, 2, v140 | 0x20000);
    v509[0] = MEMORY[0x277D85DD0];
    v509[1] = 3221225472;
    v509[2] = sub_2210A1C50;
    v509[3] = &unk_27845DED8;
    v509[4] = self;
    v506[0] = MEMORY[0x277D85DD0];
    v506[1] = 3221225472;
    v506[2] = sub_2210A1CD8;
    v506[3] = &unk_27845DF00;
    v163 = v159;
    v507 = v163;
    v508 = &v538;
    objc_msgSend_enumerateModelConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v162, v164, v509, v156, v506);
    if (objc_msgSend_hasCells(v163, v165, v166, v167))
    {
      objc_msgSend_willApplyToTableModel_(v163, v168, self, v169);
      objc_msgSend_prepareToApplyConcurrentCellMap_(self, v170, v163, v171);
      objc_msgSend_accumulateCurrentCellsConcurrently_(self, v172, v163, v173);
      objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v174, v163, 0, 0, 0);
      objc_msgSend_didApplyConcurrentCellMap_(self, v175, v163, v176);
      objc_msgSend_validate(self, v177, v178, v179);
    }

    if (needed >= 0x2000100000007)
    {
      if (needed > 0x20003FFFFFFFFLL)
      {
        if (needed >= 0x4000100000005)
        {
          if (needed > 0xA000100000004)
          {
            if (needed >= 0xC000200000000)
            {
              if (needed > 0xD000100000000)
              {
                if (needed >= 0xE000400000001)
                {
                  goto LABEL_71;
                }

LABEL_67:
                objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 337, v181);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v242, 339, v243);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v244, 340, v245);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v246, 338, v247);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v248, 341, v249);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v250, 342, v251);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v252, 343, v253);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v254, 344, v255);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v256, 345, v257);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v258, 346, v259);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v260, 347, v261);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v262, 348, v263);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v264, 349, v265);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v266, 350, v267);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v268, 351, v269);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v270, 352, v271);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v272, 353, v273);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v274, 354, v275);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v276, 355, v277);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v278, 356, v279);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v280, 357, v281);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v282, 358, v283);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v284, 359, v285);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v286, 360, v287);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v288, 361, v289);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v290, 362, v291);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v292, 373, v293);
                if (needed > 0xE000100000000)
                {
                  if (needed > 0xE000200000001)
                  {
LABEL_71:
                    objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 179, v181);
                    objc_msgSend_dirtyCellsUsingFunction_(v155, v296, 180, v297);
                    objc_msgSend_dirtyCellsUsingFunction_(v155, v298, 181, v299);
                    objc_msgSend_dirtyCellsUsingFunction_(v155, v300, 182, v301);
                    objc_msgSend_dirtyCellsUsingFunction_(v155, v302, 183, v303);
                    objc_msgSend_dirtyCellsUsingFunction_(v155, v304, 184, v305);
                    objc_msgSend_dirtyCellsUsingFunction_(v155, v306, 204, v307);
                    sub_22107C860(&v522, v523[0]);

                    v119 = v500;
                    v126 = v501;
                    goto LABEL_72;
                  }
                }

                else
                {
                  objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 6, v181);
                }

                objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 23, v181);
                objc_msgSend_dirtyCellsUsingFunction_(v155, v294, 130, v295);
                goto LABEL_71;
              }

LABEL_66:
              objc_msgSend_resetCellsUsingFunction_(v155, v180, 285, v181);
              goto LABEL_67;
            }

LABEL_65:
            objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 328, v181);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v226, 329, v227);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v228, 330, v229);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v230, 331, v231);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v232, 332, v233);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v234, 333, v235);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v236, 334, v237);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v238, 335, v239);
            objc_msgSend_dirtyCellsUsingFunction_(v155, v240, 336, v241);
            goto LABEL_66;
          }

LABEL_64:
          objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 323, v181);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v190, 313, v191);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v192, 306, v193);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v194, 304, v195);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v196, 305, v197);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v198, 309, v199);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v200, 310, v201);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v202, 316, v203);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v204, 311, v205);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v206, 314, v207);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v208, 315, v209);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v210, 312, v211);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v212, 317, v213);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v214, 321, v215);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v216, 324, v217);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v218, 322, v219);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v220, 320, v221);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v222, 318, v223);
          objc_msgSend_dirtyCellsUsingFunction_(v155, v224, 319, v225);
          goto LABEL_65;
        }

LABEL_63:
        objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 81, v181);
        objc_msgSend_dirtyCellsUsingFunction_(v155, v186, 59, v187);
        objc_msgSend_dirtyCellsUsingFunction_(v155, v188, 165, v189);
        goto LABEL_64;
      }
    }

    else
    {
      objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 126, v181);
    }

    objc_msgSend_dirtyCellsUsingFunction_(v155, v180, 255, v181);
    objc_msgSend_dirtyCellsUsingFunction_(v155, v182, 116, v183);
    objc_msgSend_dirtyCellsUsingFunction_(v155, v184, 92, v185);
    goto LABEL_63;
  }

LABEL_130:
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
  v14 = objc_msgSend_messageWithDescriptor_(v11, v12, off_2812E4498[84], v13);

  self->_lastArchivedAppVersion = objc_msgSend_fileFormatVersion(v11, v15, v16, v17);
  self->_archivingCompatibilityVersion = objc_msgSend_messageVersion(v11, v18, v19, v20);
  v21 = [TSTTableDataStore alloc];
  if (*(v14 + 120))
  {
    v23 = objc_msgSend_initWithArchive_unarchiver_owner_(v21, v22, *(v14 + 120), v11, self);
  }

  else
  {
    v23 = objc_msgSend_initWithArchive_unarchiver_owner_(v21, v22, TST::_DataStore_default_instance_, v11, self);
  }

  dataStore = self->_dataStore;
  self->_dataStore = v23;

  v435 = v14;
  v25 = *(v14 + 112);
  v482[0] = MEMORY[0x277D85DD0];
  v482[1] = 3221225472;
  v482[2] = sub_2210A41EC;
  v482[3] = &unk_27845DF28;
  selfCopy = self;
  v482[4] = self;
  v26 = v11;
  v27 = v482;
  v29 = objc_opt_class();
  v30 = MEMORY[0x277D80A18];
  if (v25)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v26, v28, v25, v29, 0, v27);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v26, v28, MEMORY[0x277D80A18], v29, 0, v27);
  }

  v31 = *(v435 + 136);
  v481[0] = MEMORY[0x277D85DD0];
  v481[1] = 3221225472;
  v481[2] = sub_2210A4200;
  v481[3] = &unk_27845DF50;
  v481[4] = selfCopy;
  v32 = v26;
  v33 = v481;
  v35 = objc_opt_class();
  if (v31)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v32, v34, v31, v35, 0, v33);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v32, v34, v30, v35, 0, v33);
  }

  v36 = *(v435 + 144);
  v480[0] = MEMORY[0x277D85DD0];
  v480[1] = 3221225472;
  v480[2] = sub_2210A4214;
  v480[3] = &unk_27845DF50;
  v480[4] = selfCopy;
  v37 = v32;
  v38 = v480;
  v40 = objc_opt_class();
  if (v36)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v37, v39, v36, v40, 0, v38);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v37, v39, v30, v40, 0, v38);
  }

  v41 = *(v435 + 152);
  v479[0] = MEMORY[0x277D85DD0];
  v479[1] = 3221225472;
  v479[2] = sub_2210A4228;
  v479[3] = &unk_27845DF50;
  v479[4] = selfCopy;
  v42 = v37;
  v43 = v479;
  v45 = objc_opt_class();
  if (v41)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v41, v45, 0, v43);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v42, v44, v30, v45, 0, v43);
  }

  v46 = *(v435 + 160);
  v478[0] = MEMORY[0x277D85DD0];
  v478[1] = 3221225472;
  v478[2] = sub_2210A423C;
  v478[3] = &unk_27845DF50;
  v478[4] = selfCopy;
  v47 = v42;
  v48 = v478;
  v50 = objc_opt_class();
  if (v46)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v49, v46, v50, 0, v48);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v49, v30, v50, 0, v48);
  }

  v51 = *(v435 + 16);
  if ((v51 & 0x20000000) != 0)
  {
    v52 = *(v435 + 312);
    v477[0] = MEMORY[0x277D85DD0];
    v477[1] = 3221225472;
    v477[2] = sub_2210A4250;
    v477[3] = &unk_27845DF50;
    v477[4] = selfCopy;
    v53 = v47;
    v54 = v477;
    v55 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v53, v56, v52, v55, 0, v54);

    v51 = *(v435 + 16);
  }

  if ((v51 & 0x40000000) != 0)
  {
    v57 = *(v435 + 320);
    v476[0] = MEMORY[0x277D85DD0];
    v476[1] = 3221225472;
    v476[2] = sub_2210A4264;
    v476[3] = &unk_27845DF50;
    v476[4] = selfCopy;
    v58 = v47;
    v59 = v476;
    v60 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v58, v61, v57, v60, 0, v59);

    v51 = *(v435 + 16);
  }

  if (v51 < 0)
  {
    v62 = *(v435 + 328);
    v475[0] = MEMORY[0x277D85DD0];
    v475[1] = 3221225472;
    v475[2] = sub_2210A4278;
    v475[3] = &unk_27845DF50;
    v475[4] = selfCopy;
    v63 = v47;
    v64 = v475;
    v65 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v63, v66, v62, v65, 0, v64);
  }

  v67 = *(v435 + 20);
  if (v67)
  {
    v68 = *(v435 + 336);
    v474[0] = MEMORY[0x277D85DD0];
    v474[1] = 3221225472;
    v474[2] = sub_2210A428C;
    v474[3] = &unk_27845DF50;
    v474[4] = selfCopy;
    v69 = v47;
    v70 = v474;
    v71 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v69, v72, v68, v71, 0, v70);

    v67 = *(v435 + 20);
  }

  if ((v67 & 2) != 0)
  {
    v73 = *(v435 + 344);
    v473[0] = MEMORY[0x277D85DD0];
    v473[1] = 3221225472;
    v473[2] = sub_2210A42A0;
    v473[3] = &unk_27845DF50;
    v473[4] = selfCopy;
    v74 = v47;
    v75 = v473;
    v76 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v74, v77, v73, v76, 0, v75);

    v67 = *(v435 + 20);
  }

  if ((v67 & 0x100) != 0)
  {
    v78 = *(v435 + 400);
    v472[0] = MEMORY[0x277D85DD0];
    v472[1] = 3221225472;
    v472[2] = sub_2210A42B4;
    v472[3] = &unk_27845DF50;
    v472[4] = selfCopy;
    v79 = v47;
    v80 = v472;
    v81 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v79, v82, v78, v81, 0, v80);

    v67 = *(v435 + 20);
  }

  if ((v67 & 0x200) != 0)
  {
    v83 = *(v435 + 408);
    v471[0] = MEMORY[0x277D85DD0];
    v471[1] = 3221225472;
    v471[2] = sub_2210A42C8;
    v471[3] = &unk_27845DF50;
    v471[4] = selfCopy;
    v84 = v47;
    v85 = v471;
    v86 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v84, v87, v83, v86, 0, v85);

    v67 = *(v435 + 20);
  }

  if ((v67 & 0x400) != 0)
  {
    v88 = *(v435 + 416);
    v470[0] = MEMORY[0x277D85DD0];
    v470[1] = 3221225472;
    v470[2] = sub_2210A42DC;
    v470[3] = &unk_27845DF50;
    v470[4] = selfCopy;
    v89 = v47;
    v90 = v470;
    v91 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v89, v92, v88, v91, 0, v90);

    v67 = *(v435 + 20);
  }

  if ((v67 & 0x800) != 0)
  {
    v93 = *(v435 + 424);
    v469[0] = MEMORY[0x277D85DD0];
    v469[1] = 3221225472;
    v469[2] = sub_2210A42F0;
    v469[3] = &unk_27845DF50;
    v469[4] = selfCopy;
    v94 = v47;
    v95 = v469;
    v96 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v94, v97, v93, v96, 0, v95);

    v67 = *(v435 + 20);
  }

  if ((v67 & 0x1000) != 0)
  {
    v98 = *(v435 + 432);
    v468[0] = MEMORY[0x277D85DD0];
    v468[1] = 3221225472;
    v468[2] = sub_2210A4304;
    v468[3] = &unk_27845DF50;
    v468[4] = selfCopy;
    v99 = v47;
    v100 = v468;
    v101 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v99, v102, v98, v101, 0, v100);
  }

  v103 = *(v435 + 176);
  v467[0] = MEMORY[0x277D85DD0];
  v467[1] = 3221225472;
  v467[2] = sub_2210A4318;
  v467[3] = &unk_27845DF78;
  v467[4] = selfCopy;
  v104 = v47;
  v105 = v467;
  v107 = objc_opt_class();
  if (v103)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v104, v106, v103, v107, 0, v105);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v104, v106, v30, v107, 0, v105);
  }

  v108 = *(v435 + 184);
  v466[0] = MEMORY[0x277D85DD0];
  v466[1] = 3221225472;
  v466[2] = sub_2210A432C;
  v466[3] = &unk_27845DF78;
  v466[4] = selfCopy;
  v109 = v104;
  v110 = v466;
  v112 = objc_opt_class();
  if (v108)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v109, v111, v108, v112, 0, v110);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v109, v111, v30, v112, 0, v110);
  }

  v113 = *(v435 + 192);
  v465[0] = MEMORY[0x277D85DD0];
  v465[1] = 3221225472;
  v465[2] = sub_2210A4340;
  v465[3] = &unk_27845DF78;
  v465[4] = selfCopy;
  v114 = v109;
  v115 = v465;
  v117 = objc_opt_class();
  if (v113)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v114, v116, v113, v117, 0, v115);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v114, v116, v30, v117, 0, v115);
  }

  v118 = *(v435 + 200);
  v464[0] = MEMORY[0x277D85DD0];
  v464[1] = 3221225472;
  v464[2] = sub_2210A4354;
  v464[3] = &unk_27845DF78;
  v464[4] = selfCopy;
  v119 = v114;
  v120 = v464;
  v122 = objc_opt_class();
  if (v118)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v119, v121, v118, v122, 0, v120);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v119, v121, v30, v122, 0, v120);
  }

  v125 = *(v435 + 20);
  v126 = v119;
  if ((v125 & 4) != 0)
  {
    v127 = *(v435 + 352);
    v463[0] = MEMORY[0x277D85DD0];
    v463[1] = 3221225472;
    v463[2] = sub_2210A4368;
    v463[3] = &unk_27845DF78;
    v463[4] = selfCopy;
    v128 = v126;
    v129 = v463;
    v130 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v128, v131, v127, v130, 0, v129);

    v125 = *(v435 + 20);
  }

  if ((v125 & 8) != 0)
  {
    v132 = *(v435 + 360);
    v462[0] = MEMORY[0x277D85DD0];
    v462[1] = 3221225472;
    v462[2] = sub_2210A437C;
    v462[3] = &unk_27845DF78;
    v462[4] = selfCopy;
    v133 = v126;
    v134 = v462;
    v135 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v133, v136, v132, v135, 0, v134);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x10) != 0)
  {
    v137 = *(v435 + 368);
    v461[0] = MEMORY[0x277D85DD0];
    v461[1] = 3221225472;
    v461[2] = sub_2210A4390;
    v461[3] = &unk_27845DF78;
    v461[4] = selfCopy;
    v138 = v126;
    v139 = v461;
    v140 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v138, v141, v137, v140, 0, v139);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x20) != 0)
  {
    v142 = *(v435 + 376);
    v460[0] = MEMORY[0x277D85DD0];
    v460[1] = 3221225472;
    v460[2] = sub_2210A43A4;
    v460[3] = &unk_27845DF78;
    v460[4] = selfCopy;
    v143 = v126;
    v144 = v460;
    v145 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v143, v146, v142, v145, 0, v144);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x40) != 0)
  {
    v147 = *(v435 + 384);
    v459[0] = MEMORY[0x277D85DD0];
    v459[1] = 3221225472;
    v459[2] = sub_2210A43B8;
    v459[3] = &unk_27845DF78;
    v459[4] = selfCopy;
    v148 = v126;
    v149 = v459;
    v150 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v148, v151, v147, v150, 0, v149);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x2000) != 0)
  {
    v152 = *(v435 + 440);
    v458[0] = MEMORY[0x277D85DD0];
    v458[1] = 3221225472;
    v458[2] = sub_2210A43CC;
    v458[3] = &unk_27845DF78;
    v458[4] = selfCopy;
    v153 = v126;
    v154 = v458;
    v155 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v153, v156, v152, v155, 0, v154);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x4000) != 0)
  {
    v157 = *(v435 + 448);
    v457[0] = MEMORY[0x277D85DD0];
    v457[1] = 3221225472;
    v457[2] = sub_2210A43E0;
    v457[3] = &unk_27845DF78;
    v457[4] = selfCopy;
    v158 = v126;
    v159 = v457;
    v160 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v158, v161, v157, v160, 0, v159);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x8000) != 0)
  {
    v162 = *(v435 + 456);
    v456[0] = MEMORY[0x277D85DD0];
    v456[1] = 3221225472;
    v456[2] = sub_2210A43F4;
    v456[3] = &unk_27845DF78;
    v456[4] = selfCopy;
    v163 = v126;
    v164 = v456;
    v165 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v163, v166, v162, v165, 0, v164);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x10000) != 0)
  {
    v167 = *(v435 + 464);
    v455[0] = MEMORY[0x277D85DD0];
    v455[1] = 3221225472;
    v455[2] = sub_2210A4408;
    v455[3] = &unk_27845DF78;
    v455[4] = selfCopy;
    v168 = v126;
    v169 = v455;
    v170 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v168, v171, v167, v170, 0, v169);

    v125 = *(v435 + 20);
  }

  if ((v125 & 0x20000) != 0)
  {
    v172 = *(v435 + 472);
    v454[0] = MEMORY[0x277D85DD0];
    v454[1] = 3221225472;
    v454[2] = sub_2210A441C;
    v454[3] = &unk_27845DF78;
    v454[4] = selfCopy;
    v173 = v126;
    v174 = v454;
    v175 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v173, v176, v172, v175, 0, v174);
  }

  v177 = *(v435 + 16);
  if ((v177 & 0x10000) != 0)
  {
    v178 = *(v435 + 208);
    v453[0] = MEMORY[0x277D85DD0];
    v453[1] = 3221225472;
    v453[2] = sub_2210A4430;
    v453[3] = &unk_27845DF78;
    v453[4] = selfCopy;
    v179 = v126;
    v180 = v453;
    v181 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v179, v182, v178, v181, 0, v180);

    v177 = *(v435 + 16);
  }

  if ((v177 & 0x80000) != 0)
  {
    v183 = *(v435 + 232);
    v452[0] = MEMORY[0x277D85DD0];
    v452[1] = 3221225472;
    v452[2] = sub_2210A4444;
    v452[3] = &unk_27845DFA0;
    v452[4] = selfCopy;
    v184 = v126;
    v185 = v452;
    v186 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v184, v187, v183, v186, 0, v185);
  }

  v188 = *(v435 + 20);
  if ((v188 & 0x800000) != 0)
  {
    v189 = *(v435 + 520);
    v451[0] = MEMORY[0x277D85DD0];
    v451[1] = 3221225472;
    v451[2] = sub_2210A4458;
    v451[3] = &unk_27845DF50;
    v451[4] = selfCopy;
    v190 = v126;
    v191 = v451;
    v192 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v190, v193, v189, v192, 0, v191);

    v188 = *(v435 + 20);
  }

  if ((v188 & 0x1000000) != 0)
  {
    v194 = *(v435 + 528);
    v450[0] = MEMORY[0x277D85DD0];
    v450[1] = 3221225472;
    v450[2] = sub_2210A446C;
    v450[3] = &unk_27845DF50;
    v450[4] = selfCopy;
    v195 = v126;
    v196 = v450;
    v197 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v195, v198, v194, v197, 0, v196);

    v188 = *(v435 + 20);
  }

  if ((v188 & 0x2000000) != 0)
  {
    v199 = *(v435 + 536);
    v449[0] = MEMORY[0x277D85DD0];
    v449[1] = 3221225472;
    v449[2] = sub_2210A4480;
    v449[3] = &unk_27845DF50;
    v449[4] = selfCopy;
    v200 = v126;
    v201 = v449;
    v202 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v200, v203, v199, v202, 0, v201);
  }

  if ((*(v435 + 19) & 4) != 0)
  {
    v204 = *(v435 + 288);
    v448[0] = MEMORY[0x277D85DD0];
    v448[1] = 3221225472;
    v448[2] = sub_2210A4494;
    v448[3] = &unk_27845DFC8;
    v448[4] = selfCopy;
    v205 = v126;
    v206 = v448;
    v207 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v205, v208, v204, v207, 0, v206);
  }

  else if (*(v435 + 25))
  {
    selfCopy->_presetIDForUpgrade = *(v435 + 600);
  }

  v209 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v123, *(v435 + 80) & 0xFFFFFFFFFFFFFFFELL, v124);
  selfCopy->_tableUID._lower = TSKMakeUIDStructFromString();
  selfCopy->_tableUID._upper = v210;

  if (!selfCopy->_tableUID._lower && !selfCopy->_tableUID._upper)
  {
    selfCopy->_tableUID._lower = TSKMakeUIDStructRandom();
    selfCopy->_tableUID._upper = v211;
  }

  if ((*(v435 + 16) & 4) != 0 && objc_msgSend_isFromCopy(v126, v211, v212, v213))
  {
    v214 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v211, *(v435 + 96) & 0xFFFFFFFFFFFFFFFELL, v213);
    selfCopy->_fromTableUID._lower = TSKMakeUIDStructFromString();
    selfCopy->_fromTableUID._upper = v215;
  }

  if ((*(v435 + 16) & 8) != 0 && objc_msgSend_isFromCopy(v126, v211, v212, v213))
  {
    v216 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v211, *(v435 + 104) & 0xFFFFFFFFFFFFFFFELL, v213);
    selfCopy->_fromGroupByUID._lower = TSKMakeUIDStructFromString();
    selfCopy->_fromGroupByUID._upper = v217;
  }

  if ((*(v435 + 25) & 2) != 0 && objc_msgSend_isFromCopy(v126, v211, v212, v213) && (objc_msgSend_isCrossAppPaste(v126, v211, v218, v213) & 1) == 0)
  {
    selfCopy->_wasCut = *(v435 + 604);
  }

  if ((*(v435 + 24) & 0x40) != 0)
  {
    v219 = *(v435 + 598);
  }

  else
  {
    v219 = 0;
  }

  selfCopy->_styleApplyClearsAll = v219;
  if ((*(v435 + 23) & 0x20) != 0)
  {
    v220 = *(v435 + 560);
  }

  else
  {
    v220 = 0;
  }

  v221 = *(v435 + 552);
  selfCopy->_numberOfHeaderRows._row = v220;
  v222 = *(v435 + 20);
  if ((v222 & 0x40000000) != 0)
  {
    v223 = *(v435 + 564);
  }

  else
  {
    LOWORD(v223) = 0;
  }

  selfCopy->_numberOfHeaderColumns._column = v223;
  if (v222 < 0)
  {
    v224 = *(v435 + 568);
  }

  else
  {
    v224 = 0;
  }

  selfCopy->_numberOfFooterRows._row = v224;
  v225 = *(v435 + 24);
  if ((v225 & 0x1000) != 0)
  {
    v226 = *(v435 + 607);
  }

  else
  {
    v226 = 0;
  }

  selfCopy->_headerRowsFrozen = v226;
  if ((v225 & 0x10) != 0)
  {
    v227 = *(v435 + 596);
  }

  else
  {
    v227 = 0;
  }

  selfCopy->_headerColumnsFrozen = v227;
  selfCopy->_defaultRowHeight = *(v435 + 576);
  selfCopy->_defaultColumnWidth = *(v435 + 584);
  selfCopy->_tableNameHeight = *(v435 + 608);
  v228 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v211, *(v435 + 88) & 0xFFFFFFFFFFFFFFFELL, v213);
  tableName = selfCopy->_tableName;
  selfCopy->_tableName = v228;

  v230 = *(v435 + 24);
  if ((v230 & 0x400) != 0)
  {
    v231 = *(v435 + 605);
  }

  else
  {
    v231 = 0;
  }

  selfCopy->_tableNameEnabled = v231;
  if ((v230 & 0x800) != 0)
  {
    v232 = *(v435 + 606);
  }

  else
  {
    v232 = 0;
  }

  selfCopy->_tableNameBorderEnabled = v232;
  if ((v230 & 0x20) != 0)
  {
    v233 = *(v435 + 597);
  }

  else
  {
    v233 = 0;
  }

  selfCopy->_repeatingHeaderRowsEnabled = v233;
  if ((v230 & 0x80) != 0)
  {
    v234 = *(v435 + 599);
  }

  else
  {
    v234 = 0;
  }

  selfCopy->_repeatingHeaderColumnsEnabled = v234;
  v235 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  cellsToInvalidateAfterRecalc = selfCopy->_cellsToInvalidateAfterRecalc;
  selfCopy->_cellsToInvalidateAfterRecalc = v235;

  v237 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  cellsToInvalidateNonoverflowingAfterRecalc = selfCopy->_cellsToInvalidateNonoverflowingAfterRecalc;
  selfCopy->_cellsToInvalidateNonoverflowingAfterRecalc = v237;

  v239 = objc_alloc_init(TSTConcurrentMutableCellUIDSet);
  spillCellsChangedToInvalidateAfterRecalc = selfCopy->_spillCellsChangedToInvalidateAfterRecalc;
  selfCopy->_spillCellsChangedToInvalidateAfterRecalc = v239;

  v241 = objc_alloc_init(TSTCellDictionary);
  cellsPendingWrite = selfCopy->_cellsPendingWrite;
  selfCopy->_cellsPendingWrite = v241;

  v243 = objc_alloc_init(TSTCellDictionary);
  spillingCellsPendingWrite = selfCopy->_spillingCellsPendingWrite;
  selfCopy->_spillingCellsPendingWrite = v243;

  if ((*(v435 + 20) & 0x80) != 0)
  {
    v252 = [TSTHiddenStatesOwner alloc];
    if (*(v435 + 392))
    {
      v251 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v252, v253, *(v435 + 392), v126, selfCopy);
    }

    else
    {
      v251 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v252, v253, &TST::_HiddenStatesOwnerArchive_default_instance_, v126, selfCopy);
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(selfCopy, v245, v246, v247);
    v248 = [TSTHiddenStatesOwner alloc];
    v251 = objc_msgSend_initWithBaseTable_(v248, v249, selfCopy, v250);
  }

  hiddenStatesOwner = selfCopy->_hiddenStatesOwner;
  selfCopy->_hiddenStatesOwner = v251;

  if ((*(v435 + 18) & 2) != 0)
  {
    v267 = *(v435 + 216);
    v447[0] = MEMORY[0x277D85DD0];
    v447[1] = 3221225472;
    v447[2] = sub_2210A44A8;
    v447[3] = &unk_27845DFF0;
    v447[4] = selfCopy;
    v262 = v126;
    v268 = v447;
    v269 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v262, v270, v267, v269, 0, v268);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(selfCopy, v255, v256, v257);
    v258 = [TSTHiddenStateFormulaOwner alloc];
    v262 = objc_msgSend_context(selfCopy, v259, v260, v261);
    v265 = objc_msgSend_initWithContext_(v258, v263, v262, v264);
    hiddenStateFormulaOwnerForColumns = selfCopy->_hiddenStateFormulaOwnerForColumns;
    selfCopy->_hiddenStateFormulaOwnerForColumns = v265;
  }

  if ((*(v435 + 18) & 4) != 0)
  {
    v283 = *(v435 + 224);
    v446[0] = MEMORY[0x277D85DD0];
    v446[1] = 3221225472;
    v446[2] = sub_2210A44BC;
    v446[3] = &unk_27845DFF0;
    v446[4] = selfCopy;
    v278 = v126;
    v284 = v446;
    v285 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v278, v286, v283, v285, 0, v284);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(selfCopy, v271, v272, v273);
    v274 = [TSTHiddenStateFormulaOwner alloc];
    v278 = objc_msgSend_context(selfCopy, v275, v276, v277);
    v281 = objc_msgSend_initWithContext_(v274, v279, v278, v280);
    hiddenStateFormulaOwnerForRows = selfCopy->_hiddenStateFormulaOwnerForRows;
    selfCopy->_hiddenStateFormulaOwnerForRows = v281;
  }

  v290 = *(v435 + 16);
  if ((v290 & 0x100000) != 0)
  {
    v291 = *(v435 + 240);
    v445[0] = MEMORY[0x277D85DD0];
    v445[1] = 3221225472;
    v445[2] = sub_2210A44D0;
    v445[3] = &unk_27845E018;
    v445[4] = selfCopy;
    v292 = v126;
    v293 = v445;
    v294 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v292, v295, v291, v294, 0, v293);

    v290 = *(v435 + 16);
  }

  if ((v290 & 0x200000) != 0 && (v444[0] = TSKUIDStruct::loadFromMessage(), v444[1] = v287, v444[0] | v287))
  {
    v296 = [TSTConditionalStyleFormulaOwner alloc];
    v298 = objc_msgSend_initWithTableModel_ownerUID_(v296, v297, selfCopy, v444);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(selfCopy, v287, v288, v289);
    v299 = [TSTConditionalStyleFormulaOwner alloc];
    v298 = objc_msgSend_initWithTableModel_(v299, v300, selfCopy, v301);
  }

  conditionalStyleFormulaOwner = selfCopy->_conditionalStyleFormulaOwner;
  selfCopy->_conditionalStyleFormulaOwner = v298;

  if ((*(v435 + 19) & 2) != 0)
  {
    v310 = [TSTMergeOwner alloc];
    if (*(v435 + 280))
    {
      v309 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v310, v311, *(v435 + 280), v126, selfCopy);
    }

    else
    {
      v309 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v310, v311, TST::_MergeOwnerArchive_default_instance_, v126, selfCopy);
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(selfCopy, v303, v304, v305);
    v306 = [TSTMergeOwner alloc];
    v309 = objc_msgSend_initWithTableModel_(v306, v307, selfCopy, v308);
  }

  mergeOwner = selfCopy->_mergeOwner;
  selfCopy->_mergeOwner = v309;

  if ((*(v435 + 22) & 8) != 0 && (objc_msgSend_isCrossAppPaste(v126, v313, v314, v315) & 1) == 0)
  {
    v320 = [TSTPencilAnnotationOwner alloc];
    if (*(v435 + 488))
    {
      v319 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v320, v321, *(v435 + 488), v126, selfCopy);
    }

    else
    {
      v319 = objc_msgSend_initWithArchive_unarchiver_forTableModel_(v320, v321, &TST::_PencilAnnotationOwnerArchive_default_instance_, v126, selfCopy);
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(selfCopy, v313, v314, v315);
    v316 = [TSTPencilAnnotationOwner alloc];
    v319 = objc_msgSend_initWithTableModel_(v316, v317, selfCopy, v318);
  }

  pencilAnnotationOwner = selfCopy->_pencilAnnotationOwner;
  selfCopy->_pencilAnnotationOwner = v319;

  if ((*(v435 + 18) & 0x40) != 0)
  {
    v326 = [TSTTableSortOrder alloc];
    if (*(v435 + 256))
    {
      v325 = objc_msgSend_initFromArchive_(v326, v327, *(v435 + 256), v328);
    }

    else
    {
      v325 = objc_msgSend_initFromArchive_(v326, v327, &TST::_TableSortOrderArchive_default_instance_, v328);
    }
  }

  else
  {
    v323 = [TSTTableSortOrder alloc];
    v325 = objc_msgSend_initWithRules_type_(v323, v324, MEMORY[0x277CBEBF8], 0);
  }

  sortOrder = selfCopy->_sortOrder;
  selfCopy->_sortOrder = v325;

  if ((*(v435 + 18) & 0x80) != 0)
  {
    v338 = [TSTSortRuleReferenceTracker alloc];
    if (*(v435 + 264))
    {
      v340 = objc_msgSend_initFromArchive_unarchiver_(v338, v339, *(v435 + 264), v126);
    }

    else
    {
      v340 = objc_msgSend_initFromArchive_unarchiver_(v338, v339, &TST::_SortRuleReferenceTrackerArchive_default_instance_, v126);
    }

    sortRuleReferenceTracker = selfCopy->_sortRuleReferenceTracker;
    selfCopy->_sortRuleReferenceTracker = v340;
  }

  else
  {
    v330 = [TSTSortRuleReferenceTracker alloc];
    sortRuleReferenceTracker = objc_msgSend_context(selfCopy, v331, v332, v333);
    v336 = objc_msgSend_initWithTableInfo_baseTableUID_context_(v330, v335, 0, &selfCopy->_tableUID, sortRuleReferenceTracker);
    v337 = selfCopy->_sortRuleReferenceTracker;
    selfCopy->_sortRuleReferenceTracker = v336;
  }

  v344 = objc_msgSend_fileFormatVersion(v126, v341, v342, v343);
  v348 = *(v435 + 20);
  if (v344 >= 0xB000200000006 && (v348 & 0x400000) != 0)
  {
    v349 = *(v435 + 512);
    v443[0] = MEMORY[0x277D85DD0];
    v443[1] = 3221225472;
    v443[2] = sub_2210A44E4;
    v443[3] = &unk_27845E040;
    v443[4] = selfCopy;
    v350 = v126;
    v351 = v443;
    v352 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v350, v353, v349, v352, 0, v351);
  }

  else if ((v348 & 0x40000) != 0)
  {
    objc_msgSend_willModifyForUpgrade(selfCopy, v345, v346, v347);
    v354 = [TSTCategoryOwner alloc];
    if (*(v435 + 480))
    {
      v356 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v354, v355, *(v435 + 480), v126, selfCopy);
    }

    else
    {
      v356 = objc_msgSend_initWithArchive_unarchiver_forBaseTable_(v354, v355, &TST::_CategoryOwnerArchive_default_instance_, v126, selfCopy);
    }

    categoryOwner = selfCopy->_categoryOwner;
    selfCopy->_categoryOwner = v356;
  }

  v358 = *(v435 + 20);
  if ((v358 & 0x200000) != 0)
  {
    v359 = *(v435 + 504);
    v442[0] = MEMORY[0x277D85DD0];
    v442[1] = 3221225472;
    v442[2] = sub_2210A44F8;
    v442[3] = &unk_27845E068;
    v442[4] = selfCopy;
    v360 = v126;
    v361 = v442;
    v362 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v360, v363, v359, v362, 0, v361);

    v358 = *(v435 + 20);
  }

  if ((v358 & 0x100000) != 0)
  {
    v368 = [TSCEHauntedOwner alloc];
    if (*(v435 + 496))
    {
      v367 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v368, v369, *(v435 + 496), v126, &selfCopy->_tableUID);
    }

    else
    {
      v367 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v368, v369, &TSCE::_HauntedOwnerArchive_default_instance_, v126, &selfCopy->_tableUID);
    }
  }

  else
  {
    v364 = [TSCEHauntedOwner alloc];
    v367 = objc_msgSend_initWithBaseTableUID_(v364, v365, &selfCopy->_tableUID, v366);
  }

  hauntedOwner = selfCopy->_hauntedOwner;
  selfCopy->_hauntedOwner = v367;

  if ((*(v435 + 23) & 4) != 0)
  {
    v375 = [TSCESpillOwner alloc];
    if (*(v435 + 544))
    {
      v374 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v375, v376, *(v435 + 544), v126, &selfCopy->_tableUID);
    }

    else
    {
      v374 = objc_msgSend_initWithArchive_unarchiver_forBaseTableUID_(v375, v376, &TSCE::_SpillOwnerArchive_default_instance_, v126, &selfCopy->_tableUID);
    }
  }

  else
  {
    v371 = [TSCESpillOwner alloc];
    v374 = objc_msgSend_initWithBaseTableUID_(v371, v372, &selfCopy->_tableUID, v373);
  }

  spillOwner = selfCopy->_spillOwner;
  selfCopy->_spillOwner = v374;

  v381 = *(v435 + 16);
  if ((v381 & 0x40) != 0)
  {
    v382 = *(v435 + 128);
    v441[0] = MEMORY[0x277D85DD0];
    v441[1] = 3221225472;
    v441[2] = sub_2210A450C;
    v441[3] = &unk_27845E090;
    v441[4] = selfCopy;
    v383 = v126;
    v384 = v441;
    v385 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v383, v386, v382, v385, 0, v384);

    v381 = *(v435 + 16);
  }

  if ((v381 & 0x1000000) != 0)
  {
    v387 = *(v435 + 272);
    v440[0] = MEMORY[0x277D85DD0];
    v440[1] = 3221225472;
    v440[2] = sub_2210A456C;
    v440[3] = &unk_27845E0B8;
    v440[4] = selfCopy;
    v388 = v126;
    v389 = v440;
    v390 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v388, v391, v387, v390, 0, v389);

    v381 = *(v435 + 16);
  }

  if ((v381 & 0x8000000) != 0)
  {
    v392 = *(v435 + 296);
    v439[0] = MEMORY[0x277D85DD0];
    v439[1] = 3221225472;
    v439[2] = sub_2210A4580;
    v439[3] = &unk_27845E0E0;
    v439[4] = selfCopy;
    v393 = v126;
    v394 = v439;
    v395 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v393, v396, v392, v395, 0, v394);
  }

  if ((*(v435 + 26) & 2) != 0)
  {
    selfCopy->_presetNeedsStrongOwnership = *(v435 + 628);
  }

  if ((*(v435 + 19) & 0x10) != 0)
  {
    v397 = [TSTStructuredTextImportRecord alloc];
    if (*(v435 + 304))
    {
      v400 = objc_msgSend_initFromArchive_(v397, v398, *(v435 + 304), v399);
    }

    else
    {
      v400 = objc_msgSend_initFromArchive_(v397, v398, &TST::_StructuredTextImportRecord_default_instance_, v399);
    }

    textImportRecord = selfCopy->_textImportRecord;
    selfCopy->_textImportRecord = v400;
  }

  v433 = v126;
  v402 = *(v435 + 32);
  if (v402)
  {
    v403 = *(v435 + 40);
    p_begin = &selfCopy->_pivotValueTypesByColumn.__begin_;
    end = selfCopy->_pivotValueTypesByColumn.__end_;
    v406 = 4 * v402;
    do
    {
      v407 = *v403;
      cap = selfCopy->_pivotValueTypesByColumn.__cap_;
      if (end >= cap)
      {
        v409 = *p_begin;
        v410 = (end - *p_begin);
        v411 = (v410 + 1);
        if ((v410 + 1) < 0)
        {
          sub_22107C148();
        }

        v412 = cap - v409;
        if (2 * v412 > v411)
        {
          v411 = 2 * v412;
        }

        if (v412 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v413 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v413 = v411;
        }

        if (v413)
        {
          operator new();
        }

        v414 = end - *p_begin;
        *v410 = v407;
        end = v410 + 1;
        memcpy(0, v409, v414);
        *p_begin = 0;
        selfCopy->_pivotValueTypesByColumn.__end_ = v410 + 1;
        selfCopy->_pivotValueTypesByColumn.__cap_ = 0;
        if (v409)
        {
          operator delete(v409);
        }
      }

      else
      {
        *end++ = v407;
      }

      selfCopy->_pivotValueTypesByColumn.__end_ = end;
      ++v403;
      v406 -= 4;
    }

    while (v406);
  }

  v415 = *(v435 + 64);
  if (v415 == *(v435 + 48))
  {
    v417 = v433;
    v416 = selfCopy;
    if (v415 >= 1)
    {
      v418 = 0;
      v419 = 4 * v415;
      do
      {
        v420 = *(*(v435 + 72) + v418);
        v438 = *(*(v435 + 56) + v418);
        v444[0] = &v438;
        v418 += 4;
        sub_2210BBDBC(&selfCopy->_pivotDateGroupingTypesByColumn, &v438, &unk_2217E0200, v444)[5] = v420;
      }

      while (v419 != v418);
    }
  }

  else
  {
    v421 = MEMORY[0x277D81150];
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v378, "[TSTTableModel loadFromUnarchiver:]", v380);
    v417 = v433;
    v422 = v416 = selfCopy;
    v425 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v423, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v424);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v421, v426, v422, v425, 3282, 0, "Unequal date grouping columns and values. We can't make a map.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v427, v428, v429);
  }

  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v417, v378, v379, v380);
  v436[0] = MEMORY[0x277D85DD0];
  v436[1] = 3221225472;
  v436[2] = sub_2210A4594;
  v436[3] = &unk_27845E108;
  v436[4] = v416;
  v436[5] = v221;
  v437 = hasPreUFFVersion;
  objc_msgSend_addFinalizeHandler_(v417, v431, v436, v432);
}

- (void)saveToArchiver:(id)archiver
{
  v350 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2210BC080, off_2812E4498[84]);

  dataStore = self->_dataStore;
  *(v6 + 16) |= 0x20u;
  v11 = *(v6 + 120);
  if (!v11)
  {
    v12 = *(v6 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TST::DataStore>(v12);
    *(v6 + 120) = v11;
  }

  v13 = objc_msgSend_tsp_isInDocument(self, v7, v8, v9);
  objc_msgSend_saveToArchive_archiver_isInTheDocument_(dataStore, v14, v11, archiverCopy, v13);
  tableStyle = self->_tableStyle;
  *(v6 + 16) |= 0x10u;
  v17 = *(v6 + 112);
  if (!v17)
  {
    v18 = *(v6 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x223DA0390](v18);
    *(v6 + 112) = v17;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v15, tableStyle, v17);
  headerRowCellStyle = self->_headerRowCellStyle;
  *(v6 + 16) |= 0x100u;
  v21 = *(v6 + 144);
  if (!v21)
  {
    v22 = *(v6 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x223DA0390](v22);
    *(v6 + 144) = v21;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v19, headerRowCellStyle, v21);
  headerColumnCellStyle = self->_headerColumnCellStyle;
  *(v6 + 16) |= 0x200u;
  v25 = *(v6 + 152);
  if (!v25)
  {
    v26 = *(v6 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x223DA0390](v26);
    *(v6 + 152) = v25;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v23, headerColumnCellStyle, v25);
  footerRowCellStyle = self->_footerRowCellStyle;
  *(v6 + 16) |= 0x400u;
  v29 = *(v6 + 160);
  if (!v29)
  {
    v30 = *(v6 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = MEMORY[0x223DA0390](v30);
    *(v6 + 160) = v29;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v27, footerRowCellStyle, v29);
  bodyCellStyle = self->_bodyCellStyle;
  *(v6 + 16) |= 0x80u;
  v33 = *(v6 + 136);
  if (!v33)
  {
    v34 = *(v6 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x223DA0390](v34);
    *(v6 + 136) = v33;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v31, bodyCellStyle, v33);
  headerRowTextStyle = self->_headerRowTextStyle;
  *(v6 + 16) |= 0x2000u;
  v37 = *(v6 + 184);
  if (!v37)
  {
    v38 = *(v6 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0390](v38);
    *(v6 + 184) = v37;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v35, headerRowTextStyle, v37);
  headerColumnTextStyle = self->_headerColumnTextStyle;
  *(v6 + 16) |= 0x4000u;
  v41 = *(v6 + 192);
  if (!v41)
  {
    v42 = *(v6 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x223DA0390](v42);
    *(v6 + 192) = v41;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v39, headerColumnTextStyle, v41);
  footerRowTextStyle = self->_footerRowTextStyle;
  *(v6 + 16) |= 0x8000u;
  v45 = *(v6 + 200);
  if (!v45)
  {
    v46 = *(v6 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x223DA0390](v46);
    *(v6 + 200) = v45;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v43, footerRowTextStyle, v45);
  bodyTextStyle = self->_bodyTextStyle;
  *(v6 + 16) |= 0x1000u;
  v49 = *(v6 + 176);
  if (!v49)
  {
    v50 = *(v6 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x223DA0390](v50);
    *(v6 + 176) = v49;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v47, bodyTextStyle, v49);
  categoryLevel1CellStyle = self->_categoryLevel1CellStyle;
  if (categoryLevel1CellStyle)
  {
    *(v6 + 16) |= 0x20000000u;
    v53 = *(v6 + 312);
    if (!v53)
    {
      v54 = *(v6 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x223DA0390](v54);
      *(v6 + 312) = v53;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel1CellStyle, v53);
  }

  categoryLevel2CellStyle = self->_categoryLevel2CellStyle;
  if (categoryLevel2CellStyle)
  {
    *(v6 + 16) |= 0x40000000u;
    v56 = *(v6 + 320);
    if (!v56)
    {
      v57 = *(v6 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x223DA0390](v57);
      *(v6 + 320) = v56;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel2CellStyle, v56);
  }

  categoryLevel3CellStyle = self->_categoryLevel3CellStyle;
  if (categoryLevel3CellStyle)
  {
    *(v6 + 16) |= 0x80000000;
    v59 = *(v6 + 328);
    if (!v59)
    {
      v60 = *(v6 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      v59 = MEMORY[0x223DA0390](v60);
      *(v6 + 328) = v59;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel3CellStyle, v59);
  }

  categoryLevel4CellStyle = self->_categoryLevel4CellStyle;
  if (categoryLevel4CellStyle)
  {
    *(v6 + 20) |= 1u;
    v62 = *(v6 + 336);
    if (!v62)
    {
      v63 = *(v6 + 8);
      if (v63)
      {
        v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
      }

      v62 = MEMORY[0x223DA0390](v63);
      *(v6 + 336) = v62;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel4CellStyle, v62);
  }

  categoryLevel5CellStyle = self->_categoryLevel5CellStyle;
  if (categoryLevel5CellStyle)
  {
    *(v6 + 20) |= 2u;
    v65 = *(v6 + 344);
    if (!v65)
    {
      v66 = *(v6 + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x223DA0390](v66);
      *(v6 + 344) = v65;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel5CellStyle, v65);
  }

  labelLevel1CellStyle = self->_labelLevel1CellStyle;
  if (labelLevel1CellStyle)
  {
    *(v6 + 20) |= 0x100u;
    v68 = *(v6 + 400);
    if (!v68)
    {
      v69 = *(v6 + 8);
      if (v69)
      {
        v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
      }

      v68 = MEMORY[0x223DA0390](v69);
      *(v6 + 400) = v68;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel1CellStyle, v68);
  }

  labelLevel2CellStyle = self->_labelLevel2CellStyle;
  if (labelLevel2CellStyle)
  {
    *(v6 + 20) |= 0x200u;
    v71 = *(v6 + 408);
    if (!v71)
    {
      v72 = *(v6 + 8);
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = MEMORY[0x223DA0390](v72);
      *(v6 + 408) = v71;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel2CellStyle, v71);
  }

  labelLevel3CellStyle = self->_labelLevel3CellStyle;
  if (labelLevel3CellStyle)
  {
    *(v6 + 20) |= 0x400u;
    v74 = *(v6 + 416);
    if (!v74)
    {
      v75 = *(v6 + 8);
      if (v75)
      {
        v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
      }

      v74 = MEMORY[0x223DA0390](v75);
      *(v6 + 416) = v74;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel3CellStyle, v74);
  }

  labelLevel4CellStyle = self->_labelLevel4CellStyle;
  if (labelLevel4CellStyle)
  {
    *(v6 + 20) |= 0x800u;
    v77 = *(v6 + 424);
    if (!v77)
    {
      v78 = *(v6 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x223DA0390](v78);
      *(v6 + 424) = v77;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel4CellStyle, v77);
  }

  labelLevel5CellStyle = self->_labelLevel5CellStyle;
  if (labelLevel5CellStyle)
  {
    *(v6 + 20) |= 0x1000u;
    v80 = *(v6 + 432);
    if (!v80)
    {
      v81 = *(v6 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x223DA0390](v81);
      *(v6 + 432) = v80;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel5CellStyle, v80);
  }

  categoryLevel1TextStyle = self->_categoryLevel1TextStyle;
  if (categoryLevel1TextStyle)
  {
    *(v6 + 20) |= 4u;
    v83 = *(v6 + 352);
    if (!v83)
    {
      v84 = *(v6 + 8);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = MEMORY[0x223DA0390](v84);
      *(v6 + 352) = v83;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel1TextStyle, v83);
  }

  categoryLevel2TextStyle = self->_categoryLevel2TextStyle;
  if (categoryLevel2TextStyle)
  {
    *(v6 + 20) |= 8u;
    v86 = *(v6 + 360);
    if (!v86)
    {
      v87 = *(v6 + 8);
      if (v87)
      {
        v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
      }

      v86 = MEMORY[0x223DA0390](v87);
      *(v6 + 360) = v86;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel2TextStyle, v86);
  }

  categoryLevel3TextStyle = self->_categoryLevel3TextStyle;
  if (categoryLevel3TextStyle)
  {
    *(v6 + 20) |= 0x10u;
    v89 = *(v6 + 368);
    if (!v89)
    {
      v90 = *(v6 + 8);
      if (v90)
      {
        v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
      }

      v89 = MEMORY[0x223DA0390](v90);
      *(v6 + 368) = v89;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel3TextStyle, v89);
  }

  categoryLevel4TextStyle = self->_categoryLevel4TextStyle;
  if (categoryLevel4TextStyle)
  {
    *(v6 + 20) |= 0x20u;
    v92 = *(v6 + 376);
    if (!v92)
    {
      v93 = *(v6 + 8);
      if (v93)
      {
        v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
      }

      v92 = MEMORY[0x223DA0390](v93);
      *(v6 + 376) = v92;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel4TextStyle, v92);
  }

  categoryLevel5TextStyle = self->_categoryLevel5TextStyle;
  if (categoryLevel5TextStyle)
  {
    *(v6 + 20) |= 0x40u;
    v95 = *(v6 + 384);
    if (!v95)
    {
      v96 = *(v6 + 8);
      if (v96)
      {
        v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
      }

      v95 = MEMORY[0x223DA0390](v96);
      *(v6 + 384) = v95;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, categoryLevel5TextStyle, v95);
  }

  labelLevel1TextStyle = self->_labelLevel1TextStyle;
  if (labelLevel1TextStyle)
  {
    *(v6 + 20) |= 0x2000u;
    v98 = *(v6 + 440);
    if (!v98)
    {
      v99 = *(v6 + 8);
      if (v99)
      {
        v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
      }

      v98 = MEMORY[0x223DA0390](v99);
      *(v6 + 440) = v98;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel1TextStyle, v98);
  }

  labelLevel2TextStyle = self->_labelLevel2TextStyle;
  if (labelLevel2TextStyle)
  {
    *(v6 + 20) |= 0x4000u;
    v101 = *(v6 + 448);
    if (!v101)
    {
      v102 = *(v6 + 8);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = MEMORY[0x223DA0390](v102);
      *(v6 + 448) = v101;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel2TextStyle, v101);
  }

  labelLevel3TextStyle = self->_labelLevel3TextStyle;
  if (labelLevel3TextStyle)
  {
    *(v6 + 20) |= 0x8000u;
    v104 = *(v6 + 456);
    if (!v104)
    {
      v105 = *(v6 + 8);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = MEMORY[0x223DA0390](v105);
      *(v6 + 456) = v104;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel3TextStyle, v104);
  }

  labelLevel4TextStyle = self->_labelLevel4TextStyle;
  if (labelLevel4TextStyle)
  {
    *(v6 + 20) |= 0x10000u;
    v107 = *(v6 + 464);
    if (!v107)
    {
      v108 = *(v6 + 8);
      if (v108)
      {
        v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
      }

      v107 = MEMORY[0x223DA0390](v108);
      *(v6 + 464) = v107;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel4TextStyle, v107);
  }

  labelLevel5TextStyle = self->_labelLevel5TextStyle;
  if (labelLevel5TextStyle)
  {
    *(v6 + 20) |= 0x20000u;
    v110 = *(v6 + 472);
    if (!v110)
    {
      v111 = *(v6 + 8);
      if (v111)
      {
        v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
      }

      v110 = MEMORY[0x223DA0390](v111);
      *(v6 + 472) = v110;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v51, labelLevel5TextStyle, v110);
  }

  tableNameStyle = self->_tableNameStyle;
  *(v6 + 16) |= 0x10000u;
  v113 = *(v6 + 208);
  if (!v113)
  {
    v114 = *(v6 + 8);
    if (v114)
    {
      v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
    }

    v113 = MEMORY[0x223DA0390](v114);
    *(v6 + 208) = v113;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v51, tableNameStyle, v113);
  tableNameShapeStyle = self->_tableNameShapeStyle;
  *(v6 + 16) |= 0x80000u;
  v117 = *(v6 + 232);
  if (!v117)
  {
    v118 = *(v6 + 8);
    if (v118)
    {
      v118 = *(v118 & 0xFFFFFFFFFFFFFFFELL);
    }

    v117 = MEMORY[0x223DA0390](v118);
    *(v6 + 232) = v117;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v115, tableNameShapeStyle, v117);
  pivotBodySummaryRowCellStyle = self->_pivotBodySummaryRowCellStyle;
  if (pivotBodySummaryRowCellStyle)
  {
    *(v6 + 20) |= 0x800000u;
    v123 = *(v6 + 520);
    if (!v123)
    {
      v124 = *(v6 + 8);
      if (v124)
      {
        v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
      }

      v123 = MEMORY[0x223DA0390](v124);
      *(v6 + 520) = v123;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v119, pivotBodySummaryRowCellStyle, v123);
  }

  pivotBodySummaryColumnCellStyle = self->_pivotBodySummaryColumnCellStyle;
  if (pivotBodySummaryColumnCellStyle)
  {
    *(v6 + 20) |= 0x1000000u;
    v126 = *(v6 + 528);
    if (!v126)
    {
      v127 = *(v6 + 8);
      if (v127)
      {
        v127 = *(v127 & 0xFFFFFFFFFFFFFFFELL);
      }

      v126 = MEMORY[0x223DA0390](v127);
      *(v6 + 528) = v126;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v119, pivotBodySummaryColumnCellStyle, v126);
  }

  pivotHeaderColumnSummaryCellStyle = self->_pivotHeaderColumnSummaryCellStyle;
  if (pivotHeaderColumnSummaryCellStyle)
  {
    *(v6 + 20) |= 0x2000000u;
    v129 = *(v6 + 536);
    if (!v129)
    {
      v130 = *(v6 + 8);
      if (v130)
      {
        v130 = *(v130 & 0xFFFFFFFFFFFFFFFELL);
      }

      v129 = MEMORY[0x223DA0390](v130);
      *(v6 + 536) = v129;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v119, pivotHeaderColumnSummaryCellStyle, v129);
  }

  styleApplyClearsAll = self->_styleApplyClearsAll;
  *(v6 + 24) |= 0x40u;
  *(v6 + 598) = styleApplyClearsAll;
  v132 = objc_msgSend_tableStylePreset(self, v119, v120, v121);

  if (v132)
  {
    if (objc_msgSend_presetNeedsStrongOwnership(self, v133, v134, v135))
    {
      *(v6 + 24) |= 0x20000u;
      *(v6 + 628) = 1;
      v140 = objc_msgSend_tableStylePreset(self, v136, v137, v138);
      *(v6 + 16) |= 0x4000000u;
      v141 = *(v6 + 288);
      if (!v141)
      {
        v142 = *(v6 + 8);
        if (v142)
        {
          v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
        }

        v141 = MEMORY[0x223DA0390](v142);
        *(v6 + 288) = v141;
      }

      objc_msgSend_setStrongReference_message_(archiverCopy, v139, v140, v141);
    }

    else
    {
      v140 = objc_msgSend_tableStylePreset(self, v136, v137, v138);
      *(v6 + 16) |= 0x4000000u;
      v144 = *(v6 + 288);
      if (!v144)
      {
        v145 = *(v6 + 8);
        if (v145)
        {
          v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
        }

        v144 = MEMORY[0x223DA0390](v145);
        *(v6 + 288) = v144;
      }

      objc_msgSend_setWeakReference_message_(archiverCopy, v143, v140, v144);
    }
  }

  v146 = TSKUIDStruct::description(&self->_tableUID);
  v150 = objc_msgSend_tsp_protobufString(v146, v147, v148, v149);
  *(v6 + 16) |= 1u;
  sub_22108CCD0(&__p, v150);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v349 < 0)
  {
    operator delete(__p._lower);
  }

  if ((self->_fromTableUID._lower || self->_fromTableUID._upper) && objc_msgSend_isForCopy(archiverCopy, v151, v152, v153))
  {
    v154 = TSKUIDStruct::description(&self->_fromTableUID);
    v158 = objc_msgSend_tsp_protobufString(v154, v155, v156, v157);
    *(v6 + 16) |= 4u;
    sub_22108CCD0(&__p, v158);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v349 < 0)
    {
      operator delete(__p._lower);
    }
  }

  if ((self->_fromGroupByUID._lower || self->_fromGroupByUID._upper) && objc_msgSend_isForCopy(archiverCopy, v151, v152, v153))
  {
    v159 = TSKUIDStruct::description(&self->_fromGroupByUID);
    v163 = objc_msgSend_tsp_protobufString(v159, v160, v161, v162);
    *(v6 + 16) |= 8u;
    sub_22108CCD0(&__p, v163);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v349 < 0)
    {
      operator delete(__p._lower);
    }
  }

  v164 = objc_msgSend_numberOfRows(self, v151, v152, v153);
  *(v6 + 20) |= 0x8000000u;
  *(v6 + 552) = v164;
  v168 = objc_msgSend_numberOfColumns(self, v165, v166, v167);
  v172 = *(v6 + 20);
  v173 = v172 | 0x10000000;
  *(v6 + 20) = v172 | 0x10000000;
  *(v6 + 556) = v168;
  row = self->_numberOfHeaderRows._row;
  if (row)
  {
    v173 = v172 | 0x30000000;
    *(v6 + 20) = v172 | 0x30000000;
    *(v6 + 560) = row;
  }

  column = self->_numberOfHeaderColumns._column;
  if (self->_numberOfHeaderColumns._column)
  {
    v173 |= 0x40000000u;
    *(v6 + 20) = v173;
    *(v6 + 564) = column;
    headerColumnsFrozen = self->_headerColumnsFrozen;
    *(v6 + 24) |= 0x10u;
    *(v6 + 596) = headerColumnsFrozen;
  }

  v177 = self->_numberOfFooterRows._row;
  if (v177)
  {
    *(v6 + 20) = v173 | 0x80000000;
    *(v6 + 568) = v177;
  }

  v178 = *(v6 + 24);
  if (self->_headerRowsFrozen)
  {
    v178 |= 0x1000u;
    *(v6 + 24) = v178;
    *(v6 + 607) = 1;
  }

  if (self->_headerColumnsFrozen)
  {
    v178 |= 0x10u;
    *(v6 + 24) = v178;
    *(v6 + 596) = 1;
  }

  *(v6 + 576) = self->_defaultRowHeight;
  defaultColumnWidth = self->_defaultColumnWidth;
  *(v6 + 24) = v178 | 6;
  *(v6 + 584) = defaultColumnWidth;
  v180 = objc_msgSend_tsp_protobufString(self->_tableName, v169, v170, v171);
  *(v6 + 16) |= 2u;
  sub_22108CCD0(&__p, v180);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v349 < 0)
  {
    operator delete(__p._lower);
  }

  tableNameHeight = self->_tableNameHeight;
  v184 = *(v6 + 24);
  v185 = v184 | 0x2000;
  *(v6 + 24) = v184 | 0x2000;
  *(v6 + 608) = tableNameHeight;
  if (self->_tableNameEnabled)
  {
    v185 = v184 | 0x2400;
    *(v6 + 24) = v184 | 0x2400;
    *(v6 + 605) = 1;
  }

  if (self->_tableNameBorderEnabled)
  {
    v185 |= 0x800u;
    *(v6 + 24) = v185;
    *(v6 + 606) = 1;
  }

  if (self->_repeatingHeaderRowsEnabled)
  {
    v185 |= 0x20u;
    *(v6 + 24) = v185;
    *(v6 + 597) = 1;
  }

  if (self->_repeatingHeaderColumnsEnabled)
  {
    *(v6 + 24) = v185 | 0x80;
    *(v6 + 599) = 1;
  }

  sortOrder = self->_sortOrder;
  if (sortOrder)
  {
    *(v6 + 16) |= 0x400000u;
    v187 = *(v6 + 256);
    if (!v187)
    {
      v188 = *(v6 + 8);
      if (v188)
      {
        v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
      }

      v187 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive>(v188);
      *(v6 + 256) = v187;
    }

    objc_msgSend_encodeToArchive_(sortOrder, v181, v187, v182);
  }

  sortRuleReferenceTracker = self->_sortRuleReferenceTracker;
  *(v6 + 16) |= 0x800000u;
  v190 = *(v6 + 264);
  if (!v190)
  {
    v191 = *(v6 + 8);
    if (v191)
    {
      v191 = *(v191 & 0xFFFFFFFFFFFFFFFELL);
    }

    v190 = google::protobuf::Arena::CreateMaybeMessage<TST::SortRuleReferenceTrackerArchive>(v191);
    *(v6 + 264) = v190;
  }

  objc_msgSend_encodeToArchive_archiver_(sortRuleReferenceTracker, v181, v190, archiverCopy);
  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    *(v6 + 16) |= 0x1000000u;
    v196 = *(v6 + 272);
    if (!v196)
    {
      v197 = *(v6 + 8);
      if (v197)
      {
        v197 = *(v197 & 0xFFFFFFFFFFFFFFFELL);
      }

      v196 = MEMORY[0x223DA0390](v197);
      *(v6 + 272) = v196;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v192, columnRowUIDMap, v196);
  }

  strokeSidecar = self->_strokeSidecar;
  if (strokeSidecar)
  {
    *(v6 + 16) |= 0x8000000u;
    v199 = *(v6 + 296);
    if (!v199)
    {
      v200 = *(v6 + 8);
      if (v200)
      {
        v200 = *(v200 & 0xFFFFFFFFFFFFFFFELL);
      }

      v199 = MEMORY[0x223DA0390](v200);
      *(v6 + 296) = v199;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v192, strokeSidecar, v199);
  }

  __p._lower = objc_msgSend_ownerUID(self->_conditionalStyleFormulaOwner, v192, v193, v194);
  __p._upper = v201;
  *(v6 + 16) |= 0x200000u;
  v202 = *(v6 + 248);
  if (!v202)
  {
    v203 = *(v6 + 8);
    if (v203)
    {
      v203 = *(v203 & 0xFFFFFFFFFFFFFFFELL);
    }

    v202 = MEMORY[0x223DA0300](v203);
    *(v6 + 248) = v202;
  }

  TSKUIDStruct::saveToMessage(&__p, v202);
  mergeOwner = self->_mergeOwner;
  if (mergeOwner)
  {
    *(v6 + 16) |= 0x2000000u;
    v208 = *(v6 + 280);
    if (!v208)
    {
      v209 = *(v6 + 8);
      if (v209)
      {
        v209 = *(v209 & 0xFFFFFFFFFFFFFFFELL);
      }

      v208 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOwnerArchive>(v209);
      *(v6 + 280) = v208;
    }

    objc_msgSend_saveToArchive_archiver_(mergeOwner, v204, v208, archiverCopy);
  }

  pencilAnnotationOwner = self->_pencilAnnotationOwner;
  if (pencilAnnotationOwner)
  {
    *(v6 + 20) |= 0x80000u;
    v211 = *(v6 + 488);
    if (!v211)
    {
      v212 = *(v6 + 8);
      if (v212)
      {
        v212 = *(v212 & 0xFFFFFFFFFFFFFFFELL);
      }

      v211 = google::protobuf::Arena::CreateMaybeMessage<TST::PencilAnnotationOwnerArchive>(v212);
      *(v6 + 488) = v211;
    }

    objc_msgSend_saveToArchive_archiver_(pencilAnnotationOwner, v204, v211, archiverCopy);
  }

  textImportRecord = self->_textImportRecord;
  if (textImportRecord)
  {
    *(v6 + 16) |= 0x10000000u;
    v214 = *(v6 + 304);
    if (!v214)
    {
      v215 = *(v6 + 8);
      if (v215)
      {
        v215 = *(v215 & 0xFFFFFFFFFFFFFFFELL);
      }

      v214 = google::protobuf::Arena::CreateMaybeMessage<TST::StructuredTextImportRecord>(v215);
      *(v6 + 304) = v214;
    }

    objc_msgSend_encodeToArchive_(textImportRecord, v204, v214, v206);
  }

  categoryOwner = self->_categoryOwner;
  if (categoryOwner)
  {
    *(v6 + 20) |= 0x400000u;
    v217 = *(v6 + 512);
    if (!v217)
    {
      v218 = *(v6 + 8);
      if (v218)
      {
        v218 = *(v218 & 0xFFFFFFFFFFFFFFFELL);
      }

      v217 = MEMORY[0x223DA0390](v218);
      *(v6 + 512) = v217;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v204, categoryOwner, v217);
    if (objc_msgSend_backwardCompatibleToPrePivot(self->_categoryOwner, v219, v220, v221))
    {
      v223 = self->_categoryOwner;
      *(v6 + 20) |= 0x40000u;
      v224 = *(v6 + 480);
      if (!v224)
      {
        v225 = *(v6 + 8);
        if (v225)
        {
          v225 = *(v225 & 0xFFFFFFFFFFFFFFFELL);
        }

        v224 = google::protobuf::Arena::CreateMaybeMessage<TST::CategoryOwnerArchive>(v225);
        *(v6 + 480) = v224;
      }

      objc_msgSend_saveToArchive_archiver_(v223, v222, v224, archiverCopy);
      objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v226, 81, v6);
    }

    else
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v222, 0xB000200000006, @"TSTPivotTables");
    }
  }

  pivotOwner = self->_pivotOwner;
  if (pivotOwner)
  {
    *(v6 + 20) |= 0x200000u;
    v228 = *(v6 + 504);
    if (!v228)
    {
      v229 = *(v6 + 8);
      if (v229)
      {
        v229 = *(v229 & 0xFFFFFFFFFFFFFFFELL);
      }

      v228 = MEMORY[0x223DA0390](v229);
      *(v6 + 504) = v228;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v204, pivotOwner, v228);
  }

  v230 = objc_msgSend_hiddenStatesOwner(self, v204, v205, v206);
  v231 = v230 == 0;

  if (!v231)
  {
    v236 = objc_msgSend_hiddenStatesOwner(self, v232, v233, v234);
    *(v6 + 20) |= 0x80u;
    v237 = *(v6 + 392);
    if (!v237)
    {
      v238 = *(v6 + 8);
      if (v238)
      {
        v238 = *(v238 & 0xFFFFFFFFFFFFFFFELL);
      }

      v237 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesOwnerArchive>(v238);
      *(v6 + 392) = v237;
    }

    objc_msgSend_saveToArchive_archiver_(v236, v235, v237, archiverCopy);
  }

  v239 = objc_msgSend_hauntedOwner(self, v232, v233, v234);
  v240 = v239 == 0;

  if (!v240)
  {
    v245 = objc_msgSend_hauntedOwner(self, v241, v242, v243);
    *(v6 + 20) |= 0x100000u;
    v246 = *(v6 + 496);
    if (!v246)
    {
      v247 = *(v6 + 8);
      if (v247)
      {
        v247 = *(v247 & 0xFFFFFFFFFFFFFFFELL);
      }

      v246 = google::protobuf::Arena::CreateMaybeMessage<TSCE::HauntedOwnerArchive>(v247);
      *(v6 + 496) = v246;
    }

    objc_msgSend_saveToArchive_archiver_(v245, v244, v246, archiverCopy);
  }

  v248 = objc_msgSend_spillOwner(self, v241, v242, v243);
  v249 = v248 == 0;

  if (!v249)
  {
    v254 = objc_msgSend_spillOwner(self, v250, v251, v252);
    *(v6 + 20) |= 0x4000000u;
    v255 = *(v6 + 544);
    if (!v255)
    {
      v256 = *(v6 + 8);
      if (v256)
      {
        v256 = *(v256 & 0xFFFFFFFFFFFFFFFELL);
      }

      v255 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpillOwnerArchive>(v256);
      *(v6 + 544) = v255;
    }

    objc_msgSend_saveToArchive_archiver_(v254, v253, v255, archiverCopy);
  }

  hiddenStateFormulaOwnerForColumns = self->_hiddenStateFormulaOwnerForColumns;
  *(v6 + 16) |= 0x20000u;
  v258 = *(v6 + 216);
  if (!v258)
  {
    v259 = *(v6 + 8);
    if (v259)
    {
      v259 = *(v259 & 0xFFFFFFFFFFFFFFFELL);
    }

    v258 = MEMORY[0x223DA0390](v259);
    *(v6 + 216) = v258;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v250, hiddenStateFormulaOwnerForColumns, v258);
  hiddenStateFormulaOwnerForRows = self->_hiddenStateFormulaOwnerForRows;
  *(v6 + 16) |= 0x40000u;
  v262 = *(v6 + 224);
  if (!v262)
  {
    v263 = *(v6 + 8);
    if (v263)
    {
      v263 = *(v263 & 0xFFFFFFFFFFFFFFFELL);
    }

    v262 = MEMORY[0x223DA0390](v263);
    *(v6 + 224) = v262;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v260, hiddenStateFormulaOwnerForRows, v262);
  prePivotRowFilterSet = self->_prePivotRowFilterSet;
  if (prePivotRowFilterSet)
  {
    *(v6 + 16) |= 0x100000u;
    v268 = *(v6 + 240);
    if (!v268)
    {
      v269 = *(v6 + 8);
      if (v269)
      {
        v269 = *(v269 & 0xFFFFFFFFFFFFFFFELL);
      }

      v268 = MEMORY[0x223DA0390](v269);
      *(v6 + 240) = v268;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v264, prePivotRowFilterSet, v268);
  }

  else
  {
    v271 = objc_msgSend_hiddenStates(self->_hiddenStatesOwner, v264, v265, v266);
    v275 = objc_msgSend_filterSetForRows(v271, v272, v273, v274);

    if (v275 && objc_msgSend_ruleCount(v275, v276, v277, v278))
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v279, 0xB000200000006, @"TSTPivotTables");
    }
  }

  begin = self->_pivotValueTypesByColumn.__begin_;
  end = self->_pivotValueTypesByColumn.__end_;
  if (begin != end)
  {
    v282 = *(v6 + 32);
    do
    {
      v283 = *begin;
      if (v282 == *(v6 + 36))
      {
        sub_2210BBC64((v6 + 32), v282 + 1);
      }

      *(*(v6 + 40) + 4 * v282++) = v283;
      *(v6 + 32) = v282;
      ++begin;
    }

    while (begin != end);
  }

  begin_node = self->_pivotDateGroupingTypesByColumn.__tree_.__begin_node_;
  if (begin_node != &self->_pivotDateGroupingTypesByColumn.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      v286 = begin_node[5].__left_;
      v287 = *(v6 + 48);
      if (v287 == *(v6 + 52))
      {
        v288 = v287 + 1;
        sub_2210BBC64((v6 + 48), v287 + 1);
        *(*(v6 + 56) + 4 * v287) = left;
      }

      else
      {
        *(*(v6 + 56) + 4 * v287) = left;
        v288 = v287 + 1;
      }

      *(v6 + 48) = v288;
      v289 = *(v6 + 64);
      if (v289 == *(v6 + 68))
      {
        v290 = v289 + 1;
        sub_2210BBC64((v6 + 64), v289 + 1);
        *(*(v6 + 72) + 4 * v289) = v286;
      }

      else
      {
        *(*(v6 + 72) + 4 * v289) = v286;
        v290 = v289 + 1;
      }

      *(v6 + 64) = v290;
      isa = begin_node[1].__left_;
      if (isa)
      {
        do
        {
          v292 = isa;
          isa = isa->super.super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v292 = begin_node[2].__left_;
          v293 = v292->super.super.isa == begin_node;
          begin_node = v292;
        }

        while (!v293);
      }

      begin_node = v292;
    }

    while (v292 != &self->_pivotDateGroupingTypesByColumn.__tree_.__end_node_);
  }

  __p._lower = 0x1500000004;
  LODWORD(__p._upper) = 0;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForFieldPath_message_(archiverCopy, v270, &__p, v6);
  __p._lower = 0x1600000004;
  LODWORD(__p._upper) = 0;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForFieldPath_message_(archiverCopy, v294, &__p, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v295, 60, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v296, 61, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v297, 62, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v298, 63, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v299, 64, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v300, 65, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v301, 66, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v302, 67, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v303, 68, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v304, 69, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v305, 71, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v306, 72, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v307, 73, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v308, 74, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v309, 75, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v310, 76, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v311, 77, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v312, 78, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v313, 79, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v314, 80, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v315, 70, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v316, 82, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v317, 85, v6);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v318, 86, v6);
  v322 = objc_msgSend_archivingCompatibilityVersion(self, v319, v320, v321);
  if (objc_msgSend_tableSizeClass(self, v323, v324, v325) >= 2 && v322 <= 0xA000000000002)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Bad table model feature version!", "[TSTTableModel saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 3654);
    v340 = MEMORY[0x277D81150];
    v343 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v341, "[TSTTableModel saveToArchiver:]", v342);
    v346 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v344, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v345);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v340, v347, v343, v346, 3654, 1, "Bad table model feature version!");

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_setMessageVersion_(archiverCopy, v326, v322, v327);
  if (v322 == 0x300020000000ALL || v322 == 0x4000100000000)
  {
    goto LABEL_370;
  }

  if (v322 != 0xA000000000003)
  {
    if (*MEMORY[0x277D808F0] == v322)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v328, v322, @"TSTFutureProofCell");
      goto LABEL_371;
    }

    if (v322 <= 0xD000000000000)
    {
      if (v322 == 0xB000200000006)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v328, 0xB000200000006, @"TSTPivotTables");
        goto LABEL_371;
      }

      if (v322 == 0xC000000000007)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v328, 0xC000000000007, @"TSTPivotTables v2");
        goto LABEL_371;
      }
    }

    else
    {
      switch(v322)
      {
        case 0xD000000000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v328, 0xD000000000001, @"TSTDropPreBNCData");
          goto LABEL_371;
        case 0xD000000000002:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v328, 0xD000000000002, @"TSTPivotTables MoreAggregates");
          goto LABEL_371;
        case 0xE000400000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v328, 0xE000400000001, @"TSTArrayFormulas");
          goto LABEL_371;
      }
    }

    v330 = MEMORY[0x277D81150];
    v331 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v328, "NSString *TSTFeatureIdentifierForCompatibilityVersion(TSPVersion)", v329);
    v334 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v332, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCompatibility.h", v333);
    v335 = NSStringFromTSPVersion();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v330, v336, v331, v334, 99, 0, "Unimplemented version for TSTCompatibility: %@", v335);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v337, v338, v339);
LABEL_370:
    objc_msgSend_requiresDocumentVersion_(archiverCopy, v328, v322, v329);
    goto LABEL_371;
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v328, 0xA000000000003, @"TSTExpandedTables");
LABEL_371:
}

- (void)updateCalcEngineForTableSize
{
  if (objc_msgSend_isRegisteredWithCalcEngine(self, a2, v2, v3))
  {
    calcEngine = self->_calcEngine;
    if (calcEngine)
    {
      v27 = calcEngine;
    }

    else
    {
      v28 = objc_msgSend_documentRoot(self, v5, v6, v7);
      v15 = objc_msgSend_calculationEngine(v28, v12, v13, v14);

      v27 = v15;
    }

    v16 = objc_msgSend_range(self, v9, v10, v11);
    v18 = j__TSUCellRectToTSCERangeCoordinate(v16, v17);
    v20 = v19;
    v23 = objc_msgSend_bodyRange(self, v19, v21, v22);
    v25 = j__TSUCellRectToTSCERangeCoordinate(v23, v24);
    objc_msgSend_setTableRange_bodyRange_forTableUID_(v27, v26, v18, v20, v25, v26, &self->_tableUID);
  }
}

- (void)setPresetNeedsStrongOwnership:(BOOL)ownership
{
  if (self->_presetNeedsStrongOwnership != ownership)
  {
    objc_msgSend_willModify(self, a2, ownership, v3);
    self->_presetNeedsStrongOwnership = ownership;
  }
}

- (TSKUIDStruct)conditionalStyleFormulaOwnerUID
{
  v4 = objc_msgSend_conditionalStyleFormulaOwner(self, a2, v2, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_ownerUID(v4, v5, v6, v7);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = v9;
  v13 = v11;
  result._upper = v13;
  result._lower = v12;
  return result;
}

- (void)setTableName:(id)name
{
  nameCopy = name;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_storeStrong(&self->_tableName, name);
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v8, v9, v10))
  {
    v14 = objc_msgSend_calcEngine(self, v11, v12, v13);
    objc_msgSend_markIndirectCallsAsDirty(v14, v15, v16, v17);
  }
}

- (void)setTableNameEnabled:(BOOL)enabled
{
  if (self->_tableNameEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, enabled, v3);
    self->_tableNameEnabled = enabled;
  }
}

- (void)setTableNameBorderEnabled:(BOOL)enabled
{
  if (self->_tableNameBorderEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, enabled, v3);
    self->_tableNameBorderEnabled = enabled;
  }
}

- (void)setTableNameHeight:(double)height
{
  if (self->_tableNameHeight != height)
  {
    objc_msgSend_willModify(self, a2, v3, v4);
    self->_tableNameHeight = height;
  }
}

- (void)setRepeatingHeaderRowsEnabled:(BOOL)enabled
{
  if (self->_repeatingHeaderRowsEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, enabled, v3);
    self->_repeatingHeaderRowsEnabled = enabled;
  }
}

- (void)setRepeatingHeaderColumnsEnabled:(BOOL)enabled
{
  if (self->_repeatingHeaderColumnsEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, enabled, v3);
    self->_repeatingHeaderColumnsEnabled = enabled;
  }
}

- (void)setStyleApplyClearsAll:(BOOL)all
{
  if (self->_styleApplyClearsAll != all)
  {
    objc_msgSend_willModify(self, a2, all, v3);
    self->_styleApplyClearsAll = all;
  }
}

- (void)setHeaderRowsFrozen:(BOOL)frozen
{
  if (self->_headerRowsFrozen != frozen)
  {
    objc_msgSend_willModify(self, a2, frozen, v3);
    self->_headerRowsFrozen = frozen;
  }
}

- (void)setHeaderColumnsFrozen:(BOOL)frozen
{
  if (self->_headerColumnsFrozen != frozen)
  {
    objc_msgSend_willModify(self, a2, frozen, v3);
    self->_headerColumnsFrozen = frozen;
  }
}

- (void)setTableInfo:(id)info
{
  infoCopy = info;
  tableInfo = self->_tableInfo;
  v40 = infoCopy;
  if (tableInfo != infoCopy)
  {
    if (tableInfo)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel setTableInfo:]", v7);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 3726, 0, "Unexpected replacement of backpointer tableInfo %p with %p.", self->_tableInfo, v40);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    }

    if (!v40)
    {
      goto LABEL_13;
    }

    if (self->_isAPivotDataModel)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel setTableInfo:]", v7);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 3729, 0, "Do not set a tableInfo pointer on a pivotDataModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    calcEngine = self->_calcEngine;
    if (calcEngine)
    {
      v28 = calcEngine;
      v30 = objc_msgSend_ownerKindForOwnerUID_(v28, v29, self->_tableUID._lower, self->_tableUID._upper);
    }

    else
    {
      v28 = objc_msgSend_calcEngine(v40, v5, v6, v7);
      if (!v28)
      {
LABEL_12:

LABEL_13:
        self->_tableInfo = v40;
        objc_msgSend_setTableInfo_(self->_sortRuleReferenceTracker, v5, v40, v7);
        goto LABEL_14;
      }

      v30 = objc_msgSend_ownerKindForOwnerUID_(v28, v31, self->_tableUID._lower, self->_tableUID._upper);
    }

    if (v30 == 100)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Trying to set a non-nil tableInfo on tableModel of type %d, not allowed.", "[TSTTableModel setTableInfo:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", 3734, 100);
      v32 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTTableModel setTableInfo:]", v34);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v35, v38, 3734, 1, "Trying to set a non-nil tableInfo on tableModel of type %d, not allowed.", 100);

      TSUCrashBreakpoint();
      abort();
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)setIsAPivotDataModel:(BOOL)model
{
  if (model && self->_tableInfo)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setIsAPivotDataModel:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 3745, 0, "A pivotDataModel cannot have a tableInfo pointer.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  self->_isAPivotDataModel = model;
}

- (id)createPivotOwner
{
  pivotOwner = self->_pivotOwner;
  if (!pivotOwner)
  {
    objc_msgSend_willModify(self, a2, v2, v3);
    v6 = [TSTPivotOwner alloc];
    v9 = objc_msgSend_initWithTableModel_(v6, v7, self, v8);
    v10 = self->_pivotOwner;
    self->_pivotOwner = v9;

    pivotOwner = self->_pivotOwner;
  }

  return pivotOwner;
}

- (void)clearPivotOwner
{
  if (self->_pivotOwner)
  {
    objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
    pivotOwner = self->_pivotOwner;
    self->_pivotOwner = 0;
  }
}

- (void)setNumberOfHeaderRows:(TSUModelRowIndex)rows
{
  objc_msgSend_willModify(self, a2, *&rows._row, v3);
  self->_numberOfHeaderRows = rows;
  objc_msgSend_resetMergeCache(self->_mergeOwner, v6, v7, v8);

  objc_msgSend_updateCalcEngineForTableSize(self, v9, v10, v11);
}

- (void)setNumberOfFooterRows:(TSUModelRowIndex)rows
{
  objc_msgSend_willModify(self, a2, *&rows._row, v3);
  self->_numberOfFooterRows = rows;
  objc_msgSend_resetMergeCache(self->_mergeOwner, v6, v7, v8);

  objc_msgSend_updateCalcEngineForTableSize(self, v9, v10, v11);
}

- (void)setNumberOfHeaderColumns:(TSUModelColumnIndex)columns
{
  objc_msgSend_willModify(self, a2, *&columns._column, v3);
  self->_numberOfHeaderColumns = columns;
  objc_msgSend_resetMergeCache(self->_mergeOwner, v6, v7, v8);

  objc_msgSend_updateCalcEngineForTableSize(self, v9, v10, v11);
}

- (void)setTableStylePreset:(id)preset
{
  presetCopy = preset;
  if (self->_tableStylePreset != presetCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_tableStylePreset, preset);
  }
}

- (void)setTableStyle:(id)style
{
  styleCopy = style;
  if (self->_tableStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_tableStyle, style);
  }
}

- (void)setBodyCellStyle:(id)style
{
  styleCopy = style;
  if (self->_bodyCellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_bodyCellStyle, style);
  }
}

- (void)setHeaderRowCellStyle:(id)style
{
  styleCopy = style;
  if (self->_headerRowCellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_headerRowCellStyle, style);
  }
}

- (void)setHeaderColumnCellStyle:(id)style
{
  styleCopy = style;
  if (self->_headerColumnCellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_headerColumnCellStyle, style);
  }
}

- (void)setFooterRowCellStyle:(id)style
{
  styleCopy = style;
  if (self->_footerRowCellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_footerRowCellStyle, style);
  }
}

- (void)setCategoryLevel1CellStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel1CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel1CellStyle, style);
  }
}

- (void)setCategoryLevel2CellStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel2CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel2CellStyle, style);
  }
}

- (void)setCategoryLevel3CellStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel3CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel3CellStyle, style);
  }
}

- (void)setCategoryLevel4CellStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel4CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel4CellStyle, style);
  }
}

- (void)setCategoryLevel5CellStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel5CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel5CellStyle, style);
  }
}

- (void)setlabelLevel1CellStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel1CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel1CellStyle, style);
  }
}

- (void)setlabelLevel2CellStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel2CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel2CellStyle, style);
  }
}

- (void)setlabelLevel3CellStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel3CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel3CellStyle, style);
  }
}

- (void)setlabelLevel4CellStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel4CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel4CellStyle, style);
  }
}

- (void)setlabelLevel5CellStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel5CellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel5CellStyle, style);
  }
}

- (void)setBodyTextStyle:(id)style
{
  styleCopy = style;
  if (self->_bodyTextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_bodyTextStyle, style);
  }
}

- (void)setHeaderRowTextStyle:(id)style
{
  styleCopy = style;
  if (self->_headerRowTextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_headerRowTextStyle, style);
  }
}

- (void)setHeaderColumnTextStyle:(id)style
{
  styleCopy = style;
  if (self->_headerColumnTextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_headerColumnTextStyle, style);
  }
}

- (void)setFooterRowTextStyle:(id)style
{
  styleCopy = style;
  if (self->_footerRowTextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_footerRowTextStyle, style);
  }
}

- (void)setCategoryLevel1TextStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel1TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel1TextStyle, style);
  }
}

- (void)setCategoryLevel2TextStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel2TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel2TextStyle, style);
  }
}

- (void)setCategoryLevel3TextStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel3TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel3TextStyle, style);
  }
}

- (void)setCategoryLevel4TextStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel4TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel4TextStyle, style);
  }
}

- (void)setCategoryLevel5TextStyle:(id)style
{
  styleCopy = style;
  if (self->_categoryLevel5TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_categoryLevel5TextStyle, style);
  }
}

- (void)setlabelLevel1TextStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel1TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel1TextStyle, style);
  }
}

- (void)setlabelLevel2TextStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel2TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel2TextStyle, style);
  }
}

- (void)setlabelLevel3TextStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel3TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel3TextStyle, style);
  }
}

- (void)setlabelLevel4TextStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel4TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel4TextStyle, style);
  }
}

- (void)setlabelLevel5TextStyle:(id)style
{
  styleCopy = style;
  if (self->_labelLevel5TextStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_labelLevel5TextStyle, style);
  }
}

- (void)setTableNameStyle:(id)style
{
  styleCopy = style;
  if (self->_tableNameStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_tableNameStyle, style);
  }
}

- (void)setTableNameShapeStyle:(id)style
{
  styleCopy = style;
  if (self->_tableNameShapeStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_tableNameShapeStyle, style);
  }
}

- (void)setPivotBodySummaryRowCellStyle:(id)style
{
  styleCopy = style;
  if (self->_pivotBodySummaryRowCellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_pivotBodySummaryRowCellStyle, style);
  }
}

- (void)setPivotBodySummaryColumnCellStyle:(id)style
{
  styleCopy = style;
  if (self->_pivotBodySummaryColumnCellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_pivotBodySummaryColumnCellStyle, style);
  }
}

- (void)setPivotHeaderColumnSummaryCellStyle:(id)style
{
  styleCopy = style;
  if (self->_pivotHeaderColumnSummaryCellStyle != styleCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_pivotHeaderColumnSummaryCellStyle, style);
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

- (void)setTextImportRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v8 = objc_msgSend_importSettings(recordCopy, v5, v6, v7);
    v12 = objc_msgSend_type(v8, v9, v10, v11);

    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel setTextImportRecord:]", v7);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 3831, 0, "Bad import record type!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    }
  }

  if (self->_textImportRecord != recordCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_textImportRecord, record);
  }
}

- (TSTOwnerUidMapper)ownerUIDMapper
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_summaryModel(v5, v6, v7, v8);
  v58[0] = objc_msgSend_aggregateFormulaOwnerUID(v9, v10, v11, v12);
  v58[1] = v13;

  v14 = [TSTOwnerUidMapper alloc];
  v18 = objc_msgSend_hiddenStates(v5, v15, v16, v17);
  v57[0] = objc_msgSend_hiddenStateOwnerForRowsUID(v18, v19, v20, v21);
  v57[1] = v22;
  v25 = objc_msgSend_hiddenStates(v5, v22, v23, v24);
  v56[0] = objc_msgSend_hiddenStateOwnerForColumnsUID(v25, v26, v27, v28);
  v56[1] = v29;
  v55[0] = objc_msgSend_ownerUID(self->_conditionalStyleFormulaOwner, v29, v30, v31);
  v55[1] = v32;
  v54[0] = objc_msgSend_ownerUID(self->_sortRuleReferenceTracker, v32, v33, v34);
  v54[1] = v35;
  v53[0] = objc_msgSend_ownerUID(self->_mergeOwner, v35, v36, v37);
  v53[1] = v38;
  v52[0] = objc_msgSend_ownerUID(self->_pencilAnnotationOwner, v38, v39, v40);
  v52[1] = v41;
  v44 = objc_msgSend_groupBy(v5, v41, v42, v43);
  v51[0] = objc_msgSend_groupByUid(v44, v45, v46, v47);
  v51[1] = v48;
  v49 = objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(v14, v48, &self->_fromTableUID, &self->_tableUID, v57, v56, v55, v54, v53, v52, v58, v51);

  return v49;
}

- (TSTOwnerUidMapper)upgradeToSubOwnerUIDMapper
{
  v4 = objc_msgSend_ownerUIDMapper(self, a2, v2, v3);
  objc_msgSend_setToUpgradeMapping(v4, v5, v6, v7);

  return v4;
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
    v16 = objc_msgSend_ownerUID(self->_conditionalStyleFormulaOwner, v9, v10, v11);
    v17 = v13;
    if (!(v16 | v13) || (v16 == sub_2212C4930(&self->_tableUID._lower, 3, v14, v15) ? (v18 = v17 == v13) : (v18 = 0), v18))
    {
      v32 = 1;
    }

    else
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableModel verifySubOwnerUIDsUsed]", v15);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v22);
      v27 = objc_msgSend_tableName(self, v24, v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v28, v20, v23, 3869, 0, "Conditional styles ownerUid isn't subOwner uid for table:%@", v27);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
      v32 = 0;
    }

    v36 = objc_msgSend_ownerUID(self->_sortRuleReferenceTracker, v13, v14, v15);
    v37 = v33;
    if (v36 | v33)
    {
      if (v36 != sub_2212C4930(&self->_tableUID._lower, 6, v34, v35) || v37 != v33)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTTableModel verifySubOwnerUIDsUsed]", v35);
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v42);
        v158._lower = objc_msgSend_tableUID(self, v44, v45, v46);
        v158._upper = v47;
        v48 = TSKUIDStruct::description(&v158);
        v52 = objc_msgSend_tableName(self, v49, v50, v51);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v53, v40, v43, 3877, 0, "TableModel %@: Sort Rule ownerUid isn't subOwner uid table:%@", v48, v52);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
        v32 = 0;
      }
    }

    v60 = objc_msgSend_ownerUID(self->_mergeOwner, v33, v34, v35);
    v61 = v57;
    if (v60 | v57)
    {
      if (v60 != sub_2212C4930(&self->_tableUID._lower, 5, v58, v59) || v61 != v57)
      {
        v63 = MEMORY[0x277D81150];
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "[TSTTableModel verifySubOwnerUIDsUsed]", v59);
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v66);
        v71 = objc_msgSend_tableName(self, v68, v69, v70);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v72, v64, v67, 3884, 0, "Merge ownerUid isn't subOwner uid table:%@", v71);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
        v32 = 0;
      }
    }

    v79 = objc_msgSend_ownerUID(self->_pencilAnnotationOwner, v57, v58, v59);
    v80 = v76;
    if (v79 | v76 && (v79 != sub_2212C4930(&self->_tableUID._lower, 0xA, v77, v78) || v80 != v76))
    {
      v81 = MEMORY[0x277D81150];
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "[TSTTableModel verifySubOwnerUIDsUsed]", v78);
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v84);
      v89 = objc_msgSend_tableName(self, v86, v87, v88);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v90, v82, v85, 3892, 0, "Pencil Annotation ownerUid isn't subOwner uid table:%@", v89);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93);
      v32 = 0;
    }

    pivotOwner = self->_pivotOwner;
    if (pivotOwner)
    {
      v96 = objc_msgSend_ownerUID(pivotOwner, v76, v77, v78);
      v97 = v76;
      if (v96 | v76)
      {
        if (v96 != sub_2212C4930(&self->_tableUID._lower, 0x11, v95, v78) || v97 != v76)
        {
          v98 = MEMORY[0x277D81150];
          v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "[TSTTableModel verifySubOwnerUIDsUsed]", v78);
          v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v101);
          v106 = objc_msgSend_tableName(self, v103, v104, v105);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v107, v99, v102, 3901, 0, "Pivot ownerUid isn't subOwner uid table:%@", v106);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109, v110);
          v32 = 0;
        }
      }
    }

    LODWORD(v12) = v32 & objc_msgSend_verifySubOwnerUIDsUsed_(self->_categoryOwner, v76, &self->_tableUID, v78);
    hiddenStateFormulaOwnerForRows = self->_hiddenStateFormulaOwnerForRows;
    if (hiddenStateFormulaOwnerForRows)
    {
      v115 = objc_msgSend_ownerUID(hiddenStateFormulaOwnerForRows, v111, v112, v113);
      if (v115 | v111)
      {
        v116 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForRows, v111, v112, v113);
        v118 = v117;
        if (v116 != sub_2212C4930(&self->_tableUID._lower, 4, v119, v120) || v118 != v111)
        {
          v121 = MEMORY[0x277D81150];
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSTTableModel verifySubOwnerUIDsUsed]", v113);
          v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v123);
          v128 = objc_msgSend_tableName(self, v125, v126, v127);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v129, v12, v124, 3912, 0, "TSTHiddenStateFORMULAOwner ownerUid isn't subOwner uid table:%@", v128);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132);
          LOBYTE(v12) = 0;
        }
      }
    }

    hiddenStateFormulaOwnerForColumns = self->_hiddenStateFormulaOwnerForColumns;
    if (hiddenStateFormulaOwnerForColumns)
    {
      v134 = objc_msgSend_ownerUID(hiddenStateFormulaOwnerForColumns, v111, v112, v113);
      if (v134 | v135)
      {
        v138 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForColumns, v135, v136, v137);
        v140 = v139;
        if (v138 != sub_2212C4930(&self->_tableUID._lower, 0xB, v141, v142) || v140 != v143)
        {
          v145 = MEMORY[0x277D81150];
          v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, "[TSTTableModel verifySubOwnerUIDsUsed]", v144);
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v148);
          v152 = objc_msgSend_tableName(self, v149, v150, v151);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v153, v146, v12, 3919, 0, "TSTHiddenStateFORMULAOwner ownerUid isn't subOwner uid table:%@", v152);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v155, v156);
          LOBYTE(v12) = 0;
        }
      }
    }
  }

  return v12;
}

- (TSTOwnerUidMapper)identityOwnerUIDMapper
{
  v4 = objc_msgSend_ownerUIDMapper(self, a2, v2, v3);
  objc_msgSend_setToIdentityMapping(v4, v5, v6, v7);

  return v4;
}

- (int)tableWritingDirection
{
  v4 = objc_msgSend_tableStyle(self, a2, v2, v3);
  v7 = objc_msgSend_intValueForProperty_(v4, v5, 798, v6);

  return v7;
}

- (id)metadataForRowIndex:(TSUModelRowIndex)index hidingAction:(unsigned __int8)action
{
  v4 = *&index._row;
  if (index._row == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    actionCopy = action;
    v8 = objc_msgSend_rowUIDForRowIndex_(self->_columnRowUIDMap, a2, *&index._row, action);
    v5 = objc_msgSend_metadataForRowIndex_hidingAction_uuid_(self->_dataStore, v9, v4, actionCopy, v8, v9);
  }

  return v5;
}

- (id)metadataForColumnIndex:(TSUModelColumnIndex)index hidingAction:(unsigned __int8)action
{
  if (index._column == 0x7FFF)
  {
    v5 = 0;
  }

  else
  {
    actionCopy = action;
    v8 = objc_msgSend_columnUIDForColumnIndex_(self->_columnRowUIDMap, a2, index._column, action);
    v5 = objc_msgSend_metadataForColumnIndex_hidingAction_uuid_(self->_dataStore, v9, index._column, actionCopy, v8, v9);
  }

  return v5;
}

- (void)p_createCommentMapsIfNeeded
{
  commentStorageMap = self->_commentStorageMap;
  if (self->_commentHostingMap)
  {
    if (commentStorageMap)
    {
      return;
    }

    goto LABEL_5;
  }

  if (commentStorageMap)
  {
LABEL_5:
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel p_createCommentMapsIfNeeded]", v2);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 3980, 0, "_commentStorageMap should be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v14 = objc_alloc(MEMORY[0x277CCAB00]);
  v16 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v14, v15, 5, 0, 1);
  commentHostingMap = self->_commentHostingMap;
  self->_commentHostingMap = v16;

  v18 = objc_alloc(MEMORY[0x277CCAB00]);
  v20 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v18, v19, 0, 5, 1);
  v21 = self->_commentStorageMap;
  self->_commentStorageMap = v20;
}

- (NSMapTable)commentHostingMap
{
  objc_msgSend_p_createCommentMapsIfNeeded(self, a2, v2, v3);
  commentHostingMap = self->_commentHostingMap;

  return commentHostingMap;
}

- (NSMapTable)commentStorageMap
{
  objc_msgSend_p_createCommentMapsIfNeeded(self, a2, v2, v3);
  commentStorageMap = self->_commentStorageMap;

  return commentStorageMap;
}

- (unint64_t)tableSizeClass
{
  v5 = objc_msgSend_numberOfRows(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfColumns(self, v6, v7, v8);
  v13 = v9;
  if (!HIWORD(v5) && v9 <= 0xFFu)
  {
    if (v9 != 255)
    {
      return 1;
    }

    v14 = objc_msgSend_tableInfo(self, v10, v11, v12);
    isCategorized = objc_msgSend_isCategorized(v14, v15, v16, v17);

    if (!isCategorized)
    {
      return 1;
    }
  }

  if (v13 * v5 > 0x2625A0 || v5 > 0x3D090)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)archivingCompatibilityVersion
{
  result = self->_archivingCompatibilityVersion;
  if (result >= 0x300020000000ALL)
  {
    if (result > 0xA000000000002)
    {
      return result;
    }
  }

  else
  {
    self->_archivingCompatibilityVersion = 0x300020000000ALL;
  }

  if (objc_msgSend_tableSizeClass(self, a2, v2, v3) >= 2)
  {
    self->_archivingCompatibilityVersion = 0xA000000000003;
  }

  v9 = objc_msgSend_archivingCompatibilityVersion(self->_dataStore, v6, v7, v8);
  result = self->_archivingCompatibilityVersion;
  if (v9 > result)
  {
    self->_archivingCompatibilityVersion = v9;
    return v9;
  }

  return result;
}

- (TSTTableSortOrder)sortOrder
{
  sortOrder = self->_sortOrder;
  if (sortOrder)
  {
    v3 = sortOrder;
  }

  else
  {
    v3 = objc_msgSend_sortOrderWithRules_type_(TSTTableSortOrder, a2, MEMORY[0x277CBEBF8], 0);
  }

  return v3;
}

- (void)setSortOrder:(id)order
{
  orderCopy = order;
  objc_msgSend_willModify(self, v4, v5, v6);
  v10 = objc_msgSend_copy(orderCopy, v7, v8, v9);
  objc_storeStrong(&self->_sortOrder, v10);
  sortRuleReferenceTracker = self->_sortRuleReferenceTracker;
  v15 = objc_msgSend_rules(self->_sortOrder, v12, v13, v14);
  objc_msgSend_updateForSortRules_(sortRuleReferenceTracker, v16, v15, v17);
}

- (void)resetSortRuleReferenceTrackerForInsert
{
  sortRuleReferenceTracker = self->_sortRuleReferenceTracker;
  v7 = objc_msgSend_rules(self->_sortOrder, a2, v2, v3);
  objc_msgSend_updateForSortRules_(sortRuleReferenceTracker, v5, v7, v6);
}

- (TSTCellWillChangeDistributor)cellWillChangeDistributor
{
  cellWillChangeDistributor = self->_cellWillChangeDistributor;
  if (!cellWillChangeDistributor)
  {
    v4 = objc_opt_new();
    v5 = self->_cellWillChangeDistributor;
    self->_cellWillChangeDistributor = v4;

    cellWillChangeDistributor = self->_cellWillChangeDistributor;
  }

  return cellWillChangeDistributor;
}

- (void)setTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  objc_msgSend_willModify(self, a2, d._lower, d._upper);
  p_tableUID = &self->_tableUID;
  self->_tableUID._lower = lower;
  self->_tableUID._upper = upper;
  v37 = objc_msgSend_hiddenStatesOwner(self, v7, v8, v9);
  objc_msgSend_setBaseTableUID_(v37, v10, lower, upper);

  v38 = objc_msgSend_categoryOwner(self, v11, v12, v13);
  objc_msgSend_setBaseTableUID_(v38, v14, lower, upper);

  v39 = objc_msgSend_hauntedOwner(self, v15, v16, v17);
  objc_msgSend_setBaseTableUID_(v39, v18, lower, upper);

  v40 = objc_msgSend_spillOwner(self, v19, v20, v21);
  objc_msgSend_setBaseTableUID_(v40, v22, lower, upper);

  v41 = objc_msgSend_sortRuleReferenceTracker(self, v23, v24, v25);
  objc_msgSend_setBaseTableUID_(v41, v26, lower, upper);

  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    v42 = objc_msgSend_summaryModel(tableInfo, v27, v28, v29);
    v34 = objc_msgSend_aggregateFormulaOwner(v42, v31, v32, v33);
    objc_msgSend_setTableUID_(v34, v35, p_tableUID, v36);
  }
}

- (NSUUID)nsTableUID
{
  v7._lower = objc_msgSend_tableUID(self, a2, v2, v3);
  v7._upper = v4;
  v5 = TSKUIDStruct::NSUUIDValue(&v7);

  return v5;
}

- (void)setFromTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  objc_msgSend_willModify(self, a2, d._lower, d._upper);
  self->_fromTableUID._lower = lower;
  self->_fromTableUID._upper = upper;
}

- (void)setFromGroupByUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  objc_msgSend_willModify(self, a2, d._lower, d._upper);
  self->_fromGroupByUID._lower = lower;
  self->_fromGroupByUID._upper = upper;
}

- (void)setWasCut:(BOOL)cut
{
  if (self->_wasCut != cut)
  {
    objc_msgSend_willModify(self, a2, cut, v3);
    self->_wasCut = cut;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v8 = objc_msgSend_tableName(self, v5, v6, v7);
  v25._lower = objc_msgSend_tableUID(self, v9, v10, v11);
  v25._upper = v12;
  v15 = TSKUIDStruct::description(&v25);
  if (*&self->_fromTableUID == 0)
  {
    v23 = 0;
    v24 = &stru_2834BADA0;
    objc_msgSend_stringWithFormat_(v3, v13, @"<%@> %@ (%@%@)", v14, v4, v8, v15, &stru_2834BADA0);
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    self = TSKUIDStruct::description(&self->_fromTableUID);
    v24 = objc_msgSend_stringWithFormat_(v16, v17, @" From: %@", v18, self);
    v23 = 1;
    objc_msgSend_stringWithFormat_(v3, v19, @"<%@> %@ (%@%@)", v20, v4, v8, v15, v24);
  }
  v21 = ;
  if (v23)
  {
  }

  return v21;
}

- (id)unnamedTableString
{
  v4 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v8 = objc_msgSend_documentLocale(v4, v5, v6, v7);

  v11 = v8;
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableModel unnamedTableString]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 4168, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v21, v22, v23);
  }

  v26 = objc_msgSend_localizedStringForKey_value_table_(v11, v9, @"Table %@", &stru_2834BADA0, @"TSTables");
  if (!v26)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableModel unnamedTableString]", v25);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 4176, 0, "invalid nil value for '%{public}s'", "untitledTableNameFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
  }

  v36 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v40 = objc_msgSend_locale(v11, v37, v38, v39);
  objc_msgSend_setLocale_(v36, v41, v40, v42);

  v47 = objc_msgSend_stringFromNumber_(v36, v43, &unk_28350EB60, v44);
  if (v26)
  {
    v48 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, v26, v46, v47);
  }

  else
  {
    v48 = &stru_2834BADA0;
  }

  return v48;
}

- (TSUModelCellRect)cellRangeForTableArea:(unint64_t)area
{
  objc_msgSend_range(self, a2, area, v3);

  v6 = MEMORY[0x2821F9670](TSTTableInfo, sel_cellRangeForTableArea_givenTableSize_numberOfHeaderRows_numberOfFooterRows_numberOfHeaderColumns_, area, v5);
  result.var0.size = v7;
  result.var0.origin = v6;
  return result;
}

- (unint64_t)tableAreaForBaseCellCoord:(TSUModelCellCoord)coord
{
  column = self->_numberOfHeaderColumns._column;
  objc_msgSend_numberOfRows(self, a2, *&coord, v3);

  return (MEMORY[0x2821F9670])(TSTTableInfo, sel_tableAreaForCellID_inTableWithHeaderColumns_headerRows_footerRows_totalRows_, coord, column);
}

- (unint64_t)tableAreaForRow:(TSUModelRowIndex)row
{
  if (row._row == 0x7FFFFFFF)
  {
    return 0;
  }

  if (self->_numberOfHeaderRows._row > row._row)
  {
    return 2;
  }

  if (objc_msgSend_numberOfRows(self, a2, *&row._row, v3) - self->_numberOfFooterRows._row > row._row)
  {
    return 1;
  }

  return 4;
}

- (unint64_t)tableAreaForColumn:(TSUModelColumnIndex)column
{
  if (column._column == 0x7FFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderColumns(self, a2, *&column._column, v3) <= column._column)
  {
    return 1;
  }

  return 3;
}

- (unint64_t)tableStyleAreaForBaseCellCoord:(TSUModelCellCoord)coord
{
  v27.origin = objc_msgSend_bodyRange(self, a2, *&coord, v3);
  v27.size = v6;
  coord = coord._coord;
  if (TSUCellRect::contains(&v27, coord))
  {
    return 1;
  }

  v26.origin = objc_msgSend_headerRowRange(self, v8, v9, v10);
  v26.size = v12;
  v13 = coord._coord;
  if (TSUCellRect::contains(&v26, v13))
  {
    return 2;
  }

  v25.origin = objc_msgSend_actualHeaderColumnRange(self, v14, v15, v16);
  v25.size = v17;
  v18 = coord._coord;
  if (TSUCellRect::contains(&v25, v18))
  {
    return 3;
  }

  v24.origin = objc_msgSend_footerRowRange(self, v19, v20, v21);
  v24.size = v22;
  v23 = coord._coord;
  if ((TSUCellRect::contains(&v24, v23) & 1) == 0)
  {
    if (TSUCellRect::contains(&v25))
    {
      return 3;
    }

    if (TSUCellRect::contains(&v26))
    {
      return 2;
    }

    if ((TSUCellRect::contains(&v24) & 1) == 0 && (!TSUCellRect::isValid(&v24) || TSUCellRect::lastRow(&v24) >= coord._coord.row))
    {
      return 1;
    }
  }

  return 4;
}

- (unint64_t)tableStyleAreaForRow:(TSUModelRowIndex)row
{
  if (row._row == 0x7FFFFFFF)
  {
    return 0;
  }

  if (self->_numberOfHeaderRows._row > row._row)
  {
    return 2;
  }

  if (objc_msgSend_numberOfRows(self, a2, *&row._row, v3) - self->_numberOfFooterRows._row > row._row)
  {
    return 1;
  }

  return 4;
}

- (id)tableAreasForBaseCellRect:(TSUModelCellRect)rect
{
  var0 = rect.var0;
  v4 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&rect.var0.origin, *&rect.var0.size);
  v32.origin = objc_msgSend_bodyRange(self, v5, v6, v7);
  v32.size = v8;
  if (TSUCellRect::intersects(&v32, &var0))
  {
    objc_msgSend_addIndex_(v4, v9, 1, v11);
  }

  v32.origin = objc_msgSend_headerRowRange(self, v9, v10, v11);
  v32.size = v12;
  if (TSUCellRect::intersects(&v32, &var0))
  {
    objc_msgSend_addIndex_(v4, v13, 2, v15);
  }

  v32.origin = objc_msgSend_actualHeaderColumnRange(self, v13, v14, v15);
  v32.size = v16;
  if (TSUCellRect::intersects(&v32, &var0))
  {
    objc_msgSend_addIndex_(v4, v17, 3, v19);
  }

  v32.origin = objc_msgSend_footerRowRange(self, v17, v18, v19);
  v32.size = v20;
  if (TSUCellRect::intersects(&v32, &var0))
  {
    objc_msgSend_addIndex_(v4, v21, 4, v23);
  }

  v32.origin = objc_msgSend_topCornerRange(self, v21, v22, v23);
  v32.size = v24;
  if (TSUCellRect::intersects(&v32, &var0))
  {
    objc_msgSend_addIndex_(v4, v25, 5, v27);
  }

  v32.origin = objc_msgSend_bottomCornerRange(self, v25, v26, v27);
  v32.size = v28;
  if (TSUCellRect::intersects(&v32, &var0))
  {
    objc_msgSend_addIndex_(v4, v29, 6, v30);
  }

  return v4;
}

- (int)getDefaultCell:(id)cell forTableStyleArea:(unint64_t)area
{
  cellCopy = cell;
  v9 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v7, area, v8);
  objc_msgSend_setCellStyle_(cellCopy, v10, v9, v11);

  v14 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v12, area, v13);
  objc_msgSend_setTextStyle_(cellCopy, v15, v14, v16);

  return 0;
}

- (int)getDefaultCell:(id)cell forBaseCellCoord:(TSUModelCellCoord)coord
{
  cellCopy = cell;
  v18.origin = objc_msgSend_range(self, v7, v8, v9);
  v18.size = v10;
  coord = coord._coord;
  if (TSUCellRect::contains(&v18, coord))
  {
    v14 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, v12, *&coord, v13);
    DefaultCell_forTableStyleArea = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v15, cellCopy, v14);
  }

  else
  {
    DefaultCell_forTableStyleArea = 3;
  }

  return DefaultCell_forTableStyleArea;
}

- (BOOL)cellExistsAtBaseCellCoord:(TSUModelCellCoord)coord
{
  v12.origin = objc_msgSend_range(self, a2, *&coord, v3);
  v12.size = v6;
  coord = coord._coord;
  v8 = TSUCellRect::contains(&v12, coord);
  if (v8)
  {
    LOBYTE(v8) = objc_msgSend_cellExistsAtCellID_(self->_dataStore, v9, *&coord, v10);
  }

  return v8;
}

- (int)getCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord suppressCellBorder:(BOOL)border
{
  cellCopy = cell;
  objc_msgSend_clear(cellCopy, v9, v10, v11);
  v31.origin = objc_msgSend_range(self, v12, v13, v14);
  v31.size = v15;
  coord = coord._coord;
  if (TSUCellRect::contains(&v31, coord))
  {
    Cell_atCellID = objc_msgSend_getCell_atCellID_(self->_dataStore, v17, cellCopy, *&coord);
    v21 = Cell_atCellID;
    if (border)
    {
      if ((Cell_atCellID & 1) == 0)
      {
LABEL_10:
        v22 = 1000;
        goto LABEL_11;
      }
    }

    else
    {
      if ((Cell_atCellID & 1) == 0 && !objc_msgSend_mightHaveCellBorderAtCellID_(self->_strokeSidecar, v19, *&coord, v20))
      {
        goto LABEL_10;
      }

      v23 = objc_msgSend_cellBorderAtCellID_(self, v19, *&coord, v20);
      objc_msgSend_setCellBorder_(cellCopy, v24, v23, v25);
      v29 = objc_msgSend_hasContent(v23, v26, v27, v28) | v21;

      if ((v29 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v22 = 0;
  }

  else
  {
    v22 = 3;
  }

LABEL_11:

  return v22;
}

- (id)cellAtBaseCellCoord:(TSUModelCellCoord)coord
{
  if (!objc_msgSend_cellExistsAtBaseCellCoord_(self, a2, *&coord, v3))
  {
LABEL_4:
    v11 = objc_msgSend_cellBorderAtCellID_(self, v6, *&coord, v8);
    if (objc_msgSend_hasContent(v11, v12, v13, v14))
    {
      v18 = objc_msgSend_newCell(self, v15, v16, v17);
      objc_msgSend_setCellBorder_(v18, v19, v11, v20);
    }

    else
    {
      v18 = 0;
    }

    v9 = v18;
    goto LABEL_8;
  }

  v9 = objc_msgSend_newCell(self, v6, v7, v8);
  if (objc_msgSend_getCell_atBaseCellCoord_(self, v10, v9, *&coord))
  {

    goto LABEL_4;
  }

LABEL_8:

  return v9;
}

- (void)updateCalculationEngineForFormula:(id)formula inBaseCellCoord:(TSUModelCellCoord)coord usingCalcEngine:(id)engine
{
  formulaCopy = formula;
  engineCopy = engine;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v18, 0, 1);
  coordCopy = coord;
  if (!engineCopy)
  {
    engineCopy = objc_msgSend_calcEngine(self, v10, v11, v12);
  }

  v16[0] = objc_msgSend_tableUID(self, v10, v11, v12);
  v16[1] = v13;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v15, &v18);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(engineCopy, v14, formulaCopy, &coordCopy, v16, &v15);
}

- (BOOL)hasFormulaAtBaseCellCoord:(TSUModelCellCoord)coord
{
  if (coord._coord.row == 0x7FFFFFFF || (*&coord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_hasFormulaAtCellID_(self->_dataStore, a2, *&coord, v3);
  }
}

- (int)p_shouldAllowSetCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord
{
  cellCopy = cell;
  v42.origin = objc_msgSend_range(self, v7, v8, v9);
  v42.size = v10;
  coord = coord._coord;
  if (TSUCellRect::contains(&v42, coord))
  {
    if (!cellCopy && (objc_msgSend_isEmptyForDataStore(0, v12, v13, v14) & 1) != 0)
    {
      goto LABEL_17;
    }

    numberOfColumns = v42.size.numberOfColumns;
    numberOfRows = v42.size.numberOfRows;
    v17 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v12, v13, v14);
    v21 = objc_msgSend_maxNumberOfPopulatedCells(v17, v18, v19, v20);

    if (numberOfColumns * numberOfRows >= v21)
    {
      v27 = objc_msgSend_cellExistsAtBaseCellCoord_(self, v22, *&coord, v24);
      v25 = v27;
      if (cellCopy)
      {
        v28 = v27;
      }

      else
      {
        v28 = 1;
      }

      if ((v28 & 1) == 0)
      {
        if (objc_msgSend_numberOfPopulatedCells(self, v22, v23, v24) >= v21)
        {
          goto LABEL_18;
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = 1;
    }

    if (!objc_msgSend_hasFormula(cellCopy, v22, v23, v24) || !objc_msgSend_hasMaxNumFormulas(self->_calcEngine, v29, v30, v31) || v25 && (v35 = objc_msgSend_newCell(self, v32, v33, v34), objc_msgSend_getCell_atBaseCellCoord_(self, v36, v35, *&coord), hasFormula = objc_msgSend_hasFormula(v35, v37, v38, v39), v35, (hasFormula & 1) != 0))
    {
LABEL_17:
      v26 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v26 = 1001;
    goto LABEL_19;
  }

  v26 = 3;
LABEL_19:

  return v26;
}

- (int)setCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings calcEngine:(id)engine
{
  formulaCopy = formula;
  cellCopy = cell;
  engineCopy = engine;
  shouldAllowSetCell_atBaseCellCoord = objc_msgSend_p_shouldAllowSetCell_atBaseCellCoord_(self, v14, cellCopy, *&coord);
  if (!shouldAllowSetCell_atBaseCellCoord)
  {
    v19 = objc_msgSend_cellWillChangeDistributor(self, v15, v16, v17);
    objc_msgSend_willApplyCell_baseCellCoord_tableUID_(v19, v20, cellCopy, *&coord, &self->_tableUID);

    objc_msgSend_setCell_atCellID_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_(self->_dataStore, v21, cellCopy, *&coord, &self->_tableUID, engineCopy, self->_conditionalStyleFormulaOwner, formulaCopy, warnings);
    v26 = objc_msgSend_cellBorder(cellCopy, v22, v23, v24);
    if (v26)
    {
      objc_msgSend_setCellBorder_atCellID_(self->_strokeSidecar, v25, v26, *&coord);
    }

    else if (!cellCopy)
    {
      strokeSidecar = self->_strokeSidecar;
      v29 = objc_msgSend_cellBorder(TSTCellBorder, v25, 0, v27);
      objc_msgSend_setCellBorder_atCellID_(strokeSidecar, v30, v29, *&coord);
    }
  }

  return shouldAllowSetCell_atBaseCellCoord;
}

- (int)p_shouldAllowApplyBaseCellMap:(id)map
{
  mapCopy = map;
  v8 = objc_msgSend_count(mapCopy, v5, v6, v7);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = objc_msgSend_numberOfPopulatedCells(self->_dataStore, v9, v10, v11);
  v15 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v12, v13, v14);
  v19 = objc_msgSend_maxNumberOfPopulatedCells(v15, v16, v17, v18);

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (v34[3] + v8 >= v19 && (objc_msgSend_isUIDBased(mapCopy, v20, v21, v22) & 1) == 0)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2210AAE6C;
    v27[3] = &unk_27845E130;
    v27[4] = self;
    v27[5] = &v33;
    v28 = v19;
    v27[6] = &v29;
    v27[7] = v8;
    objc_msgSend_enumerateCellsWithIDsUsingBlock_(mapCopy, v23, v27, v24);
  }

  v25 = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v25;
}

- (int)setCellsWithBaseCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells
{
  cellsCopy = cells;
  formulasCopy = formulas;
  mapCopy = map;
  if (objc_msgSend_isUIDBased(mapCopy, v9, v10, v11))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableModel setCellsWithBaseCellMap:ignoreFormulas:skipDirtyingNonFormulaCells:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 4568, 0, "using a uid based cellmap where a coord based one is expected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  shouldAllowApplyBaseCellMap = objc_msgSend_p_shouldAllowApplyBaseCellMap_(self, v12, mapCopy, v13);
  if (!shouldAllowApplyBaseCellMap)
  {
    v27 = objc_msgSend_tableInfo(self, v23, v24, v25);
    v31 = objc_msgSend_groupBy(v27, v28, v29, v30);
    objc_msgSend_startOfGroupingChangesBatch(v31, v32, v33, v34);

    v38 = objc_msgSend_cellWillChangeDistributor(self, v35, v36, v37);
    objc_msgSend_willApplyBaseCellMap_tableUID_(v38, v39, mapCopy, &self->_tableUID);

    objc_msgSend_setBordersWithCellMap_(self->_strokeSidecar, v40, mapCopy, v41);
    v48 = objc_msgSend_calcEngine(self, v42, v43, v44);
    if (v48)
    {
      v49 = objc_msgSend_calcEngine(self, v45, v46, v47);
    }

    else
    {
      v50 = objc_msgSend_documentRoot(self, v45, v46, v47);
      v49 = objc_msgSend_calculationEngine(v50, v51, v52, v53);
    }

    dataStore = self->_dataStore;
    conditionalStyleFormulaOwner = self->_conditionalStyleFormulaOwner;
    v72 = objc_msgSend_tsp_isInDocument(self, v56, v57, v58);
    objc_msgSend_setCellMap_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormulas_skipDirtyingNonFormulaCells_doRichTextDOLC_(dataStore, v59, mapCopy, &self->_tableUID, v49, conditionalStyleFormulaOwner, formulasCopy, cellsCopy, v72);
    v63 = objc_msgSend_tableInfo(self, v60, v61, v62);
    v67 = objc_msgSend_groupBy(v63, v64, v65, v66);
    objc_msgSend_endOfGroupingChangesBatch(v67, v68, v69, v70);
  }

  return shouldAllowApplyBaseCellMap;
}

- (id)formatForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)coord formatIsExplicitOut:(BOOL *)out
{
  v73.origin = objc_msgSend_range(self, a2, *&coord, out);
  v73.size = v7;
  coord = coord._coord;
  if (!TSUCellRect::contains(&v73, coord))
  {
    v16 = 0;
    goto LABEL_19;
  }

  v11 = objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v9, *&coord, v10);
  v15 = v11;
  if (v11)
  {
    if (out)
    {
      *out = objc_msgSend_currentFormatIsExplicitForCalcEngine(v11, v12, v13, v14);
    }

    v16 = objc_msgSend_currentFormat(v15, v12, v13, v14);
    if (objc_msgSend_formatType(v16, v17, v18, v19) != 268)
    {
      goto LABEL_15;
    }

    v23 = objc_msgSend_asDurationFormat(v16, v20, v21, v22);
    objc_msgSend_durationTimeIntervalValue(v15, v24, v25, v26);
    v30 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v23, v27, v28, v29);
  }

  else
  {
    v16 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self->_dataStore, v12, *&coord, out, 0);
    v35 = objc_msgSend_asDurationFormat(v16, v32, v33, v34);
    v39 = objc_msgSend_useAutomaticUnits(v35, v36, v37, v38);

    if (!v39)
    {
      goto LABEL_15;
    }

    v42 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, v40, *&coord, v41);
    v46 = v42;
    if (!v42)
    {
      goto LABEL_15;
    }

    sub_2210B8F38(v42, v43, v44, v45);
    if (v46[1] != 7)
    {
      goto LABEL_15;
    }

    v23 = objc_msgSend_asDurationFormat(v16, v47, v48, v49);
    sub_2210B8F38(v46, v50, v51, v52);
    sub_2210B8F38(v46, v53, v54, v55);
    if (v46[1] != 7)
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "double TSTCellStorageDurationValue(TSTCellStorage *)", v58);
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v62);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 334, 0, "Asked for duration value from non-duration cell.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
    }

    v68 = sub_2211450B8(v46, 2, v57, v58);
    v30 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v23, v69, v70, v71, v68);
  }

  v31 = v30;

  v16 = v31;
LABEL_15:
  if (out && !v16)
  {
    *out = 0;
  }

LABEL_19:

  return v16;
}

- (unsigned)cellValueTypeAtBaseCellCoord:(TSUModelCellCoord)coord
{
  v18.origin = objc_msgSend_range(self, a2, *&coord, v3);
  v18.size = v6;
  coord = coord._coord;
  if (!TSUCellRect::contains(&v18, coord))
  {
    return 0;
  }

  v10 = objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v8, *&coord, v9);
  v14 = v10;
  if (v10)
  {
    v15 = objc_msgSend_valueType(v10, v11, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_valueTypeAtCellID_(self->_dataStore, v11, *&coord, v13);
  }

  v16 = v15;

  return v16;
}

- (id)textStyleForCalcEngineAtBaseCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default
{
  v20.origin = objc_msgSend_range(self, a2, *&coord, default);
  v20.size = v7;
  coord = coord._coord;
  if (TSUCellRect::contains(&v20, coord))
  {
    v11 = objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v9, *&coord, v10);
    v15 = v11;
    if (v11)
    {
      v18 = objc_msgSend_textStyle(v11, v12, v13, v14);
      if (!v18)
      {
        v18 = objc_msgSend_defaultTextStyleForBaseCellCoord_(self, v16, *&coord, v17);
        if (default)
        {
          *default = 1;
        }
      }
    }

    else
    {
      v18 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(self, v12, *&coord, default);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)hasCommentAtBaseCellCoord:(TSUModelCellCoord)coord
{
  v4 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, a2, *&coord, v3);
  if (v4)
  {
    LODWORD(v4) = (*(v4 + 10) >> 3) & 1;
  }

  return v4;
}

- (void)clearCommentHostingMapForCommentStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableModel clearCommentHostingMapForCommentStorage:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 4705, 0, "Tables Comment Storage should not be empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_commentHostingMap(self, v4, v5, v6);
  objc_msgSend_removeObjectForKey_(v16, v17, storageCopy, v18);

  v22 = objc_msgSend_commentStorageMap(self, v19, v20, v21);
  v26 = objc_msgSend_rootCommentStorage(storageCopy, v23, v24, v25);
  v30 = objc_msgSend_storageUUID(v26, v27, v28, v29);
  objc_msgSend_removeObjectForKey_(v22, v31, v30, v32);
}

- (id)cachedCommentHostingForAnnotationUUID:(id)d
{
  dCopy = d;
  v8 = objc_msgSend_commentStorageMap(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKey_(v8, v9, dCopy, v10);

  if (v11)
  {
    v15 = objc_msgSend_commentHostingMap(self, v12, v13, v14);
    v18 = objc_msgSend_objectForKey_(v15, v16, v11, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)coord forCommentStorage:(id)storage
{
  v4 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_updateCommentMaps_(self, a2, *&coord, storage, 1);

  return v4;
}

- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)coord forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps
{
  mapsCopy = maps;
  storageCopy = storage;
  if (!storageCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableModel commentHostingAtBaseCellCoord:forCommentStorage:updateCommentMaps:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 4723, 0, "Tables Comment Storage should not be empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_commentHostingMap(self, v8, v9, v10);
  v24 = objc_msgSend_objectForKey_(v21, v22, storageCopy, v23);

  if (!v24)
  {
    v28 = [TSTCommentHosting alloc];
    v32 = objc_msgSend_tableInfo(self, v29, v30, v31);
    v24 = objc_msgSend_initWithStorage_forTableInfo_baseCellCoord_(v28, v33, storageCopy, v32, coord);

    if (mapsCopy)
    {
      v34 = objc_msgSend_commentHostingMap(self, v25, v26, v27);
      objc_msgSend_setObject_forKey_(v34, v35, v24, storageCopy);

      v39 = objc_msgSend_commentStorageMap(self, v36, v37, v38);
      v43 = objc_msgSend_rootCommentStorage(storageCopy, v40, v41, v42);
      v47 = objc_msgSend_storageUUID(v43, v44, v45, v46);
      objc_msgSend_setObject_forKey_(v39, v48, storageCopy, v47);
    }
  }

  v49 = objc_msgSend_storage(v24, v25, v26, v27);

  if (v49 != storageCopy)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSTTableModel commentHostingAtBaseCellCoord:forCommentStorage:updateCommentMaps:]", v51);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 4734, 0, "Comment storages should be equal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
  }

  return v24;
}

- (id)commentHostingAtBaseCellCoord:(TSUModelCellCoord)coord
{
  v7 = objc_msgSend_commentStorageAtCellID_(self->_dataStore, a2, *&coord, v3);
  if (v7)
  {
    v8 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_(self, v6, *&coord, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)setCommentStorage:(id)storage atBaseCellCoord:(TSUModelCellCoord)coord
{
  storageCopy = storage;
  v10 = objc_msgSend_newCell(self, v7, v8, v9);
  objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v11, v10, *&coord, 1);
  v15 = objc_msgSend_commentStorage(v10, v12, v13, v14);
  objc_msgSend_commentWillBeAddedToDocumentRoot(storageCopy, v16, v17, v18);
  if (v15 && v15 != storageCopy)
  {
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self, v19, v15, *&coord, *MEMORY[0x277D805C8]);
  }

  objc_msgSend_setCommentStorage_(v10, v19, storageCopy, v20);
  v22 = objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self, v21, v10, *&coord, 1, 1);
  v24 = v22;
  if (storageCopy && !v22)
  {
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self, v23, storageCopy, *&coord, *MEMORY[0x277D805B8]);
  }

  return v24;
}

- (int)removeCommentStorageAtBaseCellCoord:(TSUModelCellCoord)coord
{
  v6 = objc_msgSend_newCell(self, a2, *&coord, v3);
  Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v7, v6, *&coord, 1);
  if (!Cell_atBaseCellCoord_suppressCellBorder)
  {
    v12 = objc_msgSend_commentStorage(v6, v8, v9, v10);
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self, v13, v12, *&coord, *MEMORY[0x277D805C8]);
    objc_msgSend_setCommentStorage_(v6, v14, 0, v15);
    Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self, v16, v6, *&coord, 1, 1);
  }

  return Cell_atBaseCellCoord_suppressCellBorder;
}

- (void)postCommentNotificationForStorage:(id)storage baseCellCoord:(TSUModelCellCoord)coord notificationKey:(id)key
{
  v39[1] = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  keyCopy = key;
  v11 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_(self, v10, *&coord, storageCopy);
  v37 = v11;
  v38 = keyCopy;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v37, 1);
  v39[0] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v39, &v38, 1);

  v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v16, v17, v18);
  v23 = objc_msgSend_tableInfo(self, v20, v21, v22);
  v27 = objc_msgSend_documentRoot(v23, v24, v25, v26);
  objc_msgSend_postNotificationName_object_userInfo_(v19, v28, *MEMORY[0x277D805B0], v27, v15);

  if (objc_msgSend_isEqualToString_(keyCopy, v29, *MEMORY[0x277D805C8], v30))
  {
    v34 = objc_msgSend_storage(v11, v31, v32, v33);
    objc_msgSend_clearCommentHostingMapForCommentStorage_(self, v35, v34, v36);
  }
}

- (id)cellStyleOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default
{
  v7 = objc_msgSend_cellStyleOfRowAtIndex_(self->_dataStore, a2, *&index._row, default);
  v11 = v7;
  if (v7)
  {
    *default = 0;
    v12 = v7;
  }

  else
  {
    if (default)
    {
      *default = 1;
    }

    if (self->_numberOfHeaderRows._row <= index._row)
    {
      v19.origin = objc_msgSend_footerRowRange(self, v8, v9, v10);
      v19.size = v14;
      v15 = TSUCellRect::rows(&v19);
      if (index._row < v15 || index._row - v15 >= v16)
      {
        v13 = 304;
      }

      else
      {
        v13 = 328;
      }
    }

    else
    {
      v13 = 312;
    }

    v12 = *(&self->super.super.isa + v13);
  }

  v17 = v12;

  return v17;
}

- (id)textStyleOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default
{
  v7 = objc_msgSend_textStyleOfRowAtIndex_(self->_dataStore, a2, *&index._row, default);
  v11 = v7;
  if (v7)
  {
    *default = 0;
    v12 = v7;
  }

  else
  {
    if (default)
    {
      *default = 1;
    }

    if (self->_numberOfHeaderRows._row <= index._row)
    {
      v19.origin = objc_msgSend_footerRowRange(self, v8, v9, v10);
      v19.size = v14;
      v15 = TSUCellRect::rows(&v19);
      if (index._row < v15 || index._row - v15 >= v16)
      {
        v13 = 416;
      }

      else
      {
        v13 = 440;
      }
    }

    else
    {
      v13 = 424;
    }

    v12 = *(&self->super.super.isa + v13);
  }

  v17 = v12;

  return v17;
}

- (id)cellStyleOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default
{
  v7 = objc_msgSend_cellStyleOfColumnAtIndex_(self->_dataStore, a2, index._column, default);
  v8 = v7;
  if (v7)
  {
    *default = 0;
    v9 = v7;
  }

  else
  {
    if (default)
    {
      *default = 1;
    }

    if (self->_numberOfHeaderColumns._column <= index._column)
    {
      v10 = 304;
    }

    else
    {
      v10 = 320;
    }

    v9 = *(&self->super.super.isa + v10);
  }

  v11 = v9;

  return v11;
}

- (id)textStyleOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default
{
  v7 = objc_msgSend_textStyleOfColumnAtIndex_(self->_dataStore, a2, index._column, default);
  v8 = v7;
  if (v7)
  {
    *default = 0;
    v9 = v7;
  }

  else
  {
    if (default)
    {
      *default = 1;
    }

    if (self->_numberOfHeaderColumns._column <= index._column)
    {
      v10 = 416;
    }

    else
    {
      v10 = 432;
    }

    v9 = *(&self->super.super.isa + v10);
  }

  v11 = v9;

  return v11;
}

- (id)defaultCellStyleForBaseCellCoord:(TSUModelCellCoord)coord useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  if (default)
  {
    v8 = objc_msgSend_cellStyleOfRowAtIndex_(self->_dataStore, a2, *&coord, default);
    if (v8)
    {
      if (!source)
      {
        goto LABEL_12;
      }

      v11 = 1;
LABEL_8:
      *source = v11;
      goto LABEL_12;
    }

    v8 = objc_msgSend_cellStyleOfColumnAtIndex_(self->_dataStore, v9, coord._coord.column, v10);
    if (v8)
    {
      if (!source)
      {
        goto LABEL_12;
      }

      v11 = 2;
      goto LABEL_8;
    }
  }

  if (source)
  {
    *source = 3;
  }

  v12 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, a2, *&coord, default);
  v8 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v13, v12, v14);
LABEL_12:

  return v8;
}

- (id)defaultCellStyleForTableStyleArea:(unint64_t)area
{
  if (area - 1 > 0x10)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.isa + *off_27845E7A0[area - 1]);
  }

  return v4;
}

- (id)cellStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default
{
  v7 = 0;
  v5 = objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(self, a2, *&coord, 1, &v7);
  if (default)
  {
    *default = v7 == 3;
  }

  return v5;
}

- (id)defaultTextStyleForBaseCellCoord:(TSUModelCellCoord)coord useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  if (default)
  {
    v8 = objc_msgSend_textStyleOfRowAtIndex_(self->_dataStore, a2, *&coord, default);
    if (v8)
    {
      if (!source)
      {
        goto LABEL_12;
      }

      v11 = 1;
LABEL_8:
      *source = v11;
      goto LABEL_12;
    }

    v8 = objc_msgSend_textStyleOfColumnAtIndex_(self->_dataStore, v9, coord._coord.column, v10);
    if (v8)
    {
      if (!source)
      {
        goto LABEL_12;
      }

      v11 = 2;
      goto LABEL_8;
    }
  }

  if (source)
  {
    *source = 3;
  }

  v12 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, a2, *&coord, default);
  v8 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, v13, v12, v14);
LABEL_12:

  return v8;
}

- (id)defaultTextStyleForTableStyleArea:(unint64_t)area
{
  if (area - 1 > 0x10)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.isa + *off_27845E828[area - 1]);
  }

  return v4;
}

- (id)textStyleForCellWithEmptyStyleAtBaseCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default
{
  v7 = 0;
  v5 = objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(self, a2, *&coord, 1, &v7);
  if (default)
  {
    *default = v7 == 3;
  }

  return v5;
}

- (id)cellStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default
{
  v9 = objc_msgSend_cellStyleAtCellID_(self->_dataStore, a2, *&coord, default);
  if (v9)
  {
    if (default)
    {
      v10 = objc_msgSend_defaultCellStyleForBaseCellCoord_(self, v7, *&coord, v8);
      *default = objc_msgSend_isEqual_(v10, v11, v9, v12);
    }
  }

  else
  {
    v9 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(self, v7, *&coord, default);
  }

  return v9;
}

- (id)textStyleAtModelCellCoord:(TSUModelCellCoord)coord isDefault:(BOOL *)default
{
  v9 = objc_msgSend_textStyleAtCellID_(self->_dataStore, a2, *&coord, default);
  if (v9)
  {
    if (default)
    {
      v10 = objc_msgSend_defaultTextStyleForBaseCellCoord_(self, v7, *&coord, v8);
      *default = objc_msgSend_isEqual_(v10, v11, v9, v12);
    }
  }

  else
  {
    v9 = objc_msgSend_textStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(self, v7, *&coord, default);
  }

  return v9;
}

- (void)defaultStyleHandlesAtBaseCellCoord:(TSUModelCellCoord)coord useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  styleHandleCopy = styleHandle;
  handleCopy = handle;
  if (!default)
  {
    goto LABEL_12;
  }

  v12 = objc_msgSend_defaultStyleHandlesOfRowAtIndex_outCellStyleHandle_outTextStyleHandle_(self->_dataStore, a2, *&coord, handle, styleHandle);
  if (v12)
  {
    handleCopy = 0;
  }

  if ((v12 & 2) != 0)
  {
    styleHandleCopy = 0;
  }

  if (handleCopy | styleHandleCopy)
  {
    v14 = objc_msgSend_defaultStyleHandlesOfColumnAtIndex_outCellStyleHandle_outTextStyleHandle_(self->_dataStore, v13, coord._coord.column, handleCopy, styleHandleCopy);
    if (v14)
    {
      handleCopy = 0;
    }

    if ((v14 & 2) != 0)
    {
      styleHandleCopy = 0;
    }

    if (handleCopy | styleHandleCopy)
    {
LABEL_12:
      v17 = objc_msgSend_tableStyleAreaForBaseCellCoord_(self, a2, *&coord, default);
      if (handleCopy)
      {
        *handleCopy = objc_msgSend_cellStyleHandleForKey_(cache, v15, v17, v16);
      }

      if (styleHandleCopy)
      {
        *styleHandleCopy = objc_msgSend_textStyleHandleForKey_(cache, v15, v17, v16);
      }
    }
  }
}

- (void)defaultStylesForTableStyleArea:(unint64_t)area outCellStyle:(id *)style outTextStyle:(id *)textStyle
{
  switch(area)
  {
    case 1uLL:
      if (!style)
      {
        goto LABEL_32;
      }

      v7 = 304;
      goto LABEL_31;
    case 2uLL:
      if (style)
      {
        *style = self->_headerRowCellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__headerRowTextStyle;
      break;
    case 3uLL:
      if (!style)
      {
        goto LABEL_27;
      }

      v8 = 320;
      goto LABEL_26;
    case 4uLL:
      if (style)
      {
        *style = self->_footerRowCellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__footerRowTextStyle;
      break;
    case 5uLL:
      if (style)
      {
        *style = self->_categoryLevel1CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel1TextStyle;
      break;
    case 6uLL:
      if (style)
      {
        *style = self->_categoryLevel2CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel2TextStyle;
      break;
    case 7uLL:
      if (style)
      {
        *style = self->_categoryLevel3CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel3TextStyle;
      break;
    case 8uLL:
      if (style)
      {
        *style = self->_categoryLevel4CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel4TextStyle;
      break;
    case 9uLL:
      if (style)
      {
        *style = self->_categoryLevel5CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__categoryLevel5TextStyle;
      break;
    case 0xAuLL:
      if (style)
      {
        *style = self->_labelLevel1CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel1TextStyle;
      break;
    case 0xBuLL:
      if (style)
      {
        *style = self->_labelLevel2CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel2TextStyle;
      break;
    case 0xCuLL:
      if (style)
      {
        *style = self->_labelLevel3CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel3TextStyle;
      break;
    case 0xDuLL:
      if (style)
      {
        *style = self->_labelLevel4CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel4TextStyle;
      break;
    case 0xEuLL:
      if (style)
      {
        *style = self->_labelLevel5CellStyle;
      }

      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__labelLevel5TextStyle;
      break;
    case 0xFuLL:
      if (!style)
      {
        goto LABEL_32;
      }

      v7 = 544;
      goto LABEL_31;
    case 0x10uLL:
      if (!style)
      {
        goto LABEL_32;
      }

      v7 = 552;
LABEL_31:
      *style = *(&self->super.super.isa + v7);
LABEL_32:
      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__bodyTextStyle;
      break;
    case 0x11uLL:
      if (!style)
      {
        goto LABEL_27;
      }

      v8 = 560;
LABEL_26:
      *style = *(&self->super.super.isa + v8);
LABEL_27:
      if (!textStyle)
      {
        return;
      }

      v9 = &OBJC_IVAR___TSTTableModel__headerColumnTextStyle;
      break;
    default:
      return;
  }

  *textStyle = *(&self->super.super.isa + *v9);
}

- (double)heightOfRowAtIndex:(TSUModelRowIndex)index isDefault:(BOOL *)default
{
  v5 = *&index._row;
  if (index._row == 0x7FFFFFFF)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel heightOfRowAtIndex:isDefault:]", default);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5223, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_heightOfRowAtIndex_(self->_dataStore, a2, v5, default);
  v20 = result;
  if (result >= 0.0 && result <= 0.0)
  {
    objc_msgSend_defaultRowHeight(self, v16, v17, v18);
  }

  if (default)
  {
    *default = v20 == 0.0;
  }

  return result;
}

- (double)widthOfColumnAtIndex:(TSUModelColumnIndex)index isDefault:(BOOL *)default
{
  if (index._column == 0x7FFF)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel widthOfColumnAtIndex:isDefault:]", default);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5240, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_widthOfColumnAtIndex_(self->_dataStore, a2, index._column, default);
  v20 = result;
  if (result >= 0.0 && result <= 0.0)
  {
    objc_msgSend_defaultColumnWidth(self, v16, v17, v18);
  }

  if (default)
  {
    *default = v20 == 0.0;
  }

  return result;
}

- (void)setHeight:(double)height ofRowAtIndex:(TSUModelRowIndex)index
{
  v5 = *&index._row;
  if (index._row == 0x7FFFFFFF)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setHeight:ofRowAtIndex:]", v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5257, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setHeight_ofRowAtIndex_(dataStore, a2, v5, v4);
}

- (void)setWidth:(double)width ofColumnAtIndex:(TSUModelColumnIndex)index
{
  if (index._column == 0x7FFF)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setWidth:ofColumnAtIndex:]", v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5270, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  dataStore = self->_dataStore;

  objc_msgSend_setWidth_ofColumnAtIndex_(dataStore, a2, index._column, v4);
}

- (NSArray)rowHeights
{
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_numberOfRows(self, a2, v2, v3);
  v9 = objc_msgSend_arrayWithCapacity_(v5, v7, v6, v8);
  v20[0] = objc_msgSend_range(self, v10, v11, v12);
  v20[1] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2210AD254;
  v17[3] = &unk_27845E158;
  v14 = v9;
  v18 = v14;
  selfCopy = self;
  sub_22109D0C8(v20, v17);
  v15 = v14;

  return v14;
}

- (NSArray)columnWidths
{
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_numberOfColumns(self, a2, v2, v3);
  v9 = objc_msgSend_arrayWithCapacity_(v5, v7, v6, v8);
  v20[0] = objc_msgSend_range(self, v10, v11, v12);
  v20[1] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2210AD3C4;
  v17[3] = &unk_27845E180;
  v14 = v9;
  v18 = v14;
  selfCopy = self;
  sub_22109D1B8(v20, v17);
  v15 = v14;

  return v14;
}

- (void)setColumnWidths:(id)widths
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2210AD4BC;
  v4[3] = &unk_27845E1A8;
  v4[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(widths, a2, v4, v3);
}

- (void)setRowHeights:(id)heights
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2210AD5A4;
  v4[3] = &unk_27845E1A8;
  v4[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(heights, a2, v4, v3);
}

- (void)computeDefaultRowHeight
{
  objc_msgSend_computeDefaultFontHeightForTableStyleArea_(self, a2, 1, v2);
  v5 = v4;
  objc_msgSend_defaultRowHeight(self, v6, v7, v8);
  if (v5 > v12)
  {

    objc_msgSend_setDefaultRowHeight_(self, v9, v10, v11, v5);
  }
}

- (double)computeDefaultFontHeightForTableStyleArea:(unint64_t)area
{
  v6 = objc_msgSend_defaultTextStyleForTableStyleArea_(self, a2, area, v3);
  v9 = objc_msgSend_defaultCellStyleForTableStyleArea_(self, v7, area, v8);
  v12 = objc_msgSend_valueForProperty_(v9, v10, 904, v11);
  FontForStyle = TSWPFastCreateFontForStyle();
  TSWPFontGetLineHeight();
  v15 = v14;
  CFRelease(FontForStyle);
  objc_msgSend_topInset(v12, v16, v17, v18);
  v20 = v19;
  objc_msgSend_bottomInset(v12, v21, v22, v23);
  v25 = v15 + v20 + v24;

  return v25;
}

- (TSUModelCellRect)range
{
  v4 = objc_msgSend_p_tableSize(self, a2, v2, v3);
  v5 = 0;
  result.var0.size = v4;
  result.var0.origin = v5;
  return result;
}

- (TSUModelCellRect)bodyRange
{
  v5 = objc_msgSend_p_tableSize(self, a2, v2, v3);
  column = self->_numberOfHeaderColumns._column;
  row = self->_numberOfHeaderRows._row;
  v8 = (HIDWORD(v5) - (row + self->_numberOfFooterRows._row));
  v9 = (v5 - column);
  v10 = (row | (column << 32));
  v11 = (v9 | (v8 << 32));
  result.var0.size = v11;
  result.var0.origin = v10;
  return result;
}

- (TSUModelCellRect)bodyColumnRange
{
  v5 = objc_msgSend_p_tableSize(self, a2, v2, v3);
  column = self->_numberOfHeaderColumns._column;
  v7 = v5 & 0xFFFFFFFF00000000;
  v8 = v5 - column;
  v9 = (column << 32);
  v10 = v7 & 0xFFFFFFFFFFFF0000 | v8;
  result.var0.size = v10;
  result.var0.origin = v9;
  return result;
}

- (TSUModelCellRect)bodyRowRange
{
  v5 = objc_msgSend_p_tableSize(self, a2, v2, v3);
  v6 = v5 | ((HIDWORD(v5) - (self->_numberOfHeaderRows._row + self->_numberOfFooterRows._row)) << 32);
  row = self->_numberOfHeaderRows._row;
  result.var0.size = v6;
  result.var0.origin = row;
  return result;
}

- (TSUModelCellRect)headerRowRange
{
  if (self->_numberOfHeaderRows._row)
  {
    v5 = objc_msgSend_numberOfColumns(self, a2, v2, v3);
    v6 = 0;
    v7 = v5 | (self->_numberOfHeaderRows._row << 32);
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFF7FFFFFFFLL;
  }

  result.var0.size = v7;
  result.var0.origin = v6;
  return result;
}

- (TSUModelCellRect)headerColumnRange
{
  column = self->_numberOfHeaderColumns._column;
  if (self->_numberOfHeaderColumns._column)
  {
    v5 = objc_msgSend_numberOfRows(self, a2, v2, v3);
    v6 = 0;
    v7 = (column | (v5 << 32));
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFF7FFFFFFFLL;
  }

  result.var0.size = v7;
  result.var0.origin = v6;
  return result;
}

- (TSUModelCellRect)actualHeaderColumnRange
{
  if (self->_numberOfHeaderColumns._column)
  {
    row = self->_numberOfHeaderRows._row;
    column = self->_numberOfHeaderColumns._column;
    v6 = column | ((objc_msgSend_numberOfRows(self, a2, v2, v3) - (self->_numberOfHeaderRows._row + self->_numberOfFooterRows._row)) << 32);
  }

  else
  {
    v6 = 0;
    row = 0x7FFF7FFFFFFFLL;
  }

  v7 = row;
  result.var0.size = v6;
  result.var0.origin = v7;
  return result;
}

- (TSUModelCellRect)footerRowRange
{
  if (self->_numberOfFooterRows._row)
  {
    LODWORD(v5) = self->_numberOfHeaderRows._row;
    v9 = objc_msgSend_numberOfRows(self, a2, v2, v3) - self->_numberOfFooterRows._row;
    if (v5 <= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = v5;
    }

    v10 = objc_msgSend_numberOfColumns(self, v6, v7, v8) | (self->_numberOfFooterRows._row << 32);
  }

  else
  {
    v10 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  v11 = v5;
  result.var0.size = v10;
  result.var0.origin = v11;
  return result;
}

- (TSUModelCellRect)topCornerRange
{
  v3 = 0x7FFF7FFFFFFFLL;
  column = self->_numberOfHeaderColumns._column;
  if (self->_numberOfHeaderColumns._column && (row = self->_numberOfHeaderRows._row, row))
  {
    v3 = 0;
    v6 = (column | (row << 32));
  }

  else
  {
    v6 = 0;
  }

  result.var0.size = v6;
  result.var0.origin = v3;
  return result;
}

- (TSUModelCellRect)bottomCornerRange
{
  v5 = 0x7FFF7FFFFFFFLL;
  if (self->_numberOfHeaderColumns._column && self->_numberOfFooterRows._row)
  {
    v6 = objc_msgSend_numberOfRows(self, a2, v2, v3);
    row = self->_numberOfFooterRows._row;
    v5 = (v6 - row);
    v8 = (self->_numberOfHeaderColumns._column | (row << 32));
  }

  else
  {
    v8 = 0;
  }

  result.var0.size = v8;
  result.var0.origin = v5;
  return result;
}

- (BOOL)hasNamesInHeaders
{
  v5 = objc_msgSend_bodyRange(self, a2, v2, v3);
  v7 = v6;
  v10 = objc_msgSend_range(self, v6, v8, v9);
  v13 = ((v10 ^ v5) & 0x101FFFF00000000) != 0 || v7 != v11;
  return v5 != v10 || v13;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)coord
{
  v4 = objc_msgSend_mergedRangeForBaseCellCoord_(self->_mergeOwner, a2, *&coord, v3);
  result.var0.size = v5;
  result.var0.origin = v4;
  return result;
}

- (int)insertRowsInBaseRange:(_NSRange)range uids:(const void *)uids metadata:(id)metadata unsetFilterHidingAction:(BOOL)action
{
  actionCopy = action;
  length = range.length;
  location = range.location;
  metadataCopy = metadata;
  v14 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v11, v12, v13);
  v18 = objc_msgSend_maxNumberOfRows(v14, v15, v16, v17);

  v22 = objc_msgSend_tableInfo(self, v19, v20, v21);
  v26 = objc_msgSend_hiddenStates(v22, v23, v24, v25);

  if (length <= v18 - objc_msgSend_numberOfRows(self, v27, v28, v29))
  {
    objc_msgSend_willModify(self, v30, v31, v32);
    objc_msgSend_insertRows_(self->_dataStore, v34, location, length);
    objc_msgSend_insertRows_(self->_strokeSidecar, v35, location, length);
    objc_msgSend_insertRowsWithUIDs_atIndex_(self->_columnRowUIDMap, v36, uids, location);
    objc_msgSend_updateCalcEngineForTableSize(self, v37, v38, v39);
    objc_msgSend_insertNewRowsInBaseRange_(v26, v40, location, length);
    uidsCopy = uids;
    v82 = location;
    v83 = length;
    if (length)
    {
      v43 = 0;
      v45 = location;
      v44 = length;
      do
      {
        v46 = objc_msgSend_objectAtIndexedSubscript_(metadataCopy, v41, v43, v42);
        if (objc_msgSend_isValid(v46, v47, v48, v49))
        {
          objc_msgSend_updateRowHeaderAtIndex_fromMetadata_(self->_dataStore, v50, v45, v46);
          v55 = objc_msgSend_hidingAction(v46, v51, v52, v53);
          if (actionCopy)
          {
            objc_msgSend_showBaseRowAtIndex_forAction_(v26, v54, v45, 2);
            v55 &= ~2u;
          }

          objc_msgSend_hideBaseRowAtIndex_forAction_(v26, v54, v45, v55);
        }

        ++v43;
        ++v45;
        --v44;
      }

      while (v44);
    }

    objc_msgSend_rewriteMergesForInsertedRange_uids_isRows_(self->_mergeOwner, v41, v82, v83, uidsCopy, 1);
    if (objc_msgSend_tableSizeClass(self, v56, v57, v58) >= 2)
    {
      objc_msgSend_setShouldUseWideRows_(self->_dataStore, v59, 1, v61);
    }

    v62 = objc_msgSend_calcEngine(self, v59, v60, v61);
    v85[0] = objc_msgSend_tableUID(self, v63, v64, v65);
    v85[1] = v66;
    v69 = objc_msgSend_range(self, v66, v67, v68);
    v71 = j__TSUCellRectToTSCERangeCoordinate(v69, v70);
    v73 = v72;
    v76 = objc_msgSend_headerColumnRange(self, v72, v74, v75);
    v78 = j__TSUCellRectToTSCERangeCoordinate(v76, v77);
    objc_msgSend_dirtyCellsForInsertionOfRows_forTable_tableRange_headerRange_(v62, v79, v82, v83, v85, v71, v73, v78, v79);

    v33 = 0;
  }

  else
  {
    v33 = 3;
  }

  return v33;
}

- (int)insertColumnsAtIndex:(TSUModelColumnIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area
{
  metadatasCopy = metadatas;
  v13 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v10, v11, v12);
  v17 = objc_msgSend_maxNumberOfColumns(v13, v14, v15, v16);

  v21 = objc_msgSend_count(metadatasCopy, v18, v19, v20);
  v25 = objc_msgSend_tableInfo(self, v22, v23, v24);
  v29 = objc_msgSend_numberOfColumns(v25, v26, v27, v28);
  v33 = objc_msgSend_count(metadatasCopy, v30, v31, v32);

  if (v33 > (v17 - v29))
  {
    goto LABEL_8;
  }

  if ((area & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v44 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableModel insertColumnsAtIndex:uids:metadatas:tableArea:]", v36);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v47, v39, v42, 5527, 0, "invalid table area for column insert");
    goto LABEL_7;
  }

  if (area == 3)
  {
    column = self->_numberOfHeaderColumns._column;
    if (5 - column < objc_msgSend_count(metadatasCopy, v34, v35, v36))
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableModel insertColumnsAtIndex:uids:metadatas:tableArea:]", v36);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 5532, 0, "not enough room in the header");
LABEL_7:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
LABEL_8:
      v51 = 3;
      goto LABEL_9;
    }
  }

  objc_msgSend_willModify(self, v34, v35, v36);
  v56 = objc_msgSend_tableInfo(self, v53, v54, v55);
  v60 = objc_msgSend_hiddenStates(v56, v57, v58, v59);

  objc_msgSend_insertColumns_(self->_dataStore, v61, index._column, v21);
  objc_msgSend_insertColumns_(self->_strokeSidecar, v62, index._column, v21);
  objc_msgSend_insertColumnsWithUIDs_atIndex_(self->_columnRowUIDMap, v63, uids, index._column);
  objc_msgSend_updateCalcEngineForTableSize(self, v64, v65, v66);
  objc_msgSend_insertNewColumnsInBaseRange_(v60, v67, index._column, v21);
  v110 = v21;
  if (v21)
  {
    v70 = 0;
    v71 = index._column;
    do
    {
      v72 = objc_msgSend_objectAtIndexedSubscript_(metadatasCopy, v68, v70, v69);
      if (objc_msgSend_isValid(v72, v73, v74, v75))
      {
        objc_msgSend_updateColumnHeaderAtIndex_fromMetadata_(self->_dataStore, v76, v71, v72);
        v80 = objc_msgSend_hidingAction(v72, v77, v78, v79);
        objc_msgSend_hideBaseColumnAtIndex_forAction_(v60, v81, v71, v80);
      }

      ++v70;
      ++v71;
      --v21;
    }

    while (v21);
  }

  objc_msgSend_rewriteMergesForInsertedRange_uids_isRows_(self->_mergeOwner, v68, index._column, v110, uids, 0);
  if (area == 3)
  {
    v85 = self->_numberOfHeaderColumns._column;
    v86 = objc_msgSend_count(metadatasCopy, v82, v83, v84);
    objc_msgSend_setNumberOfHeaderColumns_(self, v87, (v85 + v86), v88);
  }

  if (objc_msgSend_tableSizeClass(self, v82, v83, v84) >= 2)
  {
    objc_msgSend_setShouldUseWideRows_(self->_dataStore, v89, 1, v91);
  }

  v92 = objc_msgSend_calcEngine(self, v89, v90, v91);
  v112[0] = objc_msgSend_tableUID(self, v93, v94, v95);
  v112[1] = v96;
  v99 = objc_msgSend_range(self, v96, v97, v98);
  v101 = j__TSUCellRectToTSCERangeCoordinate(v99, v100);
  v103 = v102;
  v106 = objc_msgSend_headerRowRange(self, v102, v104, v105);
  v108 = j__TSUCellRectToTSCERangeCoordinate(v106, v107);
  objc_msgSend_dirtyCellsForInsertionOfColumns_forTable_tableRange_headerRange_(v92, v109, index._column, v110, v112, v101, v103, v108, v109);

  v51 = 0;
LABEL_9:

  return v51;
}

- (int)insertRowsAtIndex:(TSUModelRowIndex)index uids:(const void *)uids metadatas:(id)metadatas tableArea:(unint64_t)area unsetFilterHidingAction:(BOOL)action
{
  actionCopy = action;
  v9 = *&index._row;
  metadatasCopy = metadatas;
  v15 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v12, v13, v14);
  v19 = objc_msgSend_maxNumberOfRows(v15, v16, v17, v18);

  v23 = objc_msgSend_tableInfo(self, v20, v21, v22);
  v117 = objc_msgSend_hiddenStates(v23, v24, v25, v26);

  v30 = objc_msgSend_count(metadatasCopy, v27, v28, v29);
  if (v30 > v19 - objc_msgSend_numberOfRows(self, v31, v32, v33))
  {
    goto LABEL_24;
  }

  if (area > 4 || ((1 << area) & 0x16) == 0)
  {
    v80 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableModel insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v36);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v83, v39, v42, 5593, 0, "invalid table area for row insert");
    goto LABEL_23;
  }

  if (area == 2)
  {
    row = self->_numberOfHeaderRows._row;
    if (objc_msgSend_count(metadatasCopy, v34, v35, v36) > (5 - row))
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableModel insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v36);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 5598, 0, "not enough room in the header for insert");
LABEL_23:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86);
LABEL_24:
      v87 = 3;
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  if (area != 4)
  {
LABEL_10:
    v114 = 0;
    goto LABEL_11;
  }

  v44 = self->_numberOfFooterRows._row;
  if (objc_msgSend_count(metadatasCopy, v34, v35, v36) > (5 - v44))
  {
    v45 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableModel insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v36);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v47);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v48, v39, v42, 5603, 0, "not enough room in the footer for insert");
    goto LABEL_23;
  }

  v114 = 1;
LABEL_11:
  objc_msgSend_willModify(self, v34, v35, v36);
  v115 = v9;
  objc_msgSend_insertRows_(self->_dataStore, v49, v9, v30);
  objc_msgSend_insertRows_(self->_strokeSidecar, v50, v9, v30);
  objc_msgSend_insertRowsWithUIDs_atIndex_(self->_columnRowUIDMap, v51, uids, v9);
  objc_msgSend_updateCalcEngineForTableSize(self, v52, v53, v54);
  objc_msgSend_insertNewRowsInBaseRange_(v117, v55, v9, v30);
  if (objc_msgSend_tableSizeClass(self, v56, v57, v58) >= 2)
  {
    objc_msgSend_setShouldUseWideRows_(self->_dataStore, v59, 1, v60);
  }

  if (v30)
  {
    v61 = 0;
    v62 = v30;
    do
    {
      v63 = objc_msgSend_objectAtIndexedSubscript_(metadatasCopy, v59, v61, v60);
      if (objc_msgSend_isValid(v63, v64, v65, v66))
      {
        objc_msgSend_updateRowHeaderAtIndex_fromMetadata_(self->_dataStore, v67, v9, v63);
        v71 = objc_msgSend_hidingAction(v63, v68, v69, v70);
        if (actionCopy)
        {
          objc_msgSend_hideBaseRowAtIndex_forAction_(v117, v72, v9, v71 & 1);
        }

        else
        {
          objc_msgSend_hideBaseRowAtIndex_forAction_(v117, v72, v9, v71);
        }
      }

      ++v61;
      ++v9;
      --v62;
    }

    while (v62);
  }

  objc_msgSend_rewriteMergesForInsertedRange_uids_isRows_(self->_mergeOwner, v59, v115, v30, uids, 1);
  if (area == 2)
  {
    v76 = self->_numberOfHeaderRows._row;
    v77 = objc_msgSend_count(metadatasCopy, v73, v74, v75);
    objc_msgSend_setNumberOfHeaderRows_(self, v78, v76 + v77, v79);
  }

  else if (v114)
  {
    v88 = self->_numberOfFooterRows._row;
    v89 = objc_msgSend_count(metadatasCopy, v73, v74, v75);
    objc_msgSend_setNumberOfFooterRows_(self, v90, v88 + v89, v91);
  }

  else if (area == 1)
  {
    v92 = objc_msgSend_categoryOwner(self, v73, v74, v75);
    objc_msgSend_didAddRows_(v92, v93, uids, v94);
  }

  v95 = objc_msgSend_calcEngine(self, v73, v74, v75);
  v118[0] = objc_msgSend_tableUID(self, v96, v97, v98);
  v118[1] = v99;
  v102 = objc_msgSend_range(self, v99, v100, v101);
  v104 = j__TSUCellRectToTSCERangeCoordinate(v102, v103);
  v106 = v105;
  v109 = objc_msgSend_headerColumnRange(self, v105, v107, v108);
  v111 = j__TSUCellRectToTSCERangeCoordinate(v109, v110);
  objc_msgSend_dirtyCellsForInsertionOfRows_forTable_tableRange_headerRange_(v95, v112, v115, v30, v118, v104, v106, v111, v112);

  v87 = 0;
LABEL_30:

  return v87;
}

- (void)removeRowsAtIndex:(TSUModelRowIndex)index count:(TSUModelRowIndex)count
{
  row = index._row;
  v6 = count._row;
  __p.origin = objc_msgSend_headerRowRange(self, a2, *&index._row, *&count._row);
  __p.size = v7;
  v92.location = TSUCellRect::rows(&__p);
  v92.length = v8;
  v90.location = row;
  v90.length = v6;
  length = NSIntersectionRange(v90, v92).length;
  v10 = length;
  __p.origin = objc_msgSend_footerRowRange(self, length, v11, v12);
  __p.size = v13;
  v93.location = TSUCellRect::rows(&__p);
  v93.length = v14;
  v91.location = row;
  v91.length = v6;
  v15 = NSIntersectionRange(v91, v93).length;
  v16 = v15;
  objc_msgSend_willModify(self, v15, v17, v18);
  objc_msgSend_setNumberOfHeaderRows_(self, v19, self->_numberOfHeaderRows._row - v10, v20);
  objc_msgSend_setNumberOfFooterRows_(self, v21, self->_numberOfFooterRows._row - v16, v22);
  __p.origin = sub_2210AEA44(row, v6, v23, v24);
  __p.size = v25;
  v89[0] = objc_msgSend_range(self, v25, v26, v27);
  v89[1] = v28;
  v29 = sub_2210AFE68(&__p.origin, v89);
  v31 = v30;
  v32 = j__TSUCellRectToTSCERangeCoordinate(v29, v30);
  v34 = v33;
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v33, v35, v36))
  {
    v40 = objc_msgSend_range(self, v37, v38, v39);
    v42 = j__TSUCellRectToTSCERangeCoordinate(v40, v41);
    v44 = v43;
    v47 = objc_msgSend_calcEngine(self, v43, v45, v46);
    __p.origin = objc_msgSend_tableUID(self, v48, v49, v50);
    __p.size = v51;
    objc_msgSend_dirtyCellsForRemovalOfRows_fromTable_tableRange_(v47, v51, row, v6, &__p, v42, v44);

    v55 = objc_msgSend_calcEngine(self, v52, v53, v54);
    v59 = objc_msgSend_tableUID(self, v56, v57, v58);
    __p.origin = v32;
    __p.size = v34;
    v87 = v59;
    v88 = v60;
    objc_msgSend_removeFormulasFromRange_(v55, v60, &__p, v61);

    objc_msgSend_removeFormulasInRange_(self->_conditionalStyleFormulaOwner, v62, v29, v31);
  }

  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    objc_msgSend_rowUIDsForRowRange_(columnRowUIDMap, v37, row, v6);
  }

  else
  {
    __p.origin = 0;
    __p.size = 0;
    v87 = 0;
  }

  objc_msgSend_rewriteMergesForRemovedRange_uids_isRows_(self->_mergeOwner, v37, row, v6, &__p, 1);
  v67 = objc_msgSend_tableInfo(self, v64, v65, v66);
  v71 = objc_msgSend_hiddenStates(v67, v68, v69, v70);
  objc_msgSend_deleteRowsFromBaseRange_rowUids_(v71, v72, row, v6, &__p);

  objc_msgSend_removeRows_(self->_dataStore, v73, row, v6);
  objc_msgSend_removeRows_(self->_strokeSidecar, v74, row, v6);
  v75 = self->_columnRowUIDMap;
  v77 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v76, row, v6);
  objc_msgSend_removeRowsAtIndexes_(v75, v78, v77, v79);

  objc_msgSend_updateCalcEngineForTableSize(self, v80, v81, v82);
  objc_msgSend_resetMergeCache(self->_mergeOwner, v83, v84, v85);
  if (__p.origin)
  {
    __p.size = __p.origin;
    operator delete(*&__p.origin);
  }
}

- (void)removeColumnsAtIndex:(TSUModelColumnIndex)index count:(TSUModelColumnIndex)count
{
  __p.origin = objc_msgSend_headerColumnRange(self, a2, *&index._column, *&count._column);
  __p.size = v7;
  v83.location = TSUCellRect::columns(&__p);
  v83.length = v8;
  v82.location = index._column;
  v82.length = count._column;
  length = NSIntersectionRange(v82, v83).length;
  v10 = length;
  objc_msgSend_willModify(self, length, v11, v12);
  objc_msgSend_setNumberOfHeaderColumns_(self, v13, (self->_numberOfHeaderColumns._column - v10), v14);
  __p.origin = sub_2210AEE74(index._column, count._column, v15, v16);
  __p.size = v17;
  v81[0] = objc_msgSend_range(self, v17, v18, v19);
  v81[1] = v20;
  v21 = sub_2210AFE68(&__p.origin, v81);
  v23 = v22;
  v24 = j__TSUCellRectToTSCERangeCoordinate(v21, v22);
  v26 = v25;
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v25, v27, v28))
  {
    v32 = objc_msgSend_range(self, v29, v30, v31);
    v34 = j__TSUCellRectToTSCERangeCoordinate(v32, v33);
    v36 = v35;
    v39 = objc_msgSend_calcEngine(self, v35, v37, v38);
    __p.origin = objc_msgSend_tableUID(self, v40, v41, v42);
    __p.size = v43;
    objc_msgSend_dirtyCellsForRemovalOfColumns_fromTable_tableRange_(v39, v43, index._column, count._column, &__p, v34, v36);

    v47 = objc_msgSend_calcEngine(self, v44, v45, v46);
    v51 = objc_msgSend_tableUID(self, v48, v49, v50);
    __p.origin = v24;
    __p.size = v26;
    v79 = v51;
    v80 = v52;
    objc_msgSend_removeFormulasFromRange_(v47, v52, &__p, v53);

    objc_msgSend_removeFormulasInRange_(self->_conditionalStyleFormulaOwner, v54, v21, v23);
  }

  columnRowUIDMap = self->_columnRowUIDMap;
  if (columnRowUIDMap)
  {
    objc_msgSend_columnUIDsForColumnRange_(columnRowUIDMap, v29, index._column, count._column);
  }

  else
  {
    __p.origin = 0;
    __p.size = 0;
    v79 = 0;
  }

  objc_msgSend_rewriteMergesForRemovedRange_uids_isRows_(self->_mergeOwner, v29, index._column, count._column, &__p, 0);
  v59 = objc_msgSend_tableInfo(self, v56, v57, v58);
  v63 = objc_msgSend_hiddenStates(v59, v60, v61, v62);
  objc_msgSend_deleteColumnsFromBaseRange_columnUids_(v63, v64, index._column, count._column, &__p);

  objc_msgSend_removeColumns_(self->_dataStore, v65, index._column, count._column);
  objc_msgSend_removeColumns_(self->_strokeSidecar, v66, index._column, count._column);
  v67 = self->_columnRowUIDMap;
  v69 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v68, index._column, count._column);
  objc_msgSend_removeColumnsAtIndexes_(v67, v70, v69, v71);

  objc_msgSend_updateCalcEngineForTableSize(self, v72, v73, v74);
  objc_msgSend_resetMergeCache(self->_mergeOwner, v75, v76, v77);
  if (__p.origin)
  {
    __p.size = __p.origin;
    operator delete(*&__p.origin);
  }
}

- (void)removeRowsAtBaseIndexes:(id)indexes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2210AF05C;
  v3[3] = &unk_27845E1D0;
  v3[4] = self;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(indexes, a2, 2, v3);
}

- (void)removeColumnsAtBaseIndexes:(id)indexes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2210AF0E8;
  v3[3] = &unk_27845E1D0;
  v3[4] = self;
  objc_msgSend_enumerateRangesWithOptions_usingBlock_(indexes, a2, 2, v3);
}

- (void)removeAnnotationsFromRowsAtBaseIndexes:(id)indexes
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2210AF174;
  v4[3] = &unk_27845E1D0;
  v4[4] = self;
  objc_msgSend_enumerateRangesUsingBlock_(indexes, a2, v4, v3);
}

- (void)removeAnnotationsFromColumnsAtBaseIndexes:(id)indexes
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2210AF24C;
  v4[3] = &unk_27845E1D0;
  v4[4] = self;
  objc_msgSend_enumerateRangesUsingBlock_(indexes, a2, v4, v3);
}

- (void)moveBaseRowRange:(_NSRange)range toRowIndex:(TSUModelRowIndex)index
{
  v4 = *&index._row;
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length);
  objc_msgSend_moveRowIndexRange_toIndex_(self->_dataStore, v8, location, length, v4);
  objc_msgSend_moveRowIndexRange_toIndex_(self->_columnRowUIDMap, v9, location, length, v4);
  objc_msgSend_moveRowIndexRange_toIndex_(self->_strokeSidecar, v10, location, length, v4);
  v14 = objc_msgSend_tableInfo(self, v11, v12, v13);
  v18 = objc_msgSend_hiddenStates(v14, v15, v16, v17);
  objc_msgSend_moveBaseRowRange_toRowIndex_(v18, v19, location, length, v4);

  v23 = objc_msgSend_range(self, v20, v21, v22);
  v25 = j__TSUCellRectToTSCERangeCoordinate(v23, v24);
  v27 = v26;
  v30 = objc_msgSend_headerColumnRange(self, v26, v28, v29);
  v32 = j__TSUCellRectToTSCERangeCoordinate(v30, v31);
  v34 = v33;
  calcEngine = self->_calcEngine;
  v50 = objc_msgSend_tableUID(self, v33, v36, v37);
  v51 = v38;
  objc_msgSend_dirtyCellsForRemovalOfRows_fromTable_tableRange_(calcEngine, v38, location, length, &v50, v25, v27);
  v39 = self->_calcEngine;
  v50 = objc_msgSend_tableUID(self, v40, v41, v42);
  v51 = v43;
  objc_msgSend_dirtyCellsForInsertionOfRows_forTable_tableRange_headerRange_(v39, v43, v4, length, &v50, v25, v27, v32, v34);
  v47 = objc_msgSend_headerNameMgr(self->_calcEngine, v44, v45, v46);
  objc_msgSend_updateTrackedHeaders_(v47, v48, &self->_tableUID, v49);
}

- (void)moveBaseColumnRange:(_NSRange)range toColumnIndex:(TSUModelColumnIndex)index
{
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length);
  objc_msgSend_moveColumnIndexRange_toIndex_(self->_dataStore, v8, location, length, index._column);
  objc_msgSend_moveColumnIndexRange_toIndex_(self->_columnRowUIDMap, v9, location, length, index._column);
  objc_msgSend_moveColumnIndexRange_toIndex_(self->_strokeSidecar, v10, location, length, index._column);
  v14 = objc_msgSend_tableInfo(self, v11, v12, v13);
  v18 = objc_msgSend_hiddenStates(v14, v15, v16, v17);
  objc_msgSend_moveBaseColumnRange_toColumnIndex_(v18, v19, location, length, index._column);

  v23 = objc_msgSend_range(self, v20, v21, v22);
  v25 = j__TSUCellRectToTSCERangeCoordinate(v23, v24);
  v27 = v26;
  v30 = objc_msgSend_headerRowRange(self, v26, v28, v29);
  v32 = j__TSUCellRectToTSCERangeCoordinate(v30, v31);
  v34 = v33;
  calcEngine = self->_calcEngine;
  v50 = objc_msgSend_tableUID(self, v33, v36, v37);
  v51 = v38;
  objc_msgSend_dirtyCellsForRemovalOfColumns_fromTable_tableRange_(calcEngine, v38, location, length, &v50, v25, v27);
  v39 = self->_calcEngine;
  v50 = objc_msgSend_tableUID(self, v40, v41, v42);
  v51 = v43;
  objc_msgSend_dirtyCellsForInsertionOfColumns_forTable_tableRange_headerRange_(v39, v43, index._column, length, &v50, v25, v27, v32, v34);
  v47 = objc_msgSend_headerNameMgr(self->_calcEngine, v44, v45, v46);
  objc_msgSend_updateTrackedHeaders_(v47, v48, &self->_tableUID, v49);
}

- (void)swapRowAtIndex:(TSUModelRowIndex)index withRowAtIndex:(TSUModelRowIndex)atIndex
{
  v4 = *&atIndex._row;
  v5 = *&index._row;
  objc_msgSend_willModify(self, a2, *&index._row, *&atIndex._row);
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_dataStore, v7, v5, v4);
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_columnRowUIDMap, v8, v5, v4);
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_strokeSidecar, v9, v5, v4);
  v18 = objc_msgSend_tableInfo(self, v10, v11, v12);
  v16 = objc_msgSend_hiddenStates(v18, v13, v14, v15);
  objc_msgSend_swapBaseRowAtIndex_withRowAtIndex_(v16, v17, v5, v4);
}

- (unsigned)headerInfo_hidingActionForRowAtIndex:(TSUModelRowIndex)index
{
  if (index._row <= 0xF423F)
  {
    return (MEMORY[0x2821F9670])(self->_dataStore, sel_hidingStateOfRowAtIndex_, *&index._row);
  }

  else
  {
    return 0;
  }
}

- (unsigned)headerInfo_hidingActionForColumnAtIndex:(TSUModelColumnIndex)index
{
  if (index._column <= 0x3E7u)
  {
    return (MEMORY[0x2821F9670])(self->_dataStore, sel_hidingStateOfColumnAtIndex_, index._column);
  }

  else
  {
    return 0;
  }
}

- (void)upgradeHiddenStates
{
  if (objc_msgSend_lastArchivedAppVersion(self, a2, v2, v3) <= 0x3000200000009)
  {
    v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
    v12 = objc_msgSend_hiddenStates(v8, v9, v10, v11);

    v27 = objc_msgSend_range(self, v13, v14, v15);
    v28 = v16;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2210AF8E4;
    v25[3] = &unk_27845E158;
    v25[4] = self;
    v17 = v12;
    v26 = v17;
    sub_22109D0C8(&v27, v25);
    v27 = objc_msgSend_range(self, v18, v19, v20);
    v28 = v21;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2210AF940;
    v23[3] = &unk_27845E180;
    v23[4] = self;
    v22 = v17;
    v24 = v22;
    sub_22109D1B8(&v27, v23);
  }
}

- (TSKUIDStruct)upgradeHiddenFormulaOwnerForColumnsUID
{
  v4 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForColumns, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)upgradeHiddenFormulaOwnerForRowsUID
{
  v4 = objc_msgSend_ownerUID(self->_hiddenStateFormulaOwnerForRows, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (void)setHidingState:(unsigned __int8)state atRowIndex:(const TSUModelRowIndex *)index
{
  stateCopy = state;
  if (index->_row >= 0xF4240)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setHidingState:atRowIndex:]", index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5890, 0, "Bad row index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_willModify(self, a2, state, index);
  dataStore = self->_dataStore;
  row = index->_row;

  MEMORY[0x2821F9670](dataStore, sel_setHidingState_ofRowAtIndex_, stateCopy, row);
}

- (void)setHidingState:(unsigned __int8)state atColumnIndex:(const TSUModelColumnIndex *)index
{
  stateCopy = state;
  if (index->_column >= 0x3E8u)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableModel setHidingState:atColumnIndex:]", index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 5897, 0, "Bad column index!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_willModify(self, a2, state, index);
  dataStore = self->_dataStore;
  column = index->_column;

  MEMORY[0x2821F9670](dataStore, sel_setHidingState_ofColumnAtIndex_, stateCopy, column);
}

- (id)stringAtBaseCellCoord:(TSUModelCellCoord)coord optionalCell:(id)cell
{
  cellCopy = cell;
  v10 = cellCopy;
  if (cellCopy)
  {
    objc_msgSend_formattedValue(cellCopy, v7, v8, v9);
  }

  else
  {
    objc_msgSend_stringAtCellID_(self->_dataStore, v7, *&coord, v9);
  }
  v11 = ;

  return v11;
}

- (id)regionForValueOrCommentCellsInBaseCellRect:(TSUModelCellRect)rect
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = sub_2210AFE2C;
  v20 = sub_2210AFE50;
  v21 = &unk_22188E88F;
  v23 = 0;
  v24 = 0;
  __p = 0;
  rectCopy = rect;
  v14[0] = objc_msgSend_range(self, a2, *&rect.var0.origin, *&rect.var0.size);
  v14[1] = v4;
  v5 = sub_2210AFE68(&rectCopy.var0.origin, v14);
  v7 = objc_msgSend_regionFromRange_(TSTCellRegion, v6, v5, v6);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2210AFFEC;
  v13[3] = &unk_27845DD70;
  v13[4] = &v16;
  objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v8, v7, 4329472, v13);

  v11 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v9, (v17 + 6), v10);
  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return v11;
}

- (id)columnNameForCellID:(TSUCellCoord)d restrictToBodyRange:(BOOL)range
{
  rangeCopy = range;
  dCopy = d;
  objc_opt_class();
  v9 = objc_msgSend_calcEngine(self, v6, v7, v8);
  v13 = objc_msgSend_namer(v9, v10, v11, v12);
  v14 = TSUDynamicCast();

  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableModel columnNameForCellID:restrictToBodyRange:]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 5939, 0, "invalid nil value for '%{public}s'", "refNamer", dCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  v27 = objc_msgSend_identityTranslator(self, v15, v16, v17);
  v29 = objc_msgSend_columnNameForCellCoord_restrictToBodyRange_translator_cellRangeContainingName_(v14, v28, &dCopy, rangeCopy, v27, 0);

  return v29;
}

- (id)p_displayNameForColumnAtIndex:(unsigned __int16)index documentLocalized:(BOOL)localized derivation:(int64_t *)derivation
{
  localizedCopy = localized;
  indexCopy = index;
  v9 = objc_msgSend_columnNameForCellID_restrictToBodyRange_(self, a2, index << 32, 0);
  if (v9)
  {
    v13 = 2;
    v14 = v9;
    if (!derivation)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (localizedCopy)
    {
      v17 = objc_msgSend_documentRoot(self, v10, v11, v12);
      v21 = objc_msgSend_documentLocale(v17, v18, v19, v20);
      v23 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Column %@", &stru_2834BADA0, @"TSTables");
    }

    else
    {
      v17 = sub_2214AAEA8(0, v10, v11, v12);
      v23 = objc_msgSend_localizedStringForKey_value_table_(v17, v24, @"Column %@", &stru_2834BADA0, @"TSTables");
    }

    if (indexCopy == 0x7FFF)
    {
      v27 = 0;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, v23, v26, 0);
    }

    else
    {
      v27 = TSUColumnLabel();
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, v23, v29, v27);
    }
    v14 = ;

    v13 = 1;
    if (!derivation)
    {
      goto LABEL_4;
    }
  }

  *derivation = v13;
LABEL_4:
  v15 = objc_msgSend_displayNameForColumnName_(TSTTableInfo, v10, v14, v12);

  return v15;
}

- (id)fillForRow:(TSUModelRowIndex)row
{
  v9 = 0;
  v3 = objc_msgSend_cellStyleOfRowAtIndex_isDefault_(self, a2, row._row, &v9);
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

- (TSDStroke)categoryLevel1InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2))
  {
    v6 = objc_msgSend_valueForProperty_(self->_tableStyle, v4, 823, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSDStroke)categoryLevel2InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2))
  {
    v6 = objc_msgSend_valueForProperty_(self->_tableStyle, v4, 824, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSDStroke)categoryLevel3InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2))
  {
    v6 = objc_msgSend_valueForProperty_(self->_tableStyle, v4, 825, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSDStroke)categoryLevel4InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2))
  {
    v6 = objc_msgSend_valueForProperty_(self->_tableStyle, v4, 826, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSDStroke)categoryLevel5InteriorStroke
{
  if (objc_msgSend_intValueForProperty_(self->_tableStyle, a2, 791, v2))
  {
    v6 = objc_msgSend_valueForProperty_(self->_tableStyle, v4, 827, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)maxStrokeOrder
{
  strokeSidecar = self->_strokeSidecar;
  if (strokeSidecar)
  {
    return objc_msgSend_maxOrder(strokeSidecar, a2, v2, v3);
  }

  else
  {
    return 2;
  }
}

- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order
{
  v5 = *&order;
  v6 = *&row;
  strokeCopy = stroke;
  strokeSidecar = self->_strokeSidecar;
  v12 = objc_msgSend_numberOfColumns(self, v9, v10, v11);
  if (v12)
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(strokeSidecar, v13, strokeCopy, v6, v5, 0, v12);
  }

  else
  {
    objc_msgSend_setStroke_forTopOfRow_order_columnRange_(strokeSidecar, v13, strokeCopy, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order
{
  v5 = *&order;
  v6 = *&row;
  strokeCopy = stroke;
  strokeSidecar = self->_strokeSidecar;
  v12 = objc_msgSend_numberOfColumns(self, v9, v10, v11);
  if (v12)
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(strokeSidecar, v13, strokeCopy, v6, v5, 0, v12);
  }

  else
  {
    objc_msgSend_setStroke_forBottomOfRow_order_columnRange_(strokeSidecar, v13, strokeCopy, v6, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order
{
  v5 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  strokeSidecar = self->_strokeSidecar;
  v12 = objc_msgSend_numberOfRows(self, v9, v10, v11);
  if (v12)
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(strokeSidecar, v13, strokeCopy, columnCopy, v5, 0, v12);
  }

  else
  {
    objc_msgSend_setStroke_forLeftOfColumn_order_rowRange_(strokeSidecar, v13, strokeCopy, columnCopy, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order
{
  v5 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  strokeSidecar = self->_strokeSidecar;
  v12 = objc_msgSend_numberOfRows(self, v9, v10, v11);
  if (v12)
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(strokeSidecar, v13, strokeCopy, columnCopy, v5, 0, v12);
  }

  else
  {
    objc_msgSend_setStroke_forRightOfColumn_order_rowRange_(strokeSidecar, v13, strokeCopy, columnCopy, v5, 0x7FFFFFFFFFFFFFFFLL, 0);
  }
}

- (id)cellValueFromCell:(id)cell atBaseCellCoord:(TSUModelCellCoord)coord
{
  cellCopy = cell;
  v8 = objc_msgSend_tsceValueFromCell_atCellID_tableUID_(self->_dataStore, v7, cellCopy, *&coord, &self->_tableUID);
  v12 = objc_msgSend_locale(cellCopy, v9, v10, v11);
  v14 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v13, v8, v12);

  return v14;
}

- (id)cellValueAtBaseCellCoord:(TSUModelCellCoord)coord
{
  v6 = objc_msgSend_calcEngine(self, a2, *&coord, v3);
  v10 = v6;
  if (v6)
  {
    objc_msgSend_documentLocale(v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_objectLocale(self, v7, v8, v9);
  }
  v11 = ;
  v17 = 0;
  objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(self, v12, &v17, *&coord, 0);
  v13 = v17;
  v15 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v14, v13, v11);

  return v15;
}

- (int)getValue:(id *)value atBaseCellCoord:(TSUModelCellCoord)coord fetchRichTextAttributesIfPlainText:(BOOL)text skipPendingWrites:(BOOL)writes
{
  textCopy = text;
  v79.origin = objc_msgSend_range(self, a2, value, *&coord);
  v79.size = v11;
  coord = coord._coord;
  if (!TSUCellRect::contains(&v79, coord))
  {
    return 3;
  }

  if (value)
  {
    v79.origin = coord._coord;
    origin = coord;
    if (writes || (objc_msgSend_cellAtCellID_(self->_cellsPendingWrite, v13, *&coord, *&coord), v15 = objc_claimAutoreleasedReturnValue(), origin = v79.origin, !v15))
    {
      v23 = objc_msgSend_cellStorageRefAtCellID_(self->_dataStore, v13, origin, origin);
      if (!v23)
      {
        v15 = 0;
        v26 = 1000;
LABEL_23:

        return v26;
      }

      objc_msgSend_tsceValueForCellStorageRef_cellCoord_hostTableUID_outValue_(self->_dataStore, v27, v23, &v79, &self->_tableUID, value);
      sub_2210B8F38(v23, v28, v29, v30);
      v15 = 0;
      v31 = v23[1];
      v24 = v31 == 3;
      v23 = 0;
      if (textCopy && v31 == 3)
      {
        v23 = objc_msgSend_textStyleAtCellID_(self->_dataStore, v20, *&v79.origin, v22);
        v15 = 0;
        v24 = 1;
      }
    }

    else
    {
      *value = objc_msgSend_tsceValueFromCell_atCellID_tableUID_(self->_dataStore, v13, v15, *&v79.origin, &self->_tableUID);
      v19 = objc_msgSend_valueType(v15, v16, v17, v18);
      v23 = 0;
      v24 = v19 == 3;
      if (textCopy && v19 == 3)
      {
        v25 = objc_msgSend_textStyle(v15, v20, v21, v22);
        v24 = 1;
        v23 = v25;
      }
    }

    v26 = 0;
    if (textCopy && v24)
    {
      v32 = objc_msgSend_asRawString(*value, v20, v21, v22);
      if (objc_msgSend_length(v32, v33, v34, v35))
      {
        if (v23)
        {
          if (objc_msgSend_isVariation(v23, v36, v37, v38))
          {
            v41 = objc_msgSend_defaultTextStyleForBaseCellCoord_(self, v39, *&coord, v40);
            isEqual = objc_msgSend_isEqual_(v23, v42, v41, v43);

            if ((isEqual & 1) == 0)
            {
              v45 = [TSCEUnpersistedStorage alloc];
              v78 = objc_msgSend_context(v23, v46, v47, v48);
              v49 = *value;
              v77 = objc_msgSend_objectLocale(self, v50, v51, v52);
              v76 = objc_msgSend_asStringWithLocale_(v49, v53, v77, v54);
              v75 = objc_msgSend_stylesheet(v23, v55, v56, v57);
              v74 = objc_msgSend_documentRoot(self, v58, v59, v60);
              v64 = objc_msgSend_theme(v74, v61, v62, v63);
              v68 = objc_msgSend_defaultListStyle(v64, v65, v66, v67);
              v70 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v45, v69, v78, v76, 5, v75, v23, v68, 0, 0);

              *value = objc_msgSend_richTextValue_(TSCERichTextValue, v71, v70, v72);
            }
          }
        }
      }

      v26 = 0;
    }

    goto LABEL_23;
  }

  return 1000;
}

- (void)setFormulaOwnerUIDsWithMap:(id)map shouldStealReferences:(BOOL)references
{
  referencesCopy = references;
  mapCopy = map;
  if (!mapCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableModel setFormulaOwnerUIDsWithMap:shouldStealReferences:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v13);
    v199._lower = objc_msgSend_tableUID(self, v15, v16, v17);
    v199._upper = v18;
    v19 = TSKUIDStruct::description(&v199);
    v23 = objc_msgSend_tableName(self, v20, v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v24, v11, v14, 6364, 0, "Really needed an ownerUIDMapper here - tableModel is %@ (%@)", v19, v23);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  v199._lower = 0;
  v199._upper = 0;
  v28 = objc_msgSend_fromTableUID(self, v6, v7, v8);
  if (v28 | v29)
  {
    v32 = objc_msgSend_fromTableUID(self, v29, v30, v31);
  }

  else
  {
    v32 = objc_msgSend_tableUID(self, v29, v30, v31);
  }

  v199._lower = v32;
  v199._upper = v33;
  *&v198 = objc_msgSend_nextTableUID(mapCopy, v33, v34, v35);
  *(&v198 + 1) = v36;
  v42 = objc_msgSend_calcEngine(self, v36, v37, v38);
  if (v42)
  {
    v43 = objc_msgSend_calcEngine(self, v39, v40, v41);
  }

  else
  {
    v44 = objc_msgSend_documentRoot(self, v39, v40, v41);
    v43 = objc_msgSend_calculationEngine(v44, v45, v46, v47);
  }

  v51 = objc_msgSend_hiddenStates(self->_hiddenStatesOwner, v48, v49, v50);
  objc_msgSend_willModify(v43, v52, v53, v54);
  v58 = objc_msgSend_headerNameMgr(v43, v55, v56, v57);
  objc_msgSend_updateTableUIDFrom_toTableUID_(v58, v59, &v199, &v198);

  objc_msgSend_setTableUID_(self, v60, v198, *(&v198 + 1));
  v64 = objc_msgSend_sortRuleReferenceTracker(self, v61, v62, v63);
  objc_msgSend_setBaseTableUID_(v64, v65, v198, *(&v198 + 1));

  v69 = objc_msgSend_conditionalStyleFormulaOwner(self, v66, v67, v68);
  ConditionalStyleOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(mapCopy, v70, v71, v72);
  objc_msgSend_setOwnerUID_(v69, v74, ConditionalStyleOwnerUID, v74);

  v78 = objc_msgSend_mergeOwner(self, v75, v76, v77);
  MergeOwnerUID = objc_msgSend_nextMergeOwnerUID(mapCopy, v79, v80, v81);
  objc_msgSend_setOwnerUID_(v78, v83, MergeOwnerUID, v83);

  v87 = objc_msgSend_pencilAnnotationOwner(self, v84, v85, v86);
  PencilAnnotationOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(mapCopy, v88, v89, v90);
  objc_msgSend_setOwnerUID_(v87, v92, PencilAnnotationOwnerUID, v92);

  v96 = objc_msgSend_pivotOwner(self, v93, v94, v95);
  objc_msgSend_resetBaseOwnerUID(v96, v97, v98, v99);

  hiddenStateFormulaOwnerForRows = self->_hiddenStateFormulaOwnerForRows;
  v103 = sub_2212C4930(&v198, 4, v101, v102);
  objc_msgSend_setOwnerUID_(hiddenStateFormulaOwnerForRows, v104, v103, v104);
  hiddenStateFormulaOwnerForColumns = self->_hiddenStateFormulaOwnerForColumns;
  v108 = sub_2212C4930(&v198, 0xB, v106, v107);
  objc_msgSend_setOwnerUID_(hiddenStateFormulaOwnerForColumns, v109, v108, v109);
  objc_msgSend_setFormulaOwnerUIDsWithMap_(v51, v110, mapCopy, v111);
  v115 = objc_msgSend_ownerUIDMap(mapCopy, v112, v113, v114);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v51, v116, v115, self->_calcEngine);
  if (objc_msgSend_isAPivotDataModel(self, v117, v118, v119))
  {
    objc_msgSend_setFormulaOwnerUIDsWithMap_(self->_categoryOwner, v120, mapCopy, v122);
  }

  else
  {
    v126 = objc_msgSend_tableInfo(self, v120, v121, v122);
    v130 = objc_msgSend_summaryModel(v126, v127, v128, v129);
    v134 = objc_msgSend_aggregateFormulaOwner(v130, v131, v132, v133);
    objc_msgSend_setTableUID_(v134, v135, &v198, v136);

    v197[0] = objc_msgSend_nextCategoryAggregatesOwnerUID(mapCopy, v137, v138, v139);
    v197[1] = v140;
    v143 = objc_msgSend_summaryModel(v126, v140, v141, v142);
    v147 = objc_msgSend_aggregateFormulaOwner(v143, v144, v145, v146);
    objc_msgSend_setOwnerUID_(v147, v148, v197, v149);

    CategoryAggregatesOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(mapCopy, v150, v151, v152);
    v155 = v154;
    v158 = objc_msgSend_summaryModel(v126, v154, v156, v157);
    objc_msgSend_setAggregateFormulaOwnerUID_(v158, v159, CategoryAggregatesOwnerUID, v155);

    v166 = objc_msgSend_groupBy(v126, v160, v161, v162);
    if (v166)
    {
      GroupByUID = objc_msgSend_nextGroupByUID(mapCopy, v163, v164, v165);
      objc_msgSend_setGroupByUid_(v166, v168, GroupByUID, v168);
      objc_msgSend_resetCategoriesGroupByForOwnerRemapping(v126, v169, v170, v171);
      v175 = objc_msgSend_translator(v126, v172, v173, v174);
      objc_msgSend_addReceiverToGroupBy_(v175, v176, v166, v177);
    }
  }

  v178 = objc_msgSend_hauntedOwner(self, v123, v124, v125);
  v181 = sub_2212C4930(&v198, 0x23, v179, v180);
  objc_msgSend_setOwnerUID_(v178, v182, v181, v182);

  v186 = objc_msgSend_spillOwner(self, v183, v184, v185);
  v189 = sub_2212C4930(&v198, 0xC, v187, v188);
  objc_msgSend_setOwnerUID_(v186, v190, v189, v190);

  if (referencesCopy && v199 != 0uLL && v199 != v198)
  {
    v194 = objc_msgSend_documentRoot(self, v191, v192, v193);
    v195 = TSUProtocolCast();

    objc_msgSend_tableUID_changedToTableUID_(v195, v196, &v199, &v198, &unk_283598FF8);
  }
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine bakeForBadRefs:(BOOL)refs
{
  engineCopy = engine;
  if ((objc_msgSend_containsFormulas(self->_dataStore, v9, v10, v11) & 1) != 0 || objc_msgSend_numberOfConditionalStyles(self->_dataStore, v12, v13, v14))
  {
    v99[0] = 0;
    v99[1] = v99;
    v99[2] = 0x9812000000;
    v99[3] = sub_2210B26E8;
    v99[4] = nullsub_6;
    v99[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v94.coordinate = 0;
    v94._tableUID._lower = objc_msgSend_tableUID(self, v12, v13, v14);
    v94._tableUID._upper = v15;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v100, engineCopy, &v94);
    v94.coordinate = 0;
    v94._tableUID._lower = &v94;
    v94._tableUID._upper = 0x9812000000;
    v95 = sub_2210B26E8;
    v96 = nullsub_6;
    v97 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v92.coordinate = 0;
    v92._tableUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v16, v17, v18);
    v92._tableUID._upper = v19;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v98, engineCopy, &v92);
    v92.coordinate = 0;
    v92._tableUID._lower = &v92;
    v92._tableUID._upper = 0x2020000000;
    v93 = 0;
    v23 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v20, v21, v22);
    dataStore = self->_dataStore;
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_2210B2738;
    v87[3] = &unk_27845E1F8;
    v89 = &v92;
    v90 = v99;
    mapCopy = map;
    v25 = v23;
    v88 = v25;
    objc_msgSend_replaceFormulasUsingBlock_(dataStore, v26, v87, v27);
    v31 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v28, v29, v30);
    v32 = self->_dataStore;
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_2210B2828;
    v83[3] = &unk_27845E220;
    v85 = &v94;
    mapCopy2 = map;
    v33 = v31;
    v84 = v33;
    objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v32, v34, v83, v35);
    LODWORD(v32) = objc_msgSend_numberOfRows(self, v36, v37, v38);
    v80 = 0;
    v81 = 0;
    v39 = v32;
    v82 = 0;
    sub_2210B28E0(&v80, v32);
    if (v32)
    {
      v43 = 0;
      v44 = 8 * v39;
      do
      {
        v45 = objc_alloc_init(TSTConcurrentMutableIndexSet);
        v46 = v80[v43 / 8];
        v80[v43 / 8] = v45;

        v43 += 8;
      }

      while (v44 != v43);
    }

    if (objc_msgSend_count(v33, v40, v41, v42) || objc_msgSend_count(v25, v47, v48, v49))
    {
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3321888768;
      v71[2] = sub_2210B2968;
      v71[3] = &unk_2834A1668;
      v72 = v25;
      v74 = v99;
      refsCopy = refs;
      mapCopy3 = map;
      memset(v78, 0, sizeof(v78));
      sub_2210BC1EC(v78, v80, v81, v81 - v80);
      v75 = &v92;
      v73 = v33;
      v76 = &v94;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_2210B2C5C;
      v70[3] = &unk_27845E248;
      v70[4] = &v92;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3321888768;
      v68[2] = sub_2210B2C6C;
      v68[3] = &unk_2834A1698;
      memset(v69, 0, sizeof(v69));
      sub_2210BC1EC(v69, v80, v81, v81 - v80);
      objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v50, 139264, 0, 0, 0, 0, v71, v70, v68, 0);
      v101 = v69;
      sub_22107C2C0(&v101);

      v101 = v78;
      sub_22107C2C0(&v101);
    }

    v101 = &v80;
    sub_22107C2C0(&v101);

    _Block_object_dispose(&v92, 8);
    _Block_object_dispose(&v94, 8);
    _Block_object_dispose(v99, 8);
  }

  v51 = objc_msgSend_tableInfo(self, v12, v13, v14);
  v55 = objc_msgSend_hiddenStates(v51, v52, v53, v54);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v55, v56, map, engineCopy);

  v60 = objc_msgSend_mergeOwner(self, v57, v58, v59);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v60, v61, map, engineCopy);

  v65 = objc_msgSend_pencilAnnotationOwner(self, v62, v63, v64);
  objc_msgSend_remapTableUIDsInFormulasWithMap_(v65, v66, map, v67);
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  v5 = objc_msgSend_addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs(self->_dataStore, a2, v2, v3);
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2210B2E78;
    v10[3] = &unk_27845E270;
    v11 = v5;
    objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v9, 0x4000, 0, 1, 0, 0, v10, 0);
  }
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys
{
  v4 = objc_msgSend_mapReassigningPasteboardCustomFormatKeys_(self->_dataStore, a2, keys, v3);

  return v4;
}

- (void)registerAllFormulasWithCalculationEngine:(id)engine wasCrossDocumentPaste:(BOOL)paste infoIsCategorized:(BOOL)categorized wasUndo:(BOOL)undo
{
  pasteCopy = paste;
  engineCopy = engine;
  v14 = objc_msgSend_tableUID(self, v11, v12, v13);
  v16 = v15;
  objc_msgSend_updateCalcEngineForTableSize(self, v15, v17, v18);
  objc_msgSend_beginBatchingGroupCellDirtying(engineCopy, v19, v20, v21);
  if ((objc_msgSend_containsFormulas(self->_dataStore, v22, v23, v24) & 1) != 0 || objc_msgSend_numberOfConditionalStyles(self->_dataStore, v25, v26, v27))
  {
    categorizedCopy = categorized;
    v28 = objc_msgSend_currentTransaction(engineCopy, v25, v26, v27);
    v144 = objc_msgSend_tableUID(self, v29, v30, v31);
    v145 = v32;
    isSkippingRepairBadRefsForOwnerUID = objc_msgSend_isSkippingRepairBadRefsForOwnerUID_(v28, v32, &v144, v33);

    v144 = 0;
    v145 = &v144;
    v146 = 0x9812000000;
    v147 = sub_2210B26E8;
    v148 = nullsub_6;
    v149 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v139.coordinate = 0;
    v139._tableUID._lower = objc_msgSend_tableUID(self, v35, v36, v37);
    v139._tableUID._upper = v38;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v150, engineCopy, &v139);
    v139.coordinate = 0;
    v139._tableUID._lower = &v139;
    v139._tableUID._upper = 0x9812000000;
    v140 = sub_2210B26E8;
    v141 = nullsub_6;
    v142 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v130.coordinate = 0;
    v130._tableUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v39, v40, v41);
    v130._tableUID._upper = v42;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v143, engineCopy, &v130);
    if (objc_msgSend_duringRollback(engineCopy, v43, v44, v45))
    {
      TSCEFormulaRewriteContext::setUseOnlyActiveTract((v145 + 6), 1);
      TSCEFormulaRewriteContext::setUseOnlyActiveTract((v139._tableUID._lower + 48), 1);
    }

    v49 = v145;
    v50 = objc_msgSend_tableUIDHistory(engineCopy, v46, v47, v48);
    v49[7] = v50;

    lower = v139._tableUID._lower;
    v55 = objc_msgSend_tableUIDHistory(engineCopy, v52, v53, v54);
    *(lower + 56) = v55;

    v113 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v56, v57, v58);
    if ((isSkippingRepairBadRefsForOwnerUID & 1) == 0)
    {
      dataStore = self->_dataStore;
      if (pasteCopy)
      {
        v63 = v138;
        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = sub_2210B36BC;
        v138[3] = &unk_27845E298;
        v138[4] = engineCopy;
        v138[5] = v14;
        v138[6] = v16;
        objc_msgSend_replaceFormulasUsingBlock_(dataStore, v64, v138, v65);
      }

      else
      {
        v63 = v137;
        v137[0] = MEMORY[0x277D85DD0];
        v137[1] = 3221225472;
        v137[2] = sub_2210B36F0;
        v137[3] = &unk_27845E2C0;
        v137[4] = v113;
        objc_msgSend_replaceFormulasUsingBlock_(dataStore, v66, v137, v67);
      }
    }

    v68 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v59, v60, v61);
    v69 = v68;
    v70 = self->_dataStore;
    if (pasteCopy)
    {
      v71 = v136;
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = sub_2210B3770;
      v136[3] = &unk_27845E2E8;
      v136[4] = engineCopy;
      v136[5] = self;
      objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v70, v72, v136, v73);
    }

    else
    {
      v71 = v135;
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 3221225472;
      v135[2] = sub_2210B37F0;
      v135[3] = &unk_27845E310;
      v135[4] = v68;
      objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v70, v74, v135, v75);
    }

    v130.coordinate = 0;
    v130._tableUID._lower = &v130;
    v130._tableUID._upper = 0x9812000000;
    v131 = sub_2210B26E8;
    v132 = nullsub_6;
    v133 = TSTCategoryAggregateFormulaOwner__ivarLayout;
    memset(&v129, 0, sizeof(v129));
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v134, engineCopy, &v129);
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = sub_2210B385C;
    v120[3] = &unk_27845E380;
    v127 = categorizedCopy;
    undoCopy = undo;
    v120[4] = self;
    v76 = engineCopy;
    v121 = v76;
    v124 = &v130;
    v77 = v113;
    v122 = v77;
    v125 = &v144;
    v126 = &v139;
    v78 = v69;
    v123 = v78;
    objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v79, 139264, 0, 1, 0, 0, v120, 0);
    v80 = [TSTCellIterator alloc];
    v84 = objc_msgSend_range(self, v81, v82, v83);
    v86 = objc_msgSend_regionFromRange_(TSTCellRegion, v85, v84, v85);
    v90 = objc_msgSend_range(self, v87, v88, v89);
    v92 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_baseClampingRange_(v80, v91, self, v86, 34, 139264, v90, v91);

    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = sub_2210B3F2C;
    v118[3] = &unk_27845E3A8;
    v118[4] = self;
    v119 = v76;
    objc_msgSend_iterateCellsUsingBlock_(v92, v93, v118, v94);

    _Block_object_dispose(&v130, 8);
    _Block_object_dispose(&v139, 8);
    _Block_object_dispose(&v144, 8);
  }

  v95 = objc_msgSend_mergeOwner(self, v25, v26, v27);

  if (v95)
  {
    v99 = objc_msgSend_mergeOwner(self, v96, v97, v98);
    v103 = objc_msgSend_ownerUID(v99, v100, v101, v102);
    v105 = v104;

    v109 = objc_msgSend_mergeOwner(self, v106, v107, v108);
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = sub_2210B4050;
    v114[3] = &unk_27845E3D0;
    v115 = engineCopy;
    v116 = v103;
    v117 = v105;
    objc_msgSend_enumerateMergeFormulasUsingBlock_(v109, v110, v114, v111);
  }

  objc_msgSend_endBatchingGroupCellDirtying(engineCopy, v96, v97, v98);
}

- (void)prepareForPasteWithCalculationEngine:(id)engine sourceOffset:(TSUColumnRowOffset)offset bakeFormulas:(BOOL)formulas
{
  engineCopy = engine;
  if ((objc_msgSend_containsFormulas(self->_dataStore, v9, v10, v11) & 1) != 0 || objc_msgSend_numberOfConditionalStyles(self->_dataStore, v12, v13, v14))
  {
    v137.var0 = 0;
    v137.var1 = objc_msgSend_tableUID(self, v12, v13, v14);
    v137.var2.var0.var0.coordinate = v15;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v138, engineCopy, &v137);
    v128.coordinate = 0;
    v128._tableUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v16, v17, v18);
    v128._tableUID._upper = v19;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v137, engineCopy, &v128);
    v138.var1 = objc_msgSend_tableUIDHistory(engineCopy, v20, v21, v22);

    v137.var1 = objc_msgSend_tableUIDHistory(engineCopy, v23, v24, v25);

    offsetCopy = offset;
    TSCEFormulaRewriteContext::setFromOffset(&v138, offsetCopy);
    offsetCopy2 = offset;
    TSCEFormulaRewriteContext::setFromOffset(&v137, offsetCopy2);
    v31 = objc_msgSend_tableInfo(self, v28, v29, v30);
    v128.coordinate = objc_msgSend_range(self, v32, v33, v34);
    v128._tableUID._lower = v35;
    v36 = TSUCellRect::columns(&v128);
    if (v31)
    {
      objc_msgSend_columnUIDsForColumnRange_(v31, v37, v36, v37);
    }

    else
    {
      v135 = 0;
      v134 = 0;
      v136 = 0;
    }

    v41 = objc_msgSend_tableInfo(self, v38, v39, v40);
    v128.coordinate = objc_msgSend_range(self, v42, v43, v44);
    v128._tableUID._lower = v45;
    v46 = TSUCellRect::rows(&v128);
    if (v41)
    {
      objc_msgSend_rowUIDsForRowRange_(v41, v47, v46, v47);
    }

    else
    {
      v132 = 0;
      v131 = 0;
      v133 = 0;
    }

    sub_2210BBBE8(&v128, &v134, &v131);
    memset(v127, 0, sizeof(v127));
    *__p = 0u;
    v51 = objc_msgSend_range(self, v48, v49, v50);
    v53 = v52;
    v116.origin = v51;
    v116.size = v52;
    TSUCellRect::offsetBy(&v116);
    v57 = objc_msgSend_tableInfo(self, v54, v55, v56);
    v116.origin = v51;
    v116.size = v53;
    v58 = TSUCellRect::columns(&v116);
    if (v57)
    {
      objc_msgSend_columnUIDsForColumnRange_(v57, v59, v58, v59);
    }

    else
    {
      v123 = 0;
      v124 = 0;
      v125 = 0;
    }

    v63 = objc_msgSend_tableInfo(self, v60, v61, v62);
    v116.origin = v51;
    v116.size = v53;
    v64 = TSUCellRect::rows(&v116);
    if (v63)
    {
      objc_msgSend_rowUIDsForRowRange_(v63, v65, v64, v65);
    }

    else
    {
      v120 = 0;
      v121 = 0;
      v122 = 0;
    }

    sub_2210BBBE8(&v116, &v123, &v120);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v116;
    v127[0] = v117;
    v116.size = 0;
    v117 = 0;
    v116.origin = 0;
    origin = v127[1];
    if (v127[1])
    {
      v127[2] = v127[1];
      operator delete(v127[1]);
      origin = v116.origin;
    }

    *&v127[1] = v118;
    v127[3] = v119;
    v119 = 0;
    v118 = 0uLL;
    if (origin)
    {
      v116.size = origin;
      operator delete(origin);
    }

    v67 = [TSTFormulaRewriteSpec alloc];
    v116.origin = objc_msgSend_tableUID(self, v68, v69, v70);
    v116.size = v71;
    v115[0] = objc_msgSend_tableUID(self, v71, v72, v73);
    v115[1] = v74;
    v77 = objc_msgSend_tableInfo(self, v74, v75, v76);
    v81 = objc_msgSend_translator(v77, v78, v79, v80);
    v85 = objc_msgSend_coordinateMapper(v81, v82, v83, v84);
    v114[0] = objc_msgSend_fromTableUID(self, v86, v87, v88);
    v114[1] = v89;
    v90 = objc_msgSend_initForCategorizedTableChromeToBaseRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_srcCoordMapper_fromTableUID_(v67, v89, &v116, __p, v115, &v128, v85, 0, v114);

    v94 = objc_msgSend_conditionalStyleFormulaOwnerUID(self, v91, v92, v93);
    objc_msgSend_setConditionalStyleOwnerUID_(v90, v95, v94, v95);
    v99 = objc_msgSend_tableInfo(self, v96, v97, v98);
    v103 = objc_msgSend_formulaCoordSpace(v99, v100, v101, v102);

    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3321888768;
    v107[2] = sub_2210B480C;
    v107[3] = &unk_2834A16F0;
    formulasCopy = formulas;
    v112[11] = offset;
    v109 = *&v138.var0;
    sub_2212C7250(v110);
    TSCEFormulaRewriteContextRecord::operator=(v110, &v138.var2);
    v110[11] = v103;
    v107[4] = self;
    v104 = v90;
    v108 = v104;
    v111 = *&v137.var0;
    sub_2212C7250(v112);
    TSCEFormulaRewriteContextRecord::operator=(v112, &v137.var2);
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = sub_2210B4D04;
    v106[3] = &unk_27845E3F8;
    v106[4] = self;
    objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v105, 139264, 0, 1, 0, 0, v107, v106);

    if (v120)
    {
      v121 = v120;
      operator delete(v120);
    }

    if (v123)
    {
      v124 = v123;
      operator delete(v123);
    }

    if (v127[1])
    {
      v127[2] = v127[1];
      operator delete(v127[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v129)
    {
      v130 = v129;
      operator delete(v129);
    }

    if (v128.coordinate)
    {
      v128._tableUID._lower = v128.coordinate;
      operator delete(*&v128.coordinate);
    }

    if (v131)
    {
      v132 = v131;
      operator delete(v131);
    }

    if (v134)
    {
      v135 = v134;
      operator delete(v134);
    }
  }
}

- (void)willBeAddedCellCleanup:(BOOL)cleanup
{
  if (cleanup)
  {
    hasImportWarnings = objc_msgSend_hasImportWarnings(self, a2, cleanup, v3);
  }

  else
  {
    hasImportWarnings = 0;
  }

  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, cleanup, v3);
  if (objc_msgSend_supportsControlCells(v6, v7, v8, v9))
  {
    hasRatingFormats = 0;
LABEL_9:

    if ((hasImportWarnings & 1) == 0 && !hasRatingFormats)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!objc_msgSend_hasControls(self, v10, v11, v12))
  {
    hasRatingFormats = objc_msgSend__hasRatingFormats(self, v14, v15, v16);
    goto LABEL_9;
  }

  LOBYTE(hasRatingFormats) = 1;
LABEL_11:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2210B4E8C;
  v19[3] = &unk_27845E418;
  if (hasImportWarnings)
  {
    v18 = 0x40000;
  }

  else
  {
    v18 = 0;
  }

  v20 = hasRatingFormats;
  v21 = hasImportWarnings;
  objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v17, v18, 0, 0, 0, 0, v19, 0);
}

- (BOOL)hasPastableFormulas
{
  selfCopy = self;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x9812000000;
  v32[3] = sub_2210B26E8;
  v32[4] = nullsub_6;
  v32[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
  v5 = objc_msgSend_calcEngine(self, a2, v2, v3);
  memset(&v31, 0, sizeof(v31));
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v33, v5, &v31);

  v9 = objc_msgSend_tableInfo(selfCopy, v6, v7, v8);
  v13 = objc_msgSend_groupByUid(v9, v10, v11, v12);
  v15 = v14;

  v19 = objc_msgSend_tableInfo(selfCopy, v16, v17, v18);
  v23 = objc_msgSend_fromGroupByUID(v19, v20, v21, v22);
  v25 = v24;

  dataStore = selfCopy->_dataStore;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2210B5128;
  v30[3] = &unk_27845E440;
  v30[6] = v13;
  v30[7] = v15;
  v30[8] = v23;
  v30[9] = v25;
  v30[4] = v32;
  v30[5] = &v34;
  objc_msgSend_replaceFormulasUsingBlock_(dataStore, v27, v30, v28);
  LOBYTE(selfCopy) = *(v35 + 24);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);
  return selfCopy;
}

- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  cellsPendingWrite = self->_cellsPendingWrite;
  if (cellsPendingWrite)
  {
    objc_msgSend_allCellCoords(cellsPendingWrite, a3, v3, v4);
    TSCECellCoordSet::operator=(retstr, &v9);
    sub_22107C860(&v9._rowsPerColumn, v9._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  result = self->_spillingCellsPendingWrite;
  if (result)
  {
    objc_msgSend_allCellCoords(result, a3, v3, v4);
    TSCECellCoordSet::addCellCoords(retstr, &v9);
    sub_22107C860(&v9._rowsPerColumn, v9._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  return result;
}

- (BOOL)cellModifiedInCurrentRecalcCycle:(const TSUCellCoord *)cycle
{
  cellsPendingWrite = self->_cellsPendingWrite;
  if (cellsPendingWrite)
  {
    LOBYTE(cellsPendingWrite) = (MEMORY[0x2821F9670])(cellsPendingWrite, sel_hasCellAtCellID_, *cycle);
  }

  return cellsPendingWrite;
}

- (void)addCellRefToClearError:(const TSCECellRef *)error
{
  os_unfair_lock_lock(&self->_clearErrorLock);
  TSCECellRefSet::addCellRef(&self->_clearErrorCells, error);

  os_unfair_lock_unlock(&self->_clearErrorLock);
}

- (void)clearErrors
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  os_unfair_lock_lock(&self->_clearErrorLock);
  TSCECellRefSet::operator=(&v5, &self->_clearErrorCells);
  TSCECellRefSet::clear(&self->_clearErrorCells);
  os_unfair_lock_unlock(&self->_clearErrorLock);
  objc_msgSend_clearErrorAndWarningsForCells_(self->_calcEngine, v3, &v5, v4);
  sub_22107C800(&v5, v6[0]);
}

- (void)mapTableStylesToStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v85 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v9 = objc_msgSend_context(self, v6, v7, v8);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_2210B587C;
  v81[3] = &unk_27845E468;
  v74 = mapperCopy;
  v82 = v74;
  v73 = stylesheetCopy;
  v83 = v73;
  selfCopy = self;
  v11 = objc_msgSend_networkWithContext_presetID_styleProvider_styleMorphingBlock_(TSTTableStyleNetwork, v10, v9, 0, self, v81);

  objc_msgSend_setStyleNetwork_(self, v12, v11, v13);
  v17 = objc_msgSend_tableStylePreset(self, v14, v15, v16);
  LOBYTE(v9) = v17 == 0;

  if ((v9 & 1) == 0)
  {
    v72 = objc_msgSend_tableStylePreset(self, v18, v19, v20);
    objc_msgSend_setTableStylePreset_(self, v21, 0, v22);
    objc_opt_class();
    v26 = objc_msgSend_styleNetwork(v72, v23, v24, v25);
    v30 = objc_msgSend_tableStyle(v26, v27, v28, v29);
    v33 = objc_msgSend_mappedStyleForStyle_(v74, v31, v30, v32);
    v34 = TSUCheckedDynamicCast();

    v38 = objc_msgSend_documentRoot(self, v35, v36, v37);
    v42 = objc_msgSend_theme(v38, v39, v40, v41);
    v45 = objc_msgSend_presetsOfKind_(v42, v43, *MEMORY[0x277D80BA8], v44);

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v45;
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v77, v84, 16);
    if (v50)
    {
      v51 = *v78;
      while (2)
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v78 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v77 + 1) + 8 * i);
          v54 = objc_msgSend_styleNetwork(v53, v47, v48, v49);
          v58 = objc_msgSend_tableStyle(v54, v55, v56, v57);
          v62 = objc_msgSend_objectUUID(v58, v59, v60, v61);
          v66 = objc_msgSend_objectUUID(v34, v63, v64, v65);
          isEqual = objc_msgSend_isEqual_(v62, v67, v66, v68);

          if (isEqual)
          {
            objc_msgSend_setTableStylePreset_(selfCopy, v47, v53, v49);
            goto LABEL_12;
          }
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v77, v84, 16);
        if (v50)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  objc_msgSend_mapTableStylesToStylesheet_withMapper_(self, v8, stylesheetCopy, mapperCopy);
  if (objc_msgSend_isRegisteredWithCalcEngine(self, v9, v10, v11))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableModel adoptStylesheet:withMapper:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 7155, 0, "we expect the table to not be registered yet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  dataStore = self->_dataStore;
  v36[0] = objc_msgSend_tableUID(self, v12, v13, v14);
  v36[1] = v25;
  v28 = objc_msgSend_conditionalStyleFormulaOwner(self, v25, v26, v27);
  objc_msgSend_adoptStylesheet_withMapper_ownerUID_conditionalStyleOwner_(dataStore, v29, stylesheetCopy, mapperCopy, v36, v28);

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_2210B5BCC;
  v34[3] = &unk_27845E490;
  v30 = mapperCopy;
  v35 = v30;
  v31 = MEMORY[0x223DA1C10](v34);
  objc_msgSend_updateTableRowColumnStylesWithBlock_(self, v32, v31, v33);
}

- (void)addReferencedStylesToSet:(id)set
{
  setCopy = set;
  dataStore = self->_dataStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2210B5CB8;
  v9[3] = &unk_27845E4B8;
  v10 = setCopy;
  v6 = setCopy;
  objc_msgSend_replaceStylesUsingBlock_(dataStore, v7, v9, v8);
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  dataStore = self->_dataStore;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2210B5E44;
  v11[3] = &unk_27845E4E0;
  v6 = blockCopy;
  v12 = v6;
  objc_msgSend_replaceStylesUsingBlock_(dataStore, v7, v11, v8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2210B5E7C;
  v10[3] = &unk_27845E270;
  v10[4] = self;
  objc_msgSend_p_modifyAllCellsConcurrentlyWithSearchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_preApplyBlock_(self, v9, 2099200, 0, 1, 0, 0, v10, 0);
}

- (void)assertListTilesAndRows
{
  v7 = objc_msgSend_dataStore(self, a2, v2, v3);
  objc_msgSend_assertListTilesAndRows(v7, v4, v5, v6);
}

- (void)validateTableStylesInSameStylesheetExpectingDocSS:(BOOL)s
{
  sCopy = s;
  v6 = objc_msgSend_tableStyle(self, a2, s, v3);
  v10 = objc_msgSend_stylesheet(v6, v7, v8, v9);

  v11 = &stru_2834BADA0;
  if (sCopy)
  {
    v11 = @" Document or Theme";
  }

  v15 = v11;
  if (!sCopy)
  {
    goto LABEL_9;
  }

  v16 = objc_msgSend_documentRoot(self, v12, v13, v14);
  v20 = objc_msgSend_stylesheet(v16, v17, v18, v19);

  if (!v20)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableModel validateTableStylesInSameStylesheetExpectingDocSS:]", v22);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 7247, 0, "Expected non-nil document stylesheet for validation.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
LABEL_9:
    v20 = v10;
    goto LABEL_10;
  }

  if (objc_msgSend_isAncestorOf_(v10, v21, v20, v22))
  {
    v25 = v10;

    v20 = v25;
    if (!v25)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v35 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v23, self, v24);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2210B6284;
  v40[3] = &unk_27845E508;
  v36 = v20;
  v41 = v36;
  v37 = v15;
  v42 = v37;
  objc_msgSend_enumerateAllStylesWithBlock_(v35, v38, v40, v39);
}

- (void)_removeAnnotationsFromDeleteRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  v6 = objc_msgSend_pencilAnnotationOwner(self, a2, *&range.var0.origin, *&range.var0.size);
  v8 = objc_msgSend_regionFromRange_(TSTCellRegion, v7, origin, size);
  v20 = objc_msgSend_annotationsContainedByRegion_(v6, v9, v8, v10);

  if (objc_msgSend_count(v20, v11, v12, v13))
  {
    v17 = objc_msgSend_pencilAnnotationOwner(self, v14, v15, v16);
    objc_msgSend_removeAnnotations_(v17, v18, v20, v19);
  }
}

- (void)upgradeFormatsForCustomFormatListU2_0
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
  dataStore = self->_dataStore;

  objc_msgSend_upgradeCellFormatsU2_0(dataStore, v5, v6, v7);
}

- (void)upgradeFromPreUFF
{
  v5 = objc_msgSend_context(self, a2, v2, v3);
  Cancelled = objc_msgSend_isReadCancelled(v5, v6, v7, v8);

  if ((Cancelled & 1) == 0)
  {
    if (!self->_tableNameStyle)
    {
      objc_msgSend_willModifyForUpgrade(self, v10, v11, v12);
      v16 = objc_msgSend_documentRoot(self, v13, v14, v15);
      v20 = objc_msgSend_theme(v16, v17, v18, v19);
      v22 = objc_msgSend_networkFromTheme_presetID_(TSTTableStyleNetwork, v21, v20, self->_presetIDForUpgrade);
      v26 = objc_msgSend_tableNameStyle(v22, v23, v24, v25);
      tableNameStyle = self->_tableNameStyle;
      self->_tableNameStyle = v26;
    }

    if (!self->_tableNameShapeStyle)
    {
      objc_msgSend_willModifyForUpgrade(self, v10, v11, v12);
      v31 = objc_msgSend_documentRoot(self, v28, v29, v30);
      v35 = objc_msgSend_theme(v31, v32, v33, v34);
      v37 = objc_msgSend_networkFromTheme_presetID_(TSTTableStyleNetwork, v36, v35, self->_presetIDForUpgrade);
      v41 = objc_msgSend_tableNameShapeStyle(v37, v38, v39, v40);
      tableNameShapeStyle = self->_tableNameShapeStyle;
      self->_tableNameShapeStyle = v41;
    }

    if (self->_deprecatedProvider)
    {
      v43 = objc_alloc_init(MEMORY[0x277D80888]);
      v44 = objc_alloc(MEMORY[0x277D80878]);
      v47 = objc_msgSend_initWithDelegate_(v44, v45, v43, v46);
      v48 = [TSTCellMap alloc];
      v87 = objc_msgSend_initWithContext_(v48, v49, v47, v50);
      v54 = objc_msgSend_newCell(self, v51, v52, v53);
      objc_msgSend_clear(v54, v55, v56, v57);
      v59 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v58, 260, 0);
      v63 = objc_msgSend_range(self, v60, v61, v62);
      v65 = objc_msgSend_regionFromRange_(TSTCellRegion, v64, v63, v64);
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = sub_2210B6D20;
      v88[3] = &unk_27845E580;
      v66 = v54;
      v89 = v66;
      selfCopy = self;
      v67 = v59;
      v91 = v67;
      v68 = v87;
      v92 = v68;
      objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v69, v65, 0x400000, v88);

      objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self, v70, v68, 0, 0);
      deprecatedProvider = self->_deprecatedProvider;
      self->_deprecatedProvider = 0;
    }

    else
    {
      v72 = objc_msgSend_documentRoot(self, v10, v11, v12);
      v76 = objc_msgSend_stylesheet(v72, v73, v74, v75);

      v79 = objc_msgSend_networkFromStyleProvider_(TSTTableStyleNetwork, v77, self, v78);
      v83 = objc_msgSend_range(self, v80, v81, v82);
      v85 = objc_msgSend_regionFromRange_(TSTCellRegion, v84, v83, v84);
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = sub_2210B6A4C;
      v93[3] = &unk_27845E558;
      v43 = v76;
      v94 = v43;
      v47 = v79;
      v95 = v47;
      selfCopy2 = self;
      objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v86, v85, 0x80000, v93);

      v68 = v94;
    }
  }
}

- (void)p_upgradeMerges
{
  dataStore = self->_dataStore;
  if (dataStore)
  {
    objc_msgSend_mergedRects(dataStore, a2, v2, v3);
    v7 = v8;
    if (v8 != v9)
    {
      do
      {
        objc_msgSend_insertBaseMergeRangeRemovingOverlaps_(self->_mergeOwner, v6, *v7, v7[1]);
        v7 += 2;
      }

      while (v7 != v9);
      v7 = v8;
    }

    if (v7)
    {
      operator delete(v7);
    }
  }
}

- (TSUModelCellCoord)baseCellCoordForCellContainingRichTextStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTTableModel baseCellCoordForCellContainingRichTextStorage:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 7706, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3812000000;
  v30 = sub_2210B7330;
  v31 = nullsub_8;
  v32 = &unk_22188E88F;
  v33 = 0x7FFF7FFFFFFFLL;
  v17 = objc_msgSend_range(self, v4, v5, v6);
  v19 = objc_msgSend_regionFromRange_(TSTCellRegion, v18, v17, v18);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2210B7340;
  v24[3] = &unk_27845E5A8;
  v20 = storageCopy;
  v25 = v20;
  v26 = &v27;
  objc_msgSend_p_iterateDataStoreCellsInRegion_searchFlags_usingBlock_(self, v21, v19, 0x80000, v24);

  v22 = v28[6];
  _Block_object_dispose(&v27, 8);

  return v22;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  LOWORD(context) = objc_msgSend_numberOfColumns(self, v9, v10, v11);
  if (context == objc_msgSend_numberOfColumns(v8, v12, v13, v14) && (v18 = objc_msgSend_numberOfRows(self, v15, v16, v17), v18 == objc_msgSend_numberOfRows(v8, v19, v20, v21)))
  {
    v25 = objc_msgSend_tableNameEnabled(self, v22, v23, v24);
    if (v25 != objc_msgSend_tableNameEnabled(v8, v26, v27, v28))
    {
      TSDMixingTypeBestFromMixingTypes();
    }

    if (objc_msgSend_tableNameEnabled(self, v29, v30, v31) && objc_msgSend_tableNameEnabled(v8, v34, v35, v36))
    {
      v37 = objc_msgSend_tableName(self, v34, v35, v36);
      v41 = objc_msgSend_tableName(v8, v38, v39, v40);
      isEqualToString = objc_msgSend_isEqualToString_(v37, v42, v41, v43);

      if ((isEqualToString & 1) == 0)
      {
        TSDMixingTypeBestFromMixingTypes();
      }

      v48 = objc_msgSend_tableNameBorderEnabled(self, v45, v46, v47);
      if (v48 != objc_msgSend_tableNameBorderEnabled(v8, v49, v50, v51))
      {
        TSDMixingTypeBestFromMixingTypes();
      }

      if (objc_msgSend_tableNameBorderEnabled(self, v52, v53, v54) && objc_msgSend_tableNameBorderEnabled(v8, v55, v56, v57))
      {
        v58 = objc_msgSend_tableNameBorderStroke(self, v55, v56, v57);
        v62 = objc_msgSend_tableNameBorderStroke(v8, v59, v60, v61);
        TSDMixingTypeWithObjects();
        TSDMixingTypeBestFromMixingTypes();
      }

      objc_msgSend_tableNameHeight(self, v55, v56, v57);
      v64 = v63;
      objc_msgSend_tableNameHeight(v8, v65, v66, v67);
      if (v64 != v71)
      {
        TSDMixingTypeBestFromMixingTypes();
      }

      v72 = objc_msgSend_tableNameStyle(self, v68, v69, v70);
      v76 = objc_msgSend_tableNameStyle(v8, v73, v74, v75);
      TSDMixingTypeWithObjects();
      TSDMixingTypeBestFromMixingTypes();

      v80 = objc_msgSend_tableNameShapeStyle(self, v77, v78, v79);
      v84 = objc_msgSend_tableNameShapeStyle(v8, v81, v82, v83);
      TSDMixingTypeWithObjects();
      TSDMixingTypeBestFromMixingTypes();
    }

    v85 = objc_msgSend_tableStyle(self, v34, v35, v36);
    v89 = objc_msgSend_tableStyle(v8, v86, v87, v88);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v93 = objc_msgSend_bodyCellStyle(self, v90, v91, v92);
    v97 = objc_msgSend_bodyCellStyle(v8, v94, v95, v96);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v101 = objc_msgSend_headerRowCellStyle(self, v98, v99, v100);
    v105 = objc_msgSend_headerRowCellStyle(v8, v102, v103, v104);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v109 = objc_msgSend_headerColumnCellStyle(self, v106, v107, v108);
    v113 = objc_msgSend_headerColumnCellStyle(v8, v110, v111, v112);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v117 = objc_msgSend_footerRowCellStyle(self, v114, v115, v116);
    v121 = objc_msgSend_footerRowCellStyle(v8, v118, v119, v120);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v125 = objc_msgSend_bodyTextStyle(self, v122, v123, v124);
    v129 = objc_msgSend_bodyTextStyle(v8, v126, v127, v128);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v133 = objc_msgSend_headerRowTextStyle(self, v130, v131, v132);
    v137 = objc_msgSend_headerRowTextStyle(v8, v134, v135, v136);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v141 = objc_msgSend_headerColumnTextStyle(self, v138, v139, v140);
    v145 = objc_msgSend_headerColumnTextStyle(v8, v142, v143, v144);
    TSDMixingTypeWithObjects();
    TSDMixingTypeBestFromMixingTypes();

    v149 = objc_msgSend_footerRowTextStyle(self, v146, v147, v148);
    v153 = objc_msgSend_footerRowTextStyle(v8, v150, v151, v152);
    TSDMixingTypeWithObjects();
    v32 = TSDMixingTypeBestFromMixingTypes();

    if (v32 >= 3)
    {
      v228 = objectCopy;
      v229 = contextCopy;
      v157 = [TSTCellIterator alloc];
      v161 = objc_msgSend_tableInfo(self, v158, v159, v160);
      v165 = objc_msgSend_range(self, v162, v163, v164);
      v167 = objc_msgSend_regionFromRange_(TSTCellRegion, v166, v165, v166);
      v171 = objc_msgSend_range(self, v168, v169, v170);
      v230 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v157, v172, v161, self, v167, 128, 536871936, v171, v172);

      v173 = [TSTCellIterator alloc];
      v177 = objc_msgSend_tableInfo(v8, v174, v175, v176);
      v181 = objc_msgSend_range(v8, v178, v179, v180);
      v183 = objc_msgSend_regionFromRange_(TSTCellRegion, v182, v181, v182);
      v187 = objc_msgSend_range(v8, v184, v185, v186);
      v189 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v173, v188, v177, v8, v183, 128, 536871936, v187, v188);

      v192 = 0;
      v193 = 0;
      while (1)
      {
        v232 = v192;
        NextCellData = objc_msgSend_getNextCellData_(v230, v190, &v232, v191);
        v195 = v232;

        if (!NextCellData)
        {
          break;
        }

        v231 = v193;
        v197 = objc_msgSend_getNextCellData_(v189, v190, &v231, v191);
        v198 = v231;

        if (v197)
        {
          v199 = objc_msgSend_cell(v195, v190, v196, v191);
          v203 = objc_msgSend_cell(v198, v200, v201, v202);
          if ((objc_msgSend_hasEqualContentToCell_(v199, v204, v203, v205) & 1) == 0)
          {
            TSDMixingTypeBestFromMixingTypes();
          }

          v212 = objc_msgSend_cellStyle(v199, v206, v207, v208);
          if (!v212)
          {
            v213 = objc_msgSend_cellID(v195, v209, v210, v211);
            v212 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(self, v214, v213, 0);
          }

          v218 = objc_msgSend_cellStyle(v203, v209, v210, v211);
          if (!v218)
          {
            v219 = objc_msgSend_cellID(v198, v215, v216, v217);
            v218 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(v8, v220, v219, 0);
          }

          TSDMixingTypeWithObjects();
          v32 = TSDMixingTypeBestFromMixingTypes();

          v192 = v195;
          v193 = v198;
          if (v32 > 2)
          {
            continue;
          }
        }

        goto LABEL_32;
      }

      v198 = v193;
LABEL_32:
      objc_msgSend_terminate(v189, v190, v196, v191);
      objc_msgSend_terminate(v230, v221, v222, v223);

      objectCopy = v228;
      contextCopy = v229;
    }

    hasAlternatingRows = objc_msgSend_hasAlternatingRows(self, v154, v155, v156);
    if (hasAlternatingRows != objc_msgSend_hasAlternatingRows(v8, v225, v226, v227))
    {
      v32 = TSDMixingTypeBestFromMixingTypes();
    }
  }

  else
  {
    v32 = 1;
  }

  return v32;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  v290 = objc_msgSend_tableInfo(self, v8, v9, v10);
  v296 = v7;
  v289 = objectCopy;
  v11 = [TSTTableModel alloc];
  v15 = objc_msgSend_context(self, v12, v13, v14);
  v19 = objc_msgSend_range(self, v16, v17, v18);
  v21 = objc_msgSend_regionFromRange_(TSTCellRegion, v20, v19, v20);
  v295 = objc_msgSend_initWithContext_fromSourceModel_region_tableInfo_waitForCalcEngine_(v11, v22, v15, self, v21, v290, 0);

  objc_msgSend_tableNameEnabled(self, v23, v24, v25);
  objc_msgSend_tableNameEnabled(v7, v26, v27, v28);
  v29 = TSUMixBOOLs();
  objc_msgSend_setTableNameEnabled_(v295, v30, v29, v31);
  if (fraction >= 0.5)
  {
    objc_msgSend_tableName(v7, v32, v33, v34);
  }

  else
  {
    objc_msgSend_tableName(self, v32, v33, v34);
  }
  v35 = ;
  objc_msgSend_setTableName_(v295, v36, v35, v37);

  objc_msgSend_tableNameHeight(self, v38, v39, v40);
  objc_msgSend_tableNameHeight(v7, v41, v42, v43);
  TSUMixFloats();
  objc_msgSend_setTableNameHeight_(v295, v44, v45, v46);
  objc_msgSend_tableNameBorderEnabled(self, v47, v48, v49);
  objc_msgSend_tableNameBorderEnabled(v7, v50, v51, v52);
  v53 = TSUMixBOOLs();
  objc_msgSend_setTableNameBorderEnabled_(v295, v54, v53, v55);
  v59 = objc_msgSend_tableNameStyle(self, v56, v57, v58);
  v63 = objc_msgSend_tableNameStyle(v7, v60, v61, v62);
  v64 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setTableNameStyle_(v295, v65, v64, v66);

  v70 = objc_msgSend_tableNameShapeStyle(self, v67, v68, v69);
  v74 = objc_msgSend_tableNameShapeStyle(v7, v71, v72, v73);
  v75 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setTableNameShapeStyle_(v295, v76, v75, v77);

  v81 = objc_msgSend_tableStyle(self, v78, v79, v80);
  v85 = objc_msgSend_tableStyle(v7, v82, v83, v84);
  v86 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setTableStyle_(v295, v87, v86, v88);

  v92 = objc_msgSend_bodyCellStyle(self, v89, v90, v91);
  v96 = objc_msgSend_bodyCellStyle(v7, v93, v94, v95);
  v97 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBodyCellStyle_(v295, v98, v97, v99);

  v103 = objc_msgSend_headerRowCellStyle(self, v100, v101, v102);
  v107 = objc_msgSend_headerRowCellStyle(v7, v104, v105, v106);
  v108 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderRowCellStyle_(v295, v109, v108, v110);

  v114 = objc_msgSend_headerColumnCellStyle(self, v111, v112, v113);
  v118 = objc_msgSend_headerColumnCellStyle(v7, v115, v116, v117);
  v119 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderColumnCellStyle_(v295, v120, v119, v121);

  v125 = objc_msgSend_footerRowCellStyle(self, v122, v123, v124);
  v129 = objc_msgSend_footerRowCellStyle(v7, v126, v127, v128);
  v130 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setFooterRowCellStyle_(v295, v131, v130, v132);

  v136 = objc_msgSend_bodyTextStyle(self, v133, v134, v135);
  v140 = objc_msgSend_bodyTextStyle(v7, v137, v138, v139);
  v141 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBodyTextStyle_(v295, v142, v141, v143);

  v147 = objc_msgSend_headerRowTextStyle(self, v144, v145, v146);
  v151 = objc_msgSend_headerRowTextStyle(v7, v148, v149, v150);
  v152 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderRowTextStyle_(v295, v153, v152, v154);

  v158 = objc_msgSend_headerColumnTextStyle(self, v155, v156, v157);
  v162 = objc_msgSend_headerColumnTextStyle(v7, v159, v160, v161);
  v163 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setHeaderColumnTextStyle_(v295, v164, v163, v165);

  v169 = objc_msgSend_footerRowTextStyle(self, v166, v167, v168);
  v173 = objc_msgSend_footerRowTextStyle(v7, v170, v171, v172);
  v174 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setFooterRowTextStyle_(v295, v175, v174, v176);

  v177 = [TSTCellIterator alloc];
  v181 = objc_msgSend_tableInfo(v295, v178, v179, v180);
  v185 = objc_msgSend_range(v295, v182, v183, v184);
  v187 = objc_msgSend_regionFromRange_(TSTCellRegion, v186, v185, v186);
  v191 = objc_msgSend_range(v295, v188, v189, v190);
  v294 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v177, v192, v181, v295, v187, 128, 536871936, v191, v192);

  v193 = [TSTCellIterator alloc];
  v197 = objc_msgSend_tableInfo(self, v194, v195, v196);
  v201 = objc_msgSend_range(self, v198, v199, v200);
  v203 = objc_msgSend_regionFromRange_(TSTCellRegion, v202, v201, v202);
  v207 = objc_msgSend_range(self, v204, v205, v206);
  v293 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v193, v208, v197, self, v203, 128, 536871936, v207, v208);

  v209 = [TSTCellIterator alloc];
  v213 = objc_msgSend_tableInfo(v7, v210, v211, v212);
  v217 = objc_msgSend_range(v7, v214, v215, v216);
  v219 = objc_msgSend_regionFromRange_(TSTCellRegion, v218, v217, v218);
  v223 = objc_msgSend_range(v7, v220, v221, v222);
  v292 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(v209, v224, v213, v7, v219, 128, 536871936, v223, v224);

  v228 = objc_msgSend_context(self, v225, v226, v227);
  selfCopy = self;
  v231 = objc_msgSend_cellMapWithContext_(TSTCellMap, v229, v228, v230);

  v234 = 0;
  v235 = 0;
  for (i = 0; ; i = v238)
  {
    v299 = i;
    NextCellData = objc_msgSend_getNextCellData_(v294, v232, &v299, v233);
    v238 = v299;

    if (!NextCellData)
    {
      v243 = v235;
      goto LABEL_15;
    }

    v298 = v235;
    v242 = objc_msgSend_getNextCellData_(v293, v239, &v298, v241);
    v243 = v298;

    if (!v242)
    {
      goto LABEL_15;
    }

    v297 = v234;
    v244 = objc_msgSend_getNextCellData_(v292, v239, &v297, v241);
    v245 = v297;

    if (!v244)
    {
      break;
    }

    v246 = objc_msgSend_cell(v243, v239, v240, v241);
    v250 = objc_msgSend_cell(v245, v247, v248, v249);
    v254 = objc_msgSend_copy(v246, v251, v252, v253);
    v261 = objc_msgSend_cellStyle(v246, v255, v256, v257);
    if (!v261)
    {
      v262 = objc_msgSend_cellID(v243, v258, v259, v260);
      v261 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(selfCopy, v263, v262, 0);
    }

    v267 = objc_msgSend_cellStyle(v250, v258, v259, v260);
    if (!v267)
    {
      v268 = objc_msgSend_cellID(v245, v264, v265, v266);
      v267 = objc_msgSend_cellStyleForCellWithEmptyStyleAtBaseCellCoord_isDefault_(v296, v269, v268, 0);
    }

    v270 = TSDMixingMixedObjectWithFraction();
    objc_msgSend_setCellStyle_(v254, v271, v270, v272);
    v276 = objc_msgSend_cellID(v238, v273, v274, v275);
    objc_msgSend_addCell_andCellID_(v231, v277, v254, v276);

    v234 = v245;
    v235 = v243;
  }

  v234 = v245;
LABEL_15:
  objc_msgSend_terminate(v292, v239, v240, v241);
  objc_msgSend_terminate(v293, v278, v279, v280);
  objc_msgSend_terminate(v294, v281, v282, v283);
  if (objc_msgSend_count(v231, v284, v285, v286))
  {
    objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(v295, v287, v231, 1, 0);
  }

  return v295;
}

- (void)p_iterateDataStoreCellsInRegion:(id)region searchFlags:(unint64_t)flags usingBlock:(id)block
{
  regionCopy = region;
  blockCopy = block;
  v9 = [TSTDataStoreIterator alloc];
  v11 = objc_msgSend_initWithModel_region_flags_searchMask_(v9, v10, self, regionCopy, 0, flags);
  objc_msgSend_iterateCellsUsingBlock_(v11, v12, blockCopy, v13);
  objc_msgSend_terminate(v11, v14, v15, v16);
}

- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)bounds result:(id *)result
{
  resultCopy = result;
  v6 = objc_msgSend_dataStore(self, a2, *&bounds, result);
  LOBYTE(resultCopy) = objc_msgSend_auditTilesForRowOverlapAndExtensionPastTableBounds_result_(v6, v7, *&bounds, resultCopy);

  return resultCopy;
}

- (BOOL)confirmRefCountsReturningResult:(id *)result
{
  resultCopy = result;
  v5 = objc_msgSend_dataStore(self, a2, result, v3);
  LOBYTE(resultCopy) = objc_msgSend_confirmRefCountsReturningResult_(v5, v6, resultCopy, v7);

  return resultCopy;
}

- (BOOL)auditDatalistDuplicationReturningResult:(id *)result
{
  resultCopy = result;
  v5 = objc_msgSend_dataStore(self, a2, result, v3);
  LOBYTE(resultCopy) = objc_msgSend_auditDatalistDuplicationReturningResult_(v5, v6, resultCopy, v7);

  return resultCopy;
}

- (BOOL)auditRowInfoCellCountsReturningResult:(id *)result
{
  resultCopy = result;
  v5 = objc_msgSend_dataStore(self, a2, result, v3);
  LOBYTE(resultCopy) = objc_msgSend_auditRowInfoCellCountsReturningResult_(v5, v6, resultCopy, v7);

  return resultCopy;
}

- (BOOL)auditColumnRowCellCountsReturningResult:(id *)result hasUndercounts:(BOOL *)undercounts
{
  undercountsCopy = undercounts;
  v6 = objc_msgSend_dataStore(self, a2, result, undercounts);
  LOBYTE(undercountsCopy) = objc_msgSend_auditColumnRowCellCountsReturningResult_hasUndercounts_(v6, v7, result, undercountsCopy);

  return undercountsCopy;
}

- (void)accumulateCurrentCellsConcurrently:(id)concurrently
{
  concurrentlyCopy = concurrently;
  v8 = objc_msgSend_newCell(self, v5, v6, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2210B8C58;
  v14[3] = &unk_27845E5D0;
  v9 = concurrentlyCopy;
  v15 = v9;
  selfCopy = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2210B8D24;
  v12[3] = &unk_27845E620;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  objc_msgSend_accumulateBordersConcurrentlyUsingBlock_accumulateCellsConcurrentlyUsingBlock_(v9, v11, v14, v12);
}

- (void)setCellsConcurrently:(id)concurrently ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer
{
  warningsCopy = warnings;
  formulaCopy = formula;
  concurrentlyCopy = concurrently;
  replacerCopy = replacer;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_2210B9338;
  v51[3] = &unk_27845E648;
  v51[4] = self;
  v52 = formulaCopy;
  objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v12, 6, 1, v51);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2210B94B0;
  v50[3] = &unk_27845E670;
  v50[4] = self;
  objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v13, 2, 1, v50);
  objc_msgSend_updateDataListsConcurrentlyWithConcurrentCellMap_clearImportWarnings_(self->_dataStore, v14, concurrentlyCopy, warningsCopy);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2210B958C;
  v49[3] = &unk_27845E670;
  v49[4] = self;
  objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v15, 7, 0, v49);
  if (objc_msgSend_tsp_isInDocument(self, v16, v17, v18))
  {
    v22 = objc_msgSend_documentRoot(self, v19, v20, v21);
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = sub_2210B9788;
    v47 = &unk_27845E670;
    v48 = v22;
    v23 = v22;
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v24, 5, 0, &v44);
  }

  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    v29 = calcEngine;
    if (replacerCopy)
    {
LABEL_5:
      v33 = replacerCopy;
      goto LABEL_11;
    }
  }

  else
  {
    v34 = objc_msgSend_documentRoot(self, v19, v20, v21);
    v29 = objc_msgSend_calculationEngine(v34, v35, v36, v37);

    if (replacerCopy)
    {
      goto LABEL_5;
    }
  }

  v38 = objc_msgSend_upgradingFormulasMinion(v29, v26, v27, v28, v44, v45, v46, v47);
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v29;
  }

  v33 = v40;

LABEL_11:
  dataStore = self->_dataStore;
  v42 = objc_msgSend_conditionalStyleFormulaOwner(self, v30, v31, v32, v44, v45, v46, v47);
  objc_msgSend_setCellsConcurrently_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormula_clearImportWarnings_(dataStore, v43, concurrentlyCopy, &self->_tableUID, v33, v42, formulaCopy, warningsCopy);
}

- (void)prepareToApplyConcurrentCellMap:(id)map
{
  mapCopy = map;
  v7 = objc_msgSend_tableInfo(self, v4, v5, v6);
  v11 = objc_msgSend_groupBy(v7, v8, v9, v10);
  objc_msgSend_startOfGroupingChangesBatch(v11, v12, v13, v14);

  v18 = objc_msgSend_cellWillChangeDistributor(self, v15, v16, v17);
  objc_msgSend_willApplyConcurrentCellMap_tableUID_(v18, v19, mapCopy, &self->_tableUID);

  objc_msgSend_prepareToApplyConcurrentCellMap_(self->_dataStore, v20, mapCopy, v21);
}

- (void)didApplyConcurrentCellMap:(id)map
{
  mapCopy = map;
  objc_msgSend_didApplyConcurrentCellMap_(self->_dataStore, v4, mapCopy, v5);
  v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
  v13 = objc_msgSend_groupBy(v9, v10, v11, v12);
  objc_msgSend_endOfGroupingChangesBatch(v13, v14, v15, v16);
}

- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)flags affectsCellBorders:(BOOL)borders ignoreFormulas:(BOOL)formulas clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer modificationBlock:(id)block preApplyBlock:(id)applyBlock
{
  warningsCopy = warnings;
  formulasCopy = formulas;
  bordersCopy = borders;
  replacerCopy = replacer;
  blockCopy = block;
  applyBlockCopy = applyBlock;
  v20 = objc_msgSend_range(self, v17, v18, v19);
  v22 = objc_msgSend_regionFromRange_(TSTCellRegion, v21, v20, v21);
  objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v23, v22, flags, bordersCopy, formulasCopy, warningsCopy, replacerCopy, blockCopy, 0, 0, applyBlockCopy);
}

- (void)p_modifyAllCellsConcurrentlyWithSearchFlags:(unint64_t)flags affectsCellBorders:(BOOL)borders ignoreFormulas:(BOOL)formulas clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer modificationBlock:(id)block furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)self0 preApplyBlock:(id)self1
{
  warningsCopy = warnings;
  formulasCopy = formulas;
  bordersCopy = borders;
  replacerCopy = replacer;
  blockCopy = block;
  neededBlockCopy = neededBlock;
  concurrentBlockCopy = concurrentBlock;
  applyBlockCopy = applyBlock;
  v24 = objc_msgSend_range(self, v21, v22, v23);
  v26 = objc_msgSend_regionFromRange_(TSTCellRegion, v25, v24, v25);
  objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v27, v26, flags, bordersCopy, formulasCopy, warningsCopy, replacerCopy, blockCopy, neededBlockCopy, concurrentBlockCopy, applyBlockCopy);
}

- (void)p_modifyCellsConcurrentlyInBaseRegion:(id)region searchFlags:(unint64_t)flags affectsCellBorders:(BOOL)borders ignoreFormulas:(BOOL)formulas clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer modificationBlock:(id)block furtherPassNeededBlock:(id)self0 furtherPassConcurrentBlock:(id)self1 preApplyBlock:(id)self2
{
  warningsCopy = warnings;
  formulasCopy = formulas;
  bordersCopy = borders;
  regionCopy = region;
  replacerCopy = replacer;
  blockCopy = block;
  neededBlockCopy = neededBlock;
  concurrentBlockCopy = concurrentBlock;
  applyBlockCopy = applyBlock;
  objc_msgSend_loadAllLazyReferences(self->_dataStore, v22, v23, v24, blockCopy);
  v25 = [TSTConcurrentCellIterator alloc];
  v27 = objc_msgSend_initWithTableModel_baseRegion_flags_searchFlags_(v25, v26, self, regionCopy, 2, flags);
  v28 = warningsCopy;
  v29 = [TSTConcurrentCellMap alloc];
  v31 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v29, v30, 0, 1, bordersCopy);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_2210BA06C;
  v59[3] = &unk_27845DED8;
  v59[4] = self;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_2210BA0F4;
  v57[3] = &unk_27845E698;
  v32 = blockCopy;
  v58 = v32;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2210BA20C;
  v55[3] = &unk_27845E6E8;
  v33 = concurrentBlockCopy;
  v56 = v33;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_2210BA3B0;
  v53[3] = &unk_27845DDE8;
  v34 = v31;
  v54 = v34;
  objc_msgSend_enumerateModelConcurrentlyUsingChunkBeginBlock_concurrentBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_finalBlock_(v27, v35, v59, v57, neededBlockCopy, v55, v53);
  if (applyBlockCopy)
  {
    applyBlockCopy[2](applyBlockCopy);
  }

  if (objc_msgSend_hasCells(v34, v36, v37, v38))
  {
    objc_msgSend_willApplyToTableModel_(v34, v39, self, v40);
    objc_msgSend_prepareToApplyConcurrentCellMap_(self, v41, v34, v42);
    objc_msgSend_accumulateCurrentCellsConcurrently_(self, v43, v34, v44);
    objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v45, v34, formulasCopy, v28, replacerCopy);
    objc_msgSend_didApplyConcurrentCellMap_(self, v46, v34, v47);
    objc_msgSend_validate(self, v48, v49, v50);
  }
}

- (void)clearSpillCellsForOriginID:(TSUCellCoord)d boundingResultRegion:(id *)region
{
  v10 = objc_msgSend_calcEngine(self, a2, *&d, region);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableModel clearSpillCellsForOriginID:boundingResultRegion:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 8231, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v34._lower = objc_msgSend_tableUID(self, v7, v8, v9);
  v34._upper = v20;
  dCopy = d;
  v33 = v34;
  if (v10)
  {
    objc_msgSend_spillingCellsForFormulaAt_(v10, v20, &dCopy, v21);
  }

  else
  {
    memset(&v31, 0, sizeof(v31));
  }

  if ((TSCECellRefSet::isEmpty(&v31) & 1) == 0)
  {
    TSCECellRefSet::coordsForOwnerUID(&v30, &v31, &v34);
    v22 = TSCECellCoordSet::boundingBox(&v30);
    v24 = objc_msgSend_regionFromRange_(TSTCellRegion, v23, v22, v23);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3321888768;
    v27[2] = sub_2210BA7B8;
    v27[3] = &unk_2834A1720;
    v27[4] = &v34;
    TSCECellRefSet::TSCECellRefSet(&v28, &v31);
    dCopy2 = d;
    objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v25, v24, 0x20000, 0, 0, 0, 0, v27, 0, 0, 0);
    if (region)
    {
      v26 = v24;
      *region = v24;
    }

    sub_22107C800(&v28, v28._coordsForOwnerUid.__tree_.__end_node_.__left_);
    sub_22107C860(&v30._rowsPerColumn, v30._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  sub_22107C800(&v31, v31._coordsForOwnerUid.__tree_.__end_node_.__left_);
}

- (void)clearSpillCellsInRange:(const TSUCellRect *)range
{
  v5 = objc_msgSend_regionFromRange_(TSTCellRegion, a2, *&range->origin, *&range->size);
  objc_msgSend_p_modifyCellsConcurrentlyInBaseRegion_searchFlags_affectsCellBorders_ignoreFormulas_clearImportWarnings_formulaReplacer_modificationBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_preApplyBlock_(self, v4, v5, 0x20000, 0, 0, 0, 0, &unk_2834A1750, 0, 0, 0);
}

- (TSCECellCoordSet)arrayFormulasSpillingIntoRegion:(SEL)region
{
  v16._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v16._rowsPerColumn.__tree_.__size_ = 0;
  v16._rectRepresentation.origin = 0;
  v16._rectRepresentation.size = 0;
  v16._rowsPerColumn.__tree_.__begin_node_ = &v16._rowsPerColumn.__tree_.__end_node_;
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], region, "[TSTTableModel arrayFormulasSpillingIntoRegion:]", v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 8308, 0, "arrayFormulasSpillingIntoRegion: is intended for use by commands, not for QuickLook.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  TSCECellCoordSet::TSCECellCoordSet(retstr, &v16);
  sub_22107C860(&v16._rowsPerColumn, v16._rowsPerColumn.__tree_.__end_node_.__left_);
  return result;
}

- (vector<TSKUIDStructTract,)spillingRangesInRegion:(TSTTableModel *)self
{
  v6 = a4;
  v10 = objc_msgSend_calcEngine(self, v7, v8, v9);
  v11 = v10;
  v12 = &v35;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4812000000;
  v38 = sub_2210BADB8;
  v39 = sub_2210BADDC;
  v40 = &unk_22188E88F;
  memset(v41, 0, sizeof(v41));
  if (v10)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x4812000000;
    v30 = sub_2210BAE08;
    v31 = sub_2210BAE14;
    v32 = &unk_22188E88F;
    v34[0] = 0;
    v34[1] = 0;
    v33 = v34;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2210BAE20;
    v23[3] = &unk_27845E730;
    v13 = v10;
    v24 = v13;
    selfCopy = self;
    v26 = &v27;
    objc_msgSend_enumerateCellRangesUsingBlock_(v6, v14, v23, v15);
    v16 = v28;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2210BAEB4;
    v19[3] = &unk_27845E758;
    v20 = v13;
    selfCopy2 = self;
    v22 = &v35;
    TSCECellRefSet::enumerateCellRefsUsingBlock(v16 + 6, v19);

    _Block_object_dispose(&v27, 8);
    sub_22107C800(&v33, v34[0]);
    v12 = v36;
    v17 = v36[6];
  }

  else
  {
    v17 = 0;
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_2210BC83C(retstr, v17, v12[7], 0xAAAAAAAAAAAAAAABLL * ((v12[7] - v17) >> 4));
  _Block_object_dispose(&v35, 8);
  v27 = v41;
  sub_2210BC30C(&v27);

  return result;
}

- (void)resetSpillingRangesInRange:(const TSUCellRect *)range
{
  v6 = objc_msgSend_calcEngine(self, a2, range, v3);
  v14._lower = objc_msgSend_tableUID(self, v7, v8, v9);
  v14._upper = v10;
  TSCERangeRef::TSCERangeRef(&v13, range, &v14);
  objc_msgSend_resetSpillingFormulasInRange_(v6, v11, &v13, v12);
}

- (TSCECellCoordSet)clearArrayFormulasSpillingIntoRegion:(SEL)region affectedRegion:(id)affectedRegion
{
  v16._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v16._rowsPerColumn.__tree_.__size_ = 0;
  v16._rectRepresentation.origin = 0;
  v16._rectRepresentation.size = 0;
  v16._rowsPerColumn.__tree_.__begin_node_ = &v16._rowsPerColumn.__tree_.__end_node_;
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], region, "[TSTTableModel clearArrayFormulasSpillingIntoRegion:affectedRegion:]", a5);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableModel.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 8378, 0, "clearArrayFormulasSpillingIntoRegion: is intended for use by commands, not for QuickLook.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  TSCECellCoordSet::TSCECellCoordSet(retstr, &v16);
  sub_22107C860(&v16._rowsPerColumn, v16._rowsPerColumn.__tree_.__end_node_.__left_);
  return result;
}

- (BOOL)hasSpillRangesIntersectingCellRegion:(id)region
{
  regionCopy = region;
  v11 = objc_msgSend_calcEngine(self, v5, v6, v7);
  if (v11)
  {
    v12 = objc_msgSend_tableUID(self, v8, v9, v10);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2210BB250;
    v18[3] = &unk_27845E780;
    v21 = v12;
    v22 = v13;
    v19 = v11;
    v20 = &v23;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v14, v18, v15);
    v16 = *(v24 + 24);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID._lower;
  upper = p_tableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)fromTableUID
{
  p_fromTableUID = &self->_fromTableUID;
  lower = self->_fromTableUID._lower;
  upper = p_fromTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)fromGroupByUID
{
  p_fromGroupByUID = &self->_fromGroupByUID;
  lower = self->_fromGroupByUID._lower;
  upper = p_fromGroupByUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  *(self + 20) = 0;
  *(self + 19) = 0;
  *(self + 18) = self + 152;
  return self;
}

- (TSKUIDStruct)groupByUID
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_groupBy(v4, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_groupByUid(v8, v9, v10, v11);
    v14 = v13;
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

  v15 = v12;
  v16 = v14;
  result._upper = v16;
  result._lower = v15;
  return result;
}

+ (id)tableModelForTableUID:(const TSKUIDStruct *)d withCalcEngine:(id)engine
{
  v4 = objc_msgSend_resolverForTableUID_(engine, a2, d->_lower, d->_upper);

  return v4;
}

- (id)sheetName
{
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v6 = TSUProtocolCast();

  v9 = objc_msgSend_resolverContainerNameForResolver_(v6, v7, self, v8, &unk_283599058);

  return v9;
}

- (BOOL)hasCellID:(TSUCellCoord)d
{
  v8.origin = objc_msgSend_range(self, a2, *&d, v3);
  v8.size = v5;
  dCopy = d;
  return TSUCellRect::contains(&v8, dCopy);
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v4 = objc_msgSend_range(self, a2, v2, v3);

  v6 = j__TSUCellRectToTSCERangeCoordinate(v4, v5);
  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (void)resetDependenciesForCell:(TSUCellCoord)cell
{
  v11 = objc_msgSend_formulaSpecAtBaseCellCoord_(self, a2, *&cell, v3);
  if (v11)
  {
    v9 = objc_msgSend_calcEngine(self, v6, v7, v8);
    objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(self, v10, v11, *&cell, v9);
  }
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  v4 = *&index;
  v5 = objc_msgSend_columnRowUIDMap(self, a2, *&index, v3);
  v8 = objc_msgSend_rowUIDForRowIndex_(v5, v6, v4, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v5 = objc_msgSend_columnRowUIDMap(self, a2, d._lower, d._upper);
  LODWORD(upper) = objc_msgSend_rowIndexForRowUID_(v5, v6, lower, upper);

  return upper;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_columnRowUIDMap(self, v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v9, v10, v14, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)rowIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, ds, v3);
  v8 = objc_msgSend_rowIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (id)mutableRowIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, ds, v3);
  v8 = objc_msgSend_mutableRowIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  length = a4.length;
  location = a4.location;
  v7 = objc_msgSend_columnRowUIDMap(self, range, a4.location, a4.length);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_rowUIDsForRowRange_(v7, v8, location, length);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, ds, v3);
  v8 = objc_msgSend_rowRangeForUIDs_(v5, v6, ds, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDs
{
  v11 = objc_msgSend_columnRowUIDMap(self, a3, v3, v4);
  v9 = objc_msgSend_rowUIDs(v11, v6, v7, v8);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_221086EBC(retstr, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 4);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids
{
  v7 = objc_msgSend_columnRowUIDMap(self, uids, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_orderedRowUidsFromUids_(v7, v8, a4, v9);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  indexCopy = index;
  v5 = objc_msgSend_columnRowUIDMap(self, a2, index, v3);
  v8 = objc_msgSend_columnUIDForColumnIndex_(v5, v6, indexCopy, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v5 = objc_msgSend_columnRowUIDMap(self, a2, d._lower, d._upper);
  LOWORD(upper) = objc_msgSend_columnIndexForColumnUID_(v5, v6, lower, upper);

  return upper;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_columnRowUIDMap(self, v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v9, v10, v14, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)columnIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, ds, v3);
  v8 = objc_msgSend_columnIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (id)mutableColumnIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, ds, v3);
  v8 = objc_msgSend_mutableColumnIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  length = a4.length;
  location = a4.location;
  v7 = objc_msgSend_columnRowUIDMap(self, range, a4.location, a4.length);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_columnUIDsForColumnRange_(v7, v8, location, length);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, ds, v3);
  v8 = objc_msgSend_columnRangeForUIDs_(v5, v6, ds, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDs
{
  v11 = objc_msgSend_columnRowUIDMap(self, a3, v3, v4);
  v9 = objc_msgSend_columnUIDs(v11, v6, v7, v8);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_221086EBC(retstr, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 4);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids
{
  v7 = objc_msgSend_columnRowUIDMap(self, uids, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_orderedColumnUidsFromUids_(v7, v8, a4, v9);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)rowUuids
{
  v4 = objc_msgSend_columnRowUIDMap(self, a2, v2, v3);
  v8 = objc_msgSend_rowUuids(v4, v5, v6, v7);

  return v8;
}

- (id)columnUuids
{
  v4 = objc_msgSend_columnRowUIDMap(self, a2, v2, v3);
  v8 = objc_msgSend_columnUuids(v4, v5, v6, v7);

  return v8;
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index
{
  v4 = *&index;
  v7 = objc_msgSend_columnRowUIDMap(self, a2, bytes, *&index);
  objc_msgSend_getUUIDBytes_forRowIndex_(v7, v6, bytes, v4);
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index
{
  indexCopy = index;
  v7 = objc_msgSend_columnRowUIDMap(self, a2, bytes, index);
  objc_msgSend_getUUIDBytes_forColumnIndex_(v7, v6, bytes, indexCopy);
}

- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  bytesCopy = bytes;
  v5 = objc_msgSend_columnRowUIDMap(self, a2, bytes, v3);
  LODWORD(bytesCopy) = objc_msgSend_rowIndexForUUIDBytes_(v5, v6, bytesCopy, v7);

  return bytesCopy;
}

- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  bytesCopy = bytes;
  v5 = objc_msgSend_columnRowUIDMap(self, a2, bytes, v3);
  LOWORD(bytesCopy) = objc_msgSend_columnIndexForUUIDBytes_(v5, v6, bytesCopy, v7);

  return bytesCopy;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds
{
  v7 = objc_msgSend_columnRowUIDMap(self, ds, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_prunedColumnUIDsFromColumnUIDs_(v7, v8, a4, v9);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds
{
  v7 = objc_msgSend_columnRowUIDMap(self, ds, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_prunedRowUIDsFromRowUIDs_(v7, v8, a4, v9);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  v10 = objc_msgSend_columnRowUIDMap(self, v7, v8, v9);
  v12 = objc_msgSend_UIDSetForIndexes_isRows_(v10, v11, indexesCopy, rowsCopy);

  return v12;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows
{
  rowsCopy = rows;
  setCopy = set;
  v10 = objc_msgSend_columnRowUIDMap(self, v7, v8, v9);
  v12 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v10, v11, setCopy, rowsCopy);

  return v12;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  rowsCopy = rows;
  setCopy = set;
  dsCopy = ds;
  v13 = objc_msgSend_columnRowUIDMap(self, v10, v11, v12);
  v15 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v13, v14, setCopy, rowsCopy, dsCopy);

  return v15;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  rowsCopy = rows;
  setCopy = set;
  v10 = objc_msgSend_columnRowUIDMap(self, v7, v8, v9);
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(v10, v11, setCopy, rowsCopy);
  v14 = v13;

  v15 = isRows;
  v16 = v14;
  result._upper = v16;
  result._lower = v15;
  return result;
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)range
{
  v5 = objc_msgSend_columnRowUIDMap(self, a2, range, v3);
  v8 = objc_msgSend_cellRangeForUIDRange_(v5, v6, range, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.size = v12;
  result.origin = v11;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range
{
  size = a4.size;
  origin = a4.origin;
  v7 = objc_msgSend_columnRowUIDMap(self, range, *&a4.origin, *&a4.size);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v7, v8, origin, size);
  }

  else
  {
    *&retstr->_colIdList.__cap_ = 0u;
    *&retstr->_rowIdList.__end_ = 0u;
    *&retstr->_colIdList.__begin_ = 0u;
  }

  return result;
}

- (TSKUIDStruct)UIDForIndex:(unsigned int)index isRows:(BOOL)rows
{
  if (rows)
  {
    v4 = objc_msgSend_rowUIDForRowIndex_(self, a2, *&index, rows);
  }

  else
  {
    v4 = objc_msgSend_columnUIDForColumnIndex_(self, a2, index, rows);
  }

  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)indexes isRows:(id)rows
{
  v5 = a5;
  rowsCopy = rows;
  v10 = rowsCopy;
  if (v5)
  {
    objc_msgSend_rowUIDsForRowIndexes_(self, rowsCopy, rowsCopy, v8);
  }

  else
  {
    objc_msgSend_columnUIDsForColumnIndexes_(self, rowsCopy, rowsCopy, v8);
  }

  return result;
}

- (id)mutableIndexesForUIDs:(const void *)ds isRows:(BOOL)rows
{
  if (rows)
  {
    objc_msgSend_mutableRowIndexesForUIDs_(self, a2, ds, rows);
  }

  else
  {
    objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, ds, rows);
  }
  v4 = ;

  return v4;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)range isRows:(_NSRange)rows
{
  if (a5)
  {
    return objc_msgSend_rowUIDsForRowRange_(self, range, rows.location, rows.length);
  }

  else
  {
    return objc_msgSend_columnUIDsForColumnRange_(self, range, rows.location, rows.length);
  }
}

- (id)UIDSetForRange:(_NSRange)range isRows:(BOOL)rows
{
  rowsCopy = rows;
  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length);
  v8 = objc_msgSend_UIDSetForIndexes_isRows_(self, v7, v6, rowsCopy);

  return v8;
}

- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind
{
  loadCopy = load;
  if (!loadCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableModel(FormulaOwner) registerWithCalcEngineForDocumentLoad:ownerKind:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 105, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  objc_msgSend_setIsRegisteredWithCalcEngine_(self, v5, 1, v6);
  objc_msgSend_setCalcEngine_(self, v17, loadCopy, v18);
  if (objc_msgSend_wasUnarchivedFromAProvidedTable(self, v19, v20, v21))
  {
    while (1)
    {
      v25 = objc_msgSend_tableUID(self, v22, v23, v24);
      if (!objc_msgSend_ownerIsRegistered_(loadCopy, v26, v25, v26))
      {
        break;
      }

      v29 = TSKMakeUIDStructRandom();
      objc_msgSend_setTableUID_(self, v30, v29, v30);
    }

    objc_msgSend_setWasUnarchivedFromAProvidedTable_(self, v27, 0, v28);
  }

  objc_msgSend_linkToCalcEngine_ownerKind_(self, v22, loadCopy, 1);
  v34 = objc_msgSend_tableUID(self, v31, v32, v33);
  v36 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(loadCopy, v35, v34, v35);
  objc_msgSend_setLocalOwnerID_(self, v37, v36, v38);
  v51[0] = objc_msgSend_tableUID(self, v39, v40, v41);
  v51[1] = v42;
  if (loadCopy)
  {
    objc_msgSend_cellCoordinatesNeedingExcelImportForTable_(loadCopy, v42, v51, v43);
  }

  else
  {
    memset(&v52, 0, sizeof(v52));
  }

  if (!TSCECellCoordSet::isEmpty(&v52))
  {
    v47 = objc_msgSend_newCell(self, v44, v45, v46);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_2215782D4;
    v49[3] = &unk_278461BA0;
    v49[4] = self;
    v50 = v47;
    v48 = v47;
    TSCECellCoordSet::enumerateCoordsUsingBlock(&v52, v49);
  }

  sub_22107C860(&v52._rowsPerColumn, v52._rowsPerColumn.__tree_.__end_node_.__left_);
}

- (BOOL)isRegisteredWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_tableUID(self, v5, v6, v7);
  LOBYTE(self) = objc_msgSend_ownerIsRegistered_(engineCopy, v9, v8, v9);

  return self;
}

- (int)registerWithCalcEngine:(id)engine ownerKind:(unsigned __int16)kind linkOnly:(BOOL)only
{
  onlyCopy = only;
  kindCopy = kind;
  engineCopy = engine;
  v12 = objc_msgSend_tableUID(self, v9, v10, v11);
  if (!(v12 | v13))
  {
    v25 = 1;
    goto LABEL_18;
  }

  v16 = objc_msgSend_tableUID(self, v13, v14, v15);
  if (kindCopy != 1)
  {
    *&v142 = objc_msgSend_tableUID(self, v17, v18, v19);
    *(&v142 + 1) = v20;
    v16 = sub_2212C4A5C(&v142, kindCopy);
  }

  v21 = v16;
  v22 = v17;
  v23 = objc_msgSend_tableUID(self, v17, v18, v19);
  v25 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(engineCopy, v24, v23, v24, self, self, v21, v22, kindCopy);
  objc_msgSend_setIsRegisteredWithCalcEngine_(self, v26, 1, v27);
  v31 = objc_msgSend_tableUID(self, v28, v29, v30);
  v33 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(engineCopy, v32, v31, v32);
  objc_msgSend_setLocalOwnerID_(self, v34, v33, v35);
  if (!v25)
  {
    objc_msgSend_setCalcEngine_(self, v36, engineCopy, v37);
    objc_msgSend_updateCalcEngineForTableSize(self, v38, v39, v40);
    v142 = 0uLL;
    *&v142 = objc_msgSend_tableUID(self, v41, v42, v43);
    *(&v142 + 1) = v44;
    v47 = objc_msgSend_hiddenStatesOwner(self, v44, v45, v46);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v47, v48, engineCopy, &v142);

    v52 = objc_msgSend_hiddenStatesOwner(self, v49, v50, v51);
    v56 = objc_msgSend_hiddenStates(v52, v53, v54, v55);

    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v56, v57, engineCopy, &v142);
    objc_msgSend_setTableModel_(v56, v58, self, v59);
    v63 = objc_msgSend_conditionalStyleFormulaOwner(self, v60, v61, v62);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v63, v64, engineCopy, &v142);

    v68 = objc_msgSend_pencilAnnotationOwner(self, v65, v66, v67);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v68, v69, engineCopy, &v142);

    v73 = objc_msgSend_mergeOwner(self, v70, v71, v72);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v73, v74, engineCopy, &v142);

    v78 = objc_msgSend_sortRuleReferenceTracker(self, v75, v76, v77);

    if (v78)
    {
      v82 = objc_msgSend_sortRuleReferenceTracker(self, v79, v80, v81);
      v86 = objc_msgSend_ownerUID(v82, v83, v84, v85);
      v88 = v87;
      if (v86 == sub_2212C4930(&v142, 6, v89, v90))
      {
        v92 = v91;

        if (v88 == v92)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v93 = objc_msgSend_sortRuleReferenceTracker(self, v79, v80, v81);
      objc_msgSend_unregisterFromCalcEngine(v93, v94, v95, v96);

      v97 = v142;
      v101 = objc_msgSend_sortRuleReferenceTracker(self, v98, v99, v100);
      objc_msgSend_setBaseTableUID_(v101, v102, v97, *(&v97 + 1));
    }

LABEL_12:
    v103 = objc_msgSend_sortRuleReferenceTracker(self, v79, v80, v81);
    objc_msgSend_registerWithCalcEngine_(v103, v104, engineCopy, v105);

    v109 = objc_msgSend_hauntedOwner(self, v106, v107, v108);
    objc_msgSend_registerWithCalcEngine_(v109, v110, engineCopy, v111);

    v115 = objc_msgSend_spillOwner(self, v112, v113, v114);
    objc_msgSend_registerWithCalcEngine_(v115, v116, engineCopy, v117);

    v121 = objc_msgSend_categoryOwner(self, v118, v119, v120);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(v121, v122, engineCopy, &v142);

    objc_msgSend_pivotOwner(self, v123, v124, v125);
    if (onlyCopy)
      v126 = {;
      objc_msgSend_linkToCalcEngine_forTableModel_(v126, v127, engineCopy, self);
    }

    else
      v126 = {;
      objc_msgSend_registerWithCalcEngine_forTableModel_baseOwnerUID_(v126, v128, engineCopy, self, &v142);
    }

    v132 = objc_msgSend_tablesByName(engineCopy, v129, v130, v131);
    objc_msgSend_addTable_(v132, v133, self, v134);

    if (kindCopy == 1)
    {
      v138 = objc_msgSend_headerNameMgr(engineCopy, v135, v136, v137);
      objc_msgSend_beginTrackingNamesInTable_(v138, v139, &v142, v140);
    }

    v25 = 0;
  }

LABEL_18:

  return v25;
}

- (void)unregisterFromCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_tableUID(self, v5, v6, v7);
  objc_msgSend_unregisterOwner_(engineCopy, v9, v8, v9);
  v13 = objc_msgSend_hiddenStatesOwner(self, v10, v11, v12);
  v17 = objc_msgSend_hiddenStates(v13, v14, v15, v16);
  objc_msgSend_unregisterFromCalcEngine(v17, v18, v19, v20);

  v24 = objc_msgSend_conditionalStyleFormulaOwner(self, v21, v22, v23);
  objc_msgSend_unregisterFromCalcEngine(v24, v25, v26, v27);

  v31 = objc_msgSend_mergeOwner(self, v28, v29, v30);
  objc_msgSend_unregisterFromCalcEngine(v31, v32, v33, v34);

  v38 = objc_msgSend_pencilAnnotationOwner(self, v35, v36, v37);
  objc_msgSend_unregisterFromCalcEngine(v38, v39, v40, v41);

  v45 = objc_msgSend_sortRuleReferenceTracker(self, v42, v43, v44);
  objc_msgSend_unregisterFromCalcEngine(v45, v46, v47, v48);

  v52 = objc_msgSend_categoryOwner(self, v49, v50, v51);
  objc_msgSend_unregisterFromCalcEngine(v52, v53, v54, v55);

  v59 = objc_msgSend_hiddenStatesOwner(self, v56, v57, v58);
  objc_msgSend_unregisterFromCalcEngine(v59, v60, v61, v62);

  v66 = objc_msgSend_hauntedOwner(self, v63, v64, v65);
  objc_msgSend_unregisterFromCalcEngine(v66, v67, v68, v69);

  v73 = objc_msgSend_spillOwner(self, v70, v71, v72);
  objc_msgSend_unregisterFromCalcEngine(v73, v74, v75, v76);

  v80 = objc_msgSend_pivotOwner(self, v77, v78, v79);
  objc_msgSend_unregisterFromCalcEngine(v80, v81, v82, v83);

  v87 = objc_msgSend_headerNameMgr(engineCopy, v84, v85, v86);
  v99[0] = objc_msgSend_tableUID(self, v88, v89, v90);
  v99[1] = v91;
  objc_msgSend_endTrackingNamesInTable_(v87, v91, v99, v92);

  objc_msgSend_setLocalOwnerID_(self, v93, 0xFFFFLL, v94);
  objc_msgSend_setIsRegisteredWithCalcEngine_(self, v95, 0, v96);
  objc_msgSend_setCalcEngine_(self, v97, 0, v98);
}

- (void)performReadForOneOffFormulaEvaluation:(id)evaluation forCellCoord:(TSUCellCoord)coord
{
  evaluationCopy = evaluation;
  v13 = objc_msgSend_formulaObject(evaluationCopy, v7, v8, v9);
  if (v13)
  {
    v14 = objc_msgSend_calcEngine(self, v10, v11, v12);
    v64.var0 = objc_msgSend_tableUID(self, v15, v16, v17);
    v64.var1 = v18;
    v19 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_(TSCEEvaluationContext, v18, v14, &v64, coord);
    if ((objc_msgSend_translationFlags(v13, v20, v21, v22) & 0x20) != 0)
    {
      v63.coordinate = coord;
      v63._tableUID._lower = objc_msgSend_tableUID(self, v23, v24, v25);
      v63._tableUID._upper = v26;
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v64, v14, &v63);
      v29 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v13, v27, &v64, v28);

      v13 = v29;
    }

    v30 = objc_msgSend_evaluateWithContext_(v13, v23, v19, v25);
    v34 = objc_msgSend_newCell(self, v31, v32, v33);
    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v35, v34, *&coord, 1);
    v39 = objc_msgSend_currentFormat(v34, v36, v37, v38);
    objc_msgSend_setFormat_isExplicit_(evaluationCopy, v40, v39, 1);

    v44 = objc_msgSend_warnings(v30, v41, v42, v43);
    v48 = objc_msgSend_count(v44, v45, v46, v47);

    v52 = objc_msgSend_context(self, v49, v50, v51);
    objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(evaluationCopy, v53, v30, v52, v48 != 0, 0, 0);
  }

  else
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableModel(FormulaOwner) performReadForOneOffFormulaEvaluation:forCellCoord:]", v12);
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v57);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 274, 0, "Evaluating non-formula cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
  }
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  engineCopy = engine;
  v10 = objc_msgSend_calcEngine(self, v7, v8, v9);
  v14 = v10;
  if (!v10)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableModel(FormulaOwner) evaluateFormulaAt:withCalcEngine:recalcOptions:]", v13);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v51, v54, 443, 0, "Table model has no calc engine. Aborting recalculation.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58);
    v49 = 0;
    v48 = options.var0 & 0x5F;
    goto LABEL_98;
  }

  if (v10 != engineCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableModel(FormulaOwner) evaluateFormulaAt:withCalcEngine:recalcOptions:]", v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 445, 0, "Inconsistent calcEngines");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v318 = objc_msgSend_nilValue(TSCENilValue, v11, v12, v13);
  v334 = 0;
  v27 = objc_msgSend_spillingCellsPendingWrite(self, v24, v25, v26);
  v30 = objc_msgSend_cellAtCellID_(v27, v28, *&at, v29);

  if (!v30)
  {
    v34 = objc_msgSend_documentLocale(v14, v31, v32, v33);
    v30 = objc_msgSend_newCellWithLocale_(self, v35, v34, v36);

    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v37, v30, *&at, 1);
  }

  v38 = objc_msgSend_cellFlags(v30, v31, v32, v33);
  v333._lower = objc_msgSend_tableUID(self, v39, v40, v41);
  v333._upper = v42;
  atCopy = at;
  v332 = v333;
  if (!objc_msgSend_shouldAbortRecalculation(v14, v42, v43, v44))
  {
    if (!objc_msgSend_hasFormula(v30, v45, v46, v47))
    {
      v90 = 0;
      v88 = 0;
      v91 = 0;
      LOBYTE(v92) = 0;
LABEL_82:
      v281 = v91;
      if (v91 || !(v90 | v88))
      {

        var0 = options.var0;
        if ((v92 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v282 = objc_msgSend_tableInfo(self, v59, v60, v61);
        v286 = objc_msgSend_translator(v282, v283, v284, v285);
        v289 = objc_msgSend_viewCellCoordForBaseCellCoord_(v286, v287, *&at, v288);

        memset(v322, 0, 32);
        v293 = objc_msgSend_tableInfo(self, v290, v291, v292);
        var0 = options.var0;
        v297 = v293;
        if (v293)
        {
          objc_msgSend_cellUIDForCellID_(v293, v294, v289, v295);
        }

        else
        {
          memset(v322, 0, 32);
        }

        if (v334 == 1)
        {
          objc_msgSend_cellsToInvalidateAfterRecalc(self, v298, v299, v300);
        }

        else
        {
          objc_msgSend_cellsToInvalidateNonoverflowingAfterRecalc(self, v298, v299, v300);
        }
        v301 = ;
        objc_msgSend_addCellUID_(v301, v302, v322, v303);

        if (v90)
        {
          v307 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v304, v305, v306);
          objc_msgSend_addCellUID_(v307, v308, v322, v309);
        }

        if ((v92 & 1) == 0)
        {
LABEL_96:
          v48 = var0 & 0x5F;
          if (v281)
          {
            goto LABEL_8;
          }

          goto LABEL_97;
        }
      }

      v48 = var0 & 0x5F | 0x20;
      if (v281)
      {
        goto LABEL_8;
      }

LABEL_97:
      v49 = 0;
      goto LABEL_98;
    }

    v314 = objc_msgSend_columnRowUIDMap(self, v59, v60, v61);
    v315 = objc_msgSend_formulaObject(v30, v62, v63, v64);
    if (!v315)
    {
      v93 = MEMORY[0x277D81150];
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSTTableModel(FormulaOwner) evaluateFormulaAt:withCalcEngine:recalcOptions:]", v67);
      v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v96);
      v92 = TSKUIDStruct::description(&v333);
      v98 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v99, v94, v97, 487, 0, "Cell %@::%@ said hasFormula=YES, but had no formula in it", v92, v98);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102);
      v90 = 0;
      v88 = 0;
      v103 = 0;
      LOBYTE(v92) = 0;
LABEL_81:

      v91 = v103;
      goto LABEL_82;
    }

    v68 = objc_msgSend_tableInfo(self, v65, v66, v67);
    v72 = objc_msgSend_groupBy(v68, v69, v70, v71);
    objc_msgSend_enterCalcEngineMode(v72, v73, v74, v75);

    v79 = objc_msgSend_translationFlags(v315, v76, v77, v78);
    v317 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_(TSCEEvaluationContext, v80, v14, &v333, at);
    objc_msgSend_setAllowAbort_(v317, v81, 1, v82);
    objc_msgSend_setShouldPickupRemoteDataInterests_(v317, v83, 1, v84);
    if ((v38 & 0x1000) != 0 || (v79 & 2) != 0)
    {
      v322[0] = 0;
      v104 = objc_msgSend_copy(v317, v85, v86, v87);
      v330 = 0;
      v108 = objc_msgSend_formatType(v30, v105, v106, v107);
      v110 = objc_msgSend_copyByRewritingForExcelImport_outFormulaReplacedForExcelCompatWarning_functionNameReplacedForExcelCompat_formulaFormatFromCell_(v315, v109, v104, v322, &v330, v108);
      v313 = v330;
      objc_msgSend_setFormulaObject_(v30, v111, v110, v112);
      v113 = v110;
      if (v322[0] == 1)
      {
        v114 = [TSTFormula alloc];
        v118 = objc_msgSend_context(self, v115, v116, v117);
        v120 = objc_msgSend_initWithContext_calculationEngine_baseHostCell_formula_ownerUID_suppressAutomaticNamedReferenceInvalidation_(v114, v119, v118, v14, at, v315, &v333, 1);

        v312 = v120;
        v311 = objc_msgSend_formulaPlainText(v120, v121, v122, v123);
        v125 = objc_msgSend_warningSetForFormulaReplacedForExcelCompat_originalFormula_(TSTImportWarningSet, v124, v313, v311);
        if (objc_msgSend_hasImportWarningSet(v30, v126, v127, v128))
        {
          v132 = objc_msgSend_importWarningSet(v30, v129, v130, v131);
          v135 = v132;
          if (v132)
          {
            v136 = objc_msgSend_warningSetByAddingWarningsFromSet_(v132, v133, v125, v134);

            v125 = v136;
          }
        }

        objc_msgSend_setImportWarningSet_(v30, v129, v125, v131);
      }

      v89 = v113;
      v88 = 1;
    }

    else if ((v79 & 4) != 0)
    {
      v137 = objc_msgSend_copyByRemovingNumberToDateCoercion_(v315, v85, v317, v87);
      objc_msgSend_setFormulaObject_(v30, v138, v137, v139);

      v88 = 1;
      v89 = v137;
    }

    else
    {
      v88 = 0;
      v89 = v315;
    }

    v322[0] = 0;
    v316 = v89;
    v140 = objc_msgSend_evaluateWithContext_isInACycle_outErrorIsDueToCycle_(v89, v85, v317, options.var0 & 1, v322);

    if (v322[0])
    {
      v143 = 16;
    }

    else
    {
      v143 = 0;
    }

    options.var0 = v143 | options.var0 & 0xEF;
    if (objc_msgSend_deepType_(v140, v141, v317, v142) == 9)
    {
      v147 = objc_msgSend_errorWithContext_(v140, v144, v317, v146);
      if (objc_msgSend_errorType(v147, v148, v149, v150) == 7 && objc_msgSend_isSpillFormula(v316, v151, v152, v153))
      {
        if (v314)
        {
          objc_msgSend_cellUIDForCellID_(v314, v151, *&at, v153);
        }

        else
        {
          memset(v329, 0, sizeof(v329));
        }

        v156 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v151, v152, v153);
        objc_msgSend_addCellUID_(v156, v157, v329, v158);
      }

      isAbortedError = objc_msgSend_isAbortedError(v147, v151, v152, v153);
      isNotReadyError = objc_msgSend_isNotReadyError(v147, v159, v160, v161);
    }

    else
    {
      isNotReadyError = 0;
      isAbortedError = 0;
    }

    v103 = isAbortedError;
    v318 = v140;
    if (objc_msgSend_isThunk(v140, v144, v145, v146))
    {
      v164 = objc_msgSend_unwrapThunk_(v317, v162, v140, v163);

      v318 = v164;
    }

    if (isAbortedError)
    {
      v90 = 0;
      LOBYTE(v92) = 1;
LABEL_80:

      goto LABEL_81;
    }

    if (isNotReadyError)
    {
      v165 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v162, @" %C ", v163, 8230);
      v168 = objc_msgSend_stringValue_(TSCEStringValue, v166, v165, v167);

      v318 = v168;
    }

    else
    {
      v169 = objc_msgSend_errorWithContext_(v318, v162, v317, v163);
      v165 = v169;
      if (!v169 || (objc_msgSend_isSpillFunctionError(v169, v170, v171, v172) & 1) == 0)
      {
        objc_msgSend_updateErrorAndWarnings_forCell_(v14, v170, v318, &atCopy);
      }
    }

    v176 = objc_msgSend_tableInfo(self, v173, v174, v175);
    if (objc_msgSend_isCategorized(v176, v177, v178, v179))
    {
      v183 = objc_msgSend_inArrayMode(v317, v180, v181, v182);

      if (!v183 || (v187 = objc_msgSend_nativeType(v318, v184, v185, v186), v187 != 1) && v187 != 16)
      {
LABEL_57:
        if (objc_msgSend_inArrayMode(v317, v184, v185, v186))
        {
          v207 = objc_msgSend_warnings(v318, v204, v205, v206);
          v211 = objc_msgSend_count(v207, v208, v209, v210) != 0;

          if (objc_msgSend_spillArrayValue_primaryCell_withContext_hasWarnings_didBeginOrEndWithTextCell_propagateCheckboxes_(self, v212, v318, v30, v317, v211, &v334, 0))
          {
LABEL_73:
            v92 = v317;
            v268 = objc_msgSend_nativeType(v318, v213, v214, v215);
            v257 = 0;
            if (v268 == 1)
            {
              v256 = 0;
            }

            else
            {
              v256 = 0;
              if (v268 != 16)
              {
                v257 = 0;
                v256 = 8 * (objc_msgSend_deepType_(v318, v253, v317, v255) == 9);
              }
            }

            goto LABEL_77;
          }
        }

        else
        {
          objc_msgSend_clearSpillSizeForCell_(v14, v204, &atCopy, v206);
        }

        v216 = objc_msgSend_errorWithContext_(v318, v213, v317, v215);
        v220 = v216;
        if (v216)
        {
          v221 = objc_msgSend_errorType(v216, v217, v218, v219);
          if (v221 == 142)
          {
LABEL_71:

            v256 = 0;
            v257 = 1;
            v92 = v317;
LABEL_77:
            v269 = objc_msgSend_cellSpec(v30, v253, v254, v255);
            v273 = objc_msgSend_asFormulaSpec(v269, v270, v271, v272);
            updated = objc_msgSend_updateCalculatedPrecedents_forFormula_atCellRef_withState_(engineCopy, v274, v92, v273, &atCopy, (v256 | options.var0 & 0xF7));

            options.var0 = updated;
            LODWORD(v92) = (updated >> 5) & 1;
            if (v257)
            {
              v88 = 0;
              v90 = 1;
            }

            else
            {
              v279 = objc_msgSend_cellsPendingWrite(self, v276, v277, v278);
              objc_msgSend_setCell_atCellID_(v279, v280, v30, *&at);

              v90 = 0;
              v88 = 1;
            }

            goto LABEL_80;
          }

          if (v221 == 143)
          {
            v321.coordinate = 0x7FFF7FFFFFFFLL;
            if (objc_msgSend_hasFormula(v30, v217, v218, v219))
            {
              v225 = objc_msgSend_formulaObject(v30, v222, v223, v224);
              v321.coordinate = objc_msgSend_spillOrigin(v225, v226, v227, v228);
            }

            objc_msgSend_clearValue(v30, v222, v223, v224);
            objc_msgSend_setFormulaObject_(v30, v229, 0, v230);
            v234 = objc_msgSend_spillingCellsPendingWrite(self, v231, v232, v233);
            objc_msgSend_setCell_atCellID_(v234, v235, v30, *&at);

            objc_msgSend_addCellRefToClearError_(self, v236, &atCopy, v237);
            memset(v322, 0, 32);
            if (v314)
            {
              objc_msgSend_cellUIDForCellID_(v314, v238, *&at, v240);
            }

            v241 = objc_msgSend_cellsToInvalidateAfterRecalc(self, v238, v239, v240);
            objc_msgSend_addCellUID_(v241, v242, v322, v243);

            v247 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v244, v245, v246);
            objc_msgSend_addCellUID_(v247, v248, v322, v249);

            if (v321.coordinate.row != 0x7FFFFFFF && (*&v321.coordinate & 0xFFFF00000000) != 0x7FFF00000000)
            {
              objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v250, &v333, &v321);
              objc_msgSend_markCellRefAsDirty_(v14, v251, &v335, v252);
            }

            goto LABEL_71;
          }
        }

        v258 = objc_msgSend_warnings(v318, v217, v218, v219);
        v262 = objc_msgSend_count(v258, v259, v260, v261);

        v266 = objc_msgSend_context(self, v263, v264, v265);
        objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v30, v267, v318, v266, v262 != 0, &v334, 0);

        goto LABEL_73;
      }

      v328 = 0;
      v188 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v318, v184, v317, 0, 0xFFFFFFFFLL, 0, &v328);
      v176 = v328;
      if (v176 || !(objc_msgSend_dimensions(v188, v189, v190, v191) >> 33))
      {
        v198 = v318;
      }

      else
      {
        v195 = objc_msgSend_verticalSpillInCategoriesError(TSCEError, v192, v193, v194);
        v198 = objc_msgSend_errorValue_(TSCEErrorValue, v196, v195, v197);

        objc_msgSend_setError_warnings_forCell_(v14, v199, v195, 0, &atCopy);
        objc_msgSend_spillBlockedByBeingVerticalPrecedentForTableUID_(TSCEHauntedOwner, v200, &v333, v201);
        *v322 = 0;
        TSCERangeRef::TSCERangeRef(&v335, &v321);
        *&v322[8] = v335;
        v323 = 0;
        v327 = 0;
        v324 = 0;
        v325 = 0;
        v326 = 0;
        objc_msgSend_addCalculatedPrecedent_(v317, v202, v322, v203);
      }

      v318 = v198;
    }

    goto LABEL_57;
  }

  v48 = options.var0 & 0x5F | 0x20;
LABEL_8:
  v49 = 0x80;
LABEL_98:

  return (v49 | v48);
}

- (void)writeResultsForCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_context(self, v5, v6, v7);
  v12 = objc_msgSend_cellsPendingWrite(self, v9, v10, v11);
  v15 = objc_msgSend_concurrentCellMapForTable_(v12, v13, self, v14);

  if (v15)
  {
    objc_msgSend_willModify(engineCopy, v16, v17, v18);
    objc_msgSend_setMayModifyValuesReferencedByFormulas_(v15, v19, 0, v20);
    v24 = objc_msgSend_calcEngine(self, v21, v22, v23);

    if (v24 != engineCopy)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTTableModel(FormulaOwner) writeResultsForCalcEngine:]", v26);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 912, 0, "expect calc engines to be the same");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
    }

    objc_msgSend_willApplyToTableModel_(v15, v25, self, v26);
    objc_msgSend_prepareToApplyConcurrentCellMap_(self, v36, v15, v37);
    objc_msgSend_accumulateCurrentCellsConcurrently_(self, v38, v15, v39);
    objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v40, v15, 1, 0, 0);
    objc_msgSend_didApplyConcurrentCellMap_(self, v41, v15, v42);
    v46 = objc_msgSend_cellsPendingWrite(self, v43, v44, v45);
    objc_msgSend_removeAllCells(v46, v47, v48, v49);
  }

  v50 = objc_msgSend_spillingCellsPendingWrite(self, v16, v17, v18);
  v53 = objc_msgSend_concurrentCellMapForTable_(v50, v51, self, v52);

  if (v53)
  {
    objc_msgSend_willModify(engineCopy, v54, v55, v56);
    objc_msgSend_setMayModifyValuesReferencedByFormulas_(v53, v57, 1, v58);
    objc_msgSend_setSkipDirtyingRanges_(v53, v59, 1, v60);
    objc_msgSend_willApplyToTableModel_(v53, v61, self, v62);
    objc_msgSend_prepareToApplyConcurrentCellMap_(self, v63, v53, v64);
    objc_msgSend_accumulateCurrentCellsConcurrently_(self, v65, v53, v66);
    v70 = objc_msgSend_spillFormulasMinion(engineCopy, v67, v68, v69);
    objc_msgSend_setCellsConcurrently_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v71, v53, 0, 0, v70);

    objc_msgSend_didApplyConcurrentCellMap_(self, v72, v53, v73);
    v77 = objc_msgSend_spillingCellsPendingWrite(self, v74, v75, v76);
    v81 = v77;
    if (v77)
    {
      objc_msgSend_allCellCoords(v77, v78, v79, v80);
    }

    else
    {
      v120 = 0;
      v118 = 0u;
      v119 = 0u;
    }

    *&v124[0] = objc_msgSend_tableUID(self, v78, v79, v80);
    *(&v124[0] + 1) = v82;
    objc_msgSend_wroteSpillingCells_forOwner_(engineCopy, v82, &v118, v124);
    sub_22107C860(&v119, *(&v119 + 1));

    v86 = objc_msgSend_spillingCellsPendingWrite(self, v83, v84, v85);
    objc_msgSend_removeAllCells(v86, v87, v88, v89);
  }

  objc_msgSend_clearErrors(self, v54, v55, v56);
  if (engineCopy)
  {
    objc_msgSend_corruptCellRefs(engineCopy, v90, v91, v92);
  }

  else
  {
    v125 = 0;
    memset(v124, 0, sizeof(v124));
  }

  if (!sub_2212E0280(v124))
  {
    *&v118 = 0;
    *(&v118 + 1) = &v118;
    *&v119 = 0x5812000000;
    *(&v119 + 1) = sub_22157A238;
    v120 = sub_22157A244;
    v121 = &unk_22188E88F;
    memset(v122, 0, sizeof(v122));
    v123 = 1065353216;
    v112 = MEMORY[0x277D85DD0];
    v113 = 3221225472;
    v114 = sub_22157A24C;
    v115 = &unk_278466FF0;
    v96 = engineCopy;
    v116 = v96;
    v117 = &v118;
    sub_2212DFEC0(v124, &v112);
    objc_msgSend_resetCorruptCellRefs_(v96, v97, *(&v118 + 1) + 48, v98, v112, v113, v114, v115);

    _Block_object_dispose(&v118, 8);
    sub_221122744(v122);
  }

  v99 = objc_msgSend_spillFormulasMinion(engineCopy, v93, v94, v95);
  objc_msgSend_flushAllChanges(v99, v100, v101, v102);

  if (objc_msgSend_hasRunRecalculationALongTime(engineCopy, v103, v104, v105))
  {
    objc_msgSend_requestAutosaveForExpensiveCalculation(v8, v106, v107, v108);
    objc_msgSend_clearRecalculationTimer(engineCopy, v109, v110, v111);
  }

  sub_221122744(v124);
}

- (void)invalidateForCalcEngine:(id)engine
{
  v5 = objc_msgSend_calcEngine(self, a2, engine, v3);

  if (v5)
  {
    v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
    v13 = objc_msgSend_groupBy(v9, v10, v11, v12);
    objc_msgSend_exitCalcEngineMode(v13, v14, v15, v16);

    MEMORY[0x2821F9670](self, sel_notifyTableOfNewResults, v17, v18);
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableModel(FormulaOwner) invalidateForCalcEngine:]", v8);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 991, 0, "Table model has no calc engine. Aborting recalculation.");

    v28 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v28, v25, v26, v27);
  }
}

- (void)getPendingCellCopy:(id)copy atBaseCellCoord:(TSUModelCellCoord)coord suppressCellBorder:(BOOL)border
{
  copyCopy = copy;
  v10 = objc_msgSend_spillingCellsPendingWrite(self, v7, v8, v9);
  v13 = objc_msgSend_cellAtCellID_(v10, v11, *&coord, v12);

  if (v13 || (objc_msgSend_cellsPendingWrite(self, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellAtCellID_(v17, v18, *&coord, v19), v13 = objc_claimAutoreleasedReturnValue(), v17, v13))
  {
    objc_msgSend_copyToCell_(v13, v14, copyCopy, v16);
  }

  else
  {
    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self, v14, copyCopy, *&coord, 1);
  }
}

- (BOOL)spillArrayValue:(id)x2_0 primaryCell:(id)cell withContext:(id)context hasWarnings:(BOOL)warnings didBeginOrEndWithTextCell:(BOOL *)textCell propagateCheckboxes:(BOOL)checkboxes
{
  checkboxesCopy = checkboxes;
  warningsCopy = warnings;
  v11 = x2_0;
  cellCopy = cell;
  contextCopy = context;
  LODWORD(v16) = objc_msgSend_inArrayMode(contextCopy, v13, v14, v15);
  if (objc_msgSend_isReferenceValue(v11, v17, v18, v19))
  {
    v23 = objc_msgSend_asReferenceValue(v11, v20, v21, v22);
    v25 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v23, v24, contextCopy, 1);

    v26 = v25;
  }

  else
  {
    v26 = v11;
  }

  v308 = v26;
  v27 = objc_msgSend_nativeType(v26, v20, v21, v22);
  v31 = 1;
  if (v27 == 1)
  {
    v307 = 0;
  }

  else if (v27 == 9)
  {
    v32 = objc_msgSend_coercedErrorWithContext_(v308, v28, contextCopy, v30);
    v36 = v32;
    if (v32 && objc_msgSend_errorType(v32, v33, v34, v35) == 7)
    {
      v307 = v36;
      v31 = 0;
    }

    else
    {
      v307 = 0;
    }

    LODWORD(v16) = 0;
  }

  else
  {
    v307 = 0;
    v31 = 1;
    if (v27 != 16)
    {
      LODWORD(v16) = 0;
    }
  }

  v37 = objc_msgSend_calcEngine(contextCopy, v28, v29, v30);
  v361 = *objc_msgSend_containingCell(contextCopy, v38, v39, v40);
  if (contextCopy)
  {
    objc_msgSend_containingCellRef(contextCopy, v41, v42, v43);
  }

  else
  {
    v359 = 0uLL;
    v360 = 0;
  }

  v358._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v358._coordsForOwnerUid.__tree_.__size_ = 0;
  v358._coordsForOwnerUid.__tree_.__begin_node_ = &v358._coordsForOwnerUid.__tree_.__end_node_;
  if (!v31)
  {
    goto LABEL_22;
  }

  v44 = objc_msgSend_formulaObject(cellCopy, v41, v42, v43);
  isSpillFormula = objc_msgSend_isSpillFormula(v44, v45, v46, v47);

  if (((isSpillFormula | v16) & 1) == 0 && !v307 && objc_msgSend_spillSizeForCell_(v37, v41, &v359, v43) == 0x100000001)
  {
    goto LABEL_73;
  }

  if ((isSpillFormula & 1) == 0)
  {
    objc_msgSend_lockSpilling(self, v41, v42, v43);
    if (v37)
    {
      objc_msgSend_spillingCellsForFormulaAt_(v37, v49, &v359, v50);
    }

    else
    {
      memset(v333, 0, 24);
    }

    TSCECellRefSet::operator=(&v358, v333);
    sub_22107C800(v333, *&v333[8]);
    if ((v16 & 1) == 0)
    {
      objc_msgSend_clearSpillSizeForCell_(v37, v41, &v359, v43);
    }

    v298 = 1;
  }

  else
  {
LABEL_22:
    v298 = 0;
  }

  v305 = v16;
  v301 = cellCopy;
  v306 = objc_msgSend_locale(contextCopy, v41, v42, v43);
  v54 = objc_msgSend_containingTable(contextCopy, v51, v52, v53);
  if (*v54 != objc_msgSend_tableUID(self, v55, v56, v57) || v54[1] != v58)
  {
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v60);
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v66, v62, v65, 1106, 0, "Self should be the containing table already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69);
  }

  v302 = objc_msgSend_columnRowUIDMap(self, v58, v59, v60);
  v303 = objc_msgSend_spillingCellsPendingWrite(self, v70, v71, v72);
  v300 = objc_msgSend_cellsToInvalidateAfterRecalc(self, v73, v74, v75);
  v297 = objc_msgSend_spillCellsChangedToInvalidateAfterRecalc(self, v76, v77, v78);
  if (!v305)
  {
    if (v307)
    {
      if (contextCopy)
      {
        objc_msgSend_containingCellRef(contextCopy, v79, v80, v81);
      }

      else
      {
        memset(v333, 0, 24);
      }

      objc_msgSend_setError_warnings_forCell_(v37, v79, v307, 0, v333);
    }

    goto LABEL_68;
  }

  v357 = 0;
  v304 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v308, v79, contextCopy, 0, 0xFFFFFFFFLL, 0, &v357);
  v290 = v357;
  if (v290)
  {
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v84);
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v88);
    v93 = objc_msgSend_errorTypeKey(v290, v90, v91, v92);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v94, v86, v89, 1119, 0, "Need to deal with asGrid error: %@", v93);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97);
  }

  v299 = objc_msgSend_warnings(v308, v82, v83, v84);
  v101 = objc_msgSend_dimensions(v304, v98, v99, v100);
  v355._coordsForOwnerUid.__tree_.__size_ = 0;
  v356 = v101;
  v355._coordsForOwnerUid.__tree_.__begin_node_ = &v355._coordsForOwnerUid.__tree_.__end_node_;
  v355._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v352 = 0u;
  v353 = 0u;
  v354 = 1065353216;
  v349 = 0u;
  v350 = 0u;
  v351 = 1065353216;
  v348 = 0;
  v102 = contextCopy;
  v342[0] = v102;
  v342[1] = 0;
  v343 = 0;
  v344[0] = 0xFFFFFFFFLL;
  *(v344 + 7) = 0;
  v345 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v347 = 0;
  v346 = 0;
  row = v361.row;
  v341 = v361;
  height = v356.height;
  *&v340 = v361;
  v292 = v356.width | (v356.height << 32);
  *(&v340 + 1) = v292;
  v339 = v340;
  v296 = v102;
  if (height + row > objc_msgSend_numberOfRows(self, v105, v106, v107) || (column = v361.column, width = v356.width, width + column > objc_msgSend_numberOfColumns(self, v108, v109, v110)))
  {
    v113 = objc_msgSend_tableSizeBlockedSpillError_spillRange_(TSCEError, v108, v292, v340, *(&v340 + 1));
    objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v114, v54, v115);
    *v333 = 0;
    TSCERangeRef::TSCERangeRef(&v329, &v362);
    *&v333[8] = v329._rectRepresentation;
    *&v333[24] = *&v329._rowsPerColumn.__tree_.__begin_node_;
    LOBYTE(v334) = 0;
    v338 = 0;
    v336 = 0;
    v335 = 0;
    LOWORD(v337) = 0;
    objc_msgSend_addCalculatedPrecedent_(v102, v116, v333, v117);

    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v118, v54, v119);
    *v333 = 0;
    TSCERangeRef::TSCERangeRef(&v329, &v362);
    *&v333[8] = v329._rectRepresentation;
    *&v333[24] = *&v329._rowsPerColumn.__tree_.__begin_node_;
    LOBYTE(v334) = 0;
    v338 = 0;
    v336 = 0;
    v335 = 0;
    LOWORD(v337) = 0;
    objc_msgSend_addCalculatedPrecedent_(v102, v120, v333, v121);

    v124 = 0;
    goto LABEL_38;
  }

  v330 = 0;
  v331 = 0;
  v332 = 0;
  v329._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v329._rowsPerColumn.__tree_.__size_ = 0;
  v329._rectRepresentation.origin = 0;
  v329._rectRepresentation.size = 0;
  v329._rowsPerColumn.__tree_.__begin_node_ = &v329._rowsPerColumn.__tree_.__end_node_;
  for (i = objc_msgSend_setSpillSizeForCell_spillSize_overlappingSpills_(v37, v108, &v359, v292, &v330); (i & 1) == 0; i = objc_msgSend_setSpillSizeForCell_spillSize_overlappingSpills_(v37, v165, &v359, v292, &v330))
  {
    v167 = v330;
    v168 = v331;
    if (v330 != v331)
    {
      while (1)
      {
        *v333 = v167->origin;
        v169 = objc_msgSend_conflictWinnerForSpillRect1_spillOrigin2_inTable_(v37, v165, &v340, v333, v54);
        if (v169 == *v333 && ((*v333 ^ v169) & 0x101FFFF00000000) == 0)
        {
          break;
        }

        if (++v167 == v168)
        {
          v167 = v330;
          v168 = v331;
          goto LABEL_62;
        }
      }

      v339 = *v167;
      break;
    }

LABEL_62:
    if (v167 != v168)
    {
      do
      {
        v362.range._topLeft = v167->origin;
        TSCECellCoordSet::addCellCoord(&v329, &v362.range._topLeft);
        *v333 = v362.range._topLeft;
        *&v333[8] = *v54;
        objc_msgSend_clearSpillSizeForCell_(v37, v171, v333, v172);
        ++v167;
      }

      while (v167 != v168);
      v167 = v330;
    }

    v331 = v167;
  }

  if (!TSCECellCoordSet::isEmpty(&v329))
  {
    objc_msgSend_markCoordsDirty_inOwner_(v37, v184, &v329, v54);
  }

  v291 = i;
  if (v298)
  {
    v327 = v361;
    v328 = v292;
    v187 = objc_msgSend_mergeOwner(self, v184, v185, v186);
    hasMergeRangesIntersectingBaseCellRect = objc_msgSend_hasMergeRangesIntersectingBaseCellRect_(v187, v188, &v327, v189);

    if (hasMergeRangesIntersectingBaseCellRect)
    {
      v193 = objc_msgSend_mergeOwner(self, v184, v191, v192);
      v195 = v193;
      if (v193)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRect_(v193, v194, v327, v328);
      }

      else
      {
        memset(&__p, 0, sizeof(__p));
      }

      if (*&__p.coordinate == __p._tableUID._lower)
      {
        objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v196, v292, v340, *(&v340 + 1), 0x7FFF7FFFFFFFLL, 0);
      }

      else
      {
        objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v196, v292, v340, *(&v340 + 1), **&__p.coordinate, *(*&__p.coordinate + 8));
      }
      v113 = ;
      objc_msgSend_spillBlockedByMergePrecedentForTableUID_(TSCEHauntedOwner, v197, v54, v198);
      *v333 = 0;
      TSCERangeRef::TSCERangeRef(&v362, &v325);
      *&v333[8] = v362;
      LOBYTE(v334) = 0;
      v338 = 0;
      v336 = 0;
      v335 = 0;
      LOWORD(v337) = 0;
      objc_msgSend_addCalculatedPrecedent_(v102, v199, v333, v200);

      objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v201, v54, v202);
      *v333 = 0;
      TSCERangeRef::TSCERangeRef(&v362, &v325);
      *&v333[8] = v362;
      LOBYTE(v334) = 0;
      v338 = 0;
      v336 = 0;
      v335 = 0;
      LOWORD(v337) = 0;
      objc_msgSend_addCalculatedPrecedent_(v102, v203, v333, v204);

      if (__p.coordinate)
      {
        __p._tableUID._lower = __p.coordinate;
        operator delete(*&__p.coordinate);
      }

      if (v113)
      {
        goto LABEL_126;
      }
    }
  }

  v289 = 0;
  while (1)
  {
    v205 = objc_msgSend_valueAtGridCoord_accessContext_(v304, v184, *&v348, v342);
    v208 = objc_msgSend_resolveToSingleValueOrError_(v205, v206, v102, v207);

    objc_msgSend_attachWarnings_(v208, v209, v299, v210);
    if (v361.row == v341.row && ((*&v341 ^ *&v361) & 0x101FFFF00000000) == 0)
    {
      goto LABEL_113;
    }

    v211 = [TSTCell alloc];
    v214 = objc_msgSend_initWithLocale_(v211, v212, v306, v213);
    objc_msgSend_getPendingCellCopy_atBaseCellCoord_suppressCellBorder_(self, v215, v214, *&v341, 1);
    if (objc_msgSend_hasValueOrError(v214, v216, v217, v218) && !objc_msgSend_hasCellSpec(v214, v219, v220, v221) || (objc_msgSend_hasControl(v214, v219, v220, v221) & 1) != 0 || (v226 = 0x7FFF7FFFFFFFLL, objc_msgSend_hasFormula(v214, v219, v222, v223)) && ((objc_msgSend_formulaObject(v214, v219, v224, v225), v227 = objc_claimAutoreleasedReturnValue(), v226 = objc_msgSend_spillOrigin(v227, v228, v229, v230), v227, v226 == 0x7FFFFFFF) || (v226 & 0xFFFF00000000) == 0x7FFF00000000) && (objc_msgSend_formulaObject(v214, v219, v231, v225), v232 = objc_claimAutoreleasedReturnValue(), v236 = objc_msgSend_isSpillFormula(v232, v233, v234, v235), v232, (v236 & 1) == 0))
    {
      objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v219, v292, v340, *(&v340 + 1), v341, 0x100000001);
      v113 = v102 = v296;
      objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v270, v54, v271);
      *v333 = 0;
      TSCERangeRef::TSCERangeRef(&v362, &__p);
      *&v333[8] = v362;
      LOBYTE(v334) = 0;
      v338 = 0;
      v336 = 0;
      v335 = 0;
      LOWORD(v337) = 0;
      objc_msgSend_addCalculatedPrecedent_(v296, v272, v333, v273);
      goto LABEL_124;
    }

    if (v291)
    {
      v362.range._topLeft = v341;
      *&v362.range._bottomRight.row = *v54;
      v102 = v296;
      v237 = v289;
      if (!v289)
      {
        v238 = [TSCEFormulaObject alloc];
        *v333 = v359;
        *&v333[16] = v360;
        *&__p.coordinate.row = v362.range;
        __p._tableUID._upper = v362._tableUID._lower;
        TSCEFormulaCreationMagic::cellRef(&v323, v333, 3, &__p, v239);
        TSCEFormulaCreationMagic::__SPILL(&v324, &v323, v363);
        v242 = objc_msgSend_initWithCreator_(v238, v240, &v324, v241);

        v237 = v242;
      }

      v289 = v237;
      objc_msgSend_setFormulaObject_(v214, v219, v237, v225);
      v246 = objc_msgSend_context(self, v243, v244, v245);
      objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v214, v247, v208, v246, warningsCopy, textCell, checkboxesCopy);

      if (v226 != v361.row || ((*&v361 ^ v226) & 0x101FFFF00000000) != 0)
      {
        objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v248, v54, &v361);
        objc_msgSend_markCellRefAsDirty_(v37, v250, v333, v251);
      }

      v252 = objc_msgSend_errorWithContext_(v208, v248, v296, v249);
      v259 = objc_msgSend_warnings(v208, v253, v254, v255);
      if (v252)
      {
        *v333 = &v341;
        v260 = sub_22157C3EC(&v352, &v341, &unk_2217ED63C, v333);
        objc_storeStrong(v260 + 3, v252);
      }

      if (objc_msgSend_count(v259, v256, v257, v258))
      {
        *v333 = &v341;
        v262 = sub_22157C668(&v349, &v341, &unk_2217ED63C, v333);
        objc_storeStrong(v262 + 3, v259);
      }

      objc_msgSend_setCell_atCellID_(v303, v261, v214, *&v341);
      memset(v333, 0, 32);
      if (v302)
      {
        objc_msgSend_cellUIDForCellID_(v302, v263, *&v341, v264);
      }

      objc_msgSend_addCellUID_(v300, v263, v333, v264);
      TSCECellRefSet::removeCellRef(&v358, &v362);
      TSCECellRefSet::addCellRef(&v355, &v362);

      goto LABEL_112;
    }

    v265 = v341;
    v102 = v296;
    if (TSUCellRect::contains(&v339, v265))
    {
      break;
    }

LABEL_112:

LABEL_113:
    v267 = v348.row;
    v268 = TSCEGridDimensions::nextCoordRowMajorOrder(&v356, &v348);
    v348 = v268;
    if (v268 != 0x7FFFFFFF && HIDWORD(v268) != 0x7FFFFFFF)
    {
      if (HIDWORD(v268) == v267)
      {
        v269 = v341.column + 1;
      }

      else
      {
        ++v341.row;
        v269 = v361.column;
      }

      v341.column = v269;
    }

    v113 = 0;
    if (v348.column == 0x7FFFFFFF || v348.row == 0x7FFFFFFF)
    {
      goto LABEL_125;
    }
  }

  v113 = objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v266, v292, v340, *(&v340 + 1), v341, 0x100000001);
  objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v274, v54, v275);
  *v333 = 0;
  TSCERangeRef::TSCERangeRef(&v362, &__p);
  *&v333[8] = v362;
  LOBYTE(v334) = 0;
  v338 = 0;
  v336 = 0;
  v335 = 0;
  LOWORD(v337) = 0;
  objc_msgSend_addCalculatedPrecedent_(v296, v276, v333, v277);
LABEL_124:

LABEL_125:
LABEL_126:
  v124 = v291 ^ 1;
  sub_22107C860(&v329._rowsPerColumn, v329._rowsPerColumn.__tree_.__end_node_.__left_);
  if (v330)
  {
    v331 = v330;
    operator delete(v330);
  }

  if (!(v291 & 1 | (v113 != 0)))
  {
    v278 = MEMORY[0x277D81150];
    v279 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v123);
    v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v280, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v281);
    v283 = TSUCellRect::description(&v339);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v278, v284, v279, v282, 1353, 0, "Expected we would have found a spilling cell to conflict with, this one: %@", v283);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v285, v286, v287);
    v113 = objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v288, v292, v340, *(&v340 + 1), v361, 0x100000001);
    v102 = v296;
  }

LABEL_38:
  if (v113)
  {
    v125 = objc_msgSend_errorValue_(TSCEErrorValue, v122, v113, v123);
    objc_msgSend_setError_warnings_forCell_(v37, v126, v113, 0, &v359);
    objc_msgSend_applyFormulaResult_(v301, v127, v125, v128);
    objc_msgSend_clearSpillSizeForCell_(v37, v129, &v359, v130);
    v321[0] = MEMORY[0x277D85DD0];
    v321[1] = 3221225472;
    v321[2] = sub_22157BC20;
    v321[3] = &unk_27845FBD8;
    v322 = v303;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v355, v321);
  }

  else
  {
    v131 = objc_msgSend_valueAtGridCoord_accessContext_(v304, v122, 0, v342);
    v125 = objc_msgSend_resolveToSingleValueOrError_(v131, v132, v102, v133);

    objc_msgSend_attachWarnings_(v125, v134, v299, v135);
    v139 = objc_msgSend_context(self, v136, v137, v138);
    objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v301, v140, v125, v139, warningsCopy, textCell, checkboxesCopy);

    objc_msgSend_updateErrorAndWarnings_forCell_(v37, v141, v125, &v359);
    if (v124)
    {
      v144 = MEMORY[0x277D81150];
      v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]", v143);
      v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v147);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v149, v145, v148, 1381, 0, "We should not be setting values and errors if we lost spill conflict vs another spill.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v150, v151, v152);
    }

    v329._rectRepresentation.origin = 0;
    *&v329._rectRepresentation.size.numberOfColumns = *v54;
    for (j = v353; j; j = *j)
    {
      v154 = j[3];
      v329._rectRepresentation.origin = j[2];
      origin = v329._rectRepresentation.origin;
      v156 = v154;
      *v333 = origin;
      v157 = sub_221087F14(&v349, v333);
      v159 = v157;
      if (v157)
      {
        v160 = v157[3];
        sub_221087680(&v349, v159, v333);
        sub_221087E7C(v333);
      }

      else
      {
        v160 = 0;
      }

      objc_msgSend_setError_warnings_forCell_(v37, v158, v156, v160, &v329);
    }

    for (k = v350; k; k = *k)
    {
      v162 = k[3];
      v329._rectRepresentation.origin = k[2];
      v163 = v162;
      objc_msgSend_setError_warnings_forCell_(v37, v164, 0, v163, &v329);
    }
  }

  sub_221087B80(&v349);
  sub_221087B80(&v352);
  sub_22107C800(&v355, v355._coordsForOwnerUid.__tree_.__end_node_.__left_);

LABEL_68:
  *v333 = 0;
  *&v333[8] = v333;
  *&v333[16] = 0x4812000000;
  *&v333[24] = sub_22157BC2C;
  *&v333[32] = sub_22157BC38;
  v334 = &unk_22188E88F;
  v337 = 0;
  v336 = 0;
  v335 = &v336;
  v310[0] = MEMORY[0x277D85DD0];
  v310[1] = 3221225472;
  v310[2] = sub_22157BC44;
  v310[3] = &unk_278467018;
  v173 = v303;
  v311 = v173;
  selfCopy = self;
  v317 = v306;
  v320 = v361;
  v174 = v302;
  v313 = v174;
  v16 = v300;
  v314 = v16;
  v175 = v297;
  v318 = v37;
  v319 = v54;
  v315 = v175;
  v316 = v333;
  TSCECellRefSet::enumerateCellRefsUsingBlock(&v358, v310);
  if (v298)
  {
    objc_msgSend_unlockSpilling(self, v176, v177, v178);
  }

  if ((TSCECellRefSet::isEmpty((*&v333[8] + 48)) & 1) == 0)
  {
    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v179, v54, v180);
    objc_msgSend_markCellRefAsDirty_(v37, v181, v342, v182);
  }

  _Block_object_dispose(v333, 8);
  sub_22107C800(&v335, v336);

  cellCopy = v301;
  LOBYTE(v16) = v305;
LABEL_73:
  sub_22107C800(&v358, v358._coordsForOwnerUid.__tree_.__end_node_.__left_);

  return v16;
}

- (id)expectedSpillErrorForValue:(id)value withContext:(id)context
{
  valueCopy = value;
  contextCopy = context;
  if (objc_msgSend_isError(valueCopy, v8, v9, v10))
  {
    v14 = objc_msgSend_asErrorValue(valueCopy, v11, v12, v13);
    v18 = objc_msgSend_error(v14, v15, v16, v17);
  }

  else
  {
    v19 = objc_msgSend_nativeType(valueCopy, v11, v12, v13);
    if (v19 == 1 || v19 == 16)
    {
      v99 = 0;
      v21 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(valueCopy, v20, contextCopy, 0, 0xFFFFFFFFLL, 0, &v99);
      v22 = v99;
      v26 = *objc_msgSend_containingCell(contextCopy, v23, v24, v25);
      v30 = objc_msgSend_dimensions(v21, v27, v28, v29);
      v98 = v30;
      if (HIDWORD(v30) + v26 <= objc_msgSend_numberOfRows(self, v31, v32, v33) && v98.width + WORD2(v26) <= objc_msgSend_numberOfColumns(self, v34, v35, v36))
      {
        v92 = v30;
        v96 = v26;
        v97 = v30;
        v40 = objc_msgSend_mergeOwner(self, v34, v37, v38);
        hasMergeRangesIntersectingBaseCellRect = objc_msgSend_hasMergeRangesIntersectingBaseCellRect_(v40, v41, &v96, v42);

        if (hasMergeRangesIntersectingBaseCellRect)
        {
          v47 = objc_msgSend_mergeOwner(self, v44, v45, v46);
          v49 = v47;
          if (v47)
          {
            objc_msgSend_mergeRangesIntersectingBaseCellRect_(v47, v48, v96, v97);
          }

          else
          {
            __p = 0;
            v94 = 0;
            v95 = 0;
          }

          if (__p == v94)
          {
            objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v89, v92, v26, v92, 0x7FFF7FFFFFFFLL, 0);
          }

          else
          {
            objc_msgSend_mergeBlockedSpillError_spillRange_spillBlocker_(TSCEError, v89, v92, v26, v92, *__p, *(__p + 1));
          }
          v18 = ;
          if (__p)
          {
            v94 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v90 = v21;
          v91 = contextCopy;
          v50 = [TSTCell alloc];
          v54 = objc_msgSend_locale(contextCopy, v51, v52, v53);
          v57 = objc_msgSend_initWithLocale_(v50, v55, v54, v56);

          __p = 0;
          v59 = WORD2(v26);
          v60 = v26;
          while (1)
          {
            v61 = v26 & 0xFFFF000000000000 | (v59 << 32);
            if (v60 != v26 || ((v61 ^ v26) & 0x101FFFF00000000) != 0)
            {
              objc_msgSend_getPendingCellCopy_atBaseCellCoord_suppressCellBorder_(self, v58, v57, v61 | v60, 1, v90, v91);
              if (objc_msgSend_hasValueOrError(v57, v62, v63, v64))
              {
                if (!objc_msgSend_hasCellSpec(v57, v65, v66, v67))
                {
                  break;
                }
              }

              if (objc_msgSend_hasControl(v57, v65, v66, v67))
              {
                break;
              }

              if (objc_msgSend_hasFormula(v57, v65, v68, v69))
              {
                v73 = objc_msgSend_formulaObject(v57, v70, v71, v72);
                v77 = objc_msgSend_spillOrigin(v73, v74, v75, v76);

                if (v77 == 0x7FFFFFFF || (v77 & 0xFFFF00000000) == 0x7FFF00000000)
                {
                  v81 = objc_msgSend_formulaObject(v57, v78, v79, v80);
                  isSpillFormula = objc_msgSend_isSpillFormula(v81, v82, v83, v84);

                  if ((isSpillFormula & 1) == 0)
                  {
                    break;
                  }
                }
              }
            }

            v86 = HIDWORD(__p);
            v87 = TSCEGridDimensions::nextCoordRowMajorOrder(&v98, &__p);
            v18 = 0;
            __p = v87;
            if (v87 == 0x7FFFFFFF)
            {
              goto LABEL_35;
            }

            v88 = HIDWORD(v87);
            if (HIDWORD(v87) == 0x7FFFFFFF)
            {
              goto LABEL_35;
            }

            if (v88 == v86)
            {
              ++v59;
            }

            else
            {
              v59 = WORD2(v26);
            }

            if (v88 != v86)
            {
              ++v60;
            }
          }

          v18 = objc_msgSend_contentBlockedSpillError_spillRange_spillBlocker_(TSCEError, v65, v92, v26, v92, v61 | v60, 0x100000001);
LABEL_35:

          v21 = v90;
          contextCopy = v91;
        }
      }

      else
      {
        v18 = objc_msgSend_tableSizeBlockedSpillError_spillRange_(TSCEError, v34, v30, v26, v30);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (id)objectToArchiveInDependencyTracker
{
  selfCopy = self;
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    selfCopy = v5;
  }

  v7 = selfCopy;

  return selfCopy;
}

@end