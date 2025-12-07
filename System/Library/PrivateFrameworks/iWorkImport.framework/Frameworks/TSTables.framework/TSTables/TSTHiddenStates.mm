@interface TSTHiddenStates
+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action;
- (BOOL)hasActiveFilters;
- (BOOL)hasHiddenColumnsOrRows;
- (BOOL)hideBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action;
- (BOOL)hideBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)hideColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action;
- (BOOL)hideRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action;
- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension;
- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension;
- (BOOL)showBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action;
- (BOOL)showBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)showColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action;
- (BOOL)showRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action;
- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)column toColumn:(unsigned __int16)toColumn;
- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)row toRow:(unsigned int)toRow;
- (TSKUIDStruct)hiddenStateOwnerForColumnsUID;
- (TSKUIDStruct)hiddenStateOwnerForRowsUID;
- (TSTHiddenStates)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner;
- (TSTHiddenStates)initWithHiddenStatesOwner:(id)owner shouldRegister:(BOOL)register;
- (TSTHiddenStatesOwner)hiddenStatesOwner;
- (TSUModelColumnIndex)numberOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range;
- (TSUModelRowIndex)numberOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range;
- (TSUModelRowIndex)numberOfUserHiddenRowsInBaseCellRange:(TSUModelCellRect)range;
- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState;
- (id)collapseSummaryColumnGroupUIDs:(id)ds;
- (id)collapseSummaryRowGroupUIDs:(id)ds;
- (id)duplicateFilterSetInUidFormWithTable:(id)table;
- (id)expandSummaryColumnGroupUIDs:(id)ds;
- (id)expandSummaryRowGroupUIDs:(id)ds;
- (id)indexesOfCollapsedColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfCollapsedRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfFilteredColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfFilteredRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range;
- (id)indexesOfHiddenColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range;
- (id)indexesOfHiddenRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfUserHiddenColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfUserHiddenRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfUserVisibleRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfVisibleColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfVisibleColumnsInCellRegion:(id)region;
- (id)indexesOfVisibleColumnsInColumnRange:(id)range;
- (id)indexesOfVisibleRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfVisibleRowsInCellRegion:(id)region;
- (id)indexesOfVisibleRowsInRowRange:(id)range;
- (id)translator;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index;
- (unsigned)numberOfHiddenColumnsInCellRange:(TSUCellRect)range;
- (unsigned)numberOfHiddenRowsInCellRange:(TSUCellRect)range;
- (unsigned)numberOfUserHiddenRowsInCellRange:(TSUCellRect)range;
- (void)clearAllFiltered;
- (void)clearAllPivotHiddenAndInvalidate:(BOOL)invalidate;
- (void)copyFromHiddenStates:(id)states forRange:(TSUCellRect)range withContext:(id)context isWholeTableCopy:(BOOL)copy;
- (void)deleteColumnsFromBaseRange:(_NSRange)range columnUids:(const void *)uids;
- (void)deleteRowsFromBaseRange:(_NSRange)range rowUids:(const void *)uids;
- (void)dirtyFilterState;
- (void)dirtyFilterStateForHeaders;
- (void)enableFilterSet:(BOOL)set;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)filterSetUpdated;
- (void)hideColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)hideRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)insertNewColumnsInBaseRange:(_NSRange)range;
- (void)insertNewRowsInBaseRange:(_NSRange)range;
- (void)invalidateAllCollapsed;
- (void)invalidateViewGeometry;
- (void)loadIndexesFromTable:(id)table;
- (void)moveBaseColumnRange:(_NSRange)range toColumnIndex:(TSUModelColumnIndex)index;
- (void)moveBaseRowRange:(_NSRange)range toRowIndex:(TSUModelRowIndex)index;
- (void)moveViewColumnRange:(_NSRange)range toColumnIndex:(TSUViewColumnIndex)index;
- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)setColumnGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed;
- (void)setFilterSetForRows:(id)rows;
- (void)setFilterSetType:(int)type;
- (void)setFormulaOwnerUIDsWithMap:(id)map;
- (void)setHiddenStateOwnerForColumnsUID:(TSKUIDStruct)d;
- (void)setHiddenStateOwnerForRowsUID:(TSKUIDStruct)d;
- (void)setRowGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed;
- (void)setTableModel:(id)model;
- (void)showColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)showRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)swapBaseRowAtIndex:(TSUModelRowIndex)index withRowAtIndex:(TSUModelRowIndex)atIndex;
- (void)syncUpHiddenStateFormulaOwnerUIDs;
- (void)unregisterFromCalcEngine;
- (void)willChangeGroupByTo:(id)to;
@end

@implementation TSTHiddenStates

+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  intersectingCopy = intersecting;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_221346628;
  v18 = sub_221346638;
  v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221346640;
  v13[3] = &unk_278462AA8;
  v13[4] = &v14;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(intersectingCopy, v10, location, length, 0, v13);
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (TSTHiddenStates)initWithHiddenStatesOwner:(id)owner shouldRegister:(BOOL)register
{
  registerCopy = register;
  ownerCopy = owner;
  v23.receiver = self;
  v23.super_class = TSTHiddenStates;
  v7 = [(TSTHiddenStates *)&v23 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_hiddenStatesOwner, ownerCopy);
    v9 = [TSTHiddenStateExtent alloc];
    v11 = objc_msgSend_initWithHiddenStatesOwner_forRows_(v9, v10, ownerCopy, 1);
    rowHiddenStateExtent = v8->_rowHiddenStateExtent;
    v8->_rowHiddenStateExtent = v11;

    v13 = [TSTHiddenStateExtent alloc];
    v15 = objc_msgSend_initWithHiddenStatesOwner_forRows_(v13, v14, ownerCopy, 0);
    columnHiddenStateExtent = v8->_columnHiddenStateExtent;
    v8->_columnHiddenStateExtent = v15;

    if (registerCopy)
    {
      v22[0] = objc_msgSend_baseTableUID(ownerCopy, v17, v18, v19);
      v22[1] = v20;
      objc_msgSend_registerHiddenStates_baseOwnerUID_(ownerCopy, v20, v8, v22);
    }
  }

  return v8;
}

- (id)translator
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v6 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5);

  if (objc_msgSend_isAPivotDataModel(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_identityTranslator(v6, v10, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_tableInfo(v6, v10, v11, v12);
    v13 = objc_msgSend_translator(v14, v15, v16, v17);
  }

  return v13;
}

- (void)loadIndexesFromTable:(id)table
{
  tableCopy = table;
  if (tableCopy)
  {
    v8 = tableCopy;
    objc_msgSend_loadIndexesFromTable_(self->_rowHiddenStateExtent, tableCopy, tableCopy, v5);
    objc_msgSend_loadIndexesFromTable_(self->_columnHiddenStateExtent, v6, v8, v7);
    self->_loadedIndexesAfterUnarchive = 1;
    tableCopy = v8;
  }
}

- (TSTHiddenStates)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  shouldRegister = objc_msgSend_initWithHiddenStatesOwner_shouldRegister_(self, v10, ownerCopy, 0);
  if (shouldRegister)
  {
    v12 = [TSTHiddenStateExtent alloc];
    if (*(archive + 4))
    {
      v14 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v12, v13, *(archive + 4), unarchiverCopy, ownerCopy);
    }

    else
    {
      v14 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v12, v13, &TST::_HiddenStateExtentArchive_default_instance_, unarchiverCopy, ownerCopy);
    }

    columnHiddenStateExtent = shouldRegister->_columnHiddenStateExtent;
    shouldRegister->_columnHiddenStateExtent = v14;

    v16 = [TSTHiddenStateExtent alloc];
    if (*(archive + 5))
    {
      v18 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v16, v17, *(archive + 5), unarchiverCopy, ownerCopy);
    }

    else
    {
      v18 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v16, v17, &TST::_HiddenStateExtentArchive_default_instance_, unarchiverCopy, ownerCopy);
    }

    rowHiddenStateExtent = shouldRegister->_rowHiddenStateExtent;
    shouldRegister->_rowHiddenStateExtent = v18;

    v20 = objc_storeWeak(&shouldRegister->_hiddenStatesOwner, ownerCopy);
    v26[0] = objc_msgSend_baseTableUID(ownerCopy, v21, v22, v23);
    v26[1] = v24;
    objc_msgSend_registerHiddenStates_baseOwnerUID_(ownerCopy, v24, shouldRegister, v26);
  }

  return shouldRegister;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v21._lower = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, v7, v8, v9);
  v21._upper = v10;
  *(archive + 4) |= 1u;
  v11 = *(archive + 3);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x223DA0360](v12);
    *(archive + 3) = v11;
  }

  TSKUIDStruct::saveToMessage(&v21, v11);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  *(archive + 4) |= 2u;
  v15 = *(archive + 4);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v16);
    *(archive + 4) = v15;
  }

  objc_msgSend_encodeToArchive_archiver_(columnHiddenStateExtent, v13, v15, archiverCopy, v21._lower, v21._upper);
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  *(archive + 4) |= 4u;
  v19 = *(archive + 5);
  if (!v19)
  {
    v20 = *(archive + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v20);
    *(archive + 5) = v19;
  }

  objc_msgSend_encodeToArchive_archiver_(rowHiddenStateExtent, v17, v19, archiverCopy);
}

- (BOOL)hideRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return objc_msgSend_hideAtViewIndex_forAction_(rowHiddenStateExtent, v15, index, actionCopy);
}

- (BOOL)showRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return objc_msgSend_showAtViewIndex_forAction_(rowHiddenStateExtent, v15, index, actionCopy);
}

- (BOOL)hideColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  indexCopy = index;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_hideAtViewIndex_forAction_(columnHiddenStateExtent, v15, indexCopy, actionCopy);
}

- (BOOL)showColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  indexCopy = index;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_showAtViewIndex_forAction_(columnHiddenStateExtent, v15, indexCopy, actionCopy);
}

- (void)hideRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v15 = objc_msgSend_tableModel(WeakRetained, v12, v13, v14);
    objc_msgSend_willModify(v15, v16, v17, v18);

    objc_msgSend_hideAtViewIndexes_forAction_(self->_rowHiddenStateExtent, v19, indexesCopy, actionCopy);
    if (invalidateCopy)
    {
      v20 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v24 = objc_msgSend_tableModel(v20, v21, v22, v23);
      v28 = objc_msgSend_tableInfo(v24, v25, v26, v27);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v29, indexesCopy, 1, v28);
    }
  }
}

- (void)showRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v15 = objc_msgSend_tableModel(WeakRetained, v12, v13, v14);
    objc_msgSend_willModify(v15, v16, v17, v18);

    objc_msgSend_showAtViewIndexes_forAction_(self->_rowHiddenStateExtent, v19, indexesCopy, actionCopy);
    if (invalidateCopy)
    {
      v20 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v24 = objc_msgSend_tableModel(v20, v21, v22, v23);
      v28 = objc_msgSend_tableInfo(v24, v25, v26, v27);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v29, indexesCopy, 1, v28);
    }
  }
}

- (void)hideColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v15 = objc_msgSend_tableModel(WeakRetained, v12, v13, v14);
    objc_msgSend_willModify(v15, v16, v17, v18);

    objc_msgSend_hideAtViewIndexes_forAction_(self->_columnHiddenStateExtent, v19, indexesCopy, actionCopy);
    if (invalidateCopy)
    {
      v20 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v24 = objc_msgSend_tableModel(v20, v21, v22, v23);
      v28 = objc_msgSend_tableInfo(v24, v25, v26, v27);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v29, indexesCopy, 0, v28);
    }
  }
}

- (void)showColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v15 = objc_msgSend_tableModel(WeakRetained, v12, v13, v14);
    objc_msgSend_willModify(v15, v16, v17, v18);

    objc_msgSend_showAtViewIndexes_forAction_(self->_columnHiddenStateExtent, v19, indexesCopy, actionCopy);
    if (invalidateCopy)
    {
      v20 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v24 = objc_msgSend_tableModel(v20, v21, v22, v23);
      v28 = objc_msgSend_tableInfo(v24, v25, v26, v27);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v29, indexesCopy, 0, v28);
    }
  }
}

- (BOOL)hideBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return MEMORY[0x2821F9670](rowHiddenStateExtent, sel_hideAtBaseIndex_forAction_, index._row, actionCopy);
}

- (BOOL)showBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return MEMORY[0x2821F9670](rowHiddenStateExtent, sel_showAtBaseIndex_forAction_, index._row, actionCopy);
}

- (BOOL)hideBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return MEMORY[0x2821F9670](columnHiddenStateExtent, sel_hideAtBaseIndex_forAction_, index._column, actionCopy);
}

- (BOOL)showBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return MEMORY[0x2821F9670](columnHiddenStateExtent, sel_showAtBaseIndex_forAction_, index._column, actionCopy);
}

- (void)clearAllPivotHiddenAndInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v8 = objc_msgSend_tableModel(WeakRetained, v5, v6, v7);
  objc_msgSend_willModify(v8, v9, v10, v11);

  v52 = objc_msgSend_mutablePivotHiddenIndexes(self->_rowHiddenStateExtent, v12, v13, v14);
  v18 = objc_msgSend_mutablePivotHiddenIndexes(self->_columnHiddenStateExtent, v15, v16, v17);
  objc_msgSend_clearAllPivotHidden(self->_rowHiddenStateExtent, v19, v20, v21);
  objc_msgSend_clearAllPivotHidden(self->_columnHiddenStateExtent, v22, v23, v24);
  if (invalidateCopy)
  {
    if (objc_msgSend_count(v52, v25, v26, v27))
    {
      v31 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v35 = objc_msgSend_tableModel(v31, v32, v33, v34);
      v39 = objc_msgSend_tableInfo(v35, v36, v37, v38);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v40, v52, 1, v39);
    }

    if (objc_msgSend_count(v18, v28, v29, v30))
    {
      v41 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v45 = objc_msgSend_tableModel(v41, v42, v43, v44);
      v49 = objc_msgSend_tableInfo(v45, v46, v47, v48);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v50, v18, 0, v49);
    }
  }
}

- (void)clearAllFiltered
{
  v73 = objc_msgSend_mutableFilteredIndexes(self->_rowHiddenStateExtent, a2, v2, v3);
  v8 = objc_msgSend_mutableFilteredIndexes(self->_columnHiddenStateExtent, v5, v6, v7);
  if (objc_msgSend_count(v73, v9, v10, v11) || objc_msgSend_count(v8, v12, v13, v14))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v19 = objc_msgSend_tableModel(WeakRetained, v16, v17, v18);
    objc_msgSend_willModify(v19, v20, v21, v22);

    objc_msgSend_clearAllFiltered(self->_rowHiddenStateExtent, v23, v24, v25);
    objc_msgSend_clearAllFiltered(self->_columnHiddenStateExtent, v26, v27, v28);
    if (objc_msgSend_count(v73, v29, v30, v31))
    {
      v35 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v39 = objc_msgSend_tableModel(v35, v36, v37, v38);
      v43 = objc_msgSend_tableInfo(v39, v40, v41, v42);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v44, v73, 1, v43);
    }

    if (objc_msgSend_count(v8, v32, v33, v34))
    {
      v45 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v49 = objc_msgSend_tableModel(v45, v46, v47, v48);
      v53 = objc_msgSend_tableInfo(v49, v50, v51, v52);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v54, v8, 0, v53);
    }

    v55 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v59 = objc_msgSend_tableModel(v55, v56, v57, v58);
    v63 = objc_msgSend_tableInfo(v59, v60, v61, v62);

    if (objc_msgSend_isAPivotTable(v63, v64, v65, v66))
    {
      v70 = objc_msgSend_pivotOwner(v63, v67, v68, v69);
      objc_msgSend_filteringChanged_forDimension_(v70, v71, v73, 0);
      objc_msgSend_filteringChanged_forDimension_(v70, v72, v8, 1);
    }
  }
}

- (void)invalidateAllCollapsed
{
  objc_msgSend_invalidateAllCollapsed(self->_rowHiddenStateExtent, a2, v2, v3);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_invalidateAllCollapsed(columnHiddenStateExtent, v5, v6, v7);
}

- (void)invalidateViewGeometry
{
  objc_msgSend_invalidateViewGeometry(self->_rowHiddenStateExtent, a2, v2, v3);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_invalidateViewGeometry(columnHiddenStateExtent, v5, v6, v7);
}

- (id)indexesOfHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v6 = objc_msgSend_indexesOfHiddenInRange_(rowHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfUserHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v6 = objc_msgSend_indexesOfUserHiddenInRange_(rowHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfFilteredRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v6 = objc_msgSend_indexesOfFilteredInRange_(rowHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfFilteredColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v6 = objc_msgSend_indexesOfFilteredInRange_(columnHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfVisibleRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v6 = objc_msgSend_indexesOfVisibleInRange_(rowHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfVisibleRowsInCellRegion:(id)region
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_221346628;
  v11 = sub_221346638;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221347C5C;
  v6[3] = &unk_27845F7B0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_enumerateRowRangesUsingBlock_(region, a2, v6, v3);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)indexesOfUserVisibleRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v6 = objc_msgSend_indexesOfUserVisibleInRange_(rowHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfVisibleRowsInRowRange:(id)range
{
  v4 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self->_rowHiddenStateExtent, a2, range, v3);

  return v4;
}

- (id)indexesOfCollapsedRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v6 = objc_msgSend_indexesOfCollapsedInRange_(rowHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfCollapsedColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v6 = objc_msgSend_indexesOfCollapsedInRange_(columnHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (unsigned)numberOfHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_numberOfHiddenInRange_(rowHiddenStateExtent, v5, v4, v5);
}

- (unsigned)numberOfUserHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_numberOfUserHiddenInRange_(rowHiddenStateExtent, v5, v4, v5);
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_(rowHiddenStateExtent, v5, v4, v5);
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action
{
  actionCopy = action;
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v6 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_forAction_(rowHiddenStateExtent, v7, v6, v7, actionCopy);
}

- (id)indexesOfHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v6 = objc_msgSend_indexesOfHiddenInRange_(columnHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfUserHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v6 = objc_msgSend_indexesOfUserHiddenInRange_(columnHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfVisibleColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v6 = objc_msgSend_indexesOfVisibleInRange_(columnHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (id)indexesOfVisibleColumnsInCellRegion:(id)region
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_221346628;
  v11 = sub_221346638;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2213481C8;
  v6[3] = &unk_27845F7B0;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_enumerateColumnRangesUsingBlock_(region, a2, v6, v3);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)indexesOfVisibleColumnsInColumnRange:(id)range
{
  v4 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self->_columnHiddenStateExtent, a2, range, v3);

  return v4;
}

- (unsigned)numberOfHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  return objc_msgSend_numberOfHiddenInRange_(columnHiddenStateExtent, v5, v4, v5);
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_(columnHiddenStateExtent, v5, v4, v5);
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action
{
  actionCopy = action;
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v6 = TSUCellRect::columns(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_forAction_(columnHiddenStateExtent, v7, v6, v7, actionCopy);
}

- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_indexOfVisibleBeforeIndex_(self->_columnHiddenStateExtent, a2, index, v3);
  if (v4 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_indexOfVisibleBeforeAndIncludingIndex_(self->_columnHiddenStateExtent, a2, index, v3);
  if (v4 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_indexOfVisibleAfterIndex_(self->_columnHiddenStateExtent, a2, index, v3);
  if (v4 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_indexOfVisibleAfterAndIncludingIndex_(self->_columnHiddenStateExtent, a2, index, v3);
  if (v4 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (TSUModelColumnIndex)numberOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&var0);
  return objc_msgSend_numberOfHiddenInBaseRange_(columnHiddenStateExtent, v5, v4, v5);
}

- (id)indexesOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&var0);
  v6 = objc_msgSend_indexesOfHiddenInBaseRange_(columnHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (TSUModelRowIndex)numberOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  return objc_msgSend_numberOfHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5);
}

- (TSUModelRowIndex)numberOfUserHiddenRowsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  return objc_msgSend_numberOfUserHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5);
}

- (id)indexesOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  v6 = objc_msgSend_indexesOfHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5);

  return v6;
}

- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)row toRow:(unsigned int)toRow
{
  toRowCopy = toRow;
  v7 = a5;
  result = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, row, *&toRow, *&a5);
  retstr->range._topLeft = toRowCopy;
  retstr->range._bottomRight = v7;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v9;
  return result;
}

- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)column toColumn:(unsigned __int16)toColumn
{
  toColumnCopy = toColumn;
  v7 = a5;
  result = objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, column, toColumn, a5);
  retstr->range._topLeft = toColumnCopy;
  retstr->range._bottomRight = v7;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v9;
  return result;
}

- (void)syncUpHiddenStateFormulaOwnerUIDs
{
  objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(self->_rowHiddenStateExtent, a2, v2, v3);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(columnHiddenStateExtent, v5, v6, v7);
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  v8 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_rowHiddenStateExtent, v7, engineCopy, d);
  v10 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_columnHiddenStateExtent, v9, engineCopy, d);
  objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(self, v11, v12, v13);
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

- (void)unregisterFromCalcEngine
{
  objc_msgSend_unregisterFromCalcEngine(self->_rowHiddenStateExtent, a2, v2, v3);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_unregisterFromCalcEngine(columnHiddenStateExtent, v5, v6, v7);
}

- (void)setTableModel:(id)model
{
  modelCopy = model;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_setTableModel_(WeakRetained, v5, modelCopy, v6);

  objc_msgSend_setupAfterUnarchive(self->_rowHiddenStateExtent, v7, v8, v9);
  objc_msgSend_setupAfterUnarchive(self->_columnHiddenStateExtent, v10, v11, v12);
  if (modelCopy)
  {
    objc_msgSend_loadIndexesFromTable_(self, v13, modelCopy, v14);
    objc_msgSend_upgradeHiddenStates(modelCopy, v15, v16, v17);
  }
}

- (void)willChangeGroupByTo:(id)to
{
  toCopy = to;
  objc_msgSend_willChangeGroupByTo_(self->_rowHiddenStateExtent, v4, toCopy, v5);
  objc_msgSend_willChangeGroupByTo_(self->_columnHiddenStateExtent, v6, toCopy, v7);
}

- (void)setFormulaOwnerUIDsWithMap:(id)map
{
  mapCopy = map;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_willChangeExtentUids_(WeakRetained, v5, self, v6);

  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(mapCopy, v7, v8, v9);
  objc_msgSend_setHiddenStateExtentUid_(self->_rowHiddenStateExtent, v11, HiddenStateForRowsOwnerUID, v11);
  HiddenStateForColumnsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(mapCopy, v12, v13, v14);
  objc_msgSend_setHiddenStateExtentUid_(self->_columnHiddenStateExtent, v16, HiddenStateForColumnsOwnerUID, v16);
  v17 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_didChangeExtentUids_(v17, v18, self, v19);
}

- (TSKUIDStruct)hiddenStateOwnerForRowsUID
{
  v4 = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)hiddenStateOwnerForColumnsUID
{
  v4 = objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (void)setHiddenStateOwnerForRowsUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  if (d._lower != objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, a2, d._lower, d._upper) || upper != v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_willChangeExtentUids_(WeakRetained, v8, self, v9);

    objc_msgSend_setHiddenStateExtentUid_(self->_rowHiddenStateExtent, v10, lower, upper);
    v14 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_didChangeExtentUids_(v14, v11, self, v12);
  }
}

- (void)setHiddenStateOwnerForColumnsUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  if (d._lower != objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, a2, d._lower, d._upper) || upper != v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_willChangeExtentUids_(WeakRetained, v8, self, v9);

    objc_msgSend_setHiddenStateExtentUid_(self->_columnHiddenStateExtent, v10, lower, upper);
    v14 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_didChangeExtentUids_(v14, v11, self, v12);
  }
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_willChangeExtentUids_(WeakRetained, v7, self, v8);

  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self->_rowHiddenStateExtent, v9, map, engineCopy);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self->_columnHiddenStateExtent, v10, map, engineCopy);
  v11 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_didChangeExtentUids_(v11, v12, self, v13);
}

- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension
{
  v4 = 8;
  if (dimension == 1)
  {
    v4 = 16;
  }

  return objc_msgSend_isGroupOrParentsCollapsed_dimension_(*(&self->super.isa + v4), a2, collapsed, dimension);
}

- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension
{
  v4 = 8;
  if (dimension == 1)
  {
    v4 = 16;
  }

  return objc_msgSend_isGroupCollapsedAndVisible_dimension_(*(&self->super.isa + v4), a2, visible, dimension);
}

- (void)setRowGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_setGroupUID_asCollapsed_, d, collapsedCopy);
}

- (void)setColumnGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_setGroupUID_asCollapsed_, d, collapsedCopy);
}

- (id)collapseSummaryRowGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12);

  v15 = objc_msgSend_collapseSummaryGroupUIDs_(self->_rowHiddenStateExtent, v13, dsCopy, v14);

  return v15;
}

- (id)expandSummaryRowGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12);

  v15 = objc_msgSend_expandSummaryGroupUIDs_(self->_rowHiddenStateExtent, v13, dsCopy, v14);

  return v15;
}

- (id)collapseSummaryColumnGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12);

  v15 = objc_msgSend_collapseSummaryGroupUIDs_(self->_columnHiddenStateExtent, v13, dsCopy, v14);

  return v15;
}

- (id)expandSummaryColumnGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12);

  v15 = objc_msgSend_expandSummaryGroupUIDs_(self->_columnHiddenStateExtent, v13, dsCopy, v14);

  return v15;
}

- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  v18 = objc_msgSend_dimension(stateCopy, v15, v16, v17);
  v20 = 8;
  if (v18 == 1)
  {
    v20 = 16;
  }

  v21 = objc_msgSend_applyCollapseExpandState_outUndoState_(*(&self->super.isa + v20), v19, stateCopy, undoState);

  return v21;
}

- (void)setFilterSetForRows:(id)rows
{
  rowsCopy = rows;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v8 = objc_msgSend_tableModel(WeakRetained, v5, v6, v7);
  objc_msgSend_willModify(v8, v9, v10, v11);

  objc_msgSend_setFilterSet_(self->_rowHiddenStateExtent, v12, rowsCopy, v13);
}

- (id)duplicateFilterSetInUidFormWithTable:(id)table
{
  v4 = objc_msgSend_duplicateFilterSetInUidFormWithTable_(self->_rowHiddenStateExtent, a2, table, v3);

  return v4;
}

- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  objc_msgSend_mutateFormulaFiltersWithTable_usingBlock_(self->_rowHiddenStateExtent, v15, tableCopy, blockCopy);
}

- (void)enableFilterSet:(BOOL)set
{
  setCopy = set;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12);

  if (!setCopy)
  {
    objc_msgSend_clearAllFiltered(self, v13, v14, v15);
  }

  objc_msgSend_enableFilterSet_(self->_rowHiddenStateExtent, v13, setCopy, v15);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_enableFilterSet_(columnHiddenStateExtent, v16, setCopy, v17);
}

- (void)setFilterSetType:(int)type
{
  v3 = *&type;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12);

  objc_msgSend_setFilterSetType_(self->_rowHiddenStateExtent, v13, v3, v14);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_setFilterSetType_(columnHiddenStateExtent, v15, v3, v16);
}

- (BOOL)hasActiveFilters
{
  if (objc_msgSend_hasActiveFilters(self->_rowHiddenStateExtent, a2, v2, v3))
  {
    return 1;
  }

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_hasActiveFilters(columnHiddenStateExtent, v5, v6, v7);
}

- (void)filterSetUpdated
{
  objc_msgSend_filterSetUpdated(self->_rowHiddenStateExtent, a2, v2, v3);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_filterSetUpdated(columnHiddenStateExtent, v5, v6, v7);
}

- (void)dirtyFilterState
{
  objc_msgSend_dirtyFilterState(self->_rowHiddenStateExtent, a2, v2, v3);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_dirtyFilterState(columnHiddenStateExtent, v5, v6, v7);
}

- (void)dirtyFilterStateForHeaders
{
  objc_msgSend_dirtyFilterStateForHeaders(self->_rowHiddenStateExtent, a2, v2, v3);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_dirtyFilterStateForHeaders(columnHiddenStateExtent, v5, v6, v7);
}

- (BOOL)hasHiddenColumnsOrRows
{
  if (objc_msgSend_anyCollapsed(self->_rowHiddenStateExtent, a2, v2, v3) & 1) != 0 || (objc_msgSend_anyCollapsed(self->_columnHiddenStateExtent, v5, v6, v7) & 1) != 0 || (objc_msgSend_anyHidden(self->_rowHiddenStateExtent, v8, v9, v10))
  {
    return 1;
  }

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_anyHidden(columnHiddenStateExtent, v11, v12, v13);
}

- (void)insertNewRowsInBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_insertBaseRange_, location, length);
}

- (void)insertNewColumnsInBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_insertBaseRange_, location, length);
}

- (void)deleteRowsFromBaseRange:(_NSRange)range rowUids:(const void *)uids
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_deleteBaseRange_withUids_, location, length);
}

- (void)deleteColumnsFromBaseRange:(_NSRange)range columnUids:(const void *)uids
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_deleteBaseRange_withUids_, location, length);
}

- (void)moveViewColumnRange:(_NSRange)range toColumnIndex:(TSUViewColumnIndex)index
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_moveViewRangeOnlyFrom_toIndex_, location, length);
}

- (void)moveBaseRowRange:(_NSRange)range toRowIndex:(TSUModelRowIndex)index
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_moveBaseRangeFrom_toIndex_, location, length);
}

- (void)moveBaseColumnRange:(_NSRange)range toColumnIndex:(TSUModelColumnIndex)index
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_moveBaseRangeFrom_toIndex_, location, length);
}

- (void)swapBaseRowAtIndex:(TSUModelRowIndex)index withRowAtIndex:(TSUModelRowIndex)atIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_swapBaseIndex_withIndex_, index._row, atIndex._row);
}

- (void)copyFromHiddenStates:(id)states forRange:(TSUCellRect)range withContext:(id)context isWholeTableCopy:(BOOL)copy
{
  size = range.size;
  origin = range.origin;
  statesCopy = states;
  contextCopy = context;
  if (statesCopy)
  {
    v79 = contextCopy;
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v16 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15);
    objc_msgSend_willModify(v16, v17, v18, v19);

    v23 = origin.row == 0x7FFFFFFF;
    v78 = *&origin & 0xFFFF00000000;
    if (v23 && (*&origin & 0xFFFF00000000) != 0x7FFF00000000)
    {
      row = 0;
    }

    else
    {
      row = origin.row;
    }

    if (!HIDWORD(*&size))
    {
      v23 = 1;
    }

    if (v23)
    {
      v25 = 0x7FFFFFFF;
    }

    else
    {
      v25 = origin.row + size.numberOfRows - 1;
    }

    for (; row <= v25; row = (row + 1))
    {
      v53 = objc_msgSend_hidingActionForRowAtIndex_(statesCopy, v20, row, v22, v78);
      v54 = v53;
      if (v53)
      {
        if ((v53 & 0x16) == 0 || copy) && ((objc_msgSend_sharedTableConfiguration(TSTConfiguration, v20, v21, v22), v55 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend_supportsCategorization(v55, v56, v57, v58), (v54 & 4) == 0) ? (v60 = 1) : (v60 = v59), v55, (v60))
        {
          v63 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v20, v61, v62);
          if (objc_msgSend_supportsPivotTables(v63, v64, v65, v66))
          {
          }

          else
          {

            v54 = (v54 & 0x14) != 0 ? 1 : v54;
          }
        }

        else
        {
          v54 = 1;
        }

        if ((objc_msgSend_hideRowAtIndex_forAction_(self, v20, (row - origin.row), v54) & 1) == 0)
        {
          v67 = MEMORY[0x277D81150];
          v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTHiddenStates copyFromHiddenStates:forRange:withContext:isWholeTableCopy:]", v22);
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStates.mm", v70);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v72, v68, v71, 946, 0, "Failed to hide row during copy.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
        }
      }
    }

    if (origin.row != 0x7FFFFFFF && v78 == 0x7FFF00000000)
    {
      column = 0;
    }

    else
    {
      column = origin.column;
    }

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
      v29 = 0x7FFF;
    }

    else
    {
      v29 = LOWORD(size.numberOfColumns) + origin.column - 1;
    }

    for (; column <= v29; ++column)
    {
      v30 = objc_msgSend_hidingActionForColumnAtIndex_(statesCopy, v20, column, v22, v78);
      v31 = v30;
      if (v30)
      {
        if ((v30 & 0x16) == 0 || copy)
        {
          v33 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v20, v21, v22);
          if (objc_msgSend_supportsPivotTables(v33, v34, v35, v36))
          {
          }

          else
          {

            v31 = (v31 & 0x14) != 0 ? 1 : v31;
          }

          v32 = objc_msgSend_hideColumnAtIndex_forAction_(self, v37, (column - origin.column), v31);
        }

        else
        {
          v32 = objc_msgSend_hideColumnAtIndex_forAction_(self, v20, (column - origin.column), 1);
        }

        if ((v32 & 1) == 0)
        {
          v38 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTHiddenStates copyFromHiddenStates:forRange:withContext:isWholeTableCopy:]", v22);
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStates.mm", v41);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 958, 0, "Failed to hide column during copy.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
        }
      }
    }

    if (copy)
    {
      v47 = objc_msgSend_filterSetForRows(statesCopy, v20, v21, v22);
      v50 = objc_msgSend_copyWithContext_(v47, v48, v79, v49);
    }

    else
    {
      v76 = [TSTTableFilterSet alloc];
      v50 = objc_msgSend_initWithFilterRules_type_context_(v76, v77, 0, 0, v79);
    }

    objc_msgSend_setFilterSetForRows_(self, v51, v50, v52, v78);

    contextCopy = v79;
  }
}

- (TSTHiddenStatesOwner)hiddenStatesOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);

  return WeakRetained;
}

@end