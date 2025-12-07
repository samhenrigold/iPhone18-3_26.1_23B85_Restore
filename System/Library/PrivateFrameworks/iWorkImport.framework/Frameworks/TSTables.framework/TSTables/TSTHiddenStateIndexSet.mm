@interface TSTHiddenStateIndexSet
- (TSTHiddenStateIndexSet)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)visibleIndices;
- (unint64_t)findNthNextVisibleIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex;
- (unint64_t)findNthPreviousVisibleIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex;
- (void)enumerateVisibleIndexesInRange:(_NSRange)range usingBlock:(id)block;
- (void)setHidden:(BOOL)hidden atIndex:(unint64_t)index;
- (void)setHidden:(BOOL)hidden atIndexes:(id)indexes;
- (void)setHidden:(BOOL)hidden inRange:(_NSRange)range;
- (void)swapIndex:(unint64_t)index withIndex:(unint64_t)withIndex;
@end

@implementation TSTHiddenStateIndexSet

- (TSTHiddenStateIndexSet)init
{
  v6.receiver = self;
  v6.super_class = TSTHiddenStateIndexSet;
  v2 = [(TSTHiddenStateIndexSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
    visibleIndexSet = v2->_visibleIndexSet;
    v2->_visibleIndexSet = v3;
  }

  return v2;
}

- (void)setHidden:(BOOL)hidden atIndex:(unint64_t)index
{
  visibleIndexSet = self->_visibleIndexSet;
  if (hidden)
  {
    objc_msgSend_removeIndex_(visibleIndexSet, a2, index, index);
  }

  else
  {
    objc_msgSend_addIndex_(visibleIndexSet, a2, index, index);
  }
}

- (void)setHidden:(BOOL)hidden atIndexes:(id)indexes
{
  visibleIndexSet = self->_visibleIndexSet;
  if (hidden)
  {
    objc_msgSend_removeIndexes_(visibleIndexSet, a2, indexes, indexes);
  }

  else
  {
    objc_msgSend_addIndexes_(visibleIndexSet, a2, indexes, indexes);
  }
}

- (void)setHidden:(BOOL)hidden inRange:(_NSRange)range
{
  visibleIndexSet = self->_visibleIndexSet;
  if (hidden)
  {
    objc_msgSend_removeIndexesInRange_(visibleIndexSet, a2, range.location, range.length);
  }

  else
  {
    objc_msgSend_addIndexesInRange_(visibleIndexSet, a2, range.location, range.length);
  }
}

- (id)visibleIndices
{
  v4 = objc_msgSend_copy(self->_visibleIndexSet, a2, v2, v3);

  return v4;
}

- (unint64_t)findNthPreviousVisibleIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  fromIndexCopy = fromIndex;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = index;
  visibleIndexSet = self->_visibleIndexSet;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221219314;
  v7[3] = &unk_2784616A8;
  v7[4] = v8;
  v7[5] = &v9;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(visibleIndexSet, a2, 0, fromIndex, 2, v7);
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (unint64_t)findNthNextVisibleIndex:(unint64_t)index fromIndex:(unint64_t)fromIndex
{
  Index = objc_msgSend_lastIndex(self->_visibleIndexSet, a2, index, fromIndex);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  fromIndexCopy = fromIndex;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  indexCopy = index;
  visibleIndexSet = self->_visibleIndexSet;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2212194B8;
  v12[3] = &unk_2784616A8;
  v12[4] = &v13;
  v12[5] = &v17;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(visibleIndexSet, v9, fromIndex, Index + 1, 0, v12);
  if (v14[3])
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v18[3] = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v18[3];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v10;
}

- (void)enumerateVisibleIndexesInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  visibleIndexSet = self->_visibleIndexSet;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2212195BC;
  v11[3] = &unk_2784616D0;
  v12 = blockCopy;
  v9 = blockCopy;
  objc_msgSend_enumerateIndexesInRange_options_usingBlock_(visibleIndexSet, v10, location, length, 0, v11);
}

- (void)swapIndex:(unint64_t)index withIndex:(unint64_t)withIndex
{
  isIndexHidden = objc_msgSend_isIndexHidden_(self, a2, index, withIndex);
  v10 = objc_msgSend_isIndexHidden_(self, v8, withIndex, v9);
  objc_msgSend_setHidden_atIndex_(self, v11, isIndexHidden, withIndex);

  objc_msgSend_setHidden_atIndex_(self, v12, v10, index);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  v16 = objc_msgSend_mutableCopy(self->_visibleIndexSet, v13, v14, v15);
  objc_msgSend_setVisibleIndexSet_(v12, v17, v16, v18);

  return v12;
}

@end