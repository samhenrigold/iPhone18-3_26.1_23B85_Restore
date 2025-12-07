@interface TSTCellRegion
+ (id)invalidRegion;
+ (id)region:(id)region addingRange:(TSUCellRect)range;
+ (id)region:(id)region addingRegion:(id)addingRegion;
+ (id)region:(id)region intersectingRange:(TSUCellRect)range;
+ (id)region:(id)region intersectingRegion:(id)intersectingRegion;
+ (id)region:(id)region subtractingColumnIndexes:(id)indexes;
+ (id)region:(id)region subtractingRange:(TSUCellRect)range;
+ (id)region:(id)region subtractingRegion:(id)subtractingRegion;
+ (id)region:(id)region subtractingRowIndexes:(id)indexes;
+ (id)regionFillingColumnsFromRegion:(id)region;
+ (id)regionFillingRowsFromRegion:(id)region;
+ (id)regionFromCellCoordSet:(const void *)set;
+ (id)regionFromCellDiffMap:(id)map withTableInfo:(id)info;
+ (id)regionFromCellIDVector:(const void *)vector;
+ (id)regionFromCellMap:(id)map withTableInfo:(id)info;
+ (id)regionFromCellMap:(id)map withTableInfo:(id)info passingTest:(id)test;
+ (id)regionFromCellRangeVector:(const void *)vector;
+ (id)regionFromCellTractRef:(id)ref;
+ (id)regionFromCellUIDVector:(const void *)vector withTableInfo:(id)info;
+ (id)regionFromColumnIndexes:(id)indexes rowIndexes:(id)rowIndexes;
+ (id)regionFromColumnIndices:(id)indices;
+ (id)regionFromColumnIndices:(id)indices rowRange:(_NSRange)range;
+ (id)regionFromMergeActionArray:(id)array withTableInfo:(id)info;
+ (id)regionFromMergeList:(const void *)list;
+ (id)regionFromModelMergeList:(const void *)list;
+ (id)regionFromOverlappingCellRangeVector:(const void *)vector;
+ (id)regionFromPropertyListRepresentation:(id)representation;
+ (id)regionFromRange:(TSUCellRect)range;
+ (id)regionFromRowIndices:(id)indices;
+ (id)regionFromRowIndices:(id)indices columnRange:(_NSRange)range;
+ (id)regionFromViewCellRectVector:(const void *)vector;
+ (id)unionEveryRangeInRegion:(id)region withRange:(TSUCellRect)range;
+ (vector<TSUCellRect,)combineNonOverlappingCellRanges:(id)ranges addingOverlappingCellRanges:(SEL)cellRanges;
- (BOOL)containsCellID:(TSUCellCoord)d;
- (BOOL)containsCellRange:(TSUCellRect)range;
- (BOOL)containsCellRegion:(id)region;
- (BOOL)equalsCellRange:(TSUCellRect)range;
- (BOOL)equalsCellRegion:(id)region;
- (BOOL)intersectsCellRange:(TSUCellRect)range;
- (BOOL)intersectsCellRegion:(id)region;
- (BOOL)intersectsColumn:(unsigned __int16)column;
- (BOOL)intersectsRow:(unsigned int)row;
- (BOOL)isEqual:(id)equal;
- (BOOL)partiallyIntersectsCellRange:(TSUCellRect)range;
- (TSCECellCoordSet)asCellCoordSet;
- (TSTCellRegion)init;
- (TSUCellCoord)suitableAnchor;
- (TSUCellCoord)suitableCursor;
- (TSUCellRect)boundingCellRange;
- (TSUCellRect)largestRangeContainingCellID:(TSUCellCoord)d;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)message;
- (id)intersectingColumnsInRow:(unsigned int)row;
- (id)isSingleCellWideOrHigh:(id)high;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newBottomToTopIterator;
- (id)newIterator;
- (id)newRightToLeftIterator;
- (id)p_copy;
- (id)propertyListRepresentation;
- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior;
- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block;
- (id)regionByAddingColumns:(id)columns;
- (id)regionByAddingModelCellRegion:(id)region;
- (id)regionByAddingRange:(TSUCellRect)range;
- (id)regionByAddingRegion:(id)region;
- (id)regionByAddingRows:(id)rows;
- (id)regionByAddingViewCellRegion:(id)region;
- (id)regionByApplyingRowMapping:(id)mapping;
- (id)regionByCollapsingRangesForRemovedColumns:(id)columns;
- (id)regionByCollapsingRangesForRemovedRows:(id)rows;
- (id)regionByIntersectingColumnIndices:(id)indices;
- (id)regionByIntersectingRange:(TSUCellRect)range;
- (id)regionByIntersectingRegion:(id)region;
- (id)regionByIntersectingRowIndices:(id)indices;
- (id)regionByMovingColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (id)regionByMovingRowsFromRange:(_NSRange)range toIndex:(unsigned int)index;
- (id)regionByRemovingColumns:(id)columns;
- (id)regionByRemovingRows:(id)rows;
- (id)regionBySubtractingColumnIndexes:(id)indexes;
- (id)regionBySubtractingModelCellRegion:(id)region;
- (id)regionBySubtractingRange:(TSUCellRect)range;
- (id)regionBySubtractingRegion:(id)region;
- (id)regionBySubtractingRowIndexes:(id)indexes;
- (id)regionBySubtractingViewCellRegion:(id)region;
- (id)regionByTrimmingAroundColumnIndices:(id)indices;
- (id)regionByTrimmingAroundRowIndices:(id)indices;
- (id)regionByUnioningEveryRangeInRegionWithRange:(TSUCellRect)range;
- (id)regionOffsetBy:(TSUColumnRowOffset)by;
- (unint64_t)hash;
- (vector<TSUCellRect,)rowBasedSubRangesOfCellCount:(TSTCellRegion *)self;
- (vector<TSUModelCellRect,)modelCellRanges;
- (void)enumerateCellIDsUsingBlock:(id)block;
- (void)enumerateCellRangesUsingBlock:(id)block;
- (void)enumerateColumnsInReverseUsingBlock:(id)block;
- (void)enumerateColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateColumnsUsingBlock:(id)block;
- (void)enumerateGridColumnsUsingBlock:(id)block;
- (void)enumerateGridRowsUsingBlock:(id)block;
- (void)enumerateInDirection:(int64_t)direction usingBlock:(id)block;
- (void)enumerateMissingColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateMissingRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateModelCellRectsUsingBlock:(id)block;
- (void)enumerateRowsInReverseUsingBlock:(id)block;
- (void)enumerateRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateRowsUsingBlock:(id)block;
- (void)enumerateViewCellRectsUsingBlock:(id)block;
- (void)fillCellRangeColMajorSet:(void *)set topToBottom:(BOOL)bottom;
- (void)fillCellRangeRowMajorSet:(void *)set leftToRight:(BOOL)right;
- (void)p_calculateAncillaryInformation;
- (void)p_copyFromRegion:(id)region;
- (void)p_insertRangeIntoRegion:(TSUCellRect)region;
- (void)saveToMessage:(void *)message;
@end

@implementation TSTCellRegion

- (TSTCellRegion)init
{
  v3.receiver = self;
  v3.super_class = TSTCellRegion;
  result = [(TSTCellRegion *)&v3 init];
  if (result)
  {
    result->_boundingCellRange = xmmword_2217E0780;
    result->_cellCount = 0;
    *&result->_firstCellID.row = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  return result;
}

- (id)initFromMessage:(const void *)message
{
  v8 = objc_msgSend_init(self, a2, message, v3);
  if (v8)
  {
    if (*(message + 6) >= 1)
    {
      v9 = 0;
      do
      {
        *&v12 = sub_22112397C(*(*(message + 4) + 8 * v9 + 8));
        *(&v12 + 1) = v10;
        sub_221083454(v8 + 8, &v12);
        ++v9;
      }

      while (v9 < *(message + 6));
    }

    objc_msgSend_p_calculateAncillaryInformation(v8, v5, v6, v7);
  }

  return v8;
}

- (void)saveToMessage:(void *)message
{
  begin = self->_cellRanges.__begin_;
  if (self->_cellRanges.__end_ != begin)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(message + 4);
      if (!v8)
      {
        goto LABEL_8;
      }

      v9 = *(message + 6);
      v10 = *v8;
      if (v9 >= *v8)
      {
        break;
      }

      *(message + 6) = v9 + 1;
      v11 = *&v8[2 * v9 + 2];
LABEL_10:
      sub_2211239EC(*&begin[v6].origin, *&begin[v6].size, v11);
      ++v7;
      begin = self->_cellRanges.__begin_;
      ++v6;
      if (v7 >= self->_cellRanges.__end_ - begin)
      {
        return;
      }
    }

    if (v10 == *(message + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
      v8 = *(message + 4);
      v10 = *v8;
    }

    *v8 = v10 + 1;
    v11 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(message + 2));
    v12 = *(message + 6);
    v13 = *(message + 4) + 8 * v12;
    *(message + 6) = v12 + 1;
    *(v13 + 8) = v11;
    begin = self->_cellRanges.__begin_;
    goto LABEL_10;
  }
}

+ (id)regionFromRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v5 = objc_alloc_init(objc_opt_class());
  v9 = v5;
  if (origin != 0x7FFFFFFF && (origin & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(size) && size)
  {
    objc_msgSend_p_insertRangeIntoRegion_(v5, v6, origin, size);
  }

  objc_msgSend_p_calculateAncillaryInformation(v9, v6, v7, v8);

  return v9;
}

+ (id)regionFromCellCoordSet:(const void *)set
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = sub_2214475B4;
  v12 = sub_2214475D8;
  v13 = &unk_22188E88F;
  v15 = 0;
  v16 = 0;
  __p = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214475F0;
  v7[3] = &unk_278465458;
  v7[4] = &v8;
  TSCECellCoordSet::enumerateColumnsUsingBlock(set, v7);
  v5 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v3, (v9 + 6), v4);
  _Block_object_dispose(&v8, 8);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v5;
}

+ (id)regionFromCellMap:(id)map withTableInfo:(id)info
{
  mapCopy = map;
  infoCopy = info;
  if (objc_msgSend_isUIDBased(mapCopy, v8, v9, v10))
  {
    v14 = objc_msgSend_cellUIDs(mapCopy, v11, v12, v13);
    v17 = objc_msgSend_cellRegionFromCellUIDList_(infoCopy, v15, v14, v16);
  }

  else
  {
    v17 = objc_msgSend_regionFromCellMap_withTableInfo_passingTest_(self, v11, mapCopy, infoCopy, 0);
  }

  return v17;
}

+ (id)regionFromCellMap:(id)map withTableInfo:(id)info passingTest:(id)test
{
  mapCopy = map;
  infoCopy = info;
  testCopy = test;
  if (mapCopy)
  {
    objc_msgSend_coordinatesForTableInfo_passingTest_(mapCopy, v9, infoCopy, testCopy);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  v12 = objc_msgSend_regionFromCellCoordSet_(TSTCellRegion, v9, &v14, v10);
  sub_22107C860(&v15, *(&v15 + 1));

  return v12;
}

+ (id)regionFromCellDiffMap:(id)map withTableInfo:(id)info
{
  mapCopy = map;
  infoCopy = info;
  if (objc_msgSend_isUIDBased(mapCopy, v7, v8, v9))
  {
    v13 = objc_msgSend_cellUIDList(mapCopy, v10, v11, v12);
    v16 = objc_msgSend_cellRegionFromCellUIDList_(infoCopy, v14, v13, v15);
  }

  else
  {
    v17 = objc_msgSend_cellIDs(mapCopy, v10, v11, v12);
    v16 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v18, v17, v19);
  }

  return v16;
}

+ (id)regionFromCellIDVector:(const void *)vector
{
  __p = 0;
  v29 = 0;
  v30 = 0;
  v27 = xmmword_2217E0780;
  v3 = *vector;
  v4 = *(vector + 1);
  if (*vector != v4)
  {
    v5 = 0;
    v6 = 0x7FFF7FFFFFFFLL;
    do
    {
      v7 = *v3;
      if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v5) || !v5)
      {
        v6 = *v3;
        v5 = 0x100000001;
      }

      else
      {
        if ((v6 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
        {
          v8 = v7 & 0xFFFF000000000000;
          v9 = 0x100000001;
          v6 = *v3;
          v10 = HIDWORD(v7);
        }

        else
        {
          v10 = HIDWORD(v6);
          if ((v7 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
          {
            goto LABEL_13;
          }

          if (v6 > v7 || v6 + HIDWORD(v5) - 1 < v7 || WORD2(v6) > WORD2(v7))
          {
            goto LABEL_15;
          }

          v15 = v5 + WORD2(v6) - 1;
          if (WORD2(v6) == 0x7FFF || v5 == 0)
          {
            v15 = 0x7FFF;
          }

          if (v15 >= WORD2(v7))
          {
LABEL_13:
            v8 = v6 & 0xFFFF000000000000;
            v9 = v5;
          }

          else
          {
LABEL_15:
            v8 = 0;
            if (WORD2(v6) >= WORD2(v7))
            {
              v11 = HIDWORD(v7);
            }

            else
            {
              v11 = HIDWORD(v6);
            }

            if (v6 >= v7)
            {
              v12 = *v3;
            }

            else
            {
              v12 = v6;
            }

            v13 = v5 + WORD2(v6) - 1;
            if (WORD2(v6) == 0x7FFF)
            {
              v13 = 0x7FFF;
            }

            if (WORD2(v7) > v13)
            {
              v13 = WORD2(*v3);
            }

            v14 = v6 + HIDWORD(v5) - 1;
            if (v14 <= v7)
            {
              v14 = *v3;
            }

            v9 = ((v13 - v11 + 1) | ((v14 - v12) << 32)) + 0x100000000;
            LODWORD(v6) = v12;
            LOWORD(v10) = v11;
          }
        }

        if (HIDWORD(v9) * v9 == (HIDWORD(v5) * v5) + 1)
        {
          v6 = v8 | v6 | (v10 << 32);
          v5 = v9;
        }

        else
        {
          sub_221083454(&__p, &v27);
          v5 = 0x100000001;
          v6 = v7;
        }
      }

      *&v27 = v6;
      *(&v27 + 1) = v5;
      ++v3;
    }

    while (v3 != v4);
    v17 = v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000;
    v18 = v5;
    v19 = HIDWORD(v5);
    if (!v17 && v19 != 0 && v18 != 0)
    {
      sub_221083454(&__p, &v27);
    }
  }

  v22 = objc_opt_class();
  v25 = objc_msgSend_regionFromCellRangeVector_(v22, v23, &__p, v24, v27);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v25;
}

+ (id)regionFromCellUIDVector:(const void *)vector withTableInfo:(id)info
{
  infoCopy = info;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v9 = *vector;
  v10 = *(vector + 1);
  if (*vector != v10)
  {
    do
    {
      v11 = v9[1];
      v24 = *v9;
      v25 = v11;
      v23[0] = v24;
      v23[1] = v11;
      v12 = objc_msgSend_cellIDForCellUID_(infoCopy, v6, v23, v7);
      v13 = v27;
      if (v27 >= v28)
      {
        v15 = (v27 - __p) >> 3;
        if ((v15 + 1) >> 61)
        {
          sub_22107C148();
        }

        v16 = (v28 - __p) >> 2;
        if (v16 <= v15 + 1)
        {
          v16 = v15 + 1;
        }

        if (v28 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          sub_2210874C4(&__p, v17);
        }

        v18 = (8 * v15);
        *v18 = v12;
        v14 = 8 * v15 + 8;
        v19 = v18 - (v27 - __p);
        memcpy(v19, __p, v27 - __p);
        v20 = __p;
        __p = v19;
        v27 = v14;
        v28 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v27 = v12;
        v14 = (v13 + 8);
      }

      v27 = v14;
      v9 += 2;
    }

    while (v9 != v10);
  }

  v21 = objc_msgSend_regionFromCellIDVector_(self, v6, &__p, v7);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return v21;
}

+ (id)regionFromCellRangeVector:(const void *)vector
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = *vector;
  v7 = *(vector + 1);
  v8 = v7 - *vector;
  if (v7 != *vector)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_22116C9DC(&__p, v6, v7, v8 >> 4);
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v9, &__p, &v17);
    v10 = v12;
    if (v12 != v13)
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v5, v6, *v10, v10[1]);
        v10 += 2;
      }

      while (v10 != v13);
      v10 = v12;
    }

    if (v10)
    {
      operator delete(v10);
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  objc_msgSend_p_calculateAncillaryInformation(v5, v6, v7, v4);

  return v5;
}

+ (id)regionFromOverlappingCellRangeVector:(const void *)vector
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = *vector;
  v7 = *(vector + 1);
  v8 = v7 - *vector;
  if (v7 != *vector)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    sub_22116C9DC(&v17, v6, v7, v8 >> 4);
    __p = 0;
    v15 = 0;
    v16 = 0;
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v9, &__p, &v17);
    v10 = v12;
    if (v12 != v13)
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v5, v6, *v10, v10[1]);
        v10 += 2;
      }

      while (v10 != v13);
      v10 = v12;
    }

    if (v10)
    {
      operator delete(v10);
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  objc_msgSend_p_calculateAncillaryInformation(v5, v6, v7, v4);

  return v5;
}

+ (id)regionFromMergeList:(const void *)list
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  __p = 0;
  v43 = 0;
  v44 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  v3 = *list;
  v38 = *(list + 1);
  if (*list != v38)
  {
    do
    {
      v4 = TSUCellRect::rows(v3);
      v6 = v5;
      v7 = TSUCellRect::columns(v3);
      v9 = v4 + v6;
      v39 = v4;
      if (v4 < v4 + v6)
      {
        v10 = v7;
        v11 = v8;
        do
        {
          v12 = sub_2210BE30C(v40, &v39);
          if (v12)
          {
            v14 = v12[3];
            v18 = objc_msgSend_count(v14, v15, v16, v17);
            objc_msgSend_addIndexesInRange_(v14, v19, v10, v11);
            v23 = objc_msgSend_count(v14, v20, v21, v22);

            if (v18 + v11 != v23)
            {
              p_p = &__p;
              goto LABEL_10;
            }
          }

          else
          {
            v24 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v13, v10, v11);
            v48 = &v39;
            v25 = sub_221453794(v40, &v39, &unk_2217E1D70, &v48);
            v26 = v25[3];
            v25[3] = v24;
          }

          ++v39;
        }

        while (v39 < v9);
      }

      p_p = &v45;
LABEL_10:
      sub_221083454(p_p, v3++);
    }

    while (v3 != v38);
  }

  v28 = objc_opt_class();
  v31 = objc_msgSend_regionFromCellRangeVector_(v28, v29, &v45, v30);
  v33 = v31;
  v34 = __p;
  v35 = v43;
  if (__p == v43)
  {
    v36 = v31;
  }

  else
  {
    do
    {
      v36 = objc_msgSend_regionByAddingRange_(v33, v32, *v34, v34[1]);

      v34 += 2;
      v33 = v36;
    }

    while (v34 != v35);
  }

  sub_221087B80(v40);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return v36;
}

+ (id)regionFromModelMergeList:(const void *)list
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  v5 = *list;
  v6 = *(list + 1);
  while (v5 != v6)
  {
    v9 = *v5;
    sub_221083454(&__p, &v9);
    ++v5;
  }

  v7 = objc_msgSend_regionFromMergeList_(self, a2, &__p, v3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v7;
}

+ (id)regionFromMergeActionArray:(id)array withTableInfo:(id)info
{
  arrayCopy = array;
  infoCopy = info;
  v7 = objc_alloc_init(objc_opt_class());
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_2214486E8;
  v21 = &unk_278465480;
  v8 = infoCopy;
  v22 = v8;
  v9 = v7;
  v23 = v9;
  objc_msgSend_enumerateObjectsUsingBlock_(arrayCopy, v10, &v18, v11);
  objc_msgSend_p_calculateAncillaryInformation(v9, v12, v13, v14, v18, v19, v20, v21);
  v15 = v23;
  v16 = v9;

  return v9;
}

+ (id)regionFromCellTractRef:(id)ref
{
  refCopy = ref;
  v4 = objc_alloc_init(objc_opt_class());
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22144893C;
  v12[3] = &unk_2784654A8;
  v5 = v4;
  v13 = v5;
  objc_msgSend_foreachRangeRef_(refCopy, v6, v12, v7);
  objc_msgSend_p_calculateAncillaryInformation(v5, v8, v9, v10);

  return v5;
}

+ (id)region:(id)region addingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  *(&v30 + 1) = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v10 = objc_alloc_init(objc_opt_class());
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v7, v8, v9) & 1) == 0)
  {
    v14 = regionCopy;
    v18 = objc_msgSend_cellRanges(v14, v15, v16, v17);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_22116C9DC(&v26, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 4);
    *&v29 = origin;
    *(&v29 + 1) = size;
    v24 = 0;
    v25 = 0;
    __p = 0;
    sub_2214539F0(&__p, &v29, &v30, 1uLL);
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v19, &v26, &__p);
    v21 = *(&v29 + 1);
    v20 = v29;
    if (v29 != *(&v29 + 1))
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v10, v11, *v20, v20[1]);
        v20 += 2;
      }

      while (v20 != v21);
      v20 = v29;
    }

    if (v20)
    {
      *(&v29 + 1) = v20;
      operator delete(v20);
    }

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }

  else
  {
    objc_msgSend_p_insertRangeIntoRegion_(v10, v7, origin, size);
  }

  objc_msgSend_p_calculateAncillaryInformation(v10, v11, v12, v13);

  return v10;
}

+ (id)region:(id)region subtractingRange:(TSUCellRect)range
{
  rangeCopy = range;
  regionCopy = region;
  v8 = regionCopy;
  if (!regionCopy)
  {
    v24 = objc_alloc_init(objc_opt_class());
    goto LABEL_12;
  }

  if ((objc_msgSend_isEmpty(regionCopy, v5, v6, v7) & 1) != 0 || (v35.origin = objc_msgSend_boundingCellRange(v8, v9, v10, v11), v35.size = v12, (TSUCellRect::intersects(&v35, &rangeCopy) & 1) == 0))
  {
    v24 = v8;
LABEL_12:
    v14 = v24;
    goto LABEL_13;
  }

  v13 = objc_alloc_init(objc_opt_class());
  v35.origin = 0;
  v35.size = &v35;
  v36 = 0x2020000000;
  v37 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_221448D74;
  v26[3] = &unk_2784654D0;
  v30 = rangeCopy;
  v28 = &v31;
  v29 = &v35;
  v14 = v13;
  v27 = v14;
  objc_msgSend_enumerateCellRangesUsingBlock_(v8, v15, v26, v16);
  if (v32[6] >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      objc_msgSend_p_insertRangeIntoRegion_(v14, v17, *(*(*&v35.size + 24) + v18), *(*(*&v35.size + 24) + v18 + 8));
      ++v19;
      v18 += 16;
    }

    while (v19 < v32[6]);
  }

  v20 = *(*&v35.size + 24);
  if (v20)
  {
    free(v20);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  objc_msgSend_p_calculateAncillaryInformation(v14, v21, v22, v23);
LABEL_13:

  return v14;
}

+ (id)region:(id)region subtractingRowIndexes:(id)indexes
{
  regionCopy = region;
  indexesCopy = indexes;
  v10 = indexesCopy;
  if (regionCopy)
  {
    if (objc_msgSend_count(indexesCopy, v7, v8, v9))
    {
      v30.origin = objc_msgSend_boundingCellRange(regionCopy, v11, v12, v13);
      v30.size = v14;
      if (TSUCellRect::intersectsRowIndexes(&v30, v10))
      {
        v18 = MEMORY[0x277CCAB58];
        v30.origin = objc_msgSend_boundingCellRange(regionCopy, v15, v16, v17);
        v30.size = v19;
        v20 = TSUCellRect::rows(&v30);
        v22 = objc_msgSend_indexSetWithIndexesInRange_(v18, v21, v20, v21);
        objc_msgSend_removeIndexes_(v22, v23, v10, v24);
        v27 = objc_msgSend_regionByIntersectingRowIndices_(regionCopy, v25, v22, v26);

        goto LABEL_8;
      }
    }

    v28 = regionCopy;
  }

  else
  {
    v28 = objc_alloc_init(objc_opt_class());
  }

  v27 = v28;
LABEL_8:

  return v27;
}

+ (id)region:(id)region subtractingColumnIndexes:(id)indexes
{
  regionCopy = region;
  indexesCopy = indexes;
  v10 = indexesCopy;
  if (regionCopy)
  {
    if (objc_msgSend_count(indexesCopy, v7, v8, v9))
    {
      v30.origin = objc_msgSend_boundingCellRange(regionCopy, v11, v12, v13);
      v30.size = v14;
      if (TSUCellRect::intersectsColumnIndexes(&v30, v10))
      {
        v18 = MEMORY[0x277CCAB58];
        v30.origin = objc_msgSend_boundingCellRange(regionCopy, v15, v16, v17);
        v30.size = v19;
        v20 = TSUCellRect::columns(&v30);
        v22 = objc_msgSend_indexSetWithIndexesInRange_(v18, v21, v20, v21);
        objc_msgSend_removeIndexes_(v22, v23, v10, v24);
        v27 = objc_msgSend_regionByIntersectingColumnIndices_(regionCopy, v25, v22, v26);

        goto LABEL_8;
      }
    }

    v28 = regionCopy;
  }

  else
  {
    v28 = objc_alloc_init(objc_opt_class());
  }

  v27 = v28;
LABEL_8:

  return v27;
}

+ (id)region:(id)region intersectingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  regionCopy = region;
  v7 = objc_alloc_init(objc_opt_class());
  v11 = v7;
  if (regionCopy)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221449540;
    v15[3] = &unk_2784654F8;
    v17 = origin;
    v18 = size;
    v16 = v7;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v12, v15, v13);
  }

  objc_msgSend_p_calculateAncillaryInformation(v11, v8, v9, v10);

  return v11;
}

+ (id)unionEveryRangeInRegion:(id)region withRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  regionCopy = region;
  v7 = objc_alloc_init(objc_opt_class());
  v10 = v7;
  if (regionCopy)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x4812000000;
    v24 = sub_2214475B4;
    v25 = sub_2214475D8;
    v26 = &unk_22188E88F;
    v28 = 0;
    v29 = 0;
    __p = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2214497E4;
    v20[3] = &unk_278465520;
    v20[5] = origin;
    v20[6] = size;
    v20[4] = &v21;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v8, v20, v9);
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v11, &v30, (v22 + 6));
    v13 = v18;
    if (v18 != v19)
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v10, v12, *v13, v13[1]);
        v13 += 2;
      }

      while (v13 != v19);
      v13 = v18;
    }

    if (v13)
    {
      operator delete(v13);
    }

    _Block_object_dispose(&v21, 8);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }

  else
  {
    objc_msgSend_p_insertRangeIntoRegion_(v7, v8, origin, size);
  }

  objc_msgSend_p_calculateAncillaryInformation(v10, v14, v15, v16);

  return v10;
}

+ (id)region:(id)region addingRegion:(id)addingRegion
{
  regionCopy = region;
  addingRegionCopy = addingRegion;
  if (!(regionCopy | addingRegionCopy))
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (!regionCopy || (objc_msgSend_isValid(regionCopy, v6, v7, v8) & 1) == 0)
  {
    v26 = objc_msgSend_p_copy(addingRegionCopy, v6, v7, v8);
LABEL_13:
    v10 = v26;
    goto LABEL_14;
  }

  if (!addingRegionCopy || (objc_msgSend_isValid(addingRegionCopy, v6, v7, v8) & 1) == 0)
  {
    v26 = objc_msgSend_p_copy(regionCopy, v6, v7, v8);
    goto LABEL_13;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = objc_msgSend_cellRangeCount(regionCopy, v6, v7, v8);
  if (v11 <= objc_msgSend_cellRangeCount(addingRegionCopy, v12, v13, v14))
  {
    v28 = addingRegionCopy;
    v32 = objc_msgSend_cellRanges(v28, v29, v30, v31);
    if (&v46 != v32)
    {
      sub_2210BD068(&v46, *v32, v32[1], (v32[1] - *v32) >> 4);
    }

    v33 = regionCopy;
    v24 = objc_msgSend_cellRanges(v33, v34, v35, v36);
  }

  else
  {
    v15 = regionCopy;
    v19 = objc_msgSend_cellRanges(v15, v16, v17, v18);
    if (&v46 != v19)
    {
      sub_2210BD068(&v46, *v19, v19[1], (v19[1] - *v19) >> 4);
    }

    v20 = addingRegionCopy;
    v24 = objc_msgSend_cellRanges(v20, v21, v22, v23);
  }

  if (&v43 != v24)
  {
    sub_2210BD068(&v43, *v24, v24[1], (v24[1] - *v24) >> 4);
  }

  objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v25, &v46, &v43);
  v10 = objc_alloc_init(objc_opt_class());
  for (i = __p; i != v42; i += 2)
  {
    objc_msgSend_p_insertRangeIntoRegion_(v10, v37, *i, i[1]);
  }

  objc_msgSend_p_calculateAncillaryInformation(v10, v37, v38, v39);
  if (__p)
  {
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

LABEL_14:

  return v10;
}

+ (id)region:(id)region subtractingRegion:(id)subtractingRegion
{
  regionCopy = region;
  subtractingRegionCopy = subtractingRegion;
  if (objc_msgSend_isValid(regionCopy, v8, v9, v10))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_221449C00;
    v23 = sub_221449C10;
    v24 = objc_msgSend_p_copy(regionCopy, v11, v12, v13);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_221449C18;
    v18[3] = &unk_278465548;
    v18[4] = &v19;
    v18[5] = self;
    objc_msgSend_enumerateCellRangesUsingBlock_(subtractingRegionCopy, v14, v18, v15);
    v16 = v20[5];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v16 = regionCopy;
  }

  return v16;
}

+ (id)region:(id)region intersectingRegion:(id)intersectingRegion
{
  regionCopy = region;
  intersectingRegionCopy = intersectingRegion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_221449C00;
  v22 = sub_221449C10;
  v23 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221449DFC;
  v15[3] = &unk_278465570;
  v17 = &v18;
  v10 = regionCopy;
  v16 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(intersectingRegionCopy, v11, v15, v12);
  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

+ (id)invalidRegion
{
  v2 = objc_alloc_init(objc_opt_class());
  objc_msgSend_p_calculateAncillaryInformation(v2, v3, v4, v5);

  return v2;
}

+ (id)regionFillingColumnsFromRegion:(id)region
{
  regionCopy = region;
  v7 = regionCopy;
  if (regionCopy && !objc_msgSend_isEmpty(regionCopy, v4, v5, v6))
  {
    v9 = objc_alloc_init(objc_opt_class());
    v31 = 0;
    v32 = &v31;
    v33 = 0x4012000000;
    v34 = sub_22144A098;
    v35 = nullsub_79;
    v36 = &unk_22188E88F;
    v37 = 0;
    v13 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v10, v11, v12);
    v17 = objc_msgSend_maxNumberOfRows(v13, v14, v15, v16);
    *(v32 + 15) = v17;

    v18 = v7[7];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_22144A0A8;
    v28 = &unk_2784623E0;
    v30 = &v31;
    v8 = v9;
    v29 = v8;
    objc_msgSend_enumerateRangesUsingBlock_(v18, v19, &v25, v20);
    objc_msgSend_p_calculateAncillaryInformation(v8, v21, v22, v23, v25, v26, v27, v28);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (id)regionFillingRowsFromRegion:(id)region
{
  regionCopy = region;
  v7 = regionCopy;
  if (regionCopy && !objc_msgSend_isEmpty(regionCopy, v4, v5, v6))
  {
    v9 = objc_alloc_init(objc_opt_class());
    v31 = 0;
    v32 = &v31;
    v33 = 0x4012000000;
    v34 = sub_22144A098;
    v35 = nullsub_79;
    v36 = &unk_22188E88F;
    v37 = 0;
    v13 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v10, v11, v12);
    v17 = objc_msgSend_maxNumberOfColumns(v13, v14, v15, v16);
    *(v32 + 14) = v17;

    v18 = v7[8];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_22144A28C;
    v28 = &unk_2784623E0;
    v30 = &v31;
    v8 = v9;
    v29 = v8;
    objc_msgSend_enumerateRangesUsingBlock_(v18, v19, &v25, v20);
    objc_msgSend_p_calculateAncillaryInformation(v8, v21, v22, v23, v25, v26, v27, v28);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (id)regionFromRowIndices:(id)indices columnRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  indicesCopy = indices;
  v7 = objc_alloc_init(objc_opt_class());
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22144A3B4;
  v15[3] = &unk_278465598;
  v17 = location;
  v18 = length;
  v8 = v7;
  v16 = v8;
  objc_msgSend_enumerateRangesUsingBlock_(indicesCopy, v9, v15, v10);
  objc_msgSend_p_calculateAncillaryInformation(v8, v11, v12, v13);

  return v8;
}

+ (id)regionFromRowIndices:(id)indices
{
  indicesCopy = indices;
  v8 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v5, v6, v7);
  v12 = objc_msgSend_maxNumberOfColumns(v8, v9, v10, v11);

  v14 = objc_msgSend_regionFromRowIndices_columnRange_(self, v13, indicesCopy, 0, v12);

  return v14;
}

+ (id)regionFromColumnIndices:(id)indices rowRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  indicesCopy = indices;
  v7 = objc_alloc_init(objc_opt_class());
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22144A570;
  v15[3] = &unk_278465598;
  v17 = location;
  v18 = length;
  v8 = v7;
  v16 = v8;
  objc_msgSend_enumerateRangesUsingBlock_(indicesCopy, v9, v15, v10);
  objc_msgSend_p_calculateAncillaryInformation(v8, v11, v12, v13);

  return v8;
}

+ (id)regionFromColumnIndices:(id)indices
{
  indicesCopy = indices;
  v8 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v5, v6, v7);
  v12 = objc_msgSend_maxNumberOfRows(v8, v9, v10, v11);

  v14 = objc_msgSend_regionFromColumnIndices_rowRange_(self, v13, indicesCopy, 0, v12);

  return v14;
}

+ (id)regionFromColumnIndexes:(id)indexes rowIndexes:(id)rowIndexes
{
  indexesCopy = indexes;
  rowIndexesCopy = rowIndexes;
  Index = objc_msgSend_lastIndex(indexesCopy, v7, v8, v9);
  v14 = objc_msgSend_firstIndex(indexesCopy, v11, v12, v13);
  v18 = objc_msgSend_count(indexesCopy, v15, v16, v17);
  v22 = objc_msgSend_lastIndex(rowIndexesCopy, v19, v20, v21);
  v26 = objc_msgSend_firstIndex(rowIndexesCopy, v23, v24, v25);
  v30 = objc_msgSend_count(rowIndexesCopy, v27, v28, v29);
  v34 = Index - v14 + 1;
  v35 = v22 - v26 + 1;
  if (v34 == v18 && v35 == v30)
  {
    v36 = objc_msgSend_firstIndex(indexesCopy, v31, v32, v33);
    v40 = objc_msgSend_count(indexesCopy, v37, v38, v39);
    v44 = objc_msgSend_firstIndex(rowIndexesCopy, v41, v42, v43);
    v48 = objc_msgSend_count(rowIndexesCopy, v45, v46, v47);
    v49 = sub_221447778(v36, v40, v44, v48);
    v51 = objc_msgSend_regionFromRange_(TSTCellRegion, v50, v49, v50);
  }

  else if (v34 == v18)
  {
    v61 = objc_msgSend_firstIndex(indexesCopy, v31, v32, v33);
    v65 = objc_msgSend_count(indexesCopy, v62, v63, v64);
    v51 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v66, rowIndexesCopy, v61, v65);
  }

  else
  {
    if (v35 != v30)
    {
      v52 = objc_alloc_init(objc_opt_class());
      v74 = MEMORY[0x277D85DD0];
      v75 = 3221225472;
      v76 = sub_22144A8C0;
      v77 = &unk_27845EBE8;
      v78 = indexesCopy;
      v53 = v52;
      v79 = v53;
      objc_msgSend_enumerateRangesUsingBlock_(rowIndexesCopy, v54, &v74, v55);
      objc_msgSend_p_calculateAncillaryInformation(v53, v56, v57, v58, v74, v75, v76, v77);
      v59 = v79;
      v60 = v53;

      goto LABEL_10;
    }

    v67 = objc_msgSend_firstIndex(rowIndexesCopy, v31, v32, v33);
    v71 = objc_msgSend_count(rowIndexesCopy, v68, v69, v70);
    v51 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v72, indexesCopy, v67, v71);
  }

  v60 = v51;
LABEL_10:

  return v60;
}

+ (id)regionFromPropertyListRepresentation:(id)representation
{
  v27 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v5 = objc_alloc_init(objc_opt_class());
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v26, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v24 = 0;
        v25 = 0;
        objc_msgSend_getBytes_length_(v12, v8, &v24, 16, v20);
        if (v24 != 0x7FFFFFFF && (v24 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v25) != 0 && v25 != 0)
        {
          objc_msgSend_p_insertRangeIntoRegion_(v5, v8, v24, v25);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v26, 16);
    }

    while (v9);
  }

  objc_msgSend_p_calculateAncillaryInformation(v5, v16, v17, v18);

  return v5;
}

+ (vector<TSUCellRect,)combineNonOverlappingCellRanges:(id)ranges addingOverlappingCellRanges:(SEL)cellRanges
{
  v6 = retstr;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v7 = (*(a5 + 1) - *a5) >> 4;
  v8 = *a4;
  v99 = *(a4 + 1);
  if (*a4 != v99)
  {
    while (1)
    {
      v101 = *v8;
      if (v7)
      {
        break;
      }

LABEL_98:
      if (v101 != 0x7FFFFFFF && (v101 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*(&v101 + 1)) && DWORD2(v101) != 0)
      {
        sub_221083454(v6, &v101);
      }

      if (++v8 == v99)
      {
        goto LABEL_108;
      }
    }

    v9 = 0;
    while (1)
    {
      if (v101 == 0x7FFFFFFF || (v101 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*(&v101 + 1)) == 0 || DWORD2(v101) == 0)
      {
        goto LABEL_98;
      }

      v100 = xmmword_2217E0780;
      v13 = (*a5 + 16 * v9);
      v14 = v13[1];
      v15 = HIDWORD(v14);
      if (HIDWORD(v14))
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_86;
      }

      v17 = *v13;
      if (v101 == 0x7FFFFFFF || v101 <= v17)
      {
        v18 = v101 + HIDWORD(v101) - 1;
        if (v101 == 0x7FFFFFFF)
        {
          v18 = 0x7FFFFFFF;
        }

        if (v18 >= v17 && WORD2(v101) <= WORD2(v17))
        {
          v19 = WORD2(v101) == 0x7FFF || DWORD2(v101) == 0;
          v20 = v19 ? 0x7FFF : WORD4(v101) + WORD2(v101) - 1;
          if (v20 >= WORD2(v17))
          {
            v21 = v14 + WORD2(v17) - 1;
            if (WORD2(v17) == 0x7FFF || v14 == 0)
            {
              v21 = 0x7FFF;
            }

            if (v20 >= v21)
            {
              v23 = v17 + HIDWORD(v14) - 1;
              if (v17 == 0x7FFFFFFF)
              {
                v23 = 0x7FFFFFFF;
              }

              if (v18 >= v23)
              {
                v42 = *(a5 + 1);
                v43 = v42 - (v13 + 2);
                if (v42 != (v13 + 2))
                {
                  memmove((*a5 + 16 * v9), v13 + 2, v42 - (v13 + 2));
                }

                *(a5 + 1) = v13 + v43;
                --v9;
                --v7;
                v6 = retstr;
                goto LABEL_92;
              }
            }
          }
        }
      }

      v24 = v17 & 0xFFFF00000000;
      if (v17 != 0x7FFFFFFFLL || v24 == 0x7FFF00000000)
      {
        v27 = v17 == 0x7FFFFFFF && v24 != 0x7FFF00000000;
        if (v101 < v17 && !v27)
        {
          goto LABEL_86;
        }

        v28 = v17 + HIDWORD(v14) - 1;
        if (v17 == 0x7FFFFFFF)
        {
          v28 = 0x7FFFFFFF;
        }

        if (v28 < v101)
        {
          goto LABEL_86;
        }

        if (v17 != 0x7FFFFFFFLL && v24 == 0x7FFF00000000)
        {
          v29 = v14 + 32766;
          v30 = DWORD1(v101);
          v31 = 0x7FFF;
LABEL_67:
          if (v31 == 0x7FFF || v14 == 0)
          {
            v35 = 0x7FFF;
          }

          else
          {
            v35 = v29;
          }

          v36 = v30;
          v37 = WORD4(v101) + v30 - 1;
          if (v36 == 0x7FFF || DWORD2(v101) == 0)
          {
            v39 = 0x7FFF;
          }

          else
          {
            v39 = v37;
          }

          if (v35 >= v39)
          {
            v40 = v17 + v15 - 1;
            if (v17 == 0x7FFFFFFF)
            {
              v40 = 0x7FFFFFFF;
            }

            v41 = v101 == 0x7FFFFFFF ? 0x7FFFFFFF : v101 + HIDWORD(v101) - 1;
            if (v40 >= v41)
            {
              v101 = xmmword_2217E0780;
              goto LABEL_98;
            }
          }

          goto LABEL_86;
        }
      }

      v30 = DWORD1(v101);
      v31 = WORD2(v17);
      if (WORD2(v17) <= WORD2(v101))
      {
        v32 = WORD2(v17) == 0x7FFF || v14 == 0;
        v29 = v14 - 1 + WORD2(v17);
        v33 = v32 ? 0x7FFF : v14 - 1 + WORD2(v17);
        if (v33 >= WORD2(v101))
        {
          goto LABEL_67;
        }
      }

LABEL_86:
      if (sub_22144B1FC(&v101, *a5 + 16 * v9, &v100) && v100 != 0x7FFFFFFF && (v100 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*(&v100 + 1)) && DWORD2(v100))
      {
        sub_221083454(a5, &v100);
        ++v7;
      }

LABEL_92:
      if (++v9 >= v7)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_108:
  if (v7 >= 2)
  {
    for (i = 1; i < v7; ++i)
    {
      v47 = 0;
      v48 = i;
      do
      {
        v101 = xmmword_2217E0780;
        v49 = (*a5 + 16 * i);
        v50 = v49[1];
        v51 = (*a5 + v47);
        v52 = v51[1];
        v53 = HIDWORD(v50);
        if (HIDWORD(v50))
        {
          v54 = v50 == 0;
        }

        else
        {
          v54 = 1;
        }

        v55 = HIDWORD(v52);
        if (v54 || v55 == 0 || v52 == 0)
        {
          goto LABEL_122;
        }

        v58 = *v49;
        v59 = *v51;
        v60 = *v49;
        v61 = *v49 & 0xFFFF00000000;
        if (v60 != 0x7FFFFFFF || v61 == 0x7FFF00000000)
        {
          if ((v61 == 0x7FFF00000000 || v58 != 0x7FFFFFFF) && v58 > v59)
          {
            goto LABEL_176;
          }

          v65 = v58 + HIDWORD(v50) - 1;
          if (v58 == 0x7FFFFFFF)
          {
            v65 = 0x7FFFFFFF;
          }

          if (v65 < v59)
          {
            goto LABEL_176;
          }

          if (v60 != 0x7FFFFFFF && v61 == 0x7FFF00000000)
          {
            v70 = v50 + 32766;
            v67 = HIDWORD(v59);
            v68 = 0x7FFF;
LABEL_159:
            if (v68 == 0x7FFF || v50 == 0)
            {
              v73 = 0x7FFF;
            }

            else
            {
              v73 = v70;
            }

            v74 = v67;
            v75 = v52 + v67 - 1;
            if (v74 == 0x7FFF || v52 == 0)
            {
              v75 = 0x7FFF;
            }

            if (v73 >= v75)
            {
              v77 = v58 + HIDWORD(v50) - 1;
              if (v58 == 0x7FFFFFFF)
              {
                v77 = 0x7FFFFFFF;
              }

              v78 = v59 + HIDWORD(v52) - 1;
              if (v59 == 0x7FFFFFFF)
              {
                v78 = 0x7FFFFFFF;
              }

              if (v77 >= v78)
              {
                goto LABEL_222;
              }
            }

            goto LABEL_176;
          }
        }

        v67 = HIDWORD(v59);
        v68 = WORD2(v58);
        if (WORD2(v58) <= WORD2(v59))
        {
          v69 = WORD2(v58) == 0x7FFF || v50 == 0;
          v70 = v50 - 1 + WORD2(v58);
          v71 = v69 ? 0x7FFF : v50 - 1 + WORD2(v58);
          if (v71 >= WORD2(v59))
          {
            goto LABEL_159;
          }
        }

LABEL_176:
        v79 = v59 & 0xFFFF00000000;
        if (v59 == 0x7FFFFFFFLL && v79 != 0x7FFF00000000)
        {
          goto LABEL_195;
        }

        v82 = v59 == 0x7FFFFFFF && v79 != 0x7FFF00000000;
        if (v58 < v59 && !v82)
        {
          goto LABEL_122;
        }

        v83 = v59 + HIDWORD(v52) - 1;
        if (v59 == 0x7FFFFFFF)
        {
          v83 = 0x7FFFFFFF;
        }

        if (v83 < v58)
        {
          goto LABEL_122;
        }

        if (v59 != 0x7FFFFFFFLL && v79 == 0x7FFF00000000)
        {
          v84 = v52 + 32766;
          v85 = HIDWORD(v58);
          v86 = 0x7FFF;
        }

        else
        {
LABEL_195:
          v85 = HIDWORD(v58);
          v86 = WORD2(v59);
          if (WORD2(v59) > WORD2(v58))
          {
            goto LABEL_122;
          }

          v87 = WORD2(v59) == 0x7FFF || v52 == 0;
          v84 = v52 - 1 + WORD2(v59);
          v88 = v87 ? 0x7FFF : v52 - 1 + WORD2(v59);
          if (v88 < WORD2(v58))
          {
            goto LABEL_122;
          }
        }

        if (v86 == 0x7FFF || v52 == 0)
        {
          v90 = 0x7FFF;
        }

        else
        {
          v90 = v84;
        }

        v91 = v85;
        v92 = v50 + v85 - 1;
        if (v91 == 0x7FFF || v50 == 0)
        {
          v94 = 0x7FFF;
        }

        else
        {
          v94 = v92;
        }

        if (v90 >= v94)
        {
          v95 = v59 + v55 - 1;
          if (v59 == 0x7FFFFFFF)
          {
            v95 = 0x7FFFFFFF;
          }

          v96 = v58 + v53 - 1;
          if (v58 == 0x7FFFFFFF)
          {
            v96 = 0x7FFFFFFF;
          }

          if (v95 >= v96)
          {
            v51 = (*a5 + 16 * i);
LABEL_222:
            *v51 = xmmword_2217E0780;
            goto LABEL_128;
          }
        }

LABEL_122:
        if (sub_22144B1FC(v51, v49, &v101) && v101 != 0x7FFFFFFF && (v101 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*(&v101 + 1)) && DWORD2(v101))
        {
          sub_221083454(a5, &v101);
          ++v7;
        }

LABEL_128:
        v47 += 16;
        --v48;
      }

      while (v48);
    }
  }

  return sub_22133594C(retstr, retstr->__end_, *a5, *(a5 + 1), (*(a5 + 1) - *a5) >> 4);
}

- (id)regionByAddingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_opt_class();

  return objc_msgSend_region_addingRange_(v6, v7, self, origin, size);
}

- (id)regionBySubtractingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_opt_class();

  return objc_msgSend_region_subtractingRange_(v6, v7, self, origin, size);
}

- (id)regionBySubtractingRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = objc_opt_class();
  v7 = objc_msgSend_region_subtractingRowIndexes_(v5, v6, self, indexesCopy);

  return v7;
}

- (id)regionBySubtractingColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = objc_opt_class();
  v7 = objc_msgSend_region_subtractingColumnIndexes_(v5, v6, self, indexesCopy);

  return v7;
}

- (id)regionByIntersectingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_boundingCellRange(self, a2, *&range.origin, *&range.size);
  if (!HIDWORD(*&size) || !size.numberOfColumns || !HIDWORD(v7) || !v7)
  {
    goto LABEL_45;
  }

  v8 = origin & 0xFFFF00000000;
  if (origin != 0x7FFFFFFFLL || v8 == 0x7FFF00000000)
  {
    v14 = v8 != 0x7FFF00000000 && origin == 0x7FFFFFFF;
    if (!v14 && origin > v6)
    {
      goto LABEL_45;
    }

    v15 = origin + size.numberOfRows - 1;
    if (origin == 0x7FFFFFFF)
    {
      v15 = 0x7FFFFFFF;
    }

    if (v15 < v6)
    {
      goto LABEL_45;
    }

    if (origin != 0x7FFFFFFFLL && v8 == 0x7FFF00000000)
    {
      v12 = LOWORD(size.numberOfColumns) + 32766;
      v9 = HIDWORD(v6);
      v10 = 0x7FFF;
      goto LABEL_27;
    }
  }

  v9 = HIDWORD(v6);
  v10 = WORD2(origin);
  if (WORD2(origin) > WORD2(v6) || (WORD2(origin) != 0x7FFF ? (v11 = size.numberOfColumns == 0) : (v11 = 1), (v12 = LOWORD(size.numberOfColumns) + WORD2(origin) - 1, !v11) ? (v13 = LOWORD(size.numberOfColumns) + WORD2(origin) - 1) : (v13 = 0x7FFF), v13 < WORD2(v6)))
  {
LABEL_45:
    v23 = objc_opt_class();
    selfCopy = objc_msgSend_region_intersectingRange_(v23, v24, self, origin, size);
    goto LABEL_46;
  }

LABEL_27:
  if (v10 == 0x7FFF || size.numberOfColumns == 0)
  {
    v17 = 0x7FFF;
  }

  else
  {
    v17 = v12;
  }

  v18 = v9;
  v19 = v7 + v9 - 1;
  if (v18 == 0x7FFF || v7 == 0)
  {
    v19 = 0x7FFF;
  }

  if (v17 < v19)
  {
    goto LABEL_45;
  }

  v21 = origin + size.numberOfRows - 1;
  if (origin == 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = v6 == 0x7FFFFFFF ? 0x7FFFFFFF : v6 + HIDWORD(v7) - 1;
  if (v21 < v22)
  {
    goto LABEL_45;
  }

  selfCopy = self;
LABEL_46:

  return selfCopy;
}

- (id)regionByUnioningEveryRangeInRegionWithRange:(TSUCellRect)range
{
  origin = range.origin;
  v5 = objc_opt_class();

  return (MEMORY[0x2821F9670])(v5, sel_unionEveryRangeInRegion_withRange_, self, origin);
}

- (id)regionByAddingRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_class();
  v7 = objc_msgSend_region_addingRegion_(v5, v6, self, regionCopy);

  return v7;
}

- (id)regionBySubtractingRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_class();
  v7 = objc_msgSend_region_subtractingRegion_(v5, v6, self, regionCopy);

  return v7;
}

- (id)regionByIntersectingRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_class();
  v7 = objc_msgSend_region_intersectingRegion_(v5, v6, self, regionCopy);

  return v7;
}

- (id)regionOffsetBy:(TSUColumnRowOffset)by
{
  v5 = objc_alloc_init(objc_opt_class());
  v9 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v6, v7, v8);
  v64 = objc_msgSend_maxNumberOfColumns(v9, v10, v11, v12);
  v16 = objc_msgSend_maxNumberOfRows(v9, v13, v14, v15);
  if (!v5)
  {
    goto LABEL_68;
  }

  v20 = 0;
  v62 = v16;
  origin = self->_boundingCellRange.origin;
  row = origin.row;
  v23 = 0x7FFF00000000;
  v24 = 0x7FFFFFFFLL;
  v63 = HIDWORD(*&by);
  if (origin.row == 0x7FFFFFFFLL)
  {
    goto LABEL_22;
  }

  v25 = 0;
  if ((*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_23;
  }

  v20 = 0;
  size = self->_boundingCellRange.size;
  v27 = HIDWORD(*&size);
  v24 = 0x7FFFFFFFLL;
  if (!HIDWORD(*&size))
  {
    goto LABEL_22;
  }

  v25 = 0;
  if (!size.numberOfColumns)
  {
    goto LABEL_23;
  }

  v28 = HIDWORD(*&origin);
  if (by.var0)
  {
    v20 = 0;
    v29 = by.var0 + origin.column;
    if (origin.column == 0x7FFF)
    {
      v30 = 0x7FFF;
    }

    else
    {
      v30 = (LOWORD(size.numberOfColumns) + origin.column - 1);
    }

    v23 = 0x7FFF00000000;
    v24 = 0x7FFFFFFFLL;
    if (v29 >= v64)
    {
      goto LABEL_22;
    }

    v31 = v30 + by.var0;
    v25 = 0;
    if (v31 < 0)
    {
      goto LABEL_23;
    }

    LODWORD(v28) = v29 & ~(v29 >> 31);
    v32 = v64 - 1;
    if (v31 < v64 - 1)
    {
      v32 = v31;
    }

    size.numberOfColumns = v32 - v28 + 1;
  }

  if (!v63)
  {
LABEL_21:
    v25 = *&origin & 0xFFFF000000000000;
    v20 = size.numberOfColumns | (v27 << 32);
    v23 = v28 << 32;
    v24 = row;
    goto LABEL_23;
  }

  v20 = 0;
  v33 = origin.row + (*&by >> 32);
  v24 = 0x7FFFFFFFLL;
  if (v33 >= v16)
  {
LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v34 = (origin.row + v27 - 1) + (*&by >> 32);
  v25 = 0;
  if ((v34 & 0x8000000000000000) == 0)
  {
    row = v33 & ~(v33 >> 63);
    v35 = v16 - 1;
    if (v34 < v35)
    {
      v35 = v34;
    }

    v27 = v35 - row + 1;
    goto LABEL_21;
  }

LABEL_23:
  v5[4] = v23 | v24 | v25;
  v5[5] = v20;
  __p = 0;
  v67 = 0;
  v68 = 0;
  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  if (begin != end)
  {
    v38 = 0;
    v39 = *&by >> 32;
    v61 = v16 - 1;
    while (1)
    {
      v40 = begin->origin;
      v41 = *&begin->origin;
      v42 = v41 == 0x7FFFFFFF || (*&begin->origin & 0xFFFF00000000) == 0x7FFF00000000;
      if (v42 || ((v43 = begin->size, (v44 = HIDWORD(*&v43)) != 0) ? (v45 = v43.numberOfColumns == 0) : (v45 = 1), v45))
      {
        v46 = 0;
        v47 = 0;
        v48 = 0x7FFF00000000;
        v49 = 0x7FFFFFFFLL;
        goto LABEL_35;
      }

      v51 = HIDWORD(*&v40);
      if (by.var0)
      {
        v46 = 0;
        v52 = by.var0 + v40.column;
        if (v43.numberOfColumns)
        {
          v53 = v40.column == 0x7FFF;
        }

        else
        {
          v53 = 1;
        }

        if (v53)
        {
          v54 = 0x7FFF;
        }

        else
        {
          v54 = (LOWORD(v43.numberOfColumns) + v40.column - 1);
        }

        v48 = 0x7FFF00000000;
        if (v52 >= v64)
        {
          goto LABEL_62;
        }

        v55 = v54 + by.var0;
        v49 = 0x7FFFFFFFLL;
        v47 = 0;
        if (v55 < 0)
        {
          goto LABEL_35;
        }

        LODWORD(v51) = v52 & ~(v52 >> 31);
        if (v55 >= v64 - 1)
        {
          v56 = v64 - 1;
        }

        else
        {
          v56 = v55;
        }

        v43.numberOfColumns = v56 - v51 + 1;
      }

      if (!v63)
      {
        goto LABEL_61;
      }

      v46 = 0;
      v57 = v41 + v39;
      v48 = 0x7FFF00000000;
      if (v57 < v62)
      {
        v58 = (v40.row + v44 - 1) + v39;
        v49 = 0x7FFFFFFFLL;
        v47 = 0;
        if (v58 < 0)
        {
          goto LABEL_35;
        }

        v41 = v57 & ~(v57 >> 63);
        v59 = v61;
        if (v58 < v61)
        {
          v59 = v58;
        }

        v44 = v59 - v41 + 1;
LABEL_61:
        v47 = *&v40 & 0xFFFF000000000000;
        v46 = v43.numberOfColumns | (v44 << 32);
        v48 = v51 << 32;
        v49 = v41;
        goto LABEL_35;
      }

LABEL_62:
      v49 = 0x7FFFFFFFLL;
      v47 = 0;
LABEL_35:
      v50 = v48 | v47 | v49;
      *&v65 = v50;
      *(&v65 + 1) = v46;
      if (v49 != 0x7FFFFFFF && (v50 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v46) && v46)
      {
        sub_221083454(&__p, &v65);
        v38 += (HIDWORD(v65) * DWORD2(v65));
      }

      if (++begin == end)
      {
        goto LABEL_64;
      }
    }
  }

  v38 = 0;
LABEL_64:
  if (v5 + 1 != &__p)
  {
    sub_2210BD068(v5 + 1, __p, v67, (v67 - __p) >> 4);
  }

  v5[6] = v38;
  objc_msgSend_p_calculateAncillaryInformation(v5, v17, v18, v19, v61);
  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

LABEL_68:

  return v5;
}

- (id)regionByRemovingRows:(id)rows
{
  rowsCopy = rows;
  v8 = rowsCopy;
  if (rowsCopy && objc_msgSend_count(rowsCopy, v5, v6, v7))
  {
    v9 = objc_alloc_init(TSTCellRegion);
    v13 = objc_msgSend_boundingCellRange(self, v10, v11, v12);
    if (v14 >> 32)
    {
      v15 = v13 == 0x7FFFFFFF;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v14, 0, 0x80000000);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v14, 0, (HIDWORD(v14) + v13));
    }
    v16 = ;
    objc_msgSend_removeIndexes_(v16, v17, v8, v18);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_22144C234;
    v31 = &unk_2784655C0;
    v34 = v36;
    v35 = v38;
    selfCopy = self;
    v19 = v9;
    v33 = v19;
    objc_msgSend_enumerateRangesUsingBlock_(v16, v20, &v28, v21);
    objc_msgSend_p_calculateAncillaryInformation(v19, v22, v23, v24, v28, v29, v30, v31, selfCopy);
    v25 = v33;
    selfCopy2 = v19;

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)regionByRemovingColumns:(id)columns
{
  columnsCopy = columns;
  v8 = columnsCopy;
  if (columnsCopy && objc_msgSend_count(columnsCopy, v5, v6, v7))
  {
    v9 = objc_alloc_init(TSTCellRegion);
    v13 = objc_msgSend_boundingCellRange(self, v10, v11, v12);
    if (v14)
    {
      v15 = (v13 & 0xFFFF00000000) == 0x7FFF00000000;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v14, 0, 0x8000);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v14, 0, (v14 + WORD2(v13) - 1) + 1);
    }
    v16 = ;
    objc_msgSend_removeIndexes_(v16, v17, v8, v18);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_22144C568;
    v31 = &unk_2784655C0;
    v34 = v36;
    v35 = v38;
    selfCopy = self;
    v19 = v9;
    v33 = v19;
    objc_msgSend_enumerateRangesUsingBlock_(v16, v20, &v28, v21);
    objc_msgSend_p_calculateAncillaryInformation(v19, v22, v23, v24, v28, v29, v30, v31, selfCopy);
    v25 = v33;
    selfCopy2 = v19;

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(v38, 8);
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)regionByCollapsingRangesForRemovedRows:(id)rows
{
  rowsCopy = rows;
  v8 = objc_msgSend_intersectingRowsIndexSet(self, v5, v6, v7);
  v11 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v8, v9, rowsCopy, v10);

  v14 = objc_msgSend_regionByRemovingRows_(self, v12, rowsCopy, v13);
  v17 = objc_msgSend_tsu_indexSetByExcludingIndexes_(rowsCopy, v15, v11, v16);
  if (objc_msgSend_count(v17, v18, v19, v20))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_221449C00;
    v36 = sub_221449C10;
    v37 = objc_msgSend_invalidRegion(TSTCellRegion, v21, v22, v23);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22144C89C;
    v29[3] = &unk_27845F7D8;
    v30 = v17;
    v31 = &v32;
    objc_msgSend_enumerateCellRangesUsingBlock_(v14, v24, v29, v25);
    v26 = v33[5];

    _Block_object_dispose(&v32, 8);
    v14 = v26;
  }

  v27 = v14;

  return v14;
}

- (id)regionByCollapsingRangesForRemovedColumns:(id)columns
{
  columnsCopy = columns;
  v8 = objc_msgSend_intersectingColumnsIndexSet(self, v5, v6, v7);
  v11 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v8, v9, columnsCopy, v10);

  v14 = objc_msgSend_regionByRemovingColumns_(self, v12, columnsCopy, v13);
  v17 = objc_msgSend_tsu_indexSetByExcludingIndexes_(columnsCopy, v15, v11, v16);
  if (objc_msgSend_count(v17, v18, v19, v20))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_221449C00;
    v36 = sub_221449C10;
    v37 = objc_msgSend_invalidRegion(TSTCellRegion, v21, v22, v23);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22144CB30;
    v29[3] = &unk_27845F7D8;
    v30 = v17;
    v31 = &v32;
    objc_msgSend_enumerateCellRangesUsingBlock_(v14, v24, v29, v25);
    v26 = v33[5];

    _Block_object_dispose(&v32, 8);
    v14 = v26;
  }

  v27 = v14;

  return v14;
}

- (id)regionByIntersectingRowIndices:(id)indices
{
  indicesCopy = indices;
  if (objc_msgSend_count(indicesCopy, v5, v6, v7))
  {
    v11 = objc_alloc_init(TSTCellRegion);
    v12 = TSUCellRect::rows(&self->_boundingCellRange);
    v14 = v13;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_22144CD20;
    v26 = &unk_27845EBE8;
    selfCopy = self;
    v15 = v11;
    v28 = v15;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(indicesCopy, v16, v12, v14, 0, &v23);
    objc_msgSend_p_calculateAncillaryInformation(v15, v17, v18, v19, v23, v24, v25, v26, selfCopy);
    v20 = v28;
    v21 = v15;
  }

  else
  {
    v21 = objc_msgSend_invalidRegion(TSTCellRegion, v8, v9, v10);
  }

  return v21;
}

- (id)regionByIntersectingColumnIndices:(id)indices
{
  indicesCopy = indices;
  if (objc_msgSend_count(indicesCopy, v5, v6, v7))
  {
    v11 = TSUCellRect::columns(&self->_boundingCellRange);
    v13 = v12;
    v14 = objc_alloc_init(TSTCellRegion);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_22144CF94;
    v26 = &unk_27845EBE8;
    selfCopy = self;
    v15 = v14;
    v28 = v15;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(indicesCopy, v16, v11, v13, 0, &v23);
    objc_msgSend_p_calculateAncillaryInformation(v15, v17, v18, v19, v23, v24, v25, v26, selfCopy);
    v20 = v28;
    v21 = v15;
  }

  else
  {
    v21 = objc_msgSend_invalidRegion(TSTCellRegion, v8, v9, v10);
  }

  return v21;
}

- (id)regionByAddingRows:(id)rows
{
  rowsCopy = rows;
  if (rowsCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_221449C00;
    v21 = sub_221449C10;
    v22 = objc_msgSend_p_copy(self, v4, v5, v6);
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22144D258;
    v15[3] = &unk_278465610;
    v15[5] = v16;
    v15[6] = &v17;
    v15[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(rowsCopy, v8, v15, v9);
    objc_msgSend_p_calculateAncillaryInformation(v18[5], v10, v11, v12);
    selfCopy = v18[5];
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)regionByAddingColumns:(id)columns
{
  columnsCopy = columns;
  if (columnsCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_221449C00;
    v21 = sub_221449C10;
    v22 = objc_msgSend_p_copy(self, v4, v5, v6);
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22144D6A0;
    v15[3] = &unk_278465610;
    v15[5] = v16;
    v15[6] = &v17;
    v15[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(columnsCopy, v8, v15, v9);
    objc_msgSend_p_calculateAncillaryInformation(v18[5], v10, v11, v12);
    selfCopy = v18[5];
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)regionByApplyingRowMapping:(id)mapping
{
  mappingCopy = mapping;
  v8 = mappingCopy;
  if (mappingCopy && !objc_msgSend_isIdentityMapping(mappingCopy, v5, v6, v7))
  {
    v10 = objc_alloc_init(TSTCellRegion);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_22144DA90;
    v22 = &unk_278462B70;
    v23 = v8;
    v11 = v10;
    v24 = v11;
    objc_msgSend_enumerateCellRangesUsingBlock_(self, v12, &v19, v13);
    objc_msgSend_p_calculateAncillaryInformation(v11, v14, v15, v16, v19, v20, v21, v22);
    v17 = v24;
    selfCopy = v11;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)regionByMovingRowsFromRange:(_NSRange)range toIndex:(unsigned int)index
{
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length);
  v11 = objc_msgSend_regionByIntersectingRowIndices_(self, v9, v8, v10);
  v16 = objc_msgSend_regionByRemovingRows_(self, v12, v8, v13);
  if (location >= index)
  {
    v17 = 0;
  }

  else
  {
    v17 = length;
  }

  v18 = index - v17;
  v19 = objc_msgSend_regionOffsetBy_(v11, v14, (v18 - location) << 32, v15);

  v21 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v20, v18, length);
  v24 = objc_msgSend_regionByAddingRows_(v16, v22, v21, v23);

  v27 = objc_msgSend_regionByAddingRegion_(v24, v25, v19, v26);

  return v27;
}

- (id)regionByMovingColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length);
  v11 = objc_msgSend_regionByIntersectingColumnIndices_(self, v9, v8, v10);
  v16 = objc_msgSend_regionByRemovingColumns_(self, v12, v8, v13);
  if (location >= indexCopy)
  {
    v17 = 0;
  }

  else
  {
    v17 = length;
  }

  v18 = indexCopy - v17;
  v19 = objc_msgSend_regionOffsetBy_(v11, v14, v18 - location, v15);

  v21 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v20, v18, length);
  v24 = objc_msgSend_regionByAddingColumns_(v16, v22, v21, v23);

  v27 = objc_msgSend_regionByAddingRegion_(v24, v25, v19, v26);

  return v27;
}

- (id)regionByTrimmingAroundRowIndices:(id)indices
{
  indicesCopy = indices;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_221449C00;
  v21 = sub_221449C10;
  v22 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22144DFEC;
  v13[3] = &unk_278465660;
  v8 = indicesCopy;
  v14 = v8;
  selfCopy = self;
  v16 = &v17;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v9, v13, v10);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)regionByTrimmingAroundColumnIndices:(id)indices
{
  indicesCopy = indices;
  v8 = objc_msgSend_gatherer(TSTCellRegionGatherer, v5, v6, v7);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22144E404;
  v18[3] = &unk_278460BD0;
  v9 = indicesCopy;
  v19 = v9;
  selfCopy = self;
  v10 = v8;
  v21 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v11, v18, v12);
  v16 = objc_msgSend_gatheredCellRegion(v10, v13, v14, v15);

  return v16;
}

- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior
{
  v4 = objc_msgSend_prunedCellRegionAgainstTable_behavior_usingBlock_(self, a2, table, behavior, 0);

  return v4;
}

- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block
{
  behaviorCopy = behavior;
  tableCopy = table;
  blockCopy = block;
  v10 = objc_alloc_init(TSTCellRegion);
  if ((objc_msgSend_isEmptyPivot(tableCopy, v11, v12, v13) & 1) == 0)
  {
    v68 = v10;
    v69 = blockCopy;
    v66 = objc_msgSend_translator(tableCopy, v14, v15, v16);
    v67 = objc_msgSend_indexesForSummaryRows(v66, v17, v18, v19);
    v65 = objc_msgSend_indexesForLabelRows(v66, v20, v21, v22);
    v64 = objc_msgSend_indexesForCategoryColumns(tableCopy, v23, v24, v25);
    v63 = objc_msgSend_indexesForSummaryColumns(tableCopy, v26, v27, v28);
    selfCopy = self;
    v32 = (behaviorCopy & 0x100) == 0;
    v33 = (behaviorCopy & 6) == 0;
    v34 = (behaviorCopy & 0x18) == 0;
    v37 = objc_msgSend_isCategorized(tableCopy, v29, v30, v31) ^ 1;
    if ((behaviorCopy & 0x40) != 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 1;
    }

    if ((behaviorCopy & 0x20) != 0)
    {
      v39 = v37;
    }

    else
    {
      v39 = 1;
    }

    if ((behaviorCopy & 1) == 0)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTCellRegion prunedCellRegionAgainstTable:behavior:usingBlock:]", v36);
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 1379, 0, "Oh in what case do we need to prune away base cells?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
    }

    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_22144EACC;
    v70[3] = &unk_278465688;
    v49 = v67;
    v71 = v49;
    v78 = v33;
    v79 = v38;
    v50 = v65;
    v72 = v50;
    v80 = v34;
    v51 = v64;
    v73 = v51;
    v81 = v39;
    v52 = v63;
    v74 = v52;
    v82 = v32;
    v75 = tableCopy;
    blockCopy = v69;
    v77 = v69;
    v10 = v68;
    v53 = v68;
    v76 = v53;
    objc_msgSend_enumerateCellIDsUsingBlock_(selfCopy, v54, v70, v55);
    objc_msgSend_p_calculateAncillaryInformation(v53, v56, v57, v58);
    v59 = v76;
    v60 = v53;
  }

  return v10;
}

- (id)propertyListRepresentation
{
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22144ED78;
  v10[3] = &unk_278461548;
  v6 = v5;
  v11 = v6;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v7, v10, v8);

  return v6;
}

- (TSCECellCoordSet)asCellCoordSet
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x5812000000;
  v10 = sub_22144EEF8;
  v11 = sub_22144EF04;
  v12 = &unk_22188E88F;
  v16[0] = 0;
  v16[1] = 0;
  v13 = 0;
  v14 = 0;
  v15 = v16;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22144EF10;
  v6[3] = &unk_2784656B0;
  v6[4] = &v7;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, a3, v6, v3);
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v8 + 6));
  _Block_object_dispose(&v7, 8);
  sub_22107C860(&v15, v16[0]);
  return result;
}

- (TSUCellRect)largestRangeContainingCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_boundingCellRange(self, a2, *&d, v3);
  v7 = v6;
  v30 = v5;
  v31 = v6;
  if ((objc_msgSend_isRectangle(self, v6, v8, v9) & 1) == 0)
  {
    v13 = objc_msgSend_boundingCellRange(self, v10, v11, v12);
    v15 = objc_msgSend_regionFromRange_(TSTCellRegion, v14, v13, v14);
    v18 = objc_msgSend_regionBySubtractingRegion_(v15, v16, self, v17);

    v19 = v18;
    v23 = objc_msgSend_cellRanges(v19, v20, v21, v22);
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_22116C9DC(&__p, *v23, *(v23 + 8), (*(v23 + 8) - *v23) >> 4);
    v30 = TSUCellRect::largestWithoutRectsAndContainsCoord();
    v31 = v24;
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    v5 = v30;
    v7 = v31;
  }

  v25 = v5;
  v26 = v7;
  result.size = v26;
  result.origin = v25;
  return result;
}

- (BOOL)containsCellID:(TSUCellCoord)d
{
  v3 = 0;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = self->_boundingCellRange.size;
    if (HIDWORD(*&size))
    {
      v5 = size.numberOfColumns == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    origin = self->_boundingCellRange.origin;
    v7 = *&origin & 0xFFFF00000000;
    if (origin.row == 0x7FFFFFFFLL && v7 != 0x7FFF00000000)
    {
      goto LABEL_16;
    }

    v11 = origin.row == 0x7FFFFFFF && v7 != 0x7FFF00000000;
    if (origin.row > d.row && !v11)
    {
      return 0;
    }

    v12 = origin.row + size.numberOfRows - 1;
    if (origin.row == 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    if (v12 < d.row)
    {
      return 0;
    }

    if (origin.row == 0x7FFFFFFFLL || v7 != 0x7FFF00000000)
    {
LABEL_16:
      if (origin.column > d.column)
      {
        return 0;
      }

      v8 = origin.column == 0x7FFF || size.numberOfColumns == 0;
      v9 = v8 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
      if (v9 < d.column)
      {
        return 0;
      }
    }

    begin = self->_cellRanges.__begin_;
    end = self->_cellRanges.__end_;
    if (begin == end)
    {
      return 0;
    }

    do
    {
      v15 = begin->size;
      if (HIDWORD(*&v15))
      {
        v16 = v15.numberOfColumns == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v17 = begin->origin;
        v18 = *&begin->origin;
        v19 = *&begin->origin & 0xFFFF00000000;
        if (v18 != 0x7FFFFFFF || v19 == 0x7FFF00000000)
        {
          v22 = v17.row == 0x7FFFFFFF && v19 != 0x7FFF00000000;
          if (v17.row > d.row && !v22)
          {
            goto LABEL_62;
          }

          v23 = v17.row + v15.numberOfRows - 1;
          if (v17.row == 0x7FFFFFFF)
          {
            v23 = 0x7FFFFFFF;
          }

          if (v23 < d.row)
          {
            goto LABEL_62;
          }

          if (v18 != 0x7FFFFFFF && v19 == 0x7FFF00000000)
          {
            return 1;
          }
        }

        if (v17.column <= d.column)
        {
          v24 = v17.column == 0x7FFF || v15.numberOfColumns == 0;
          v25 = v24 ? 0x7FFF : LOWORD(v15.numberOfColumns) + v17.column - 1;
          if (v25 >= d.column)
          {
            return 1;
          }
        }
      }

LABEL_62:
      v3 = 0;
      ++begin;
    }

    while (begin != end);
  }

  return v3;
}

- (BOOL)containsCellRange:(TSUCellRect)range
{
  origin = range.origin;
  v4 = 0;
  if (range.origin.row != 0x7FFFFFFF && (*&range.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = range.size;
    v4 = 0;
    numberOfRows = range.size.numberOfRows;
    if (range.size.numberOfRows)
    {
      if (range.size.numberOfColumns)
      {
        if (self->_cellCount < range.size.numberOfRows * range.size.numberOfColumns)
        {
          return 0;
        }

        if (!objc_msgSend_isRectangle(self, a2, *&range.origin, *&range.size))
        {
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v34 = numberOfRows * size.numberOfColumns;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = sub_22144F4BC;
          v30[3] = &unk_278465520;
          v30[5] = origin;
          v30[6] = size;
          v30[4] = &v31;
          objc_msgSend_enumerateCellRangesUsingBlock_(self, v8, v30, v9);
          v4 = v32[3] == 0;
          _Block_object_dispose(&v31, 8);
          return v4;
        }

        v4 = 0;
        v10 = self->_boundingCellRange.size;
        v11 = HIDWORD(*&v10);
        if (HIDWORD(*&v10) && v10.numberOfColumns)
        {
          v12 = self->_boundingCellRange.origin;
          v13 = *&v12 & 0xFFFF00000000;
          if (v12.row == 0x7FFFFFFFLL && v13 != 0x7FFF00000000)
          {
            goto LABEL_12;
          }

          v21 = v12.row == 0x7FFFFFFF && v13 != 0x7FFF00000000;
          if (v12.row > origin.row && !v21)
          {
            return 0;
          }

          v22 = v12.row + v10.numberOfRows - 1;
          if (v12.row == 0x7FFFFFFF)
          {
            v22 = 0x7FFFFFFF;
          }

          if (v22 < origin.row)
          {
            return 0;
          }

          if (v12.row == 0x7FFFFFFFLL || v13 != 0x7FFF00000000)
          {
LABEL_12:
            v14 = HIDWORD(*&origin);
            column = v12.column;
            if (v12.column > origin.column)
            {
              return 0;
            }

            v16 = v12.column == 0x7FFF || v10.numberOfColumns == 0;
            v17 = LOWORD(v10.numberOfColumns) - 1 + v12.column;
            v18 = v16 ? 0x7FFF : LOWORD(v10.numberOfColumns) - 1 + v12.column;
            if (v18 < origin.column)
            {
              return 0;
            }
          }

          else
          {
            v17 = LOWORD(v10.numberOfColumns) + 32766;
            v14 = HIDWORD(*&origin);
            column = 0x7FFF;
          }

          if (column == 0x7FFF || v10.numberOfColumns == 0)
          {
            v24 = 0x7FFF;
          }

          else
          {
            v24 = v17;
          }

          v25 = v14;
          v26 = LOWORD(size.numberOfColumns) + v14 - 1;
          if (v25 == 0x7FFF || size.numberOfColumns == 0)
          {
            v26 = 0x7FFF;
          }

          if (v24 < v26)
          {
            return 0;
          }

          v28 = v12.row + v11 - 1;
          if (v12.row == 0x7FFFFFFF)
          {
            v28 = 0x7FFFFFFF;
          }

          v29 = origin.row + numberOfRows - 1;
          if (origin.row == 0x7FFFFFFF)
          {
            v29 = 0x7FFFFFFF;
          }

          return v28 >= v29;
        }
      }
    }
  }

  return v4;
}

- (BOOL)containsCellRegion:(id)region
{
  regionCopy = region;
  v6 = regionCopy;
  if (!regionCopy || self->_cellCount < regionCopy[6])
  {
    goto LABEL_51;
  }

  size = self->_boundingCellRange.size;
  v8 = HIDWORD(*&size);
  if (!HIDWORD(*&size) || size.numberOfColumns == 0)
  {
    goto LABEL_51;
  }

  v10 = regionCopy[5];
  v11 = HIDWORD(v10);
  if (!HIDWORD(v10) || v10 == 0)
  {
    goto LABEL_51;
  }

  origin = self->_boundingCellRange.origin;
  v14 = regionCopy[4];
  v15 = *&origin & 0xFFFF00000000;
  if (origin.row == 0x7FFFFFFFLL && v15 != 0x7FFF00000000)
  {
    goto LABEL_13;
  }

  v21 = v15 != 0x7FFF00000000 && origin.row == 0x7FFFFFFF;
  if (!v21 && origin.row > v14)
  {
    goto LABEL_51;
  }

  v22 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  if (v22 < v14)
  {
    goto LABEL_51;
  }

  if (origin.row == 0x7FFFFFFFLL || v15 != 0x7FFF00000000)
  {
LABEL_13:
    v16 = HIDWORD(v14);
    column = origin.column;
    if (origin.column <= WORD2(v14))
    {
      v18 = origin.column == 0x7FFF || size.numberOfColumns == 0;
      v19 = LOWORD(size.numberOfColumns) - 1 + origin.column;
      v20 = v18 ? 0x7FFF : LOWORD(size.numberOfColumns) - 1 + origin.column;
      if (v20 >= WORD2(v14))
      {
        goto LABEL_33;
      }
    }

LABEL_51:
    v31 = 0;
    goto LABEL_52;
  }

  v19 = LOWORD(size.numberOfColumns) + 32766;
  v16 = HIDWORD(v14);
  column = 0x7FFF;
LABEL_33:
  if (column == 0x7FFF || size.numberOfColumns == 0)
  {
    v24 = 0x7FFF;
  }

  else
  {
    v24 = v19;
  }

  v25 = v16;
  v26 = v10 + v16 - 1;
  if (v25 == 0x7FFF || v10 == 0)
  {
    v28 = 0x7FFF;
  }

  else
  {
    v28 = v26;
  }

  if (v24 < v28)
  {
    goto LABEL_51;
  }

  v29 = origin.row + v8 - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  v30 = v14 + v11 - 1;
  if (v14 == 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  if (v29 < v30)
  {
    goto LABEL_51;
  }

  v33 = regionCopy[1];
  v34 = regionCopy[2];
  if (v33 == v34)
  {
    v31 = 1;
  }

  else
  {
    do
    {
      v35 = objc_msgSend_containsCellRange_(self, v5, *v33, v33[1]);
      v31 = v35;
      v33 += 2;
      if (v33 == v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }
    }

    while ((v36 & 1) != 0);
  }

LABEL_52:

  return v31;
}

- (BOOL)equalsCellRegion:(id)region
{
  regionCopy = region;
  v8 = regionCopy;
  if (!regionCopy || self->_cellCount != regionCopy[6] || (origin = self->_boundingCellRange.origin, v10 = regionCopy[4], origin.row != v10) || (((v10 ^ *&origin) & 0x101FFFF00000000) == 0 ? (v11 = *&self->_boundingCellRange.size == regionCopy[5]) : (v11 = 0), !v11))
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_isRectangle(self, v5, v6, v7) && (objc_msgSend_isRectangle(v8, v14, v15, v16) & 1) != 0)
  {
    goto LABEL_31;
  }

  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  v20 = v8[1];
  v19 = v8[2];
  if (end - begin != v19 - v20)
  {
    goto LABEL_25;
  }

  if (end == begin)
  {
LABEL_31:
    v12 = 1;
    goto LABEL_9;
  }

  v21 = end - begin;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  p_size = &begin->size;
  v23 = v20 + 1;
  v12 = 1;
  while (1)
  {
    v24 = p_size[-1];
    v25 = *(v23 - 1);
    if (v24.numberOfColumns != v25)
    {
      break;
    }

    if (((v25 ^ *&v24) & 0x101FFFF00000000) != 0 || *p_size != *v23)
    {
      break;
    }

    p_size += 2;
    v23 += 2;
    if (!--v21)
    {
      goto LABEL_9;
    }
  }

LABEL_25:
  if (v20 == v19)
  {
    goto LABEL_31;
  }

  do
  {
    v27 = objc_msgSend_containsCellRange_(self, v14, *v20, v20[1]);
    v12 = v27;
    v20 += 2;
    if (v20 == v19)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }
  }

  while ((v28 & 1) != 0);
LABEL_9:

  return v12;
}

- (BOOL)equalsCellRange:(TSUCellRect)range
{
  if (self->_cellCount != range.size.numberOfRows * range.size.numberOfColumns)
  {
    return 0;
  }

  origin = self->_boundingCellRange.origin;
  if (origin.row != range.origin.row)
  {
    return 0;
  }

  return ((*&origin ^ *&range.origin) & 0x101FFFF00000000) == 0 && *&self->_boundingCellRange.size == *&range.size;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    v8 = objc_msgSend_equalsCellRegion_(self, v5, v7, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    result ^= begin->origin.row + 16 * begin->origin.column + begin->size.numberOfColumns + begin->size.numberOfRows;
    ++begin;
  }

  while (begin != end);
  return result;
}

- (BOOL)intersectsCellRange:(TSUCellRect)range
{
  p_origin = &self->_cellRanges.__begin_->origin;
  end = self->_cellRanges.__end_;
  if (p_origin == end)
  {
    return 0;
  }

  size = range.size;
  origin = range.origin;
  v7 = *MEMORY[0x277D813C8];
  v8 = *(MEMORY[0x277D813C8] + 8);
  while (1)
  {
    v9 = sub_221119E0C(*p_origin, p_origin[1], origin, size);
    v11 = (v9 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || HIDWORD(v10) == 0;
    if (!v11 && v10 != 0)
    {
      if (v9 != v7)
      {
        break;
      }

      if (((v7 ^ v9) & 0x101FFFF00000000) != 0 || v10 != v8)
      {
        break;
      }
    }

    p_origin += 2;
    if (p_origin == end)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)partiallyIntersectsCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_boundingCellRange(self, a2, *&range.origin, *&range.size);
  v8 = sub_221119E0C(v6, v7, *&origin, *&size);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_6;
  }

  LOBYTE(v11) = 0;
  if (!HIDWORD(v9) || !v9)
  {
    return v11;
  }

  v13 = ((v8 ^ *&origin) & 0x101FFFF00000000) == 0 && size == v9;
  if (origin.row != v8)
  {
    v13 = 0;
  }

  v47 = v13;
  p_origin = &self->_cellRanges.__begin_->origin;
  end = self->_cellRanges.__end_;
  if (p_origin == end)
  {
LABEL_6:
    LOBYTE(v11) = 0;
    return v11;
  }

  v16 = 0;
  if (size.numberOfColumns)
  {
    v17 = HIDWORD(*&size) == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = size.numberOfColumns == 0;
  if (origin.column == 0x7FFF)
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0x7FFF;
  }

  else
  {
    v19 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  v20 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v43 = v20;
  v44 = v19;
  v45 = *(MEMORY[0x277D813C8] + 8);
  v46 = *MEMORY[0x277D813C8];
  do
  {
    v21 = *p_origin;
    v22 = p_origin[1];
    if (HIDWORD(v22))
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23;
    if ((v24 | v17))
    {
      goto LABEL_71;
    }

    v25 = v21 & 0xFFFF00000000;
    if (v21 == 0x7FFFFFFFLL && v25 != 0x7FFF00000000)
    {
      goto LABEL_53;
    }

    v28 = v21 == 0x7FFFFFFF && v25 != 0x7FFF00000000;
    if (v21 > origin.row && !v28)
    {
      goto LABEL_71;
    }

    v29 = v21 + HIDWORD(v22) - 1;
    if (v21 == 0x7FFFFFFF)
    {
      v29 = 0x7FFFFFFF;
    }

    if (v29 < origin.row)
    {
      goto LABEL_71;
    }

    if (v21 != 0x7FFFFFFFLL && v25 == 0x7FFF00000000)
    {
      v30 = v22 + 32766;
      v31 = 0x7FFF;
    }

    else
    {
LABEL_53:
      v31 = WORD2(v21);
      if (WORD2(v21) > origin.column)
      {
        goto LABEL_71;
      }

      v32 = WORD2(v21) == 0x7FFF || v22 == 0;
      v30 = v22 - 1 + WORD2(v21);
      v33 = v32 ? 0x7FFF : v22 - 1 + WORD2(v21);
      if (v33 < origin.column)
      {
        goto LABEL_71;
      }
    }

    if (v31 == 0x7FFF || v22 == 0)
    {
      v35 = 0x7FFF;
    }

    else
    {
      v35 = v30;
    }

    if (v35 >= v44)
    {
      v36 = v21 + HIDWORD(v22) - 1;
      if (v21 == 0x7FFFFFFF)
      {
        v36 = 0x7FFFFFFF;
      }

      if (v36 >= v43)
      {
        goto LABEL_6;
      }
    }

LABEL_71:
    v37 = sub_221119E0C(v21, v22, *&origin, *&size);
    if ((v37 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v38 >> 32 != 0 && v38 != 0)
    {
      v42 = v37 == v46 && ((v46 ^ v37) & 0x101FFFF00000000) == 0 && v38 == v45;
      if (!v42 && !v47)
      {
        LOBYTE(v11) = 1;
        return v11;
      }

      v16 |= !v42;
    }

    p_origin += 2;
  }

  while (p_origin != end);
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  return objc_msgSend_containsCellRange_(self, v38, *&origin, *&size) ^ 1;
}

- (BOOL)intersectsCellRegion:(id)region
{
  regionCopy = region;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18.origin = objc_msgSend_boundingCellRange(self, v5, v6, v7);
  v18.size = v8;
  v17.origin = objc_msgSend_boundingCellRange(regionCopy, v8, v9, v10);
  v17.size = v11;
  if (TSUCellRect::intersects(&v18, &v17))
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22144FF08;
    v16[3] = &unk_27845F7D8;
    v16[4] = self;
    v16[5] = &v19;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v12, v16, v13);
  }

  v14 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (BOOL)intersectsColumn:(unsigned __int16)column
{
  if (column == 0x7FFF)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_containsIndex_(self->_intersectingColumnsIndexSet, a2, column, v3);
  }
}

- (BOOL)intersectsRow:(unsigned int)row
{
  if (row == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_containsIndex_(self->_intersectingRowsIndexSet, a2, row, v3);
  }
}

- (id)isSingleCellWideOrHigh:(id)high
{
  highCopy = high;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3812000000;
  v39[3] = sub_2214502EC;
  v39[4] = nullsub_80;
  v39[5] = &unk_22188E88F;
  v39[6] = 0x7FFF7FFFFFFFLL;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_221449C00;
  v37[4] = sub_221449C10;
  v38 = objc_msgSend_set(MEMORY[0x277CBEB98], v5, v6, v7);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_221449C00;
  v35[4] = sub_221449C10;
  v36 = objc_msgSend_set(MEMORY[0x277CBEB58], v8, v9, v10);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0x7FFFFFFF;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2214502FC;
  v24[3] = &unk_2784656D8;
  v11 = highCopy;
  v25 = v11;
  selfCopy = self;
  v27 = v39;
  v28 = &v44;
  v29 = v33;
  v30 = v37;
  v31 = v35;
  v32 = &v40;
  objc_msgSend_enumerateCellIDsUsingBlock_(self, v12, v24, v13);
  v14 = MEMORY[0x277D812A8];
  v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, *(v45 + 24), v16);
  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v18, *(v41 + 24), v19);
  v22 = objc_msgSend_pairWithFirst_second_(v14, v21, v17, v20);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v22;
}

- (id)intersectingColumnsInRow:(unsigned int)row
{
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  begin = self->_cellRanges.__begin_;
  for (i = self->_cellRanges.__end_; begin != i; ++begin)
  {
    v21 = *begin;
    if (HIDWORD(*&v21.size))
    {
      v11 = v21.size.numberOfColumns == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = *&v21.origin & 0xFFFF00000000;
      if (v21.origin.row == 0x7FFFFFFF && v12 != 0x7FFF00000000)
      {
        goto LABEL_22;
      }

      v14 = v21.origin.row != 0x7FFFFFFF || v12 == 0x7FFF00000000;
      v15 = !v14;
      if (v21.origin.row <= row || v15)
      {
        v16 = v21.origin.row + v21.size.numberOfRows - 1;
        if (v21.origin.row == 0x7FFFFFFF)
        {
          v16 = 0x7FFFFFFF;
        }

        if (v16 >= row)
        {
LABEL_22:
          v17 = TSUCellRect::columns(&v21);
          objc_msgSend_addIndexesInRange_(v8, v18, v17, v18);
        }
      }
    }
  }

  if (objc_msgSend_count(v8, v5, v6, v7, *&v21.origin))
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)p_copyFromRegion:(id)region
{
  regionCopy = region;
  if (!regionCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCellRegion p_copyFromRegion:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1824, 0, "invalid nil value for '%{public}s'", "region");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (self != regionCopy)
  {
    sub_2210BD068(&self->_cellRanges, regionCopy->_cellRanges.__begin_, regionCopy->_cellRanges.__end_, regionCopy->_cellRanges.__end_ - regionCopy->_cellRanges.__begin_);
  }

  self->_boundingCellRange = regionCopy->_boundingCellRange;
  self->_cellCount = regionCopy->_cellCount;
  v16 = objc_msgSend_copy(regionCopy->_intersectingColumnsIndexSet, v4, v5, v6);
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  self->_intersectingColumnsIndexSet = v16;

  v21 = objc_msgSend_copy(regionCopy->_intersectingRowsIndexSet, v18, v19, v20);
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  self->_intersectingRowsIndexSet = v21;

  self->_firstCellID = regionCopy->_firstCellID;
  self->_lastCellID = regionCopy->_lastCellID;
}

- (id)p_copy
{
  v3 = objc_alloc_init(objc_opt_class());
  objc_msgSend_p_copyFromRegion_(v3, v4, self, v5);
  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTMutableCellRegion);
  v8 = v4;
  if (v4 != self)
  {
    sub_2210BD068(&v4->super._cellRanges, self->_cellRanges.__begin_, self->_cellRanges.__end_, self->_cellRanges.__end_ - self->_cellRanges.__begin_);
  }

  v8->super._boundingCellRange = self->_boundingCellRange;
  v8->super._cellCount = self->_cellCount;
  v9 = objc_msgSend_copy(self->_intersectingColumnsIndexSet, v5, v6, v7);
  intersectingColumnsIndexSet = v8->super._intersectingColumnsIndexSet;
  v8->super._intersectingColumnsIndexSet = v9;

  v14 = objc_msgSend_copy(self->_intersectingRowsIndexSet, v11, v12, v13);
  intersectingRowsIndexSet = v8->super._intersectingRowsIndexSet;
  v8->super._intersectingRowsIndexSet = v14;

  v8->super._firstCellID = self->_firstCellID;
  v8->super._lastCellID = self->_lastCellID;
  return v8;
}

- (TSUCellCoord)suitableAnchor
{
  if (self->_cellRanges.__end_ == self->_cellRanges.__begin_)
  {
    begin = &unk_2217E1D68;
  }

  else
  {
    begin = self->_cellRanges.__begin_;
  }

  return begin->origin;
}

- (TSUCellCoord)suitableCursor
{
  begin = self->_cellRanges.__begin_;
  if (self->_cellRanges.__end_ == begin)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  else
  {
    return ((*&begin->origin + (*&begin->size << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (*&begin->origin + HIDWORD(*&begin->size) - 1));
  }
}

- (id)newIterator
{
  v3 = [TSTCellRegionRowMajorIterator alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCellRegion_, self, v4);
}

- (id)newRightToLeftIterator
{
  v3 = [TSTCellRegionRowMajorReverseIterator alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCellRegion_, self, v4);
}

- (id)newBottomToTopIterator
{
  v3 = [TSTCellRegionColumnMajorReverseIterator alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCellRegion_, self, v4);
}

- (void)enumerateCellIDsUsingBlock:(id)block
{
  blockCopy = block;
  v16 = 0;
  v8 = objc_msgSend_newIterator(self, v5, v6, v7);
  for (i = objc_msgSend_getNext(v8, v9, v10, v11); i != 0x7FFFFFFF && (i & 0xFFFF00000000) != 0x7FFF00000000 && (v16 & 1) == 0; i = objc_msgSend_getNext(v8, v13, v14, v15))
  {
    blockCopy[2](blockCopy);
  }
}

- (void)enumerateCellRangesUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  begin = self->_cellRanges.__begin_;
  for (i = self->_cellRanges.__end_; begin != i; ++begin)
  {
    (*(blockCopy + 2))(blockCopy, *&begin->origin, *&begin->size, &v7);
    if (v7)
    {
      break;
    }
  }
}

- (void)enumerateColumnsUsingBlock:(id)block
{
  blockCopy = block;
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221450C74;
  v9[3] = &unk_278461298;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(intersectingColumnsIndexSet, v7, v9, v8);
}

- (void)enumerateColumnsInReverseUsingBlock:(id)block
{
  blockCopy = block;
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221450D3C;
  v8[3] = &unk_278461298;
  v9 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(intersectingColumnsIndexSet, v7, 2, v8);
}

- (void)enumerateRowsUsingBlock:(id)block
{
  blockCopy = block;
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221450E00;
  v9[3] = &unk_278461298;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(intersectingRowsIndexSet, v7, v9, v8);
}

- (void)enumerateRowsInReverseUsingBlock:(id)block
{
  blockCopy = block;
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221450EC4;
  v8[3] = &unk_278461298;
  v9 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(intersectingRowsIndexSet, v7, 2, v8);
}

- (void)enumerateInDirection:(int64_t)direction usingBlock:(id)block
{
  blockCopy = block;
  v7 = 64;
  if (direction == 1)
  {
    v7 = 56;
  }

  v8 = *(&self->super.isa + v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221450FAC;
  v13[3] = &unk_278461298;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = v8;
  objc_msgSend_enumerateIndexesUsingBlock_(v10, v11, v13, v12);
}

- (void)enumerateRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2214510E0;
  v17[3] = &unk_2784654F8;
  v19 = origin;
  v20 = size;
  v12 = v11;
  v18 = v12;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v13, v17, v14);
  objc_msgSend_enumerateRangesUsingBlock_(v12, v15, blockCopy, v16);
}

- (void)enumerateMissingRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v8, origin.row, HIDWORD(*&size));
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221451260;
  v15[3] = &unk_2784654F8;
  v17 = origin;
  v18 = size;
  v10 = v9;
  v16 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v11, v15, v12);
  objc_msgSend_enumerateRangesUsingBlock_(v10, v13, blockCopy, v14);
}

- (void)enumerateColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2214513D8;
  v17[3] = &unk_2784654F8;
  v19 = origin;
  v20 = size;
  v12 = v11;
  v18 = v12;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v13, v17, v14);
  objc_msgSend_enumerateRangesUsingBlock_(v12, v15, blockCopy, v16);
}

- (void)enumerateMissingColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v9 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v8, origin.column, size.numberOfColumns);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221451554;
  v15[3] = &unk_2784654F8;
  v17 = origin;
  v18 = size;
  v10 = v9;
  v16 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v11, v15, v12);
  objc_msgSend_enumerateRangesUsingBlock_(v10, v13, blockCopy, v14);
}

- (void)enumerateGridColumnsUsingBlock:(id)block
{
  blockCopy = block;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = -1;
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214516B8;
  v9[3] = &unk_278465700;
  v10 = blockCopy;
  v11 = v12;
  v6 = blockCopy;
  objc_msgSend_enumerateRangesUsingBlock_(intersectingColumnsIndexSet, v7, v9, v8);

  _Block_object_dispose(v12, 8);
}

- (void)enumerateGridRowsUsingBlock:(id)block
{
  blockCopy = block;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = -1;
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221451820;
  v9[3] = &unk_278465700;
  v10 = blockCopy;
  v11 = v12;
  v6 = blockCopy;
  objc_msgSend_enumerateRangesUsingBlock_(intersectingRowsIndexSet, v7, v9, v8);

  _Block_object_dispose(v12, 8);
}

- (vector<TSUCellRect,)rowBasedSubRangesOfCellCount:(TSTCellRegion *)self
{
  v5 = a4;
  if (!a4)
  {
    v8 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a3, 0, v4);
    v12 = objc_msgSend_processorCount(v8, v9, v10, v11);

    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = self->_cellCount / (3 * v13);
    if (v14 <= 0x1000)
    {
      v5 = 4096;
    }

    else
    {
      v5 = v14;
    }
  }

  selfCopy = self;
  v19 = objc_msgSend_cellRanges(selfCopy, v16, v17, v18);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  sub_22116C9DC(&v31, *v19, *(v19 + 8), (*(v19 + 8) - *v19) >> 4);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  while (1)
  {
    result = v31;
    if (v32 == v31)
    {
      break;
    }

    v30 = *&v32[-1].__end_;
    v32 = (v32 - 16);
    if (v30.size.numberOfRows * v30.size.numberOfColumns <= v5 || TSUCellRect::numRows(&v30) < 2)
    {
      sub_221083454(retstr, &v30);
    }

    else
    {
      v21 = TSUCellRect::numRows(&v30);
      v29 = 0uLL;
      origin = v30.origin;
      v23 = TSUCellRect::numColumns(&v30);
      v24 = v21 >> 1;
      *&v29 = origin;
      *(&v29 + 1) = v23 | (v24 << 32);
      v25 = TSUCellRect::firstRow(&v30);
      origin.row = TSUCellRect::numRows(&v30);
      v28 = 0uLL;
      v26 = TSUCellRect::firstColumn(&v30);
      v27 = TSUCellRect::numColumns(&v30);
      *&v28 = (v25 + v24) | (v26 << 32);
      *(&v28 + 1) = v27 | ((origin.row - v24) << 32);
      sub_221083454(&v31, &v29);
      sub_221083454(&v31, &v28);
    }
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return result;
}

- (void)p_insertRangeIntoRegion:(TSUCellRect)region
{
  origin = region.origin;
  regionCopy = region;
  if (region.origin.row != 0x7FFFFFFF && (*&region.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = region.size;
    numberOfRows = region.size.numberOfRows;
    if (region.size.numberOfRows)
    {
      if (region.size.numberOfColumns)
      {
        end = self->_cellRanges.__end_;
        p_cellRanges = &self->_cellRanges;
        if (end == self->_cellRanges.__begin_)
        {
          goto LABEL_16;
        }

        v10 = end[-1].origin;
        v9 = end[-1].size;
        v11 = sub_221119E0C(v10, v9, *&region.origin, *&region.size);
        if ((v11 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v12 >> 32 != 0 && v12 != 0)
        {
          if (v11 != *MEMORY[0x277D813C8] || (((*MEMORY[0x277D813C8] ^ v11) & 0x101FFFF00000000) == 0 ? (v21 = v12 == *(MEMORY[0x277D813C8] + 8)) : (v21 = 0), !v21))
          {
            v22 = MEMORY[0x277D81150];
            v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellRegion p_insertRangeIntoRegion:]", v13);
            v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v24);
            v25 = sub_221451D44(*&origin, size);
            v26 = sub_221451D44(v10, v9);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v32, v31, 2198, 0, "Added range:%{public}@ should never overlap previous range:%{public}@ in region:%{public}@.", v25, v26, self);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
          }
        }

        *&v33 = sub_2211C1FC4(v10, v9, *&origin, size);
        *(&v33 + 1) = v16;
        v17 = numberOfRows * size;
        if (HIDWORD(v16) * v16 != v17 + (HIDWORD(v9) * v9))
        {
LABEL_16:
          sub_221083454(p_cellRanges, &regionCopy);
          size = regionCopy.size;
          origin = regionCopy.origin;
          v17 = regionCopy.size.numberOfRows * regionCopy.size.numberOfColumns;
        }

        else
        {
          --self->_cellRanges.__end_;
          sub_221083454(p_cellRanges, &v33);
        }

        self->_boundingCellRange.origin = sub_2211C1FC4(*&self->_boundingCellRange.origin, *&self->_boundingCellRange.size, *&origin, size);
        self->_boundingCellRange.size = v18;
        v19 = self->_cellCount + v17;
        self->_cellCount = v19;
        begin = self->_cellRanges.__begin_;
        if ((self->_cellRanges.__end_ - begin) >= 0x11 && v19 == v18.numberOfRows * v18.numberOfColumns)
        {
          self->_cellRanges.__end_ = begin;
          sub_221083454(p_cellRanges, &self->_boundingCellRange.origin);
        }
      }
    }
  }
}

- (void)p_calculateAncillaryInformation
{
  obj = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  self->_boundingCellRange = xmmword_2217E0780;
  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  if (begin != end)
  {
    v28 = 0;
    v9 = 0x7FFF;
    v10 = 0x7FFFFFFF;
    v11 = 0x7FFF;
    v12 = 0x7FFFFFFF;
    while (1)
    {
      objc_msgSend_addIndexesInRange_(obj, v3, begin->origin.column, begin->size.numberOfColumns);
      objc_msgSend_addIndexesInRange_(v6, v13, begin->origin.row, begin->size.numberOfRows);
      row = begin->origin.row;
      if (v10 == 0x7FFFFFFF || v9 == 0x7FFF || row < v10)
      {
        break;
      }

      if (row == v10)
      {
        column = begin->origin.column;
        if (column < v9)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      origin = begin->origin;
      size = begin->size;
      ++begin;
      v18 = origin + HIDWORD(size) - 1;
      v19 = v12 == v18;
      v20 = (size + ((origin + 0xFFFF00000000) >> 32)) > v11;
      v21 = !v19 || !v20;
      if (v19 && v20)
      {
        v22 = origin + HIDWORD(size) - 1;
      }

      else
      {
        v22 = v12;
      }

      if (v21)
      {
        v23 = v11;
      }

      else
      {
        v23 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      if (v12 < v18)
      {
        v22 = origin + HIDWORD(size) - 1;
        v23 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      if (v11 == 0x7FFF)
      {
        v22 = origin + HIDWORD(size) - 1;
        v23 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      v24 = v12 == 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        v12 = origin + HIDWORD(size) - 1;
      }

      else
      {
        v12 = v22;
      }

      if (v24)
      {
        v11 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      else
      {
        v11 = v23;
      }

      self->_boundingCellRange.origin = sub_2211C1FC4(*&self->_boundingCellRange.origin, *&self->_boundingCellRange.size, origin, size);
      self->_boundingCellRange.size = v3;
      if (begin == end)
      {
        goto LABEL_30;
      }
    }

    column = begin->origin.column;
    v10 = begin->origin.row;
LABEL_10:
    v28 = *&begin->origin._preserveRow;
    v9 = column;
    goto LABEL_11;
  }

  v28 = 0;
  v12 = 0x7FFFFFFF;
  LOWORD(v11) = 0x7FFF;
  v10 = 0x7FFFFFFF;
  LOWORD(v9) = 0x7FFF;
LABEL_30:
  if (objc_msgSend_count(obj, v3, v4, v5))
  {
    objc_storeStrong(&self->_intersectingColumnsIndexSet, obj);
  }

  if (objc_msgSend_count(v6, v25, v26, v27))
  {
    objc_storeStrong(&self->_intersectingRowsIndexSet, v6);
  }

  self->_firstCellID.row = v10;
  self->_firstCellID.column = v9;
  *&self->_firstCellID._preserveRow = v28;
  self->_lastCellID.row = v12;
  self->_lastCellID.column = v11;
  *&self->_lastCellID._preserveRow = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = sub_221451D44(*&self->_boundingCellRange.origin, *&self->_boundingCellRange.size);
  v9 = objc_msgSend_stringWithFormat_(v3, v7, @"<%@ %p boundingbox={ %@ }", v8, v5, self, v6);

  if (self->_cellRanges.__end_ == self->_cellRanges.__begin_)
  {
    objc_msgSend_appendString_(v9, v10, @" cellRanges={empty}>", v11);
  }

  else
  {
    objc_msgSend_appendString_(v9, v10, @" cellRanges={", v11);
    begin = self->_cellRanges.__begin_;
    for (i = self->_cellRanges.__end_; begin != i; ++begin)
    {
      v16 = sub_221451D44(*&begin->origin, *&begin->size);
      objc_msgSend_appendFormat_(v9, v17, @"\n  { %@ }", v18, v16);
    }

    objc_msgSend_appendString_(v9, v12, @"}>", v13);
  }

  return v9;
}

- (TSUCellRect)boundingCellRange
{
  size = self->_boundingCellRange.size;
  origin = self->_boundingCellRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)regionByAddingModelCellRegion:(id)region
{
  v4 = objc_msgSend_regionByAddingRegion_(self, a2, region, v3);

  return v4;
}

- (id)regionBySubtractingModelCellRegion:(id)region
{
  v4 = objc_msgSend_regionBySubtractingRegion_(self, a2, region, v3);

  return v4;
}

- (void)enumerateModelCellRectsUsingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214523C8;
  v8[3] = &unk_278465728;
  v9 = blockCopy;
  v5 = blockCopy;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v6, v8, v7);
}

- (vector<TSUModelCellRect,)modelCellRanges
{
  selfCopy = self;
  v7 = objc_msgSend_cellRanges(selfCopy, v4, v5, v6);
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_22116C9DC(&__p, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 4);
  TSUBaseCellRectVectorFromCellRectVector();
  result = __p;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return result;
}

+ (id)regionFromViewCellRectVector:(const void *)vector
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_22129CFF4(&__p, (*(vector + 1) - *vector) >> 4);
  v6 = *vector;
  if (*(vector + 1) != *vector)
  {
    v7 = 0;
    do
    {
      *(__p + v7) = *(v6 + 16 * v7);
      ++v7;
      v6 = *vector;
    }

    while (v7 < (*(vector + 1) - *vector) >> 4);
  }

  v8 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v4, &__p, v5);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v8;
}

- (id)regionByAddingViewCellRegion:(id)region
{
  v4 = objc_msgSend_regionByAddingRegion_(self, a2, region, v3);

  return v4;
}

- (id)regionBySubtractingViewCellRegion:(id)region
{
  v4 = objc_msgSend_regionBySubtractingRegion_(self, a2, region, v3);

  return v4;
}

- (void)enumerateViewCellRectsUsingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22145263C;
  v8[3] = &unk_278465728;
  v9 = blockCopy;
  v5 = blockCopy;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v6, v8, v7);
}

- (void)fillCellRangeRowMajorSet:(void *)set leftToRight:(BOOL)right
{
  rightCopy = right;
  selfCopy = self;
  v10 = objc_msgSend_cellRanges(selfCopy, v7, v8, v9);
  v11 = *v10;
  v12 = v10[1];
  if (rightCopy)
  {
    if (*v10 != v12)
    {
      do
      {
        v13 = *v11++;
        v18 = v13;
        sub_2214546F4(set, &v18, &v18);
      }

      while (v11 != v12);
    }
  }

  else if (*v10 != v12)
  {
    do
    {
      v14 = *v11++;
      v18 = v14;
      v15 = WORD2(v14);
      v16 = 1000 - (WORD4(v14) + WORD2(v14));
      if (DWORD2(v14))
      {
        v17 = v15 == 0x7FFF;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v16 = -31768;
      }

      WORD2(v18) = v16;
      sub_2214546F4(set, &v18, &v18);
    }

    while (v11 != v12);
  }

  sub_2214546F4(set, dword_2217E1D74, dword_2217E1D74);
}

- (void)fillCellRangeColMajorSet:(void *)set topToBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  selfCopy = self;
  v10 = objc_msgSend_cellRanges(selfCopy, v7, v8, v9);
  v11 = *v10;
  v12 = v10[1];
  if (bottomCopy)
  {
    if (*v10 != v12)
    {
      do
      {
        v13 = *v11++;
        v19 = v13;
        sub_22145480C(set, &v19, &v19);
      }

      while (v11 != v12);
    }
  }

  else if (*v10 != v12)
  {
    do
    {
      v14 = *v11++;
      v19 = v14;
      v15 = v14;
      v16 = 1000000 - v14 - HIDWORD(v14);
      if (HIDWORD(*(&v14 + 1)))
      {
        v17 = v15 == 0x7FFFFFFF;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = -2146483648;
      }

      else
      {
        v18 = v16;
      }

      LODWORD(v19) = v18;
      sub_22145480C(set, &v19, &v19);
    }

    while (v11 != v12);
  }

  sub_22145480C(set, dword_2217E1D74, dword_2217E1D74);
}

@end