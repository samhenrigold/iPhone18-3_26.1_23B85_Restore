@interface TSTCellRangeCache
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)range;
- (BOOL)hasRangeSpanningRowsForCellRect:(TSUModelCellRect)rect;
- (BOOL)hasRangeSpanningRowsForCellRegion:(id)region;
- (BOOL)partiallyIntersectsBaseCellRect:(TSUModelCellRect)rect;
- (BOOL)partiallyIntersectsBaseCellRegion:(id)region;
- (TSUModelCellRect)cellRangeAtIndex:(unint64_t)index;
- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)cells;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)coord;
- (id).cxx_construct;
- (id)expandBaseCellRegionToCoverMergedCells:(id)cells;
- (id)indexesForBaseCellRegion:(id)region;
- (id)indexesForRange:(TSUModelCellRect)range;
- (id)mergedGridIndicesForDimension:(int64_t)dimension;
- (vector<TSUModelCellRect,)mergeRanges;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTCellRangeCache *)self includeCrumbs:(SEL)crumbs;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTCellRangeCache *)self;
- (void)clear;
- (void)collectIndexes:(id)indexes forRange:(TSUModelCellRect)range;
- (void)commitRewritingTransaction;
- (void)dealloc;
- (void)enumerateCacheItemsIntersectingBaseCellRect:(TSUModelCellRect)rect includeCrumbs:(BOOL)crumbs usingBlock:(id)block;
- (void)enumerateCacheItemsIntersectingBaseCellRegion:(id)region usingBlock:(id)block;
- (void)enumerateCacheItemsUsingBlock:(id)block;
- (void)openRewritingTransaction;
- (void)p_updateIndexesForReplacingRangeAtIndex:(unint64_t)index withRange:(TSUModelCellRect)range;
- (void)removeCellRangeAtIndex:(unint64_t)index;
- (void)setCellRange:(TSUModelCellRect)range atIndex:(unint64_t)index;
@end

@implementation TSTCellRangeCache

- (void)dealloc
{
  transaction = self->_transaction;
  if (transaction)
  {
    v4 = transaction[4];
    if (v4)
    {
      transaction[5] = v4;
      operator delete(v4);
    }

    v5 = transaction[1];
    if (v5)
    {
      transaction[2] = v5;
      operator delete(v5);
    }

    MEMORY[0x223DA1450](transaction, 0x20C400FA29667);
  }

  self->_transaction = 0;
  v6.receiver = self;
  v6.super_class = TSTCellRangeCache;
  [(TSTCellRangeCache *)&v6 dealloc];
}

- (void)clear
{
  if (self->_transaction)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellRangeCache clear]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeCache.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 39, 0, "Clear with a BitGridTransaction open");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  sub_2210BE918(&self->_mergeRanges.__table_.__bucket_list_.__ptr_);
  sub_22116D454(&self->_mergeRangesRTree._rTree.m_root);

  sub_2215C25A0(&self->_mergedAtCellIds);
}

- (TSUModelCellRect)cellRangeAtIndex:(unint64_t)index
{
  indexCopy = index;
  v3 = sub_2210BE30C(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &indexCopy);
  v4 = (v3 + 3);
  if (!v3)
  {
    v4 = &xmmword_2217E0780;
  }

  v5 = *v4;
  v6 = *(v4 + 1);
  result.var0.size = v6;
  result.var0.origin = v5;
  return result;
}

- (void)openRewritingTransaction
{
  if (!self->_transaction)
  {
    operator new();
  }
}

- (void)commitRewritingTransaction
{
  transaction = self->_transaction;
  if (transaction)
  {
    sub_2215C2D78(transaction);
    v4 = self->_transaction;
    if (v4)
    {
      v5 = v4[4];
      if (v5)
      {
        v4[5] = v5;
        operator delete(v5);
      }

      v6 = v4[1];
      if (v6)
      {
        v4[2] = v6;
        operator delete(v6);
      }

      MEMORY[0x223DA1450](v4, 0x20C400FA29667);
    }

    self->_transaction = 0;
  }
}

- (void)p_updateIndexesForReplacingRangeAtIndex:(unint64_t)index withRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  v22.origin = objc_msgSend_cellRangeAtIndex_(self, a2, index, *&range.var0.origin);
  v22.size = v6;
  v20 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, index, v7) & 0xFFFFFFFFFFFFLL;
  v21 = 0xFFFF;
  if (TSUCellRect::isValid(&v22))
  {
    transaction = self->_transaction;
    v9 = TSUCellRect::columns(&v22);
    v11 = v10;
    v12 = TSUCellRect::rows(&v22);
    if (transaction)
    {
      v24.origin = v9;
      v24.size = v11;
      v25 = v12;
      v26 = v13;
      sub_22112A984(transaction + 8, &v24);
    }

    else
    {
      sub_2215C3428(&self->_mergedAtCellIds, v9, v11, v12, v13);
    }

    v24 = v22;
    sub_22116D44C(&self->_mergeRangesRTree, &v24, &v20);
  }

  if (TSUCellRect::isValid(&var0))
  {
    v14 = self->_transaction;
    v15 = TSUCellRect::columns(&var0);
    v17 = v16;
    v18 = TSUCellRect::rows(&var0);
    if (v14)
    {
      v24.origin = v15;
      v24.size = v17;
      v25 = v18;
      v26 = v19;
      sub_22112A984(v14 + 32, &v24);
    }

    else
    {
      sub_2215C32FC(&self->_mergedAtCellIds, v15, v17, v18, v19);
    }

    v24 = var0;
    sub_22116D448(&self->_mergeRangesRTree, &v24, &v20);
  }
}

- (void)setCellRange:(TSUModelCellRect)range atIndex:(unint64_t)index
{
  var0 = range.var0;
  indexCopy = index;
  if (TSUCellRect::isEmpty(&var0))
  {
    var0 = xmmword_2217E0780;
    objc_msgSend_p_updateIndexesForReplacingRangeAtIndex_withRange_(self, v6, index, 0x7FFF7FFFFFFFLL, 0);
  }

  else
  {
    objc_msgSend_p_updateIndexesForReplacingRangeAtIndex_withRange_(self, v6, index, *&var0.origin, *&var0.size);
  }

  if (TSUCellRect::isValid(&var0))
  {
    v10 = &indexCopy;
    v7 = sub_2211E5868(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &indexCopy, &unk_2217E0828, &v10);
    *(v7 + 3) = var0;
  }

  else
  {
    sub_2211E5A9C(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &indexCopy);
  }
}

- (void)removeCellRangeAtIndex:(unint64_t)index
{
  indexCopy = index;
  objc_msgSend_p_updateIndexesForReplacingRangeAtIndex_withRange_(self, a2, index, 0x7FFF7FFFFFFFLL, 0);
  sub_2211E5A9C(&self->_mergeRanges.__table_.__bucket_list_.__ptr_, &indexCopy);
}

- (void)collectIndexes:(id)indexes forRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  indexesCopy = indexes;
  if (TSUCellRect::isValid(&var0) && objc_msgSend_count(self, v6, v7, v8))
  {
    v11 = var0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211E3C34;
    v9[3] = &unk_278461180;
    v10 = indexesCopy;
    sub_22116D450(&self->_mergeRangesRTree._rTree.m_root, &v11, v9);
  }
}

- (id)indexesForRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  if (TSUCellRect::isValid(&var0) && objc_msgSend_count(self, v4, v5, v6))
  {
    v10 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9);
    objc_msgSend_collectIndexes_forRange_(self, v11, v10, *&var0.origin, *&var0.size);
    if (objc_msgSend_count(v10, v12, v13, v14))
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)indexesForBaseCellRegion:(id)region
{
  regionCopy = region;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_2211E3E88;
  v21 = sub_2211E3E98;
  v22 = 0;
  if (objc_msgSend_isValid(regionCopy, v5, v6, v7) && (objc_msgSend_isEmpty(regionCopy, v8, v9, v10) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2211E3EA0;
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

- (void)enumerateCacheItemsUsingBlock:(id)block
{
  blockCopy = block;
  v6 = 0;
  p_first_node = &self->_mergeRanges.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    blockCopy[2](blockCopy, p_first_node[2].__next_, p_first_node[3].__next_, p_first_node[4].__next_, &v6);
  }

  while ((v6 & 1) == 0);
}

- (void)enumerateCacheItemsIntersectingBaseCellRect:(TSUModelCellRect)rect includeCrumbs:(BOOL)crumbs usingBlock:(id)block
{
  var0 = rect.var0;
  blockCopy = block;
  if (TSUCellRect::isValid(&var0))
  {
    v9 = objc_msgSend_indexesForRange_(self, v8, *&var0.origin, *&var0.size);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211E40A8;
    v12[3] = &unk_2784611D0;
    v12[4] = self;
    crumbsCopy = crumbs;
    v13 = blockCopy;
    objc_msgSend_enumerateIndexesUsingBlock_(v9, v10, v12, v11);
  }
}

- (void)enumerateCacheItemsIntersectingBaseCellRegion:(id)region usingBlock:(id)block
{
  regionCopy = region;
  blockCopy = block;
  if (objc_msgSend_isValid(regionCopy, v8, v9, v10) && (objc_msgSend_isEmpty(regionCopy, v11, v12, v13) & 1) == 0)
  {
    v16 = objc_msgSend_indexesForBaseCellRegion_(self, v14, regionCopy, v15);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2211E4244;
    v19[3] = &unk_27845FE28;
    v19[4] = self;
    v20 = blockCopy;
    objc_msgSend_enumerateIndexesUsingBlock_(v16, v17, v19, v18);
  }
}

- (id)mergedGridIndicesForDimension:(int64_t)dimension
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, dimension, v3);
  v9 = v6;
  if (!dimension)
  {
    v10 = v25;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2211E44F0;
    v25[3] = &unk_2784611F8;
    v25[4] = v6;
    objc_msgSend_enumerateCacheItemsUsingBlock_(self, v13, v25, v14);
    goto LABEL_5;
  }

  if (dimension == 1)
  {
    v10 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2211E44A4;
    v26[3] = &unk_2784611F8;
    v26[4] = v6;
    objc_msgSend_enumerateCacheItemsUsingBlock_(self, v11, v26, v12);
LABEL_5:

    goto LABEL_7;
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCellRangeCache mergedGridIndicesForDimension:]", v8);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeCache.mm", v18);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 260, 0, "Invalid table dimension");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
LABEL_7:

  return v9;
}

- (vector<TSUModelCellRect,)mergeRanges
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = sub_2211E4660;
  v12 = sub_2211E4684;
  v13 = &unk_22188E88F;
  v15 = 0;
  v16 = 0;
  __p = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211E469C;
  v7[3] = &unk_278461220;
  v7[4] = &v8;
  objc_msgSend_enumerateCacheItemsUsingBlock_(self, a3, v7, v3);
  v5 = v9;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211E5AD4(retstr, v5[6], v5[7], (v5[7] - v5[6]) >> 4);
  _Block_object_dispose(&v8, 8);
  result = __p;
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTCellRangeCache *)self includeCrumbs:(SEL)crumbs
{
  v5 = a5;
  size = a4.var0.size;
  origin = a4.var0.origin;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = sub_2211E4660;
  v18 = sub_2211E4684;
  v19 = &unk_22188E88F;
  v21 = 0;
  v22 = 0;
  __p = 0;
  if ((objc_msgSend_isEmpty(self, crumbs, *&a4.var0.origin, *&a4.var0.size) & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211E4834;
    v13[3] = &unk_278461220;
    v13[4] = &v14;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_includeCrumbs_usingBlock_(self, v10, origin, size, v5, v13);
  }

  v11 = v15;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211E5AD4(retstr, v11[6], v11[7], (v11[7] - v11[6]) >> 4);
  _Block_object_dispose(&v14, 8);
  result = __p;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTCellRangeCache *)self
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = sub_2211E4660;
  v18 = sub_2211E4684;
  v19 = &unk_22188E88F;
  v21 = 0;
  v22 = 0;
  __p = 0;
  if ((objc_msgSend_isEmpty(self, v7, v8, v9) & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2211E49CC;
    v13[3] = &unk_278461220;
    v13[4] = &v14;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRegion_usingBlock_(self, v10, v6, v13);
  }

  v11 = v15;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211E5AD4(retstr, v11[6], v11[7], (v11[7] - v11[6]) >> 4);
  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return result;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)coord
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4012000000;
  v14 = sub_2211E4B48;
  v15 = nullsub_25;
  v16 = &unk_22188E88F;
  v17 = xmmword_2217E0780;
  if (coord._coord.row != 0x7FFFFFFF && (*&coord & 0xFFFF00000000) != 0x7FFF00000000 && sub_2215C3528(&self->_mergedAtCellIds._tiles.__begin_, coord._coord.column, coord._coord.row))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E4B58;
    v10[3] = &unk_278461220;
    v10[4] = &v11;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v5, *&coord, 0x100000001, v10);
  }

  v6 = v12[6];
  v7 = v12[7];
  _Block_object_dispose(&v11, 8);
  v8 = v6;
  v9 = v7;
  result.var0.size = v9;
  result.var0.origin = v8;
  return result;
}

- (BOOL)partiallyIntersectsBaseCellRect:(TSUModelCellRect)rect
{
  var0 = rect.var0;
  if (!TSUCellRect::isValid(&var0) || (TSUCellRect::isEmpty(&var0) & 1) != 0 || (objc_msgSend_isEmpty(self, v4, v5, v6) & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211E4C70;
    v10[3] = &unk_278461248;
    v11 = var0;
    v10[4] = &v12;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v7, *&var0.origin, *&var0.size, v10);
    v8 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v8 & 1;
}

- (BOOL)partiallyIntersectsBaseCellRegion:(id)region
{
  regionCopy = region;
  v8 = regionCopy;
  if (!regionCopy || (objc_msgSend_isEmpty(regionCopy, v5, v6, v7) & 1) != 0 || (objc_msgSend_isEmpty(self, v9, v10, v11) & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v17 = objc_msgSend_boundingCellRange(v8, v12, v13, v14);
    v19 = v18;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2211E4E44;
    v21[3] = &unk_278461270;
    v22 = v8;
    v23 = &v24;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v20, v17, v19, v21);
    v15 = *(v25 + 24);

    _Block_object_dispose(&v24, 8);
  }

  return v15 & 1;
}

- (BOOL)hasRangeSpanningRowsForCellRect:(TSUModelCellRect)rect
{
  size = rect.var0.size;
  origin = rect.var0.origin;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ((objc_msgSend_isEmpty(self, a2, *&rect.var0.origin, *&rect.var0.size) & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211E4F70;
    v9[3] = &unk_278461220;
    v9[4] = &v10;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v6, origin, size, v9);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)cells
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = sub_2211E4B48;
  v19 = nullsub_25;
  v20 = &unk_22188E88F;
  cellsCopy = cells;
  isEmpty = objc_msgSend_isEmpty(self, a2, *&cells.var0.origin, *&cells.var0.size);
  v6 = v16;
  if (isEmpty)
  {
    v8 = v16[6];
    v7 = v16[7];
  }

  else
  {
    v9 = MEMORY[0x277D85DD0];
    v8 = v16[6];
    do
    {
      do
      {
        v10 = v8;
        v7 = v6[7];
        v14[0] = v9;
        v14[1] = 3221225472;
        v14[2] = sub_2211E5110;
        v14[3] = &unk_278461220;
        v14[4] = &v15;
        objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v5, v8, v7, v14);
        v6 = v16;
        v8 = v16[6];
      }

      while (v8 != v10);
    }

    while (((v8 ^ v10) & 0x101FFFF00000000) != 0 || v16[7] != v7);
  }

  _Block_object_dispose(&v15, 8);
  v12 = v8;
  v13 = v7;
  result.var0.size = v13;
  result.var0.origin = v12;
  return result;
}

- (id)expandBaseCellRegionToCoverMergedCells:(id)cells
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_2211E3E88;
  v20 = sub_2211E3E98;
  cellsCopy = cells;
  v21 = cellsCopy;
  if ((objc_msgSend_isEmpty(self, v5, v6, v7) & 1) == 0)
  {
    v11 = objc_msgSend_boundingCellRange(cellsCopy, v8, v9, v10);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2211E52A8;
    v15[3] = &unk_278461220;
    v15[4] = &v16;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v12, v11, v12, v15);
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ((objc_msgSend_isEmpty(self, a2, *&range.var0.origin, *&range.var0.size) & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211E543C;
    v9[3] = &unk_278461220;
    v9[4] = &v10;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(self, v6, origin, size, v9);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)hasRangeSpanningRowsForCellRegion:(id)region
{
  regionCopy = region;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ((objc_msgSend_isEmpty(self, v5, v6, v7) & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211E5544;
    v11[3] = &unk_278461220;
    v11[4] = &v12;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRegion_usingBlock_(self, v8, regionCopy, v11);
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id).cxx_construct
{
  *&self->_mergeRanges.__table_.__first_node_.__next_ = 0u;
  self->_mergeRanges.__table_.__bucket_list_ = 0u;
  self->_mergeRanges.__table_.__max_load_factor_ = 1.0;
  sub_22116D444(&self->_mergeRangesRTree._rTree.m_root);
  self->_mergedAtCellIds._lastTileFoundAtIndex = 0;
  *&self->_mergedAtCellIds._tiles.__cap_ = 0u;
  *&self->_mergedAtCellIds._tiles.__begin_ = 0u;
  return self;
}

@end