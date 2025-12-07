@interface TSTTableTranslator
- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d;
- (BOOL)checkMapsAndAssert:(BOOL)assert;
- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)d;
- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)d;
- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d;
- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)range;
- (BOOL)hasMergeRanges;
- (BOOL)hasMergeRangesIntersectingCellRegion:(id)region;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)range;
- (BOOL)isValidMergeRange:(TSUViewCellRect)range;
- (BOOL)mergeCellRange:(TSUViewCellRect)range;
- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)range;
- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)region;
- (BOOL)unmergeCellRange:(TSUViewCellRect)range;
- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:(TSTTableTranslator *)self;
- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:(TSTTableTranslator *)self;
- (TSKUIDStruct)columnUIDForBaseColumnIndex:(TSUModelColumnIndex)index;
- (TSKUIDStruct)columnUIDForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSKUIDStruct)rowUIDForBaseRowIndex:(TSUModelRowIndex)index;
- (TSKUIDStruct)rowUIDForViewRowIndex:(TSUViewRowIndex)index;
- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)coord;
- (TSKUIDStructCoord)cellUIDforBaseCellCoord:(SEL)coord;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForBaseColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForViewColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForBaseRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForViewRowIndexes:(SEL)indexes;
- (TSTColumnRowUIDMap)summaryMap;
- (TSTColumnRowUIDMap)viewMap;
- (TSTTableTranslator)init;
- (TSTTableTranslator)initWithBaseTableModel:(id)model;
- (TSTTableTranslator)initWithTableInfo:(id)info;
- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUModelCellCoord)baseCellCoordForCellUID:(TSKUIDStructCoord *)d;
- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord;
- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord;
- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index;
- (TSUModelColumnIndex)baseColumnIndexForColumnUID:(TSKUIDStruct)d;
- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index;
- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index;
- (TSUModelRowIndex)baseRowIndexForRowUID:(TSKUIDStruct)d;
- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index;
- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)d;
- (TSUViewCellCoord)viewCellCoordForCellUID:(TSKUIDStructCoord *)d;
- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord;
- (TSUViewCellRect)actualHeaderColumnRange;
- (TSUViewCellRect)baseColumnRange;
- (TSUViewCellRect)bodyColumnRange;
- (TSUViewCellRect)bodyRange;
- (TSUViewCellRect)bodyRowRange;
- (TSUViewCellRect)bottomCornerRange;
- (TSUViewCellRect)categoryColumnRange;
- (TSUViewCellRect)cellRangeForTableArea:(unint64_t)area;
- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)cells;
- (TSUViewCellRect)footerRowRange;
- (TSUViewCellRect)headerColumnRange;
- (TSUViewCellRect)headerRowRange;
- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)d;
- (TSUViewCellRect)range;
- (TSUViewCellRect)topCornerRange;
- (TSUViewColumnIndex)numberOfColumns;
- (TSUViewColumnIndex)viewColumnIndexForColumnUID:(TSKUIDStruct)d;
- (TSUViewRowIndex)numberOfRows;
- (TSUViewRowIndex)viewRowIndexForRowUID:(TSKUIDStruct)d;
- (id)baseCellRegionForUIDRange:(const void *)range;
- (id)baseColumnIndexesForUIDs:(const void *)ds;
- (id)baseRowIndexesForUIDs:(const void *)ds;
- (id)baseTractRefForChromeTractRef:(id)ref;
- (id)baseTractRefForViewTractRef:(id)ref;
- (id)cachedCommentHostingForAnnotationUUID:(id)d;
- (id)cellRegionForTableStyleArea:(unint64_t)area;
- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)cellValueFromCell:(id)cell atCellID:(TSUViewCellCoord)d;
- (id)characterFillAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell;
- (id)chromeTractRefForBaseTractRef:(id)ref;
- (id)chromeTractRefForViewTractRef:(id)ref;
- (id)commentHostingAtCellID:(TSUViewCellCoord)d;
- (id)commentHostingAtCellID:(TSUViewCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps;
- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)d;
- (id)coordinateMapper;
- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)expandCellRegionToCoverMergedCells:(id)cells;
- (id)formulaAtCellID:(TSUViewCellCoord)d;
- (id)indexesForLeadingColumns;
- (id)indexesForLeadingRows;
- (id)mergeActionForRegion:(id)region;
- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only;
- (id)mergedGridIndicesForDimension:(int64_t)dimension;
- (id)metadataForColumnIndex:(TSUViewColumnIndex)index;
- (id)metadataForRowIndex:(TSUViewRowIndex)index;
- (id)mutableBaseColumnIndexesForUIDs:(const void *)ds;
- (id)mutableBaseRowIndexesForUIDs:(const void *)ds;
- (id)removeReturningInverseForRegion:(id)region;
- (id)shrinkReturningInverseForRegion:(id)region;
- (id)stringAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell;
- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default;
- (id)viewColumnIndexesForUIDs:(const void *)ds;
- (id)viewRowIndexesForUIDs:(const void *)ds;
- (id)viewTractRefForBaseTractRef:(id)ref;
- (id)viewTractRefForChromeTractRef:(id)ref;
- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border;
- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d suppressCellBorder:(BOOL)border;
- (int)getDefaultCell:(id)cell forCellID:(TSUViewCellCoord)d;
- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d;
- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text;
- (int)removeCommentStorageAtCellUID:(const TSKUIDStructCoord *)d;
- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings;
- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer;
- (int)setCellStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d;
- (int)setCellStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d;
- (int)setCellsWithCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells;
- (int)setCommentStorage:(id)storage atCellUID:(const TSKUIDStructCoord *)d;
- (int)setTextStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d;
- (int)setTextStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d;
- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)d;
- (unint64_t)tableAreaForColumn:(TSUViewColumnIndex)column;
- (unint64_t)tableAreaForDroppingRowAtIndex:(TSUViewRowIndex)index;
- (unint64_t)tableAreaForRow:(TSUViewRowIndex)row;
- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d;
- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d;
- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)d;
- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)column outAggregateIndex:(unint64_t *)index;
- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)row outAggregateIndex:(unint64_t *)index;
- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTTableTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTTableTranslator *)self;
- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block;
- (void)postCommentNotificationForStorage:(id)storage atViewCellCoord:(TSUViewCellCoord)coord notificationKey:(id)key;
- (void)resetViewMap;
@end

@implementation TSTTableTranslator

- (TSTTableTranslator)initWithTableInfo:(id)info
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = TSTTableTranslator;
  v5 = [(TSTTableTranslator *)&v12 init];
  v9 = v5;
  if (v5)
  {
    v5->_tableInfo = infoCopy;
    v10 = objc_msgSend_baseTableModel(infoCopy, v6, v7, v8);
    v9->_baseTableModel = v10;
  }

  return v9;
}

- (TSTTableTranslator)initWithBaseTableModel:(id)model
{
  result = objc_msgSend_initWithTableInfo_(self, a2, 0, v3);
  if (result)
  {
    result->_baseTableModel = model;
  }

  return result;
}

- (TSTTableTranslator)init
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTranslator init]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 83, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", v14, "Do not call method", "[TSTTableTranslator init]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, *MEMORY[0x277CBE658], v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (id)coordinateMapper
{
  coordMapper = self->_coordMapper;
  if (!coordMapper)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_coordMapper)
    {
      v5 = [TSCECoordMapper alloc];
      v14[0] = objc_msgSend_tableUID(selfCopy->_baseTableModel, v6, v7, v8);
      v14[1] = v9;
      v11 = objc_msgSend_initWithTableUID_(v5, v9, v14, v10);
      v12 = self->_coordMapper;
      self->_coordMapper = v11;
    }

    objc_sync_exit(selfCopy);

    coordMapper = self->_coordMapper;
  }

  return coordMapper;
}

- (TSTColumnRowUIDMap)summaryMap
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_summaryModel(v4, v5, v6, v7);
  v12 = objc_msgSend_columnRowUIDMap(v8, v9, v10, v11);

  return v12;
}

- (TSTColumnRowUIDMap)viewMap
{
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
    tableInfo = self->_baseTableModel;
  }

  v6 = objc_msgSend_columnRowUIDMap(tableInfo, a2, v2, v3);

  return v6;
}

- (TSUViewRowIndex)numberOfRows
{
  v4 = objc_msgSend_viewMap(self, a2, v2, v3);
  v8.var0 = objc_msgSend_numberOfRows(v4, v5, v6, v7);

  return v8;
}

- (TSUViewColumnIndex)numberOfColumns
{
  v4 = objc_msgSend_viewMap(self, a2, v2, v3);
  v8.var0 = objc_msgSend_numberOfColumns(v4, v5, v6, v7);

  return v8;
}

- (TSUViewCellRect)range
{
  tableInfo = self->_tableInfo;
  if (tableInfo)
  {
    objc_msgSend_columnRowUIDMap(tableInfo, a2, v2, v3);
  }

  else
  {
    objc_msgSend_columnRowUIDMap(self->_baseTableModel, a2, v2, v3);
  }
  v6 = ;
  v10 = objc_msgSend_range(v6, v7, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._rect.size = v14;
  result._rect.origin = v13;
  return result;
}

- (TSUViewCellRect)bodyRange
{
  v18.origin = objc_msgSend_range(self, a2, v2, v3);
  v18.size = v5;
  objc_msgSend_numberOfHeaderRows(self, v5, v6, v7);
  TSUCellRect::insetTop(&v18);
  objc_msgSend_numberOfHeaderColumns(self, v8, v9, v10);
  TSUCellRect::insetLeft(&v18);
  objc_msgSend_numberOfFooterRows(self, v11, v12, v13);
  TSUCellRect::insetBottom();
  isValid = TSUCellRect::isValid(&v18);
  v15 = isValid == 0;
  if (isValid)
  {
    origin = v18.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v15)
  {
    size = 0;
  }

  else
  {
    size = v18.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)bodyColumnRange
{
  v12.origin = objc_msgSend_range(self, a2, v2, v3);
  v12.size = v5;
  objc_msgSend_numberOfHeaderColumns(self, v5, v6, v7);
  TSUCellRect::insetLeft(&v12);
  isValid = TSUCellRect::isValid(&v12);
  v9 = isValid == 0;
  if (isValid)
  {
    origin = v12.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v9)
  {
    size = 0;
  }

  else
  {
    size = v12.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)bodyRowRange
{
  v15.origin = objc_msgSend_range(self, a2, v2, v3);
  v15.size = v5;
  objc_msgSend_numberOfHeaderRows(self, v5, v6, v7);
  TSUCellRect::insetTop(&v15);
  objc_msgSend_numberOfFooterRows(self, v8, v9, v10);
  TSUCellRect::insetBottom();
  isValid = TSUCellRect::isValid(&v15);
  v12 = isValid == 0;
  if (isValid)
  {
    origin = v15.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v12)
  {
    size = 0;
  }

  else
  {
    size = v15.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)headerRowRange
{
  v12.origin = objc_msgSend_range(self, a2, v2, v3);
  v12.size.numberOfColumns = v5;
  v12.size.numberOfRows = objc_msgSend_numberOfHeaderRows(self, v5, v6, v7);
  isValid = TSUCellRect::isValid(&v12);
  v9 = isValid == 0;
  if (isValid)
  {
    origin = v12.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v9)
  {
    size = 0;
  }

  else
  {
    size = v12.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)headerColumnRange
{
  v12.origin = objc_msgSend_range(self, a2, v2, v3);
  v12.size.numberOfRows = HIDWORD(v5);
  LOWORD(v12.size.numberOfColumns) = objc_msgSend_numberOfHeaderColumns(self, v5, v6, v7);
  v12.size.numberOfColumns = LOWORD(v12.size.numberOfColumns);
  isValid = TSUCellRect::isValid(&v12);
  v9 = isValid == 0;
  if (isValid)
  {
    origin = v12.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v9)
  {
    size = 0;
  }

  else
  {
    size = v12.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)actualHeaderColumnRange
{
  v15.origin = objc_msgSend_headerColumnRange(self, a2, v2, v3);
  v15.size = v5;
  objc_msgSend_numberOfHeaderRows(self, v5, v6, v7);
  TSUCellRect::insetTop(&v15);
  objc_msgSend_numberOfFooterRows(self, v8, v9, v10);
  TSUCellRect::insetBottom();
  isValid = TSUCellRect::isValid(&v15);
  v12 = isValid == 0;
  if (isValid)
  {
    origin = v15.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v12)
  {
    size = 0;
  }

  else
  {
    size = v15.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)footerRowRange
{
  v15.origin = objc_msgSend_range(self, a2, v2, v3);
  v15.size = v5;
  objc_msgSend_numberOfRows(self, v5, v6, v7);
  objc_msgSend_numberOfFooterRows(self, v8, v9, v10);
  TSUCellRect::insetTop(&v15);
  isValid = TSUCellRect::isValid(&v15);
  v12 = isValid == 0;
  if (isValid)
  {
    origin = v15.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v12)
  {
    size = 0;
  }

  else
  {
    size = v15.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)topCornerRange
{
  v15.origin = objc_msgSend_range(self, a2, v2, v3);
  v15.size.numberOfRows = objc_msgSend_numberOfHeaderRows(self, v5, v6, v7);
  LOWORD(v15.size.numberOfColumns) = objc_msgSend_numberOfHeaderColumns(self, v8, v9, v10);
  v15.size.numberOfColumns = LOWORD(v15.size.numberOfColumns);
  isValid = TSUCellRect::isValid(&v15);
  v12 = isValid == 0;
  if (isValid)
  {
    origin = v15.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v12)
  {
    size = 0;
  }

  else
  {
    size = v15.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)bottomCornerRange
{
  v12.origin = objc_msgSend_footerRowRange(self, a2, v2, v3);
  v12.size.numberOfRows = HIDWORD(v5);
  LOWORD(v12.size.numberOfColumns) = objc_msgSend_numberOfHeaderColumns(self, v5, v6, v7);
  v12.size.numberOfColumns = LOWORD(v12.size.numberOfColumns);
  isValid = TSUCellRect::isValid(&v12);
  v9 = isValid == 0;
  if (isValid)
  {
    origin = v12.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v9)
  {
    size = 0;
  }

  else
  {
    size = v12.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSUViewCellRect)categoryColumnRange
{
  v13 = xmmword_2217E0780;
  if (objc_msgSend_isCategorized(self, a2, v2, v3))
  {
    v8 = objc_msgSend_numberOfRows(self->_tableInfo, v5, v6, v7);
    *&v13 = 0;
    *(&v13 + 1) = (v8 << 32) | 1;
  }

  isValid = TSUCellRect::isValid(&v13);
  v10 = isValid == 0;
  if (isValid)
  {
    v11 = v13;
  }

  else
  {
    v11 = 0x7FFF7FFFFFFFLL;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(&v13 + 1);
  }

  result._rect.size = v12;
  result._rect.origin = v11;
  return result;
}

- (TSUViewCellRect)baseColumnRange
{
  v12.origin = objc_msgSend_range(self, a2, v2, v3);
  v12.size = v5;
  if (objc_msgSend_isCategorized(self, v5, v6, v7))
  {
    TSUCellRect::insetLeft(&v12);
  }

  isValid = TSUCellRect::isValid(&v12);
  v9 = isValid == 0;
  if (isValid)
  {
    origin = v12.origin;
  }

  else
  {
    origin = 0x7FFF7FFFFFFFLL;
  }

  if (v9)
  {
    size = 0;
  }

  else
  {
    size = v12.size;
  }

  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_viewMap(self, a2, d, v3);
  row = d->_row;
  v14[0] = d->_column;
  v14[1] = row;
  v10 = objc_msgSend_cellIDForCellUID_(v6, v8, v14, v9);

  return objc_msgSend_tableStyleAreaForCellID_(self, v11, v10, v12);
}

- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d
{
  v6 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, v3);
  baseTableModel = self->_baseTableModel;

  return objc_msgSend_tableStyleAreaForBaseCellCoord_(baseTableModel, v5, v6, v7);
}

- (id)cellRegionForTableStyleArea:(unint64_t)area
{
  if (area > 2)
  {
    if (area == 3)
    {
      v4 = objc_msgSend_actualHeaderColumnRange(self, a2, 3, v3);
      goto LABEL_11;
    }

    if (area == 4)
    {
      v4 = objc_msgSend_footerRowRange(self, a2, 4, v3);
      goto LABEL_11;
    }

LABEL_8:
    v6 = objc_msgSend_invalidRegion(TSTCellRegion, a2, area, v3);
    goto LABEL_12;
  }

  if (area == 1)
  {
    v4 = objc_msgSend_bodyRange(self, a2, 1, v3);
    goto LABEL_11;
  }

  if (area != 2)
  {
    goto LABEL_8;
  }

  v4 = objc_msgSend_headerRowRange(self, a2, 2, v3);
LABEL_11:
  v6 = objc_msgSend_regionFromRange_(TSTCellRegion, v5, v4, v5);
LABEL_12:

  return v6;
}

- (TSUViewCellRect)cellRangeForTableArea:(unint64_t)area
{
  v5 = 0;
  v6 = 0x7FFF7FFFFFFFLL;
  if (area > 3)
  {
    switch(area)
    {
      case 4uLL:
        v6 = objc_msgSend_footerRowRange(self, 0, 4, v3);
        break;
      case 5uLL:
        v6 = objc_msgSend_topCornerRange(self, 0, 5, v3);
        break;
      case 6uLL:
        v6 = objc_msgSend_bottomCornerRange(self, 0, 6, v3);
        break;
    }
  }

  else
  {
    switch(area)
    {
      case 1uLL:
        v6 = objc_msgSend_bodyRange(self, 0, 1, v3);
        break;
      case 2uLL:
        v6 = objc_msgSend_headerRowRange(self, 0, 2, v3);
        break;
      case 3uLL:
        v6 = objc_msgSend_headerColumnRange(self, 0, 3, v3);
        break;
    }
  }

  result._rect.size = v5;
  result._rect.origin = v6;
  return result;
}

- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator tableAreaForCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 416, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_tableAreaForBaseCellCoord_(baseTableModel, v6, *&d, v7);
}

- (unint64_t)tableAreaForDroppingRowAtIndex:(TSUViewRowIndex)index
{
  if (index.var0 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderRows(self, a2, *&index.var0, v3) > index.var0)
  {
    return 2;
  }

  if (objc_msgSend_numberOfFooterRows(self, v7, v8, v9))
  {
    v13 = objc_msgSend_numberOfRows(self, v10, v11, v12);
    if (v13 - objc_msgSend_numberOfFooterRows(self, v14, v15, v16) < index.var0)
    {
      return 4;
    }
  }

  return 1;
}

- (unint64_t)tableAreaForRow:(TSUViewRowIndex)row
{
  if (row.var0 == 0x7FFFFFFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderRows(self, a2, *&row.var0, v3) > row.var0)
  {
    return 2;
  }

  v10 = objc_msgSend_numberOfRows(self, v7, v8, v9);
  if (v10 - objc_msgSend_numberOfFooterRows(self, v11, v12, v13) > row.var0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (unint64_t)tableAreaForColumn:(TSUViewColumnIndex)column
{
  if (column.var0 == 0x7FFF)
  {
    return 0;
  }

  if (objc_msgSend_numberOfHeaderColumns(self, a2, *&column.var0, v3) <= column.var0)
  {
    return 1;
  }

  return 3;
}

- (int)getDefaultCell:(id)cell forCellID:(TSUViewCellCoord)d
{
  cellCopy = cell;
  v9 = objc_msgSend_tableStyleAreaForCellID_(self, v7, *&d, v8);
  LODWORD(self) = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v10, cellCopy, v9);

  return self;
}

- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  v10 = objc_msgSend_viewMap(self, v7, v8, v9);
  row = d->_row;
  v18[0] = d->_column;
  v18[1] = row;
  v14 = objc_msgSend_cellIDForCellUID_(v10, v12, v18, v13);

  DefaultCell_forCellID = 2;
  if (v14 != 0x7FFFFFFF && (v14 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    DefaultCell_forCellID = objc_msgSend_getDefaultCell_forCellID_(self, v15, cellCopy, v14);
  }

  return DefaultCell_forCellID;
}

- (unsigned)cellValueTypeAtCellUID:(const TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_viewMap(self, a2, d, v3);
  row = d->_row;
  v14[0] = d->_column;
  v14[1] = row;
  v10 = objc_msgSend_cellIDForCellUID_(v6, v8, v14, v9);

  result = 0;
  if (v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    return objc_msgSend_cellValueTypeAtCellID_(self, v11, v10, v12);
  }

  return result;
}

- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator cellValueTypeAtCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 495, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_cellValueTypeAtBaseCellCoord_(baseTableModel, v6, *&d, v7);
}

- (int)setCellStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v10 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9);
  LODWORD(d) = objc_msgSend_rowIndexForRowUID_(v10, v11, d->_lower, d->_upper);

  LODWORD(self) = objc_msgSend_setCellStyle_ofRowAtIndex_(self->_baseTableModel, v12, styleCopy, d);
  return self;
}

- (int)setTextStyle:(id)style ofRowAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v10 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9);
  LODWORD(d) = objc_msgSend_rowIndexForRowUID_(v10, v11, d->_lower, d->_upper);

  LODWORD(self) = objc_msgSend_setTextStyle_ofRowAtIndex_(self->_baseTableModel, v12, styleCopy, d);
  return self;
}

- (int)setCellStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v10 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9);
  LODWORD(d) = objc_msgSend_columnIndexForColumnUID_(v10, v11, d->_lower, d->_upper);

  LODWORD(self) = objc_msgSend_setCellStyle_ofColumnAtIndex_(self->_baseTableModel, v12, styleCopy, d);
  return self;
}

- (int)setTextStyle:(id)style ofColumnAtUID:(const TSKUIDStruct *)d
{
  styleCopy = style;
  v10 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9);
  LODWORD(d) = objc_msgSend_columnIndexForColumnUID_(v10, v11, d->_lower, d->_upper);

  LODWORD(self) = objc_msgSend_setTextStyle_ofColumnAtIndex_(self->_baseTableModel, v12, styleCopy, d);
  return self;
}

- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  if (objc_msgSend_isCategorized(self, a2, *&d, default))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTranslator defaultCellStyleForCellID:useSoftDefault:outSource:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 537, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(baseTableModel, v9, *&d, defaultCopy, source);
}

- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  if (objc_msgSend_isCategorized(self, a2, *&d, default))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTranslator defaultTextStyleForCellID:useSoftDefault:outSource:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 547, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(baseTableModel, v9, *&d, defaultCopy, source);
}

- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  if (objc_msgSend_isCategorized(self, a2, *&d, default))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator cellStyleAtCellID:isDefault:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 557, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_cellStyleAtModelCellCoord_isDefault_(baseTableModel, v7, *&d, default);
}

- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  if (objc_msgSend_isCategorized(self, a2, *&d, default))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTranslator textStyleAtCellID:isDefault:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 563, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_textStyleAtModelCellCoord_isDefault_(baseTableModel, v7, *&d, default);
}

- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  defaultCopy = default;
  if (objc_msgSend_isCategorized(self, a2, *&d, default))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableTranslator defaultStyleHandlesForCellID:useSoftDefault:styleDefaultsCache:outCellStyleHandle:outTextStyleHandle:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 568, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  baseTableModel = self->_baseTableModel;

  objc_msgSend_defaultStyleHandlesAtBaseCellCoord_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(baseTableModel, v13, *&d, defaultCopy, cache, handle, styleHandle);
}

- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  v7 = objc_msgSend_viewMap(self, a2, d, default);
  row = d->_row;
  v15[0] = d->_column;
  v15[1] = row;
  v11 = objc_msgSend_cellIDForCellUID_(v7, v9, v15, v10);

  if (v11 == 0x7FFFFFFF || (v11 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = 0;
    if (default)
    {
      *default = 0;
    }
  }

  else
  {
    v13 = objc_msgSend_cellStyleAtCellID_isDefault_(self, v12, v11, default);
  }

  return v13;
}

- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)d isDefault:(BOOL *)default
{
  v7 = objc_msgSend_viewMap(self, a2, d, default);
  row = d->_row;
  v15[0] = d->_column;
  v15[1] = row;
  v11 = objc_msgSend_cellIDForCellUID_(v7, v9, v15, v10);

  if (v11 == 0x7FFFFFFF || (v11 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = 0;
    if (default)
    {
      *default = 0;
    }
  }

  else
  {
    v13 = objc_msgSend_textStyleAtCellID_isDefault_(self, v12, v11, default);
  }

  return v13;
}

- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator conditionalStyleSetAtCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 603, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_conditionalStyleSetAtBaseCellCoord_(baseTableModel, v6, *&d, v7);
}

- (id)metadataForRowIndex:(TSUViewRowIndex)index
{
  v4 = *&index.var0;
  v6 = objc_msgSend_hiddenStatesOwner(self->_baseTableModel, a2, *&index.var0, v3);
  v10 = objc_msgSend_hiddenStates(v6, v7, v8, v9);
  v13 = objc_msgSend_hidingActionForRowAtIndex_(v10, v11, v4, v12);

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_metadataForRowIndex_hidingAction_(baseTableModel, v14, v4, v13);
}

- (id)metadataForColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_hiddenStatesOwner(self->_baseTableModel, a2, *&index.var0, v3);
  v10 = objc_msgSend_hiddenStates(v6, v7, v8, v9);
  v13 = objc_msgSend_hidingActionForColumnAtIndex_(v10, v11, index.var0, v12);

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_metadataForColumnIndex_hidingAction_(baseTableModel, v14, index.var0, v13);
}

- (id)stringAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  if (objc_msgSend_isCategorized(self, v7, v8, v9))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableTranslator stringAtCellID:optionalCell:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 623, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_stringAtBaseCellCoord_optionalCell_(self->_baseTableModel, v10, *&d, cellCopy);

  return v21;
}

- (id)characterFillAtCellID:(TSUViewCellCoord)d optionalCell:(id)cell
{
  cellCopy = cell;
  v10 = objc_msgSend_textStyle(cellCopy, v7, v8, v9);
  v16 = objc_msgSend_conditionalStyle(cellCopy, v11, v12, v13);
  if (!v10)
  {
    v10 = objc_msgSend_textStyleAtCellID_isDefault_(self, v14, *&d, 0);
  }

  v20 = objc_msgSend_valueForProperty_(v10, v14, 48, v15);
  if (v16)
  {
    if (cellCopy)
    {
      v21 = objc_msgSend_conditionalStyleAppliedRule(cellCopy, v17, v18, v19);
      objc_msgSend_ruleAtIndex_(v16, v22, v21, v23);
    }

    else
    {
      objc_msgSend_ruleAtIndex_(v16, v17, 15, v19);
    }
    v24 = ;
    v28 = objc_msgSend_textStyle(v24, v25, v26, v27);
    v31 = v28;
    if (v28)
    {
      v32 = objc_msgSend_valueForProperty_(v28, v29, 48, v30);

      v20 = v32;
    }
  }

  if (!v20)
  {
    v20 = objc_msgSend_blackColor(MEMORY[0x277D801F8], v17, v18, v19);
  }

  return v20;
}

- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border
{
  borderCopy = border;
  cellCopy = cell;
  if (objc_msgSend_isCategorized(self, v9, v10, v11))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableTranslator getCell:atCellID:suppressCellBorder:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 656, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_baseTableModel, v12, cellCopy, *&d, borderCopy);

  return Cell_atBaseCellCoord_suppressCellBorder;
}

- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d suppressCellBorder:(BOOL)border
{
  borderCopy = border;
  cellCopy = cell;
  if (objc_msgSend_canBeVendorStorageUid_(TSTSummaryCellVendor, v9, d, v10))
  {
    v14 = objc_msgSend_tableInfo(self, v11, v12, v13);
    v18 = objc_msgSend_summaryModel(v14, v15, v16, v17);
    v22 = objc_msgSend_summaryCellVendor(v18, v19, v20, v21);
    Cell_atCellUID = objc_msgSend_getCell_atCellUID_(v22, v23, cellCopy, d);
  }

  else
  {
    v25 = objc_msgSend_viewMap(self, v11, v12, v13);
    row = d->_row;
    v32[0] = d->_column;
    v32[1] = row;
    v29 = objc_msgSend_cellIDForCellUID_(v25, v27, v32, v28);

    Cell_atCellUID = 3;
    if (v29 != 0x7FFFFFFF && (v29 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      Cell_atCellUID = objc_msgSend_getCell_atCellID_suppressCellBorder_(self, v30, cellCopy, v29, borderCopy);
    }
  }

  return Cell_atCellUID;
}

- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings formulaReplacer:(id)replacer
{
  warningsCopy = warnings;
  formulaCopy = formula;
  cellCopy = cell;
  replacerCopy = replacer;
  v17 = objc_msgSend_baseMap(self, v14, v15, v16);
  row = d->_row;
  v33[0] = d->_column;
  v33[1] = row;
  v21 = objc_msgSend_cellIDForCellUID_(v17, v19, v33, v20);

  if (v21 == 0x7FFFFFFF || (v21 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v26 = objc_msgSend_tableInfo(self, v22, v23, v24);
    v30 = objc_msgSend_summaryModel(v26, v27, v28, v29);
    v25 = objc_msgSend_setCell_atCellUID_formulaReplacer_(v30, v31, cellCopy, d, replacerCopy);
  }

  else
  {
    if (!replacerCopy)
    {
      replacerCopy = objc_msgSend_calcEngine(self->_baseTableModel, v22, v23, v24);
    }

    v25 = objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_calcEngine_(self->_baseTableModel, v22, cellCopy, v21, formulaCopy, warningsCopy, replacerCopy);
  }

  return v25;
}

- (int)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings
{
  warningsCopy = warnings;
  formulaCopy = formula;
  cellCopy = cell;
  v14 = objc_msgSend_calcEngine(self->_baseTableModel, v11, v12, v13);
  LODWORD(warningsCopy) = objc_msgSend_setCell_atCellUID_ignoreFormula_clearImportWarnings_formulaReplacer_(self, v15, cellCopy, d, formulaCopy, warningsCopy, v14);

  return warningsCopy;
}

- (int)setCellsWithCellMap:(id)map ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells
{
  cellsCopy = cells;
  formulasCopy = formulas;
  mapCopy = map;
  v12 = objc_msgSend_baseMap(self, v9, v10, v11);
  v15 = objc_msgSend_shallowCopyToCoordFormUsingMap_(mapCopy, v13, v12, v14);

  LODWORD(cellsCopy) = objc_msgSend_setCellsWithBaseCellMap_ignoreFormulas_skipDirtyingNonFormulaCells_(self->_baseTableModel, v16, v15, formulasCopy, cellsCopy);
  return cellsCopy;
}

- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator hasFormulaAtCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 726, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  baseTableModel = self->_baseTableModel;

  return (MEMORY[0x2821F9670])(baseTableModel, sel_hasFormulaAtBaseCellCoord_, d, v7);
}

- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_viewMap(self, a2, d, v3);
  row = d->_row;
  v14[0] = d->_column;
  v14[1] = row;
  v10 = objc_msgSend_cellIDForCellUID_(v6, v8, v14, v9);

  result = 0;
  if (v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    return objc_msgSend_hasFormulaAtCellID_(self, v11, v10, v12);
  }

  return result;
}

- (id)formulaAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator formulaAtCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 742, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_formulaAtBaseCellCoord_(baseTableModel, v6, *&d, v7);
}

- (int)setCommentStorage:(id)storage atCellUID:(const TSKUIDStructCoord *)d
{
  storageCopy = storage;
  v10 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, v7, v8, v9);
  row = d->_row;
  v17[0] = d->_column;
  v17[1] = row;
  v14 = objc_msgSend_cellIDForCellUID_(v10, v12, v17, v13);

  LODWORD(self) = objc_msgSend_setCommentStorage_atBaseCellCoord_(self->_baseTableModel, v15, storageCopy, v14);
  return self;
}

- (int)removeCommentStorageAtCellUID:(const TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_columnRowUIDMap(self->_baseTableModel, a2, d, v3);
  row = d->_row;
  v14[0] = d->_column;
  v14[1] = row;
  v10 = objc_msgSend_cellIDForCellUID_(v6, v8, v14, v9);

  return objc_msgSend_removeCommentStorageAtBaseCellCoord_(self->_baseTableModel, v11, v10, v12);
}

- (void)postCommentNotificationForStorage:(id)storage atViewCellCoord:(TSUViewCellCoord)coord notificationKey:(id)key
{
  storageCopy = storage;
  keyCopy = key;
  if (objc_msgSend_isCategorized(self, v9, v10, v11))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableTranslator postCommentNotificationForStorage:atViewCellCoord:notificationKey:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 834, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self->_baseTableModel, v12, storageCopy, *&coord, keyCopy);
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)d forCommentStorage:(id)storage updateCommentMaps:(BOOL)maps
{
  mapsCopy = maps;
  storageCopy = storage;
  if (objc_msgSend_isCategorized(self, v9, v10, v11))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableTranslator commentHostingAtCellID:forCommentStorage:updateCommentMaps:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 840, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_updateCommentMaps_(self->_baseTableModel, v12, *&d, storageCopy, mapsCopy);

  return v23;
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator commentHostingAtCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 846, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_commentHostingAtBaseCellCoord_(baseTableModel, v6, *&d, v7);
}

- (id)cachedCommentHostingForAnnotationUUID:(id)d
{
  v4 = objc_msgSend_cachedCommentHostingForAnnotationUUID_(self->_baseTableModel, a2, d, v3);

  return v4;
}

- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text
{
  textCopy = text;
  v9 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, *&d);
  baseTableModel = self->_baseTableModel;

  return objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(baseTableModel, v8, value, v9, textCopy);
}

- (id)cellValueFromCell:(id)cell atCellID:(TSUViewCellCoord)d
{
  cellCopy = cell;
  v9 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v7, *&d, v8);
  v11 = objc_msgSend_cellValueFromCell_atBaseCellCoord_(self->_baseTableModel, v10, cellCopy, v9);

  return v11;
}

- (BOOL)mergeCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  LOBYTE(size.numberOfColumns) = objc_msgSend_insertBaseMergeRangeRemovingOverlaps_(v5, v6, origin, *&size);

  return size.numberOfColumns;
}

- (BOOL)unmergeCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  objc_msgSend_removeBaseMergeRange_(v5, v6, origin, size);

  return 1;
}

- (BOOL)hasMergeRanges
{
  v4 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, v2, v3);
  hasMergeRanges = objc_msgSend_hasMergeRanges(v4, v5, v6, v7);

  return hasMergeRanges;
}

- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator mergeRangeAtCellID:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 892, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_mergeOwner(self->_baseTableModel, v6, v7, v8);
  v21 = objc_msgSend_mergedRangeForBaseCellCoord_(v18, v19, *&d, v20);
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result._rect.size = v25;
  result._rect.origin = v24;
  return result;
}

- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator mergeOriginForCellID:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 899, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_mergeOwner(self->_baseTableModel, v6, v7, v8);
  v21 = objc_msgSend_mergeOriginForBaseCellCoord_(v18, v19, *&d, v20);

  return v21;
}

- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  LOBYTE(size.numberOfColumns) = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRect_(v5, v6, origin, *&size);

  return size.numberOfColumns;
}

- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7);
  v11 = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v8, v9, regionCopy, v10);

  return v11;
}

- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  LOBYTE(size.numberOfColumns) = objc_msgSend_hasMergeRangeSpanningRowsForBaseCellRect_(v5, v6, origin, *&size);

  return size.numberOfColumns;
}

- (BOOL)hasMergeRangesIntersectingCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7);
  hasMergeRangesIntersectingBaseCellRegion = objc_msgSend_hasMergeRangesIntersectingBaseCellRegion_(v8, v9, regionCopy, v10);

  return hasMergeRangesIntersectingBaseCellRegion;
}

- (id)mergedGridIndicesForDimension:(int64_t)dimension
{
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, dimension, v3);
  v8 = objc_msgSend_mergedGridIndicesForDimension_(v5, v6, dimension, v7);

  return v8;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  LOBYTE(size.numberOfColumns) = objc_msgSend_hasRangeSpanningRowsForCellRange_(v5, v6, origin, *&size);

  return size.numberOfColumns;
}

- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)cells
{
  size = cells._rect.size;
  origin = cells._rect.origin;
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&cells._rect.origin, *&cells._rect.size);
  v7 = objc_msgSend_expandBaseCellRectToCoverMergedCells_(v5, v6, origin, size);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._rect.size = v11;
  result._rect.origin = v10;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)cells
{
  cellsCopy = cells;
  v8 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7);
  v11 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v8, v9, cellsCopy, v10);

  return v11;
}

- (id)shrinkReturningInverseForRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7);
  v11 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_(v8, v9, regionCopy, v10);

  return v11;
}

- (id)removeReturningInverseForRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7);
  v11 = objc_msgSend_removeReturningInverseForBaseCellRegion_(v8, v9, regionCopy, v10);

  return v11;
}

- (id)mergeActionForRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_mergeOwner(self->_baseTableModel, v5, v6, v7);
  v11 = objc_msgSend_mergeActionForBaseCellRegion_(v8, v9, regionCopy, v10);

  return v11;
}

- (id)mergeActionForRegion:(id)region nonOriginPartialsOnly:(BOOL)only
{
  onlyCopy = only;
  regionCopy = region;
  v10 = objc_msgSend_mergeOwner(self->_baseTableModel, v7, v8, v9);
  v12 = objc_msgSend_mergeActionForBaseCellRegion_nonOriginPartialsOnly_(v10, v11, regionCopy, onlyCopy);

  return v12;
}

- (void)enumerateMergesIntersectingCellRegion:(id)region usingBlock:(id)block
{
  regionCopy = region;
  blockCopy = block;
  v8 = regionCopy;
  v12 = objc_msgSend_mergeOwner(self->_baseTableModel, v9, v10, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2214620DC;
  v15[3] = &unk_278465810;
  v13 = blockCopy;
  v16 = v13;
  objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(v12, v14, v8, v15);
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTTableTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(v6, v7, origin, size);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorFromModelCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTTableTranslator *)self
{
  v5 = a4;
  v9 = objc_msgSend_mergeOwner(self->_baseTableModel, v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v9, v10, v5, v11);
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

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTTableTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v6 = objc_msgSend_mergeOwner(self->_baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_mergeRangesAndCrumbsIntersectingBaseCellRect_(v6, v7, origin, size);
  }

  else
  {
    __p = 0;
  }

  TSUViewCellRectVectorFromModelCellRectVector();
  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (BOOL)isValidMergeRange:(TSUViewCellRect)range
{
  size = range._rect.size;
  origin = range._rect.origin;
  v5 = objc_msgSend_mergeOwner(self->_baseTableModel, a2, *&range._rect.origin, *&range._rect.size);
  LOBYTE(size.numberOfColumns) = objc_msgSend_isValidMergeRange_(v5, v6, origin, *&size);

  return size.numberOfColumns;
}

- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)index
{
  v6 = objc_msgSend_viewRowIndexForChromeRowIndex_(self, a2, index.var0, v3);

  return objc_msgSend_baseRowIndexForViewRowIndex_(self, v5, v6, v7);
}

- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)index
{
  v6 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(self, a2, index.var0, v3);

  return objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v5, v6, v7);
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

- (TSKUIDStruct)rowUIDForBaseRowIndex:(TSUModelRowIndex)index
{
  v4 = *&index._row;
  v5 = objc_msgSend_baseMap(self, a2, *&index._row, v3);
  v8 = objc_msgSend_rowUIDForRowIndex_(v5, v6, v4, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSKUIDStruct)columnUIDForViewColumnIndex:(TSUViewColumnIndex)index
{
  v5 = objc_msgSend_viewMap(self, a2, *&index.var0, v3);
  v8 = objc_msgSend_columnUIDForColumnIndex_(v5, v6, index.var0, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSKUIDStruct)rowUIDForViewRowIndex:(TSUViewRowIndex)index
{
  v4 = *&index.var0;
  v5 = objc_msgSend_viewMap(self, a2, *&index.var0, v3);
  v8 = objc_msgSend_rowUIDForRowIndex_(v5, v6, v4, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSUModelColumnIndex)baseColumnIndexForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v5 = objc_msgSend_baseMap(self, a2, d._lower, d._upper);
  LOWORD(upper) = objc_msgSend_columnIndexForColumnUID_(v5, v6, lower, upper);

  return upper;
}

- (TSUModelRowIndex)baseRowIndexForRowUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v5 = objc_msgSend_baseMap(self, a2, d._lower, d._upper);
  LODWORD(upper) = objc_msgSend_rowIndexForRowUID_(v5, v6, lower, upper);

  return upper;
}

- (TSUViewColumnIndex)viewColumnIndexForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v5 = objc_msgSend_viewMap(self, a2, d._lower, d._upper);
  LOWORD(upper) = objc_msgSend_columnIndexForColumnUID_(v5, v6, lower, upper);

  return upper;
}

- (TSUViewRowIndex)viewRowIndexForRowUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v5 = objc_msgSend_viewMap(self, a2, d._lower, d._upper);
  LODWORD(upper) = objc_msgSend_rowIndexForRowUID_(v5, v6, lower, upper);

  return upper;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForBaseColumnIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_baseMap(self, v6, v7, v8);
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

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForBaseRowIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_baseMap(self, v6, v7, v8);
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

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForViewColumnIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_viewMap(self, v6, v7, v8);
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

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForViewRowIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_viewMap(self, v6, v7, v8);
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

- (id)mutableBaseColumnIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_baseMap(self, a2, ds, v3);
  v8 = objc_msgSend_mutableColumnIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (id)mutableBaseRowIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_baseMap(self, a2, ds, v3);
  v8 = objc_msgSend_mutableRowIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (id)baseColumnIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_baseMap(self, a2, ds, v3);
  v8 = objc_msgSend_columnIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (id)baseRowIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_baseMap(self, a2, ds, v3);
  v8 = objc_msgSend_rowIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)coord
{
  v6 = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a2, *&coord, v3);

  return objc_msgSend_baseCellCoordForViewCellCoord_(self, v5, v6, v7);
}

- (id)viewColumnIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_viewMap(self, a2, ds, v3);
  v8 = objc_msgSend_columnIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (id)viewRowIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_viewMap(self, a2, ds, v3);
  v8 = objc_msgSend_rowIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)coord
{
  v6 = objc_msgSend_viewCellCoordForBaseCellCoord_(self, a2, *&coord, v3);

  return objc_msgSend_chromeCellCoordForViewCellCoord_(self, v5, v6, v7);
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_chromeCellCoordForViewCellCoord_(self, a3, *a4, v4);
  retstr->var0.coordinate = result;
  retstr->var0._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_viewCellCoordForBaseCellCoord_(self, a3, *a4, v4);
  retstr->var0.coordinate = result;
  retstr->var0._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_viewCellCoordForChromeCellCoord_(self, a3, *a4, v4);
  retstr->var0.coordinate = result;
  retstr->var0._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTTableTranslator *)self
{
  result = objc_msgSend_baseCellCoordForViewCellCoord_(self, a3, *a4, v4);
  retstr->_ref.coordinate = result;
  retstr->_ref._tableUID = *(a4 + 8);
  return result;
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRefForViewRangeRef:(TSTTableTranslator *)self
{
  v7 = objc_msgSend_coordinateMapper(self, a3, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v7, v8, a4, v9);
  }

  else
  {
    retstr->var0.range = 0u;
    retstr->var0._tableUID = 0u;
  }

  return result;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRefForChromeRangeRef:(TSTTableTranslator *)self
{
  v7 = objc_msgSend_coordinateMapper(self, a3, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_viewRangeRefForChromeRangeRef_(v7, v8, a4, v9);
  }

  else
  {
    retstr->var0.range = 0u;
    retstr->var0._tableUID = 0u;
  }

  return result;
}

- (id)chromeTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_chromeTractRefForViewTractRef_(v8, v9, refCopy, v10);

  return v11;
}

- (id)viewTractRefForChromeTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_viewTractRefForChromeTractRef_(v8, v9, refCopy, v10);

  return v11;
}

- (id)baseTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_baseTractRefForViewTractRef_(v8, v9, refCopy, v10);

  return v11;
}

- (id)viewTractRefForBaseTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_viewTractRefForBaseTractRef_(v8, v9, refCopy, v10);

  return v11;
}

- (id)chromeTractRefForBaseTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_chromeTractRefForBaseTractRef_(v8, v9, refCopy, v10);

  return v11;
}

- (id)baseTractRefForChromeTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_coordinateMapper(self, v5, v6, v7);
  v11 = objc_msgSend_baseTractRefForChromeTractRef_(v8, v9, refCopy, v10);

  return v11;
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

- (TSKUIDStructCoord)cellUIDforBaseCellCoord:(SEL)coord
{
  v7 = objc_msgSend_baseMap(self, coord, *&a4, v4);
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

- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)coord
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], coord, "[TSTTableTranslator cellUIDForSummaryCellCoord:]", v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1255, 0, "no summeries in normal table mode");

  result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  retstr->_column = 0u;
  retstr->_row = 0u;
  return result;
}

- (TSUViewCellCoord)viewCellCoordForCellUID:(TSKUIDStructCoord *)d
{
  v5 = objc_msgSend_viewMap(self, a2, d, v3);
  row = d->_row;
  v11[0] = d->_column;
  v11[1] = row;
  v9 = objc_msgSend_cellIDForCellUID_(v5, v7, v11, v8);

  return v9;
}

- (id)baseCellRegionForUIDRange:(const void *)range
{
  v5 = objc_msgSend_baseMap(self, a2, range, v3);
  v8 = objc_msgSend_cellRegionForUIDRange_(v5, v6, range, v7);

  return v8;
}

- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)coord
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&coord, v3);
  v8 = objc_msgSend_summaryCellCoordForViewCellCoord_(v5, v6, *&coord, v7);

  return v8;
}

- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8._row = objc_msgSend_summaryRowIndexForViewRowIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)index
{
  v5 = objc_msgSend_coordinateMapper(self, a2, *&index.var0, v3);
  v8._column = objc_msgSend_summaryColumnIndexForViewColumnIndex_(v5, v6, index.var0, v7);

  return v8;
}

- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isCategorized(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTranslator cellExistsAtCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1311, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  baseTableModel = self->_baseTableModel;

  return objc_msgSend_cellExistsAtBaseCellCoord_(baseTableModel, v6, *&d, v7);
}

- (id)indexesForLeadingRows
{
  v4 = MEMORY[0x277CCAA78];
  v11.origin = objc_msgSend_bodyRowRange(self->_tableInfo, a2, v2, v3);
  v11.size = v5;
  v6 = TSUCellRect::firstRow(&v11);
  v9 = objc_msgSend_indexSetWithIndex_(v4, v7, v6, v8);

  return v9;
}

- (id)indexesForLeadingColumns
{
  v4 = MEMORY[0x277CCAA78];
  v11.origin = objc_msgSend_bodyColumnRange(self->_tableInfo, a2, v2, v3);
  v11.size = v5;
  v6 = TSUCellRect::firstColumn(&v11);
  v9 = objc_msgSend_indexSetWithIndex_(v4, v7, v6, v8);

  return v9;
}

- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)row outAggregateIndex:(unint64_t *)index
{
  if (index)
  {
    *index = 0;
  }

  return objc_msgSend_groupLevelAtSummaryRow_(self, a2, row.var0, index);
}

- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)column outAggregateIndex:(unint64_t *)index
{
  if (index)
  {
    *index = 0;
  }

  return objc_msgSend_groupLevelAtSummaryColumn_(self, a2, column.var0, index);
}

- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)d
{
  v6 = objc_msgSend_viewMap(self, a2, *&d, v3);
  v10 = objc_msgSend_baseMap(self, v7, v8, v9);

  if (v6 != v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableTranslator hasCommentAtCellID:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1472, 0, "requires identity mapping from view to model space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_isCategorized(self, v11, v12, v13))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTTableTranslator hasCommentAtCellID:]", v24);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 1475, 0, "expecting this method to be overridden");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  }

  baseTableModel = self->_baseTableModel;

  return (MEMORY[0x2821F9670])(baseTableModel, sel_hasCommentAtBaseCellCoord_, d, v24);
}

- (BOOL)checkMapsAndAssert:(BOOL)assert
{
  v4 = objc_msgSend_baseMap(self, a2, assert, v3);
  isEmpty = objc_msgSend_isEmpty(v4, v5, v6, v7);

  return isEmpty ^ 1;
}

- (void)resetViewMap
{
  v5 = objc_msgSend_viewMap(self, a2, v2, v3);
  v9 = objc_msgSend_baseMap(self, v6, v7, v8);

  if (v5 != v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableTranslator resetViewMap]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1538, 0, "view and base must be the same while uncategorized.");

    v21 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v21, v18, v19, v20);
  }
}

@end