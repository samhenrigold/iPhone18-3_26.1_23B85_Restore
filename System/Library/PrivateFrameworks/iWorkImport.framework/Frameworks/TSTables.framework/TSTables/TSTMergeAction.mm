@interface TSTMergeAction
+ (TSKUIDStructTract)cellUIDRangeFromMergeFormula:(SEL)formula calcEngine:(id)engine;
+ (id)mergeActionForGrowingRange:(const void *)range coveringRange:(const void *)coveringRange inTable:(id)table;
+ (id)mergeActionForInsertingRange:(const void *)range inTable:(id)table;
+ (id)mergeActionForRemovingRanges:(const void *)ranges inTable:(id)table;
+ (id)stringForMergeType:(int)type;
- (BOOL)hasMultiRowMerge;
- (TSTMergeAction)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTMergeAction)initWithType:(int)type;
- (TSTMergeAction)initWithType:(int)type uidRange:(const void *)range;
- (TSTMergeAction)initWithType:(int)type uidRanges:(const void *)ranges;
- (id).cxx_construct;
- (id)actionByExpandingWithAction:(id)action;
- (id)cellRegionForTable:(id)table;
- (id)copyWithZone:(_NSZone *)zone;
- (id)remapUIDsByColumnMap:(const void *)map rowMap:(const void *)rowMap ownerMap:(const void *)ownerMap;
- (id)shrinkAction;
- (void)addFormula:(id)formula;
- (void)addFormulaIndex:(unint64_t)index;
- (void)enumerateMergeFormulasUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setMergeFormulaIndexes:(const void *)indexes;
- (void)setMergeFormulas:(const void *)formulas;
- (void)setUidRanges:(const void *)ranges;
- (void)verify;
@end

@implementation TSTMergeAction

- (void)verify
{
  type = self->_type;
  if (type >= 3)
  {
    if (type == 4)
    {
      if (self->_uidRanges.__end_ == self->_uidRanges.__begin_)
      {
        goto LABEL_2;
      }

      begin = self->_mergeFormulas.__begin_;
      var0 = self->_mergeFormulas.var0;
    }

    else
    {
      if (type != 3)
      {
        return;
      }

      begin = self->_uidRanges.__begin_;
      var0 = self->_uidRanges.__end_;
    }

    if (var0 != begin)
    {
      return;
    }
  }

LABEL_2:
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTMergeAction verify]", v2);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeAction.mm", v8);
  v12 = objc_msgSend_stringForMergeType_(TSTMergeAction, v10, self->_type, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v13, v6, v9, 87, 0, "%@ has %lu covering ranges and %lu formulas with %lu indexes", v12, 0xAAAAAAAAAAAAAAABLL * ((self->_uidRanges.__end_ - self->_uidRanges.__begin_) >> 4), self->_mergeFormulas.var0 - self->_mergeFormulas.__begin_, self->_mergeFormulaIndexes.__end_ - self->_mergeFormulaIndexes.__begin_);

  v17 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v17, v14, v15, v16);
}

+ (id)stringForMergeType:(int)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_2784642E8[type];
  }
}

- (TSTMergeAction)initWithType:(int)type uidRange:(const void *)range
{
  v5 = *&type;
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_221086EBC(&v12, *range, *(range + 1), (*(range + 1) - *range) >> 4);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_221086EBC(&__p, *(range + 3), *(range + 4), (*(range + 4) - *(range + 3)) >> 4);
  memset(v10, 0, sizeof(v10));
  sub_2212D8368(v10, &v12, &v18, 1uLL);
  v8 = objc_msgSend_initWithType_uidRanges_(self, v7, v5, v10);
  v11 = v10;
  sub_2210BC30C(&v11);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return v8;
}

- (TSTMergeAction)initWithType:(int)type
{
  memset(v5, 0, sizeof(v5));
  v3 = objc_msgSend_initWithType_uidRanges_(self, a2, *&type, v5);
  v6 = v5;
  sub_2210BC30C(&v6);
  return v3;
}

- (TSTMergeAction)initWithType:(int)type uidRanges:(const void *)ranges
{
  v6 = objc_msgSend_init(self, a2, *&type, ranges);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = type;
    v8 = v6 + 16;
    if (&v7->_uidRanges != ranges)
    {
      sub_2213C3D6C(v8, *ranges, *(ranges + 1), 0xAAAAAAAAAAAAAAABLL * ((*(ranges + 1) - *ranges) >> 4));
    }
  }

  return v7;
}

+ (TSKUIDStructTract)cellUIDRangeFromMergeFormula:(SEL)formula calcEngine:(id)engine
{
  engineCopy = engine;
  memset(&v17, 0, sizeof(v17));
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v24, a5, &v17);
  v11 = objc_msgSend_const_astNodeArray(engineCopy, v8, v9, v10);
  sub_2212BB9E8(&v17, v11, &v24, 1);
  TSCEASTStreamIterator::rewrite(&v17, v12, v13, v14);
  if (v22 == __p || v20 == v19)
  {
    *&retstr->_colIdList.__cap_ = 0u;
    *&retstr->_rowIdList.__end_ = 0u;
    *&retstr->_colIdList.__begin_ = 0u;
  }

  else
  {
    sub_2210BBBE8(retstr, &__p, &v19);
  }

  v17.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v17, v15);
  return result;
}

+ (id)mergeActionForRemovingRanges:(const void *)ranges inTable:(id)table
{
  tableCopy = table;
  if (*(ranges + 1) == *ranges)
  {
    v11 = 0;
  }

  else
  {
    v6 = [TSTMergeAction alloc];
    v11 = objc_msgSend_initWithType_uidRanges_(v6, v7, 3, ranges);
    v12 = *ranges;
    v13 = *(ranges + 1);
    if (*ranges != v13)
    {
      do
      {
        v19[0] = objc_msgSend_tableUID(tableCopy, v8, v9, v10);
        v19[1] = v14;
        v15 = objc_msgSend_createFormulaForUIDRange_tableUID_(TSTFormulaStore, v14, v12, v19);
        objc_msgSend_addFormula_(v11, v16, v15, v17);

        v12 += 48;
      }

      while (v12 != v13);
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_type(self, v5, v6, v7);
  objc_msgSend_setType_(v4, v9, v8, v10);
  selfCopy = self;
  v15 = objc_msgSend_uidRanges(selfCopy, v12, v13, v14);
  objc_msgSend_setUidRanges_(v4, v16, v15, v17);
  selfCopy2 = self;
  v22 = objc_msgSend_mergeFormulas(selfCopy2, v19, v20, v21);
  objc_msgSend_setMergeFormulas_(v4, v23, v22, v24);
  selfCopy3 = self;
  v29 = objc_msgSend_mergeFormulaIndexes(selfCopy3, v26, v27, v28);
  objc_msgSend_setMergeFormulaIndexes_(v4, v30, v29, v31);
  return v4;
}

+ (id)mergeActionForGrowingRange:(const void *)range coveringRange:(const void *)coveringRange inTable:(id)table
{
  tableCopy = table;
  if (((*(coveringRange + 4) - *(coveringRange + 3)) >> 4) * ((*(coveringRange + 1) - *coveringRange) >> 4) && ((*(range + 4) - *(range + 3)) >> 4) * ((*(range + 1) - *range) >> 4))
  {
    v8 = [TSTMergeAction alloc];
    v10 = objc_msgSend_initWithType_uidRange_(v8, v9, 4, coveringRange);
    v19[0] = objc_msgSend_tableUID(tableCopy, v11, v12, v13);
    v19[1] = v14;
    v15 = objc_msgSend_createFormulaForUIDRange_tableUID_(TSTFormulaStore, v14, range, v19);
    objc_msgSend_addFormula_(v10, v16, v15, v17);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)mergeActionForInsertingRange:(const void *)range inTable:(id)table
{
  v4 = objc_msgSend_mergeActionForGrowingRange_coveringRange_inTable_(self, a2, range, range, table);

  return v4;
}

- (BOOL)hasMultiRowMerge
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v24);
  begin = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  if (begin == var0)
  {
    return 0;
  }

  v5 = begin + 1;
  do
  {
    v6 = *(v5 - 1);
    v10 = objc_msgSend_const_astNodeArray(v6, v7, v8, v9);
    sub_2212BC6C4(v19, v10, &v24);
    TSCEASTStreamIterator::rewrite(v19, v11, v12, v13);
    v15 = v23 - v22;
    v16 = (v23 - v22) > 0x10;
    v19[0] = &unk_2834A4000;
    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(v19, v14);

    if (v15 > 0x10)
    {
      break;
    }
  }

  while (v5++ != var0);
  return v16;
}

- (void)addFormula:(id)formula
{
  formulaCopy = formula;
  sub_22139A5DC(&self->_mergeFormulas.__begin_, &formulaCopy);
}

- (void)addFormulaIndex:(unint64_t)index
{
  end = self->_mergeFormulaIndexes.__end_;
  cap = self->_mergeFormulaIndexes.__cap_;
  if (end >= cap)
  {
    begin = self->_mergeFormulaIndexes.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      sub_22107C148();
    }

    v12 = cap - begin;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2210874C4(&self->_mergeFormulaIndexes, v14);
    }

    v15 = end - begin;
    v16 = (8 * v10);
    v17 = (8 * v10 - 8 * v15);
    *v16 = index;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_mergeFormulaIndexes.__begin_;
    self->_mergeFormulaIndexes.__begin_ = v17;
    self->_mergeFormulaIndexes.__end_ = v7;
    self->_mergeFormulaIndexes.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = index;
    v7 = end + 1;
  }

  self->_mergeFormulaIndexes.__end_ = v7;
}

- (TSTMergeAction)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v38.receiver = self;
  v38.super_class = TSTMergeAction;
  v6 = [(TSTMergeAction *)&v38 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = *(archive + 22);
    v8 = *(archive + 5);
    if (v8)
    {
      v9 = (v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(archive + 8);
    if (v10)
    {
      v11 = 8 * v10;
      do
      {
        MEMORY[0x223D9FC60](v37, *v9);
        MEMORY[0x223D9F8B0](v34, v37);
        sub_221398734(&v7->_uidRanges, v34);
        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }

        if (v34[0])
        {
          v34[1] = v34[0];
          operator delete(v34[0]);
        }

        MEMORY[0x223D9FC70](v37);
        ++v9;
        v11 -= 8;
      }

      while (v11);
    }

    v12 = *(archive + 14);
    sub_2213C3030(&v7->_mergeFormulas.__begin_, v12);
    if (v12 >= 1)
    {
      v13 = 8;
      do
      {
        v14 = [TSCEFormulaObject alloc];
        v37[0] = objc_msgSend_initWithArchive_isPreUFF_(v14, v15, *(*(archive + 8) + v13), 0);
        sub_22139A5DC(&v7->_mergeFormulas.__begin_, v37);

        v13 += 8;
        --v12;
      }

      while (v12);
    }

    v16 = *(archive + 18);
    sub_2211687C4(&v7->_mergeFormulaIndexes.__begin_, v16);
    if (v16 >= 1)
    {
      v17 = 0;
      end = v7->_mergeFormulaIndexes.__end_;
      v19 = 4 * v16;
      do
      {
        v20 = *(*(archive + 10) + v17);
        cap = v7->_mergeFormulaIndexes.__cap_;
        if (end >= cap)
        {
          begin = v7->_mergeFormulaIndexes.__begin_;
          v23 = end - begin;
          v24 = (end - begin) >> 3;
          v25 = v24 + 1;
          if ((v24 + 1) >> 61)
          {
            sub_22107C148();
          }

          v26 = cap - begin;
          if (v26 >> 2 > v25)
          {
            v25 = v26 >> 2;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFF8)
          {
            v27 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            sub_2210874C4(&v7->_mergeFormulaIndexes, v27);
          }

          v28 = (end - begin) >> 3;
          v29 = (8 * v24);
          v30 = (8 * v24 - 8 * v28);
          *v29 = v20;
          end = (v29 + 1);
          memcpy(v30, begin, v23);
          v31 = v7->_mergeFormulaIndexes.__begin_;
          v7->_mergeFormulaIndexes.__begin_ = v30;
          v7->_mergeFormulaIndexes.__end_ = end;
          v7->_mergeFormulaIndexes.__cap_ = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *end = v20;
          end += 8;
        }

        v17 += 4;
        v7->_mergeFormulaIndexes.__end_ = end;
      }

      while (v19 != v17);
    }
  }

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  type = self->_type;
  *(archive + 4) |= 1u;
  *(archive + 22) = type;
  begin = self->_uidRanges.__begin_;
  end = self->_uidRanges.__end_;
  while (begin != end)
  {
    v9 = *(archive + 5);
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = *(archive + 8);
    v11 = *v9;
    if (v10 < *v9)
    {
      *(archive + 8) = v10 + 1;
      v12 = *&v9[2 * v10 + 2];
      goto LABEL_10;
    }

    if (v11 == *(archive + 9))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v9 = *(archive + 5);
      v11 = *v9;
    }

    *v9 = v11 + 1;
    v12 = MEMORY[0x223DA0320](*(archive + 3));
    v13 = *(archive + 8);
    v14 = *(archive + 5) + 8 * v13;
    *(archive + 8) = v13 + 1;
    *(v14 + 8) = v12;
LABEL_10:
    TSKUIDStructTract::saveToMessage(begin++, v12);
  }

  v15 = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  while (v15 != var0)
  {
    v18 = *v15;
    v19 = *(archive + 8);
    if (!v19)
    {
      goto LABEL_18;
    }

    v20 = *(archive + 14);
    v21 = *v19;
    if (v20 < *v19)
    {
      *(archive + 14) = v20 + 1;
      objc_msgSend_encodeToArchive_archiver_(v18, v17, *&v19[2 * v20 + 2], archiverCopy);
      goto LABEL_20;
    }

    if (v21 == *(archive + 15))
    {
LABEL_18:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
      v19 = *(archive + 8);
      v21 = *v19;
    }

    *v19 = v21 + 1;
    v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(*(archive + 6));
    v23 = *(archive + 14);
    v24 = *(archive + 8) + 8 * v23;
    *(archive + 14) = v23 + 1;
    *(v24 + 8) = v22;
    objc_msgSend_encodeToArchive_archiver_(v18, v25, v22, archiverCopy);
LABEL_20:

    ++v15;
  }

  v26 = self->_mergeFormulaIndexes.__begin_;
  v27 = self->_mergeFormulaIndexes.__end_;
  if (v26 != v27)
  {
    v28 = *(archive + 18);
    do
    {
      v29 = *v26;
      if (v28 == *(archive + 19))
      {
        sub_2210BBC64(archive + 18, v28 + 1);
      }

      *(*(archive + 10) + 4 * v28++) = v29;
      *(archive + 18) = v28;
      ++v26;
    }

    while (v26 != v27);
  }
}

- (void)enumerateMergeFormulasUsingBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  begin = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  if (begin != var0)
  {
    v7 = begin + 1;
    do
    {
      v8 = *(v7 - 1);
      blockCopy[2](blockCopy, v8, &v11);
      v9 = v11;

      if (v9)
      {
        break;
      }
    }

    while (v7++ != var0);
  }
}

- (id)remapUIDsByColumnMap:(const void *)map rowMap:(const void *)rowMap ownerMap:(const void *)ownerMap
{
  memset(v30, 0, sizeof(v30));
  selfCopy = self;
  v13 = objc_msgSend_uidRanges(selfCopy, v10, v11, v12);
  v14 = *v13;
  v15 = *(v13 + 8);
  while (v14 != v15)
  {
    TSKUIDStructTract::remap(v27, v14, map, rowMap);
    sub_221398734(v30, v27);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    ++v14;
  }

  v16 = [TSTMergeAction alloc];
  v18 = objc_msgSend_initWithType_uidRanges_(v16, v17, self->_type, v30);
  begin = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  while (begin != var0)
  {
    v21 = *begin;
    v23 = objc_msgSend_copyByRemappingUids_rowMap_ownerMap_clearIfMissing_(v21, v22, map, rowMap, ownerMap, 1);
    objc_msgSend_addFormula_(v18, v24, v23, v25);

    ++begin;
  }

  v27[0] = v30;
  sub_2210BC30C(v27);

  return v18;
}

- (id)cellRegionForTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7);
  v12 = v8;
  begin = self->_uidRanges.__begin_;
  end = self->_uidRanges.__end_;
  if (begin == end)
  {
    v18 = v8;
  }

  else
  {
    do
    {
      v15 = objc_msgSend_cellRegionForUIDRange_(tableCopy, v9, begin, v11);
      v18 = objc_msgSend_regionByAddingRegion_(v12, v16, v15, v17);

      ++begin;
      v12 = v18;
    }

    while (begin != end);
  }

  v19 = self->_mergeFormulas.__begin_;
  var0 = self->_mergeFormulas.var0;
  if (v19 == var0)
  {
    v29 = v18;
  }

  else
  {
    do
    {
      v21 = *v19;
      v22 = objc_msgSend_calcEngine(tableCopy, v9, v10, v11);
      objc_msgSend_cellUIDRangeFromMergeFormula_calcEngine_(TSTMergeAction, v23, v21, v22);

      v26 = objc_msgSend_cellRegionForUIDRange_(tableCopy, v24, v33, v25);
      v29 = objc_msgSend_regionByAddingRegion_(v18, v27, v26, v28);

      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }

      ++v19;
      v18 = v29;
    }

    while (v19 != var0);
  }

  if (objc_msgSend_isValid(v29, v9, v10, v11))
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  return v30;
}

- (id)shrinkAction
{
  v3 = [TSTMergeAction alloc];
  v5 = objc_msgSend_initWithType_uidRanges_(v3, v4, 3, &self->_uidRanges);

  return v5;
}

- (id)actionByExpandingWithAction:(id)action
{
  actionCopy = action;
  v8 = objc_msgSend_copy(self, v5, v6, v7);
  if (objc_msgSend_hasMergeFormulas(actionCopy, v9, v10, v11))
  {
    v12 = v8;
    v16 = objc_msgSend_uidRanges(v12, v13, v14, v15);
    v76 = 0;
    v77 = 0;
    v78 = 0;
    sub_2210BC83C(&v76, *v16, v16[1], 0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 4));
    v17 = actionCopy;
    v21 = objc_msgSend_uidRanges(v17, v18, v19, v20);
    sub_2213C3FCC(&v76, v77, *v21, *(v21 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 8) - *v21) >> 4));
    v22 = [TSTMergeAction alloc];
    v24 = objc_msgSend_initWithType_uidRanges_(v22, v23, 4, &v76);

    v73 = 0;
    v74 = 0;
    v75 = 0;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v72);
    begin = self->_mergeFormulas.__begin_;
    for (i = self->_mergeFormulas.var0; begin != i; ++begin)
    {
      v27 = *begin;
      v31 = objc_msgSend_const_astNodeArray(v27, v28, v29, v30);
      sub_2212BC6C4(v67, v31, &v72);
      TSCEASTStreamIterator::rewrite(v67, v32, v33, v34);
      v35 = v74;
      if (v74 >= v75)
      {
        v38 = sub_2210BC488(&v73, &v68);
      }

      else
      {
        sub_2212D82F0(&v73, v74, &v68);
        v38 = v35 + 6;
      }

      v74 = v38;
      objc_msgSend_addFormula_(v24, v36, v27, v37);
      v67[0] = &unk_2834A4000;
      if (__p)
      {
        v71 = __p;
        operator delete(__p);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      TSCEASTStreamIterator::~TSCEASTStreamIterator(v67, v39);
    }

    v40 = actionCopy;
    v65 = actionCopy;
    v44 = objc_msgSend_mergeFormulas(v40, v41, v42, v43);
    v45 = *v44;
    v46 = *(v44 + 8);
    if (*v44 != v46)
    {
      do
      {
        v47 = *v45;
        v48 = *v45;
        v52 = objc_msgSend_const_astNodeArray(v48, v49, v50, v51);
        sub_2212BC6C4(v67, v52, &v72);
        TSCEASTStreamIterator::rewrite(v67, v53, v54, v55);
        memset(&v66, 0, 24);
        sub_221086EBC(&v66, v68, v69, (v69 - v68) >> 4);
        memset(&v66._rowIdList, 0, sizeof(v66._rowIdList));
        sub_221086EBC(&v66._rowIdList, __p, v71, (v71 - __p) >> 4);
        v58 = v73;
        v59 = v74;
        if (v73 == v74)
        {
LABEL_26:
          objc_msgSend_addFormula_(v24, v56, v48, v57);
        }

        else
        {
          v60 = -1;
          do
          {
            v61 = TSKUIDStructTract::intersects(&v66, v58);
            v62 = v61;
            if (v61)
            {
              if (!TSKUIDStructTract::contains(&v66, v58))
              {
                goto LABEL_24;
              }

              if (((v66._colIdList.__end_ - v66._colIdList.__begin_) >> 4) == ((v58->_colIdList.__end_ - v58->_colIdList.__begin_) >> 4) && ((v66._rowIdList.__end_ - v66._rowIdList.__begin_) >> 4) == ((v58->_rowIdList.__end_ - v58->_rowIdList.__begin_) >> 4))
              {
                goto LABEL_24;
              }

              if ((v60 & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              v60 = 0;
            }

            ++v58;
          }

          while (v58 != v59);
          if ((v62 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          if ((v60 & 0x80000000) == 0)
          {
            objc_storeStrong(v24[5], v47);
          }
        }

LABEL_27:
        if (v66._rowIdList.__begin_)
        {
          v66._rowIdList.__end_ = v66._rowIdList.__begin_;
          operator delete(v66._rowIdList.__begin_);
        }

        if (v66._colIdList.__begin_)
        {
          v66._colIdList.__end_ = v66._colIdList.__begin_;
          operator delete(v66._colIdList.__begin_);
        }

        v67[0] = &unk_2834A4000;
        if (__p)
        {
          v71 = __p;
          operator delete(__p);
        }

        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }

        TSCEASTStreamIterator::~TSCEASTStreamIterator(v67, v56);

        ++v45;
      }

      while (v45 != v46);
    }

    v67[0] = &v73;
    sub_2210BC30C(v67);
    v67[0] = &v76;
    sub_2210BC30C(v67);
    actionCopy = v65;
  }

  else
  {
    v24 = v8;
  }

  return v24;
}

- (void)setUidRanges:(const void *)ranges
{
  p_uidRanges = &self->_uidRanges;
  if (p_uidRanges != ranges)
  {
    sub_2213C3D6C(p_uidRanges, *ranges, *(ranges + 1), 0xAAAAAAAAAAAAAAABLL * ((*(ranges + 1) - *ranges) >> 4));
  }
}

- (void)setMergeFormulas:(const void *)formulas
{
  p_mergeFormulas = &self->_mergeFormulas;
  if (p_mergeFormulas != formulas)
  {
    sub_22116CF34(p_mergeFormulas, *formulas, *(formulas + 1), (*(formulas + 1) - *formulas) >> 3);
  }
}

- (void)setMergeFormulaIndexes:(const void *)indexes
{
  p_mergeFormulaIndexes = &self->_mergeFormulaIndexes;
  if (p_mergeFormulaIndexes != indexes)
  {
    sub_22128026C(p_mergeFormulaIndexes, *indexes, *(indexes + 1), (*(indexes + 1) - *indexes) >> 3);
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end