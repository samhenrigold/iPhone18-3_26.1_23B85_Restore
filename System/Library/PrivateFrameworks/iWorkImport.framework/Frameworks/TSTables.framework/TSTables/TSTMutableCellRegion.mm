@interface TSTMutableCellRegion
- (void)addColumns:(id)columns;
- (void)addRegion:(id)region;
- (void)addRows:(id)rows;
- (void)clear;
- (void)p_addRange:(TSUCellRect)range calculateAncillaryInfo:(BOOL)info;
- (void)removeColumns:(id)columns;
- (void)removeRows:(id)rows;
@end

@implementation TSTMutableCellRegion

- (void)clear
{
  self->super._cellRanges.__end_ = self->super._cellRanges.__begin_;
  self->super._boundingCellRange = xmmword_2217E0780;
  intersectingColumnsIndexSet = self->super._intersectingColumnsIndexSet;
  self->super._cellCount = 0;
  self->super._intersectingColumnsIndexSet = 0;

  intersectingRowsIndexSet = self->super._intersectingRowsIndexSet;
  self->super._intersectingRowsIndexSet = 0;

  *&self->super._firstCellID.row = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
}

- (void)p_addRange:(TSUCellRect)range calculateAncillaryInfo:(BOOL)info
{
  origin = range.origin;
  *(&v32 + 1) = *MEMORY[0x277D85DE8];
  if (range.origin.row != 0x7FFFFFFF && (*&range.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = range.size;
    if (range.size.numberOfRows)
    {
      if (range.size.numberOfColumns)
      {
        if (objc_msgSend_isValid(self, a2, *&range.origin, *&range.size))
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          sub_22116C9DC(&v28, self->super._cellRanges.__begin_, self->super._cellRanges.__end_, self->super._cellRanges.__end_ - self->super._cellRanges.__begin_);
          v25 = 0;
          v26 = 0;
          v27 = 0;
          sub_22116C9DC(&v25, v28, v29, (v29 - v28) >> 4);
          objc_msgSend_clear(self, v9, v10, v11);
          *&v31 = origin;
          *(&v31 + 1) = size;
          v23 = 0;
          v24 = 0;
          v22 = 0;
          sub_2214539F0(&v22, &v31, &v32, 1uLL);
          v31 = 0uLL;
          *&v32 = 0;
          sub_22116C9DC(&v31, v22, v23, (v23 - v22) >> 4);
          objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v12, &v28, &v22);
          for (i = __p; i != v21; i += 2)
          {
            objc_msgSend_p_insertRangeIntoRegion_(self, v13, *i, i[1]);
          }

          if (info)
          {
            objc_msgSend_p_calculateAncillaryInformation(self, v13, v14, v15);
          }

          if (__p)
          {
            operator delete(__p);
          }

          if (v31)
          {
            *(&v31 + 1) = v31;
            operator delete(v31);
          }

          if (v22)
          {
            v23 = v22;
            operator delete(v22);
          }

          if (v25)
          {
            v26 = v25;
            operator delete(v25);
          }

          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }
        }

        else
        {
          objc_msgSend_p_insertRangeIntoRegion_(self, v8, origin, size);

          objc_msgSend_p_calculateAncillaryInformation(self, v17, v18, v19);
        }
      }
    }
  }
}

- (void)addRegion:(id)region
{
  regionCopy = region;
  v8 = regionCopy;
  if (regionCopy && objc_msgSend_isValid(regionCopy, v5, v6, v7))
  {
    if (objc_msgSend_isValid(self, v9, v10, v11))
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      sub_22116C9DC(&v32, self->super._cellRanges.__begin_, self->super._cellRanges.__end_, self->super._cellRanges.__end_ - self->super._cellRanges.__begin_);
      objc_msgSend_clear(self, v14, v15, v16);
      v17 = v8;
      v21 = objc_msgSend_cellRanges(v17, v18, v19, v20);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      sub_22116C9DC(&v29, *v21, *(v21 + 8), (*(v21 + 8) - *v21) >> 4);
      objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v22, &v32, &v29);
      for (i = __p; i != v28; i += 2)
      {
        objc_msgSend_p_insertRangeIntoRegion_(self, v23, *i, i[1]);
      }

      objc_msgSend_p_calculateAncillaryInformation(self, v23, v24, v25);
      if (__p)
      {
        operator delete(__p);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }
    }

    else
    {
      objc_msgSend_p_copyFromRegion_(self, v12, v8, v13);
    }
  }
}

- (void)addColumns:(id)columns
{
  columnsCopy = columns;
  v7 = columnsCopy;
  if (columnsCopy)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_221452BA0;
    v11[3] = &unk_2784623E0;
    v11[4] = self;
    v11[5] = v12;
    objc_msgSend_enumerateRangesUsingBlock_(columnsCopy, v5, v11, v6);
    objc_msgSend_p_calculateAncillaryInformation(self, v8, v9, v10);
    _Block_object_dispose(v12, 8);
  }
}

- (void)addRows:(id)rows
{
  rowsCopy = rows;
  v7 = rowsCopy;
  if (rowsCopy)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_221452F18;
    v11[3] = &unk_2784623E0;
    v11[4] = self;
    v11[5] = v12;
    objc_msgSend_enumerateRangesUsingBlock_(rowsCopy, v5, v11, v6);
    objc_msgSend_p_calculateAncillaryInformation(self, v8, v9, v10);
    _Block_object_dispose(v12, 8);
  }
}

- (void)removeRows:(id)rows
{
  rowsCopy = rows;
  if (objc_msgSend_count(rowsCopy, v5, v6, v7))
  {
    v11 = objc_msgSend_boundingCellRange(self, v8, v9, v10);
    if (v12 >> 32)
    {
      v15 = v11 == 0x7FFFFFFF;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 0x80000000;
    }

    else
    {
      v16 = (HIDWORD(v12) + v11);
    }

    v17 = objc_msgSend_mutableCopy(self, v12, v13, v14);
    objc_msgSend_clear(self, v18, v19, v20);
    v22 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v21, 0, v16);
    objc_msgSend_removeIndexes_(v22, v23, rowsCopy, v24);
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = sub_221453378;
    v34 = &unk_2784655C0;
    v37 = v39;
    v38 = v41;
    v25 = v17;
    v35 = v25;
    selfCopy = self;
    objc_msgSend_enumerateRangesUsingBlock_(v22, v26, &v31, v27);
    objc_msgSend_p_calculateAncillaryInformation(self, v28, v29, v30, v31, v32, v33, v34);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);
  }
}

- (void)removeColumns:(id)columns
{
  columnsCopy = columns;
  if (objc_msgSend_count(columnsCopy, v5, v6, v7))
  {
    v11 = objc_msgSend_boundingCellRange(self, v8, v9, v10);
    if (v12)
    {
      v15 = (v11 & 0xFFFF00000000) == 0x7FFF00000000;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 0x8000;
    }

    else
    {
      v16 = (v12 + WORD2(v11) - 1) + 1;
    }

    v17 = objc_msgSend_mutableCopy(self, v12, v13, v14);
    objc_msgSend_clear(self, v18, v19, v20);
    v22 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v21, 0, v16);
    objc_msgSend_removeIndexes_(v22, v23, columnsCopy, v24);
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v40 = 0;
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = sub_22145366C;
    v34 = &unk_2784655C0;
    v37 = v39;
    v38 = v41;
    v25 = v17;
    v35 = v25;
    selfCopy = self;
    objc_msgSend_enumerateRangesUsingBlock_(v22, v26, &v31, v27);
    objc_msgSend_p_calculateAncillaryInformation(self, v28, v29, v30, v31, v32, v33, v34);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(v41, 8);
  }
}

@end