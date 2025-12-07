@interface TSTPivotTranslator
- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d;
- (BOOL)isSummaryColumn:(unsigned __int16)column;
- (TSTPivotOwner)pivotOwner;
- (TSTPivotTranslator)initWithTableInfo:(id)info;
- (TSUViewColumnIndex)numberOfGrandTotalColumns;
- (TSUViewRowIndex)numberOfFooterOrGrandTotalRows;
- (double)heightOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default;
- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default;
- (id)aggregateFormulaOwner;
- (id)allColumnGroupUIDs;
- (id)allRowGroupUIDs;
- (id)cellRegionForTableStyleArea:(unint64_t)area;
- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default;
- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default;
- (id)coordinateMapper;
- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source;
- (id)groupByForColumns;
- (id)groupByForRows;
- (id)groupBySet;
- (id)i_indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)level;
- (id)i_indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)level;
- (id)i_indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)level;
- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForColumnsContainedByGroupUIDs:(id)ds;
- (id)indexesForLeadingColumns;
- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForRowsContainedByGroupUIDs:(id)ds;
- (id)indexesForSummaryColumns;
- (id)indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)level;
- (id)metadataForColumnIndex:(TSUViewColumnIndex)index;
- (id)peerCellRegionForCellRegion:(id)region;
- (id)summaryCellVendor;
- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default;
- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default;
- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default;
- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border;
- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d;
- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text;
- (int)p_applyViewCellCoord:(TSUViewCellCoord)coord toSummaryUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock;
- (unint64_t)aggregateIndexForColumnIndex:(TSUViewColumnIndex)index;
- (unint64_t)aggregateIndexForRowIndex:(TSUViewRowIndex)index;
- (unint64_t)numberOfColumnLevels;
- (unint64_t)numberOfRowLevels;
- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d;
- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)row;
- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d;
- (unsigned)columnAggregateGroupSize;
- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)column outAggregateIndex:(unint64_t *)index;
- (unsigned)groupLevelAtSummaryColumn:(TSUViewColumnIndex)column;
- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)row;
- (unsigned)maxColumnLevel;
- (unsigned)maxRowLevel;
- (unsigned)maxVisibleColumnLevel;
- (unsigned)maxVisibleRowLevel;
- (unsigned)p_columnRowTypeForColumnIndex:(TSUViewColumnIndex)index;
- (unsigned)p_columnRowTypeForRowIndex:(TSUViewRowIndex)index;
- (unsigned)rowAggregateGroupSize;
- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)row outAggregateIndex:(unint64_t *)index;
- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (void)flushCachedIndexSets;
- (void)i_populateIndexesForLeadingColumns;
- (void)i_populateIndexesForLeadingSummaryColumns;
- (void)i_populateIndexesForSummaryColumns;
- (void)i_populatePivotCachedIndexSetsIfNeeded;
- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)index toSummaryUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock;
- (void)p_applyViewRowIndex:(TSUViewRowIndex)index toSummaryUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock;
- (void)resetViewMap;
- (void)resetViewMapAndNotify;
- (void)setHeight:(double)height ofRowAtIndex:(TSUViewRowIndex)index;
- (void)setWidth:(double)width ofColumnAtIndex:(TSUViewColumnIndex)index;
@end

@implementation TSTPivotTranslator

- (TSTPivotTranslator)initWithTableInfo:(id)info
{
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = TSTPivotTranslator;
  v8 = [(TSTCategoryTranslator *)&v22 initWithTableInfo:infoCopy];
  if (v8)
  {
    v9 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v5, v6, v7);
    cachedSummaryColumnIndexesAtLevels = v8->_cachedSummaryColumnIndexesAtLevels;
    v8->_cachedSummaryColumnIndexesAtLevels = v9;

    v14 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v11, v12, v13);
    cachedLeadingColumnIndexesAtLevels = v8->_cachedLeadingColumnIndexesAtLevels;
    v8->_cachedLeadingColumnIndexesAtLevels = v14;

    v19 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v16, v17, v18);
    cachedLeadingSummaryColumnIndexesAtLevels = v8->_cachedLeadingSummaryColumnIndexesAtLevels;
    v8->_cachedLeadingSummaryColumnIndexesAtLevels = v19;

    v8->_cachedPivotIndexSetsAreValid = 0;
    v8->_pivotCachedIndexesUnfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v8;
}

- (TSTPivotOwner)pivotOwner
{
  v4 = objc_msgSend_baseTableModel(self, a2, v2, v3);
  v8 = objc_msgSend_pivotOwner(v4, v5, v6, v7);

  return v8;
}

- (id)groupBySet
{
  v4 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_groupBySet(v4, v5, v6, v7);

  return v8;
}

- (id)groupByForRows
{
  v4 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_groupBySet(v4, v5, v6, v7);
  v12 = objc_msgSend_groupByForRowGroups(v8, v9, v10, v11);

  return v12;
}

- (id)groupByForColumns
{
  v4 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_groupBySet(v4, v5, v6, v7);
  v12 = objc_msgSend_groupByForColumnGroups(v8, v9, v10, v11);

  return v12;
}

- (unint64_t)numberOfRowLevels
{
  v4 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_groupBySet(v4, v5, v6, v7);
  v12 = objc_msgSend_rowGroupings(v8, v9, v10, v11);
  v16 = objc_msgSend_count(v12, v13, v14, v15);

  return v16;
}

- (unint64_t)numberOfColumnLevels
{
  v4 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_groupBySet(v4, v5, v6, v7);
  v12 = objc_msgSend_columnGroupings(v8, v9, v10, v11);
  v16 = objc_msgSend_count(v12, v13, v14, v15);

  return v16;
}

- (unsigned)maxRowLevel
{
  v4 = objc_msgSend_numberOfRowLevels(self, a2, v2, v3);
  v5 = v4 - 1;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

- (unsigned)maxColumnLevel
{
  v4 = objc_msgSend_numberOfColumnLevels(self, a2, v2, v3);
  v5 = v4 - 1;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

- (unsigned)maxVisibleRowLevel
{
  v5 = objc_msgSend_numberOfRowLevels(self, a2, v2, v3);
  v9 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v6, v7, v8);
  hasHiddenColumnsOrRows = objc_msgSend_hasHiddenColumnsOrRows(v9, v10, v11, v12);

  if (hasHiddenColumnsOrRows)
  {
    v52.origin = objc_msgSend_bodyRange(self, v14, v15, v16);
    v52.size = v17;
    v18 = MEMORY[0x277CCAB58];
    v19 = TSUCellRect::rows(&v52);
    v21 = objc_msgSend_indexSetWithIndexesInRange_(v18, v20, v19, v20);
    v25 = objc_msgSend_indexesForSummaryRows(self->super.super._tableInfo, v22, v23, v24);
    objc_msgSend_removeIndexes_(v21, v26, v25, v27);

    v31 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v28, v29, v30);
    v35 = objc_msgSend_hiddenRowIndexes(v31, v32, v33, v34);

    objc_msgSend_removeIndexes_(v21, v36, v35, v37);
    if (!objc_msgSend_count(v21, v38, v39, v40))
    {
      do
      {
        v43 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v41, --v5, v42);
        v46 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v43, v44, v35, v45);

        v50 = objc_msgSend_count(v46, v47, v48, v49);
      }

      while (!v50);
    }
  }

  return v5;
}

- (unsigned)maxVisibleColumnLevel
{
  v5 = objc_msgSend_numberOfColumnLevels(self, a2, v2, v3);
  v9 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v6, v7, v8);
  hasHiddenColumnsOrRows = objc_msgSend_hasHiddenColumnsOrRows(v9, v10, v11, v12);

  if (hasHiddenColumnsOrRows)
  {
    v52.origin = objc_msgSend_bodyRange(self, v14, v15, v16);
    v52.size = v17;
    v18 = MEMORY[0x277CCAB58];
    v19 = TSUCellRect::columns(&v52);
    v21 = objc_msgSend_indexSetWithIndexesInRange_(v18, v20, v19, v20);
    v25 = objc_msgSend_indexesForSummaryColumns(self->super.super._tableInfo, v22, v23, v24);
    objc_msgSend_removeIndexes_(v21, v26, v25, v27);

    v31 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v28, v29, v30);
    v35 = objc_msgSend_hiddenColumnIndexes(v31, v32, v33, v34);

    objc_msgSend_removeIndexes_(v21, v36, v35, v37);
    if (!objc_msgSend_count(v21, v38, v39, v40))
    {
      do
      {
        v43 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self, v41, --v5, v42);
        v46 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v43, v44, v35, v45);

        v50 = objc_msgSend_count(v46, v47, v48, v49);
      }

      while (!v50);
    }
  }

  return v5;
}

- (id)summaryCellVendor
{
  v4 = objc_msgSend_summaryModel(self->super.super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_summaryCellVendor(v4, v5, v6, v7);

  return v8;
}

- (id)aggregateFormulaOwner
{
  v4 = objc_msgSend_summaryModel(self->super.super._tableInfo, a2, v2, v3);
  v8 = objc_msgSend_aggregateFormulaOwner(v4, v5, v6, v7);

  return v8;
}

- (void)resetViewMapAndNotify
{
  objc_msgSend_resetViewMap(self, a2, v2, v3);
  v19 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v5, v6, v7);
  v11 = objc_msgSend_range(self->super.super._tableInfo, v8, v9, v10);
  v13 = v12;
  v14 = objc_msgSend_changeDescriptorWithType_cellRange_strokeRange_(TSTChangeDescriptor, v12, 29, v11, v12, v11, v12);
  objc_msgSend_registerChange_details_forChangeSource_(v19, v15, 1, v14, self->super.super._tableInfo);
  v17 = objc_msgSend_changeDescriptorWithType_cellRange_strokeRange_(TSTChangeDescriptor, v16, 7, v11, v13, v11, v13);
  objc_msgSend_registerChange_details_forChangeSource_(v19, v18, 1, v17, self->super.super._tableInfo);
}

- (void)resetViewMap
{
  v5 = objc_msgSend_viewMap(self, a2, v2, v3);
  v9 = objc_msgSend_baseMap(self, v6, v7, v8);

  if (v5 == v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTPivotTranslator resetViewMap]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 234, 0, "view and base cannot be the same for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = self->super.super._tableInfo;
  v25 = objc_msgSend_baseTableModel(v21, v22, v23, v24);
  if (objc_msgSend_isEmptyPivot(v21, v26, v27, v28))
  {
    v32 = objc_msgSend_viewMap(self, v29, v30, v31);
    v36 = objc_msgSend_baseMap(self, v33, v34, v35);
    v40 = objc_msgSend_rowUIDs(v36, v37, v38, v39);
    objc_msgSend_replaceRowsWithUids_(v32, v41, v40, v42);

    v46 = objc_msgSend_viewMap(self, v43, v44, v45);
    v50 = objc_msgSend_baseMap(self, v47, v48, v49);
    v54 = objc_msgSend_columnUIDs(v50, v51, v52, v53);
    objc_msgSend_replaceColumnsWithUids_(v46, v55, v54, v56);
  }

  else
  {
    v57 = objc_msgSend_pivotOwner(v25, v29, v30, v31);
    v46 = objc_msgSend_groupBySet(v57, v58, v59, v60);

    v64 = objc_msgSend_pivotOrder(v21, v61, v62, v63);
    v50 = v64;
    if (v64)
    {
      objc_msgSend_orderedUidsForDimension_(v64, v65, 0, v67);
      objc_msgSend_orderedUidsForDimension_(v50, v68, 1, v69);
    }

    else
    {
      v124 = 0;
      v125 = 0;
      v126 = 0;
      v121 = 0;
      v122 = 0;
      v123 = 0;
    }

    if (objc_msgSend_activeFlatteningDimension(v46, v65, v66, v67))
    {
      v73 = objc_msgSend_viewMap(self, v70, v71, v72);
      objc_msgSend_replaceRowsWithUids_(v73, v74, &v124, v75);
    }

    else
    {
      v79 = objc_msgSend_numberOfHeaderRows(v25, v70, v71, v72);
      __dst = 0;
      v120 = 0;
      __p = 0;
      sub_221086EBC(&__p, v124, v124 + 16 * v79, v79);
      v83 = (v125 - v124) >> 4;
      v84 = v83 - v79;
      if (v83 > v79)
      {
        v85 = 16 * v79;
        do
        {
          v86 = objc_msgSend_rowUidsForRowGroupUid_(v46, v80, v124 + v85, v82);
          sub_2210F0C88(&__p, __dst, *v86, v86[1], (v86[1] - *v86) >> 4);
          v85 += 16;
          --v84;
        }

        while (v84);
      }

      v87 = objc_msgSend_viewMap(self, v80, v81, v82);
      objc_msgSend_replaceRowsWithUids_(v87, v88, &__p, v89);

      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }
    }

    if (objc_msgSend_activeFlatteningDimension(v46, v76, v77, v78) == 1)
    {
      v93 = objc_msgSend_numberOfHeaderColumns(v25, v90, v91, v92);
      __dst = 0;
      v120 = 0;
      __p = 0;
      sub_221086EBC(&__p, v121, v121 + 16 * v93, v93);
      v97 = (v122 - v121) >> 4;
      v98 = v97 - v93;
      if (v97 > v93)
      {
        v99 = 16 * v93;
        do
        {
          v100 = objc_msgSend_columnUidsForColumnGroupUid_(v46, v94, v121 + v99, v96);
          sub_2210F0C88(&__p, __dst, *v100, v100[1], (v100[1] - *v100) >> 4);
          v99 += 16;
          --v98;
        }

        while (v98);
      }

      v101 = objc_msgSend_viewMap(self, v94, v95, v96);
      objc_msgSend_replaceColumnsWithUids_(v101, v102, &__p, v103);

      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }
    }

    else
    {
      v104 = objc_msgSend_viewMap(self, v90, v91, v92);
      objc_msgSend_replaceColumnsWithUids_(v104, v105, &v121, v106);
    }

    if (v121)
    {
      v122 = v121;
      operator delete(v121);
    }

    if (v124)
    {
      v125 = v124;
      operator delete(v124);
    }
  }

  v110 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v107, v108, v109);
  objc_msgSend_invalidateViewGeometry(v110, v111, v112, v113);

  objc_msgSend_flushCachedIndexSets(self, v114, v115, v116);
  coordMapper = self->super.super._coordMapper;
  self->super.super._coordMapper = 0;
}

- (id)coordinateMapper
{
  coordMapper = self->super.super._coordMapper;
  if (!coordMapper)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->super.super._coordMapper)
    {
      v5 = [TSCECoordMapper alloc];
      v9 = objc_msgSend_tableUID(selfCopy->super.super._tableInfo, v6, v7, v8);
      v13 = objc_msgSend_indexesForSummaryColumns(selfCopy, v10, v11, v12, v9, v10);
      v17 = objc_msgSend_indexesForSummaryRows(selfCopy, v14, v15, v16);
      v19 = objc_msgSend_initWithTableUID_summaryColumns_summaryRows_labelRows_(v5, v18, &v78, v13, v17, 0);

      objc_msgSend_setChromeCoordsAreViewCoords_(v19, v20, 1, v21);
      v25 = objc_msgSend_viewMap(selfCopy, v22, v23, v24);
      v29 = objc_msgSend_baseMap(selfCopy, v26, v27, v28);
      v33 = objc_msgSend_rowUIDs(v29, v30, v31, v32);

      v38 = *v33;
      v37 = *(v33 + 8);
      if (v38 != v37)
      {
        v39 = 0;
        do
        {
          v40 = objc_msgSend_rowIndexForRowUID_(v25, v34, *v38, v38[1]);
          objc_msgSend_mapBaseRow_toViewRow_(v19, v41, v39, v40);
          v39 = (v39 + 1);
          v38 += 2;
        }

        while (v38 != v37);
      }

      v42 = objc_msgSend_baseMap(selfCopy, v34, v35, v36);
      v46 = objc_msgSend_columnUIDs(v42, v43, v44, v45);

      v50 = *v46;
      v51 = *(v46 + 8);
      if (v50 != v51)
      {
        v52 = 0;
        do
        {
          v53 = objc_msgSend_columnIndexForColumnUID_(v25, v47, *v50, v50[1]);
          objc_msgSend_mapBaseColumn_toViewColumn_(v19, v54, v52++, v53);
          v50 += 2;
        }

        while (v50 != v51);
      }

      v55 = objc_msgSend_summaryMap(selfCopy, v47, v48, v49);
      v59 = v55;
      if (v55)
      {
        v60 = objc_msgSend_rowUIDs(v55, v56, v57, v58);
        v64 = *v60;
        v65 = *(v60 + 8);
        if (*v60 != v65)
        {
          v66 = 0;
          do
          {
            v67 = objc_msgSend_rowIndexForRowUID_(v25, v61, *v64, v64[1]);
            objc_msgSend_mapSummaryRow_toViewRow_(v19, v68, v66, v67);
            v66 = (v66 + 1);
            v64 += 2;
          }

          while (v64 != v65);
        }

        v69 = objc_msgSend_columnUIDs(v59, v61, v62, v63);
        v71 = *v69;
        v72 = *(v69 + 8);
        if (*v69 != v72)
        {
          v73 = 0;
          do
          {
            v74 = objc_msgSend_columnIndexForColumnUID_(v25, v70, *v71, v71[1]);
            objc_msgSend_mapSummaryColumn_toViewColumn_(v19, v75, v73++, v74);
            v71 += 2;
          }

          while (v71 != v72);
        }
      }

      v76 = self->super.super._coordMapper;
      self->super.super._coordMapper = v19;
    }

    objc_sync_exit(selfCopy);

    coordMapper = self->super.super._coordMapper;
  }

  return coordMapper;
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)d
{
  row = d->_row;
  v11[0] = d->_column;
  v11[1] = row;
  v7 = objc_msgSend_viewCellCoordForCellUID_(self, a2, v11, v3);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_tableStyleAreaForCellID_(self, v6, v7, v8);
  }
}

- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)d
{
  if (objc_msgSend_isEmptyPivot(self->super.super._tableInfo, a2, *&d, v3))
  {
    baseTableModel = self->super.super._baseTableModel;
    v10 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v6, *&d, v7);

    return objc_msgSend_tableStyleAreaForBaseCellCoord_(baseTableModel, v9, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_p_columnRowTypeForColumnIndex_(self, v6, d._coord.column, v7);
    v16 = objc_msgSend_p_columnRowTypeForRowIndex_(self, v14, d._coord.row, v15);

    return MEMORY[0x2821F9670](TSTTableStyleNetwork, sel_styleAreaForColumnType_rowType_forAPivotTable_, v13, v16);
  }
}

- (unsigned)p_columnRowTypeForColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_numberOfHeaderColumns(self, a2, *&index.var0, v3);
  var0 = index.var0;
  if (v6 <= index.var0)
  {
    v11 = objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(self, index.var0, index.var0, 0);
    if (v11)
    {
      v13 = v11;
      v14 = v11;
      v15 = objc_msgSend_numberOfColumnLevels(self, v12, v7, v8);
      if (v15 <= v13)
      {
        var0 = 0;
      }

      else
      {
        var0 = v14;
      }

      if (v15 <= v13)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      var0 = 0;
      v10 = 6;
    }
  }

  else
  {
    v10 = 1;
  }

  return sub_221132E08(v10, var0, v7, v8);
}

- (unsigned)p_columnRowTypeForRowIndex:(TSUViewRowIndex)index
{
  v6 = objc_msgSend_numberOfHeaderRows(self, a2, *&index.var0, v3);
  var0 = index.var0;
  if (v6 <= index.var0)
  {
    v11 = objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(self, index.var0, index.var0, 0);
    if (v11)
    {
      v13 = v11;
      v14 = v11;
      v15 = objc_msgSend_numberOfRowLevels(self, v12, v7, v8);
      if (v15 <= v13)
      {
        var0 = 0;
      }

      else
      {
        var0 = v14;
      }

      if (v15 <= v13)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      var0 = 0;
      v10 = 6;
    }
  }

  else
  {
    v10 = 1;
  }

  return sub_221132E08(v10, var0, v7, v8);
}

- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)row
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPivotTranslator tableStyleAreaForRow:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 411, 0, "Unimplemented for pivot tables, because it doesn't make sense.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 1;
}

- (id)cellRegionForTableStyleArea:(unint64_t)area
{
  if (area > 3)
  {
    if (area > 15)
    {
      if (area == 16)
      {
        v5 = objc_msgSend_indexesForSummaryColumnsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, a2, 1, 5);
        v108.origin = objc_msgSend_bodyRange(self, v94, v95, v96);
        v108.size = v97;
        v98 = TSUCellRect::rows(&v108);
        v12 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v99, v5, v98, v99);
        v15 = objc_msgSend_indexesForSummaryRows(self, v100, v101, v102);
        v18 = objc_msgSend_regionBySubtractingRowIndexes_(v12, v103, v15, v104);
        goto LABEL_17;
      }

      if (area != 17)
      {
        goto LABEL_14;
      }

      v51 = MEMORY[0x277CCAA78];
      v108.origin = objc_msgSend_headerColumnRange(self, a2, 17, v3);
      v108.size = v52;
      v53 = TSUCellRect::columns(&v108);
      v55 = objc_msgSend_indexSetWithIndexesInRange_(v51, v54, v53, v54);
      v58 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self->super.super._tableInfo, v56, 0, v57);
      v5 = objc_msgSend_tsu_indexSetByAddingIndexes_(v55, v59, v58, v60);

      v62 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v61, 1, 5);
      v64 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v63, v5, v62);
      v66 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v65, 2, 5);
      v68 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v67, v66, 0, 1);
      v50 = objc_msgSend_regionBySubtractingRegion_(v64, v69, v68, v70);
    }

    else
    {
      if (area != 4)
      {
        if (area == 15)
        {
          v5 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, a2, 1, 5);
          v108.origin = objc_msgSend_bodyRange(self, v6, v7, v8);
          v108.size = v9;
          v10 = TSUCellRect::columns(&v108);
          v12 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v11, v5, v10, v11);
          v15 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self->super.super._tableInfo, v13, 0, v14);
          v18 = objc_msgSend_regionBySubtractingColumnIndexes_(v12, v16, v15, v17);
LABEL_17:
          v50 = v18;

          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v5 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self->super.super._tableInfo, a2, 0, v3);
      v108.origin = objc_msgSend_range(self, v88, v89, v90);
      v108.size = v91;
      v92 = TSUCellRect::columns(&v108);
      v50 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v93, v5, v92, v93);
    }

LABEL_19:

    goto LABEL_22;
  }

  switch(area)
  {
    case 1uLL:
      v71 = objc_msgSend_bodyRange(self, a2, 1, v3);
      v73 = objc_msgSend_regionFromRange_(TSTCellRegion, v72, v71, v72);
      v77 = objc_msgSend_indexesForSummaryColumns(self, v74, v75, v76);
      v80 = objc_msgSend_regionBySubtractingColumnIndexes_(v73, v78, v77, v79);

      v84 = objc_msgSend_indexesForSummaryRows(self, v81, v82, v83);
      v50 = objc_msgSend_regionBySubtractingRowIndexes_(v80, v85, v84, v86);

      goto LABEL_22;
    case 2uLL:
      v105 = objc_msgSend_headerRowRange(self, a2, 2, v3);
      v87 = objc_msgSend_regionFromRange_(TSTCellRegion, v106, v105, v106);
      goto LABEL_21;
    case 3uLL:
      v19 = MEMORY[0x277CCAA78];
      v108.origin = objc_msgSend_headerColumnRange(self, a2, 3, v3);
      v108.size = v20;
      v21 = TSUCellRect::columns(&v108);
      v23 = objc_msgSend_indexSetWithIndexesInRange_(v19, v22, v21, v22);
      v26 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self->super.super._tableInfo, v24, 0, v25);
      v5 = objc_msgSend_tsu_indexSetByAddingIndexes_(v23, v27, v26, v28);

      v108.origin = objc_msgSend_bodyRange(self, v29, v30, v31);
      v108.size = v32;
      v33 = TSUCellRect::rows(&v108);
      v35 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v34, v5, v33, v34);
      v37 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v36, 2, 5);
      v41 = objc_msgSend_numberOfColumns(self, v38, v39, v40);
      v43 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v42, v37, 1, v41);
      v46 = objc_msgSend_regionBySubtractingRegion_(v35, v44, v43, v45);

      v15 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v47, 0, 1);
      v50 = objc_msgSend_regionBySubtractingRowIndexes_(v46, v48, v15, v49);

LABEL_18:
      goto LABEL_19;
  }

LABEL_14:
  v87 = objc_msgSend_invalidRegion(TSTCellRegion, a2, area, v3);
LABEL_21:
  v50 = v87;
LABEL_22:

  return v50;
}

- (TSUViewColumnIndex)numberOfGrandTotalColumns
{
  v4 = objc_msgSend_indexesForGrandTotalColumns(self, a2, v2, v3);
  v8.var0 = objc_msgSend_count(v4, v5, v6, v7);

  return v8;
}

- (TSUViewRowIndex)numberOfFooterOrGrandTotalRows
{
  v4 = objc_msgSend_indexesForGrandTotalRows(self, a2, v2, v3);
  v8.var0 = objc_msgSend_count(v4, v5, v6, v7);

  return v8;
}

- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221133814;
  v6[3] = &unk_27845F908;
  v6[4] = self;
  v6[5] = &v7;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22113387C;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  v5[5] = &v7;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, a2, *&d, v6, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)p_applyViewRowIndex:(TSUViewRowIndex)index toSummaryUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock
{
  v8 = *&index.var0;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  boundsUsingBlockCopy = boundsUsingBlock;
  v16 = objc_msgSend_viewMap(self, v13, v14, v15);
  v19 = objc_msgSend_rowUIDForRowIndex_(v16, v17, v8, v18);
  v21 = v20;
  v39[0] = v19;
  v39[1] = v20;

  if (!(v19 | v21))
  {
    goto LABEL_5;
  }

  v25 = objc_msgSend_baseMap(self, v22, v23, v24);
  v38 = objc_msgSend_rowIndexForRowUID_(v25, v26, v19, v21);

  if (v38 != 0x7FFFFFFF)
  {
    usingBlockCopy[2](usingBlockCopy, &v38, v39);
    goto LABEL_7;
  }

  v30 = objc_msgSend_groupByForRows(self, v27, v28, v29);
  v31 = sub_2211A8DC8(v19, v21);
  v33 = objc_msgSend_groupNodeForGroupUid_(v30, v32, v31, v32);

  if (v33)
  {
    v37 = objc_msgSend_groupLevel(v33, v34, v35, v36);
    blockCopy[2](blockCopy, v37);
  }

  else
  {
LABEL_5:
    boundsUsingBlockCopy[2](boundsUsingBlockCopy);
  }

LABEL_7:
}

- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221133C28;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221133C8C;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221133CF0;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221133EE8;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221133F4C;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221133FB0;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)index toSummaryUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock toBeyondBoundsUsingBlock:(id)boundsUsingBlock
{
  blockCopy = block;
  usingBlockCopy = usingBlock;
  boundsUsingBlockCopy = boundsUsingBlock;
  v16 = objc_msgSend_viewMap(self, v13, v14, v15);
  v19 = objc_msgSend_columnUIDForColumnIndex_(v16, v17, index.var0, v18);
  v21 = v20;
  v40[0] = v19;
  v40[1] = v20;

  if (!(v19 | v21))
  {
    goto LABEL_5;
  }

  v25 = objc_msgSend_baseMap(self, v22, v23, v24);
  v27 = objc_msgSend_columnIndexForColumnUID_(v25, v26, v19, v21);
  v39 = v27;

  if (v27 != 0x7FFF)
  {
    usingBlockCopy[2](usingBlockCopy, &v39, v40);
    goto LABEL_7;
  }

  v31 = objc_msgSend_groupByForColumns(self, v28, v29, v30);
  v32 = sub_2211A8DC8(v19, v21);
  v34 = objc_msgSend_groupNodeForGroupUid_(v31, v33, v32, v33);

  if (v34)
  {
    v38 = objc_msgSend_groupLevel(v34, v35, v36, v37);
    blockCopy[2](blockCopy, v38);
  }

  else
  {
LABEL_5:
    boundsUsingBlockCopy[2](boundsUsingBlockCopy);
  }

LABEL_7:
}

- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221134354;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211343B8;
  v7[3] = &unk_27845F9A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22113441C;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewColumnIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221134614;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = default;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221134678;
  v7[3] = &unk_27845F9A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = default;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2211346DC;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewColumnIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, index.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (int)p_applyViewCellCoord:(TSUViewCellCoord)coord toSummaryUsingBlock:(id)block toBaseUsingBlock:(id)usingBlock
{
  blockCopy = block;
  usingBlockCopy = usingBlock;
  v12 = objc_msgSend_viewMap(self, v9, v10, v11);
  v70.origin = objc_msgSend_range(v12, v13, v14, v15);
  v70.size = v16;
  v17 = *&coord & 0xFFFF000000000000 | (coord._coord.column << 32);
  row = coord._coord.row;
  v19 = (v17 | coord._coord.row);
  LOBYTE(coord._coord.row) = TSUCellRect::contains(&v70, v19);

  if ((coord._coord.row & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = objc_msgSend_groupLevelAtSummaryRow_(self, v21, row, v22);
  v26 = objc_msgSend_groupLevelAtSummaryColumn_(self, v24, coord._coord.column, v25);
  v30 = v26;
  if (v23 != 255 || v26 != 255)
  {
    v70 = 0;
    v71 = 0u;
    v35 = objc_msgSend_viewMap(self, v27, v28, v29);
    v38 = v35;
    if (v35)
    {
      objc_msgSend_cellUIDForCellID_(v35, v36, v17 | row, v37);
    }

    else
    {
      v70 = 0;
      v71 = 0u;
    }

    if (v70 != 0uLL && v71 != 0)
    {
      v42 = objc_msgSend_summaryMap(self, v39, v40, v41);
      v67 = v70;
      v68 = v71;
      v45 = objc_msgSend_cellIDForCellUID_(v42, v43, &v67, v44);
      v69 = v45;

      if (v45 == 0x7FFFFFFF || (v45 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTPivotTranslator p_applyViewCellCoord:toSummaryUsingBlock:toBaseUsingBlock:]", v47);
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v60);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 650, 0, "cell in summary row is in viewMap, but not in summaryMap");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
      }

      else if (blockCopy)
      {
        v48 = blockCopy[2](blockCopy, &v69, &v70, v23, v30);
LABEL_22:
        v56 = v48;
        goto LABEL_25;
      }
    }

LABEL_24:
    v56 = 1;
    goto LABEL_25;
  }

  v70 = 0;
  v71 = 0u;
  v31 = objc_msgSend_viewMap(self, v27, v28, v29);
  v34 = v31;
  if (v31)
  {
    objc_msgSend_cellUIDForCellID_(v31, v32, v17 | row, v33);
  }

  else
  {
    v70 = 0;
    v71 = 0u;
  }

  if (v70 == 0uLL || v71 == 0)
  {
    goto LABEL_24;
  }

  v52 = objc_msgSend_baseMap(self, v49, v50, v51);
  v67 = v70;
  v68 = v71;
  v55 = objc_msgSend_cellIDForCellUID_(v52, v53, &v67, v54);
  v69 = v55;

  v56 = 1;
  if (usingBlockCopy && v55 != 0x7FFFFFFFLL && (v55 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v48 = usingBlockCopy[2](usingBlockCopy, &v69, &v70);
    goto LABEL_22;
  }

LABEL_25:

  return v56;
}

- (id)defaultCellStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  baseTableModel = self->super.super._baseTableModel;
  v10 = objc_msgSend_tableStyleAreaForCellID_(self, a2, *&d, default);
  v15 = objc_msgSend_defaultCellStyleForTableStyleArea_(baseTableModel, v11, v10, v12);
  v22 = 3;
  if (defaultCopy)
  {
    v17 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v13, *&d, v14);
    if (v17 != 0x7FFFFFFF && (v17 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v18 = objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(self->super.super._baseTableModel, v16, v17, 1, &v22);
      v19 = v18;
      if (v22 != 3)
      {
        v20 = v18;

        v15 = v20;
      }
    }
  }

  if (source)
  {
    *source = v22;
  }

  return v15;
}

- (id)defaultTextStyleForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default outSource:(unint64_t *)source
{
  defaultCopy = default;
  baseTableModel = self->super.super._baseTableModel;
  v10 = objc_msgSend_tableStyleAreaForCellID_(self, a2, *&d, default);
  v15 = objc_msgSend_defaultTextStyleForTableStyleArea_(baseTableModel, v11, v10, v12);
  v22 = 3;
  if (defaultCopy)
  {
    v17 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v13, *&d, v14);
    if (v17 != 0x7FFFFFFF && (v17 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v18 = objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(self->super.super._baseTableModel, v16, v17, 1, &v22);
      v19 = v18;
      if (v22 != 3)
      {
        v20 = v18;

        v15 = v20;
      }
    }
  }

  if (source)
  {
    *source = v22;
  }

  return v15;
}

- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)d useSoftDefault:(BOOL)default styleDefaultsCache:(id)cache outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  defaultCopy = default;
  v14 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&d, default);
  if (v14 == 0x7FFFFFFF || (v14 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v19 = objc_msgSend_tableStyleAreaForCellID_(self, v13, *&d, v15);
    if (handle)
    {
      *handle = objc_msgSend_cellStyleHandleForKey_(cache, v17, v19, v18);
    }

    if (styleHandle)
    {
      *styleHandle = objc_msgSend_textStyleHandleForKey_(cache, v17, v19, v18);
    }
  }

  else
  {
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_defaultStyleHandlesAtBaseCellCoord_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(baseTableModel, v13, v14, defaultCopy, cache, handle, styleHandle);
  }
}

- (id)cellStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_221133C10;
  v20 = sub_221133C20;
  v21 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(self, a2, *&d, 1, &v22);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = v22 == 3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221134F60;
  v11[3] = &unk_27845F9D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v16;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221135008;
  v10[3] = &unk_27845F9F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v16;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, v7, *&d, v11, v10);
  if (default)
  {
    *default = *(v13 + 24);
  }

  v8 = v17[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)textStyleAtCellID:(TSUViewCellCoord)d isDefault:(BOOL *)default
{
  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_221133C10;
  v20 = sub_221133C20;
  v21 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(self, a2, *&d, 1, &v22);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = v22 == 3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22113525C;
  v11[3] = &unk_27845F9D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v16;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221135304;
  v10[3] = &unk_27845F9F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v16;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, v7, *&d, v11, v10);
  if (default)
  {
    *default = *(v13 + 24);
  }

  v8 = v17[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)metadataForColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_hiddenStates(self->super.super._tableInfo, a2, *&index.var0, v3);
  v9 = objc_msgSend_hidingActionForColumnAtIndex_(v6, v7, index.var0, v8);

  v12 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v10, index.var0, v11);
  if (v12 == 0x7FFF)
  {
    v15 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v13, index.var0, v14);
    if (v15 == 0x7FFF)
    {
      v19 = 0;
    }

    else
    {
      v20 = v15;
      v21 = objc_msgSend_summaryModel(self->super.super._tableInfo, v16, v17, v18);
      v19 = objc_msgSend_metadataForColumnIndex_hidingAction_(v21, v22, v20, v9);
    }
  }

  else
  {
    v19 = objc_msgSend_metadataForColumnIndex_hidingAction_(self->super.super._baseTableModel, v13, v12, v9);
  }

  return v19;
}

- (int)getCell:(id)cell atCellID:(TSUViewCellCoord)d suppressCellBorder:(BOOL)border
{
  cellCopy = cell;
  v11 = objc_msgSend_tableInfo(self, v8, v9, v10);
  if ((objc_msgSend_isSummaryRow_(self, v12, *&d, v13) & 1) != 0 || (objc_msgSend_indexesForSummaryColumns(self, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend_containsIndex_(v17, v18, d._coord.column, v19), v17, v20))
  {
    v21 = objc_msgSend_coordinateMapper(self, v14, v15, v16);
    v24 = objc_msgSend_summaryCellCoordForViewCellCoord_(v21, v22, *&d, v23);

    v28 = objc_msgSend_summaryModel(v11, v25, v26, v27);
    Cell_atCellCoord = objc_msgSend_getCell_atCellCoord_(v28, v29, cellCopy, v24);
  }

  else
  {
    if (v11)
    {
      objc_msgSend_cellUIDForCellID_(v11, v14, *&d, v16);
    }

    else
    {
      memset(v38, 0, sizeof(v38));
    }

    v31 = objc_msgSend_baseCellCoordForCellUID_(self, v14, v38, v16);
    v28 = objc_msgSend_baseTableModel(v11, v32, v33, v34);
    Cell_atCellCoord = objc_msgSend_getCell_atBaseCellCoord_(v28, v35, cellCopy, v31);
  }

  v36 = Cell_atCellCoord;

  return v36;
}

- (int)getValue:(id *)value atCellID:(TSUViewCellCoord)d fetchRichTextAttributesIfPlainText:(BOOL)text
{
  textCopy = text;
  if ((objc_msgSend_isSummaryRow_(self, a2, *&d, *&d) & 1) != 0 || (objc_msgSend_indexesForSummaryColumns(self, v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_containsIndex_(v12, v13, d._coord.column, v14), v12, v15))
  {
    v16 = objc_msgSend_coordinateMapper(self, v9, v10, v11);
    v19 = objc_msgSend_summaryCellCoordForViewCellCoord_(v16, v17, *&d, v18);

    v23 = objc_msgSend_tableInfo(self, v20, v21, v22);
    v27 = objc_msgSend_summaryModel(v23, v24, v25, v26);
    RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v27, v28, value, v19, textCopy);

    return RichTextAttributesIfPlainText;
  }

  else
  {
    v32 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&d, v11);
    baseTableModel = self->super.super._baseTableModel;

    return objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(baseTableModel, v31, value, v32, textCopy);
  }
}

- (int)getDefaultCell:(id)cell forCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  row = d->_row;
  v13[0] = d->_column;
  v13[1] = row;
  v10 = objc_msgSend_tableStyleAreaForCellUID_(self, v8, v13, v9);
  LODWORD(self) = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v11, cellCopy, v10);

  return self;
}

- (double)heightOfRowAtIndex:(TSUViewRowIndex)index isDefault:(BOOL *)default
{
  if (objc_msgSend_isSummaryRow_(self, a2, *&index.var0, default))
  {
    v9 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v7, index.var0, v8);
    v13 = objc_msgSend_summaryModel(self->super.super._tableInfo, v10, v11, v12);
    objc_msgSend_heightOfRowAtIndex_isDefault_(v13, v14, v9, default);
    v16 = v15;

    return v16;
  }

  else
  {
    v19 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v7, index.var0, v8);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_heightOfRowAtIndex_isDefault_(baseTableModel, v18, v19, default);
  }

  return result;
}

- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)index isDefault:(BOOL *)default
{
  v7 = objc_msgSend_indexesForSummaryColumns(self, a2, *&index.var0, default);
  v10 = objc_msgSend_containsIndex_(v7, v8, index.var0, v9);

  if (v10)
  {
    v13 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v11, index.var0, v12);
    v17 = objc_msgSend_summaryModel(self->super.super._tableInfo, v14, v15, v16);
    objc_msgSend_widthOfColumnAtIndex_isDefault_(v17, v18, v13, default);
    v20 = v19;

    return v20;
  }

  else
  {
    v23 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v11, index.var0, v12);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_widthOfColumnAtIndex_isDefault_(baseTableModel, v22, v23, default);
  }

  return result;
}

- (void)setHeight:(double)height ofRowAtIndex:(TSUViewRowIndex)index
{
  if (objc_msgSend_isSummaryRow_(self, a2, *&index.var0, v4))
  {
    v10 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v8, index.var0, v9);
    v24 = objc_msgSend_tableInfo(self, v11, v12, v13);
    v17 = objc_msgSend_summaryModel(v24, v14, v15, v16);
    objc_msgSend_setHeight_ofRowAtIndex_(v17, v18, v10, v19, height);
  }

  else
  {
    v21 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v8, index.var0, v9);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_setHeight_ofRowAtIndex_(baseTableModel, v20, v21, v22, height);
  }
}

- (void)setWidth:(double)width ofColumnAtIndex:(TSUViewColumnIndex)index
{
  v27 = objc_msgSend_indexesForSummaryColumns(self, a2, *&index.var0, v4);
  v10 = objc_msgSend_containsIndex_(v27, v8, index.var0, v9);

  if (v10)
  {
    v13 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v11, index.var0, v12);
    v28 = objc_msgSend_tableInfo(self, v14, v15, v16);
    v20 = objc_msgSend_summaryModel(v28, v17, v18, v19);
    objc_msgSend_setWidth_ofColumnAtIndex_(v20, v21, v13, v22, width);
  }

  else
  {
    v24 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v11, index.var0, v12);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_setWidth_ofColumnAtIndex_(baseTableModel, v23, v24, v25, width);
  }
}

- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221135CA4;
  v6[3] = &unk_27845F908;
  v6[4] = self;
  v6[5] = &v7;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221135D0C;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  v5[5] = &v7;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, a2, *&d, v6, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)peerCellRegionForCellRegion:(id)region
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x5812000000;
  v34 = sub_221135F98;
  v35 = sub_221135FA4;
  v36 = &unk_22188E88F;
  v40[0] = 0;
  v40[1] = 0;
  v37 = 0;
  v38 = 0;
  v39 = v40;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_221135FB0;
  v30[3] = &unk_27845FA20;
  v30[4] = self;
  v30[5] = &v31;
  objc_msgSend_enumerateCellIDsUsingBlock_(region, a2, v30, v3);
  v8 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v5, v6, v7);
  v12 = objc_msgSend_hiddenColumnIndexes(v8, v9, v10, v11);
  if (objc_msgSend_count(v12, v13, v14, v15))
  {
    v19 = v32;
    MEMORY[0x223D9F7A0](&v29, v12);
    TSCECellCoordSet::removeCoordsForColumns((v19 + 6), &v29);
    TSUIndexSet::~TSUIndexSet(&v29);
  }

  v20 = objc_msgSend_hiddenRowIndexes(v8, v16, v17, v18);
  if (objc_msgSend_count(v20, v21, v22, v23))
  {
    v26 = v32;
    MEMORY[0x223D9F7A0](&v29, v20);
    TSCECellCoordSet::removeCoordsForRows((v26 + 6), &v29);
    TSUIndexSet::~TSUIndexSet(&v29);
  }

  v27 = objc_msgSend_regionFromCellCoordSet_(TSTCellRegion, v24, (v32 + 6), v25);

  _Block_object_dispose(&v31, 8);
  sub_22107C860(&v39, v40[0]);

  return v27;
}

- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)row
{
  if (!objc_msgSend_isSummaryRow_(self, a2, *&row.var0, v3))
  {
    return -1;
  }

  return objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(self, v6, row.var0, 0);
}

- (unsigned)groupLevelAtSummaryColumn:(TSUViewColumnIndex)column
{
  v6 = objc_msgSend_indexesForSummaryColumns(self, a2, *&column.var0, v3);
  v9 = objc_msgSend_containsIndex_(v6, v7, column.var0, v8);

  if (!v9)
  {
    return -1;
  }

  return objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(self, v10, column.var0, 0);
}

- (id)allRowGroupUIDs
{
  v3 = objc_alloc_init(TSCEMutableUIDSet);
  v7 = objc_msgSend_groupByForRows(self, v4, v5, v6);
  v11 = objc_msgSend_maxRowLevel(self, v8, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2211364A4;
  v15[3] = &unk_27845FA48;
  v12 = v3;
  v16 = v12;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v7, v13, 1, v11, v15);

  return v12;
}

- (id)allColumnGroupUIDs
{
  v3 = objc_alloc_init(TSCEMutableUIDSet);
  v7 = objc_msgSend_groupByForColumns(self, v4, v5, v6);
  v11 = objc_msgSend_maxColumnLevel(self, v8, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22113662C;
  v15[3] = &unk_27845FA48;
  v12 = v3;
  v16 = v12;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v7, v13, 1, v11, v15);

  return v12;
}

- (id)indexesForRowsContainedByGroupUIDs:(id)ds
{
  dsCopy = ds;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  v12 = objc_msgSend_groupByForRows(self, v9, v10, v11);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 5;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_221136854;
  v28 = &unk_27845FA70;
  v13 = v12;
  v29 = v13;
  selfCopy = self;
  v32 = &v33;
  v14 = v8;
  v31 = v14;
  objc_msgSend_foreachUuid_(dsCopy, v15, &v25, v16);
  v19 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v17, *(v34 + 24), v18, v25, v26, v27, v28);
  objc_msgSend_removeIndexes_(v14, v20, v19, v21);

  v22 = v31;
  v23 = v14;

  _Block_object_dispose(&v33, 8);

  return v23;
}

- (id)indexesForColumnsContainedByGroupUIDs:(id)ds
{
  dsCopy = ds;
  v8 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  v12 = objc_msgSend_groupByForColumns(self, v9, v10, v11);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 5;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_221136BEC;
  v28 = &unk_27845FA70;
  v13 = v12;
  v29 = v13;
  selfCopy = self;
  v32 = &v33;
  v14 = v8;
  v31 = v14;
  objc_msgSend_foreachUuid_(dsCopy, v15, &v25, v16);
  v19 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self, v17, *(v34 + 24), v18, v25, v26, v27, v28);
  objc_msgSend_removeIndexes_(v14, v20, v19, v21);

  v22 = v31;
  v23 = v14;

  _Block_object_dispose(&v33, 8);

  return v23;
}

- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)row outAggregateIndex:(unint64_t *)index
{
  v5 = *&row.var0;
  selfCopy = self;
  v7 = objc_msgSend_viewMap(self, a2, *&row.var0, index);
  v25 = objc_msgSend_rowUIDForRowIndex_(v7, v8, v5, v9);
  v26 = v10;

  v14 = objc_msgSend_groupBySet(selfCopy, v11, v12, v13, v25, v26);
  v16 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(v14, v15, &v25, index);
  v18 = v17;

  v22 = objc_msgSend_groupByForRows(selfCopy, v19, v20, v21);
  LOBYTE(selfCopy) = objc_msgSend_groupLevelForGroupUid_(v22, v23, v16, v18);

  return selfCopy;
}

- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)column outAggregateIndex:(unint64_t *)index
{
  selfCopy = self;
  v7 = objc_msgSend_viewMap(self, a2, *&column.var0, index);
  v25 = objc_msgSend_columnUIDForColumnIndex_(v7, v8, column.var0, v9);
  v26 = v10;

  v14 = objc_msgSend_groupBySet(selfCopy, v11, v12, v13, v25, v26);
  v16 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(v14, v15, &v25, index);
  v18 = v17;

  v22 = objc_msgSend_groupByForColumns(selfCopy, v19, v20, v21);
  LOBYTE(selfCopy) = objc_msgSend_groupLevelForGroupUid_(v22, v23, v16, v18);

  return selfCopy;
}

- (unint64_t)aggregateIndexForColumnIndex:(TSUViewColumnIndex)index
{
  v6 = objc_msgSend_groupBySet(self, a2, *&index.var0, v3);
  active = objc_msgSend_activeFlatteningDimension(v6, v7, v8, v9);

  if (active != 1 || objc_msgSend_numberOfHeaderColumns(self, v11, v12, v13) > index.var0)
  {
    return 0;
  }

  v18 = objc_msgSend_numberOfHeaderColumns(self, v14, v15, v16);
  v22 = objc_msgSend_groupBySet(self, v19, v20, v21);
  v26 = objc_msgSend_aggregates(v22, v23, v24, v25);
  v17 = (index.var0 - v18) % objc_msgSend_count(v26, v27, v28, v29);

  return v17;
}

- (unint64_t)aggregateIndexForRowIndex:(TSUViewRowIndex)index
{
  v6 = objc_msgSend_groupBySet(self, a2, *&index.var0, v3);
  active = objc_msgSend_activeFlatteningDimension(v6, v7, v8, v9);

  if (active || objc_msgSend_numberOfHeaderRows(self, v11, v12, v13) > index.var0)
  {
    return 0;
  }

  v19 = objc_msgSend_numberOfHeaderRows(self, v14, v15, v16);
  v23 = objc_msgSend_groupBySet(self, v20, v21, v22);
  v27 = objc_msgSend_aggregates(v23, v24, v25, v26);
  v17 = (index.var0 - v19) % objc_msgSend_count(v27, v28, v29, v30);

  return v17;
}

- (void)flushCachedIndexSets
{
  self->_cachedPivotIndexSetsAreValid = 0;
  os_unfair_lock_lock(&self->_pivotCachedIndexesUnfairLock);
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;
  self->_cachedIndexesForSummaryColumns = 0;

  objc_msgSend_removeAllObjects(self->_cachedSummaryColumnIndexesAtLevels, v4, v5, v6);
  cachedIndexesForLeadingColumns = self->_cachedIndexesForLeadingColumns;
  self->_cachedIndexesForLeadingColumns = 0;

  objc_msgSend_removeAllObjects(self->_cachedLeadingColumnIndexesAtLevels, v8, v9, v10);
  objc_msgSend_removeAllObjects(self->_cachedLeadingSummaryColumnIndexesAtLevels, v11, v12, v13);
  os_unfair_lock_unlock(&self->_pivotCachedIndexesUnfairLock);
  v14.receiver = self;
  v14.super_class = TSTPivotTranslator;
  [(TSTCategoryTranslator *)&v14 flushCachedIndexSets];
}

- (id)indexesForSummaryColumns
{
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, v2, v3);
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;

  return cachedIndexesForSummaryColumns;
}

- (BOOL)isSummaryColumn:(unsigned __int16)column
{
  columnCopy = column;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, column, v3);
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;

  return objc_msgSend_containsIndex_(cachedIndexesForSummaryColumns, v6, columnCopy, v7);
}

- (id)indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, level, v3);
  cachedSummaryColumnIndexesAtLevels = self->_cachedSummaryColumnIndexesAtLevels;
  v9 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, levelCopy, v8);
  v12 = objc_msgSend_objectForKey_(cachedSummaryColumnIndexesAtLevels, v10, v9, v11);

  return v12;
}

- (void)i_populateIndexesForSummaryColumns
{
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = objc_msgSend_i_indexesForSummaryColumnsAtGroupLevel_(self, v3, v6, v4);
    cachedSummaryColumnIndexesAtLevels = self->_cachedSummaryColumnIndexesAtLevels;
    v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v9, v6, v10);
    objc_msgSend_setObject_forKey_(cachedSummaryColumnIndexesAtLevels, v12, v7, v11);

    if (v5)
    {
      v15 = objc_msgSend_tsu_indexSetByAddingIndexes_(v5, v13, v7, v14);

      v5 = v15;
    }

    else
    {
      v5 = v7;
    }

    v16 = v6++;
  }

  while (v16 < 5);
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;
  self->_cachedIndexesForSummaryColumns = v5;
}

- (id)i_indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  if (objc_msgSend_numberOfColumnLevels(self, v5, v6, v7) <= levelCopy)
  {
    v29 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v8, v9, v10);
  }

  else
  {
    v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10);
    if (objc_msgSend_numberOfColumnLevels(self, v12, v13, v14) > levelCopy)
    {
      v18 = objc_msgSend_viewMap(self, v15, v16, v17);
      v22 = objc_msgSend_columnAggregateGroupSize(self, v19, v20, v21);
      v26 = objc_msgSend_groupByForColumns(self->super.super._tableInfo, v23, v24, v25);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_2211375AC;
      v31[3] = &unk_27845FA98;
      v27 = v18;
      v32 = v27;
      v33 = v11;
      v34 = v22;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v26, v28, levelCopy, v31);
    }

    v29 = objc_msgSend_copy(v11, v15, v16, v17);
  }

  return v29;
}

- (id)indexesForLeadingColumns
{
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, v2, v3);
  cachedIndexesForLeadingColumns = self->_cachedIndexesForLeadingColumns;

  return cachedIndexesForLeadingColumns;
}

- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, level, v3);
  cachedLeadingColumnIndexesAtLevels = self->_cachedLeadingColumnIndexesAtLevels;
  v9 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, levelCopy, v8);
  v12 = objc_msgSend_objectForKey_(cachedLeadingColumnIndexesAtLevels, v10, v9, v11);

  return v12;
}

- (void)i_populateIndexesForLeadingColumns
{
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  v24 = objc_opt_new();
  for (i = 0; objc_msgSend_maxColumnLevel(self, v3, v4, v5) >= i; ++i)
  {
    v10 = objc_msgSend_i_indexesForLeadingColumnsAtGroupLevel_(self, v7, i, v9);
    cachedLeadingColumnIndexesAtLevels = self->_cachedLeadingColumnIndexesAtLevels;
    v14 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v12, i, v13);
    objc_msgSend_setObject_forKey_(cachedLeadingColumnIndexesAtLevels, v15, v10, v14);

    objc_msgSend_addIndexes_(v24, v16, v10, v17);
  }

  v18 = objc_msgSend_copy(v24, v7, v8, v9);
  cachedIndexesForLeadingColumns = self->_cachedIndexesForLeadingColumns;
  self->_cachedIndexesForLeadingColumns = v18;

  v22 = objc_msgSend_i_indexesForLeadingColumnsAtGroupLevel_(self, v20, 255, v21);
  objc_msgSend_setObject_forKey_(self->_cachedLeadingColumnIndexesAtLevels, v23, v22, &unk_28350EB78);
}

- (id)i_indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  if (levelCopy == 255)
  {
    v20 = MEMORY[0x277CCAB58];
    v32.origin = objc_msgSend_bodyColumnRange(self->super.super._tableInfo, v5, v6, v7);
    v32.size = v21;
    v22 = TSUCellRect::columns(&v32);
    v12 = objc_msgSend_indexSetWithIndexesInRange_(v20, v23, v22, v23);
    v24 = MEMORY[0x277CCAA78];
    Index = objc_msgSend_firstIndex(v12, v25, v26, v27);
    v19 = objc_msgSend_indexSetWithIndex_(v24, v29, Index, v30);
  }

  else
  {
    v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
    v12 = objc_msgSend_pivotOwner(v8, v9, v10, v11);

    v15 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v12, v13, levelCopy, v14);
    v19 = objc_msgSend_copy(v15, v16, v17, v18);
  }

  return v19;
}

- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, level, v3);
  cachedLeadingSummaryColumnIndexesAtLevels = self->_cachedLeadingSummaryColumnIndexesAtLevels;
  v9 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, levelCopy, v8);
  v12 = objc_msgSend_objectForKey_(cachedLeadingSummaryColumnIndexesAtLevels, v10, v9, v11);

  return v12;
}

- (void)i_populateIndexesForLeadingSummaryColumns
{
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  objc_msgSend_maxColumnLevel(self, v3, v4, v5);
  v8 = 0;
  do
  {
    v9 = objc_msgSend_i_indexesForLeadingSummaryColumnsAtGroupLevel_(self, v6, v8, v7);
    cachedLeadingSummaryColumnIndexesAtLevels = self->_cachedLeadingSummaryColumnIndexesAtLevels;
    v13 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v11, v8, v12);
    objc_msgSend_setObject_forKey_(cachedLeadingSummaryColumnIndexesAtLevels, v14, v9, v13);

    ++v8;
  }

  while (objc_msgSend_maxColumnLevel(self, v15, v16, v17) >= v8);
}

- (id)i_indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
  v12 = objc_msgSend_pivotOwner(v8, v9, v10, v11);

  if (levelCopy == 255)
  {
    v23 = MEMORY[0x277CCAA78];
    v72.origin = objc_msgSend_bodyColumnRange(self->super.super._tableInfo, v13, v14, v15);
    v72.size = v24;
    v25 = TSUCellRect::columns(&v72);
    v27 = objc_msgSend_indexSetWithIndexesInRange_(v23, v26, v25, v26);
    v28 = MEMORY[0x277CCAA78];
    Index = objc_msgSend_firstIndex(v27, v29, v30, v31);
    v35 = objc_msgSend_indexSetWithIndex_(v28, v33, Index, v34);
  }

  else
  {
    if (objc_msgSend_maxColumnLevel(self, v13, v14, v15) < levelCopy)
    {
      v19 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v16, v17, v18);
LABEL_7:
      v35 = v19;
      v40 = objc_msgSend_copy(v19, v20, v21, v22);
      goto LABEL_12;
    }

    v36 = objc_msgSend_tableModel(v12, v16, v17, v18);

    if (v36)
    {
      v19 = objc_msgSend_indexesForLeadingSummaryColumnsAtGroupLevel_(v12, v37, levelCopy, v39);
      goto LABEL_7;
    }

    v41 = MEMORY[0x277CCAB58];
    v72.origin = objc_msgSend_bodyColumnRange(self->super.super._tableInfo, v37, v38, v39);
    v72.size = v42;
    v43 = TSUCellRect::columns(&v72);
    v27 = objc_msgSend_indexSetWithIndexesInRange_(v41, v44, v43, v44);
    v50 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v45, v46, v47);
    LOBYTE(v51) = 0;
    do
    {
      cachedSummaryColumnIndexesAtLevels = self->_cachedSummaryColumnIndexesAtLevels;
      v53 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v48, levelCopy, v49);
      v56 = objc_msgSend_objectForKey_(cachedSummaryColumnIndexesAtLevels, v54, v53, v55);
      objc_msgSend_removeIndexes_(v27, v57, v56, v58);

      v51 = (v51 + 1);
    }

    while (v51 <= levelCopy);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_221137E18;
    v70[3] = &unk_27845E1D0;
    v59 = v50;
    v71 = v59;
    objc_msgSend_enumerateRangesUsingBlock_(v27, v60, v70, v61);
    v35 = objc_msgSend_copy(v59, v62, v63, v64);
  }

  v40 = objc_msgSend_copy(v35, v65, v66, v67);
LABEL_12:
  v68 = v40;

  return v68;
}

- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  if (objc_msgSend_numberOfRowLevels(self, a2, level, v3) <= level)
  {
    v27 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v6, v7, v8);
  }

  else
  {
    v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v7, v8);
    if (objc_msgSend_numberOfRowLevels(self, v10, v11, v12) > levelCopy)
    {
      v16 = objc_msgSend_viewMap(self, v13, v14, v15);
      v20 = objc_msgSend_rowAggregateGroupSize(self, v17, v18, v19);
      v24 = objc_msgSend_groupByForRows(self->super.super._tableInfo, v21, v22, v23);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_221137FC8;
      v29[3] = &unk_27845FA98;
      v25 = v16;
      v30 = v25;
      v31 = v9;
      v32 = v20;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v24, v26, levelCopy, v29);
    }

    v27 = objc_msgSend_copy(v9, v13, v14, v15);
  }

  return v27;
}

- (void)i_populatePivotCachedIndexSetsIfNeeded
{
  if (!self->_cachedPivotIndexSetsAreValid)
  {
    os_unfair_lock_lock(&self->_pivotCachedIndexesUnfairLock);
    if (!self->_cachedPivotIndexSetsAreValid)
    {
      objc_msgSend_i_populateIndexesForSummaryColumns(self, v3, v4, v5);
      objc_msgSend_i_populateIndexesForLeadingColumns(self, v6, v7, v8);
      objc_msgSend_i_populateIndexesForLeadingSummaryColumns(self, v9, v10, v11);
      self->_cachedPivotIndexSetsAreValid = 1;
    }

    os_unfair_lock_unlock(&self->_pivotCachedIndexesUnfairLock);
  }
}

- (unsigned)rowAggregateGroupSize
{
  v4 = objc_msgSend_groupBySet(self, a2, v2, v3);
  if (objc_msgSend_activeFlatteningDimension(v4, v5, v6, v7))
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_msgSend_aggregates(v4, v8, v9, v10);
    v11 = objc_msgSend_count(v12, v13, v14, v15);
  }

  return v11;
}

- (unsigned)columnAggregateGroupSize
{
  v4 = objc_msgSend_groupBySet(self, a2, v2, v3);
  if (objc_msgSend_activeFlatteningDimension(v4, v5, v6, v7) == 1)
  {
    v11 = objc_msgSend_aggregates(v4, v8, v9, v10);
    v15 = objc_msgSend_count(v11, v12, v13, v14);
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

@end