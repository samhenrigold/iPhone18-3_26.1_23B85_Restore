@interface TSTCellSelection
+ (id)selectionWithTableInfo:(id)info cellID:(TSUCellCoord)d;
+ (id)selectionWithTableInfo:(id)info cellRegion:(id)region;
+ (id)selectionWithTableInfo:(id)info cellUID:(const TSKUIDStructCoord *)d;
+ (id)selectionWithTableInfo:(id)info columnIndices:(id)indices;
+ (id)selectionWithTableInfo:(id)info rowIndices:(id)indices;
- (BOOL)areCellsInTheSameRegionInTable:(id)table;
- (BOOL)canEditWithCellSubselectionInTable:(id)table;
- (BOOL)canEditWithControlCellSubselectionInTable:(id)table;
- (BOOL)canEditWithStockCellSubselectionInTable:(id)table;
- (BOOL)containsBodyColumns;
- (BOOL)containsBodyRows;
- (BOOL)containsCell:(TSUCellCoord)cell;
- (BOOL)containsCellsInCategoryColumn;
- (BOOL)containsCellsInCategoryColumnsOrRows;
- (BOOL)containsCellsInCategoryGroupingColumn;
- (BOOL)containsCellsInLabelRow;
- (BOOL)containsCellsInSummaryOrLabelRows;
- (BOOL)containsCellsInSummaryRow;
- (BOOL)containsFooterRows;
- (BOOL)containsGroupValueCells;
- (BOOL)containsHeaderColumns;
- (BOOL)containsHeaderRows;
- (BOOL)containsOnlyCellsInCategoryColumn;
- (BOOL)containsOnlyCellsInSummaryAndLabelRows;
- (BOOL)containsOnlyCellsInSummaryRow;
- (BOOL)containsOnlyGroupValueCells;
- (BOOL)containsOnlySpecialCategoryCells;
- (BOOL)containsOnlySpecialCategoryOrPivotCells;
- (BOOL)containsOnlySpecialPivotCells;
- (BOOL)containsSelection:(id)selection;
- (BOOL)containsSingleCellOrMergeInTable:(id)table;
- (BOOL)getAggregateType:(unsigned __int8 *)type;
- (BOOL)intersectsPartialMergeRangeInTable:(id)table;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSelection:(id)selection;
- (BOOL)isValid;
- (BOOL)selectsSingleControlCellWithInteractionUIInTable:(id)table;
- (NSString)cellSelectionNameForContextAndActionMenus;
- (NSString)description;
- (TSKUIDStructCoord)anchorCellUID;
- (TSKUIDStructCoord)cursorCellUID;
- (TSTCellRegion)baseRegion;
- (TSTCellRegion)cellRegion;
- (TSTCellSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTCellSelection)initWithRdar39989167Archive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTCellSelection)initWithTableInfo:(id)info andCellRange:(TSUCellRect)range;
- (TSTCellSelection)initWithTableInfo:(id)info andPreviousSelection:(id)selection offsetBy:(TSUColumnRowOffset)by;
- (TSTCellSelection)initWithTableInfo:(id)info cellRange:(TSUCellRect)range type:(int64_t)type anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD;
- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region;
- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD;
- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD baseRegion:(id)baseRegion selectionType:(int64_t)type searchReferenceRange:(_NSRange)range beginImplicitEditing:(BOOL)self0;
- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD selectionType:(int64_t)type;
- (TSTCellSelection)initWithTableInfo:(id)info cellUIDRegion:(id)region anchorCellUID:(TSKUIDStructCoord *)d cursorCellUID:(TSKUIDStructCoord *)iD baseCellUIDRegion:(id)dRegion selectionType:(int64_t)type searchReferenceRange:(_NSRange)range beginImplicitEditing:(BOOL)self0;
- (TSTCellSelection)initWithTableInfo:(id)info columnIndices:(id)indices;
- (TSTCellSelection)initWithTableInfo:(id)info rowIndices:(id)indices;
- (TSTCellSelection)initWithTableInfo:(id)info rowOrColumn:(int64_t)column index:(unsigned int)index count:(unsigned int)count;
- (TSTCellSelection)initWithTableInfo:(id)info selectionType:(int64_t)type;
- (TSTCellSelection)initWithTableInfo:(id)info startingColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns;
- (TSTCellSelection)initWithTableInfo:(id)info startingRowIndex:(unsigned int)index numberOfRows:(unsigned int)rows;
- (TSTTableInfo)tableInfo;
- (TSUCellCoord)anchorCellID;
- (TSUCellCoord)cursorCellID;
- (TSUCellCoord)logicalCellIDInTable:(id)table;
- (_NSRange)firstRange;
- (_NSRange)searchReferenceRange;
- (id)briefDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForUpgradeWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD baseRegion:(id)baseRegion selectionType:(int64_t)type;
- (id)p_selectionRemovingHiddenColumnsInTableInfo:(id)info;
- (id)p_selectionRemovingHiddenRowsInTableInfo:(id)info;
- (id)selectionAdjustedForGeometryInTableInfo:(id)info;
- (id)selectionAdjustedForVisibilityInTableInfo:(id)info;
- (id)selectionAdjustedForVisibilityInTableInfo:(id)info alwaysCheckColumns:(BOOL)columns;
- (id)selectionByAddingCellRange:(TSUCellRect)range inTable:(id)table withAnchor:(TSUCellCoord)anchor cursor:(TSUCellCoord)cursor selectionType:(int64_t)type;
- (id)selectionByExtendingWithCellRange:(TSUCellRect)range inTable:(id)table selectionType:(int64_t)type cursorCell:(TSUCellCoord)cell;
- (id)selectionByRemovingCellRange:(TSUCellRect)range inTable:(id)table withAnchor:(TSUCellCoord)anchor cursor:(TSUCellCoord)cursor selectionType:(int64_t)type;
- (id)selectionExpandedToCoverCollapsedRows;
- (id)selectionToBeginImplicitEditingInTableInfo:(id)info;
- (unint64_t)cellCount;
- (unint64_t)sizeClass;
- (void)insert:(int64_t)insert atIndex:(unsigned int)index count:(unsigned int)count;
- (void)p_cacheBaseRegion:(id)region;
- (void)p_cacheCellRegion:(id)region;
- (void)remove:(int64_t)remove atIndex:(unsigned int)index count:(unsigned int)count;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setAnchorCellUID:(TSKUIDStructCoord *)d;
- (void)setCellRange:(TSUCellRect)range;
- (void)setCursorCellUID:(TSKUIDStructCoord *)d;
@end

@implementation TSTCellSelection

- (TSTCellSelection)initWithTableInfo:(id)info cellUIDRegion:(id)region anchorCellUID:(TSKUIDStructCoord *)d cursorCellUID:(TSKUIDStructCoord *)iD baseCellUIDRegion:(id)dRegion selectionType:(int64_t)type searchReferenceRange:(_NSRange)range beginImplicitEditing:(BOOL)self0
{
  infoCopy = info;
  regionCopy = region;
  dRegionCopy = dRegion;
  v26.receiver = self;
  v26.super_class = TSTCellSelection;
  v19 = [(TSTCellSelection *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_tableInfo, infoCopy);
    objc_storeStrong(&v20->_cellUIDRegion, region);
    row = d->_row;
    v20->_anchorCellUID._column = d->_column;
    v20->_anchorCellUID._row = row;
    v22 = iD->_row;
    v20->_cursorCellUID._column = iD->_column;
    v20->_cursorCellUID._row = v22;
    objc_storeStrong(&v20->_baseCellUIDRegion, dRegion);
    v20->_selectionType = type;
    v20->_searchReferenceRange = range;
    v20->_beginImplicitEditing = editing;
    cachedCellRegion = v20->_cachedCellRegion;
    v20->_cachedCellRegion = 0;

    v20->_cachedCellRegionVersionCounter = 0x7FFFFFFFFFFFFFFFLL;
    cachedBaseRegion = v20->_cachedBaseRegion;
    v20->_cachedBaseRegion = 0;

    v20->_cachedBaseRegionVersionCounter = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v20;
}

- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD baseRegion:(id)baseRegion selectionType:(int64_t)type searchReferenceRange:(_NSRange)range beginImplicitEditing:(BOOL)self0
{
  infoCopy = info;
  baseRegionCopy = baseRegion;
  v22 = objc_msgSend_cellUIDRegionFromCellRegion_(infoCopy, v18, region, v19);
  memset(v31, 0, sizeof(v31));
  if (infoCopy)
  {
    objc_msgSend_cellUIDForCellID_(infoCopy, v20, *&d, v21);
    v29 = 0u;
    v30 = 0u;
    objc_msgSend_cellUIDForCellID_(infoCopy, v23, *&iD, v24);
  }

  else
  {
    v29 = 0uLL;
    v30 = 0uLL;
  }

  v25 = objc_msgSend_cellUIDRegionFromCellRegion_(infoCopy, v20, baseRegionCopy, v21);
  v27 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(self, v26, infoCopy, v22, v31, &v29, v25, type, range.location, range.length, editing);

  return v27;
}

- (id)initForUpgradeWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD baseRegion:(id)baseRegion selectionType:(int64_t)type
{
  infoCopy = info;
  regionCopy = region;
  baseRegionCopy = baseRegion;
  v19 = objc_msgSend_baseTableModel(infoCopy, v16, v17, v18);
  v21 = objc_msgSend_cellUIDRegionFromRegion_inTableModel_(TSTCellUIDRegion, v20, regionCopy, v19);

  v56 = 0u;
  v57 = 0u;
  v25 = objc_msgSend_baseTableModel(infoCopy, v22, v23, v24);
  v29 = objc_msgSend_columnRowUIDMap(v25, v26, v27, v28);
  v32 = v29;
  if (v29)
  {
    objc_msgSend_cellUIDForCellID_(v29, v30, *&d, v31);
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v54 = 0u;
  v55 = 0u;
  v36 = objc_msgSend_baseTableModel(infoCopy, v33, v34, v35);
  v40 = objc_msgSend_columnRowUIDMap(v36, v37, v38, v39);
  v43 = v40;
  if (v40)
  {
    objc_msgSend_cellUIDForCellID_(v40, v41, *&iD, v42);
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v47 = objc_msgSend_baseTableModel(infoCopy, v44, v45, v46);
  v49 = objc_msgSend_cellUIDRegionFromRegion_inTableModel_(TSTCellUIDRegion, v48, baseRegionCopy, v47);

  v51 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(self, v50, infoCopy, v21, &v56, &v54, v49, type, 0, 0, 0);
  return v51;
}

- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD selectionType:(int64_t)type
{
  infoCopy = info;
  regionCopy = region;
  v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, 0, 0);
  v17 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v16, infoCopy, regionCopy, d, iD, v15, type);

  return v17;
}

- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD
{
  infoCopy = info;
  regionCopy = region;
  v13 = objc_msgSend_regionFromRange_(TSTCellRegion, v12, 0, 0);
  v15 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_(self, v14, infoCopy, regionCopy, d, iD, v13);

  return v15;
}

- (TSTCellSelection)initWithTableInfo:(id)info cellRange:(TSUCellRect)range type:(int64_t)type anchorCellID:(TSUCellCoord)d cursorCellID:(TSUCellCoord)iD
{
  size = range.size;
  origin = range.origin;
  infoCopy = info;
  v15 = infoCopy;
  if (infoCopy && (type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    origin = objc_msgSend_expandCellRangeToCoverMergedCells_(infoCopy, v14, origin, size);
    size = v14;
  }

  v16 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, origin, size);
  v18 = objc_msgSend_regionFromRange_(TSTCellRegion, v17, 0, 0);
  v20 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v19, v15, v16, d, iD, v18, type);

  return v20;
}

- (TSTCellSelection)initWithTableInfo:(id)info selectionType:(int64_t)type
{
  infoCopy = info;
  if (type == 3)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellSelection initWithTableInfo:selectionType:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 236, 0, "expected inequality between %{public}s and %{public}s", "selectionType", "kNoSelection");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_range(infoCopy, v6, v7, v8);
  v21 = v20;
  v22 = objc_msgSend_regionFromRange_(TSTCellRegion, v20, v19, v20);
  v24 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_selectionType_(self, v23, infoCopy, v22, v19, (v19 + (v21 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v19 + HIDWORD(v21) - 1), 3);

  return v24;
}

- (TSTCellSelection)initWithTableInfo:(id)info andCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  rangeCopy = range;
  infoCopy = info;
  v8 = TSUCellRect::bottomRight(&rangeCopy);
  v10 = objc_msgSend_initWithTableInfo_cellRange_type_anchorCellID_cursorCellID_(self, v9, infoCopy, origin, size, 0, origin, v8, *&rangeCopy.origin, *&rangeCopy.size);

  return v10;
}

- (TSTCellSelection)initWithTableInfo:(id)info startingRowIndex:(unsigned int)index numberOfRows:(unsigned int)rows
{
  infoCopy = info;
  v12 = objc_msgSend_numberOfColumns(infoCopy, v9, v10, v11);
  LODWORD(rowsCopy) = objc_msgSend_numberOfRows(infoCopy, v13, v14, v15) - index;
  if (rowsCopy >= rows)
  {
    rowsCopy = rows;
  }

  else
  {
    rowsCopy = rowsCopy;
  }

  v18 = objc_msgSend_initWithTableInfo_cellRange_type_anchorCellID_cursorCellID_(self, v16, infoCopy, index, v12 | (rowsCopy << 32), 1, index, (index + rowsCopy - 1) | ((v12 << 32) - 1) & 0xFFFF00000000);

  return v18;
}

- (TSTCellSelection)initWithTableInfo:(id)info startingColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns
{
  columnsCopy = columns;
  indexCopy = index;
  infoCopy = info;
  v12 = objc_msgSend_numberOfColumns(infoCopy, v9, v10, v11);
  v16 = objc_msgSend_numberOfRows(infoCopy, v13, v14, v15);
  if (columnsCopy >= v12 - indexCopy)
  {
    v18 = (v12 - indexCopy);
  }

  else
  {
    v18 = columnsCopy;
  }

  v19 = objc_msgSend_initWithTableInfo_cellRange_type_anchorCellID_cursorCellID_(self, v17, infoCopy, indexCopy << 32, v18 | (v16 << 32), 2, indexCopy << 32, (v16 - 1) | ((indexCopy << 32) + (v18 << 32) + 0xFFFF00000000) & 0xFFFF00000000);

  return v19;
}

- (TSTCellSelection)initWithTableInfo:(id)info rowOrColumn:(int64_t)column index:(unsigned int)index count:(unsigned int)count
{
  v6 = *&count;
  v7 = *&index;
  infoCopy = info;
  if (column == 2)
  {
    v13 = objc_msgSend_initWithTableInfo_startingColumnIndex_numberOfColumns_(self, v10, infoCopy, v7, v6);
  }

  else
  {
    if (column != 1)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCellSelection initWithTableInfo:rowOrColumn:index:count:]", v11);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 301, 0, "Invalid selection type used with rowOrColumn initializer.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
      selfCopy = 0;
      goto LABEL_7;
    }

    v13 = objc_msgSend_initWithTableInfo_startingRowIndex_numberOfRows_(self, v10, infoCopy, v7, v6);
  }

  self = v13;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (TSTCellSelection)initWithTableInfo:(id)info andPreviousSelection:(id)selection offsetBy:(TSUColumnRowOffset)by
{
  infoCopy = info;
  selectionCopy = selection;
  v13 = objc_msgSend_cellRegion(selectionCopy, v10, v11, v12);
  v16 = objc_msgSend_regionOffsetBy_(v13, v14, *&by, v15);
  v20 = objc_msgSend_anchorCellID(selectionCopy, v17, v18, v19);
  v24 = 0x7FFF7FFFFFFFLL;
  v25 = by.var0 + WORD2(v20) > 0x3E7 || (*&by >> 32) + v20 > 0xF423F;
  v26 = 0x7FFF7FFFFFFFLL;
  if (!v25)
  {
    v26 = TSUOffsetColumnRowCoordinate();
  }

  v27 = objc_msgSend_cursorCellID(selectionCopy, v21, v22, v23);
  if (by.var0 + WORD2(v27) <= 0x3E7 && (*&by >> 32) + v27 <= 0xF423F)
  {
    v24 = TSUOffsetColumnRowCoordinate();
  }

  v31 = objc_msgSend_baseRegion(selectionCopy, v28, v29, v30);
  v34 = objc_msgSend_regionOffsetBy_(v31, v32, *&by, v33);
  v38 = objc_msgSend_selectionType(selectionCopy, v35, v36, v37);
  v40 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v39, infoCopy, v16, v26, v24, v34, v38);

  return v40;
}

- (TSTCellSelection)initWithTableInfo:(id)info cellRegion:(id)region
{
  infoCopy = info;
  regionCopy = region;
  v11 = objc_msgSend_suitableAnchor(regionCopy, v8, v9, v10);
  v15 = objc_msgSend_suitableCursor(regionCopy, v12, v13, v14);
  v17 = objc_msgSend_regionFromRange_(TSTCellRegion, v16, 0, 0);
  v19 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(self, v18, infoCopy, regionCopy, v11, v15, v17, 0);

  return v19;
}

- (TSTCellSelection)initWithTableInfo:(id)info rowIndices:(id)indices
{
  infoCopy = info;
  indicesCopy = indices;
  v11 = objc_msgSend_range(infoCopy, v8, v9, v10);
  v13 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v12, indicesCopy, WORD2(v11), v12);
  v17 = objc_msgSend_suitableAnchor(v13, v14, v15, v16);
  v21 = objc_msgSend_numberOfColumns(infoCopy, v18, v19, v20);
  if (WORD2(v17) >= (v21 - 1))
  {
    v25 = v21 - 1;
  }

  else
  {
    v25 = WORD2(v17);
  }

  v26 = objc_msgSend_suitableCursor(v13, v22, v23, v24);
  v30 = objc_msgSend_numberOfColumns(infoCopy, v27, v28, v29);
  v32 = HIDWORD(v26);
  if (WORD2(v26) >= (v30 - 1))
  {
    LOWORD(v32) = v30 - 1;
  }

  v33 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_selectionType_(self, v31, infoCopy, v13, v17 & 0xFFFF0000FFFFFFFFLL | (v25 << 32), v26 & 0xFFFF0000FFFFFFFFLL | (v32 << 32), 1);

  return v33;
}

- (TSTCellSelection)initWithTableInfo:(id)info columnIndices:(id)indices
{
  infoCopy = info;
  indicesCopy = indices;
  v11 = objc_msgSend_range(infoCopy, v8, v9, v10);
  v13 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v12, indicesCopy, v11, v12 >> 32);
  v17 = objc_msgSend_suitableAnchor(v13, v14, v15, v16);
  v21 = objc_msgSend_numberOfColumns(infoCopy, v18, v19, v20);
  if (WORD2(v17) >= (v21 - 1))
  {
    v25 = v21 - 1;
  }

  else
  {
    v25 = WORD2(v17);
  }

  v26 = objc_msgSend_suitableCursor(v13, v22, v23, v24);
  v30 = objc_msgSend_numberOfColumns(infoCopy, v27, v28, v29);
  v32 = HIDWORD(v26);
  if (WORD2(v26) >= (v30 - 1))
  {
    LOWORD(v32) = v30 - 1;
  }

  v33 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_selectionType_(self, v31, infoCopy, v13, v17 & 0xFFFF0000FFFFFFFFLL | (v25 << 32), v26 & 0xFFFF0000FFFFFFFFLL | (v32 << 32), 2);

  return v33;
}

+ (id)selectionWithTableInfo:(id)info cellID:(TSUCellCoord)d
{
  infoCopy = info;
  v7 = [self alloc];
  v9 = objc_msgSend_initWithTableInfo_andCellID_(v7, v8, infoCopy, *&d);

  return v9;
}

+ (id)selectionWithTableInfo:(id)info cellUID:(const TSKUIDStructCoord *)d
{
  infoCopy = info;
  row = d->_row;
  v14[0] = d->_column;
  v14[1] = row;
  v9 = objc_msgSend_cellIDForCellUID_(infoCopy, v7, v14, v8);
  v10 = objc_opt_class();
  v12 = objc_msgSend_selectionWithTableInfo_cellID_(v10, v11, infoCopy, v9);

  return v12;
}

+ (id)selectionWithTableInfo:(id)info cellRegion:(id)region
{
  infoCopy = info;
  regionCopy = region;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithTableInfo_cellRegion_(v8, v9, infoCopy, regionCopy);

  return v10;
}

+ (id)selectionWithTableInfo:(id)info rowIndices:(id)indices
{
  infoCopy = info;
  indicesCopy = indices;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithTableInfo_rowIndices_(v8, v9, infoCopy, indicesCopy);

  return v10;
}

+ (id)selectionWithTableInfo:(id)info columnIndices:(id)indices
{
  infoCopy = info;
  indicesCopy = indices;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithTableInfo_columnIndices_(v8, v9, infoCopy, indicesCopy);

  return v10;
}

- (BOOL)isValid
{
  v4 = objc_msgSend_cellRegion(self, a2, v2, v3);
  CellID = objc_msgSend_firstCellID(v4, v5, v6, v7);
  v10 = CellID != 0x7FFFFFFF && (CellID & 0xFFFF00000000) != 0x7FFF00000000;

  return v10;
}

- (void)p_cacheCellRegion:(id)region
{
  objc_storeStrong(&self->_cachedCellRegion, region);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v7 = objc_msgSend_columnRowUIDMap(WeakRetained, v4, v5, v6);
  self->_cachedCellRegionVersionCounter = objc_msgSend_versionCounter(v7, v8, v9, v10);
}

- (TSTCellRegion)cellRegion
{
  if (self->_cellUIDRegion)
  {
    if (!self->_cachedCellRegion || (cachedCellRegionVersionCounter = self->_cachedCellRegionVersionCounter, v6 = objc_loadWeakRetained(&self->_tableInfo), objc_msgSend_columnRowUIDMap(v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_versionCounter(v10, v11, v12, v13), v10, v6, cachedCellRegionVersionCounter != v14))
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
      v18 = objc_msgSend_cellRegionFromCellUIDRegion_(WeakRetained, v16, self->_cellUIDRegion, v17);

      objc_msgSend_p_cacheCellRegion_(self, v19, v18, v20);
    }

    v21 = self->_cachedCellRegion;
  }

  else
  {
    v21 = objc_msgSend_invalidRegion(TSTCellRegion, a2, v2, v3);
  }

  return v21;
}

- (TSUCellCoord)anchorCellID
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  row = self->_anchorCellUID._row;
  v9[0] = self->_anchorCellUID._column;
  v9[1] = row;
  v7 = objc_msgSend_cellIDForCellUID_(WeakRetained, v5, v9, v6);

  return v7;
}

- (void)p_cacheBaseRegion:(id)region
{
  objc_storeStrong(&self->_cachedBaseRegion, region);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v7 = objc_msgSend_columnRowUIDMap(WeakRetained, v4, v5, v6);
  self->_cachedBaseRegionVersionCounter = objc_msgSend_versionCounter(v7, v8, v9, v10);
}

- (TSTCellRegion)baseRegion
{
  if (self->_baseCellUIDRegion)
  {
    if (!self->_cachedBaseRegion || (cachedBaseRegionVersionCounter = self->_cachedBaseRegionVersionCounter, v6 = objc_loadWeakRetained(&self->_tableInfo), objc_msgSend_columnRowUIDMap(v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_versionCounter(v10, v11, v12, v13), v10, v6, cachedBaseRegionVersionCounter != v14))
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
      v18 = objc_msgSend_cellRegionFromCellUIDRegion_(WeakRetained, v16, self->_baseCellUIDRegion, v17);

      objc_msgSend_p_cacheBaseRegion_(self, v19, v18, v20);
    }

    v21 = self->_cachedBaseRegion;
  }

  else
  {
    v21 = objc_msgSend_invalidRegion(TSTCellRegion, a2, v2, v3);
  }

  return v21;
}

- (TSUCellCoord)cursorCellID
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  row = self->_cursorCellUID._row;
  v9[0] = self->_cursorCellUID._column;
  v9[1] = row;
  v7 = objc_msgSend_cellIDForCellUID_(WeakRetained, v5, v9, v6);

  return v7;
}

- (unint64_t)cellCount
{
  v4 = objc_msgSend_cellRegion(self, a2, v2, v3);
  v8 = objc_msgSend_cellCount(v4, v5, v6, v7);

  return v8;
}

- (TSUCellCoord)logicalCellIDInTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_cellRegion(self, v5, v6, v7);
  if ((objc_msgSend_isRectangle(v8, v9, v10, v11) & 1) == 0)
  {

    goto LABEL_5;
  }

  v14 = objc_msgSend_containsSingleCellOrMergeInTable_(self, v12, tableCopy, v13);

  if ((v14 & 1) == 0)
  {
LABEL_5:
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTCellSelection logicalCellIDInTable:]", v17);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 436, 0, "Cannot provide a logical cell ID for a selection that is not rectangular or does not represent a single cell or merge");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    v25 = 0x7FFF7FFFFFFFLL;
    goto LABEL_6;
  }

  v18 = objc_msgSend_cellRegion(self, v15, v16, v17);
  CellID = objc_msgSend_firstCellID(v18, v19, v20, v21);
  v25 = objc_msgSend_mergeOriginForCellID_(tableCopy, v23, CellID, v24);

LABEL_6:
  return v25;
}

- (unint64_t)sizeClass
{
  v4 = objc_msgSend_cellRegion(self, a2, v2, v3);
  v8 = objc_msgSend_sizeClass(v4, v5, v6, v7);

  return v8;
}

- (TSTCellSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v11 = sub_22108EBB4(*(archive + 34), v7, v8, v9);
  v12 = *(archive + 4);
  if ((v12 & 0x10) != 0)
  {
    v15 = [TSTCellUIDRegion alloc];
    if (*(archive + 13))
    {
      v18 = objc_msgSend_initFromMessage_(v15, v16, *(archive + 13), v17);
    }

    else
    {
      v18 = objc_msgSend_initFromMessage_(v15, v16, &TST::_CellUIDRegionArchive_default_instance_, v17);
    }

    v13 = v18;
    v12 = *(archive + 4);
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 0x20) == 0)
    {
LABEL_3:
      v14 = 0;
      goto LABEL_12;
    }
  }

  v19 = [TSTCellUIDRegion alloc];
  if (*(archive + 14))
  {
    v22 = objc_msgSend_initFromMessage_(v19, v20, *(archive + 14), v21);
  }

  else
  {
    v22 = objc_msgSend_initFromMessage_(v19, v20, &TST::_CellUIDRegionArchive_default_instance_, v21);
  }

  v14 = v22;
  v12 = *(archive + 4);
LABEL_12:
  if ((v12 & 0x40) != 0)
  {
    v23 = *(archive + 15);
    v42 = 0u;
    v43 = 0u;
    sub_2211A8FE8(&v42, v23, v10);
    v47[0] = v42;
    v47[1] = v43;
    v12 = *(archive + 4);
  }

  if ((v12 & 0x80) != 0)
  {
    v24 = *(archive + 16);
    v42 = 0u;
    v43 = 0u;
    sub_2211A8FE8(&v42, v24, v10);
    v46[0] = v42;
    v46[1] = v43;
    v12 = *(archive + 4);
  }

  *&v42 = 0;
  *(&v42 + 1) = &v42;
  *&v43 = 0x3032000000;
  *(&v43 + 1) = sub_22108ECBC;
  v44 = sub_22108ECCC;
  v45 = 0;
  if ((v12 & 8) != 0)
  {
    v25 = *(archive + 12);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22108ECD4;
    v41[3] = &unk_27845DAB0;
    v41[4] = &v42;
    v26 = unarchiverCopy;
    v27 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v26, v28, v25, v27, 0, v41);
  }

  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = sub_22108ECE4;
  v38 = &unk_27845DAD8;
  selfCopy = self;
  v39 = selfCopy;
  v40 = &v42;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v30, &v35, v31);
  v33 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(selfCopy, v32, 0, v13, v47, v46, v14, v11, 0, 0, 0, v35, v36, v37, v38);

  _Block_object_dispose(&v42, 8);
  return v33;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = self->_selectionType - 1;
  if (v9 > 2)
  {
    v10 = 6;
  }

  else
  {
    v10 = dword_2217E01A8[v9];
  }

  v11 = *(archive + 4);
  *(archive + 4) = v11 | 0x100;
  *(archive + 34) = v10;
  cellUIDRegion = self->_cellUIDRegion;
  *(archive + 4) = v11 | 0x110;
  v13 = *(archive + 13);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v14);
    *(archive + 13) = v13;
  }

  objc_msgSend_saveToMessage_(cellUIDRegion, v6, v13, v7);
  baseCellUIDRegion = self->_baseCellUIDRegion;
  *(archive + 4) |= 0x20u;
  v18 = *(archive + 14);
  if (!v18)
  {
    v19 = *(archive + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v19);
    *(archive + 14) = v18;
  }

  objc_msgSend_saveToMessage_(baseCellUIDRegion, v15, v18, v16);
  *(archive + 4) |= 0x40u;
  v20 = *(archive + 15);
  if (!v20)
  {
    v21 = *(archive + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x223DA0330](v21);
    *(archive + 15) = v20;
  }

  TSKUIDStructCoord::saveToMessage(&self->_anchorCellUID, v20);
  *(archive + 4) |= 0x80u;
  v22 = *(archive + 16);
  if (!v22)
  {
    v23 = *(archive + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0330](v23);
    *(archive + 16) = v22;
  }

  TSKUIDStructCoord::saveToMessage(&self->_cursorCellUID, v22);
  v27 = objc_msgSend_tableInfo(self, v24, v25, v26);

  if (v27)
  {
    v32 = objc_msgSend_tableInfo(self, v28, v29, v30);
    *(archive + 4) |= 8u;
    v33 = *(archive + 12);
    if (!v33)
    {
      v34 = *(archive + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x223DA0390](v34);
      *(archive + 12) = v33;
    }

    objc_msgSend_setWeakReference_message_(archiverCopy, v31, v32, v33);
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v28, 10, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v35, 11, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v36, 12, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v37, 13, archive);
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v38, 9, archive);
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v65[3] = archive;
  v42 = objc_msgSend_cellRegion(self, v39, v40, v41);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_22108F110;
  v64[3] = &unk_27845DB00;
  v64[4] = v65;
  objc_msgSend_enumerateCellRangesUsingBlock_(v42, v43, v64, v44);

  v48 = objc_msgSend_baseRegion(self, v45, v46, v47);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_22108F1E0;
  v63[3] = &unk_27845DB00;
  v63[4] = v65;
  objc_msgSend_enumerateCellRangesUsingBlock_(v48, v49, v63, v50);

  v54 = objc_msgSend_anchorCellID(self, v51, v52, v53);
  *(archive + 4) |= 2u;
  v55 = *(archive + 10);
  if (!v55)
  {
    v56 = *(archive + 1);
    if (v56)
    {
      v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
    }

    v55 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v56);
    *(archive + 10) = v55;
  }

  sub_221123904(v54, v55);
  v60 = objc_msgSend_cursorCellID(self, v57, v58, v59);
  *(archive + 4) |= 4u;
  v61 = *(archive + 11);
  if (!v61)
  {
    v62 = *(archive + 1);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v62);
    *(archive + 11) = v61;
  }

  sub_221123904(v60, v61);
  _Block_object_dispose(v65, 8);
}

- (TSTCellSelection)initWithRdar39989167Archive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v11 = sub_22108EBB4(*(archive + 16), v7, v8, v9);
  v12 = *(archive + 4);
  if ((v12 & 2) != 0)
  {
    v15 = [TSTCellUIDRegion alloc];
    if (*(archive + 4))
    {
      v18 = objc_msgSend_initFromMessage_(v15, v16, *(archive + 4), v17);
    }

    else
    {
      v18 = objc_msgSend_initFromMessage_(v15, v16, &TST::_CellUIDRegionArchive_default_instance_, v17);
    }

    v13 = v18;
    v12 = *(archive + 4);
    if ((v12 & 4) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 4) == 0)
    {
LABEL_3:
      v14 = 0;
      goto LABEL_12;
    }
  }

  v19 = [TSTCellUIDRegion alloc];
  if (*(archive + 5))
  {
    v22 = objc_msgSend_initFromMessage_(v19, v20, *(archive + 5), v21);
  }

  else
  {
    v22 = objc_msgSend_initFromMessage_(v19, v20, &TST::_CellUIDRegionArchive_default_instance_, v21);
  }

  v14 = v22;
  v12 = *(archive + 4);
LABEL_12:
  if ((v12 & 8) != 0)
  {
    v23 = *(archive + 6);
    v42 = 0u;
    v43 = 0u;
    sub_2211A8FE8(&v42, v23, v10);
    v47[0] = v42;
    v47[1] = v43;
    v12 = *(archive + 4);
  }

  if ((v12 & 0x10) != 0)
  {
    v24 = *(archive + 7);
    v42 = 0u;
    v43 = 0u;
    sub_2211A8FE8(&v42, v24, v10);
    v46[0] = v42;
    v46[1] = v43;
    v12 = *(archive + 4);
  }

  *&v42 = 0;
  *(&v42 + 1) = &v42;
  *&v43 = 0x3032000000;
  *(&v43 + 1) = sub_22108ECBC;
  v44 = sub_22108ECCC;
  v45 = 0;
  if (v12)
  {
    v25 = *(archive + 3);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22108F5A8;
    v41[3] = &unk_27845DAB0;
    v41[4] = &v42;
    v26 = unarchiverCopy;
    v27 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v26, v28, v25, v27, 0, v41);
  }

  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = sub_22108F5B8;
  v38 = &unk_27845DAD8;
  selfCopy = self;
  v39 = selfCopy;
  v40 = &v42;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v30, &v35, v31);
  v33 = objc_msgSend_initWithTableInfo_cellUIDRegion_anchorCellUID_cursorCellUID_baseCellUIDRegion_selectionType_searchReferenceRange_beginImplicitEditing_(selfCopy, v32, 0, v13, v47, v46, v14, v11, 0, 0, 0, v35, v36, v37, v38);

  _Block_object_dispose(&v42, 8);
  return v33;
}

- (id)selectionByExtendingWithCellRange:(TSUCellRect)range inTable:(id)table selectionType:(int64_t)type cursorCell:(TSUCellCoord)cell
{
  size = range.size;
  origin = range.origin;
  tableCopy = table;
  if (origin == 0x7FFFFFFF || (origin & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(size) || !size)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellSelection selectionByExtendingWithCellRange:inTable:selectionType:cursorCell:]", v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 588, 0, "Can't extend a selection with an invalid cell range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_msgSend_cellRegion(self, v11, v12, v13);
  v28 = objc_msgSend_anchorCellID(self, v25, v26, v27);
  v31 = objc_msgSend_containsCellID_(v24, v29, v28, v30);

  objc_msgSend_baseRegion(self, v32, v33, v34);
  if (v31)
    v35 = {;
    objc_msgSend_regionByAddingRange_(v35, v36, origin, size);
  }

  else
    v35 = {;
    objc_msgSend_regionBySubtractingRange_(v35, v37, origin, size);
  }
  v38 = ;

  v39 = [TSTCellSelection alloc];
  v43 = objc_msgSend_anchorCellID(self, v40, v41, v42);
  v47 = objc_msgSend_baseRegion(self, v44, v45, v46);
  v49 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v39, v48, tableCopy, v38, v43, cell, v47, type);

  return v49;
}

- (id)selectionByAddingCellRange:(TSUCellRect)range inTable:(id)table withAnchor:(TSUCellCoord)anchor cursor:(TSUCellCoord)cursor selectionType:(int64_t)type
{
  size = range.size;
  origin = range.origin;
  tableCopy = table;
  if (origin == 0x7FFFFFFF || (origin & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(size) || !size)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellSelection selectionByAddingCellRange:inTable:withAnchor:cursor:selectionType:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 610, 0, "Can't extend a selection with an invalid cell range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v25 = objc_msgSend_cellRegion(self, v12, v13, v14);
  v27 = objc_msgSend_regionByAddingRange_(v25, v26, origin, size);

  v28 = [TSTCellSelection alloc];
  v32 = objc_msgSend_cellRegion(self, v29, v30, v31);
  v34 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v28, v33, tableCopy, v27, anchor, cursor, v32, type);

  return v34;
}

- (id)selectionByRemovingCellRange:(TSUCellRect)range inTable:(id)table withAnchor:(TSUCellCoord)anchor cursor:(TSUCellCoord)cursor selectionType:(int64_t)type
{
  size = range.size;
  origin = range.origin;
  tableCopy = table;
  if (origin == 0x7FFFFFFF || (origin & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(size) || !size)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellSelection selectionByRemovingCellRange:inTable:withAnchor:cursor:selectionType:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSelection.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 623, 0, "Can't remove an invalid cell range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v25 = objc_msgSend_cellRegion(self, v12, v13, v14);
  v27 = objc_msgSend_regionBySubtractingRange_(v25, v26, origin, size);

  v28 = [TSTCellSelection alloc];
  v32 = objc_msgSend_cellRegion(self, v29, v30, v31);
  v34 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_(v28, v33, tableCopy, v27, anchor, cursor, v32, type);

  return v34;
}

- (id)selectionAdjustedForVisibilityInTableInfo:(id)info
{
  v3 = objc_msgSend_selectionAdjustedForVisibilityInTableInfo_alwaysCheckColumns_(self, a2, info, 0);

  return v3;
}

- (id)selectionAdjustedForVisibilityInTableInfo:(id)info alwaysCheckColumns:(BOOL)columns
{
  infoCopy = info;
  if (objc_msgSend_cellCount(self, v7, v8, v9))
  {
    if (objc_msgSend_isValidForInteraction(infoCopy, v10, v11, v12))
    {
      selfCopy = self;
      if (objc_msgSend_selectionType(selfCopy, v14, v15, v16) == 2)
      {
        v20 = objc_msgSend_cellRegion(selfCopy, v17, v18, v19);
        v24 = objc_msgSend_intersectingColumnsIndexSet(v20, v21, v22, v23);
        v26 = objc_msgSend_selectionWithTableInfo_columnIndices_(TSTCellSelection, v25, infoCopy, v24);

        selfCopy2 = v26;
      }

      else
      {
        objc_msgSend_p_selectionRemovingHiddenRowsInTableInfo_(selfCopy, v17, infoCopy, v19);
        selfCopy2 = v20 = selfCopy;
      }

      if (columns || objc_msgSend_isAPivotTable(infoCopy, v28, v29, v30))
      {
        if (objc_msgSend_selectionType(selfCopy2, v28, v29, v30) == 1)
        {
          v34 = objc_msgSend_cellRegion(selfCopy2, v31, v32, v33);
          v38 = objc_msgSend_intersectingRowsIndexSet(v34, v35, v36, v37);
          v40 = objc_msgSend_selectionWithTableInfo_rowIndices_(TSTCellSelection, v39, infoCopy, v38);

          selfCopy2 = v40;
        }

        else
        {
          objc_msgSend_p_selectionRemovingHiddenColumnsInTableInfo_(selfCopy2, v31, infoCopy, v33);
          selfCopy2 = v34 = selfCopy2;
        }
      }
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)p_selectionRemovingHiddenRowsInTableInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v9 = objc_msgSend_cellRegion(selfCopy, v6, v7, v8);
  v13 = objc_msgSend_intersectingRowsIndexSet(v9, v10, v11, v12);
  v16 = objc_msgSend_indexesOfVisibleRowsInRowRange_(infoCopy, v14, v13, v15);
  v20 = objc_msgSend_count(v16, v17, v18, v19);
  if (v20 != objc_msgSend_count(v13, v21, v22, v23))
  {
    v26 = objc_msgSend_regionByTrimmingAroundRowIndices_(v9, v24, v16, v25);
    if (objc_msgSend_cellCount(v26, v27, v28, v29))
    {
      v33 = objc_msgSend_cellCount(v26, v30, v31, v32);
      if (v33 == objc_msgSend_cellCount(v9, v34, v35, v36))
      {
        goto LABEL_23;
      }

      if (!objc_msgSend_selectionType(selfCopy, v37, v38, v39))
      {
        v48 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v40, infoCopy, v26);
LABEL_22:

        selfCopy = v48;
        goto LABEL_23;
      }

      if (objc_msgSend_selectionType(selfCopy, v40, v41, v42) != 1)
      {
LABEL_23:

        goto LABEL_24;
      }

      v46 = objc_msgSend_intersectingRowsIndexSet(v26, v43, v44, v45);
      v48 = objc_msgSend_selectionWithTableInfo_rowIndices_(TSTCellSelection, v47, infoCopy, v46);
    }

    else
    {
      v98 = objc_msgSend_indexesForSummaryRows(infoCopy, v30, v31, v32);
      CellID = objc_msgSend_firstCellID(v9, v49, v50, v51);
      v99 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(infoCopy, v53, CellID, v54);
      if (objc_msgSend_count(v98, v55, v56, v57))
      {
        v61 = objc_msgSend_firstCellID(v9, v58, v59, v60);
        v64 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(infoCopy, v62, v61, v63);
        v67 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v98, v65, v13, v66);
        v70 = objc_msgSend_containsIndex_(v98, v68, v99, v69);
        v97 = v64;
        v73 = (v64 != 0x7FFFFFFF) & (v67 ^ v70) & (v67 ^ objc_msgSend_containsIndex_(v98, v71, v64, v72) ^ 1);
        v74 = v64;
        if (v64 != 0x7FFFFFFF && (v73 & 1) == 0)
        {
          v75 = objc_msgSend_indexesForGrandTotalRows(infoCopy, v58, v59, v60);
          v78 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v75, v76, v13, v77);
          v81 = objc_msgSend_containsIndex_(v75, v79, v99, v80);
          v73 = (v78 ^ objc_msgSend_containsIndex_(v75, v82, v97, v83) ^ 1) & (v78 ^ v81);
        }

        v87 = v99;
        if (v99 == 0x7FFFFFFF)
        {
          v88 = 1;
        }

        else
        {
          v88 = v73;
        }

        if (v88)
        {
          v87 = v74;
        }

        v99 = v87;
      }

      else if (v99 == 0x7FFFFFFF)
      {
        v84 = objc_msgSend_firstCellID(v9, v58, v59, v60);
        v99 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(infoCopy, v85, v84, v86);
      }

      v89 = objc_msgSend_intersectingColumnsIndexSet(v9, v58, v59, v60);
      v92 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v90, v99, v91);
      v94 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v93, v89, v92);

      v48 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v95, infoCopy, v94);
      v26 = v94;
      v46 = v98;
    }

    selfCopy = v46;
    goto LABEL_22;
  }

LABEL_24:

  return selfCopy;
}

- (id)p_selectionRemovingHiddenColumnsInTableInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v9 = objc_msgSend_cellRegion(selfCopy, v6, v7, v8);
  v13 = objc_msgSend_boundingCellRange(v9, v10, v11, v12);
  v116 = objc_msgSend_indexesOfVisibleColumnsInCellRange_(infoCopy, v14, v13, v14);

  v18 = objc_msgSend_cellRegion(selfCopy, v15, v16, v17);
  v21 = objc_msgSend_regionByTrimmingAroundColumnIndices_(v18, v19, v116, v20);

  if (objc_msgSend_cellCount(v21, v22, v23, v24))
  {
    v28 = objc_msgSend_cellCount(v21, v25, v26, v27);
    v32 = objc_msgSend_cellRegion(selfCopy, v29, v30, v31);
    v36 = objc_msgSend_cellCount(v32, v33, v34, v35);

    if (v28 == v36)
    {
      goto LABEL_18;
    }

    if (!objc_msgSend_selectionType(selfCopy, v37, v38, v39))
    {
      v48 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v40, infoCopy, v21);
      goto LABEL_17;
    }

    if (objc_msgSend_selectionType(selfCopy, v40, v41, v42) != 2)
    {
      goto LABEL_18;
    }

    v46 = objc_msgSend_intersectingColumnsIndexSet(v21, v43, v44, v45);
    v48 = objc_msgSend_selectionWithTableInfo_columnIndices_(TSTCellSelection, v47, infoCopy, v46);
  }

  else
  {
    v115 = objc_msgSend_indexesForSummaryColumns(infoCopy, v25, v26, v27);
    v52 = objc_msgSend_anchorCellID(selfCopy, v49, v50, v51);
    v55 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(infoCopy, v53, WORD2(v52), v54);
    if (objc_msgSend_count(v115, v56, v57, v58))
    {
      v62 = objc_msgSend_anchorCellID(selfCopy, v59, v60, v61);
      v114 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(infoCopy, v63, WORD2(v62), v64);
      v68 = objc_msgSend_cellRegion(selfCopy, v65, v66, v67);
      v72 = objc_msgSend_intersectingColumnsIndexSet(v68, v69, v70, v71);
      v75 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v115, v73, v72, v74);

      LOBYTE(v72) = objc_msgSend_containsIndex_(v115, v76, v55, v77);
      v81 = (((v114 == 0x7FFF) | v75 ^ objc_msgSend_containsIndex_(v115, v78, v114, v79)) ^ 1) & (v75 ^ v72);
      if (v114 != 0x7FFF && (v81 & 1) == 0)
      {
        v82 = objc_msgSend_indexesForGrandTotalColumns(infoCopy, v59, v80, v61);
        v86 = objc_msgSend_cellRegion(selfCopy, v83, v84, v85);
        v90 = objc_msgSend_intersectingColumnsIndexSet(v86, v87, v88, v89);
        v93 = objc_msgSend_tsu_intersectsIndexesInIndexSet_(v82, v91, v90, v92);

        LOBYTE(v86) = objc_msgSend_containsIndex_(v82, v94, v55, v95);
        v81 = (v93 ^ objc_msgSend_containsIndex_(v82, v96, v114, v97) ^ 1) & (v93 ^ v86);
      }

      if (v81 & 1 | (v55 == 0x7FFF))
      {
        LOWORD(v55) = v114;
      }
    }

    else if (v55 == 0x7FFF)
    {
      v98 = objc_msgSend_anchorCellID(selfCopy, v59, v60, v61);
      LOWORD(v55) = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(infoCopy, v99, WORD2(v98), v100);
    }

    v101 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v59, v55, v61);
    v105 = objc_msgSend_cellRegion(selfCopy, v102, v103, v104);
    v109 = objc_msgSend_intersectingRowsIndexSet(v105, v106, v107, v108);
    v111 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v110, v101, v109);

    v48 = objc_msgSend_selectionWithTableInfo_cellRegion_(TSTCellSelection, v112, infoCopy, v111);
    v21 = v111;
    v46 = v115;
  }

  selfCopy = v46;
LABEL_17:

  selfCopy = v48;
LABEL_18:

  return selfCopy;
}

- (id)selectionAdjustedForGeometryInTableInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v9 = selfCopy;
  selectionType = selfCopy->_selectionType;
  if (selectionType == 2)
  {
    v32 = objc_msgSend_cellRegion(selfCopy, v6, v7, v8);
    objc_msgSend_boundingCellRange(v32, v33, v34, v35);
    v37 = v36;
    objc_msgSend_range(infoCopy, v36, v38, v39);
    v41 = v40 ^ v37;

    if (!HIDWORD(v41))
    {
      goto LABEL_8;
    }

    v42 = objc_opt_class();
    v25 = objc_msgSend_cellRegion(v9, v43, v44, v45);
    v29 = objc_msgSend_intersectingColumnsIndexSet(v25, v46, v47, v48);
    v31 = objc_msgSend_selectionWithTableInfo_columnIndices_(v42, v49, infoCopy, v29);
    goto LABEL_7;
  }

  if (selectionType == 1)
  {
    v11 = objc_msgSend_cellRegion(selfCopy, v6, v7, v8);
    objc_msgSend_boundingCellRange(v11, v12, v13, v14);
    v16 = v15;
    objc_msgSend_range(infoCopy, v15, v17, v18);
    v20 = v19;

    if (v16 != v20)
    {
      v21 = objc_opt_class();
      v25 = objc_msgSend_cellRegion(v9, v22, v23, v24);
      v29 = objc_msgSend_intersectingRowsIndexSet(v25, v26, v27, v28);
      v31 = objc_msgSend_selectionWithTableInfo_rowIndices_(v21, v30, infoCopy, v29);
LABEL_7:
      v50 = v31;

      v9 = v50;
    }
  }

LABEL_8:

  return v9;
}

- (void)setCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_cellRegion(self, a2, *&range.origin, *&range.size);
  v8 = objc_msgSend_equalsCellRange_(v6, v7, origin, size);

  if ((v8 & 1) == 0)
  {
    v10 = objc_msgSend_regionFromRange_(TSTCellRegion, v9, origin, size);
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    v14 = objc_msgSend_cellUIDRegionFromCellRegion_(WeakRetained, v12, v10, v13);
    cellUIDRegion = self->_cellUIDRegion;
    self->_cellUIDRegion = v14;

    v16 = objc_loadWeakRetained(&self->_tableInfo);
    v19 = v16;
    if (v16)
    {
      objc_msgSend_cellUIDForCellID_(v16, v17, origin, v18);
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    self->_anchorCellUID._column = v26;
    self->_anchorCellUID._row = v27;

    v20 = objc_loadWeakRetained(&self->_tableInfo);
    v23 = v20;
    if (v20)
    {
      objc_msgSend_cellUIDForCellID_(v20, v21, (origin + (size << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (origin + HIDWORD(size) - 1), v22);
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    self->_cursorCellUID._column = v26;
    self->_cursorCellUID._row = v27;

    objc_msgSend_p_cacheCellRegion_(self, v24, v10, v25);
  }
}

- (id)selectionToBeginImplicitEditingInTableInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_cellRegion(self, v6, v7, v8);
  v13 = objc_msgSend_anchorCellID(self, v10, v11, v12);
  v17 = objc_msgSend_cursorCellID(self, v14, v15, v16);
  v21 = objc_msgSend_baseRegion(self, v18, v19, v20);
  v25 = 1;
  v23 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_searchReferenceRange_beginImplicitEditing_(v5, v22, infoCopy, v9, v13, v17, v21, self->_selectionType, self->_searchReferenceRange.location, self->_searchReferenceRange.length, v25);

  return v23;
}

- (id)selectionExpandedToCoverCollapsedRows
{
  if (self->_selectionType == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    isCategorized = objc_msgSend_isCategorized(WeakRetained, v4, v5, v6);

    if (isCategorized)
    {
      v11 = objc_msgSend_cellRegion(self, v8, v9, v10);
      v15 = objc_msgSend_intersectingRowsIndexSet(v11, v12, v13, v14);

      Index = objc_msgSend_lastIndex(v15, v16, v17, v18);
      v20 = objc_loadWeakRetained(&self->_tableInfo);
      isGroupingRowCollapsed = objc_msgSend_isGroupingRowCollapsed_(v20, v21, Index, v22);

      if (isGroupingRowCollapsed)
      {
        v24 = objc_loadWeakRetained(&self->_tableInfo);
        v27 = objc_msgSend_rowRangeUnderSummaryOrLabelRow_(v24, v25, Index, v26);
        v29 = v28;

        v33 = objc_msgSend_mutableCopy(v15, v30, v31, v32);
        v35 = v33;
        if (Index <= (v27 + v29))
        {
          v36 = v27 + v29;
        }

        else
        {
          v36 = Index;
        }

        if (Index >= (v27 + v29))
        {
          objc_msgSend_addIndexesInRange_(v33, v34, v27 + v29, v36 - (v27 + v29));
        }

        else
        {
          objc_msgSend_addIndexesInRange_(v33, v34, Index, v36 - Index);
        }

        v37 = objc_alloc(objc_opt_class());
        v38 = objc_loadWeakRetained(&self->_tableInfo);
        selfCopy = objc_msgSend_initWithTableInfo_rowIndices_(v37, v39, v38, v35);

        goto LABEL_13;
      }
    }
  }

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)insert:(int64_t)insert atIndex:(unsigned int)index count:(unsigned int)count
{
  v27 = objc_msgSend_cellRegion(self, a2, insert, *&index);
  v12 = objc_msgSend_boundingCellRange(v27, v9, v10, v11);
  v14 = v13;

  if (insert)
  {
    selectionType = self->_selectionType;
    if (selectionType)
    {
      if (selectionType == 1)
      {
        v14 = v14 & 0xFFFFFFFF00000000 | (v14 + count);
        goto LABEL_25;
      }

      if (selectionType != 2 || v14 < 2 || WORD2(v12) > index)
      {
        goto LABEL_25;
      }
    }

    else if (v14 < 2 || WORD2(v12) > index)
    {
      goto LABEL_25;
    }

    if (count + index <= WORD2(v12) + v14)
    {
      v14 = v14 & 0xFFFFFFFF00000000 | (v14 + count);
    }
  }

  else
  {
    v16 = self->_selectionType;
    if (v16)
    {
      if (v16 == 2)
      {
        v14 = v14 | ((HIDWORD(v14) + count) << 32);
        goto LABEL_25;
      }

      if (v16 != 1 || v14 >> 33 == 0 || v12 > index)
      {
        goto LABEL_25;
      }
    }

    else if (!(v14 >> 33) || v12 > index)
    {
      goto LABEL_25;
    }

    if (count + index <= HIDWORD(v14) + v12)
    {
      v14 = v14 | ((HIDWORD(v14) + count) << 32);
    }
  }

LABEL_25:
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v20 = objc_msgSend_regionFromRange_(TSTCellRegion, v19, v12, v14);
  v23 = objc_msgSend_cellUIDRegionFromCellRegion_(WeakRetained, v21, v20, v22);
  cellUIDRegion = self->_cellUIDRegion;
  self->_cellUIDRegion = v23;
}

- (void)remove:(int64_t)remove atIndex:(unsigned int)index count:(unsigned int)count
{
  v47 = objc_msgSend_cellRegion(self, a2, remove, *&index);
  v12 = objc_msgSend_boundingCellRange(v47, v9, v10, v11);
  v14 = v13;
  v15 = HIDWORD(v12);
  v16 = v12 & 0xFFFF000000000000;
  v17 = HIDWORD(v13);

  v18 = WORD2(v12);
  if (!remove)
  {
    v18 = v12;
  }

  if ((self->_selectionType - 3) >= 0xFFFFFFFFFFFFFFFELL && v18 <= index)
  {
    v20 = remove ? v14 : v17;
    if (count + index <= v18 + v20)
    {
      v40 = v20 - count;
      if (v40)
      {
        if (remove)
        {
          v14 = v40;
          v17 = v17;
        }

        else
        {
          v17 = v40;
        }

        goto LABEL_68;
      }

      if (v18)
      {
        if (remove)
        {
          LOWORD(v15) = WORD2(v12) - 1;
LABEL_65:
          v14 = 1;
          goto LABEL_68;
        }

        LODWORD(v12) = v12 - 1;
      }

      else if (remove)
      {
        goto LABEL_65;
      }

      v17 = 1;
      goto LABEL_68;
    }
  }

  if (v18 <= index)
  {
    if (remove)
    {
      v33 = v14;
    }

    else
    {
      v33 = v17;
    }

    v34 = v18 + v33;
    v35 = count + index;
    v36 = index - v34 + v33;
    if (remove)
    {
      v37 = v36;
    }

    else
    {
      v37 = v14;
    }

    if (remove)
    {
      v36 = v17;
    }

    v38 = v35 >= v34;
    if (v35 >= v34)
    {
      v39 = v37;
    }

    else
    {
      v39 = v14;
    }

    if (!v38)
    {
      v36 = v17;
    }

    if (index > v34)
    {
      v17 = v17;
    }

    else
    {
      v14 = v39;
      v17 = v36;
    }
  }

  else
  {
    v21 = count + index;
    if (remove)
    {
      v22 = v14;
    }

    else
    {
      v22 = v17;
    }

    v23 = v18 + v22;
    v24 = v21 - v18;
    v25 = v22 - (v21 - v18);
    v26 = WORD2(v12) - (v21 - v18);
    if (remove)
    {
      v27 = v25;
    }

    else
    {
      v27 = v14;
    }

    if (remove)
    {
      v25 = v17;
      v24 = 0;
    }

    else
    {
      v26 = WORD2(v12);
    }

    v28 = v12 - v24;
    v29 = v21 >= v18;
    if (v21 >= v18)
    {
      v30 = v27;
    }

    else
    {
      v30 = v14;
    }

    if (!v29)
    {
      v25 = v17;
      v28 = v12;
      v26 = WORD2(v12);
    }

    if (remove)
    {
      v31 = 0;
    }

    else
    {
      v31 = v14;
    }

    if (remove)
    {
      v32 = v17;
    }

    else
    {
      v32 = 0;
    }

    if (v21 > v23)
    {
      v14 = v31;
    }

    else
    {
      v14 = v30;
    }

    if (v21 > v23)
    {
      v17 = v32;
    }

    else
    {
      v17 = v25;
    }

    if (v21 <= v23)
    {
      LODWORD(v12) = v28;
      LOWORD(v15) = v26;
    }
  }

LABEL_68:
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v42 = objc_msgSend_regionFromRange_(TSTCellRegion, v41, v16 | v12 | (v15 << 32), v14 | (v17 << 32));
  v45 = objc_msgSend_cellUIDRegionFromCellRegion_(WeakRetained, v43, v42, v44);
  cellUIDRegion = self->_cellUIDRegion;
  self->_cellUIDRegion = v45;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v10 = objc_msgSend_cellRegion(self, v7, v8, v9);
  v13 = objc_msgSend_copyWithZone_(v10, v11, zone, v12);
  v17 = objc_msgSend_anchorCellID(self, v14, v15, v16);
  v21 = objc_msgSend_cursorCellID(self, v18, v19, v20);
  v25 = objc_msgSend_baseRegion(self, v22, v23, v24);
  v28 = objc_msgSend_copyWithZone_(v25, v26, zone, v27);
  beginImplicitEditing = self->_beginImplicitEditing;
  v30 = objc_msgSend_initWithTableInfo_cellRegion_anchorCellID_cursorCellID_baseRegion_selectionType_searchReferenceRange_beginImplicitEditing_(v5, v29, WeakRetained, v13, v17, v21, v28, self->_selectionType, self->_searchReferenceRange.location, self->_searchReferenceRange.length, beginImplicitEditing);

  return v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7))
  {
    isEqualToSelection = objc_msgSend_isEqualToSelection_(self, v8, equalCopy, v9);
  }

  else
  {
    isEqualToSelection = 0;
  }

  return isEqualToSelection;
}

- (BOOL)isEqualToSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy == self)
  {
    v22 = 1;
    goto LABEL_21;
  }

  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (!v5)
  {
    goto LABEL_18;
  }

  if (objc_msgSend_selectionType(v5, v6, v7, v8) != self->_selectionType)
  {
    goto LABEL_18;
  }

  objc_msgSend_anchorCellUID(v9, v10, v11, v12);
  if (v60 != self->_anchorCellUID._row._lower)
  {
    goto LABEL_18;
  }

  if (v61 != self->_anchorCellUID._row._upper)
  {
    goto LABEL_18;
  }

  if (v58 != self->_anchorCellUID._column._lower)
  {
    goto LABEL_18;
  }

  if (v59 != self->_anchorCellUID._column._upper)
  {
    goto LABEL_18;
  }

  objc_msgSend_cursorCellUID(v9, v13, v14, v15);
  if (v60 != self->_cursorCellUID._row._lower || v61 != self->_cursorCellUID._row._upper || v58 != self->_cursorCellUID._column._lower || v59 != self->_cursorCellUID._column._upper)
  {
    goto LABEL_18;
  }

  v22 = 0;
  if (objc_msgSend_searchReferenceRange(v9, v16, v17, v18) != self->_searchReferenceRange.location || v19 != self->_searchReferenceRange.length)
  {
    goto LABEL_19;
  }

  beginImplicitEditing = self->_beginImplicitEditing;
  if (beginImplicitEditing == objc_msgSend_beginImplicitEditing(v9, v19, v20, v21) && (objc_msgSend_cellUIDRegion(v9, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_cellCount(v27, v28, v29, v30), v35 = objc_msgSend_cellCount(self->_cellUIDRegion, v32, v33, v34), v27, v31 == v35) && (objc_msgSend_cellRegion(v9, v36, v37, v38), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellRegion(self, v40, v41, v42), v43 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend_equalsCellRegion_(v39, v44, v43, v45), v43, v39, (v46 & 1) != 0))
  {
    v50 = objc_msgSend_baseRegion(v9, v47, v48, v49);
    v54 = objc_msgSend_baseRegion(self, v51, v52, v53);
    v22 = objc_msgSend_equalsCellRegion_(v50, v55, v54, v56);
  }

  else
  {
LABEL_18:
    v22 = 0;
  }

LABEL_19:

LABEL_21:
  return v22;
}

- (BOOL)areCellsInTheSameRegionInTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_cellRegion(self, v5, v6, v7);
  v12 = objc_msgSend_boundingCellRange(v8, v9, v10, v11);
  v14 = v13;

  v17 = objc_msgSend_tableAreaForCellID_(tableCopy, v15, v12, v16);
  v20 = objc_msgSend_tableAreaForCellID_(tableCopy, v18, (v12 + (v14 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v12 + HIDWORD(v14) - 1), v19);
  v21 = v17 == 5 && v20 == 2 || v17 == 6 && v20 == 4 || v17 == v20;

  return v21;
}

- (BOOL)containsSelection:(id)selection
{
  selectionCopy = selection;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(selectionCopy, v6, v5, v7))
  {
    v8 = selectionCopy;
    v12 = objc_msgSend_cellRegion(self, v9, v10, v11);
    v16 = objc_msgSend_cellRegion(v8, v13, v14, v15);
    v19 = objc_msgSend_containsCellRegion_(v12, v17, v16, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)containsCell:(TSUCellCoord)cell
{
  cellCopy = cell;
  v5 = objc_msgSend_cellRegion(self, a2, *&cell, v3);
  LOBYTE(cellCopy.row) = objc_msgSend_containsCellID_(v5, v6, *&cellCopy, v7);

  return cellCopy.row;
}

- (BOOL)containsSingleCellOrMergeInTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_cellRegion(self, v5, v6, v7);
  if (objc_msgSend_isRectangle(v8, v9, v10, v11) && (v15 = objc_msgSend_boundingCellRange(v8, v12, v13, v14), objc_msgSend_isSingleCellOrMergeRange_(tableCopy, v16, v15, v16)))
  {
    v20 = objc_msgSend_boundingCellRange(v8, v17, v18, v19);
    v23 = objc_msgSend_hasMergeFragmentAtCellID_(tableCopy, v21, v20, v22) ^ 1;
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  return v23;
}

- (BOOL)selectsSingleControlCellWithInteractionUIInTable:(id)table
{
  tableCopy = table;
  if (objc_msgSend_canEditWithControlCellSubselectionInTable_(self, v5, tableCopy, v6))
  {
    v10 = objc_msgSend_cellRegion(self, v7, v8, v9);
    CellID = objc_msgSend_firstCellID(v10, v11, v12, v13);
    v17 = objc_msgSend_cellAtCellID_(tableCopy, v15, CellID, v16);

    if (v17 && objc_msgSend_hasControl(v17, v18, v19, v20))
    {
      v24 = objc_msgSend_interactionType(v17, v21, v22, v23);
      if (v24 >= 8)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0xB0u >> v24;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)containsHeaderColumns
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v10 = objc_msgSend_headerColumnRange(WeakRetained, v7, v8, v9);
  v12 = objc_msgSend_intersectsCellRange_(v5, v11, v10, v11);

  return v12;
}

- (BOOL)containsHeaderRows
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v10 = objc_msgSend_headerRowRange(WeakRetained, v7, v8, v9);
  v12 = objc_msgSend_intersectsCellRange_(v5, v11, v10, v11);

  return v12;
}

- (BOOL)containsBodyRows
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v10 = objc_msgSend_bodyRowRange(WeakRetained, v7, v8, v9);
  v12 = objc_msgSend_intersectsCellRange_(v5, v11, v10, v11);

  return v12;
}

- (BOOL)containsBodyColumns
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v10 = objc_msgSend_bodyColumnRange(WeakRetained, v7, v8, v9);
  v12 = objc_msgSend_intersectsCellRange_(v5, v11, v10, v11);

  return v12;
}

- (BOOL)containsFooterRows
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v10 = objc_msgSend_footerRowRange(WeakRetained, v7, v8, v9);
  v12 = objc_msgSend_intersectsCellRange_(v5, v11, v10, v11);

  return v12;
}

- (BOOL)containsCellsInCategoryColumn
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_cellRegion(self, v6, v7, v8);
  v12 = objc_msgSend_indexesForCategoryColumnsInRegion_(v5, v10, v9, v11);

  LOBYTE(v5) = objc_msgSend_count(v12, v13, v14, v15) != 0;
  return v5;
}

- (BOOL)containsCellsInSummaryRow
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_cellRegion(self, v6, v7, v8);
  v12 = objc_msgSend_indexesForSummaryRowsInRegion_(v5, v10, v9, v11);

  LOBYTE(v5) = objc_msgSend_count(v12, v13, v14, v15) != 0;
  return v5;
}

- (BOOL)containsCellsInLabelRow
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_cellRegion(self, v6, v7, v8);
  v12 = objc_msgSend_indexesForLabelRowsInRegion_(v5, v10, v9, v11);

  LOBYTE(v5) = objc_msgSend_count(v12, v13, v14, v15) != 0;
  return v5;
}

- (BOOL)containsCellsInSummaryOrLabelRows
{
  if (objc_msgSend_containsCellsInSummaryRow(self, a2, v2, v3))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_containsCellsInLabelRow, v5, v6);
}

- (BOOL)containsCellsInCategoryColumnsOrRows
{
  if (objc_msgSend_containsCellsInCategoryColumn(self, a2, v2, v3))
  {
    return 1;
  }

  return MEMORY[0x2821F9670](self, sel_containsCellsInSummaryOrLabelRows, v5, v6);
}

- (BOOL)containsCellsInCategoryGroupingColumn
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_cellRegion(self, v6, v7, v8);
  v12 = objc_msgSend_indexesForGroupingColumnsInRegion_(v5, v10, v9, v11);

  LOBYTE(v5) = objc_msgSend_count(v12, v13, v14, v15) != 0;
  return v5;
}

- (BOOL)containsGroupValueCells
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  if (objc_msgSend_isCategorized(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_cellRegion(self, v9, v10, v11);
    v15 = objc_msgSend_indexesForSummaryRowsInRegion_(v5, v13, v12, v14);
    v18 = objc_msgSend_indexesForCategoryColumnsInRegion_(v5, v16, v12, v17);
    v20 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v19, v18, v15);
    v23 = objc_msgSend_intersectsCellRegion_(v12, v21, v20, v22);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)containsOnlyCellsInCategoryColumn
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  if (objc_msgSend_isEmpty(v5, v6, v7, v8))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_tableInfo(self, v9, v10, v11);
    v16 = objc_msgSend_indexesForCategoryColumnsInRegion_(v13, v14, v5, v15);

    v20 = objc_msgSend_count(v16, v17, v18, v19);
    v24 = objc_msgSend_intersectingColumnsIndexSet(v5, v21, v22, v23);
    v12 = v20 == objc_msgSend_count(v24, v25, v26, v27);
  }

  return v12;
}

- (BOOL)containsOnlyCellsInSummaryRow
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  if (objc_msgSend_isEmpty(v5, v6, v7, v8))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_tableInfo(self, v9, v10, v11);
    v16 = objc_msgSend_indexesForSummaryRowsInRegion_(v13, v14, v5, v15);

    v20 = objc_msgSend_count(v16, v17, v18, v19);
    v24 = objc_msgSend_intersectingRowsIndexSet(v5, v21, v22, v23);
    v12 = v20 == objc_msgSend_count(v24, v25, v26, v27);
  }

  return v12;
}

- (BOOL)containsOnlyCellsInSummaryAndLabelRows
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  if (objc_msgSend_isEmpty(v5, v6, v7, v8))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_tableInfo(self, v9, v10, v11);
    v16 = objc_msgSend_indexesForSummaryAndLabelRowsInRegion_(v13, v14, v5, v15);

    v20 = objc_msgSend_count(v16, v17, v18, v19);
    v24 = objc_msgSend_intersectingRowsIndexSet(v5, v21, v22, v23);
    v12 = v20 == objc_msgSend_count(v24, v25, v26, v27);
  }

  return v12;
}

- (BOOL)containsOnlySpecialCategoryOrPivotCells
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  if (objc_msgSend_isEmpty(v5, v6, v7, v8))
  {
    v12 = 0;
  }

  else if (objc_msgSend_containsOnlySpecialCategoryCells(self, v9, v10, v11))
  {
    v12 = 1;
  }

  else
  {
    v12 = objc_msgSend_containsOnlySpecialPivotCells(self, v13, v14, v15);
  }

  return v12;
}

- (BOOL)containsOnlySpecialCategoryCells
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  if (objc_msgSend_isEmpty(v5, v6, v7, v8))
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  isCategorized = objc_msgSend_isCategorized(WeakRetained, v10, v11, v12);

  if (!isCategorized)
  {
    goto LABEL_9;
  }

  if (objc_msgSend_numberOfIntersectingColumns(v5, v14, v15, v16) != 1 || (v17 = objc_loadWeakRetained(&self->_tableInfo), v21 = objc_msgSend_categoryColumnIndex(v17, v18, v19, v20), v24 = objc_msgSend_intersectsColumn_(v5, v22, v21, v23), v17, (v24 & 1) == 0))
  {
    v26 = MEMORY[0x277CCAA78];
    v27 = objc_loadWeakRetained(&self->_tableInfo);
    v31 = objc_msgSend_categoryColumnIndex(v27, v28, v29, v30);
    v34 = objc_msgSend_indexSetWithIndex_(v26, v32, v31, v33);
    v37 = objc_msgSend_regionBySubtractingColumnIndexes_(v5, v35, v34, v36);

    v41 = objc_msgSend_intersectingRowsIndexSet(v37, v38, v39, v40);
    v42 = objc_loadWeakRetained(&self->_tableInfo);
    v46 = objc_msgSend_indexesForSummaryAndLabelRows(v42, v43, v44, v45);
    v49 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v41, v47, v46, v48);

    v53 = objc_msgSend_count(v49, v50, v51, v52);
    v57 = objc_msgSend_count(v41, v54, v55, v56);

    if (v53 == v57)
    {
      v25 = 1;
      v5 = v37;
      goto LABEL_10;
    }

    v5 = v37;
LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  v25 = 1;
LABEL_10:

  return v25;
}

- (BOOL)containsOnlySpecialPivotCells
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  if ((objc_msgSend_isEmpty(v5, v6, v7, v8) & 1) != 0 || (v9 = objc_loadWeakRetained(&self->_tableInfo), isAPivotTable = objc_msgSend_isAPivotTable(v9, v10, v11, v12), v9, !isAPivotTable))
  {
    v63 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
    v18 = objc_msgSend_layoutEngine(WeakRetained, v15, v16, v17);

    v22 = objc_msgSend_intersectingRowsIndexSet(v5, v19, v20, v21);
    v26 = objc_msgSend_visibleRowIndices(v18, v23, v24, v25);
    v29 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v22, v27, v26, v28);

    v33 = objc_msgSend_intersectingColumnsIndexSet(v5, v30, v31, v32);
    v37 = objc_msgSend_visibleColumnIndices(v18, v34, v35, v36);
    v40 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v33, v38, v37, v39);

    v41 = objc_loadWeakRetained(&self->_tableInfo);
    v45 = objc_msgSend_indexesForNonSummaryBodyRows(v41, v42, v43, v44);
    v48 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v29, v46, v45, v47);

    v49 = objc_loadWeakRetained(&self->_tableInfo);
    v53 = objc_msgSend_indexesForNonSummaryBodyColumns(v49, v50, v51, v52);
    v56 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v40, v54, v53, v55);

    v63 = !objc_msgSend_count(v48, v57, v58, v59) || !objc_msgSend_count(v56, v60, v61, v62);
  }

  return v63;
}

- (BOOL)containsOnlyGroupValueCells
{
  result = 0;
  if (objc_msgSend_containsOnlyCellsInSummaryRow(self, a2, v2, v3))
  {
    v8 = objc_msgSend_cellRegion(self, v5, v6, v7);
    v12 = objc_msgSend_tableInfo(self, v9, v10, v11);
    v15 = objc_msgSend_indexesForCategoryColumnsInRegion_(v12, v13, v8, v14);

    v19 = objc_msgSend_count(v15, v16, v17, v18);
    v23 = objc_msgSend_intersectingColumnsIndexSet(v8, v20, v21, v22);
    v27 = objc_msgSend_count(v23, v24, v25, v26);

    if (v19 == v27)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)canEditWithCellSubselectionInTable:(id)table
{
  tableCopy = table;
  if (self->_selectionType)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_containsSingleCellOrMergeInTable_(self, v4, tableCopy, v5);
  }

  return v7;
}

- (BOOL)canEditWithControlCellSubselectionInTable:(id)table
{
  tableCopy = table;
  if (objc_msgSend_canEditWithCellSubselectionInTable_(self, v5, tableCopy, v6))
  {
    v10 = objc_msgSend_cellRegion(self, v7, v8, v9);
    v14 = objc_msgSend_boundingTopLeftCellID(v10, v11, v12, v13);

    v17 = objc_msgSend_mergeRangeAtCellID_(tableCopy, v15, v14, v16);
    if (v18)
    {
      v21 = v18 >> 32 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = v14;
    }

    else
    {
      v22 = v17;
    }

    if ((v17 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v23 = v14;
    }

    else
    {
      v23 = v22;
    }

    if (v17 == 0x7FFFFFFF)
    {
      v24 = v14;
    }

    else
    {
      v24 = v23;
    }

    v25 = objc_msgSend_newCell(tableCopy, v18, v19, v20);
    v35 = !objc_msgSend_getCell_atCellID_(tableCopy, v26, v25, v24) && (objc_msgSend_hasControl(v25, v27, v28, v29) & 1) != 0 || (objc_msgSend_isCategoryColumn_(tableCopy, v27, WORD2(v24), v29) & 1) == 0 && objc_msgSend_isCategorized(tableCopy, v30, v31, v32) && (objc_msgSend_isSummaryRow_(tableCopy, v33, v24, v34) & 1) != 0;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (BOOL)canEditWithStockCellSubselectionInTable:(id)table
{
  tableCopy = table;
  if (objc_msgSend_canEditWithCellSubselectionInTable_(self, v5, tableCopy, v6))
  {
    v10 = objc_msgSend_cellRegion(self, v7, v8, v9);
    v14 = objc_msgSend_boundingTopLeftCellID(v10, v11, v12, v13);

    objc_msgSend_mergeRangeAtCellID_(tableCopy, v15, v14, v16);
  }

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v8 = NSStringFromClass(v4);
  selectionType = self->_selectionType;
  if (selectionType > 3)
  {
    v10 = @"<unknown>";
  }

  else
  {
    v10 = off_27845DB20[selectionType];
  }

  v11 = objc_msgSend_cellRegion(self, v5, v6, v7);
  v15 = objc_msgSend_description(v11, v12, v13, v14);
  v19 = objc_msgSend_baseRegion(self, v16, v17, v18);
  v23 = objc_msgSend_description(v19, v20, v21, v22);
  objc_msgSend_anchorCellID(self, v24, v25, v26);
  v27 = NSStringFromTSUCellCoord();
  objc_msgSend_cursorCellID(self, v28, v29, v30);
  v31 = NSStringFromTSUCellCoord();
  v34 = objc_msgSend_stringWithFormat_(v3, v32, @"<%@: %p type: %@ region: %@ base region: %@ anchor: %@ cursor: %@>", v33, v8, self, v10, v15, v23, v27, v31);

  return v34;
}

- (id)briefDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v8 = NSStringFromClass(v4);
  selectionType = self->_selectionType;
  if (selectionType > 3)
  {
    v10 = @"<unknown>";
  }

  else
  {
    v10 = off_27845DB20[selectionType];
  }

  objc_msgSend_anchorCellID(self, v5, v6, v7);
  v11 = NSStringFromTSUCellCoord();
  objc_msgSend_cursorCellID(self, v12, v13, v14);
  v15 = NSStringFromTSUCellCoord();
  v18 = objc_msgSend_stringWithFormat_(v3, v16, @"<%@: %p type: %@ anchor: %@ cursor: %@>", v17, v8, self, v10, v11, v15);

  return v18;
}

- (BOOL)intersectsPartialMergeRangeInTable:(id)table
{
  tableCopy = table;
  if ((self->_selectionType - 1) <= 1 && (objc_msgSend_cellRegion(self, v4, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_boundingCellRange(v8, v9, v10, v11), v14 = v13, v8, tableCopy))
  {
    objc_msgSend_mergeRangesIntersectingRange_(tableCopy, v15, v12, v14);
    v19 = v30;
    if (v30 == v31)
    {
      v28 = 0;
      if (!v30)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    do
    {
      v20 = objc_msgSend_cellRegion(self, v16, v17, v18);
      if (objc_msgSend_intersectsCellRange_(v20, v21, *v19, v19[1]))
      {
        v25 = objc_msgSend_cellRegion(self, v22, v23, v24);
        v27 = objc_msgSend_containsCellRange_(v25, v26, *v19, v19[1]);

        if ((v27 & 1) == 0)
        {
          v28 = 1;
          goto LABEL_13;
        }
      }

      else
      {
      }

      v19 += 2;
    }

    while (v19 != v31);
    v28 = 0;
LABEL_13:
    v19 = v30;
    if (v30)
    {
LABEL_14:
      operator delete(v19);
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_15:

  return v28;
}

- (BOOL)getAggregateType:(unsigned __int8 *)type
{
  if (objc_msgSend_cellCount(self, a2, type, v3) != 1 || !objc_msgSend_containsOnlyCellsInSummaryRow(self, v6, v7, v8) || (objc_msgSend_containsCellsInCategoryColumn(self, v9, v10, v11) & 1) != 0)
  {
    return 0;
  }

  column = self->_anchorCellUID._column;
  row = self->_anchorCellUID._row;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v17 = objc_msgSend_groupLevelForGroupUid_(WeakRetained, v15, &row, v16);

  v12 = type != 0;
  if (type)
  {
    v18 = objc_loadWeakRetained(&self->_tableInfo);
    *type = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v18, v19, column._lower, column._upper, v17);
  }

  return v12;
}

- (NSString)cellSelectionNameForContextAndActionMenus
{
  v5 = objc_msgSend_cellRegion(self, a2, v2, v3);
  v68.origin = objc_msgSend_boundingCellRange(v5, v6, v7, v8);
  v68.size = v9;

  v13 = objc_msgSend_selectionType(self, v10, v11, v12);
  if (v13 == 1)
  {
    TSUCellRect::setSpansAllColumns(&v68);
  }

  else if (v13 == 2)
  {
    TSUCellRect::setSpansAllRows(&v68);
  }

  v14 = TSUCellRectToTSCERangeCoordinate(*&v68.origin, *&v68.size);
  v16 = v15;
  v19 = objc_msgSend_tableInfo(self, v15, v17, v18);
  v67[0] = v14;
  v67[1] = v16;
  v67[2] = objc_msgSend_tableUID(v19, v20, v21, v22);
  v67[3] = v23;

  v27 = objc_msgSend_tableInfo(self, v24, v25, v26);
  v31 = objc_msgSend_translator(v27, v28, v29, v30);
  v34 = v31;
  if (v31)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v31, v32, v67, v33);
  }

  else
  {
    memset(v66, 0, sizeof(v66));
  }

  v35 = objc_opt_new();
  v39 = objc_msgSend_tableInfo(self, v36, v37, v38);
  v43 = objc_msgSend_tableUID(v39, v40, v41, v42);
  objc_msgSend_setHostTableUID_(v35, v44, v43, v44);

  objc_msgSend_setSuppressIdenticalEndReference_(v35, v45, 0, v46);
  objc_msgSend_setUseSymbolicNames_(v35, v47, 0, v48);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v35, v49, 0, v50);
  v54 = objc_msgSend_tableInfo(self, v51, v52, v53);
  v58 = objc_msgSend_calcEngine(v54, v55, v56, v57);
  v62 = objc_msgSend_namer(v58, v59, v60, v61);
  v64 = objc_msgSend_nameForChromeRangeRef_namingContext_(v62, v63, v66, v35);

  return v64;
}

- (_NSRange)firstRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)searchReferenceRange
{
  p_searchReferenceRange = &self->_searchReferenceRange;
  location = self->_searchReferenceRange.location;
  length = p_searchReferenceRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

- (TSKUIDStructCoord)anchorCellUID
{
  row = self[3]._row;
  retstr->_column = self[3]._column;
  retstr->_row = row;
  return self;
}

- (void)setAnchorCellUID:(TSKUIDStructCoord *)d
{
  row = d->_row;
  self->_anchorCellUID._column = d->_column;
  self->_anchorCellUID._row = row;
}

- (TSKUIDStructCoord)cursorCellUID
{
  row = self[4]._row;
  retstr->_column = self[4]._column;
  retstr->_row = row;
  return self;
}

- (void)setCursorCellUID:(TSKUIDStructCoord *)d
{
  row = d->_row;
  self->_cursorCellUID._column = d->_column;
  self->_cursorCellUID._row = row;
}

@end