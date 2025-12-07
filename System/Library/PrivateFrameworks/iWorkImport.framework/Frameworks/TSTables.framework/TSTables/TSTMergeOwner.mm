@interface TSTMergeOwner
+ (vector<TSUCellRect,)mergeListFromModelMergeList:()vector<TSUCellRect;
- (BOOL)find:(TSUModelCellRect)find;
- (BOOL)hasMergeRangeSpanningRowsForBaseCellRect:(TSUModelCellRect)rect;
- (BOOL)hasMergeRanges;
- (BOOL)hasMergeRangesIntersectingBaseCellRect:(const TSUModelCellRect *)rect;
- (BOOL)hasMergeRangesIntersectingBaseCellRegion:(id)region;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)range;
- (BOOL)hasRangeSpanningRowsForCellRegion:(id)region;
- (BOOL)insertBaseMergeRange:(TSUModelCellRect)range;
- (BOOL)insertBaseMergeRangeRemovingOverlaps:(TSUModelCellRect)overlaps;
- (BOOL)isEmpty;
- (BOOL)isValidMergeRange:(TSUModelCellRect)range;
- (BOOL)mergeRangesPartiallyIntersectBaseCellRect:(TSUModelCellRect)rect;
- (BOOL)mergeRangesPartiallyIntersectBaseCellRegion:(id)region;
- (TSCECalculationEngine)calculationEngine;
- (TSKUIDStruct)ownerUID;
- (TSTMergeChangeDistributor)mergeChangeDistributor;
- (TSTMergeOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forTableModel:(id)model;
- (TSTMergeOwner)initWithTableModel:(id)model;
- (TSTMergeOwner)initWithTableModel:(id)model ownerUID:(const TSKUIDStruct *)d;
- (TSTTableModel)tableModel;
- (TSUModelCellCoord)mergeOriginForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)cells;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)coord;
- (TSUModelCellRect)p_growRangeFrom:(TSUModelCellRect)from toDesired:(TSUModelCellRect)desired;
- (TSUModelCellRect)rewroteFormula:(id)formula atCoordinate:(TSUModelCellCoord)coordinate withRewriteSpec:(id)spec isUndo:(BOOL)undo;
- (id).cxx_construct;
- (id)allMergesAsString;
- (id)expandBaseCellRegionToCoverMergedCells:(id)cells;
- (id)linkedResolver;
- (id)mergeActionForBaseCellRegion:(id)region;
- (id)mergeActionForBaseCellRegion:(id)region nonOriginPartialsOnly:(BOOL)only;
- (id)mergeIndexesForBaseCellRegion:(id)region;
- (id)mergeIndexesForRange:(TSUModelCellRect)range;
- (id)mergedGridIndicesForDimension:(int64_t)dimension;
- (id)p_growReturningInverseForAction:(id)action formulaReplacer:(id)replacer;
- (id)p_shrinkMergesAtIndexes:(id)indexes intersectedByBaseRegion:(id)region formulaReplacer:(id)replacer;
- (id)p_shrinkReturningInverseForAction:(id)action formulaReplacer:(id)replacer;
- (id)performActionReturningInverse:(id)inverse formulaReplacer:(id)replacer;
- (id)removeReturningInverseForBaseCellRegion:(id)region;
- (id)shrinkReturningInverseForBaseCellRegion:(id)region;
- (id)shrinkReturningInverseForBaseCellRegion:(id)region formulaReplacer:(id)replacer;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (unint64_t)count;
- (vector<TSUModelCellRect,)allValidMergesForMergeList:()vector<TSUModelCellRect;
- (vector<TSUModelCellRect,)mergeRanges;
- (vector<TSUModelCellRect,)mergeRangesAndCrumbsIntersectingBaseCellRect:(TSTMergeOwner *)self;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTMergeOwner *)self;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTMergeOwner *)self;
- (void)clearAllMergeRanges;
- (void)commitRewritingTransaction;
- (void)enumerateMergeFormulasUsingBlock:(id)block;
- (void)enumerateMergesIntersectingBaseCellRegion:(id)region usingBlock:(id)block;
- (void)loadMergeCache;
- (void)openRewritingTransaction;
- (void)p_dirtyCellsForMerge:(const TSUModelCellRect *)merge;
- (void)p_enumerateMergesUsingBlock:(id)block;
- (void)p_moveCellFromCellCoord:(TSUModelCellCoord)coord toCellCoord:(TSUModelCellCoord)cellCoord;
- (void)p_updateOriginMapWithSourceCellCoord:(TSUModelCellCoord)coord destCellCoord:(TSUModelCellCoord)cellCoord;
- (void)reloadMergeCacheForIndexes:(id)indexes;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)removeBaseMergeRange:(TSUModelCellRect)range;
- (void)resetMergeCache;
- (void)resetMergeOriginMap;
- (void)rewriteMergesForInsertedRange:(_NSRange)range uids:(const void *)uids isRows:(BOOL)rows;
- (void)rewriteMergesForRemovedRange:(_NSRange)range uids:(const void *)uids isRows:(BOOL)rows;
- (void)rollbackToMark:(unint64_t)mark;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setOwnerUID:(TSKUIDStruct)d;
- (void)unregisterFromCalcEngine;
@end

@implementation TSTMergeOwner

- (TSTMergeOwner)initWithTableModel:(id)model ownerUID:(const TSKUIDStruct *)d
{
  modelCopy = model;
  v27.receiver = self;
  v27.super_class = TSTMergeOwner;
  v7 = [(TSTMergeOwner *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_tableModel, modelCopy);
    if (*d == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTMergeOwner initWithTableModel:ownerUID:]", v10);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 87, 0, "valid ownerUID is required");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    v8->_ownerUID = *d;
    v20 = [TSTFormulaStore alloc];
    v22 = objc_msgSend_initWithOwnerUID_(v20, v21, d->_lower, d->_upper);
    formulaStore = v8->_formulaStore;
    v8->_formulaStore = v22;

    v8->_mergeCacheLoaded = 0;
    v24 = objc_alloc_init(TSTCellRangeCache);
    mergeRangeCache = v8->_mergeRangeCache;
    v8->_mergeRangeCache = v24;
  }

  return v8;
}

- (TSTMergeOwner)initWithTableModel:(id)model
{
  modelCopy = model;
  *&v14 = objc_msgSend_tableUID(modelCopy, v5, v6, v7);
  *(&v14 + 1) = v8;
  v15[0] = sub_2212C4930(&v14, 5, v9, v10);
  v15[1] = v11;
  v12 = objc_msgSend_initWithTableModel_ownerUID_(self, v11, modelCopy, v15);

  return v12;
}

- (TSTMergeChangeDistributor)mergeChangeDistributor
{
  mergeChangeDistributor = self->_mergeChangeDistributor;
  if (!mergeChangeDistributor)
  {
    v4 = objc_opt_new();
    v5 = self->_mergeChangeDistributor;
    self->_mergeChangeDistributor = v4;

    mergeChangeDistributor = self->_mergeChangeDistributor;
  }

  return mergeChangeDistributor;
}

- (void)rollbackToMark:(unint64_t)mark
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v6, v7, v8);

  objc_msgSend_rollbackToMark_(self->_formulaStore, v9, mark, v10);

  objc_msgSend_resetMergeCache(self, v11, v12, v13);
}

- (id)allMergesAsString
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3);
  v9 = objc_msgSend_mergeRangeCache(self, v6, v7, v8);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_221397900;
  v21[3] = &unk_2784611F8;
  v10 = v5;
  v22 = v10;
  objc_msgSend_enumerateCacheItemsUsingBlock_(v9, v11, v21, v12);

  v16 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v13, v14, v15);
  v19 = objc_msgSend_stringByTrimmingCharactersInSet_(v10, v17, v16, v18);

  return v19;
}

- (TSTMergeOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forTableModel:(id)model
{
  unarchiverCopy = unarchiver;
  modelCopy = model;
  v17[0] = TSKUIDStruct::loadFromMessage();
  v17[1] = v10;
  v11 = objc_msgSend_initWithTableModel_ownerUID_(self, v10, modelCopy, v17);
  if (v11 && (*(archive + 16) & 2) != 0)
  {
    v12 = [TSTFormulaStore alloc];
    if (*(archive + 4))
    {
      v14 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v12, v13, &v11->_ownerUID, *(archive + 4), unarchiverCopy);
    }

    else
    {
      v14 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v12, v13, &v11->_ownerUID, &TST::_FormulaStoreArchive_default_instance_, unarchiverCopy);
    }

    formulaStore = v11->_formulaStore;
    v11->_formulaStore = v14;
  }

  return v11;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v6 = *(archive + 3);
  if (!v6)
  {
    v7 = *(archive + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0300](v7);
    *(archive + 3) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v6);
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    *(archive + 4) |= 2u;
    v10 = *(archive + 4);
    if (!v10)
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v11);
      *(archive + 4) = v10;
    }

    objc_msgSend_saveToArchive_archiver_(formulaStore, v8, v10, archiverCopy);
  }
}

- (void)setOwnerUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v7, v8, v9);

  self->_ownerUID._lower = lower;
  self->_ownerUID._upper = upper;
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {

    objc_msgSend_setFormulaOwnerUID_(formulaStore, v10, lower, upper);
  }
}

- (void)resetMergeOriginMap
{
  sub_2210BE918(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_);

  sub_2210BE918(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_);
}

- (id)mergeIndexesForRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTMergeOwner mergeIndexesForRange:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 209, 0, "The tableModel must be set on the mergeOwner before this API can be used.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  objc_msgSend_loadMergeCache(self, v5, v6, v7, *&var0.origin, *&var0.size);
  if (TSUCellRect::isValid(&var0))
  {
    v18 = objc_msgSend_indexesForRange_(self->_mergeRangeCache, v17, *&var0.origin, *&var0.size);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)mergeIndexesForBaseCellRegion:(id)region
{
  regionCopy = region;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_221397E90;
  v21 = sub_221397EA0;
  v22 = 0;
  if (objc_msgSend_isValid(regionCopy, v5, v6, v7) && (objc_msgSend_isEmpty(regionCopy, v8, v9, v10) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_221397EA8;
    v16[3] = &unk_2784611A8;
    v16[4] = self;
    v16[5] = &v17;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(regionCopy, v12, v16, v13);
    objc_autoreleasePoolPop(v11);
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (unint64_t)count
{
  objc_msgSend_loadMergeCache(self, a2, v2, v3);
  mergeRangeCache = self->_mergeRangeCache;

  return objc_msgSend_count(mergeRangeCache, v5, v6, v7);
}

- (BOOL)isEmpty
{
  objc_msgSend_loadMergeCache(self, a2, v2, v3);
  mergeRangeCache = self->_mergeRangeCache;

  return objc_msgSend_isEmpty(mergeRangeCache, v5, v6, v7);
}

- (void)p_updateOriginMapWithSourceCellCoord:(TSUModelCellCoord)coord destCellCoord:(TSUModelCellCoord)cellCoord
{
  cellCoordCopy = cellCoord;
  coordCopy = coord;
  if (coord._coord.row != cellCoord._coord.row || ((*&cellCoord ^ *&coord) & 0x101FFFF00000000) != 0)
  {
    v5 = sub_221087F14(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, &coordCopy);
    if (v5)
    {
      v6 = v5;
      v16 = v5[3];
      v19 = &v16;
      v7 = sub_22139DE94(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, &v16, &unk_2217E18F0, &v19);
      v7[3] = cellCoordCopy;
      sub_2210CDD3C(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, v6);
      v19 = &cellCoordCopy;
      p_reverseOriginsMap = &self->_reverseOriginsMap;
      v9 = &cellCoordCopy;
    }

    else
    {
      v10 = sub_221087F14(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, &cellCoordCopy);
      if (!v10)
      {
        v19 = &coordCopy;
        v15 = sub_22139DE94(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, &coordCopy, &unk_2217E18F0, &v19);
        v15[3] = cellCoordCopy;
        v19 = &cellCoordCopy;
        v13 = sub_22139DE94(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, &cellCoordCopy, &unk_2217E18F0, &v19);
        v14 = coordCopy;
        goto LABEL_8;
      }

      v11 = v10;
      v16 = v10[3];
      v19 = &v16;
      v12 = sub_22139DE94(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, &v16, &unk_2217E18F0, &v19);
      v12[3] = coordCopy;
      sub_2210CDD3C(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, v11);
      v19 = &coordCopy;
      p_reverseOriginsMap = &self->_mergeOriginsMap;
      v9 = &coordCopy;
    }

    v13 = sub_22139DE94(p_reverseOriginsMap, v9, &unk_2217E18F0, &v19);
    v14 = v16;
LABEL_8:
    v13[3] = v14;
  }
}

- (void)p_moveCellFromCellCoord:(TSUModelCellCoord)coord toCellCoord:(TSUModelCellCoord)cellCoord
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  v34 = objc_msgSend_cellAtBaseCellCoord_(WeakRetained, v8, *&coord, v9);

  if (v34)
  {
    v11 = objc_loadWeakRetained(&self->_tableModel);
    v15 = objc_msgSend_newCell(v11, v12, v13, v14);

    objc_msgSend_clear(v15, v16, v17, v18);
    objc_msgSend_copyJustStrokesToCell_(v34, v19, v15, v20);
    objc_msgSend_clearStrokes(v34, v21, v22, v23);
    v24 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v24, v25, v15, *&coord, 0, 0);

    v26 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v26, v27, v34, *&cellCoord, 0, 0);

    if (TSULogCat_IsCategoryEnabled() && objc_msgSend_hasFormula(v34, v28, v29, v30))
    {
      objc_msgSend_formulaObject(v34, v31, v32, v33);
    }
  }

  objc_msgSend_p_updateOriginMapWithSourceCellCoord_destCellCoord_(self, v10, *&coord, *&cellCoord);
}

- (id)p_shrinkMergesAtIndexes:(id)indexes intersectedByBaseRegion:(id)region formulaReplacer:(id)replacer
{
  indexesCopy = indexes;
  regionCopy = region;
  replacerCopy = replacer;
  if (objc_msgSend_count(indexesCopy, v11, v12, v13))
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x4812000000;
    v53 = sub_221398600;
    v54 = sub_221398624;
    v55 = &unk_22188E88F;
    memset(v56, 0, sizeof(v56));
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_221398650;
    v49[3] = &unk_278463AC8;
    v49[4] = self;
    v49[5] = &v50;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(regionCopy, v14, v49, v15);
    v16 = [TSTMergeAction alloc];
    v18 = objc_msgSend_initWithType_uidRanges_(v16, v17, 4, (v51 + 6));
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x9812000000;
    v47[3] = sub_2213987B4;
    v47[4] = nullsub_57;
    v47[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
    v46.coordinate = 0;
    v46._tableUID._lower = objc_msgSend_ownerUID(self, v20, v21, v22);
    v46._tableUID._upper = v23;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v48, WeakRetained, &v46);

    v24 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v24, v25, v26, v27);

    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = sub_221398804;
    v40 = &unk_278463AF0;
    selfCopy = self;
    v45 = v47;
    v28 = v18;
    v42 = v28;
    v43 = regionCopy;
    v44 = replacerCopy;
    objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v29, &v37, v30);
    if (objc_msgSend_hasMergeFormulas(v28, v31, v32, v33, v37, v38, v39, v40, selfCopy))
    {
      v34 = v28;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    _Block_object_dispose(v47, 8);
    _Block_object_dispose(&v50, 8);
    v47[0] = v56;
    sub_2210BC30C(v47);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)mergeActionForBaseCellRegion:(id)region
{
  v3 = objc_msgSend_mergeActionForBaseCellRegion_nonOriginPartialsOnly_(self, a2, region, 0);

  return v3;
}

- (id)mergeActionForBaseCellRegion:(id)region nonOriginPartialsOnly:(BOOL)only
{
  regionCopy = region;
  v40 = 0;
  v41 = &v40;
  v42 = 0x4812000000;
  v43 = sub_221398600;
  v44 = sub_221398624;
  v45 = &unk_22188E88F;
  memset(v46, 0, sizeof(v46));
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_221398DF4;
  v39[3] = &unk_278463AC8;
  v39[4] = self;
  v39[5] = &v40;
  objc_msgSend_enumerateModelCellRectsUsingBlock_(regionCopy, v7, v39, v8);
  v9 = [TSTMergeAction alloc];
  v11 = objc_msgSend_initWithType_uidRanges_(v9, v10, 4, (v41 + 6));
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  if (WeakRetained)
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x9812000000;
    v37[3] = sub_2213987B4;
    v37[4] = nullsub_57;
    v37[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v13 = objc_loadWeakRetained(&self->_calculationEngine);
    v36.coordinate = 0;
    v36._tableUID._lower = objc_msgSend_ownerUID(self, v14, v15, v16);
    v36._tableUID._upper = v17;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v38, v13, &v36);

    v20 = objc_msgSend_mergeIndexesForBaseCellRegion_(self, v18, regionCopy, v19);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_221398F30;
    v31[3] = &unk_278463B18;
    v31[4] = self;
    onlyCopy = only;
    v32 = regionCopy;
    v34 = v37;
    v33 = v11;
    objc_msgSend_enumerateIndexesUsingBlock_(v20, v21, v31, v22);

    _Block_object_dispose(v37, 8);
  }

  v23 = v11;
  v27 = objc_msgSend_mergeFormulas(v23, v24, v25, v26);
  if (v27[1] == *v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v11;
  }

  v29 = v28;

  _Block_object_dispose(&v40, 8);
  v37[0] = v46;
  sub_2210BC30C(v37);

  return v29;
}

- (BOOL)isValidMergeRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  if (TSUCellRect::isValid(&var0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (!WeakRetained)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTMergeOwner isValidMergeRange:]", v8);
      v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v3, 420, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }

    v17 = objc_msgSend_tableModel(self, v6, v7, v8);
    v21 = objc_msgSend_tableInfo(v17, v18, v19, v20);
    hasActiveFilters = objc_msgSend_hasActiveFilters(v21, v22, v23, v24);
    if (hasActiveFilters)
    {
      if (var0.size.numberOfRows <= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = objc_msgSend_tableInfo(v17, v25, v26, v27);
      if ((objc_msgSend_isCategorized(v3, v30, v31, v32) & 1) == 0 || var0.size.numberOfRows < 2)
      {

LABEL_15:
LABEL_16:
        v51.origin = objc_msgSend_tableAreaForBaseCellCoord_(v17, v35, *&var0.origin, v36);
        v37 = TSUCellRect::bottomRight(&var0);
        v50 = objc_msgSend_tableAreaForBaseCellCoord_(v17, v38, v37, v39);
        sub_2210F73F8(&v51);
        sub_2210F73F8(&v50);
        if (*&v51.origin == v50)
        {
          v43 = objc_msgSend_tableInfo(v17, v40, v41, v42);
          v47 = objc_msgSend_hiddenStates(v43, v44, v45, v46);

          v29 = (var0.size.numberOfRows < 2 || !objc_msgSend_numberOfHiddenRowsInBaseCellRange_(v47, v48, *&var0.origin, *&var0.size)) && ((var0.size.numberOfColumns & 0xFFFE) == 0 || !objc_msgSend_numberOfHiddenColumnsInBaseCellRange_(v47, v48, *&var0.origin, *&var0.size));
          goto LABEL_25;
        }

LABEL_22:
        v29 = 0;
LABEL_25:

        return v29;
      }
    }

    v51.origin = objc_msgSend_bodyRowRange(v17, v25, v26, v27);
    v51.size = v33;
    v34 = TSUCellRect::intersects(&v51, &var0);
    if ((hasActiveFilters & 1) == 0)
    {
    }

    if (v34)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  return 0;
}

- (void)reloadMergeCacheForIndexes:(id)indexes
{
  indexesCopy = indexes;
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  if (WeakRetained && self->_formulaStore && self->_mergeRangeCache)
  {

    if (indexesCopy)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_2213993A8;
      v8[3] = &unk_27845E958;
      v8[4] = self;
      objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v6, v8, v7);
    }
  }

  else
  {
  }
}

- (void)resetMergeCache
{
  self->_mergeCacheLoaded = 0;
  objc_msgSend_clear(self->_mergeRangeCache, a2, v2, v3);

  objc_msgSend_loadMergeCache(self, v5, v6, v7);
}

- (void)loadMergeCache
{
  if (!self->_mergeCacheLoaded)
  {
    formulaStore = self->_formulaStore;
    if (formulaStore)
    {
      self->_mergeCacheLoaded = 1;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = sub_221399540;
      v5[3] = &unk_278460990;
      v5[4] = self;
      objc_msgSend_foreach_(formulaStore, a2, v5, v2);
    }
  }
}

- (void)p_dirtyCellsForMerge:(const TSUModelCellRect *)merge
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_tableModel);

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_tableModel);
      v12 = objc_msgSend_calcEngine(v8, v9, v10, v11);
      v13 = j__TSUCellRectToTSCERangeCoordinate(*&merge->var0.origin, *&merge->var0.size);
      v15 = v14;
      v16 = objc_loadWeakRetained(&self->_tableModel);
      v38[0] = objc_msgSend_tableUID(v16, v17, v18, v19);
      v38[1] = v20;
      v21 = objc_loadWeakRetained(&self->_tableModel);
      v25 = objc_msgSend_headerRowRange(v21, v22, v23, v24);
      v27 = j__TSUCellRectToTSCERangeCoordinate(v25, v26);
      v29 = v28;
      v30 = objc_loadWeakRetained(&self->_tableModel);
      v34 = objc_msgSend_headerColumnRange(v30, v31, v32, v33);
      v36 = j__TSUCellRectToTSCERangeCoordinate(v34, v35);
      objc_msgSend_dirtyCellsForMergingRange_forTable_headerRowRange_headerColumnRange_(v12, v37, v13, v15, v38, v27, v29, v36, v37);
    }
  }
}

- (BOOL)insertBaseMergeRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  rangeCopy = range;
  isValidMergeRange = objc_msgSend_isValidMergeRange_(self, a2, *&range.var0.origin, *&range.var0.size);
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (WeakRetained)
  {
    if (!isValidMergeRange)
    {
      return isValidMergeRange;
    }

    goto LABEL_5;
  }

  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTMergeOwner insertBaseMergeRange:]", v10);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 504, 0, "invalid nil value for '%{public}s'", "_tableModel");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  if (isValidMergeRange)
  {
LABEL_5:
    objc_msgSend_loadMergeCache(self, v8, v9, v10);
    Index = objc_msgSend_reserveNextIndex(self->_formulaStore, v20, v21, v22);
    formulaStore = self->_formulaStore;
    v25 = objc_loadWeakRetained(&self->_tableModel);
    v53[0] = objc_msgSend_tableUID(v25, v26, v27, v28);
    v53[1] = v29;
    v30 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(formulaStore, v29, origin, size, Index, v53);

    v31 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v31, v32, v33, v34);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v35, v30, Index);
    v39 = objc_msgSend_mergeRangeCache(self, v36, v37, v38);
    objc_msgSend_setCellRange_atIndex_(v39, v40, origin, size, Index);

    v42 = objc_msgSend_mergeIndexesForRange_(self, v41, origin, size);
    objc_msgSend_reloadMergeCacheForIndexes_(self, v43, v42, v44);
    objc_msgSend_p_dirtyCellsForMerge_(self, v45, &rangeCopy, v46);
    v50 = objc_msgSend_mergeChangeDistributor(self, v47, v48, v49);
    objc_msgSend_didMergeRange_(v50, v51, *&rangeCopy.var0.origin, *&rangeCopy.var0.size);
  }

  return isValidMergeRange;
}

- (BOOL)insertBaseMergeRangeRemovingOverlaps:(TSUModelCellRect)overlaps
{
  size = overlaps.var0.size;
  origin = overlaps.var0.origin;
  var0 = overlaps.var0;
  isValidMergeRange = objc_msgSend_isValidMergeRange_(self, a2, *&overlaps.var0.origin, *&overlaps.var0.size);
  if (isValidMergeRange)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(self, v6, origin, size);
    if (v27 == v28)
    {
      objc_msgSend_insertBaseMergeRange_(self, v27, *&var0.origin, *&var0.size);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v23 = 0;
      v24 = &v25;
      __p = 0;
      v22 = 0;
      sub_2211E5AD4(&__p, v27, v28, (v28 - v27) >> 4);
      v9 = v27;
      v10 = v28;
      while (v9 != v10)
      {
        objc_msgSend_removeBaseMergeRange_(self, v8, *v9, v9[1]);
        sub_2212E4518(&v24, v9, v9);
        v9 += 2;
      }

      sub_2212E4518(&v24, &var0, &var0);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      if (v26)
      {
        do
        {
          v17 = *(v24 + 28);
          sub_2212E4768(&v24, &v17);
          v16 = 0uLL;
          if (v18 == v19)
          {
            v16 = v17;
          }

          else
          {
            *&v16 = TSUModelCellRect::largestWithoutRectsAndContainsCoord();
            *(&v16 + 1) = v11;
          }

          if (TSUCellRect::isValid(&v16) && (DWORD2(v16) * HIDWORD(v16)) >= 2)
          {
            sub_221083454(&v18, &v16);
          }
        }

        while (v26);
        v13 = v18;
        v14 = v19;
        if (v18 != v19)
        {
          do
          {
            objc_msgSend_insertBaseMergeRange_(self, v12, *v13, v13[1], v16);
            v13 += 2;
          }

          while (v13 != v14);
          v13 = v18;
        }

        if (v13)
        {
          v19 = v13;
          operator delete(v13);
        }
      }

      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      sub_2210BC9F8(&v24, v25);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }
  }

  return isValidMergeRange;
}

- (void)removeBaseMergeRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  v6 = objc_msgSend_mergeIndexesForRange_(self, a2, *&range.var0.origin, *&range.var0.size);
  if (objc_msgSend_count(v6, v7, v8, v9) != 1)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTMergeOwner removeBaseMergeRange:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 577, 0, "Unexpectedly not just removing one range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v22, v23, v24);

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_221399D28;
  v32[3] = &unk_27845E958;
  v32[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v6, v25, v32, v26);
  v30 = objc_msgSend_mergeChangeDistributor(self, v27, v28, v29);
  objc_msgSend_didUnmergeRange_(v30, v31, origin, size);
}

- (id)performActionReturningInverse:(id)inverse formulaReplacer:(id)replacer
{
  inverseCopy = inverse;
  replacerCopy = replacer;
  objc_msgSend_verify(inverseCopy, v8, v9, v10);
  if (!inverseCopy)
  {
    v21 = 0;
    objc_msgSend_verify(0, v11, v12, v13);
    goto LABEL_9;
  }

  v14 = objc_msgSend_type(inverseCopy, v11, v12, v13);
  if (v14 == 3)
  {
    v17 = objc_msgSend_p_shrinkReturningInverseForAction_formulaReplacer_(self, v15, inverseCopy, replacerCopy);
    goto LABEL_7;
  }

  if (v14 == 4)
  {
    v17 = objc_msgSend_p_growReturningInverseForAction_formulaReplacer_(self, v15, inverseCopy, replacerCopy);
LABEL_7:
    v21 = v17;
    objc_msgSend_verify(v17, v18, v19, v20);
    goto LABEL_9;
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTMergeOwner performActionReturningInverse:formulaReplacer:]", v16);
  v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v25);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 597, 0, "Invalid merge action");

  v21 = 0;
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  objc_msgSend_verify(0, v31, v32, v33);
LABEL_9:

  return v21;
}

- (id)removeReturningInverseForBaseCellRegion:(id)region
{
  regionCopy = region;
  if (!objc_msgSend_count(self, v5, v6, v7))
  {
    goto LABEL_12;
  }

  v8 = objc_opt_new();
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_22139A36C;
  v64[3] = &unk_278463B40;
  v64[4] = self;
  v9 = v8;
  v65 = v9;
  objc_msgSend_enumerateModelCellRectsUsingBlock_(regionCopy, v10, v64, v11);
  v57 = 0;
  v58 = &v57;
  v59 = 0x4812000000;
  v60 = sub_221398600;
  v61 = sub_221398624;
  v62 = &unk_22188E88F;
  memset(v63, 0, sizeof(v63));
  v50 = 0;
  v51 = &v50;
  v52 = 0x4812000000;
  v53 = sub_22139A380;
  v54 = sub_22139A3A4;
  v55 = &unk_22188E88F;
  memset(v56, 0, sizeof(v56));
  v41 = 0;
  v42 = &v41;
  v43 = 0x4812000000;
  v44 = sub_22139A3D0;
  v45 = sub_22139A3F4;
  v46 = &unk_22188E88F;
  v48 = 0;
  v49 = 0;
  __p = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x9812000000;
  v39[3] = sub_2213987B4;
  v39[4] = nullsub_57;
  v39[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v38.coordinate = 0;
  v38._tableUID._lower = objc_msgSend_ownerUID(self, v13, v14, v15);
  v38._tableUID._upper = v16;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v40, WeakRetained, &v38);

  v17 = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(v17, v18, v19, v20);

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22139A40C;
  v37[3] = &unk_278463B68;
  v37[4] = self;
  v37[5] = v39;
  v37[6] = &v57;
  v37[7] = &v50;
  v37[8] = &v41;
  objc_msgSend_enumerateIndexesUsingBlock_(v9, v21, v37, v22);
  v24 = v51[6];
  v23 = v51[7];
  if (v23 != v24)
  {
    v25 = [TSTMergeAction alloc];
    self = objc_msgSend_initWithType_uidRanges_(v25, v26, 4, (v58 + 6));
    v29 = v51[6];
    v30 = v51[7];
    while (v29 != v30)
    {
      v31 = *v29;
      objc_msgSend_addFormula_(self, v32, v31, v33);

      ++v29;
    }

    v34 = v42[6];
    v35 = v42[7];
    while (v34 != v35)
    {
      objc_msgSend_addFormulaIndex_(self, v27, *v34++, v28);
    }
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v50, 8);
  v39[0] = v56;
  sub_22107C2C0(v39);
  _Block_object_dispose(&v57, 8);
  v39[0] = v63;
  sub_2210BC30C(v39);

  if (v23 == v24)
  {
LABEL_12:
    self = 0;
  }

  return self;
}

- (id)shrinkReturningInverseForBaseCellRegion:(id)region
{
  regionCopy = region;
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v7 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_formulaReplacer_(self, v6, regionCopy, WeakRetained);

  return v7;
}

- (id)shrinkReturningInverseForBaseCellRegion:(id)region formulaReplacer:(id)replacer
{
  regionCopy = region;
  replacerCopy = replacer;
  v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10);
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (!WeakRetained)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTMergeOwner shrinkReturningInverseForBaseCellRegion:formulaReplacer:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 686, 0, "invalid nil value for '%{public}s'", "_tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_loadWeakRetained(&self->_calculationEngine);

  if (v24)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_22139A954;
    v31[3] = &unk_278463B40;
    v31[4] = self;
    v25 = v11;
    v32 = v25;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(regionCopy, v26, v31, v27);
    v29 = objc_msgSend_p_shrinkMergesAtIndexes_intersectedByBaseRegion_formulaReplacer_(self, v28, v25, regionCopy, replacerCopy);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)p_shrinkReturningInverseForAction:(id)action formulaReplacer:(id)replacer
{
  actionCopy = action;
  replacerCopy = replacer;
  v11 = objc_msgSend_invalidRegion(TSTCellRegion, v8, v9, v10);
  v12 = actionCopy;
  v16 = objc_msgSend_uidRanges(v12, v13, v14, v15);
  v18 = *v16;
  v19 = v16[1];
  if (*v16 == v19)
  {
    v30 = v11;
  }

  else
  {
    do
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableModel);
      v24 = objc_msgSend_columnRowUIDMap(WeakRetained, v21, v22, v23);
      v27 = objc_msgSend_cellRegionForUIDRange_(v24, v25, v18, v26);
      v30 = objc_msgSend_regionByAddingRegion_(v11, v28, v27, v29);

      v18 += 48;
      v11 = v30;
    }

    while (v18 != v19);
  }

  v31 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_formulaReplacer_(self, v17, v30, replacerCopy);

  return v31;
}

- (TSUModelCellRect)p_growRangeFrom:(TSUModelCellRect)from toDesired:(TSUModelCellRect)desired
{
  var0 = from.var0;
  v51 = desired.var0;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTMergeOwner p_growRangeFrom:toDesired:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 715, 0, "invalid nil value for '%{public}s'", "_tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  origin = 0x7FFF7FFFFFFFLL;
  if (TSUCellRect::isValid(&v51))
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_221397E90;
    v49 = sub_221397EA0;
    v18 = objc_loadWeakRetained(&self->_tableModel);
    v50 = objc_msgSend_regionForValueOrCommentCellsInBaseCellRect_(v18, v19, *&v51.origin, *&v51.size);

    v23 = objc_msgSend_mergeRangeCache(self, v20, v21, v22);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_22139AE64;
    v42[3] = &unk_278463B90;
    v43 = var0;
    v44 = v51;
    v42[4] = &v45;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(v23, v24, *&v51.origin, *&v51.size, v42);

    if (TSUCellRect::isValid(&var0))
    {
      v27 = objc_msgSend_regionBySubtractingModelCellRect_(v46[5], v25, *&var0.origin, 0x100000001);
      v28 = v46[5];
      v46[5] = v27;

      v32 = v46[5];
      if (v32)
      {
LABEL_10:
        objc_msgSend_modelCellRanges(v32, v29, v30, v31);
        goto LABEL_16;
      }

      __p.origin = 0;
      __p.size = 0;
      v41 = 0;
    }

    else
    {
      if (v51.size.numberOfColumns * v51.size.numberOfRows < 2)
      {
        __p.origin = objc_msgSend_mergedRangeForBaseCellCoord_(self, v25, *&v51.origin, v26);
        __p.size = v36;
        if (TSUCellRect::isValid(&__p))
        {
          size = 0;
        }

        else
        {
          origin = v51.origin;
          size = v51.size;
        }

LABEL_18:
        _Block_object_dispose(&v45, 8);

        goto LABEL_19;
      }

      v34 = objc_msgSend_regionBySubtractingModelCellRect_(v46[5], v25, *&v51.origin, 0x100000001);
      v35 = v46[5];
      v46[5] = v34;

      v32 = v46[5];
      if (v32)
      {
        goto LABEL_10;
      }

      __p.origin = 0;
      __p.size = 0;
      v41 = 0;
    }

LABEL_16:
    origin = TSUModelCellRect::largestWithoutRectsAndContainsCoord();
    size = v37;
    if (__p.origin)
    {
      __p.size = __p.origin;
      operator delete(*&__p.origin);
    }

    goto LABEL_18;
  }

  size = 0;
LABEL_19:
  v38 = origin;
  v39 = size;
  result.var0.size = v39;
  result.var0.origin = v38;
  return result;
}

- (id)p_growReturningInverseForAction:(id)action formulaReplacer:(id)replacer
{
  actionCopy = action;
  replacerCopy = replacer;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  v183 = actionCopy;
  if (!WeakRetained)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTMergeOwner p_growReturningInverseForAction:formulaReplacer:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 753, 0, "invalid nil value for '%{public}s'", "_tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(v19, v20, v21, v22);

  v26 = objc_msgSend_invalidRegion(TSTCellRegion, v23, v24, v25);
  v27 = actionCopy;
  v31 = objc_msgSend_uidRanges(v27, v28, v29, v30);
  v35 = *v31;
  v36 = v31[1];
  if (*v31 == v36)
  {
    v47 = v26;
  }

  else
  {
    do
    {
      v37 = objc_loadWeakRetained(&self->_tableModel);
      v41 = objc_msgSend_columnRowUIDMap(v37, v38, v39, v40);
      v44 = objc_msgSend_cellRegionForUIDRange_(v41, v42, v35, v43);
      v47 = objc_msgSend_regionByAddingRegion_(v26, v45, v44, v46);

      v35 += 48;
      v26 = v47;
    }

    while (v35 != v36);
  }

  v200 = 0;
  v201 = 0;
  v202 = 0;
  v197 = 0;
  v198 = 0;
  v199 = 0;
  v48 = objc_msgSend_invalidRegion(TSTCellRegion, v32, v33, v34);
  v49 = objc_loadWeakRetained(&self->_calculationEngine);
  v184 = v47;
  __p.coordinate = 0;
  __p._tableUID._lower = objc_msgSend_ownerUID(self, v50, v51, v52);
  __p._tableUID._upper = v53;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v196, v49, &__p);

  v54 = actionCopy;
  v58 = *objc_msgSend_mergeFormulaIndexes(v54, v55, v56, v57);
  v59 = actionCopy;
  v63 = objc_msgSend_mergeFormulas(v59, v60, v61, v62);
  v66 = *v63;
  v182 = *(v63 + 8);
  if (*v63 != v182)
  {
    v67 = v58;
    do
    {
      v68 = *v66;
      v195 = 0x7FFFFFFFFFFFFFFFLL;
      v194 = xmmword_2217E18E0;
      v69 = v183;
      v185 = v68;
      if (v67 != *(objc_msgSend_mergeFormulaIndexes(v69, v70, v71, v72) + 8))
      {
        v73 = *v67++;
        v195 = v73;
      }

      v74 = objc_loadWeakRetained(&self->_tableModel);
      v75 = sub_221387F30(v68, v74);

      v193 = 0uLL;
      if (objc_msgSend_isValid(v75, v76, v77, v78))
      {
        *&v193 = objc_msgSend_boundingModelCellRect(v75, v79, v80, v81);
        *(&v193 + 1) = v79;
      }

      else
      {
        v193 = xmmword_2217E18E0;
      }

      v82 = objc_msgSend_regionBySubtractingRegion_(v75, v79, v184, v81);
      v85 = objc_msgSend_mergeIndexesForBaseCellRegion_(self, v83, v82, v84);
      if (objc_msgSend_count(v85, v86, v87, v88) == 1)
      {
        v192.origin = 0;
        v192.size = 0;
        mergeRangeCache = self->_mergeRangeCache;
        Index = objc_msgSend_firstIndex(v85, v89, v90, v91);
        v192.origin = objc_msgSend_cellRangeAtIndex_(mergeRangeCache, v94, Index, v95);
        v192.size = v96;
        v97 = objc_msgSend_regionFromModelCellRect_(TSTCellRegion, v96, v193, *(&v193 + 1));
        v100 = objc_msgSend_regionBySubtractingModelCellRegion_(v97, v98, v75, v99);

        TSUModelCellRect::operator|=();
        if (!objc_msgSend_isValid(v100, v101, v102, v103))
        {
          goto LABEL_22;
        }

        if (v100)
        {
          objc_msgSend_modelCellRanges(v100, v104, v105, v106);
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        v107 = TSUModelCellRect::intersectsAll();
        if (__p.coordinate)
        {
          __p._tableUID._lower = __p.coordinate;
          operator delete(*&__p.coordinate);
        }

        if (v107)
        {
LABEL_22:
          v194 = v192;
          v195 = objc_msgSend_firstIndex(v85, v104, v105, v106);
        }
      }

      if ((objc_msgSend_isEmpty(v82, v89, v90, v91) & 1) != 0 || TSUCellRect::isValid(&v194))
      {
        v192.origin = 0;
        v192.size = 0;
        selfCopy = self;
        v110 = objc_msgSend_p_growRangeFrom_toDesired_(self, v108, *&v194.origin, *&v194.size, v193);
        v111 = v67;
        v192.origin = v110;
        v192.size = v112;
        v113 = objc_msgSend_regionFromModelCellRect_(TSTCellRegion, v112, v110, v112);
        v114 = v48;
        v116 = objc_msgSend_regionBySubtractingModelCellRect_(v113, v115, *&v194.origin, *&v194.size);

        if (TSUCellRect::isValid(&v192) && (v192.origin.row != v194.origin.row || ((*&v194.origin ^ *&v192.origin) & 0x101FFFF00000000) != 0 || *&v192.size != *&v194.size) && ((objc_msgSend_isEmpty(v184, v117, v118, v119) & 1) != 0 || objc_msgSend_intersectsModelCellRect_(v184, v120, *&v192.origin, *&v192.size)) && objc_msgSend_isValidMergeRange_(selfCopy, v120, *&v192.origin, *&v192.size) && (objc_msgSend_mergeIndexesForBaseCellRegion_(selfCopy, v121, v116, v122), v123 = objc_claimAutoreleasedReturnValue(), v127 = objc_msgSend_count(v123, v124, v125, v126), v123, !v127))
        {
          if (TSUCellRect::isValid(&v194))
          {
            objc_msgSend_clearFormulaAtIndex_formulaReplacer_(selfCopy->_formulaStore, v128, v195, replacerCopy);
            objc_msgSend_removeCellRangeAtIndex_(selfCopy->_mergeRangeCache, v131, v195, v132);
          }

          else if (v195 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v195 = objc_msgSend_reserveNextIndex(selfCopy->_formulaStore, v128, v129, v130);
          }

          v48 = objc_msgSend_regionByAddingRegion_(v114, v128, v116, v130);

          formulaStore = selfCopy->_formulaStore;
          size = v192.size;
          origin = v192.origin;
          v177 = v195;
          v134 = objc_loadWeakRetained(&selfCopy->_tableModel);
          __p.coordinate = objc_msgSend_tableUID(v134, v135, v136, v137);
          __p._tableUID._lower = v138;
          v180 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(formulaStore, v138, origin, size, v177, &__p);

          v67 = v111;
          __p.coordinate = objc_msgSend_coordFromIndex_(TSTFormulaStore, v139, v195, v140);
          TSCEFormulaRewriteContext::setContainingCellCoord(&v196, &__p.coordinate);
          v143 = objc_msgSend_copyByRewritingReferencesToUidForm_(v180, v141, &v196, v142);
          self = selfCopy;
          v144 = v201;
          if (v201 >= v202)
          {
            v146 = v201 - v200;
            if ((v146 + 1) >> 61)
            {
              sub_22107C148();
            }

            v147 = (v202 - v200) >> 2;
            if (v147 <= v146 + 1)
            {
              v147 = v146 + 1;
            }

            if (v202 - v200 >= 0x7FFFFFFFFFFFFFF8)
            {
              v148 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v148 = v147;
            }

            v189 = &v200;
            if (v148)
            {
              sub_22107C1F0(&v200, v148);
            }

            __p.coordinate = 0;
            __p._tableUID._lower = 8 * v146;
            v188 = 0;
            *__p._tableUID._lower = v143;
            __p._tableUID._upper = 8 * v146 + 8;
            sub_22107C098(&v200, &__p);
            v145 = v201;
            sub_22107C26C(&__p);
          }

          else
          {
            *v201 = v143;
            v145 = v144 + 1;
          }

          v201 = v145;
          sub_2211531C0(&v197, &v195);
          objc_msgSend_setFormulaObject_atIndex_formulaReplacer_(selfCopy->_formulaStore, v149, v180, v195, replacerCopy);
          v153 = objc_msgSend_mergeRangeCache(selfCopy, v150, v151, v152);
          objc_msgSend_setCellRange_atIndex_(v153, v154, *&v192.origin, *&v192.size, v195);

          if (TSUCellRect::isValid(&v194) && (v194.origin.row != v192.origin.row || ((*&v192.origin ^ *&v194.origin) & 0x101FFFF00000000) != 0))
          {
            objc_msgSend_p_moveCellFromCellCoord_toCellCoord_(selfCopy, v155, *&v194.origin, *&v192.origin);
          }

          v156 = objc_loadWeakRetained(&selfCopy->_tableModel);
          *&__p.coordinate.row = v192;
          objc_msgSend_clearSpillCellsInRange_(v156, v157, &__p, v158);

          objc_msgSend_p_dirtyCellsForMerge_(selfCopy, v159, &v192, v160);
          v164 = objc_msgSend_mergeChangeDistributor(selfCopy, v161, v162, v163);
          objc_msgSend_didMergeRange_(v164, v165, *&v192.origin, *&v192.size);
        }

        else
        {
          if (TSULogCat_IsCategoryEnabled())
          {
            TSUCellRect::isValid(&v194);
          }

          v48 = v114;
          v67 = v111;
          self = selfCopy;
        }
      }

      else if (TSULogCat_IsCategoryEnabled())
      {
        TSUCellRect::isValid(&v194);
      }

      ++v66;
    }

    while (v66 != v182);
  }

  if (v201 == v200)
  {
    v171 = 0;
    v166 = v183;
  }

  else
  {
    __p.coordinate = 0;
    __p._tableUID._lower = &__p;
    __p._tableUID._upper = 0x4812000000;
    v188 = sub_221398600;
    v189 = sub_221398624;
    v190 = &unk_22188E88F;
    memset(v191, 0, 24);
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = 3221225472;
    v186[2] = sub_22139B9F0;
    v186[3] = &unk_278463AC8;
    v186[4] = self;
    v186[5] = &__p;
    v166 = v183;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(v48, v64, v186, v65);
    v167 = [TSTMergeAction alloc];
    v171 = objc_msgSend_initWithType_uidRanges_(v167, v168, 3, __p._tableUID._lower + 48);
    v172 = v200;
    if (v201 != v200)
    {
      v173 = 0;
      do
      {
        objc_msgSend_addFormula_(v171, v169, v172[v173], v170);
        objc_msgSend_addFormulaIndex_(v171, v174, v197[v173++], v175);
        v172 = v200;
      }

      while (v173 < v201 - v200);
    }

    _Block_object_dispose(&__p, 8);
    v194.origin = v191;
    sub_2210BC30C(&v194);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  v196.var0 = &v200;
  sub_22107C2C0(&v196);

  return v171;
}

- (BOOL)find:(TSUModelCellRect)find
{
  size = find.var0.size;
  origin = find.var0.origin;
  v6 = objc_msgSend_mergeIndexesForRange_(self, a2, *&find.var0.origin, *&find.var0.size);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    for (i = objc_msgSend_firstIndex(v6, v10, v11, v12); ; i = objc_msgSend_indexGreaterThanIndex_(v6, v24, i, v25))
    {
      v17 = i != 0x7FFFFFFFFFFFFFFFLL;
      if (i == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v18 = objc_msgSend_mergeRangeCache(self, v13, v14, v15);
      v21 = objc_msgSend_cellRangeAtIndex_(v18, v19, i, v20);
      v23 = v22;

      if (origin.row == v21 && ((v21 ^ *&origin) & 0x101FFFF00000000) == 0 && size == v23)
      {
        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)p_enumerateMergesUsingBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_loadMergeCache(self, v4, v5, v6);
  v10 = objc_msgSend_mergeRangeCache(self, v7, v8, v9);
  objc_msgSend_enumerateCacheItemsUsingBlock_(v10, v11, blockCopy, v12);
}

- (void)enumerateMergesIntersectingBaseCellRegion:(id)region usingBlock:(id)block
{
  regionCopy = region;
  blockCopy = block;
  objc_msgSend_loadMergeCache(self, v7, v8, v9);
  v13 = objc_msgSend_mergeRangeCache(self, v10, v11, v12);
  objc_msgSend_enumerateCacheItemsIntersectingBaseCellRegion_usingBlock_(v13, v14, regionCopy, blockCopy);
}

- (void)enumerateMergeFormulasUsingBlock:(id)block
{
  blockCopy = block;
  formulaStore = self->_formulaStore;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22139BDB8;
  v9[3] = &unk_278463BB8;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_foreach_(formulaStore, v7, v9, v8);
}

- (id)mergedGridIndicesForDimension:(int64_t)dimension
{
  objc_msgSend_loadMergeCache(self, a2, dimension, v3);
  v9 = objc_msgSend_mergeRangeCache(self, v6, v7, v8);
  v12 = objc_msgSend_mergedGridIndicesForDimension_(v9, v10, dimension, v11);

  return v12;
}

- (vector<TSUModelCellRect,)allValidMergesForMergeList:()vector<TSUModelCellRect
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 != v5)
  {
    selfCopy = self;
    do
    {
      self = objc_msgSend_isValidMergeRange_(selfCopy, a3, *v4, v4[1]);
      if (self)
      {
        self = TSUCellRect::isSingleCell(v4);
        if ((self & 1) == 0)
        {
          sub_221083454(retstr, v4);
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return self;
}

+ (vector<TSUCellRect,)mergeListFromModelMergeList:()vector<TSUCellRect
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 != v5)
  {
    v7 = 0;
    do
    {
      cap = retstr->__cap_;
      if (v7 >= cap)
      {
        v9 = v7 - retstr->__begin_;
        if ((v9 + 1) >> 60)
        {
          sub_22107C148();
        }

        v10 = cap - retstr->__begin_;
        v11 = v10 >> 3;
        if (v10 >> 3 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          sub_221086F74(retstr, v12);
        }

        *(16 * v9) = *v4;
        v7 = (16 * v9 + 16);
        v13 = retstr->__end_ - retstr->__begin_;
        v14 = (16 * v9 - v13);
        memcpy(v14, retstr->__begin_, v13);
        result = retstr->__begin_;
        retstr->__begin_ = v14;
        retstr->__end_ = v7;
        retstr->__cap_ = 0;
        if (result)
        {
          operator delete(result);
        }
      }

      else
      {
        *v7++ = *v4;
      }

      retstr->__end_ = v7;
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

- (void)clearAllMergeRanges
{
  if ((objc_msgSend_isEmpty(self, a2, v2, v3) & 1) == 0)
  {
    v8 = objc_msgSend_tableModel(self, v5, v6, v7);
    objc_msgSend_willModify(v8, v9, v10, v11);

    objc_msgSend_mergeRanges(self, v12, v13, v14);
    v16 = v17;
    if (v17 != v18)
    {
      do
      {
        objc_msgSend_removeBaseMergeRange_(self, v15, *v16, v16[1]);
        v16 += 2;
      }

      while (v16 != v18);
      v16 = v17;
    }

    if (v16)
    {
      operator delete(v16);
    }
  }
}

- (vector<TSUModelCellRect,)mergeRanges
{
  objc_msgSend_loadMergeCache(self, a3, v3, v4);
  v9 = objc_msgSend_mergeRangeCache(self, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_mergeRanges(v9, v10, v11, v12);
  }

  else
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
  }

  objc_msgSend_allValidMergesForMergeList_(self, v10, &__p, v12);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTMergeOwner *)self
{
  size = a4.var0.size;
  origin = a4.var0.origin;
  objc_msgSend_loadMergeCache(self, a3, *&a4.var0.origin, *&a4.var0.size);
  v10 = objc_msgSend_mergeRangeCache(self, v7, v8, v9);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(v10, v11, origin, size);
  }

  else
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
  }

  objc_msgSend_allValidMergesForMergeList_(self, v11, &__p, v12);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTMergeOwner *)self
{
  v5 = a4;
  objc_msgSend_loadMergeCache(self, v6, v7, v8);
  v12 = objc_msgSend_mergeRangeCache(self, v9, v10, v11);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v12, v13, v5, v14);
  }

  else
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
  }

  objc_msgSend_allValidMergesForMergeList_(self, v13, &__p, v14);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesAndCrumbsIntersectingBaseCellRect:(TSTMergeOwner *)self
{
  size = a4.var0.size;
  origin = a4.var0.origin;
  objc_msgSend_loadMergeCache(self, a3, *&a4.var0.origin, *&a4.var0.size);
  v11 = objc_msgSend_mergeRangeCache(self, v8, v9, v10);
  v14 = v11;
  if (v11)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_includeCrumbs_(v11, v12, origin, size, 1);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (BOOL)hasMergeRanges
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (objc_msgSend_count(self, a2, v2, v3))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22139C470;
    v9[3] = &unk_278461220;
    v9[4] = &v10;
    objc_msgSend_p_enumerateMergesUsingBlock_(self, v5, v9, v6);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)hasMergeRangesIntersectingBaseCellRect:(const TSUModelCellRect *)rect
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (objc_msgSend_hasMergeRanges(self, a2, rect, v3))
  {
    v7 = objc_msgSend_regionFromModelCellRect_(TSTCellRegion, v6, *&rect->var0.origin, *&rect->var0.size);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22139C5CC;
    v11[3] = &unk_278461220;
    v11[4] = &v12;
    objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(self, v8, v7, v11);
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (BOOL)hasMergeRangesIntersectingBaseCellRegion:(id)region
{
  regionCopy = region;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (objc_msgSend_hasMergeRanges(self, v5, v6, v7))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22139C6CC;
    v11[3] = &unk_278461220;
    v11[4] = &v12;
    objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(self, v8, regionCopy, v11);
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)coord
{
  objc_msgSend_loadMergeCache(self, a2, *&coord, v3);
  mergeRangeCache = self->_mergeRangeCache;

  v9 = objc_msgSend_mergedRangeForBaseCellCoord_(mergeRangeCache, v6, *&coord, v7);
  result.var0.size = v10;
  result.var0.origin = v9;
  return result;
}

- (TSUModelCellCoord)mergeOriginForBaseCellCoord:(TSUModelCellCoord)coord
{
  coordCopy = coord;
  if ((objc_msgSend_isEmpty(self, a2, *&coord, v3) & 1) == 0)
  {
    v10.origin = objc_msgSend_mergedRangeForBaseCellCoord_(self, v6, coordCopy, v7);
    v10.size = v8;
    if (TSUCellRect::isValid(&v10))
    {
      return v10.origin;
    }
  }

  return coordCopy;
}

- (BOOL)mergeRangesPartiallyIntersectBaseCellRect:(TSUModelCellRect)rect
{
  size = rect.var0.size;
  origin = rect.var0.origin;
  objc_msgSend_loadMergeCache(self, a2, *&rect.var0.origin, *&rect.var0.size);
  v9 = objc_msgSend_mergeRangeCache(self, v6, v7, v8);
  LOBYTE(size.numberOfColumns) = objc_msgSend_partiallyIntersectsBaseCellRect_(v9, v10, origin, *&size);

  return size.numberOfColumns;
}

- (BOOL)mergeRangesPartiallyIntersectBaseCellRegion:(id)region
{
  regionCopy = region;
  objc_msgSend_loadMergeCache(self, v5, v6, v7);
  v11 = objc_msgSend_mergeRangeCache(self, v8, v9, v10);
  v14 = objc_msgSend_partiallyIntersectsBaseCellRegion_(v11, v12, regionCopy, v13);

  return v14;
}

- (BOOL)hasMergeRangeSpanningRowsForBaseCellRect:(TSUModelCellRect)rect
{
  var0 = rect.var0;
  if (!TSUCellRect::isValid(&var0))
  {
    return 0;
  }

  objc_msgSend_loadMergeCache(self, v4, v5, v6);
  v10 = objc_msgSend_mergeRangeCache(self, v7, v8, v9);
  hasRangeSpanningRowsForCellRect = objc_msgSend_hasRangeSpanningRowsForCellRect_(v10, v11, *&var0.origin, *&var0.size);

  return hasRangeSpanningRowsForCellRect;
}

- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)cells
{
  var0 = cells.var0;
  if (TSUCellRect::isValid(&var0))
  {
    objc_msgSend_loadMergeCache(self, v4, v5, v6);
    v10 = objc_msgSend_mergeRangeCache(self, v7, v8, v9);
    origin = objc_msgSend_expandBaseCellRectToCoverMergedCells_(v10, v11, *&var0.origin, *&var0.size);
    size = v13;
  }

  else
  {
    origin = var0.origin;
    size = var0.size;
  }

  v15 = origin;
  v16 = size;
  result.var0.size = v16;
  result.var0.origin = v15;
  return result;
}

- (id)expandBaseCellRegionToCoverMergedCells:(id)cells
{
  cellsCopy = cells;
  objc_msgSend_loadMergeCache(self, v5, v6, v7);
  v11 = objc_msgSend_mergeRangeCache(self, v8, v9, v10);
  v14 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v11, v12, cellsCopy, v13);

  return v14;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  objc_msgSend_loadMergeCache(self, a2, *&range.var0.origin, *&range.var0.size);
  v9 = objc_msgSend_mergeRangeCache(self, v6, v7, v8);
  LOBYTE(size.numberOfColumns) = objc_msgSend_hasRangeSpanningRowsForCellRange_(v9, v10, origin, *&size);

  return size.numberOfColumns;
}

- (BOOL)hasRangeSpanningRowsForCellRegion:(id)region
{
  regionCopy = region;
  objc_msgSend_loadMergeCache(self, v5, v6, v7);
  v11 = objc_msgSend_mergeRangeCache(self, v8, v9, v10);
  hasRangeSpanningRowsForCellRegion = objc_msgSend_hasRangeSpanningRowsForCellRegion_(v11, v12, regionCopy, v13);

  return hasRangeSpanningRowsForCellRegion;
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = sub_221119F90(map, &self->_ownerUID._lower);
  if (v7)
  {
    objc_msgSend_setOwnerUID_(self, v8, v7[4], v7[5]);
  }

  v11 = objc_msgSend_tableModel(self, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14);

  v18 = objc_msgSend_formulaStore(self, v15, v16, v17);
  v22 = objc_msgSend_tableModel(self, v19, v20, v21);
  v28[0] = objc_msgSend_tableUID(v22, v23, v24, v25);
  v28[1] = v26;
  objc_msgSend_remapRangeFormulasToOwnerUID_(v18, v26, v28, v27);
}

- (void)openRewritingTransaction
{
  v7 = objc_msgSend_mergeRangeCache(self, a2, v2, v3);
  objc_msgSend_openRewritingTransaction(v7, v4, v5, v6);
}

- (void)commitRewritingTransaction
{
  v7 = objc_msgSend_mergeRangeCache(self, a2, v2, v3);
  objc_msgSend_commitRewritingTransaction(v7, v4, v5, v6);
}

- (TSUModelCellRect)rewroteFormula:(id)formula atCoordinate:(TSUModelCellCoord)coordinate withRewriteSpec:(id)spec isUndo:(BOOL)undo
{
  coordinateCopy = coordinate;
  formulaCopy = formula;
  v34 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v8, formulaCopy, &coordinateCopy);
  v35 = v9;
  v11 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v9, &coordinateCopy, v10);
  v15 = objc_msgSend_mergeRangeCache(self, v12, v13, v14);
  v33[0] = objc_msgSend_cellRangeAtIndex_(v15, v16, v11, v17);
  v33[1] = v18;

  v19 = sub_2211E55F8(&v34, v33);
  v21 = v20;
  if ((objc_msgSend_isValidMergeRange_(self, v20, v34, v35) & 1) == 0)
  {
    v25 = objc_msgSend_mergeRangeCache(self, v22, v23, v24);
    objc_msgSend_removeCellRangeAtIndex_(v25, v26, v11, v27);
  }

  v28 = objc_msgSend_mergeIndexesForRange_(self, v22, v19, v21);
  objc_msgSend_reloadMergeCacheForIndexes_(self, v29, v28, v30);

  v31 = v19;
  v32 = v21;
  result.var0.size = v32;
  result.var0.origin = v31;
  return result;
}

- (void)rewriteMergesForRemovedRange:(_NSRange)range uids:(const void *)uids isRows:(BOOL)rows
{
  rowsCopy = rows;
  if (rows)
  {
    if (range.location >= 0xF423F)
    {
      location = 999999;
    }

    else
    {
      location = range.location;
    }

    v9 = sub_22139D0D0(location, (1000000 - range.location), range.location, range.length);
  }

  else
  {
    if (range.location >= 0x3E7)
    {
      v11 = 999;
    }

    else
    {
      v11 = range.location;
    }

    v9 = sub_22139D234(v11, (1000 - range.location), range.location, range.length);
  }

  v12 = objc_msgSend_mergeIndexesForRange_(self, v10, v9, v10);
  if (objc_msgSend_count(v12, v13, v14, v15))
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (!WeakRetained)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTMergeOwner rewriteMergesForRemovedRange:uids:isRows:]", v18);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 1154, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }

    v28 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v28, v29, v30, v31);
    v32 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_willModify(v32, v33, v34, v35);

    v36 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_beginSuppressingWillModifyCalls(v36, v37, v38, v39);

    v40 = [TSTFormulaRewriteSpec alloc];
    v61[0] = objc_msgSend_tableUID(v28, v41, v42, v43);
    v61[1] = v44;
    v45 = objc_msgSend_initForRemoveRowsOrColumnsFromTable_rowColumnUuids_areRows_(v40, v44, v61, uids, rowsCopy);
    objc_msgSend_setCanBeNested_(v45, v46, 0, v47);
    v48 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_willModifyTable_uidResolver_calcEngine_(v45, v49, v28, v28, v48);

    v50 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_didModifyTable_calcEngine_(v45, v51, v28, v50);

    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22139D3A4;
    v59[3] = &unk_27845DE60;
    v59[4] = self;
    v52 = v45;
    v60 = v52;
    objc_msgSend_enumerateIndexesUsingBlock_(v12, v53, v59, v54);
    v55 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_endSuppressingWillModifyCalls(v55, v56, v57, v58);
  }
}

- (void)rewriteMergesForInsertedRange:(_NSRange)range uids:(const void *)uids isRows:(BOOL)rows
{
  rowsCopy = rows;
  if (rows)
  {
    if (range.location >= 0xF423F)
    {
      location = 999999;
    }

    else
    {
      location = range.location;
    }

    v9 = sub_22139D0D0(location, (1000000 - range.location), range.location, range.length);
  }

  else
  {
    if (range.location >= 0x3E7)
    {
      v11 = 999;
    }

    else
    {
      v11 = range.location;
    }

    v9 = sub_22139D234(v11, (1000 - range.location), range.location, range.length);
  }

  v12 = objc_msgSend_mergeIndexesForRange_(self, v10, v9, v10);
  if (objc_msgSend_count(v12, v13, v14, v15))
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (!WeakRetained)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTMergeOwner rewriteMergesForInsertedRange:uids:isRows:]", v18);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 1222, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }

    v28 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v28, v29, v30, v31);
    v32 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_willModify(v32, v33, v34, v35);

    v36 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_beginSuppressingWillModifyCalls(v36, v37, v38, v39);

    v40 = [TSTFormulaRewriteSpec alloc];
    v68 = objc_msgSend_tableUID(v28, v41, v42, v43);
    v69 = v44;
    v45 = objc_msgSend_initForInsertingRowsOrColumnsIntoTable_rowColumnUuids_areRows_(v40, v44, &v68, uids, rowsCopy);
    objc_msgSend_setCanBeNested_(v45, v46, 0, v47);
    v51 = objc_msgSend_calcEngine(v28, v48, v49, v50);
    objc_msgSend_willModifyTable_uidResolver_calcEngine_(v45, v52, v28, v28, v51);

    objc_msgSend_didModifyTable_(v45, v53, v28, v54);
    v68 = 0;
    v69 = &v68;
    v70 = 0x4812000000;
    v71 = sub_22139D8AC;
    v72 = sub_22139D8D0;
    v73 = &unk_22188E88F;
    v75 = 0;
    v76 = 0;
    __p = 0;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_22139D8E8;
    v65[3] = &unk_278463BE0;
    v65[4] = self;
    v55 = v45;
    v66 = v55;
    v67 = &v68;
    objc_msgSend_enumerateIndexesUsingBlock_(v12, v56, v65, v57);
    v59 = v69[6];
    v60 = v69[7];
    while (v59 != v60)
    {
      objc_msgSend_setCellRange_atIndex_(self->_mergeRangeCache, v58, *v59, v59[1], v59[2]);
      v59 += 3;
    }

    v61 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_endSuppressingWillModifyCalls(v61, v62, v63, v64);

    _Block_object_dispose(&v68, 8);
    if (__p)
    {
      v75 = __p;
      operator delete(__p);
    }
  }
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  objc_storeWeak(&self->_calculationEngine, engineCopy);
  objc_msgSend_setCalcEngine_(self->_formulaStore, v7, engineCopy, v8);
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v11 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(WeakRetained, v10, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, d->_lower, d->_upper, 5);

  if (self->_formulaStore)
  {
    memset(v29, 0, sizeof(v29));
    v30 = 1065353216;
    v28 = xmmword_2217E18D0;
    v15 = objc_msgSend_tableModel(self, v12, v13, v14);
    v19 = objc_msgSend_tableUID(v15, v16, v17, v18);
    v21 = v20;
    v31 = &v28;
    v22 = sub_221230440(v29, &v28, &unk_2217E18F0, &v31);
    v22[4] = v19;
    v22[5] = v21;

    objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self, v23, v29, engineCopy);
    if (!v11)
    {
      objc_msgSend_registerAllFormulaToCalculationEngine(self->_formulaStore, v24, v25, v26);
    }

    sub_2210BDEC0(v29);
  }

  objc_msgSend_resetMergeCache(self, v12, v13, v14);

  return v11;
}

- (void)unregisterFromCalcEngine
{
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    objc_msgSend_setCalcEngine_(formulaStore, a2, 0, v2);
  }

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  objc_msgSend_unregisterOwner_(WeakRetained, v6, self->_ownerUID._lower, self->_ownerUID._upper);

  objc_storeWeak(&self->_calculationEngine, 0);
}

- (id)linkedResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end