@interface TSTStrokeDefaultVendor
- (BOOL)validateGeometry;
- (TSTStrokeDefaultVendor)initWithStrokeProvider:(id)provider tableProvider:(id)tableProvider tableInfo:(id)info;
- (TSTTableHiddenRowColumnProviding)tableProvider;
- (TSTTableInfo)tableInfo;
- (TSTTableStrokeProviding)strokeProvider;
- (_NSRange)bodySideBorderColumnRange;
- (_NSRange)bottomBorderRowRange;
- (_NSRange)footerColumnSeparatorColumnRange;
- (_NSRange)footerRowSeparatorRowRange;
- (_NSRange)headerColumnSeparatorColumnRange;
- (_NSRange)headerRowSeparatorRowRange;
- (_NSRange)headerSideBorderColumnRange;
- (_NSRange)topBorderRowRange;
- (id)strokeLayerForColumn:(unsigned int)column;
- (id)strokeLayerForRow:(unsigned int)row;
- (id)strokeLayerForStrokeType:(unint64_t)type;
- (id)strokeLayerStackForColumn:(unsigned int)column;
- (id)strokeLayerStackForRow:(unsigned int)row;
- (id)strokeLayerStackForStrokeType:(unint64_t)type;
- (int)validateChangeDescriptors:(id)descriptors;
- (unint64_t)p_strokeTypeForColumn:(unsigned int)column;
- (unint64_t)p_strokeTypeForRow:(unsigned int)row;
- (void)enumerateLayerAndStackForGridColumnRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateLayerAndStackForGridRowRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)p_updateStrokeLayer:(id)layer forColumnStrokeType:(unint64_t)type;
- (void)p_updateStrokeLayer:(id)layer forRowStrokeType:(unint64_t)type;
@end

@implementation TSTStrokeDefaultVendor

- (TSTStrokeDefaultVendor)initWithStrokeProvider:(id)provider tableProvider:(id)tableProvider tableInfo:(id)info
{
  providerCopy = provider;
  tableProviderCopy = tableProvider;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = TSTStrokeDefaultVendor;
  v11 = [(TSTStrokeDefaultVendor *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_strokeProvider, providerCopy);
    objc_storeWeak(&v12->_tableProvider, tableProviderCopy);
    objc_storeWeak(&v12->_tableInfo, infoCopy);
    v16 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v13, v14, v15);
    strokeTypeToLayerMap = v12->_strokeTypeToLayerMap;
    v12->_strokeTypeToLayerMap = v16;

    objc_msgSend_setCount_(v12->_strokeTypeToLayerMap, v18, 52, v19);
    v23 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v20, v21, v22);
    strokeTypeToLayerStackMap = v12->_strokeTypeToLayerStackMap;
    v12->_strokeTypeToLayerStackMap = v23;

    objc_msgSend_setCount_(v12->_strokeTypeToLayerStackMap, v25, 52, v26);
  }

  return v12;
}

- (id)strokeLayerForColumn:(unsigned int)column
{
  v6 = objc_msgSend_p_strokeTypeForColumn_(self, a2, *&column, v3);

  return objc_msgSend_strokeLayerForStrokeType_(self, v5, v6, v7);
}

- (id)strokeLayerForRow:(unsigned int)row
{
  v6 = objc_msgSend_p_strokeTypeForRow_(self, a2, *&row, v3);

  return objc_msgSend_strokeLayerForStrokeType_(self, v5, v6, v7);
}

- (id)strokeLayerForStrokeType:(unint64_t)type
{
  objc_opt_class();
  v8 = objc_msgSend_strokeTypeToLayerMap(self, v5, v6, v7);
  objc_msgSend_pointerAtIndex_(v8, v9, type, v10);
  v11 = TSUCheckedDynamicCast();

  return v11;
}

- (id)strokeLayerStackForColumn:(unsigned int)column
{
  v6 = objc_msgSend_p_strokeTypeForColumn_(self, a2, *&column, v3);

  return objc_msgSend_strokeLayerStackForStrokeType_(self, v5, v6, v7);
}

- (id)strokeLayerStackForRow:(unsigned int)row
{
  v6 = objc_msgSend_p_strokeTypeForRow_(self, a2, *&row, v3);

  return objc_msgSend_strokeLayerStackForStrokeType_(self, v5, v6, v7);
}

- (void)enumerateLayerAndStackForGridRowRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v42 = 0;
  if (options)
  {
    if (options != 2)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTStrokeDefaultVendor enumerateLayerAndStackForGridRowRange:options:usingBlock:]", v10);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 109, 0, "only handling normal and reverse enumeration");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }

    v21 = 0;
    v22 = 0;
    v23 = location + length;
    v24 = (location + length - 1);
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v23 < v24)
      {
        break;
      }

      v28 = objc_msgSend_p_strokeTypeForRow_(self, v9, v24, v10);
      if (v25 != v28)
      {
        v29 = objc_msgSend_strokeLayerForStrokeType_(self, v26, v28, v27);

        v32 = objc_msgSend_strokeLayerStackForStrokeType_(self, v30, v28, v31);

        v21 = v32;
        v22 = v29;
        v25 = v28;
      }

      blockCopy[2](blockCopy, v24, v22, v21, &v42);
      v24 = (v24 - 1);
    }

    while (v42 != 1);
LABEL_16:

    goto LABEL_17;
  }

  v33 = location + length;
  if (location + length > location)
  {
    v22 = 0;
    v21 = 0;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v37 = objc_msgSend_p_strokeTypeForRow_(self, v9, location, v10);
      if (v34 != v37)
      {
        v38 = objc_msgSend_strokeLayerForStrokeType_(self, v35, v37, v36);

        v41 = objc_msgSend_strokeLayerStackForStrokeType_(self, v39, v37, v40);

        v21 = v41;
        v22 = v38;
        v34 = v37;
      }

      blockCopy[2](blockCopy, location, v22, v21, &v42);
      location = (location + 1);
    }

    while (v33 > location && (v42 & 1) == 0);
    goto LABEL_16;
  }

LABEL_17:
}

- (void)enumerateLayerAndStackForGridColumnRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v42 = 0;
  if (options)
  {
    if (options != 2)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTStrokeDefaultVendor enumerateLayerAndStackForGridColumnRange:options:usingBlock:]", v10);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 154, 0, "only handling normal and reverse enumeration");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }

    v21 = 0;
    v22 = 0;
    v23 = location + length;
    v24 = (location + length - 1);
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (v23 < v24)
      {
        break;
      }

      v28 = objc_msgSend_p_strokeTypeForColumn_(self, v9, v24, v10);
      if (v25 != v28)
      {
        v29 = objc_msgSend_strokeLayerForStrokeType_(self, v26, v28, v27);

        v32 = objc_msgSend_strokeLayerStackForStrokeType_(self, v30, v28, v31);

        v21 = v32;
        v22 = v29;
        v25 = v28;
      }

      blockCopy[2](blockCopy, v24, v22, v21, &v42);
      v24 = (v24 - 1);
    }

    while (v42 != 1);
LABEL_16:

    goto LABEL_17;
  }

  v33 = location + length;
  if (location + length > location)
  {
    v22 = 0;
    v21 = 0;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v37 = objc_msgSend_p_strokeTypeForColumn_(self, v9, location, v10);
      if (v34 != v37)
      {
        v38 = objc_msgSend_strokeLayerForStrokeType_(self, v35, v37, v36);

        v41 = objc_msgSend_strokeLayerStackForStrokeType_(self, v39, v37, v40);

        v21 = v41;
        v22 = v38;
        v34 = v37;
      }

      blockCopy[2](blockCopy, location, v22, v21, &v42);
      location = (location + 1);
    }

    while (v33 > location && (v42 & 1) == 0);
    goto LABEL_16;
  }

LABEL_17:
}

- (id)strokeLayerStackForStrokeType:(unint64_t)type
{
  objc_opt_class();
  v8 = objc_msgSend_strokeTypeToLayerStackMap(self, v5, v6, v7);
  objc_msgSend_pointerAtIndex_(v8, v9, type, v10);
  v11 = TSUCheckedDynamicCast();

  v15 = v11;
  if (!v11)
  {
    v15 = objc_msgSend_defaultsOnlyStrokeLayerStack(TSTStrokeLayerStack, v12, v13, v14);
    objc_msgSend_lockForWrite(v15, v16, v17, v18);
    v21 = objc_msgSend_strokeLayerForStrokeType_(self, v19, type, v20);
    objc_msgSend_replaceDefaultStrokeLayerWith_(v15, v22, v21, v23);

    objc_msgSend_unlock(v15, v24, v25, v26);
    v30 = objc_msgSend_strokeTypeToLayerStackMap(self, v27, v28, v29);
    objc_msgSend_replacePointerAtIndex_withPointer_(v30, v31, type, v15);
  }

  return v15;
}

- (BOOL)validateGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);
  v7 = objc_msgSend_numberOfHeaderColumns(WeakRetained, v4, v5, v6);

  v8 = objc_loadWeakRetained(&self->_tableProvider);
  v12 = objc_msgSend_numberOfGrandTotalColumns(v8, v9, v10, v11);

  v13 = objc_loadWeakRetained(&self->_tableProvider);
  v17 = objc_msgSend_numberOfColumns(v13, v14, v15, v16);

  v18 = objc_loadWeakRetained(&self->_tableProvider);
  v22 = objc_msgSend_numberOfHeaderRows(v18, v19, v20, v21);

  v23 = objc_loadWeakRetained(&self->_tableProvider);
  v27 = objc_msgSend_numberOfFooterOrGrandTotalRows(v23, v24, v25, v26);

  v28 = objc_loadWeakRetained(&self->_tableProvider);
  v32 = objc_msgSend_numberOfRows(v28, v29, v30, v31);

  v33 = objc_loadWeakRetained(&self->_tableProvider);
  v36 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v33, v34, 0, v35) + 1;

  if (self->_headerSideBorderColumnRange.location)
  {
    v37 = 0;
  }

  else
  {
    v37 = self->_headerSideBorderColumnRange.length == v36;
  }

  v38 = !v37;
  if (!v37)
  {
    self->_headerSideBorderColumnRange.location = 0;
    self->_headerSideBorderColumnRange.length = v36;
  }

  v39 = MEMORY[0x277D81490];
  if (!v7)
  {
    goto LABEL_17;
  }

  v40 = v7 - 1;
  v41 = objc_loadWeakRetained(&self->_tableProvider);
  v44 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v41, v42, (v7 - 1), v43);

  v45 = objc_loadWeakRetained(&self->_tableProvider);
  v48 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(v45, v46, v40, v47);

  if (v44 == 0x7FFF || v48 == 0x7FFF)
  {
    v39 = MEMORY[0x277D81490];
LABEL_17:
    v50 = *v39;
    v51 = v39[1];
    goto LABEL_18;
  }

  v49 = v44 + 1;
  if (v44 > v48)
  {
    v50 = v48 + 1;
  }

  else
  {
    v49 = v48 + 1;
    v50 = v44 + 1;
  }

  v51 = v49 - v50;
  v39 = MEMORY[0x277D81490];
LABEL_18:
  if (self->_headerColumnSeparatorColumnRange.location == v50 && self->_headerColumnSeparatorColumnRange.length == v51)
  {
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    self->_headerColumnSeparatorColumnRange.location = v50;
    self->_headerColumnSeparatorColumnRange.length = v51;
    v38 = 1;
    if (!v12)
    {
LABEL_29:
      v62 = *v39;
      v63 = v39[1];
      goto LABEL_30;
    }
  }

  v52 = v17 + ~v12;
  v53 = objc_loadWeakRetained(&self->_tableProvider);
  v56 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v53, v54, v52, v55);

  v57 = objc_loadWeakRetained(&self->_tableProvider);
  v60 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(v57, v58, v52, v59);

  if (v56 == 0x7FFF || v60 == 0x7FFF)
  {
    goto LABEL_29;
  }

  v61 = v56 + 1;
  if (v56 > v60)
  {
    v62 = v60 + 1;
  }

  else
  {
    v61 = v60 + 1;
    v62 = v56 + 1;
  }

  v63 = v61 - v62;
LABEL_30:
  if (self->_footerColumnSeparatorColumnRange.location != v62 || self->_footerColumnSeparatorColumnRange.length != v63)
  {
    self->_footerColumnSeparatorColumnRange.location = v62;
    self->_footerColumnSeparatorColumnRange.length = v63;
    v38 = 1;
  }

  v64 = objc_loadWeakRetained(&self->_tableProvider);
  v67 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v64, v65, (v17 - 1), v66);
  if (v67 <= v17)
  {
    v68 = v17 + 1;
  }

  else
  {
    v68 = v67 + 1;
  }

  if (v67 <= v17)
  {
    v69 = v67 + 1;
  }

  else
  {
    v69 = v17 + 1;
  }

  v70 = v68 - v69;

  if (self->_bodySideBorderColumnRange.location != v69 || self->_bodySideBorderColumnRange.length != v70)
  {
    self->_bodySideBorderColumnRange.location = v69;
    self->_bodySideBorderColumnRange.length = v70;
    v38 = 1;
  }

  v71 = objc_loadWeakRetained(&self->_tableProvider);
  v74 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v71, v72, 0, v73) + 1;

  if (self->_topBorderRowRange.location || self->_topBorderRowRange.length != v74)
  {
    self->_topBorderRowRange.location = 0;
    self->_topBorderRowRange.length = v74;
    v38 = 1;
    if (!v22)
    {
LABEL_56:
      v84 = *v39;
      v86 = v39[1];
      goto LABEL_57;
    }
  }

  else if (!v22)
  {
    goto LABEL_56;
  }

  v75 = (v22 - 1);
  v76 = objc_loadWeakRetained(&self->_tableProvider);
  v79 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v76, v77, v75, v78);

  v80 = objc_loadWeakRetained(&self->_tableProvider);
  v83 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(v80, v81, v75, v82);

  if (v79 == 0x7FFFFFFF || v83 == 0x7FFFFFFF)
  {
    goto LABEL_56;
  }

  LODWORD(v84) = v79 + 1;
  if (v79 + 1 <= (v83 + 1))
  {
    v85 = (v83 + 1);
  }

  else
  {
    v85 = v84;
  }

  if (v79 + 1 >= (v83 + 1))
  {
    v84 = (v83 + 1);
  }

  else
  {
    v84 = v84;
  }

  v86 = v85 - v84;
LABEL_57:
  if (self->_headerRowSeparatorRowRange.location == v84 && self->_headerRowSeparatorRowRange.length == v86)
  {
    if (!v27)
    {
      goto LABEL_71;
    }
  }

  else
  {
    self->_headerRowSeparatorRowRange.location = v84;
    self->_headerRowSeparatorRowRange.length = v86;
    v38 = 1;
    if (!v27)
    {
LABEL_71:
      v96 = *v39;
      v98 = v39[1];
      goto LABEL_72;
    }
  }

  v87 = ~v27;
  v88 = objc_loadWeakRetained(&self->_tableProvider);
  v91 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v88, v89, (v32 + ~v27), v90);

  v92 = objc_loadWeakRetained(&self->_tableProvider);
  v95 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(v92, v93, (v32 + v87), v94);

  if (v91 == 0x7FFFFFFF || v95 == 0x7FFFFFFF)
  {
    goto LABEL_71;
  }

  LODWORD(v96) = v91 + 1;
  if (v91 + 1 <= (v95 + 1))
  {
    v97 = (v95 + 1);
  }

  else
  {
    v97 = v96;
  }

  if (v91 + 1 >= (v95 + 1))
  {
    v96 = (v95 + 1);
  }

  else
  {
    v96 = v96;
  }

  v98 = v97 - v96;
LABEL_72:
  if (self->_footerRowSeparatorRowRange.location != v96 || self->_footerRowSeparatorRowRange.length != v98)
  {
    self->_footerRowSeparatorRowRange.location = v96;
    self->_footerRowSeparatorRowRange.length = v98;
    v38 = 1;
  }

  v99 = objc_loadWeakRetained(&self->_tableProvider);
  v102 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v99, v100, (v32 - 1), v101) + 1;
  if (v102 <= v32 + 1)
  {
    v103 = (v32 + 1);
  }

  else
  {
    v103 = v102;
  }

  if (v102 >= v32 + 1)
  {
    v104 = (v32 + 1);
  }

  else
  {
    v104 = v102;
  }

  v105 = v103 - v104;

  if (self->_bottomBorderRowRange.location != v104 || self->_bottomBorderRowRange.length != v105)
  {
    self->_bottomBorderRowRange.location = v104;
    self->_bottomBorderRowRange.length = v105;
    return 1;
  }

  return v38;
}

- (int)validateChangeDescriptors:(id)descriptors
{
  v199 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v7 = objc_msgSend_validateGeometry(self, v4, v5, v6);
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  obj = descriptorsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v194, v198, 16);
  v176 = v7;
  v13 = 0;
  if (v12)
  {
    v14 = *v195;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v195 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = objc_msgSend_changeDescriptor(*(*(&v194 + 1) + 8 * i), v9, v10, v11);
        if (v16 <= 0x2F)
        {
          if (((1 << v16) & 0x800000006000) != 0)
          {
            v13 = 1;
          }

          else if (((1 << v16) & 0x10000400) != 0)
          {
            WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
            v21 = objc_msgSend_numberOfCategoryLevels(WeakRetained, v18, v19, v20) != 0;

            v13 |= v21;
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v194, v198, 16);
    }

    while (v12);
  }

  if (v176 & 1 | ((objc_msgSend_isValid(self, v22, v23, v24) & 1) == 0) | v13 & 1)
  {
    for (j = 0; j != 52; ++j)
    {
      objc_opt_class();
      v29 = objc_msgSend_strokeTypeToLayerMap(self, v26, v27, v28);
      objc_msgSend_pointerAtIndex_(v29, v30, j, v31);
      v32 = TSUCheckedDynamicCast();

      if (!v32)
      {
        v36 = objc_msgSend_strokeLayer(TSTMutableStrokeLayer, v33, v34, v35);
        v40 = objc_msgSend_strokeTypeToLayerMap(self, v37, v38, v39);
        objc_msgSend_replacePointerAtIndex_withPointer_(v40, v41, j, v36);

        v45 = objc_msgSend_strokeTypeToLayerStackMap(self, v42, v43, v44);
        objc_msgSend_replacePointerAtIndex_withPointer_(v45, v46, j, 0);

        v32 = v36;
      }

      if (j > 0x14)
      {
        objc_msgSend_p_updateStrokeLayer_forRowStrokeType_(self, v33, v32, j);
      }

      else
      {
        objc_msgSend_p_updateStrokeLayer_forColumnStrokeType_(self, v33, v32, j);
      }
    }

    objc_msgSend_setIsValid_(self, v47, 1, v48);
    v52 = objc_msgSend_tableInfo(self, v49, v50, v51);
    isCategorized = objc_msgSend_isCategorized(v52, v53, v54, v55);

    if (isCategorized)
    {
      objc_opt_class();
      v63 = objc_msgSend_strokeTypeToLayerMap(self, v60, v61, v62);
      objc_msgSend_pointerAtIndex_(v63, v64, 1, v65);
      v167 = TSUCheckedDynamicCast();

      objc_opt_class();
      v69 = objc_msgSend_strokeTypeToLayerMap(self, v66, v67, v68);
      objc_msgSend_pointerAtIndex_(v69, v70, 2, v71);
      v165 = TSUCheckedDynamicCast();

      objc_opt_class();
      v75 = objc_msgSend_strokeTypeToLayerMap(self, v72, v73, v74);
      objc_msgSend_pointerAtIndex_(v75, v76, 5, v77);
      v163 = TSUCheckedDynamicCast();

      v81 = objc_msgSend_tableInfo(self, v78, v79, v80);
      v85 = objc_msgSend_numberOfCategoryLevels(v81, v82, v83, v84);

      if (v85)
      {
        v169 = 0;
        v170 = 0;
        v89 = 0;
        v90 = 0;
        v171 = 0;
        v172 = 0;
        v174 = 0;
        v177 = 0;
        v173 = 0;
        v91 = 0;
        v92 = 1;
        while (1)
        {
          v93 = objc_msgSend_tableInfo(self, v86, v87, v88);
          v96 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(v93, v94, v92, v95);

          v100 = objc_msgSend_tableInfo(self, v97, v98, v99);
          v103 = objc_msgSend_indexesForLabelRowsAtGroupLevel_(v100, v101, v92, v102);

          if (objc_msgSend_count(v103, v104, v105, v106))
          {
            v109 = objc_msgSend_tsu_indexSetByAddingIndexes_(v96, v107, v103, v108);

            v96 = v109;
          }

          v110 = v96;
          if (v92 > 2u)
          {
            if (v92 == 3)
            {

              v114 = objc_msgSend_strokeProvider(self, v141, v142, v143);
              v147 = objc_msgSend_categoryLevel3InteriorStroke(v114, v144, v145, v146);
              v119 = v90;
              v172 = v110;
              v90 = v147;
              goto LABEL_36;
            }

            if (v92 != 4)
            {
              goto LABEL_33;
            }

            v114 = objc_msgSend_strokeProvider(self, v120, v121, v122);
            v126 = objc_msgSend_categoryLevel4InteriorStroke(v114, v123, v124, v125);
            v119 = v89;
            v174 = v110;
            v89 = v126;
          }

          else
          {
            if (v92 == 1)
            {

              v114 = objc_msgSend_strokeProvider(self, v134, v135, v136);
              v140 = objc_msgSend_categoryLevel1InteriorStroke(v114, v137, v138, v139);
              v119 = v171;
              v91 = v110;
              v171 = v140;
              goto LABEL_36;
            }

            if (v92 != 2)
            {
LABEL_33:

              v114 = objc_msgSend_strokeProvider(self, v127, v128, v129);
              v133 = objc_msgSend_categoryLevel5InteriorStroke(v114, v130, v131, v132);
              v119 = v170;
              v177 = v110;
              v170 = v133;
              goto LABEL_36;
            }

            v114 = objc_msgSend_strokeProvider(self, v111, v112, v113);
            v118 = objc_msgSend_categoryLevel2InteriorStroke(v114, v115, v116, v117);
            v119 = v169;
            v173 = v110;
            v169 = v118;
          }

LABEL_36:

          if (++v92 > v85)
          {
            goto LABEL_41;
          }
        }
      }

      v91 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 0;
      v177 = 0;
      v170 = 0;
      v171 = 0;
      v169 = 0;
      v90 = 0;
      v89 = 0;
LABEL_41:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2212FA10C;
      block[3] = &unk_278462D50;
      v181 = v167;
      v182 = v171;
      v183 = v91;
      v184 = v169;
      v185 = v173;
      v186 = v90;
      v187 = v172;
      v188 = v89;
      v189 = v174;
      v190 = v170;
      v191 = v177;
      v192 = v165;
      v193 = v163;
      v164 = v163;
      v162 = v165;
      v166 = v177;
      v178 = v170;
      v153 = v174;
      v175 = v89;
      v154 = v172;
      v155 = v90;
      v156 = v173;
      v157 = v169;
      v158 = v91;
      v159 = v171;
      v149 = v167;
      dispatch_apply(3uLL, 0, block);
    }

    else
    {
      v149 = objc_msgSend_tableInfo(self, v57, v58, v59);
      objc_msgSend_isAPivotTable(v149, v150, v151, v152);
    }

    v148 = 2;
  }

  else
  {
    v148 = 0;
  }

  if (v13)
  {
    v160 = v148 | 8;
  }

  else
  {
    v160 = v148;
  }

  return v160;
}

- (unint64_t)p_strokeTypeForColumn:(unsigned int)column
{
  v6 = objc_msgSend_tableInfo(self, a2, *&column, v3);
  IsValid = objc_msgSend_p_headerColumnSeparatorColumnRangeIsValid(self, v7, v8, v9);
  v15 = self->_footerColumnSeparatorColumnRange.location != *MEMORY[0x277D81490] || self->_footerColumnSeparatorColumnRange.length != *(MEMORY[0x277D81490] + 8);
  if (objc_msgSend_isAPivotTable(v6, v10, v11, v12))
  {
    v19 = objc_msgSend_isEmptyPivot(v6, v16, v17, v18) ^ 1;
  }

  else
  {
    v19 = 0;
  }

  location = self->_headerSideBorderColumnRange.location;
  v21 = column >= location;
  v22 = column - location;
  if (v21 && v22 < self->_headerSideBorderColumnRange.length)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v24 = self->_bodySideBorderColumnRange.location;
  v21 = column >= v24;
  v25 = column - v24;
  if (v21 && v25 < self->_bodySideBorderColumnRange.length)
  {
    v23 = 20;
    goto LABEL_18;
  }

  if (IsValid)
  {
    v27 = self->_headerColumnSeparatorColumnRange.location;
    v21 = column >= v27;
    v28 = column - v27;
    if (!v21)
    {
      if (v19)
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      goto LABEL_18;
    }

    if (v28 < self->_headerColumnSeparatorColumnRange.length)
    {
      if (v19)
      {
        v23 = 4;
      }

      else
      {
        v23 = 2;
      }

      goto LABEL_18;
    }
  }

  if (v15)
  {
    v30 = self->_footerColumnSeparatorColumnRange.location;
    length = self->_footerColumnSeparatorColumnRange.length;
    if (v30 + length - 1 < column)
    {
      if ((v19 & 1) == 0)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTStrokeDefaultVendor p_strokeTypeForColumn:]", v18);
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v34);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 523, 0, "expected a pivot table for footer columns");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
      }

      v23 = 19;
      goto LABEL_18;
    }

    v21 = column >= v30;
    v40 = column - v30;
    if (v21 && v40 < length)
    {
      if ((v19 & 1) == 0)
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTStrokeDefaultVendor p_strokeTypeForColumn:]", v18);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 527, 0, "expected a pivot table for footer columns");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
      }

      v23 = 13;
      goto LABEL_18;
    }
  }

  if (!v19)
  {
    v23 = 5;
    goto LABEL_18;
  }

  v50 = objc_msgSend_groupLevelAtSummaryColumn_(v6, v16, column, v18);
  v53 = objc_msgSend_groupLevelAtSummaryColumn_(v6, v51, (column - 1), v52);
  if (v50 >= v53)
  {
    v57 = v53;
  }

  else
  {
    v57 = v50;
  }

  v23 = 6;
  if (v57 <= 2)
  {
    if (v57 == 1)
    {
      v58 = v53 == 255;
      v59 = 14;
      v60 = 8;
    }

    else
    {
      if (v57 != 2)
      {
        goto LABEL_58;
      }

      v58 = v53 == 255;
      v59 = 15;
      v60 = 9;
    }
  }

  else
  {
    switch(v57)
    {
      case 3:
        v58 = v53 == 255;
        v59 = 16;
        v60 = 10;
        break;
      case 4:
        v58 = v53 == 255;
        v59 = 17;
        v60 = 11;
        break;
      case 5:
        v58 = v53 == 255;
        v59 = 18;
        v60 = 12;
        break;
      default:
        goto LABEL_58;
    }
  }

  if (v58)
  {
    v23 = v60;
  }

  else
  {
    v23 = v59;
  }

LABEL_58:
  if (objc_msgSend_columnAggregateGroupSize(v6, v54, v55, v56) >= 2)
  {
    if (v57 == 255)
    {
      v71 = objc_msgSend_maxColumnLevel(v6, v61, v62, v63);
      v64 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v6, v72, v71, v73);
      v76 = objc_msgSend_indexLessThanOrEqualToIndex_(v64, v74, column, v75);
      if (!((column - v76) % objc_msgSend_columnAggregateGroupSize(v6, v77, v78, v79)))
      {
        v23 = 7;
      }
    }

    else
    {
      v64 = objc_msgSend_indexesForLeadingSummaryColumnsAtGroupLevel_(v6, v61, v57, v63);
      v67 = objc_msgSend_indexLessThanOrEqualToIndex_(v64, v65, column, v66);
      if ((column - v67) % objc_msgSend_columnAggregateGroupSize(v6, v68, v69, v70))
      {
        v23 = 6;
      }
    }
  }

LABEL_18:

  return v23;
}

- (unint64_t)p_strokeTypeForRow:(unsigned int)row
{
  v4 = *&row;
  v6 = objc_msgSend_tableInfo(self, a2, *&row, v3);
  IsValid = objc_msgSend_p_headerRowSeparatorRowRangeIsValid(self, v7, v8, v9);
  v15 = self->_footerRowSeparatorRowRange.location != *MEMORY[0x277D81490] || self->_footerRowSeparatorRowRange.length != *(MEMORY[0x277D81490] + 8);
  isCategorized = objc_msgSend_isCategorized(v6, v10, v11, v12);
  if (objc_msgSend_isAPivotTable(v6, v17, v18, v19))
  {
    v23 = objc_msgSend_isEmptyPivot(v6, v20, v21, v22) ^ 1;
  }

  else
  {
    v23 = 0;
  }

  location = self->_topBorderRowRange.location;
  v25 = v4 >= location;
  v26 = v4 - location;
  if (v25 && v26 < self->_topBorderRowRange.length)
  {
    v27 = 21;
    goto LABEL_18;
  }

  v28 = self->_bottomBorderRowRange.location;
  v25 = v4 >= v28;
  v29 = v4 - v28;
  if (v25 && v29 < self->_bottomBorderRowRange.length)
  {
    v27 = 51;
    goto LABEL_18;
  }

  if (IsValid)
  {
    v31 = self->_headerRowSeparatorRowRange.location;
    v25 = v4 >= v31;
    v32 = v4 - v31;
    if (!v25)
    {
      if (!v23)
      {
        v27 = 22;
        goto LABEL_18;
      }

      if (!objc_msgSend_numberOfRowLevels(v6, v20, v21, v22))
      {
        v27 = 23;
        goto LABEL_18;
      }

      v33 = self->_headerRowSeparatorRowRange.location - 1 == v4;
      v34 = 23;
      goto LABEL_63;
    }

    if (v32 < self->_headerRowSeparatorRowRange.length)
    {
      if (isCategorized)
      {
        v27 = 26;
      }

      else
      {
        v27 = 25;
      }

      goto LABEL_18;
    }
  }

  if (v15)
  {
    v36 = self->_footerRowSeparatorRowRange.location;
    length = self->_footerRowSeparatorRowRange.length;
    if (v36 + length - 1 < v4)
    {
      v27 = 50;
      goto LABEL_18;
    }

    v25 = v4 >= v36;
    v37 = v4 - v36;
    if (v25 && v37 < length)
    {
      v27 = 49;
      goto LABEL_18;
    }
  }

  if (isCategorized)
  {
    v38 = objc_msgSend_groupLevelAtRow_(v6, v20, v4, v22);
    v41 = objc_msgSend_groupLevelAtRow_(v6, v39, (v4 - 1), v40);
    v27 = 41;
    if (v38 <= 3)
    {
      switch(v38)
      {
        case 1:
          v33 = v41 == 1;
          v34 = 26;
          break;
        case 2:
          v33 = v41 == 2;
          v34 = 29;
          break;
        case 3:
          v33 = v41 == 3;
          v34 = 32;
          break;
        default:
          goto LABEL_18;
      }

      goto LABEL_63;
    }

    switch(v38)
    {
      case 4:
        v33 = v41 == 4;
        v34 = 35;
        break;
      case 5:
        v33 = v41 == 5;
        v34 = 38;
        break;
      case 255:
        if ((v41 - 1) < 5)
        {
          v49 = 3 * (v41 - 1) + 28;
LABEL_51:
          v27 = v49;
          goto LABEL_18;
        }

LABEL_52:
        v27 = 41;
        goto LABEL_18;
      default:
        goto LABEL_18;
    }

LABEL_63:
    if (v33)
    {
      v27 = v34 + 1;
    }

    else
    {
      v27 = v34;
    }

    goto LABEL_18;
  }

  if (!v23)
  {
    goto LABEL_52;
  }

  v42 = objc_msgSend_groupLevelAtRow_(v6, v20, (v4 - 1), v22);
  if (objc_msgSend_rowAggregateGroupSize(v6, v43, v44, v45) == 1)
  {
    if ((v42 - 1) >= 5)
    {
      v27 = 42;
      goto LABEL_18;
    }

    v49 = v42 + 43;
    goto LABEL_51;
  }

  if (v42 <= 3)
  {
    switch(v42)
    {
      case 1:
        v50 = 44;
        goto LABEL_79;
      case 2:
        v50 = 45;
        goto LABEL_79;
      case 3:
        v50 = 46;
LABEL_79:
        v61 = objc_msgSend_indexesForLeadingSummaryRowsAtGroupLevel_(v6, v46, v42, v48);
        v64 = objc_msgSend_indexLessThanOrEqualToIndex_(v61, v62, (v4 - 1), v63);
        if (v4 - v64 == objc_msgSend_rowAggregateGroupSize(v6, v65, v66, v67))
        {
          v27 = v50;
        }

        else
        {
          v27 = 43;
        }

        goto LABEL_18;
    }

LABEL_76:
    v50 = 42;
    goto LABEL_79;
  }

  if (v42 == 4)
  {
    v50 = 47;
    goto LABEL_79;
  }

  if (v42 == 5)
  {
    v50 = 48;
    goto LABEL_79;
  }

  if (v42 != 255)
  {
    goto LABEL_76;
  }

  v51 = objc_msgSend_maxRowLevel(v6, v46, v47, v48);
  v54 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v6, v52, v51, v53);
  v57 = objc_msgSend_indexLessThanOrEqualToIndex_(v54, v55, v4, v56);
  if ((v4 - v57) % objc_msgSend_rowAggregateGroupSize(v6, v58, v59, v60))
  {
    v27 = 43;
  }

  else
  {
    v27 = 42;
  }

LABEL_18:
  return v27;
}

- (void)p_updateStrokeLayer:(id)layer forColumnStrokeType:(unint64_t)type
{
  layerCopy = layer;
  v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);
  v14 = objc_msgSend_numberOfHeaderColumns(WeakRetained, v11, v12, v13);

  v15 = objc_loadWeakRetained(&self->_tableProvider);
  v19 = objc_msgSend_numberOfHeaderRows(v15, v16, v17, v18);

  v20 = objc_loadWeakRetained(&self->_tableProvider);
  v24 = objc_msgSend_numberOfFooterOrGrandTotalRows(v20, v21, v22, v23);

  v25 = objc_loadWeakRetained(&self->_tableProvider);
  v29 = objc_msgSend_numberOfRows(v25, v26, v27, v28);

  if (objc_msgSend_hasHeaderRowForAggregateNames(v9, v30, v31, v32))
  {
    v36 = objc_msgSend_columnAggregateGroupSize(v9, v33, v34, v35) < 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19)
  {
    v38 = 0;
  }

  else
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v37 = v29 - v24;
  }

  v833 = v37;
  objc_msgSend_invalidate(layerCopy, v33, v34, v35);
  v42 = v19;
  v832 = v24;
  v43 = v29 - (v24 + v19);
  switch(type)
  {
    case 0uLL:
      v44 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v48 = objc_msgSend_headerRowBorderStroke(v44, v45, v46, v47);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v49, v48, v38, v42, 1);

      v56 = objc_msgSend_strokeProvider(self, v50, v51, v52);
      if (v14)
      {
        objc_msgSend_headerColumnBorderStroke(v56, v53, v54, v55);
      }

      else
      {
        objc_msgSend_defaultVerticalBorderStroke(v56, v53, v54, v55);
      }
      v57 = ;
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v58, v57, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v825, v826, v827);
      v142 = objc_msgSend_footerRowBorderStroke(v138, v828, v829, v830);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v831, v142, v833, v832, 1);
      goto LABEL_200;
    case 1uLL:
      v291 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v295 = objc_msgSend_headerRowBodyColumnStroke(v291, v292, v293, v294);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v296, v295, v38, v42, 1);

      v300 = objc_msgSend_strokeProvider(self, v297, v298, v299);
      v304 = objc_msgSend_headerColumnBodyColumnStroke(v300, v301, v302, v303);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v305, v304, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v306, v307, v308);
      v142 = objc_msgSend_footerRowBodyColumnStroke(v138, v309, v310, v311);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v312, v142, v833, v832, 1);
      goto LABEL_200;
    case 2uLL:
      v198 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v202 = objc_msgSend_headerRowBodyColumnStroke(v198, v199, v200, v201);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v203, v202, v38, v42, 1);

      v207 = objc_msgSend_strokeProvider(self, v204, v205, v206);
      v211 = objc_msgSend_headerColumnSeparatorStroke(v207, v208, v209, v210);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v212, v211, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v213, v214, v215);
      v142 = objc_msgSend_footerRowBodyColumnStroke(v138, v216, v217, v218);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v219, v142, v833, v832, 1);
      goto LABEL_200;
    case 3uLL:
      v247 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v251 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v247, v248, v249, v250);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v252, v251, v38, v42, 1);

      v256 = objc_msgSend_strokeProvider(self, v253, v254, v255);
      v260 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v256, v257, v258, v259);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v261, v260, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v262, v263, v264);
      v142 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v138, v265, v266, v267);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v268, v142, v833, v832, 1);
      goto LABEL_200;
    case 4uLL:
      v120 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v124 = objc_msgSend_headerRowPivotGroupVerticalStroke(v120, v121, v122, v123);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v125, v124, v38, v42, 1);

      v129 = objc_msgSend_strokeProvider(self, v126, v127, v128);
      v133 = objc_msgSend_headerColumnPivotSeparatorStroke(v129, v130, v131, v132);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v134, v133, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v135, v136, v137);
      v142 = objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v139, v140, v141);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v143, v142, v833, v832, 1);
      goto LABEL_200;
    case 5uLL:
      v350 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v354 = objc_msgSend_headerRowBodyColumnStroke(v350, v351, v352, v353);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v355, v354, v38, v42, 1);

      v359 = objc_msgSend_strokeProvider(self, v356, v357, v358);
      v363 = objc_msgSend_bodyColumnStroke(v359, v360, v361, v362);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v364, v363, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v365, v366, v367);
      v142 = objc_msgSend_footerRowBodyColumnStroke(v138, v368, v369, v370);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v371, v142, v833, v832, 1);
      goto LABEL_200;
    case 6uLL:
      v403 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v408 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v403, v404, v405, v406);
      if (v36)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v407, v408, 0, v19 - 2, 1);

        v412 = objc_msgSend_strokeProvider(self, v409, v410, v411);
        v416 = objc_msgSend_headerRowBodyColumnStroke(v412, v413, v414, v415);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v417, v416, v19 - 2, 1, 1);

        v421 = objc_msgSend_strokeProvider(self, v418, v419, v420);
        objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v421, v422, v423, v424);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v407, v408, 0, v19 - 1, 1);

        v421 = objc_msgSend_strokeProvider(self, v668, v669, v670);
        objc_msgSend_headerRowBodyColumnStroke(v421, v671, v672, v673);
      }
      v425 = ;
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v426, v425, v19 - 1, 1, 1);

      v677 = objc_msgSend_strokeProvider(self, v674, v675, v676);
      v681 = objc_msgSend_bodyColumnStroke(v677, v678, v679, v680);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v682, v681, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v683, v684, v685);
      v142 = objc_msgSend_footerRowBodyColumnStroke(v138, v686, v687, v688);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v689, v142, v833, v832, 1);
      goto LABEL_200;
    case 7uLL:
      v269 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v273 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v269, v270, v271, v272);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v274, v273, 0, v19 - 2, 1);

      v278 = objc_msgSend_strokeProvider(self, v275, v276, v277);
      v283 = objc_msgSend_headerRowPivotGroupVerticalStroke(v278, v279, v280, v281);
      if (v36)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v282, v283, v19 - 2, 1, 1);

        v278 = objc_msgSend_strokeProvider(self, v284, v285, v286);
        v283 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v278, v287, v288, v289);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v290, v283, v19 - 1, 1, 1);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v282, v283, v19 - 2, 2, 1);
      }

      v788 = objc_msgSend_strokeProvider(self, v785, v786, v787);
      v792 = objc_msgSend_bodyPivotEmphasisVerticalStroke(v788, v789, v790, v791);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v793, v792, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v794, v795, v796);
      v142 = objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v797, v798, v799);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v800, v142, v833, v832, 1);
      goto LABEL_200;
    case 8uLL:
      objc_msgSend_strokeProvider(self, v39, v40, v41);
      if (v36)
        v478 = {;
        v482 = objc_msgSend_headerRowPivotGroupVerticalStroke(v478, v479, v480, v481);
        v483 = v19 - 1;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v484, v482, 0, v483, 1);

        v488 = objc_msgSend_strokeProvider(self, v485, v486, v487);
        v492 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v488, v489, v490, v491);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v493, v492, v483, 1, 1);
      }

      else
        v488 = {;
        v492 = objc_msgSend_headerRowPivotGroupVerticalStroke(v488, v739, v740, v741);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v742, v492, v38, v42, 1);
      }

      if (objc_msgSend_columnAggregateGroupSize(v9, v743, v744, v745) == 1)
      {
        goto LABEL_188;
      }

      goto LABEL_197;
    case 9uLL:
      if (v36)
      {
        v171 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v175 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v171, v172, v173, v174);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v176, v175, 0, 1, 1);

        v180 = objc_msgSend_strokeProvider(self, v177, v178, v179);
        v185 = objc_msgSend_headerRowPivotGroupVerticalStroke(v180, v181, v182, v183);
        v186 = v19 - 1;
        v187 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 == 1)
        {
          v187 = 0;
        }

        if (v186 > 1)
        {
          v188 = 1;
        }

        else
        {
          v188 = v187;
        }

        if (v186 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v184, v185, v188, v186 ^ 1, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v184, v185, v188, v186 - 1, 1);
        }

        v192 = objc_msgSend_strokeProvider(self, v189, v190, v191);
        v196 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v192, v193, v194, v195);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v197, v196, v19 - 1, 1, 1);
      }

      else
      {
        v604 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v608 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v604, v605, v606, v607);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v609, v608, 0, 1, 1);

        v192 = objc_msgSend_strokeProvider(self, v610, v611, v612);
        v196 = objc_msgSend_headerRowPivotGroupVerticalStroke(v192, v613, v614, v615);
        v617 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v617 = 0;
        }

        if (v19 > 1)
        {
          v618 = 1;
        }

        else
        {
          v618 = v617;
        }

        if (v19 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v616, v196, v618, v19 ^ 1, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v616, v196, v618, v19 - 1, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v9, v619, v620, v621) == 1)
      {
        goto LABEL_188;
      }

      goto LABEL_197;
    case 0xAuLL:
      if (v36)
      {
        v451 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v455 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v451, v452, v453, v454);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v456, v455, 0, 2, 1);

        v460 = objc_msgSend_strokeProvider(self, v457, v458, v459);
        v465 = objc_msgSend_headerRowPivotGroupVerticalStroke(v460, v461, v462, v463);
        v466 = v19 - 1;
        v467 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 != 3)
        {
          v467 = v19 - 1;
        }

        if (v466 <= 2)
        {
          v468 = v467;
        }

        else
        {
          v468 = 2;
        }

        if (v466 <= 2)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v464, v465, v468, 2 - v466, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v464, v465, v468, v466 - 2, 1);
        }

        v472 = objc_msgSend_strokeProvider(self, v469, v470, v471);
        v476 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v472, v473, v474, v475);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v477, v476, v19 - 1, 1, 1);
      }

      else
      {
        v721 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v725 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v721, v722, v723, v724);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v726, v725, 0, 2, 1);

        v472 = objc_msgSend_strokeProvider(self, v727, v728, v729);
        v476 = objc_msgSend_headerRowPivotGroupVerticalStroke(v472, v730, v731, v732);
        v734 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 != 2)
        {
          v734 = v19;
        }

        if (v19 <= 2)
        {
          v735 = v734;
        }

        else
        {
          v735 = 2;
        }

        if (v19 <= 2)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v733, v476, v735, 2 - v19, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v733, v476, v735, v19 - 2, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v9, v736, v737, v738) == 1)
      {
        goto LABEL_188;
      }

LABEL_197:
      v813 = objc_msgSend_strokeProvider(self, v571, v572, v573);
      v817 = objc_msgSend_bodyPivotEmphasisVerticalStroke(v813, v814, v815, v816);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v818, v817, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v819, v820, v821);
      objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v822, v823, v824);
      goto LABEL_189;
    case 0xBuLL:
      if (v36)
      {
        v93 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v97 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v93, v94, v95, v96);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v98, v97, 0, 3, 1);

        v102 = objc_msgSend_strokeProvider(self, v99, v100, v101);
        v107 = objc_msgSend_headerRowPivotGroupVerticalStroke(v102, v103, v104, v105);
        v108 = v19 - 1;
        v109 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 != 4)
        {
          v109 = v19 - 1;
        }

        if (v108 <= 3)
        {
          v110 = v109;
        }

        else
        {
          v110 = 3;
        }

        if (v108 <= 3)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v106, v107, v110, 3 - v108, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v106, v107, v110, v108 - 3, 1);
        }

        v114 = objc_msgSend_strokeProvider(self, v111, v112, v113);
        v118 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v114, v115, v116, v117);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v119, v118, v19 - 1, 1, 1);
      }

      else
      {
        v553 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v557 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v553, v554, v555, v556);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v558, v557, 0, 3, 1);

        v114 = objc_msgSend_strokeProvider(self, v559, v560, v561);
        v118 = objc_msgSend_headerRowPivotGroupVerticalStroke(v114, v562, v563, v564);
        v566 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 != 3)
        {
          v566 = v19;
        }

        if (v19 <= 3)
        {
          v567 = v566;
        }

        else
        {
          v567 = 3;
        }

        if (v19 <= 3)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v565, v118, v567, 3 - v19, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v565, v118, v567, v19 - 3, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v9, v568, v569, v570) != 1)
      {
        goto LABEL_195;
      }

LABEL_188:
      v746 = objc_msgSend_strokeProvider(self, v571, v572, v573);
      v750 = objc_msgSend_bodyColumnStroke(v746, v747, v748, v749);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v751, v750, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v752, v753, v754);
      objc_msgSend_footerRowBodyColumnStroke(v138, v755, v756, v757);
      goto LABEL_189;
    case 0xCuLL:
      if (v36)
      {
        v144 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v148 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v144, v145, v146, v147);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v149, v148, 0, 4, 1);

        v153 = objc_msgSend_strokeProvider(self, v150, v151, v152);
        v158 = objc_msgSend_headerRowPivotGroupVerticalStroke(v153, v154, v155, v156);
        v159 = v19 - 1;
        v160 = 0x7FFFFFFFFFFFFFFFLL;
        if (v159 != 4)
        {
          v160 = v159;
        }

        if (v159 <= 4)
        {
          v161 = v160;
        }

        else
        {
          v161 = 4;
        }

        if (v159 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v157, v158, v161, 4 - v159, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v157, v158, v161, v159 - 4, 1);
        }

        v165 = objc_msgSend_strokeProvider(self, v162, v163, v164);
        v169 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v165, v166, v167, v168);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v170, v169, v159, 1, 1);
      }

      else
      {
        v574 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v578 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v574, v575, v576, v577);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v579, v578, 0, 4, 1);

        v165 = objc_msgSend_strokeProvider(self, v580, v581, v582);
        v169 = objc_msgSend_headerRowPivotGroupVerticalStroke(v165, v583, v584, v585);
        v587 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 != 4)
        {
          v587 = v19;
        }

        if (v19 <= 4)
        {
          v588 = v587;
        }

        else
        {
          v588 = 4;
        }

        if (v19 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v586, v169, v588, 4 - v19, 1);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v586, v169, v588, v19 - 4, 1);
        }
      }

      if (objc_msgSend_columnAggregateGroupSize(v9, v589, v590, v591) == 1)
      {
        v592 = objc_msgSend_strokeProvider(self, v571, v572, v573);
        v596 = objc_msgSend_bodyColumnStroke(v592, v593, v594, v595);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v597, v596, v42, v43, 1);

        v138 = objc_msgSend_strokeProvider(self, v598, v599, v600);
        objc_msgSend_footerRowBodyColumnStroke(v138, v601, v602, v603);
      }

      else
      {
LABEL_195:
        v801 = objc_msgSend_strokeProvider(self, v571, v572, v573);
        v805 = objc_msgSend_bodyPivotEmphasisVerticalStroke(v801, v802, v803, v804);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v806, v805, v42, v43, 1);

        v138 = objc_msgSend_strokeProvider(self, v807, v808, v809);
        objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v810, v811, v812);
      }

      v142 = LABEL_189:;
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v758, v142, v833, v832, 1);
      goto LABEL_200;
    case 0xDuLL:
      v381 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v385 = objc_msgSend_headerRowPivotGroupVerticalStroke(v381, v382, v383, v384);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v386, v385, v38, v42, 1);

      v390 = objc_msgSend_strokeProvider(self, v387, v388, v389);
      v394 = objc_msgSend_headerColumnPivotSeparatorStroke(v390, v391, v392, v393);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v395, v394, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v396, v397, v398);
      v142 = objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v399, v400, v401);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v402, v142, v833, v832, 1);
      goto LABEL_200;
    case 0xEuLL:
      objc_msgSend_strokeProvider(self, v39, v40, v41);
      if (v36)
        v77 = {;
        v81 = objc_msgSend_headerRowPivotGroupVerticalStroke(v77, v78, v79, v80);
        v82 = v19 - 1;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v83, v81, 0, v82, 2);

        v87 = objc_msgSend_strokeProvider(self, v84, v85, v86);
        v91 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v87, v88, v89, v90);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v92, v91, v82, 1, 2);
      }

      else
        v87 = {;
        v91 = objc_msgSend_headerRowPivotGroupVerticalStroke(v87, v533, v534, v535);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v536, v91, v38, v42, 2);
      }

      v540 = objc_msgSend_strokeProvider(self, v537, v538, v539);
      v544 = objc_msgSend_bodyPivotGroupVerticalStroke(v540, v541, v542, v543);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v545, v544, v42, v43, 2);

      v138 = objc_msgSend_strokeProvider(self, v546, v547, v548);
      v142 = objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v549, v550, v551);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v552, v142, v833, v832, 2);
      goto LABEL_200;
    case 0xFuLL:
      if (v36)
      {
        v220 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v224 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v220, v221, v222, v223);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v225, v224, 0, 1, 2);

        v229 = objc_msgSend_strokeProvider(self, v226, v227, v228);
        v234 = objc_msgSend_headerRowPivotGroupVerticalStroke(v229, v230, v231, v232);
        v235 = v19 - 1;
        v236 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 == 1)
        {
          v236 = 0;
        }

        if (v235 > 1)
        {
          v237 = 1;
        }

        else
        {
          v237 = v236;
        }

        if (v235 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v233, v234, v237, v235 ^ 1, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v233, v234, v237, v235 - 1, 2);
        }

        v241 = objc_msgSend_strokeProvider(self, v238, v239, v240);
        v245 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v241, v242, v243, v244);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v246, v245, v19 - 1, 1, 2);
      }

      else
      {
        v622 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v626 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v622, v623, v624, v625);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v627, v626, 0, 1, 2);

        v241 = objc_msgSend_strokeProvider(self, v628, v629, v630);
        v245 = objc_msgSend_headerRowPivotGroupVerticalStroke(v241, v631, v632, v633);
        v635 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v635 = 0;
        }

        if (v19 > 1)
        {
          v636 = 1;
        }

        else
        {
          v636 = v635;
        }

        if (v19 <= 1)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v634, v245, v636, v19 ^ 1, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v634, v245, v636, v19 - 1, 2);
        }
      }

      v640 = objc_msgSend_strokeProvider(self, v637, v638, v639);
      v644 = objc_msgSend_bodyPivotGroupVerticalStroke(v640, v641, v642, v643);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v645, v644, v42, v43, 2);

      v138 = objc_msgSend_strokeProvider(self, v646, v647, v648);
      v142 = objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v649, v650, v651);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v652, v142, v833, v832, 2);
      goto LABEL_200;
    case 0x10uLL:
      if (v36)
      {
        v59 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v63 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v59, v60, v61, v62);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v64, v63, 0, 2, 2);

        v68 = objc_msgSend_strokeProvider(self, v65, v66, v67);
        v73 = objc_msgSend_headerRowPivotGroupVerticalStroke(v68, v69, v70, v71);
        v74 = v19 - 1;
        v75 = 0x7FFFFFFFFFFFFFFFLL;
        if (v74 != 2)
        {
          v75 = v74;
        }

        if (v74 <= 2)
        {
          v76 = v75;
        }

        else
        {
          v76 = 2;
        }

        if (v74 <= 2)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v72, v73, v76, 2 - v74, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v72, v73, v76, v74 - 2, 2);
        }

        goto LABEL_93;
      }

      v518 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v522 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v518, v519, v520, v521);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v523, v522, 0, 2, 2);

      v445 = objc_msgSend_strokeProvider(self, v524, v525, v526);
      v449 = objc_msgSend_headerRowPivotGroupVerticalStroke(v445, v527, v528, v529);
      v531 = 0x7FFFFFFFFFFFFFFFLL;
      if (v19 != 2)
      {
        v531 = v19;
      }

      if (v19 <= 2)
      {
        v532 = v531;
      }

      else
      {
        v532 = 2;
      }

      if (v19 <= 2)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v530, v449, v532, 2 - v19, 2);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v530, v449, v532, v19 - 2, 2);
      }

      break;
    case 0x11uLL:
      if (v36)
      {
        v313 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v317 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v313, v314, v315, v316);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v318, v317, 0, 3, 2);

        v68 = objc_msgSend_strokeProvider(self, v319, v320, v321);
        v73 = objc_msgSend_headerRowPivotGroupVerticalStroke(v68, v322, v323, v324);
        v74 = v19 - 1;
        v326 = 0x7FFFFFFFFFFFFFFFLL;
        if (v74 != 3)
        {
          v326 = v74;
        }

        if (v74 <= 3)
        {
          v327 = v326;
        }

        else
        {
          v327 = 3;
        }

        if (v74 <= 3)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v325, v73, v327, 3 - v74, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v325, v73, v327, v74 - 3, 2);
        }

        goto LABEL_93;
      }

      v653 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v657 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v653, v654, v655, v656);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v658, v657, 0, 3, 2);

      v445 = objc_msgSend_strokeProvider(self, v659, v660, v661);
      v449 = objc_msgSend_headerRowPivotGroupVerticalStroke(v445, v662, v663, v664);
      v666 = 0x7FFFFFFFFFFFFFFFLL;
      if (v19 != 3)
      {
        v666 = v19;
      }

      if (v19 <= 3)
      {
        v667 = v666;
      }

      else
      {
        v667 = 3;
      }

      if (v19 <= 3)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v665, v449, v667, 3 - v19, 2);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v665, v449, v667, v19 - 3, 2);
      }

      break;
    case 0x12uLL:
      if (v36)
      {
        v427 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v431 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v427, v428, v429, v430);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v432, v431, 0, 4, 2);

        v68 = objc_msgSend_strokeProvider(self, v433, v434, v435);
        v73 = objc_msgSend_headerRowPivotGroupVerticalStroke(v68, v436, v437, v438);
        v74 = v19 - 1;
        v440 = 0x7FFFFFFFFFFFFFFFLL;
        if (v74 != 4)
        {
          v440 = v74;
        }

        if (v74 <= 4)
        {
          v441 = v440;
        }

        else
        {
          v441 = 4;
        }

        if (v74 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v439, v73, v441, 4 - v74, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v439, v73, v441, v74 - 4, 2);
        }

LABEL_93:

        v445 = objc_msgSend_strokeProvider(self, v442, v443, v444);
        v449 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v445, v446, v447, v448);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v450, v449, v74, 1, 2);
      }

      else
      {
        v690 = objc_msgSend_strokeProvider(self, v39, v40, v41);
        v694 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v690, v691, v692, v693);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v695, v694, 0, 4, 2);

        v445 = objc_msgSend_strokeProvider(self, v696, v697, v698);
        v449 = objc_msgSend_headerRowPivotGroupVerticalStroke(v445, v699, v700, v701);
        v703 = 0x7FFFFFFFFFFFFFFFLL;
        if (v19 != 4)
        {
          v703 = v19;
        }

        if (v19 <= 4)
        {
          v704 = v703;
        }

        else
        {
          v704 = 4;
        }

        if (v19 <= 4)
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v702, v449, v704, 4 - v19, 2);
        }

        else
        {
          objc_msgSend_appendStroke_inRange_order_(layerCopy, v702, v449, v704, v19 - 4, 2);
        }
      }

      break;
    case 0x13uLL:
      v494 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v494, v495, v496, v497);
      if (v36)
        v498 = {;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v499, v498, 0, v19 - 2, 1);

        v503 = objc_msgSend_strokeProvider(self, v500, v501, v502);
        v507 = objc_msgSend_headerRowBodyColumnStroke(v503, v504, v505, v506);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v508, v507, v19 - 2, 1, 1);

        v512 = objc_msgSend_strokeProvider(self, v509, v510, v511);
        v516 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v512, v513, v514, v515);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v517, v516, v19 - 1, 1, 1);
      }

      else
        v759 = {;
        v760 = v19 - 1;
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v761, v759, 0, v760, 1);

        v512 = objc_msgSend_strokeProvider(self, v762, v763, v764);
        v516 = objc_msgSend_headerRowBodyColumnStroke(v512, v765, v766, v767);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v768, v516, v760, 1, 1);
      }

      v772 = objc_msgSend_strokeProvider(self, v769, v770, v771);
      v776 = objc_msgSend_headerColumnBodyColumnStroke(v772, v773, v774, v775);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v777, v776, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v778, v779, v780);
      v142 = objc_msgSend_footerRowBodyColumnStroke(v138, v781, v782, v783);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v784, v142, v833, v832, 1);
      goto LABEL_200;
    case 0x14uLL:
      v328 = objc_msgSend_strokeProvider(self, v39, v40, v41);
      v332 = objc_msgSend_headerRowBorderStroke(v328, v329, v330, v331);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v333, v332, v38, v42, 1);

      v337 = objc_msgSend_strokeProvider(self, v334, v335, v336);
      v341 = objc_msgSend_defaultVerticalBorderStroke(v337, v338, v339, v340);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v342, v341, v42, v43, 1);

      v138 = objc_msgSend_strokeProvider(self, v343, v344, v345);
      v142 = objc_msgSend_footerRowBorderStroke(v138, v346, v347, v348);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v349, v142, v833, v832, 1);
      goto LABEL_200;
    default:
      v372 = MEMORY[0x277D81150];
      v373 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTStrokeDefaultVendor p_updateStrokeLayer:forColumnStrokeType:]", v41);
      v376 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v374, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v375);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v372, v377, v373, v376, 990, 0, "unexpected column strokeType %zu", type);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v378, v379, v380);
      goto LABEL_201;
  }

  v708 = objc_msgSend_strokeProvider(self, v705, v706, v707);
  v712 = objc_msgSend_bodyPivotGroupVerticalStroke(v708, v709, v710, v711);
  objc_msgSend_appendStroke_inRange_order_(layerCopy, v713, v712, v42, v43, 2);

  v138 = objc_msgSend_strokeProvider(self, v714, v715, v716);
  v142 = objc_msgSend_footerRowPivotGroupVerticalStroke(v138, v717, v718, v719);
  objc_msgSend_appendStroke_inRange_order_(layerCopy, v720, v142, v833, v832, 2);
LABEL_200:

LABEL_201:
}

- (void)p_updateStrokeLayer:(id)layer forRowStrokeType:(unint64_t)type
{
  layerCopy = layer;
  v428 = objc_msgSend_tableInfo(self, v6, v7, v8);
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);
  v13 = objc_msgSend_numberOfHeaderRows(WeakRetained, v10, v11, v12);

  v14 = objc_loadWeakRetained(&self->_tableProvider);
  v18 = objc_msgSend_numberOfFooterOrGrandTotalRows(v14, v15, v16, v17);

  v19 = objc_loadWeakRetained(&self->_tableProvider);
  v23 = objc_msgSend_numberOfHeaderColumns(v19, v20, v21, v22);

  v24 = objc_loadWeakRetained(&self->_tableProvider);
  v28 = objc_msgSend_numberOfGrandTotalColumns(v24, v25, v26, v27);

  v29 = objc_loadWeakRetained(&self->_tableProvider);
  v33 = objc_msgSend_numberOfColumns(v29, v30, v31, v32);

  if (v23)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_msgSend_invalidate(layerCopy, v34, v35, v36);
  v41 = type - 21;
  v42 = v23;
  v43 = v33 - (v28 + v23);
  v44 = v33;
  v45 = v33 - v28;
  switch(v41)
  {
    case 0uLL:
      objc_msgSend_strokeProvider(self, v38, v39, v40);
      if (v13)
        v46 = {;
        v50 = objc_msgSend_headerRowBorderStroke(v46, v47, v48, v49);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v51, v50, 0, v44, 1);
      }

      else
        v392 = {;
        v396 = objc_msgSend_headerColumnBorderStroke(v392, v393, v394, v395);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v397, v396, v37, v23, 1);

        v46 = objc_msgSend_strokeProvider(self, v398, v399, v400);
        v50 = objc_msgSend_defaultHorizontalBorderStroke(v46, v401, v402, v403);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v404, v50, v23, v43, 1);
      }

      goto LABEL_84;
    case 1uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_headerRowBodyRowStroke(v46, v194, v195, v196);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v197, v50, 0, v44, 1);
      goto LABEL_84;
    case 2uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_headerRowPivotGroupDeEmphasisStroke(v46, v178, v179, v180);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v181, v50, 0, v44, 1);
      goto LABEL_84;
    case 3uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_headerRowPivotTitleStroke(v46, v186, v187, v188);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v189, v50, 0, v44, 1);
      goto LABEL_84;
    case 4uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_headerRowSeparatorStroke(v46, v98, v99, v100);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v101, v50, 0, v44, 1);
      goto LABEL_84;
    case 5uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel1TopStroke(v46, v224, v225, v226);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v227, v50, 0, v44, 1);
      goto LABEL_84;
    case 6uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel1LabelSeparatorStroke(v46, v251, v252, v253);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v254, v50, 0, v44, 1);
      goto LABEL_84;
    case 7uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel1BottomStroke(v46, v190, v191, v192);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v193, v50, 0, v44, 1);
      goto LABEL_84;
    case 8uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel2TopStroke(v46, v263, v264, v265);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v266, v50, 0, v44, 1);
      goto LABEL_84;
    case 9uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel2LabelSeparatorStroke(v46, v106, v107, v108);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v109, v50, 0, v44, 1);
      goto LABEL_84;
    case 0xAuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel2BottomStroke(v46, v259, v260, v261);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v262, v50, 0, v44, 1);
      goto LABEL_84;
    case 0xBuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel3TopStroke(v46, v94, v95, v96);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v97, v50, 0, v44, 1);
      goto LABEL_84;
    case 0xCuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel3LabelSeparatorStroke(v46, v102, v103, v104);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v105, v50, 0, v44, 1);
      goto LABEL_84;
    case 0xDuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel3BottomStroke(v46, v247, v248, v249);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v250, v50, 0, v44, 1);
      goto LABEL_84;
    case 0xEuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel4TopStroke(v46, v90, v91, v92);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v93, v50, 0, v44, 1);
      goto LABEL_84;
    case 0xFuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel4LabelSeparatorStroke(v46, v182, v183, v184);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v185, v50, 0, v44, 1);
      goto LABEL_84;
    case 0x10uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel4BottomStroke(v46, v86, v87, v88);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v89, v50, 0, v44, 1);
      goto LABEL_84;
    case 0x11uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel5TopStroke(v46, v207, v208, v209);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v210, v50, 0, v44, 1);
      goto LABEL_84;
    case 0x12uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel5LabelSeparatorStroke(v46, v255, v256, v257);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v258, v50, 0, v44, 1);
      goto LABEL_84;
    case 0x13uLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_categoryLevel5BottomStroke(v46, v294, v295, v296);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v297, v50, 0, v44, 1);
      goto LABEL_84;
    case 0x14uLL:
      v211 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v215 = objc_msgSend_headerColumnBodyRowStroke(v211, v212, v213, v214);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v216, v215, v37, v23, 1);

      v46 = objc_msgSend_strokeProvider(self, v217, v218, v219);
      v50 = objc_msgSend_bodyRowStroke(v46, v220, v221, v222);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v223, v50, v23, v43, 1);
      goto LABEL_84;
    case 0x15uLL:
      v228 = v28;
      if (objc_msgSend_rowAggregateGroupSize(v428, v38, v39, v40) < 2)
      {
        v363 = objc_msgSend_strokeProvider(self, v229, v230, v231);
        v367 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v363, v364, v365, v366);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v368, v367, 0, v23 - 1, 1);

        v241 = objc_msgSend_strokeProvider(self, v369, v370, v371);
        v245 = objc_msgSend_headerColumnBodyRowStroke(v241, v372, v373, v374);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v375, v245, v23 - 1, 1, 1);
      }

      else
      {
        v232 = objc_msgSend_strokeProvider(self, v229, v230, v231);
        v236 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v232, v233, v234, v235);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v237, v236, 0, v23 - 2, 1);

        v241 = objc_msgSend_strokeProvider(self, v238, v239, v240);
        v245 = objc_msgSend_headerColumnBodyRowStroke(v241, v242, v243, v244);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v246, v245, v23 - 2, 2, 1);
      }

      v379 = objc_msgSend_strokeProvider(self, v376, v377, v378);
      v383 = objc_msgSend_bodyRowStroke(v379, v380, v381, v382);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v384, v383, v23, v43, 1);

      if (!v28)
      {
        goto LABEL_85;
      }

      v46 = objc_msgSend_strokeProvider(self, v385, v386, v387);
      v50 = objc_msgSend_headerColumnBodyRowStroke(v46, v388, v389, v390);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v391, v50, v45, v228, 1);
      goto LABEL_84;
    case 0x16uLL:
      v271 = v28;
      v272 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v276 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v272, v273, v274, v275);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v277, v276, v37, v23, 1);

      v281 = objc_msgSend_strokeProvider(self, v278, v279, v280);
      v285 = objc_msgSend_bodyPivotDeEmphasisHorizontalStroke(v281, v282, v283, v284);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v286, v285, v23, v43, 1);

      if (!v28)
      {
        goto LABEL_85;
      }

      v46 = objc_msgSend_strokeProvider(self, v287, v288, v289);
      v50 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v46, v290, v291, v292);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v293, v50, v45, v271, 1);
      goto LABEL_84;
    case 0x17uLL:
      v298 = v28;
      v299 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v303 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v299, v300, v301, v302);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v304, v303, v37, v23, 7);

      v308 = objc_msgSend_strokeProvider(self, v305, v306, v307);
      v312 = objc_msgSend_bodyPivotGroupHorizontalStroke(v308, v309, v310, v311);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v313, v312, v23, v43, 7);

      if (!v28)
      {
        goto LABEL_85;
      }

      v46 = objc_msgSend_strokeProvider(self, v314, v315, v316);
      v50 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v46, v317, v318, v319);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v320, v50, v45, v298, 7);
      goto LABEL_84;
    case 0x18uLL:
      v144 = v28;
      v145 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v149 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v145, v146, v147, v148);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v150, v149, 0, 1, 6);

      v154 = objc_msgSend_strokeProvider(self, v151, v152, v153);
      v159 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v154, v155, v156, v157);
      v160 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v23)
      {
        v160 = 0;
      }

      if (v23 > 1)
      {
        v161 = 1;
      }

      else
      {
        v161 = v160;
      }

      if (v23 <= 1)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v158, v159, v161, v23 ^ 1, 6);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v158, v159, v161, v23 - 1, 6);
      }

      v165 = objc_msgSend_strokeProvider(self, v162, v163, v164);
      v169 = objc_msgSend_bodyPivotGroupHorizontalStroke(v165, v166, v167, v168);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v170, v169, v23, v43, 6);

      if (!v28)
      {
        goto LABEL_85;
      }

      v46 = objc_msgSend_strokeProvider(self, v171, v172, v173);
      v50 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v46, v174, v175, v176);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v177, v50, v45, v144, 6);
      goto LABEL_84;
    case 0x19uLL:
      v110 = v28;
      v111 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v115 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v111, v112, v113, v114);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v116, v115, 0, 2, 5);

      v120 = objc_msgSend_strokeProvider(self, v117, v118, v119);
      v125 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v120, v121, v122, v123);
      v126 = 0x7FFFFFFFFFFFFFFFLL;
      if (v23 != 2)
      {
        v126 = v23;
      }

      if (v23 <= 2)
      {
        v127 = v126;
      }

      else
      {
        v127 = 2;
      }

      if (v23 <= 2)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v124, v125, v127, 2 - v23, 5);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v124, v125, v127, v23 - 2, 5);
      }

      v131 = objc_msgSend_strokeProvider(self, v128, v129, v130);
      v135 = objc_msgSend_bodyPivotGroupHorizontalStroke(v131, v132, v133, v134);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v136, v135, v23, v43, 5);

      if (!v28)
      {
        goto LABEL_85;
      }

      v46 = objc_msgSend_strokeProvider(self, v137, v138, v139);
      v50 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v46, v140, v141, v142);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v143, v50, v45, v110, 5);
      goto LABEL_84;
    case 0x1AuLL:
      v329 = v28;
      v330 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v334 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v330, v331, v332, v333);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v335, v334, 0, 3, 4);

      v339 = objc_msgSend_strokeProvider(self, v336, v337, v338);
      v344 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v339, v340, v341, v342);
      v345 = 0x7FFFFFFFFFFFFFFFLL;
      if (v23 != 3)
      {
        v345 = v23;
      }

      if (v23 <= 3)
      {
        v346 = v345;
      }

      else
      {
        v346 = 3;
      }

      if (v23 <= 3)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v343, v344, v346, 3 - v23, 4);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v343, v344, v346, v23 - 3, 4);
      }

      v350 = objc_msgSend_strokeProvider(self, v347, v348, v349);
      v354 = objc_msgSend_bodyPivotGroupHorizontalStroke(v350, v351, v352, v353);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v355, v354, v23, v43, 4);

      if (!v28)
      {
        goto LABEL_85;
      }

      v46 = objc_msgSend_strokeProvider(self, v356, v357, v358);
      v50 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v46, v359, v360, v361);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v362, v50, v45, v329, 4);
      goto LABEL_84;
    case 0x1BuLL:
      v52 = v28;
      v53 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v57 = objc_msgSend_headerColumnPivotGroupDeEmphasisStroke(v53, v54, v55, v56);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v58, v57, 0, 4, 3);

      v62 = objc_msgSend_strokeProvider(self, v59, v60, v61);
      v67 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v62, v63, v64, v65);
      v68 = 0x7FFFFFFFFFFFFFFFLL;
      if (v23 != 4)
      {
        v68 = v23;
      }

      if (v23 <= 4)
      {
        v69 = v68;
      }

      else
      {
        v69 = 4;
      }

      if (v23 <= 4)
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v66, v67, v69, 4 - v23, 3);
      }

      else
      {
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v66, v67, v69, v23 - 4, 3);
      }

      v73 = objc_msgSend_strokeProvider(self, v70, v71, v72);
      v77 = objc_msgSend_bodyPivotGroupHorizontalStroke(v73, v74, v75, v76);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v78, v77, v23, v43, 3);

      if (!v28)
      {
        goto LABEL_85;
      }

      v46 = objc_msgSend_strokeProvider(self, v79, v80, v81);
      v50 = objc_msgSend_headerColumnPivotGroupHorizontalStroke(v46, v82, v83, v84);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v85, v50, v45, v52, 3);
      goto LABEL_84;
    case 0x1CuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_footerRowSeparatorStroke(v46, v321, v322, v323);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v324, v50, 0, v44, 1);
      goto LABEL_84;
    case 0x1DuLL:
      v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
      v50 = objc_msgSend_footerRowBodyRowStroke(v46, v325, v326, v327);
      objc_msgSend_appendStroke_inRange_order_(layerCopy, v328, v50, 0, v44, 1);
      goto LABEL_84;
    case 0x1EuLL:
      if (v18)
      {
        v46 = objc_msgSend_strokeProvider(self, v38, v39, v40);
        v50 = objc_msgSend_footerRowBorderStroke(v46, v267, v268, v269);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v270, v50, 0, v44, 1);
      }

      else
      {
        v405 = v28;
        v406 = objc_msgSend_strokeProvider(self, v38, v39, v40);
        v410 = objc_msgSend_headerColumnBorderStroke(v406, v407, v408, v409);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v411, v410, v37, v42, 1);

        v415 = objc_msgSend_strokeProvider(self, v412, v413, v414);
        v419 = objc_msgSend_defaultHorizontalBorderStroke(v415, v416, v417, v418);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v420, v419, v42, v43, 1);

        if (!v28)
        {
          goto LABEL_85;
        }

        v46 = objc_msgSend_strokeProvider(self, v421, v422, v423);
        v50 = objc_msgSend_headerColumnBorderStroke(v46, v424, v425, v426);
        objc_msgSend_appendStroke_inRange_order_(layerCopy, v427, v50, v45, v405, 1);
      }

LABEL_84:

LABEL_85:

      return;
    default:
      v198 = MEMORY[0x277D81150];
      v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTStrokeDefaultVendor p_updateStrokeLayer:forRowStrokeType:]", v40);
      v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeDefaultVendor.mm", v201);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v198, v203, v199, v202, 1167, 0, "unexpected row strokeType %zu", v43);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v204, v205, v206);
      goto LABEL_85;
  }
}

- (TSTTableStrokeProviding)strokeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_strokeProvider);

  return WeakRetained;
}

- (TSTTableHiddenRowColumnProviding)tableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tableProvider);

  return WeakRetained;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

- (_NSRange)headerSideBorderColumnRange
{
  length = self->_headerSideBorderColumnRange.length;
  location = self->_headerSideBorderColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)headerColumnSeparatorColumnRange
{
  length = self->_headerColumnSeparatorColumnRange.length;
  location = self->_headerColumnSeparatorColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)footerColumnSeparatorColumnRange
{
  length = self->_footerColumnSeparatorColumnRange.length;
  location = self->_footerColumnSeparatorColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)bodySideBorderColumnRange
{
  length = self->_bodySideBorderColumnRange.length;
  location = self->_bodySideBorderColumnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)topBorderRowRange
{
  length = self->_topBorderRowRange.length;
  location = self->_topBorderRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)headerRowSeparatorRowRange
{
  length = self->_headerRowSeparatorRowRange.length;
  location = self->_headerRowSeparatorRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)footerRowSeparatorRowRange
{
  length = self->_footerRowSeparatorRowRange.length;
  location = self->_footerRowSeparatorRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)bottomBorderRowRange
{
  length = self->_bottomBorderRowRange.length;
  location = self->_bottomBorderRowRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end