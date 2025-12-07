@interface TSTStrokeExporter
- (TSTStrokeExporter)initWithDefaultStrokeProvider:(id)provider customStrokeProvider:(id)strokeProvider tableInfo:(id)info;
- (id)p_strokeExportCacheForColumnBefore:(unsigned __int16)before columnAfter:(unsigned __int16)after;
- (id)p_strokeExportCacheForGridColumn:(unsigned int)column;
- (id)p_strokeExportCacheForGridRow:(unsigned int)row;
- (id)p_strokeExportCacheForRowAbove:(unsigned int)above rowBelow:(unsigned int)below;
- (id)strokeLayerForColumn:(unsigned int)column;
- (id)strokeLayerForRow:(unsigned int)row;
- (void)p_resolveStrokes;
- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right;
@end

@implementation TSTStrokeExporter

- (TSTStrokeExporter)initWithDefaultStrokeProvider:(id)provider customStrokeProvider:(id)strokeProvider tableInfo:(id)info
{
  providerCopy = provider;
  strokeProviderCopy = strokeProvider;
  infoCopy = info;
  v42.receiver = self;
  v42.super_class = TSTStrokeExporter;
  v12 = [(TSTStrokeExporter *)&v42 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_defaultStrokeProvider, provider);
    objc_storeStrong(&v13->_customStrokeProvider, strokeProvider);
    objc_storeStrong(&v13->_tableInfo, info);
    v17 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v14, v15, v16);
    topRowStrokes = v13->_topRowStrokes;
    v13->_topRowStrokes = v17;

    v22 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v19, v20, v21);
    bottomRowStrokes = v13->_bottomRowStrokes;
    v13->_bottomRowStrokes = v22;

    v27 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v24, v25, v26);
    leftColumnStrokes = v13->_leftColumnStrokes;
    v13->_leftColumnStrokes = v27;

    v32 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v29, v30, v31);
    rightColumnStrokes = v13->_rightColumnStrokes;
    v13->_rightColumnStrokes = v32;

    v34 = objc_alloc_init(MEMORY[0x277D81210]);
    rowStrokeExportCache = v13->_rowStrokeExportCache;
    v13->_rowStrokeExportCache = v34;

    v36 = objc_alloc_init(MEMORY[0x277D81210]);
    columnStrokeExportCache = v13->_columnStrokeExportCache;
    v13->_columnStrokeExportCache = v36;

    objc_msgSend_p_resolveStrokes(v13, v38, v39, v40);
  }

  return v13;
}

- (void)p_resolveStrokes
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v152 = objc_msgSend_customStrokeProvider(self, v6, v7, v8);
  v12 = objc_msgSend_defaultStrokeProvider(self, v9, v10, v11);

  v149 = v5;
  if (v12)
  {
    v16 = [TSTStrokeDefaultVendor alloc];
    v150 = objc_msgSend_defaultStrokeProvider(self, v17, v18, v19);
    v23 = objc_msgSend_tableInfo(self, v20, v21, v22);
    v27 = objc_msgSend_tableInfo(self, v24, v25, v26);
    v29 = objc_msgSend_initWithStrokeProvider_tableProvider_tableInfo_(v16, v28, v150, v23, v27);

    objc_msgSend_validateChangeDescriptors_(v29, v30, 0, v31);
    v151 = v29;
  }

  else
  {
    v151 = 0;
  }

  v32 = objc_msgSend_numberOfColumns(v5, v13, v14, v15);
  v147 = objc_msgSend_numberOfRows(v5, v33, v34, v35);
  v39 = objc_msgSend_leftColumnStrokes(self, v36, v37, v38);
  objc_msgSend_setCount_(v39, v40, v32 + 1, v41);

  v45 = objc_msgSend_rightColumnStrokes(self, v42, v43, v44);
  objc_msgSend_setCount_(v45, v46, v32 + 1, v47);

  v51 = objc_msgSend_topRowStrokes(self, v48, v49, v50);
  v148 = v147 + 1;
  objc_msgSend_setCount_(v51, v52, v148, v53);

  v57 = objc_msgSend_bottomRowStrokes(self, v54, v55, v56);
  objc_msgSend_setCount_(v57, v58, v148, v59);

  v62 = 0;
  do
  {
    v66 = objc_msgSend_strokeLayerForColumn_(v151, v60, v62, v61);
    if (v62 >= v32)
    {
      v67 = 0;
      if (!v62)
      {
LABEL_7:
        v68 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v67 = objc_msgSend_strokeLayerForLeftSideOfColumn_(v152, v63, v62, v65);
      if (!v62)
      {
        goto LABEL_7;
      }
    }

    v68 = objc_msgSend_strokeLayerForRightSideOfColumn_(v152, v63, (v62 - 1), v65);
LABEL_10:
    v69 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v63, v64, v65);
    v73 = objc_msgSend_leftColumnStrokes(self, v70, v71, v72);
    objc_msgSend_replacePointerAtIndex_withPointer_(v73, v74, v62, v69);

    objc_msgSend_lockForWrite(v69, v75, v76, v77);
    objc_msgSend_replaceDefaultStrokeLayerWith_(v69, v78, v66, v79);
    objc_msgSend_replaceCustomStrokeLayerWith_(v69, v80, v67, v81);
    objc_msgSend_unlock(v69, v82, v83, v84);
    v88 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v85, v86, v87);
    v92 = objc_msgSend_rightColumnStrokes(self, v89, v90, v91);
    objc_msgSend_replacePointerAtIndex_withPointer_(v92, v93, v62, v88);

    objc_msgSend_lockForWrite(v88, v94, v95, v96);
    objc_msgSend_replaceDefaultStrokeLayerWith_(v88, v97, v66, v98);
    objc_msgSend_replaceCustomStrokeLayerWith_(v88, v99, v68, v100);
    objc_msgSend_unlock(v88, v101, v102, v103);

    ++v62;
    v104 = v149;
  }

  while (v32 + 1 != v62);
  if (v148)
  {
    for (i = 0; v148 != i; ++i)
    {
      v109 = objc_msgSend_strokeLayerForRow_(v151, v60, i, v61);
      if (i >= v147)
      {
        v110 = 0;
        if (i)
        {
LABEL_17:
          v111 = objc_msgSend_strokeLayerForBottomOfRow_(v152, v106, (i - 1), v108);
          goto LABEL_18;
        }
      }

      else
      {
        v110 = objc_msgSend_strokeLayerForTopOfRow_(v152, v106, i, v108);
        if (i)
        {
          goto LABEL_17;
        }
      }

      v111 = 0;
LABEL_18:
      v112 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v106, v107, v108);
      v116 = objc_msgSend_topRowStrokes(self, v113, v114, v115);
      objc_msgSend_replacePointerAtIndex_withPointer_(v116, v117, i, v112);

      objc_msgSend_lockForWrite(v112, v118, v119, v120);
      objc_msgSend_replaceDefaultStrokeLayerWith_(v112, v121, v109, v122);
      objc_msgSend_replaceCustomStrokeLayerWith_(v112, v123, v110, v124);
      objc_msgSend_unlock(v112, v125, v126, v127);
      v131 = objc_msgSend_strokeLayerStack(TSTStrokeLayerStack, v128, v129, v130);
      v135 = objc_msgSend_bottomRowStrokes(self, v132, v133, v134);
      objc_msgSend_replacePointerAtIndex_withPointer_(v135, v136, i, v131);

      objc_msgSend_lockForWrite(v131, v137, v138, v139);
      objc_msgSend_replaceDefaultStrokeLayerWith_(v131, v140, v109, v141);
      objc_msgSend_replaceCustomStrokeLayerWith_(v131, v142, v111, v143);
      objc_msgSend_unlock(v131, v144, v145, v146);

      v104 = v149;
    }
  }
}

- (void)strokesForCellID:(TSUCellCoord)d top:(id *)top left:(id *)left bottom:(id *)bottom right:(id *)right
{
  column = d.column;
  if (top)
  {
    v22 = objc_msgSend_p_strokeExportCacheForGridRow_(self, a2, *&d, top);
    *top = objc_msgSend_strokeAtIndex_(v22, v14, column, v15);
  }

  if (bottom)
  {
    v23 = objc_msgSend_p_strokeExportCacheForGridRow_(self, a2, d.row + 1, top);
    *bottom = objc_msgSend_strokeAtIndex_(v23, v16, column, v17);
  }

  if (left)
  {
    v24 = objc_msgSend_p_strokeExportCacheForGridColumn_(self, a2, column, top);
    *left = objc_msgSend_strokeAtIndex_(v24, v18, *&d, v19);
  }

  if (right)
  {
    v25 = objc_msgSend_p_strokeExportCacheForGridColumn_(self, a2, column + 1, top);
    *right = objc_msgSend_strokeAtIndex_(v25, v20, *&d, v21);
  }
}

- (id)strokeLayerForColumn:(unsigned int)column
{
  v4 = objc_msgSend_p_strokeExportCacheForGridColumn_(self, a2, *&column, v3);
  v8 = objc_msgSend_mergedStrokes(v4, v5, v6, v7);

  return v8;
}

- (id)strokeLayerForRow:(unsigned int)row
{
  v4 = objc_msgSend_p_strokeExportCacheForGridRow_(self, a2, *&row, v3);
  v8 = objc_msgSend_mergedStrokes(v4, v5, v6, v7);

  return v8;
}

- (id)p_strokeExportCacheForGridColumn:(unsigned int)column
{
  v8 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(self->_tableInfo, a2, column, v3);
  if (column)
  {
    v9 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(self->_tableInfo, v6, column, v7);
  }

  else
  {
    v9 = 0x7FFFLL;
  }

  return MEMORY[0x2821F9670](self, sel_p_strokeExportCacheForColumnBefore_columnAfter_, v9, v8);
}

- (id)p_strokeExportCacheForGridRow:(unsigned int)row
{
  v4 = *&row;
  v8 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(self->_tableInfo, a2, *&row, v3);
  if (v4)
  {
    v9 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(self->_tableInfo, v6, v4, v7);
  }

  else
  {
    v9 = 0x7FFFFFFFLL;
  }

  return MEMORY[0x2821F9670](self, sel_p_strokeExportCacheForRowAbove_rowBelow_, v9, v8);
}

- (id)p_strokeExportCacheForColumnBefore:(unsigned __int16)before columnAfter:(unsigned __int16)after
{
  afterCopy = after;
  beforeCopy = before;
  if (before != 0x7FFF && after <= before && after != 0x7FFF)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeExporter p_strokeExportCacheForColumnBefore:columnAfter:]", after);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeExporter.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 199, 0, "looking for two visible columns around the gridline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = beforeCopy | (afterCopy << 16);
  v20 = objc_msgSend_objectForKey_(self->_columnStrokeExportCache, a2, v16, after);
  if (!v20)
  {
    if (afterCopy == 0x7FFF)
    {
      v21 = 0;
    }

    else
    {
      v22 = objc_msgSend_leftColumnStrokes(self, v17, v18, v19);
      v25 = objc_msgSend_pointerAtIndex_(v22, v23, afterCopy, v24);

      objc_msgSend_lockForRead(v25, v26, v27, v28);
      v21 = v25;
    }

    if (beforeCopy == 0x7FFF)
    {
      v29 = 0;
    }

    else
    {
      v30 = objc_msgSend_rightColumnStrokes(self, v17, v18, v19);
      v29 = objc_msgSend_pointerAtIndex_(v30, v31, beforeCopy + 1, v32);

      objc_msgSend_lockForRead(v29, v33, v34, v35);
    }

    if (objc_msgSend_count(v21, v17, v18, v19) || objc_msgSend_count(v29, v36, v37, v38))
    {
      v39 = objc_msgSend_mergeTopStrokes_withBottomStrokes_(TSTStrokeLayerMergedStack, v36, v21, v29);
      objc_msgSend_unlock(v21, v40, v41, v42);
      objc_msgSend_unlock(v29, v43, v44, v45);
      v46 = [TSTStrokeExportCache alloc];
      v20 = objc_msgSend_initWithMergedStack_(v46, v47, v39, v48);
      objc_msgSend_setObject_forKey_(self->_columnStrokeExportCache, v49, v20, v16);
    }

    else
    {
      v20 = 0;
      v39 = 0;
    }
  }

  return v20;
}

- (id)p_strokeExportCacheForRowAbove:(unsigned int)above rowBelow:(unsigned int)below
{
  if (above != 0x7FFFFFFF && below <= above && below != 0x7FFFFFFF)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTStrokeExporter p_strokeExportCacheForRowAbove:rowBelow:]", *&below);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeExporter.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 236, 0, "looking for two visible rows around the gridline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = above | (below << 16);
  v22 = objc_msgSend_objectForKey_(self->_rowStrokeExportCache, a2, v18, *&below);
  if (!v22)
  {
    if (below == 0x7FFFFFFF)
    {
      v23 = 0;
    }

    else
    {
      v24 = objc_msgSend_topRowStrokes(self, v19, v20, v21);
      v27 = objc_msgSend_pointerAtIndex_(v24, v25, below, v26);

      objc_msgSend_lockForRead(v27, v28, v29, v30);
      v23 = v27;
    }

    if (above == 0x7FFFFFFF)
    {
      v31 = 0;
    }

    else
    {
      v32 = objc_msgSend_bottomRowStrokes(self, v19, v20, v21);
      v31 = objc_msgSend_pointerAtIndex_(v32, v33, above + 1, v34);

      objc_msgSend_lockForRead(v31, v35, v36, v37);
    }

    if (objc_msgSend_count(v23, v19, v20, v21) || objc_msgSend_count(v31, v38, v39, v40))
    {
      v41 = objc_msgSend_mergeTopStrokes_withBottomStrokes_(TSTStrokeLayerMergedStack, v38, v23, v31);
      objc_msgSend_unlock(v23, v42, v43, v44);
      objc_msgSend_unlock(v31, v45, v46, v47);
      v48 = [TSTStrokeExportCache alloc];
      v22 = objc_msgSend_initWithMergedStack_(v48, v49, v41, v50);
      objc_msgSend_setObject_forKey_(self->_rowStrokeExportCache, v51, v22, v18);
    }

    else
    {
      v22 = 0;
      v41 = 0;
    }
  }

  return v22;
}

@end