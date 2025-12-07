@interface TSTPasteMap
- (TSTPasteMap)initWithPbRange:(TSUCellRect)range tgtRange:(TSUCellRect)tgtRange;
- (TSTPasteMap)initWithPbTable:(id)table pbRange:(TSUCellRect)range tgtTable:(id)tgtTable tgtRange:(TSUCellRect)tgtRange flag:(int)flag;
- (TSUCellCoord)pbCellIDForTgtCellID:(TSUCellCoord)d;
- (TSUCellRect)p_tgtRangeForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps;
- (TSUCellRect)pbRangeForTgtRange:(TSUCellRect)range;
- (_NSRange)p_tgtRangeFromPbRange:(const TSTColumnOrRowMap *)range andMap:(const void *)map;
- (id).cxx_construct;
- (id)createTgtRegionByIntersectingPbRegion:(id)region tgtTableInfo:(id)info tgtRegion:(id)tgtRegion;
- (id)createTgtRegionFromPbRegion:(id)region;
- (unsigned)p_indexForTgtToPbMaps:(void *)maps andMap:(TSTColumnOrRowMap *)map;
- (vector<TSUCellRect,)createTgtMergeMapFromPbMergeMap:(TSTPasteMap *)self andTgtRegion:(SEL)region andTgtBodyRange:(const void *)range;
- (void)p_tgtRangesForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps;
@end

@implementation TSTPasteMap

- (TSTPasteMap)initWithPbRange:(TSUCellRect)range tgtRange:(TSUCellRect)tgtRange
{
  size = tgtRange.size;
  origin = tgtRange.origin;
  v6 = range.size;
  v7 = range.origin;
  v20.receiver = self;
  v20.super_class = TSTPasteMap;
  v8 = [(TSTPasteMap *)&v20 init];
  if (v8)
  {
    row = origin.row;
    v9 = HIDWORD(*&origin);
    v10 = 0;
    if ((size.numberOfColumns / v6.numberOfColumns))
    {
      column = origin.column;
      do
      {
        *&v19 = __PAIR64__(column, v7.column);
        DWORD2(v19) = v6.numberOfColumns;
        BYTE12(v19) = 0;
        sub_2214A2428(&v8->_columnTgtToPbMaps, &v19, &v19);
        ++v10;
        column += v6.numberOfColumns;
      }

      while (v10 < (size.numberOfColumns / v6.numberOfColumns));
    }

    if ((size.numberOfColumns % v6.numberOfColumns))
    {
      LODWORD(v19) = v7.column;
      DWORD1(v19) = v10 * v6.numberOfColumns + v9;
      DWORD2(v19) = (size.numberOfColumns % v6.numberOfColumns);
      BYTE12(v19) = 0;
      sub_2214A2428(&v8->_columnTgtToPbMaps, &v19, &v19);
    }

    v12 = HIDWORD(*&v6);
    v13 = HIDWORD(*&size);
    if (v12 <= v13)
    {
      v14 = 0;
      v15 = row;
      v16 = row;
      do
      {
        *&v19 = __PAIR64__(v16, v7.row);
        DWORD2(v19) = v12;
        BYTE12(v19) = 0;
        sub_2214A2428(&v8->_rowTgtToPbMaps, &v19, &v19);
        ++v14;
        v16 += v12;
      }

      while (v14 < v13 / v12);
    }

    else
    {
      v14 = 0;
      v15 = row;
    }

    if (v13 % v12)
    {
      LODWORD(v19) = v7.row;
      DWORD1(v19) = v15 + v14 * v12;
      DWORD2(v19) = v12;
      BYTE12(v19) = 0;
      sub_2214A2428(&v8->_rowTgtToPbMaps, &v19, &v19);
    }
  }

  return v8;
}

- (TSTPasteMap)initWithPbTable:(id)table pbRange:(TSUCellRect)range tgtTable:(id)tgtTable tgtRange:(TSUCellRect)tgtRange flag:(int)flag
{
  size = range.size;
  v99 = tgtRange.size;
  origin = range.origin;
  v103 = tgtRange.origin;
  tableCopy = table;
  tgtTableCopy = tgtTable;
  v113.receiver = self;
  v113.super_class = TSTPasteMap;
  v107 = tableCopy;
  v111 = [(TSTPasteMap *)&v113 init];
  if (!v111)
  {
    goto LABEL_166;
  }

  v110 = tgtTableCopy;
  v14 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v11, v12, v13);
  v18 = objc_msgSend_maxNumberOfColumns(v14, v15, v16, v17);

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *&origin.column;
  }

  v93 = *&v103 & 0xFFFF00000000;
  if (v103.row != 0x7FFFFFFF && (*&v103 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = v103.column;
  }

  v96 = v26;
  LODWORD(v112) = v26;
  *(&v112 + 4) = column;
  BYTE12(v112) = 0;
  v29 = LOWORD(size.numberOfColumns) + origin.column - 1;
  if (size.numberOfColumns)
  {
    v30 = origin.column == 0x7FFF;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v29 = 0x7FFF;
  }

  v108 = v29;
  if (v99.numberOfColumns)
  {
    v31 = v103.column == 0x7FFF;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = 0x7FFF;
  }

  else
  {
    v32 = LOWORD(v99.numberOfColumns) + v103.column - 1;
  }

  v105 = v32;
  v33 = 0x7FFF;
  v34 = 0x7FFF;
  v100 = v26;
  for (i = 0; ; v24 = i)
  {
    v36 = v34;
    if (v26 != v34)
    {
      if (v26 == v18)
      {
        goto LABEL_64;
      }

      if (flag)
      {
        v20 = v26;
        if (v26 > v108)
        {
          goto LABEL_64;
        }

        i = objc_msgSend_hasHiddenColumnAtIndex_(v107, v19, v26, v21);
        v34 = v26;
        v36 = v26;
      }

      else
      {
        v36 = v26;
        if (v26 > v108)
        {
          if (v22)
          {
            sub_2214A2428((v111 + 32), &v112, &v112);
          }

          LODWORD(v112) = v96;
          *(&v112 + 4) = column;
          BYTE12(v112) = 0;
          v26 = 0x7FFF;
          v36 = v100;
        }

        i = objc_msgSend_hasHiddenColumnAtIndex_(v107, v19, v36, v21, v93);
        v34 = v26;
      }
    }

    hasHiddenColumnAtIndex = v23;
    if (column != v33)
    {
      break;
    }

LABEL_56:
    if ((i & 1) == (hasHiddenColumnAtIndex & 1))
    {
LABEL_46:
      if (((v23 ^ v24) & 1) != 0 || ((v24 ^ i) & 1) == 0)
      {
        if ((v23 ^ v24) & ~i)
        {
          LODWORD(v112) = v36;
          DWORD1(v112) = column;
          BYTE12(v112) = 0;
          goto LABEL_53;
        }

        v22 = DWORD2(v112) + 1;
      }

      else
      {
        if (DWORD2(v112))
        {
          sub_2214A2428((v111 + 32), &v112, &v112);
        }

        LODWORD(v112) = v36;
        DWORD1(v112) = column;
        BYTE12(v112) = i & 1;
LABEL_53:
        v22 = 1;
      }

      DWORD2(v112) = v22;
      v42 = 1;
      v41 = 1;
      goto LABEL_63;
    }

LABEL_57:
    if ((v24 & 1) == 0 && !(v23 & 1 | (DWORD2(v112) == 0)))
    {
      sub_2214A2428((v111 + 32), &v112, &v112);
    }

    v22 = 0;
    DWORD2(v112) = 0;
    v41 = i & 1;
    v42 = hasHiddenColumnAtIndex & 1;
LABEL_63:
    v26 = v41 + v36;
    column += v42;
    v23 = hasHiddenColumnAtIndex;
  }

  if (column == v18)
  {
    goto LABEL_64;
  }

  if (flag == 1)
  {
    v38 = objc_msgSend_range(v110, v19, v20, v21);
    v39 = v19 + WORD2(v38) - 1;
    if (v19)
    {
      v40 = WORD2(v38) == 0x7FFF;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      v39 = 0x7FFF;
    }

    if (column > v39)
    {
      hasHiddenColumnAtIndex = 0;
      v33 = column;
      if ((i & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (column <= v105)
  {
LABEL_55:
    hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v110, v19, column, v21, v93);
    v33 = column;
    goto LABEL_56;
  }

LABEL_64:
  if (DWORD2(v112))
  {
    sub_2214A2428((v111 + 32), &v112, &v112);
  }

  v43 = *(v111 + 4);
  if (v43 != v111 + 40)
  {
    do
    {
      v44 = *(v43 + 1);
      if (v43[40] == 1)
      {
        v45 = v43;
        if (v44)
        {
          do
          {
            v46 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v46 = *(v45 + 2);
            v25 = *v46 == v45;
            v45 = v46;
          }

          while (!v25);
        }

        sub_22112C950(v111 + 4, v43);
        operator delete(v43);
      }

      else if (v44)
      {
        do
        {
          v46 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v46 = *(v43 + 2);
          v25 = *v46 == v43;
          v43 = v46;
        }

        while (!v25);
      }

      v43 = v46;
    }

    while (v46 != v111 + 40);
  }

  v47 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v19, v20, v21, v93);
  v109 = objc_msgSend_maxNumberOfRows(v47, v48, v49, v50);

  if ((*&origin & 0xFFFF00000000) != 0x7FFF00000000 && origin.row == 0x7FFFFFFF)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  if (v94 != 0x7FFF00000000 && v103.row == 0x7FFFFFFF)
  {
    v56 = 0;
  }

  else
  {
    v56 = v103.row;
  }

  v97 = row;
  *&v112 = __PAIR64__(v56, row);
  DWORD2(v112) = 0;
  BYTE12(v112) = 0;
  v95 = objc_msgSend_indexesForBodyRowsInGroupWithRowAtIndex_(v110, v51, v56, v52);
  if (objc_msgSend_isCategorized(v110, v57, v58, v59) && (objc_msgSend_isSummaryOrLabelRow_(v110, v60, v56, v62) & 1) == 0)
  {
    Index = objc_msgSend_lastIndex(v95, v60, v61, v62);
  }

  else
  {
    v63 = objc_msgSend_range(v110, v60, v61, v62);
    if (v64 >> 32)
    {
      v67 = v63 == 0x7FFFFFFF;
    }

    else
    {
      v67 = 1;
    }

    if (v67)
    {
      v68 = 0x7FFFFFFF;
    }

    else
    {
      v68 = v63 + HIDWORD(v64) - 1;
    }

    Index = v68;
  }

  v69 = 0;
  v70 = 0;
  v71 = 0x7FFFFFFF;
  if (HIDWORD(*&size))
  {
    v72 = origin.row == 0x7FFFFFFF;
  }

  else
  {
    v72 = 1;
  }

  if (v72)
  {
    v73 = 0x7FFFFFFF;
  }

  else
  {
    v73 = origin.row + size.numberOfRows - 1;
  }

  v106 = v73;
  if (HIDWORD(*&v99))
  {
    v74 = v103.row == 0x7FFFFFFF;
  }

  else
  {
    v74 = 1;
  }

  if (v74)
  {
    v75 = 0x7FFFFFFF;
  }

  else
  {
    v75 = v103.row + v99.numberOfRows - 1;
  }

  v104 = v75;
  v76 = 0x7FFFFFFF;
  v77 = v97;
  while (!v107)
  {
LABEL_116:
    LODWORD(v82) = v76;
    hasHiddenRowAtIndex = v70;
    if (v77 != v76)
    {
      if (v77 == v109)
      {
        goto LABEL_149;
      }

      if (flag)
      {
        if (v77 > v106)
        {
          goto LABEL_149;
        }

        hasHiddenRowAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v107, v64, v77, v66);
        v76 = v77;
        LODWORD(v82) = v77;
      }

      else
      {
        v82 = v77;
        if (v77 > v106)
        {
          if (DWORD2(v112))
          {
            sub_2214A2428((v111 + 8), &v112, &v112);
          }

          v82 = v97;
          *&v112 = __PAIR64__(v56, v97);
          DWORD2(v112) = 0;
          LODWORD(v77) = 0x7FFFFFFF;
          BYTE12(v112) = 0;
        }

        hasHiddenRowAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v107, v64, v82, v66);
        v76 = v77;
      }
    }

    v84 = v69;
    if (v56 != v71)
    {
      if (v56 == v109)
      {
        goto LABEL_149;
      }

      if (flag == 1)
      {
        if (v56 > Index)
        {
          v84 = 0;
          v71 = v56;
          if (hasHiddenRowAtIndex)
          {
            goto LABEL_141;
          }

          goto LABEL_131;
        }
      }

      else if (v56 > v104)
      {
        goto LABEL_149;
      }

      v84 = objc_msgSend_hasHiddenRowAtIndex_(v110, v64, v56, v66);
      v71 = v56;
    }

    if ((hasHiddenRowAtIndex & 1) != (v84 & 1))
    {
LABEL_141:
      if ((v70 & 1) == 0 && !(v69 & 1 | (DWORD2(v112) == 0)))
      {
        sub_2214A2428((v111 + 8), &v112, &v112);
      }

      DWORD2(v112) = 0;
      v86 = hasHiddenRowAtIndex & 1;
      v87 = v84 & 1;
      goto LABEL_147;
    }

LABEL_131:
    if (((v69 ^ v70) & 1) != 0 || ((v70 ^ hasHiddenRowAtIndex) & 1) == 0)
    {
      if ((v69 ^ v70) & ~hasHiddenRowAtIndex)
      {
        *&v112 = __PAIR64__(v56, v82);
        v85 = 1;
        BYTE12(v112) = 0;
      }

      else
      {
        v85 = DWORD2(v112) + 1;
      }
    }

    else
    {
      if (DWORD2(v112))
      {
        sub_2214A2428((v111 + 8), &v112, &v112);
      }

      *&v112 = __PAIR64__(v56, v82);
      BYTE12(v112) = hasHiddenRowAtIndex & 1;
      v85 = 1;
    }

    DWORD2(v112) = v85;
    v87 = 1;
    v86 = 1;
LABEL_147:
    v77 = (v86 + v82);
    v56 = (v87 + v56);
    v69 = v84;
    v70 = hasHiddenRowAtIndex;
  }

  v78 = objc_msgSend_numberOfRows(v107, v64, v65, v66);
  if (v78 != objc_msgSend_numberOfHiddenRows(v107, v79, v80, v81))
  {
    goto LABEL_116;
  }

LABEL_149:
  if (DWORD2(v112))
  {
    sub_2214A2428((v111 + 8), &v112, &v112);
  }

  v88 = *(v111 + 1);
  if (v88 != v111 + 16)
  {
    do
    {
      v89 = *(v88 + 1);
      if (v88[40] == 1)
      {
        v90 = v88;
        if (v89)
        {
          do
          {
            v91 = v89;
            v89 = *v89;
          }

          while (v89);
        }

        else
        {
          do
          {
            v91 = *(v90 + 2);
            v25 = *v91 == v90;
            v90 = v91;
          }

          while (!v25);
        }

        sub_22112C950(v111 + 1, v88);
        operator delete(v88);
      }

      else if (v89)
      {
        do
        {
          v91 = v89;
          v89 = *v89;
        }

        while (v89);
      }

      else
      {
        do
        {
          v91 = *(v88 + 2);
          v25 = *v91 == v88;
          v88 = v91;
        }

        while (!v25);
      }

      v88 = v91;
    }

    while (v91 != v111 + 16);
  }

  tableCopy = v107;
  tgtTableCopy = v110;
LABEL_166:

  return v111;
}

- (unsigned)p_indexForTgtToPbMaps:(void *)maps andMap:(TSTColumnOrRowMap *)map
{
  v6 = *(maps + 1);
  v4 = maps + 8;
  v5 = v6;
  if (!v6)
  {
    return 0x7FFFFFFF;
  }

  var1 = map->var1;
  v8 = v4;
  do
  {
    if (*(v5 + 8) <= var1)
    {
      v8 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 8) > var1)];
  }

  while (v5);
  if (v8 != v4 && (v9 = *(v8 + 8), map->var2 + var1 <= *(v8 + 9) + v9))
  {
    return var1 - v9 + *(v8 + 7);
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

- (_NSRange)p_tgtRangeFromPbRange:(const TSTColumnOrRowMap *)range andMap:(const void *)map
{
  v4 = *MEMORY[0x277D81490];
  var2 = *(MEMORY[0x277D81490] + 8);
  v8 = *(map + 1);
  v6 = (map + 8);
  v7 = v8;
  if (v8)
  {
    var0 = range->var0;
    v10 = v6;
    do
    {
      if (v7[7] <= var0)
      {
        v10 = v7;
      }

      v7 = *&v7[2 * (v7[7] > var0)];
    }

    while (v7);
    if (v10 != v6)
    {
      v11 = v10[7];
      if (var0 >= v11 && v10[9] + v11 >= range->var2 + var0)
      {
        v4 = var0 - v11 + v10[8];
        var2 = range->var2;
      }
    }
  }

  result.length = var2;
  result.location = v4;
  return result;
}

- (TSUCellRect)p_tgtRangeForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps
{
  numberOfRows = range.size.numberOfRows;
  row = range.origin.row;
  v9 = *&range.origin & 0xFFFF00000000;
  if (range.origin.row != 0x7FFFFFFF && v9 == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = range.origin.column;
  }

  v26[0] = column;
  v26[1] = 0;
  v26[2] = range.size.numberOfColumns;
  v27 = 0;
  v12 = objc_msgSend_p_tgtRangeFromPbRange_andMap_(self, a2, v26, maps);
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFF00000000;
  }

  else
  {
    v15 = v12 << 32;
  }

  if (v9 != 0x7FFF00000000 && row == 0x7FFFFFFF)
  {
    v17 = 0;
  }

  else
  {
    v17 = row;
  }

  v24[0] = v17;
  v24[1] = 0;
  v24[2] = numberOfRows;
  v25 = 0;
  v18 = objc_msgSend_p_tgtRangeFromPbRange_andMap_(self, v13, v24, rowMaps);
  v20 = v19 << 32;
  v21 = v18;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
    v21 = 0x7FFFFFFFLL;
  }

  v22 = (v21 | v15);
  v23 = (v20 | v14);
  result.size = v23;
  result.origin = v22;
  return result;
}

- (TSUCellRect)pbRangeForTgtRange:(TSUCellRect)range
{
  LODWORD(v3) = range.size.numberOfColumns;
  row = range.origin.row;
  v6 = *&range.origin & 0xFFFF00000000;
  if (range.origin.row != 0x7FFFFFFF && v6 == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = range.origin.column;
  }

  v20 = 0;
  v21 = column;
  numberOfRows = range.size.numberOfRows;
  v10 = *&range.size & 0xFFFFFFFF00000000;
  numberOfColumns = range.size.numberOfColumns;
  v23 = 0;
  v11 = objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, a2, &self->_columnTgtToPbMaps, &v20);
  if (v11 == 0x7FFFFFFF)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  if (v11 == 0x7FFFFFFF)
  {
    v13 = 0x7FFF00000000;
  }

  else
  {
    v13 = v11 << 32;
  }

  if (v6 != 0x7FFF00000000 && row == 0x7FFFFFFF)
  {
    v15 = 0;
  }

  else
  {
    v15 = row;
  }

  v20 = 0;
  v21 = v15;
  v23 = 0;
  numberOfColumns = numberOfRows;
  v16 = objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, v12, &self->_rowTgtToPbMaps, &v20);
  if (v16 == 0x7FFFFFFF)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v18 = (v13 | v16);
  v19 = (v17 | v3);
  result.size = v19;
  result.origin = v18;
  return result;
}

- (TSUCellCoord)pbCellIDForTgtCellID:(TSUCellCoord)d
{
  row = d.row;
  v9 = 0;
  column = d.column;
  v11 = 1;
  v12 = 0;
  v5 = objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, a2, &self->_columnTgtToPbMaps, &v9);
  v9 = 0;
  column = row;
  if (v5 == 0x7FFFFFFF)
  {
    v7 = 0x7FFF00000000;
  }

  else
  {
    v7 = v5 << 32;
  }

  v12 = 0;
  v11 = 1;
  return (v7 | objc_msgSend_p_indexForTgtToPbMaps_andMap_(self, v6, &self->_rowTgtToPbMaps, &v9));
}

- (id)createTgtRegionFromPbRegion:(id)region
{
  regionCopy = region;
  sub_2214A24F4(v26, self->_rowTgtToPbMaps.__tree_.__begin_node_, &self->_rowTgtToPbMaps.__tree_.__end_node_.__left_);
  sub_2214A24F4(v25, self->_columnTgtToPbMaps.__tree_.__begin_node_, &self->_columnTgtToPbMaps.__tree_.__end_node_.__left_);
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = sub_2214A105C;
  v20 = sub_2214A1080;
  v21 = &unk_22188E88F;
  v23 = 0;
  v24 = 0;
  __p = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_2214A1098;
  v13[3] = &unk_2834A8DE0;
  v13[4] = self;
  sub_2214A274C(v14, v25);
  sub_2214A274C(v15, v26);
  v13[5] = &v16;
  objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v5, v13, v6);
  v7 = objc_alloc_init(TSTCellRegion);
  v9 = v7;
  v10 = v17[6];
  if (v10 == v17[7])
  {
    v11 = v7;
  }

  else
  {
    do
    {
      v11 = objc_msgSend_regionByAddingRange_(v9, v8, *v10, v10[1]);

      v10 += 2;
      v9 = v11;
    }

    while (v10 != v17[7]);
  }

  sub_2210BC9F8(v15, v15[1]);
  sub_2210BC9F8(v14, v14[1]);
  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  sub_2210BC9F8(v25, v25[1]);
  sub_2210BC9F8(v26, v26[1]);

  return v11;
}

- (id)createTgtRegionByIntersectingPbRegion:(id)region tgtTableInfo:(id)info tgtRegion:(id)tgtRegion
{
  regionCopy = region;
  infoCopy = info;
  tgtRegionCopy = tgtRegion;
  if (objc_msgSend_isRectangle(regionCopy, v11, v12, v13))
  {
    v17 = objc_msgSend_boundingCellRange(tgtRegionCopy, v14, v15, v16);
    v19 = objc_msgSend_indexesOfHiddenColumnsInCellRange_(infoCopy, v18, v17, v18);
    v22 = objc_msgSend_regionBySubtractingColumnIndexes_(tgtRegionCopy, v20, v19, v21);

    v26 = objc_msgSend_boundingCellRange(v22, v23, v24, v25);
    v28 = objc_msgSend_indexesOfHiddenRowsInCellRange_(infoCopy, v27, v26, v27);
    v31 = objc_msgSend_regionBySubtractingRowIndexes_(v22, v29, v28, v30);

    tgtRegionCopy = v31;
    v32 = tgtRegionCopy;
  }

  else
  {
    v33 = objc_msgSend_gatherer(TSTCellRegionGatherer, v14, v15, v16);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2214A15D8;
    v41[3] = &unk_278460BD0;
    v41[4] = self;
    v42 = regionCopy;
    v34 = v33;
    v43 = v34;
    objc_msgSend_enumerateCellRangesUsingBlock_(tgtRegionCopy, v35, v41, v36);
    v32 = objc_msgSend_gatheredCellRegion(v34, v37, v38, v39);
  }

  return v32;
}

- (void)p_tgtRangesForPbRange:(TSUCellRect)range givenColumnMaps:(const void *)maps rowMaps:(const void *)rowMaps
{
  numberOfRows = range.size.numberOfRows;
  row = range.origin.row;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  memset(__p, 0, sizeof(__p));
  v9 = *&range.origin & 0xFFFF00000000;
  v10 = range.origin.row != 0x7FFFFFFF && v9 == 0x7FFF00000000;
  column = range.origin.column;
  if (v10)
  {
    column = 0;
  }

  v43.n128_u64[0] = column | 0x7FFFFFFF00000000;
  v43.n128_u32[2] = range.size.numberOfColumns;
  v43.n128_u8[12] = 0;
  sub_2214A27A4(v47, &v43);
  v12 = *(&v48 + 1);
  if (*(&v48 + 1))
  {
    v13 = maps + 8;
    do
    {
      v14 = v12 - 1;
      v15 = (*(*(&v47[0] + 1) + (((v48 + v14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v48 + v14));
      v16 = *v15;
      v17 = v15[2];
      *(&v48 + 1) = v14;
      sub_2213C6EDC(v47, 1);
      v18 = *v13;
      if (*v13)
      {
        v19 = v13;
        do
        {
          if (*(v18 + 28) <= v16)
          {
            v19 = v18;
          }

          v18 = *(v18 + 8 * (*(v18 + 28) > v16));
        }

        while (v18);
        if (v19 != v13)
        {
          v20 = v17 + v16;
          do
          {
            v21 = *(v19 + 7);
            v22 = *(v19 + 9) + v21;
            if (v22 > v16)
            {
              v43.n128_u64[0] = __PAIR64__(v16 - v21 + *(v19 + 8), v16);
              if (v20 <= v22)
              {
                v43.n128_u32[2] = v17;
                v43.n128_u8[12] = 0;
                sub_2214A1EEC(__p, &v43);
              }

              else
              {
                v43.n128_u32[2] = v22 - v16;
                v43.n128_u8[12] = 0;
                sub_2214A1EEC(__p, &v43);
                v23 = *(v19 + 7);
                v24 = *(v19 + 9) + v23;
                v45.n128_u64[0] = __PAIR64__(v20 + *(v19 + 8) - (v23 + v43.n128_u32[2]), v24);
                v45.n128_u32[2] = v20 - v24;
                v45.n128_u8[12] = 0;
                sub_2214A27A4(v47, &v45);
              }
            }

            v25 = v19[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v19[2];
                v10 = *v26 == v19;
                v19 = v26;
              }

              while (!v10);
            }

            v19 = v26;
          }

          while (v26 != v13);
        }
      }

      v12 = *(&v48 + 1);
    }

    while (*(&v48 + 1));
  }

  v43 = 0uLL;
  v44 = 0;
  if (v9 != 0x7FFF00000000 && row == 0x7FFFFFFF)
  {
    v28 = 0;
  }

  else
  {
    v28 = row;
  }

  v45.n128_u64[0] = v28 | 0x7FFFFFFF00000000;
  v45.n128_u32[2] = numberOfRows;
  v45.n128_u8[12] = 0;
  sub_2214A27A4(v47, &v45);
  v29 = *(&v48 + 1);
  if (*(&v48 + 1))
  {
    v30 = rowMaps + 8;
    do
    {
      v31 = v29 - 1;
      v32 = (*(*(&v47[0] + 1) + (((v48 + v31) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v48 + v31));
      v33 = *v32;
      v34 = v32[2];
      *(&v48 + 1) = v31;
      sub_2213C6EDC(v47, 1);
      v35 = *v30;
      if (*v30)
      {
        v36 = v30;
        do
        {
          if (*(v35 + 28) <= v33)
          {
            v36 = v35;
          }

          v35 = *(v35 + 8 * (*(v35 + 28) > v33));
        }

        while (v35);
        if (v36 != v30)
        {
          do
          {
            v37 = *(v36 + 7);
            v38 = *(v36 + 9) + v37;
            if (v38 > v33)
            {
              v45.n128_u64[0] = __PAIR64__(v33 - v37 + *(v36 + 8), v33);
              if (v34 + v33 <= v38)
              {
                v45.n128_u32[2] = v34;
                v45.n128_u8[12] = 0;
                sub_2214A1EEC(&v43, &v45);
              }

              else
              {
                v45.n128_u32[2] = v38 - v33;
                v45.n128_u8[12] = 0;
                sub_2214A1EEC(&v43, &v45);
                v42.n128_u64[0] = __PAIR64__(v33 - *(v36 + 7) + *(v36 + 8) + v45.n128_u32[2], *(v36 + 9) + *(v36 + 7));
                v42.n128_u32[2] = v34 - v45.n128_u32[2];
                v42.n128_u8[12] = 0;
                sub_2214A27A4(v47, &v42);
              }
            }

            v39 = v36[1];
            if (v39)
            {
              do
              {
                v40 = v39;
                v39 = *v39;
              }

              while (v39);
            }

            else
            {
              do
              {
                v40 = v36[2];
                v10 = *v40 == v36;
                v36 = v40;
              }

              while (!v10);
            }

            v36 = v40;
          }

          while (v40 != v30);
        }
      }

      v29 = *(&v48 + 1);
    }

    while (*(&v48 + 1));
  }

  operator new();
}

- (vector<TSUCellRect,)createTgtMergeMapFromPbMergeMap:(TSTPasteMap *)self andTgtRegion:(SEL)region andTgtBodyRange:(const void *)range
{
  size = a6.size;
  origin = a6.origin;
  sub_2214A24F4(v26, self->_rowTgtToPbMaps.__tree_.__begin_node_, &self->_rowTgtToPbMaps.__tree_.__end_node_.__left_);
  selfCopy = self;
  sub_2214A24F4(v25, self->_columnTgtToPbMaps.__tree_.__begin_node_, &self->_columnTgtToPbMaps.__tree_.__end_node_.__left_);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v14 = *range;
  v13 = *(range + 1);
  v23 = v13;
  while (v14 != v13)
  {
    v15 = objc_msgSend_p_tgtRangesForPbRange_givenColumnMaps_rowMaps_(selfCopy, v12, *v14, *(v14 + 8), v25, v26);
    v17 = *v15;
    v16 = v15[1];
    if (*v15 != v16)
    {
      do
      {
        if (*(v17 + 8) == *(v14 + 8) && *(v17 + 12) == *(v14 + 12))
        {
          v19 = *v17;
          v20 = *(v17 + 8);
          if (!sub_2214A1FC4(*v17, v20, origin, size))
          {
            if (objc_msgSend_containsCellRange_(*a5, v21, v19, v20))
            {
              sub_221083454(retstr, v17);
            }
          }
        }

        v17 += 16;
      }

      while (v17 != v16);
      v17 = *v15;
    }

    if (v17)
    {
      v15[1] = v17;
      operator delete(v17);
    }

    MEMORY[0x223DA1450](v15, 0x20C40960023A9);
    v14 += 16;
    v13 = v23;
  }

  sub_2210BC9F8(v25, v25[1]);
  sub_2210BC9F8(v26, v26[1]);
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end