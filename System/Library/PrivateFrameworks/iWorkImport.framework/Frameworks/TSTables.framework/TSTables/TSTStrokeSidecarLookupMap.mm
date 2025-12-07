@interface TSTStrokeSidecarLookupMap
- (BOOL)anyCellBordersInThisRow;
- (BOOL)cellBorderAtColumn:(unsigned __int16)column;
- (TSTStrokeSidecarLookupMap)initWithStrokeSidecar:(id)sidecar region:(id)region;
- (void)setIteratorToRow:(unsigned int)row;
@end

@implementation TSTStrokeSidecarLookupMap

- (TSTStrokeSidecarLookupMap)initWithStrokeSidecar:(id)sidecar region:(id)region
{
  sidecarCopy = sidecar;
  regionCopy = region;
  v12.receiver = self;
  v12.super_class = TSTStrokeSidecarLookupMap;
  v9 = [(TSTStrokeSidecarLookupMap *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeSidecar, sidecar);
    objc_storeStrong(&v10->_region, region);
  }

  return v10;
}

- (void)setIteratorToRow:(unsigned int)row
{
  v4 = *&row;
  v6 = objc_msgSend_intersectingColumnsInRow_(self->_region, a2, *&row, v3);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_mutableCopy(v6, v10, v11, v12);
    v17 = objc_msgSend_strokeSidecar(self, v14, v15, v16);
    v20 = objc_msgSend_strokeLayerForTopOfRow_(v17, v18, v4, v19);

    Index = objc_msgSend_firstIndex(v13, v21, v22, v23);
    if (Index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v27 = objc_msgSend_findStrokeAndRangeAtIndex_(v20, v24, Index, v26);

        v32 = objc_msgSend_range(v27, v29, v30, v31);
        v33 = v24;
        if (!v24)
        {
          break;
        }

        v34 = v32;
        objc_msgSend_removeIndexesInRange_(v13, v24, v32, v24);
        v37 = &v33[v34] >= v34 ? objc_msgSend_indexGreaterThanOrEqualToIndex_(v13, v35, &v33[v34], v36) : objc_msgSend_indexGreaterThanOrEqualToIndex_(v13, v35, 0x7FFFFFFFFFFFFFFFLL, v36);
        Index = v37;
        v28 = v27;
      }

      while (v37 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v38 = objc_msgSend_strokeSidecar(self, v24, Index, v26);
    v41 = objc_msgSend_strokeLayerForBottomOfRow_(v38, v39, v4, v40);

    v46 = objc_msgSend_firstIndex(v13, v42, v43, v44);
    if (v46 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = v27;
    }

    else
    {
      do
      {
        v48 = objc_msgSend_findStrokeAndRangeAtIndex_(v41, v45, v46, v47);

        v52 = objc_msgSend_range(v48, v49, v50, v51);
        v53 = v45;
        if (!v45)
        {
          break;
        }

        v54 = v52;
        objc_msgSend_removeIndexesInRange_(v13, v45, v52, v45);
        v57 = &v53[v54] >= v54 ? objc_msgSend_indexGreaterThanOrEqualToIndex_(v13, v55, &v53[v54], v56) : objc_msgSend_indexGreaterThanOrEqualToIndex_(v13, v55, 0x7FFFFFFFFFFFFFFFLL, v56);
        v46 = v57;
        v27 = v48;
      }

      while (v57 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v58 = objc_msgSend_mutableCopy(v13, v45, v46, v47);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_2211E31D4;
    v66[3] = &unk_278461158;
    v66[4] = self;
    v68 = v4;
    v59 = v13;
    v67 = v59;
    objc_msgSend_enumerateIndexesUsingBlock_(v58, v60, v66, v61);
    objc_msgSend_removeIndexes_(v6, v62, v59, v63);
    objc_msgSend_setColumnIndexesInRow_(self, v64, v6, v65);
  }

  else
  {
    objc_msgSend_setColumnIndexesInRow_(self, v10, 0, v12);
  }
}

- (BOOL)anyCellBordersInThisRow
{
  v4 = objc_msgSend_columnIndexesInRow(self, a2, v2, v3);
  v8 = objc_msgSend_count(v4, v5, v6, v7) != 0;

  return v8;
}

- (BOOL)cellBorderAtColumn:(unsigned __int16)column
{
  columnCopy = column;
  v5 = objc_msgSend_columnIndexesInRow(self, a2, column, v3);
  LOBYTE(columnCopy) = objc_msgSend_containsIndex_(v5, v6, columnCopy, v7);

  return columnCopy;
}

@end