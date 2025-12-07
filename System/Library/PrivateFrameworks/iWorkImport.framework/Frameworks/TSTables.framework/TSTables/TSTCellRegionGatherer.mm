@interface TSTCellRegionGatherer
+ (id)gatherer;
- (TSTCellRegionGatherer)init;
- (TSUCellRect)lastCellRangeAdded;
- (id).cxx_construct;
- (id)gatheredCellRegion;
- (id)p_gatherCellRegionViaCellRegionAddition;
- (id)p_gatherCellRegionViaReducedOverlap;
- (void)addColumns:(id)columns;
- (void)addRange:(TSUCellRect)range;
- (void)addRegion:(id)region;
- (void)addRows:(id)rows;
- (void)moveColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowsFromRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)p_addRange:(TSUCellRect)range;
- (void)p_cleanupStashedRangeIffExists;
- (void)removeColumns:(id)columns;
- (void)removeRows:(id)rows;
@end

@implementation TSTCellRegionGatherer

+ (id)gatherer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSTCellRegionGatherer)init
{
  v9.receiver = self;
  v9.super_class = TSTCellRegionGatherer;
  v2 = [(TSTCellRegionGatherer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    memset(v5, 0, sizeof(v5));
    v6 = 1065353216;
    memset(v7, 0, sizeof(v7));
    v8 = 1065353216;
    *(v2 + 3) = 0;
    *(v2 + 8) = xmmword_2217E08F0;
    sub_22120A3D8((v2 + 32), v5);
    sub_22120A3D8(&v3->_gathererMap._encodedJoinCoordToCandidateIndexMap, v7);
    sub_2210BDEC0(v7);
    sub_2210BDEC0(v5);
  }

  return v3;
}

- (void)addRange:(TSUCellRect)range
{
  rangeCopy = range;
  if (TSUCellRect::isValidOrSpanning(&rangeCopy))
  {
    if (TSUCellRect::isValid(&self->_lastCellRangeAdded))
    {
      size = self->_lastCellRangeAdded.size;
      v5 = rangeCopy;
      v14.origin = self->_lastCellRangeAdded.origin;
      v14.size = size;
      v13 = rangeCopy;
      v6 = sub_2211C1FC4(*&v14.origin, *&size, *&rangeCopy.origin, *&rangeCopy.size);
      v8 = v7;
      if (v7.numberOfRows * v7.numberOfColumns != v5.size.numberOfRows * v5.size.numberOfColumns + (size.numberOfRows * size.numberOfColumns) && (TSUCellRect::contains(&v14, &v13) & 1) == 0 && !TSUCellRect::contains(&v13, &v14))
      {
        v6 = 0x7FFF7FFFFFFFLL;
        v8 = 0;
      }

      v14.origin = v6;
      v14.size = v8;
      v9 = &v14;
      if ((TSUCellRect::isValid(&v14) & 1) == 0)
      {
        objc_msgSend_p_addRange_(self, v10, *&self->_lastCellRangeAdded.origin, *&self->_lastCellRangeAdded.size);
        v9 = &rangeCopy;
      }

      v11 = *v9;
    }

    else
    {
      v11 = rangeCopy;
    }

    self->_lastCellRangeAdded = v11;
  }
}

- (void)addRegion:(id)region
{
  regionCopy = region;
  if (!self->_gathererMap._cellRangeIndex)
  {
    self->_mightOverlap = 1;
  }

  objc_msgSend_p_cleanupStashedRangeIffExists(self, v4, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221208C18;
  v10[3] = &unk_278461548;
  v10[4] = self;
  objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v8, v10, v9);
}

- (void)addColumns:(id)columns
{
  columnsCopy = columns;
  v8 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7);
  v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

  objc_msgSend_addColumns_(v12, v13, columnsCopy, v14);
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v17);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v19);
  sub_2210BDEC0(v19);
  sub_2210BDEC0(v17);
  objc_msgSend_addRegion_(self, v15, v12, v16);
}

- (void)addRows:(id)rows
{
  rowsCopy = rows;
  v8 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7);
  v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

  objc_msgSend_addRows_(v12, v13, rowsCopy, v14);
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v17);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v19);
  sub_2210BDEC0(v19);
  sub_2210BDEC0(v17);
  objc_msgSend_addRegion_(self, v15, v12, v16);
}

- (void)removeColumns:(id)columns
{
  columnsCopy = columns;
  v8 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7);
  v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

  objc_msgSend_removeColumns_(v12, v13, columnsCopy, v14);
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v17);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v19);
  sub_2210BDEC0(v19);
  sub_2210BDEC0(v17);
  objc_msgSend_addRegion_(self, v15, v12, v16);
}

- (void)removeRows:(id)rows
{
  rowsCopy = rows;
  v8 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7);
  v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

  objc_msgSend_removeRows_(v12, v13, rowsCopy, v14);
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v17);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v19);
  sub_2210BDEC0(v19);
  sub_2210BDEC0(v17);
  objc_msgSend_addRegion_(self, v15, v12, v16);
}

- (void)moveColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_gatheredCellRegion(self, a2, range.location, range.length);
  v10 = objc_msgSend_regionByMovingColumnsFromRange_toIndex_(v8, v9, location, length, indexCopy);

  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v13);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v15);
  sub_2210BDEC0(v15);
  sub_2210BDEC0(v13);
  objc_msgSend_addRegion_(self, v11, v10, v12);
}

- (void)moveRowsFromRange:(_NSRange)range toIndex:(unsigned int)index
{
  v4 = *&index;
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_gatheredCellRegion(self, a2, range.location, range.length);
  v10 = objc_msgSend_regionByMovingRowsFromRange_toIndex_(v8, v9, location, length, v4);

  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v13);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v15);
  sub_2210BDEC0(v15);
  sub_2210BDEC0(v13);
  objc_msgSend_addRegion_(self, v11, v10, v12);
}

- (void)p_cleanupStashedRangeIffExists
{
  if (TSUCellRect::isValid(&self->_lastCellRangeAdded))
  {
    objc_msgSend_p_addRange_(self, v3, *&self->_lastCellRangeAdded.origin, *&self->_lastCellRangeAdded.size);
    self->_lastCellRangeAdded = xmmword_2217E0900;
  }
}

- (void)p_addRange:(TSUCellRect)range
{
  rangeCopy = range;
  if (TSUCellRect::isValidOrSpanning(&rangeCopy))
  {
    if (!self->_gathererMap._cellRangeIndex)
    {
      self->_mightOverlap = 1;
    }

    v4 = sub_221087F14(&self->_originToRangeMap.__table_.__bucket_list_.__ptr_, &rangeCopy.origin);
    v5 = (v4 + 3);
    if (!v4)
    {
      v5 = &xmmword_2217E0900;
    }

    v25 = *v5;
    isValid = TSUCellRect::isValid(&v25);
    origin = rangeCopy.origin;
    size = rangeCopy.size;
    if (!isValid || !HIDWORD(*&v25.size) || !v25.size.numberOfColumns || !HIDWORD(*&rangeCopy.size) || !rangeCopy.size.numberOfColumns)
    {
      goto LABEL_48;
    }

    v9 = *&v25.origin & 0xFFFF00000000;
    if (v25.origin.row == 0x7FFFFFFFLL && v9 != 0x7FFF00000000)
    {
      goto LABEL_13;
    }

    v15 = v9 != 0x7FFF00000000 && v25.origin.row == 0x7FFFFFFF;
    if (!v15 && v25.origin.row > rangeCopy.origin.row)
    {
      goto LABEL_48;
    }

    v16 = v25.origin.row + v25.size.numberOfRows - 1;
    if (v25.origin.row == 0x7FFFFFFF)
    {
      v16 = 0x7FFFFFFF;
    }

    if (v16 < rangeCopy.origin.row)
    {
      goto LABEL_48;
    }

    if (v25.origin.row == 0x7FFFFFFFLL || v9 != 0x7FFF00000000)
    {
LABEL_13:
      v10 = HIDWORD(*&rangeCopy.origin);
      column = v25.origin.column;
      if (v25.origin.column > rangeCopy.origin.column || (v25.origin.column != 0x7FFF ? (v12 = v25.size.numberOfColumns == 0) : (v12 = 1), (v13 = LOWORD(v25.size.numberOfColumns) - 1 + v25.origin.column, !v12) ? (v14 = LOWORD(v25.size.numberOfColumns) - 1 + v25.origin.column) : (v14 = 0x7FFF), v14 < rangeCopy.origin.column))
      {
LABEL_48:
        sub_221208378(&self->_gathererMap._cellRangeIndex, origin, size, 0);
        v27 = &rangeCopy;
        v24 = sub_22120B15C(&self->_originToRangeMap.__table_.__bucket_list_.__ptr_, &rangeCopy.origin, &unk_2217E0910, &v27);
        *(v24 + 3) = rangeCopy;
        return;
      }
    }

    else
    {
      v13 = LOWORD(v25.size.numberOfColumns) + 32766;
      v10 = HIDWORD(*&rangeCopy.origin);
      column = 0x7FFF;
    }

    if (column == 0x7FFF)
    {
      v17 = 0x7FFF;
    }

    else
    {
      v17 = v13;
    }

    v18 = v10;
    v19 = LOWORD(rangeCopy.size.numberOfColumns) + v10 - 1;
    if (v18 == 0x7FFF || rangeCopy.size.numberOfColumns == 0)
    {
      v21 = 0x7FFF;
    }

    else
    {
      v21 = v19;
    }

    if (v17 < v21)
    {
      goto LABEL_48;
    }

    v22 = v25.origin.row + v25.size.numberOfRows - 1;
    if (v25.origin.row == 0x7FFFFFFF)
    {
      v22 = 0x7FFFFFFF;
    }

    v23 = rangeCopy.origin.row + rangeCopy.size.numberOfRows - 1;
    if (rangeCopy.origin.row == 0x7FFFFFFF)
    {
      v23 = 0x7FFFFFFF;
    }

    if (v22 < v23)
    {
      goto LABEL_48;
    }
  }
}

- (id)gatheredCellRegion
{
  objc_msgSend_p_cleanupStashedRangeIffExists(self, a2, v2, v3);
  if (self->_gathererMap._cellRanges.__table_.__size_ > 0x63)
  {
    objc_msgSend_p_gatherCellRegionViaReducedOverlap(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend_p_gatherCellRegionViaCellRegionAddition(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)p_gatherCellRegionViaCellRegionAddition
{
  sub_2212088FC(&self->_gathererMap, &__p);
  if (self->_mightOverlap)
  {
    v7 = objc_msgSend_invalidRegion(TSTMutableCellRegion, v3, v4, v5);
    v8 = __p;
    v9 = v12;
    while (v8 != v9)
    {
      objc_msgSend_addRange_(v7, v6, *v8, v8[1]);
      v8 += 2;
    }
  }

  else
  {
    v7 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v3, &__p, v5);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v7;
}

- (id)p_gatherCellRegionViaReducedOverlap
{
  location = self->_gathererMap._rowRange.location;
  length = self->_gathererMap._rowRange.length;
  sub_2212088FC(&self->_gathererMap, &v16);
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_22116C9DC(&__p, v16, v17, (v17 - v16) >> 4);
  sub_221209670(&__p, location, length, v12);
  *&self->_gathererMap._cellRangeIndex = *v12;
  self->_gathererMap._rowRange.length = v13;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v14);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v15);
  sub_2210BDEC0(v15);
  sub_2210BDEC0(v14);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  sub_2212088FC(&self->_gathererMap, v12);
  v7 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v5, v12, v6);
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v7;
}

- (TSUCellRect)lastCellRangeAdded
{
  size = self->_lastCellRangeAdded.size;
  origin = self->_lastCellRangeAdded.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 8) = xmmword_2217E08F0;
  *(self + 3) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  return self;
}

@end