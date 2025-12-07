@interface TSTGroupBySet
- (BOOL)hasRunningTotalAggregates;
- (BOOL)hasUnfilteredAt:(const TSKUIDStruct *)at forDimension:(int64_t)dimension;
- (BOOL)hasValidRunningTotalFieldForAggregate:(id)aggregate;
- (BOOL)sawMissingCombination:(const TSUIndexSet *)combination;
- (TSKUIDStruct)columnGroupUidForColumnUid:(const TSKUIDStruct *)uid outAggregateIndex:(unint64_t *)index;
- (TSKUIDStruct)columnUIDForGroupingColumnName:(id)name;
- (TSKUIDStruct)pivotDataTableUID;
- (TSKUIDStruct)pivotTableUID;
- (TSKUIDStruct)rowGroupUidForRowUid:(const TSKUIDStruct *)uid outAggregateIndex:(unint64_t *)index;
- (TSTGroupBy)groupByForRowGroups;
- (TSTGroupBySet)initWithPivotTableUID:(const TSKUIDStruct *)d;
- (TSUIndexSet)pivotDataModelRowIndexesNeededForCell:(SEL)cell;
- (const)allColumnUids;
- (const)allRowUids;
- (const)baseColumnUids;
- (const)baseRowUids;
- (const)columnUidsForColumnGroupUid:(const TSKUIDStruct *)uid;
- (const)rowUidsForRowGroupUid:(const TSKUIDStruct *)uid;
- (id).cxx_construct;
- (id)aggregateForUidCoord:(const TSKUIDStructCoord *)coord;
- (id)categoryRefForUidCoord:(const TSKUIDStructCoord *)coord outShowAsType:(unsigned __int8 *)type;
- (id)columnNameForAggregateIndex:(unint64_t)index allowDuplicateNames:(BOOL)names;
- (id)compactDescriptionForAggregateIndex:(unint64_t)index locale:(id)locale;
- (id)compactDescriptionForAggregateIndex:(unint64_t)index useShortLabel:(BOOL)label allowDuplicateNames:(BOOL)names locale:(id)locale;
- (id)description;
- (id)descriptionForAggregateIndex:(unint64_t)index locale:(id)locale;
- (id)descriptionForAggregateIndex:(unint64_t)index useShortLabel:(BOOL)label allowDuplicateNames:(BOOL)names locale:(id)locale;
- (id)descriptionForPivotBodyCellForUidCoord:(const TSKUIDStructCoord *)coord;
- (id)descriptionForPivotGroupCellForColumnUid:(const TSKUIDStruct *)uid upToLevel:(unsigned __int8)level;
- (id)descriptionForPivotGroupCellForRowUid:(const TSKUIDStruct *)uid upToLevel:(unsigned __int8)level;
- (id)duplicateFilterSet;
- (id)expandGroupUidsForFlattening:(id)flattening forDimension:(int64_t)dimension;
- (id)filteringCategoryRefAt:(const TSKUIDStruct *)at forDimension:(int64_t)dimension;
- (id)findExistingGroupNodeInGroupBy:(id)by usingValues:(const void *)values upToLevel:(unint64_t)level coerceForDateFields:(BOOL)fields;
- (id)firstAggregate;
- (id)getPivotDataBundleForUidCoord:(const TSKUIDStructCoord *)coord upToLevel:(unsigned __int8)level;
- (id)grandGrandTotalCategoryRefForAggregate:(id)aggregate;
- (id)grandTotalCategoryRefForColumn:(const TSKUIDStruct *)column forAggregate:(id)aggregate;
- (id)grandTotalCategoryRefForRow:(const TSKUIDStruct *)row forAggregate:(id)aggregate;
- (id)groupByForColumnLevel:(unsigned __int8)level rowLevel:(unsigned __int8)rowLevel;
- (id)groupByForOwnerIndex:(unsigned __int16)index createIfMissing:(BOOL)missing;
- (id)groupByForUuidCoord:(const TSKUIDStructCoord *)coord;
- (id)groupNodeForUuidCoord:(const TSKUIDStructCoord *)coord;
- (id)groupValueTupleForUuidCoord:(const TSKUIDStructCoord *)coord createIfMissing:(BOOL)missing;
- (id)groupingColumnForIndex:(unint64_t)index;
- (id)groupingColumnsForOwnerIndex:(unsigned __int16)index;
- (id)p_descriptionForPivotGroupValueTuple:(id)tuple upToLevel:(unsigned __int8)level locale:(id)locale;
- (id)percentParentDenominatorCategoryRefFor:(id)for inGroupBy:(id)by forAggregate:(id)aggregate forShowAsType:(unsigned __int8)type;
- (id)percentRunningDenominatorCategoryRefFor:(id)for inGroupBy:(id)by runningOnColumnUid:(const TSKUIDStruct *)uid forAggregate:(id)aggregate;
- (id)restrictColumnIndexes:(id)indexes forAggrIndexLevel:(unsigned __int16)level forPivotTable:(id)table;
- (id)restrictColumnIndexes:(id)indexes toColumnGroupLevel:(unsigned __int8)level forPivotTable:(id)table;
- (id)restrictRowIndexes:(id)indexes forAggrIndexLevel:(unsigned __int16)level forPivotTable:(id)table;
- (id)restrictRowIndexes:(id)indexes toRowGroupLevel:(unsigned __int8)level forPivotTable:(id)table;
- (int)linkToCalcEngine:(id)engine;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (int64_t)groupingIndexForColumnUID:(const TSKUIDStruct *)d;
- (unint64_t)aggregateIndexForColumnUid:(const TSKUIDStruct *)uid;
- (unint64_t)aggregateIndexForRowUid:(const TSKUIDStruct *)uid;
- (unint64_t)columnAggregateGroupSize;
- (unint64_t)rowAggregateGroupSize;
- (unsigned)aggregateIndexForAggName:(id)name locale:(id)locale;
- (unsigned)aggregateIndexForUidCoord:(const TSKUIDStructCoord *)coord;
- (unsigned)columnGroupLevelForColumnUID:(const TSKUIDStruct *)d;
- (unsigned)maxGroupByIndex;
- (unsigned)ownerIndexForGroupingCombination:(const TSUIndexSet *)combination;
- (unsigned)rowGroupLevelForRowUID:(const TSKUIDStruct *)d;
- (vector<TSTGroupNode)allGroupRoots;
- (vector<unsigned)groupColumnIndexesForOwnerIndex:(TSTGroupBySet *)self;
- (void)clearMissingCombinations;
- (void)getHidingIndexesForGrandTotalsForPivotTable:(id)table columns:(id)columns rows:(id)rows;
- (void)getPivotHidingIndexesForGroupingColumn:(const TSKUIDStruct *)column columns:(id)columns rows:(id)rows forHiding:(BOOL)hiding forPivotTable:(id)table;
- (void)p_resetAllGroupUids:(void *)uids baseGroupUids:(void *)groupUids summaryGroupUids:(void *)summaryGroupUids forGroupBy:(id)by uptoLevel:(unsigned __int8)level isFlattening:(BOOL)flattening;
- (void)resetGroupingList;
- (void)restoreFromPivotDataTable:(id)table columnGroupings:(id)groupings rowGroupings:(id)rowGroupings aggregates:(id)aggregates flatteningDimension:(int64_t)dimension;
- (void)setHiddenStates:(id)states;
- (void)setPivotRulesWithPivotDataTable:(id)table columnGroupings:(id)groupings rowGroupings:(id)rowGroupings aggregates:(id)aggregates flatteningDimension:(int64_t)dimension;
@end

@implementation TSTGroupBySet

- (TSTGroupBySet)initWithPivotTableUID:(const TSKUIDStruct *)d
{
  v8.receiver = self;
  v8.super_class = TSTGroupBySet;
  v4 = [(TSTGroupBySet *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_pivotTableUID = *d;
    v7 = 0;
    sub_221151CB8(&v4->_inUseGroupBys.__begin_, 0x44DuLL, &v7);
  }

  return v5;
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  self->_calcEngine = engine;
  self->_isRegisteredWithCalcEngine = 1;
  if (engine)
  {
    objc_msgSend_resetGroupingList(self, a2, engine, d);
  }

  return 0;
}

- (int)linkToCalcEngine:(id)engine
{
  self->_calcEngine = engine;
  self->_isRegisteredWithCalcEngine = 1;
  if (engine)
  {
    objc_msgSend_resetGroupingList(self, a2, engine, v3);
  }

  return 0;
}

- (TSKUIDStruct)pivotDataTableUID
{
  v4 = sub_2212C4930(&self->_pivotTableUID._lower, 0x64, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = TSKUIDStruct::description(&self->_pivotTableUID);
  objc_msgSend_appendFormat_(v3, v5, @"TSTGroupBySet<%p> for pivot: %@\n", v6, self, v4);

  begin = self->_inUseGroupBys.__begin_;
  var0 = self->_inUseGroupBys.var0;
  if (begin != var0)
  {
    v9 = 0;
    do
    {
      v10 = *begin;
      v14 = v10;
      if (v10)
      {
        v20._lower = objc_msgSend_ownerUID(v10, v11, v12, v13);
        v20._upper = v15;
        v16 = TSKUIDStruct::description(&v20);
        objc_msgSend_appendFormat_(v3, v17, @"  GroupBy %d: %@\n", v18, v9, v16);
      }

      v9 = (v9 + 1);

      ++begin;
    }

    while (begin != var0);
  }

  return v3;
}

- (void)setHiddenStates:(id)states
{
  statesCopy = states;
  if (self->_hiddenStates != statesCopy)
  {
    objc_storeStrong(&self->_hiddenStates, states);
    begin = self->_inUseGroupBys.__begin_;
    var0 = self->_inUseGroupBys.var0;
    while (begin != var0)
    {
      v7 = *begin;
      objc_msgSend_setHiddenStates_(v7, v8, statesCopy, v9);
      v13 = objc_msgSend_calcEngine(v7, v10, v11, v12);

      if (v13)
      {
        objc_msgSend_resetGroupings(v7, v14, v15, v16);
        objc_msgSend_didChangeGroupByStructure(v7, v17, v18, v19);
      }

      ++begin;
    }
  }
}

- (BOOL)hasValidRunningTotalFieldForAggregate:(id)aggregate
{
  aggregateCopy = aggregate;
  if ((objc_msgSend_showAsType(aggregateCopy, v5, v6, v7) == 6 || objc_msgSend_showAsType(aggregateCopy, v8, v9, v10) == 7) && (v11 = objc_msgSend_runningTotalGroupingColumnUid(aggregateCopy, v8, v9, v10), v11 | v12))
  {
    v15 = objc_msgSend_rowGroupings(self, v12, v13, v14);
    v19 = objc_msgSend_runningTotalGroupingColumnUid(aggregateCopy, v16, v17, v18);
    v21 = objc_msgSend_groupingColumnForColumnUID_(v15, v20, v19, v20);

    if (v21)
    {
      v25 = 1;
    }

    else
    {
      v26 = objc_msgSend_columnGroupings(self, v22, v23, v24);
      v30 = objc_msgSend_runningTotalGroupingColumnUid(aggregateCopy, v27, v28, v29);
      v21 = objc_msgSend_groupingColumnForColumnUID_(v26, v31, v30, v31);

      v25 = v21 != 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)restoreFromPivotDataTable:(id)table columnGroupings:(id)groupings rowGroupings:(id)rowGroupings aggregates:(id)aggregates flatteningDimension:(int64_t)dimension
{
  tableCopy = table;
  groupingsCopy = groupings;
  rowGroupingsCopy = rowGroupings;
  aggregatesCopy = aggregates;
  objc_storeStrong(&self->_pivotDataTable, table);
  objc_storeStrong(&self->_columnGroupings, groupings);
  objc_storeStrong(&self->_rowGroupings, rowGroupings);
  objc_storeStrong(&self->_aggregates, aggregates);
  self->_flatteningDimension = dimension;
  pivotDataTable = self->_pivotDataTable;
  if (!pivotDataTable)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBySet restoreFromPivotDataTable:columnGroupings:rowGroupings:aggregates:flatteningDimension:]", v17, groupingsCopy, tableCopy);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 200, 0, "Pivot data model missing when restoring rules for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    pivotDataTable = self->_pivotDataTable;
  }

  v28 = objc_msgSend_categoryOwner(pivotDataTable, v15, v16, v17, groupingsCopy);
  self->_aggregateUidList.__end_ = self->_aggregateUidList.__begin_;
  sub_221159728(&self->_aggregateUidMap);
  v32 = objc_msgSend_count(self->_aggregates, v29, v30, v31);
  v39 = objc_msgSend_asArray(self->_aggregates, v33, v34, v35);
  if (v32)
  {
    for (i = 0; i != v32; ++i)
    {
      v41 = objc_msgSend_objectAtIndex_(v39, v36, i, v38);
      *&v66 = objc_msgSend_columnAggregateUid(v41, v42, v43, v44);
      *(&v66 + 1) = v45;
      sub_221083454(&self->_aggregateUidList, &v66);
      *&v66 = objc_msgSend_columnAggregateUid(v41, v46, v47, v48);
      *(&v66 + 1) = v49;
      *&v65 = i;
      v50 = v41;
      *(&v65 + 1) = v50;
      sub_2211597C8(&self->_aggregateUidMap.__table_.__bucket_list_.__ptr_, &v66, &v66, &v65);
    }
  }

  v51 = 0;
  for (j = 0; j != 1101; ++j)
  {
    v66 = 0uLL;
    *&v65 = objc_msgSend_pivotDataTableUID(self, v36, v37, v38);
    *(&v65 + 1) = v53;
    *&v66 = sub_2212C4930(&v65, (j + 205), v54, v55);
    *(&v66 + 1) = v56;
    v58 = objc_msgSend_groupByByUid_(v28, v56, &v66, v57);
    v61 = v58;
    if (v58)
    {
      objc_msgSend_setGroupBySet_(v58, v59, self, v60);
      objc_storeStrong(&self->_inUseGroupBys.__begin_[v51], v61);
    }

    ++v51;
  }

  objc_msgSend_resetGroupingList(self, v36, v37, v38);
}

- (void)setPivotRulesWithPivotDataTable:(id)table columnGroupings:(id)groupings rowGroupings:(id)rowGroupings aggregates:(id)aggregates flatteningDimension:(int64_t)dimension
{
  tableCopy = table;
  groupingsCopy = groupings;
  rowGroupingsCopy = rowGroupings;
  aggregatesCopy = aggregates;
  objc_storeStrong(&self->_pivotDataTable, table);
  objc_storeStrong(&self->_columnGroupings, groupings);
  objc_storeStrong(&self->_rowGroupings, rowGroupings);
  objc_storeStrong(&self->_aggregates, aggregates);
  self->_flatteningDimension = dimension;
  objc_msgSend_clearMissingCombinations(self, v16, v17, v18);
  pivotDataTable = self->_pivotDataTable;
  if (!pivotDataTable)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTGroupBySet setPivotRulesWithPivotDataTable:columnGroupings:rowGroupings:aggregates:flatteningDimension:]", v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 244, 0, "Pivot data model missing when setting rules for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    pivotDataTable = self->_pivotDataTable;
  }

  v32 = objc_msgSend_categoryOwner(pivotDataTable, v19, v20, v21);
  self->_aggregateUidList.__end_ = self->_aggregateUidList.__begin_;
  sub_221159728(&self->_aggregateUidMap);
  v39 = objc_msgSend_count(self->_aggregates, v33, v34, v35);
  if (v39)
  {
    v40 = 0;
    do
    {
      v41 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v36, v40, v38);
      *&v84 = objc_msgSend_columnAggregateUid(v41, v42, v43, v44);
      *(&v84 + 1) = v45;
      sub_221083454(&self->_aggregateUidList, &v84);
      *&v84 = objc_msgSend_columnAggregateUid(v41, v46, v47, v48);
      *(&v84 + 1) = v49;
      v82 = v40;
      v50 = v41;
      v83 = v50;
      sub_2211597C8(&self->_aggregateUidMap.__table_.__bucket_list_.__ptr_, &v84, &v84, &v82);

      ++v40;
    }

    while (v39 != v40);
  }

  if (self->_calcEngine && (objc_msgSend_minion(v32, v36, v37, v38), v51 = objc_claimAutoreleasedReturnValue(), v51, !v51))
  {
    v53 = [TSCEBulkCellChangeMinion alloc];
    v52 = objc_msgSend_initWithCalcEngine_(v53, v54, self->_calcEngine, v55);
    objc_msgSend_setMinion_(v32, v56, v52, v57);
  }

  else
  {
    v52 = 0;
  }

  v58 = objc_msgSend_numPracticalGroupBys(self, v36, v37, v38);
  for (i = 0; i != 1101; ++i)
  {
    v60 = self->_inUseGroupBys.__begin_[i];
    v63 = v60;
    if (v60)
    {
      objc_msgSend_setGroupBySet_(v60, v61, 0, v62);
      objc_msgSend_unregisterGroupBy_(v32, v64, v63, v65);
      begin = self->_inUseGroupBys.__begin_;
      v67 = begin[i];
      begin[i] = 0;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2211527B4;
  block[3] = &unk_27845FB10;
  block[4] = self;
  v68 = v32;
  v81 = v68;
  dispatch_apply(v58, 0, block);
  objc_msgSend_resetGroupingList(self, v69, v70, v71);
  hiddenStates = self->_hiddenStates;
  if (hiddenStates)
  {
    objc_msgSend_filterSetUpdated(hiddenStates, v72, v73, v74);
  }

  if (v52)
  {
    objc_msgSend_setMinion_(v68, v72, 0, v74);
    objc_msgSend_flushAllChanges(v52, v76, v77, v78);
  }
}

- (void)resetGroupingList
{
  self->_allFlattenedUids.__end_ = self->_allFlattenedUids.__begin_;
  self->_baseFlattenedUids.__end_ = self->_baseFlattenedUids.__begin_;
  sub_221159A8C(&self->_groupAggregateUidFlatteningMap);
  sub_2210BE918(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_);
  flatteningDimension = self->_flatteningDimension;
  if (flatteningDimension == 1)
  {
    if (objc_msgSend_count(self->_aggregates, v3, v4, v5) > 1)
    {
      v7 = 1;
      goto LABEL_9;
    }

    flatteningDimension = self->_flatteningDimension;
  }

  if (flatteningDimension || objc_msgSend_count(self->_aggregates, v3, v4, v5) <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  self->_activeFlatteningDimension = v7;
  if (self->_inUseGroupBys.var0 != self->_inUseGroupBys.__begin_)
  {
    v21 = objc_msgSend_groupByForColumnGroups(self, v3, v4, v5);
    v11 = objc_msgSend_count(self->_columnGroupings, v8, v9, v10);
    objc_msgSend_p_resetAllGroupUids_baseGroupUids_summaryGroupUids_forGroupBy_uptoLevel_isFlattening_(self, v12, &self->_allColumnGroupUids, &self->_baseColumnGroupUids, &self->_summaryColumnGroupUids, v21, v11, self->_activeFlatteningDimension == 1);

    v22 = objc_msgSend_groupByForRowGroups(self, v13, v14, v15);
    v19 = objc_msgSend_count(self->_rowGroupings, v16, v17, v18);
    objc_msgSend_p_resetAllGroupUids_baseGroupUids_summaryGroupUids_forGroupBy_uptoLevel_isFlattening_(self, v20, &self->_allRowGroupUids, &self->_baseRowGroupUids, &self->_summaryRowGroupUids, v22, v19, self->_activeFlatteningDimension == 0);
  }
}

- (void)p_resetAllGroupUids:(void *)uids baseGroupUids:(void *)groupUids summaryGroupUids:(void *)summaryGroupUids forGroupBy:(id)by uptoLevel:(unsigned __int8)level isFlattening:(BOOL)flattening
{
  flatteningCopy = flattening;
  levelCopy = level;
  byCopy = by;
  *(uids + 1) = *uids;
  *(groupUids + 1) = *groupUids;
  *(summaryGroupUids + 1) = *summaryGroupUids;
  v32 = byCopy;
  objc_msgSend_initialGroupOrderForGroupBy_baseLevel_outAllUids_outBaseUids_outSummaryUids_(TSTPivotRowColumnOrder, v15, byCopy, levelCopy, uids, groupUids, summaryGroupUids);
  if (flatteningCopy)
  {
    v19 = objc_msgSend_count(self->_aggregates, v16, v17, v18);
    v22 = *uids;
    v23 = *(uids + 1);
    if (*uids != v23)
    {
      v24 = 0;
      v25 = v19;
      do
      {
        __p = 0;
        v35 = 0;
        v36 = 0;
        if (v25)
        {
          v26 = 0;
          for (i = 0; i != v25; ++i)
          {
            *&v33 = sub_2211A8E7C(v22, i, v20, v21);
            *(&v33 + 1) = v28;
            sub_221083454(&__p, &v33);
            v33 = *v22;
            v37 = __p + v26;
            v29 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, __p + v26, &unk_2217E0517, &v37);
            *(v29 + 2) = v33;
            v29[6] = i;
            v26 += 16;
          }
        }

        *&v33 = v22;
        v30 = sub_221159D74(&self->_groupAggregateUidFlatteningMap.__table_.__bucket_list_.__ptr_, v22, &unk_2217E0517, &v33) + 4;
        if (v30 != &__p)
        {
          sub_2210BD068(v30, __p, v35, (v35 - __p) >> 4);
        }

        sub_2210F0C88(&self->_allFlattenedUids.__begin_, self->_allFlattenedUids.__end_, __p, v35, (v35 - __p) >> 4);
        if (v24 < (*(groupUids + 1) - *groupUids) >> 4)
        {
          v31 = (*groupUids + 16 * v24);
          if (*v22 == *v31 && v22[1] == v31[1])
          {
            sub_2210F0C88(&self->_baseFlattenedUids.__begin_, self->_baseFlattenedUids.__end_, __p, v35, (v35 - __p) >> 4);
            ++v24;
          }
        }

        if (__p)
        {
          v35 = __p;
          operator delete(__p);
        }

        v22 += 2;
      }

      while (v22 != v23);
    }
  }
}

- (id)groupByForColumnLevel:(unsigned __int8)level rowLevel:(unsigned __int8)rowLevel
{
  rowLevelCopy = rowLevel;
  levelCopy = level;
  if (objc_msgSend_count(self->_columnGroupings, a2, level, rowLevel) < level)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTGroupBySet groupByForColumnLevel:rowLevel:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 376, 0, "columnLevel exceeds columnGroupings.count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (objc_msgSend_count(self->_rowGroupings, v7, v8, v9) < rowLevelCopy)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTGroupBySet groupByForColumnLevel:rowLevel:]", v21);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 377, 0, "rowLevel exceeds rowGroupings.count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  if (!self->_inUseGroupBys.__begin_[levelCopy])
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTGroupBySet groupByForColumnLevel:rowLevel:]", v21);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 379, 0, "No groupBy set for columnLevel: %d", levelCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
  }

  v40 = self->_inUseGroupBys.__begin_[objc_msgSend_count(self->_columnGroupings, v19, v20, v21) - levelCopy];

  return v40;
}

- (TSTGroupBy)groupByForRowGroups
{
  v4 = self->_inUseGroupBys.__begin_[objc_msgSend_count(self->_columnGroupings, a2, v2, v3)];

  return v4;
}

- (unsigned)maxGroupByIndex
{
  v5 = objc_msgSend_count(self->_columnGroupings, a2, v2, v3);
  v9 = objc_msgSend_count(self->_rowGroupings, v6, v7, v8);
  if ((v9 + v5) < 2)
  {
    return 214;
  }

  v10 = v9 + v5 - 1;
  v11 = 2;
  do
  {
    v11 *= 2;
    --v10;
  }

  while (v10);
  return v11 + 213;
}

- (vector<unsigned)groupColumnIndexesForOwnerIndex:(TSTGroupBySet *)self
{
  v5 = a4;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v8 = objc_msgSend_count(self->_columnGroupings, a3, a4, v4);
  result = objc_msgSend_count(self->_rowGroupings, v9, v10, v11);
  if (v5 > 0xD6)
  {
    if (v5 <= 0x519)
    {
      if ((result + v8 - 1) >= 0)
      {
        v28 = v5 - 214;
        v29 = result + v8;
        do
        {
          --v29;
          if (v28)
          {
            v48 = v29;
            sub_2211531C0(&retstr->__begin_, &v48);
          }

          v28 >>= 1;
        }

        while (v29 > 0);
      }

      begin = retstr->__begin_;
      end = retstr->__end_;
      v32 = end - 1;
      if (retstr->__begin_ != end && v32 > begin)
      {
        v34 = begin + 1;
        do
        {
          v35 = *(v34 - 1);
          *(v34 - 1) = *v32;
          *v32-- = v35;
          v17 = v34++ >= v32;
        }

        while (!v17);
      }
    }
  }

  else
  {
    v16 = v5 - 205;
    v17 = v8 >= v16;
    v18 = v8 - v16;
    if (v17)
    {
      if (v18)
      {
        v36 = 0;
        if (v18 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v18;
        }

        v38 = retstr->__end_;
        do
        {
          cap = retstr->__cap_;
          if (v38 >= cap)
          {
            v40 = retstr->__begin_;
            v41 = v38 - retstr->__begin_;
            v42 = v41 >> 3;
            v43 = (v41 >> 3) + 1;
            if (v43 >> 61)
            {
              sub_22107C148();
            }

            v44 = cap - v40;
            if (v44 >> 2 > v43)
            {
              v43 = v44 >> 2;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFF8)
            {
              v45 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v43;
            }

            if (v45)
            {
              sub_2210874C4(retstr, v45);
            }

            *(8 * v42) = v36;
            v38 = (8 * v42 + 8);
            memcpy(0, v40, v41);
            v46 = retstr->__begin_;
            retstr->__begin_ = 0;
            retstr->__end_ = v38;
            retstr->__cap_ = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v38++ = v36;
          }

          retstr->__end_ = v38;
          ++v36;
        }

        while (v37 != v36);
      }

      for (i = 0; ; ++i)
      {
        result = objc_msgSend_count(self->_rowGroupings, v13, v14, v15);
        if (i >= result)
        {
          break;
        }

        v48 = v8;
        sub_2211531C0(&retstr->__begin_, &v48);
        ++v8;
      }
    }

    else
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBySet groupColumnIndexesForOwnerIndex:]", v15);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 440, 0, "Exceeded our set of practical groupBys");

      return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }
  }

  return result;
}

- (id)groupingColumnsForOwnerIndex:(unsigned __int16)index
{
  indexCopy = index;
  v8 = objc_opt_new();
  columnGroupings = self->_columnGroupings;
  if (indexCopy == 205)
  {
    v10 = objc_msgSend_groupingColumns(columnGroupings, v5, v6, v7);
    objc_msgSend_addObjectsFromArray_(v8, v11, v10, v12);

    v16 = objc_msgSend_groupingColumns(self->_rowGroupings, v13, v14, v15);
    objc_msgSend_addObjectsFromArray_(v8, v17, v16, v18);
  }

  else
  {
    v19 = objc_msgSend_count(columnGroupings, v5, v6, v7);
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v20, indexCopy, v21);
    v25 = v46;
    if (v46 != v47)
    {
      do
      {
        v26 = *v25;
        v27 = *v25 - v19;
        if (*v25 >= v19)
        {
          v28 = objc_msgSend_groupingColumns(self->_rowGroupings, v22, v23, v24);
          objc_msgSend_objectAtIndexedSubscript_(v28, v31, v27, v32);
        }

        else
        {
          v28 = objc_msgSend_groupingColumns(self->_columnGroupings, v22, v23, v24);
          objc_msgSend_objectAtIndexedSubscript_(v28, v29, v26, v30);
        }
        v33 = ;

        if (v33)
        {
          objc_msgSend_addObject_(v8, v34, v33, v35);
        }

        else
        {
          v36 = MEMORY[0x277D81150];
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTGroupBySet groupingColumnsForOwnerIndex:]", v35);
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v39);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 487, 0, "Expected to get a grouping column for index: %d", v26);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
        }

        ++v25;
      }

      while (v25 != v47);
      v25 = v46;
    }

    if (v25)
    {
      operator delete(v25);
    }
  }

  return v8;
}

- (int64_t)groupingIndexForColumnUID:(const TSKUIDStruct *)d
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = objc_msgSend_groupingColumns(self->_columnGroupings, a2, d, v3);
  v8 = 0;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v34, v39, 16);
  if (v12)
  {
    v13 = *v35;
LABEL_3:
    v14 = 0;
    v15 = v8;
    v8 += v12;
    while (1)
    {
      if (*v35 != v13)
      {
        objc_enumerationMutation(v6);
      }

      if (objc_msgSend_columnUid(*(*(&v34 + 1) + 8 * v14), v9, v10, v11) == d->_lower && v9 == d->_upper)
      {
        break;
      }

      ++v15;
      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v34, v39, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v15;
    }
  }

  else
  {
LABEL_12:
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = objc_msgSend_groupingColumns(self->_rowGroupings, v17, v18, v19, 0);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v38, 16);
  if (v25)
  {
    v26 = *v31;
LABEL_16:
    v27 = 0;
    v15 = v8;
    v8 += v25;
    while (1)
    {
      if (*v31 != v26)
      {
        objc_enumerationMutation(v20);
      }

      if (objc_msgSend_columnUid(*(*(&v30 + 1) + 8 * v27), v22, v23, v24) == d->_lower && v22 == d->_upper)
      {
        break;
      }

      ++v15;
      if (v25 == ++v27)
      {
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v30, v38, 16);
        if (v25)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v15;
}

- (id)groupingColumnForIndex:(unint64_t)index
{
  v6 = objc_msgSend_count(self->_columnGroupings, a2, index, v3);
  v10 = index - v6;
  if (index < v6)
  {
    v11 = objc_msgSend_groupingColumns(self->_columnGroupings, v7, v8, v9);
    v14 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, index, v13);
LABEL_5:
    v20 = v14;

    goto LABEL_7;
  }

  if (v10 < objc_msgSend_count(self->_rowGroupings, v7, v8, v9))
  {
    v11 = objc_msgSend_groupingColumns(self->_rowGroupings, v15, v16, v17);
    v14 = objc_msgSend_objectAtIndexedSubscript_(v11, v18, v10, v19);
    goto LABEL_5;
  }

  v20 = 0;
LABEL_7:

  return v20;
}

- (unsigned)ownerIndexForGroupingCombination:(const TSUIndexSet *)combination
{
  v6 = objc_msgSend_count(self->_columnGroupings, a2, combination, v3);
  v10 = objc_msgSend_count(self->_rowGroupings, v7, v8, v9) + v6;
  v11 = TSUIndexSet::count(combination);
  if (v11 > v10)
  {
    return 0;
  }

  v16 = v11;
  v17 = v11 == v10 || v11 == 0;
  if (v17)
  {
    return 205;
  }

  v18 = objc_msgSend_numPracticalGroupBys(self, v12, v13, v14);
  v21 = v18 + 204;
  if ((v18 + 204) < 0xCDu)
  {
    goto LABEL_27;
  }

  v15 = 0;
  v22 = 205;
  *&v23.f64[0] = 0x8000000080000000;
  *&v23.f64[1] = 0x8000000080000000;
  v32 = vnegq_f64(v23);
  do
  {
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v19, v22, v20, v32);
    if (v16 <= (v35 - __p) >> 3)
    {
      *&v33 = -1;
      v33._singleRange = v32;
      v33._multipleRanges = 0;
      TSUIndexSet::operator=();
      v24 = v35;
      if (__p != v35)
      {
        v25 = __p + 8;
        while ((TSUIndexSet::containsIndex(&v33) & 1) != 0)
        {
          TSUIndexSet::removeIndex(&v33);
          if (!TSUIndexSet::count(&v33))
          {
            v15 = v22;
            break;
          }

          v17 = v25 == v24;
          v25 += 8;
          if (v17)
          {
            break;
          }
        }
      }

      TSUIndexSet::~TSUIndexSet(&v33);
      if (v15)
      {
        v26 = 1;
        goto LABEL_23;
      }

      v15 = 0;
    }

    v26 = 0;
LABEL_23:
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    ++v22;
  }

  while (((v22 <= v21) & ~v26) != 0);
  if (!v15)
  {
LABEL_27:
    v27 = v10 - 1;
    if ((v10 - 1) < 0)
    {
      return 214;
    }

    else
    {
      v28 = 0;
      v29 = 1;
      do
      {
        if (TSUIndexSet::containsIndex(combination))
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v28 += v30;
        v29 *= 2;
        --v27;
      }

      while (v27 != -1);
      return v28 + 214;
    }
  }

  return v15;
}

- (void)clearMissingCombinations
{
  end = self->_assertedOnMissingCombinations.__end_;
  begin = self->_assertedOnMissingCombinations.__begin_;
  while (end != begin)
  {
    TSUIndexSet::~TSUIndexSet(end - 1);
  }

  self->_assertedOnMissingCombinations.__end_ = begin;
}

- (BOOL)sawMissingCombination:(const TSUIndexSet *)combination
{
  begin = self->_assertedOnMissingCombinations.__begin_;
  end = self->_assertedOnMissingCombinations.__end_;
  while (1)
  {
    if (begin == end)
    {
      sub_221153A98(&self->_assertedOnMissingCombinations, combination);
      return 0;
    }

    if (TSUIndexSet::operator==())
    {
      break;
    }

    ++begin;
  }

  return 1;
}

- (id)groupByForOwnerIndex:(unsigned __int16)index createIfMissing:(BOOL)missing
{
  indexCopy = index;
  v5 = (index - 205);
  if (v5 >= 0x44D)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBySet groupByForOwnerIndex:createIfMissing:]", missing);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 630, 0, "ownerIndex out of range: %d", indexCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    v10 = 0;
  }

  else
  {
    missingCopy = missing;
    v10 = self->_inUseGroupBys.__begin_[v5];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = !missingCopy;
    }

    if (!v11)
    {
      v12 = objc_msgSend_groupingColumnsForOwnerIndex_(self, v8, indexCopy, v9);
      v16 = objc_msgSend_categoryOwner(self->_pivotDataTable, v13, v14, v15);
      v10 = objc_msgSend_registerGroupByForColumns_ownerIndex_hiddenStates_groupBySet_(v16, v17, v12, indexCopy, self->_hiddenStates, self);
      objc_storeStrong(&self->_inUseGroupBys.__begin_[v5], v10);
      objc_msgSend_setAggregates_(v10, v18, self->_aggregates, v19);
    }
  }

  return v10;
}

- (vector<TSTGroupNode)allGroupRoots
{
  v5 = 0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  do
  {
    v6 = objc_msgSend_groupByForOwnerIndex_createIfMissing_(self, a3, (v5 + 205), 0);
    v10 = objc_msgSend_topLevelGroupNode(v6, v7, v8, v9);
    var1 = retstr->var1;
    var2 = retstr->var2;
    if (var1 >= var2)
    {
      v14 = var1 - retstr->var0;
      if ((v14 + 1) >> 61)
      {
        sub_22107C148();
      }

      v15 = var2 - retstr->var0;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      v23 = retstr;
      if (v17)
      {
        sub_22107C1F0(retstr, v17);
      }

      v19 = 0;
      v20 = (8 * v14);
      v22 = 0;
      *v20 = v10;
      v21 = 8 * v14 + 8;
      sub_22107C098(retstr, &v19);
      v13 = retstr->var1;
      sub_22107C26C(&v19);
    }

    else
    {
      *var1 = v10;
      v13 = var1 + 1;
    }

    retstr->var1 = v13;

    ++v5;
  }

  while (v5 != 1101);
  return result;
}

- (unint64_t)columnAggregateGroupSize
{
  if (self->_activeFlatteningDimension == 1)
  {
    return objc_msgSend_count(self->_aggregates, a2, v2, v3);
  }

  else
  {
    return 1;
  }
}

- (unint64_t)rowAggregateGroupSize
{
  if (self->_activeFlatteningDimension)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_count(self->_aggregates, a2, v2, v3);
  }
}

- (const)allColumnUids
{
  v2 = 112;
  if (self->_activeFlatteningDimension == 1)
  {
    v2 = 256;
  }

  return self + v2;
}

- (const)allRowUids
{
  v2 = 184;
  if (!self->_activeFlatteningDimension)
  {
    v2 = 256;
  }

  return self + v2;
}

- (const)baseColumnUids
{
  v2 = 136;
  if (self->_activeFlatteningDimension == 1)
  {
    v2 = 280;
  }

  return self + v2;
}

- (const)baseRowUids
{
  v2 = 208;
  if (!self->_activeFlatteningDimension)
  {
    v2 = 280;
  }

  return self + v2;
}

- (const)columnUidsForColumnGroupUid:(const TSKUIDStruct *)uid
{
  if (self->_activeFlatteningDimension != 1)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Asking for flattened column aggregate uids while not flattening on columns", a2, uid, "[TSTGroupBySet columnUidsForColumnGroupUid:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", 711);
    v4 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupBySet columnUidsForColumnGroupUid:]", v6);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 711, 1, "Asking for flattened column aggregate uids while not flattening on columns");

    TSUCrashBreakpoint();
    abort();
  }

  uidCopy = uid;
  return sub_221159D74(&self->_groupAggregateUidFlatteningMap.__table_.__bucket_list_.__ptr_, uid, &unk_2217E0517, &uidCopy) + 4;
}

- (const)rowUidsForRowGroupUid:(const TSKUIDStruct *)uid
{
  if (self->_activeFlatteningDimension)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Asking for flattened row aggregate uids while not flattening on rows", a2, uid, "[TSTGroupBySet rowUidsForRowGroupUid:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", 716);
    v4 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupBySet rowUidsForRowGroupUid:]", v6);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 716, 1, "Asking for flattened row aggregate uids while not flattening on rows");

    TSUCrashBreakpoint();
    abort();
  }

  uidCopy = uid;
  return sub_221159D74(&self->_groupAggregateUidFlatteningMap.__table_.__bucket_list_.__ptr_, uid, &unk_2217E0517, &uidCopy) + 4;
}

- (BOOL)hasRunningTotalAggregates
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = objc_msgSend_asArray(self->_aggregates, a2, v2, v3, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if ((objc_msgSend_showAsType(*(*(&v13 + 1) + 8 * i), v6, v7, v8) & 0xFE) == 6)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v13, v17, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (TSKUIDStruct)columnGroupUidForColumnUid:(const TSKUIDStruct *)uid outAggregateIndex:(unint64_t *)index
{
  if (self->_activeFlatteningDimension == 1)
  {
    uidCopy = uid;
    v5 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, uid, &unk_2217E0517, &uidCopy);
    uid = v5 + 2;
    lower = v5[3]._lower;
  }

  else
  {
    lower = 0;
  }

  v7 = uid->_lower;
  upper = uid->_upper;
  if (index)
  {
    *index = lower;
  }

  result._upper = upper;
  result._lower = v7;
  return result;
}

- (TSKUIDStruct)rowGroupUidForRowUid:(const TSKUIDStruct *)uid outAggregateIndex:(unint64_t *)index
{
  if (self->_activeFlatteningDimension)
  {
    lower = 0;
  }

  else
  {
    uidCopy = uid;
    v6 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, uid, &unk_2217E0517, &uidCopy);
    uid = v6 + 2;
    lower = v6[3]._lower;
  }

  v7 = uid->_lower;
  upper = uid->_upper;
  if (index)
  {
    *index = lower;
  }

  result._upper = upper;
  result._lower = v7;
  return result;
}

- (id)expandGroupUidsForFlattening:(id)flattening forDimension:(int64_t)dimension
{
  flatteningCopy = flattening;
  v10 = flatteningCopy;
  if (self->_activeFlatteningDimension == dimension)
  {
    v11 = objc_msgSend_count(self->_aggregates, v7, v8, v9);
    v15 = objc_msgSend_mutableCopy(v10, v12, v13, v14);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2211543D8;
    v20[3] = &unk_27845FB38;
    v22 = v11;
    v16 = v15;
    v21 = v16;
    objc_msgSend_foreachUuid_(v10, v17, v20, v18);
  }

  else
  {
    v16 = flatteningCopy;
  }

  return v16;
}

- (unint64_t)aggregateIndexForColumnUid:(const TSKUIDStruct *)uid
{
  if (self->_activeFlatteningDimension != 1)
  {
    return 0;
  }

  v6[1] = v3;
  v6[2] = v4;
  v6[0] = &uid->_lower;
  return sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, uid, &unk_2217E0517, v6)[6];
}

- (unint64_t)aggregateIndexForRowUid:(const TSKUIDStruct *)uid
{
  if (self->_activeFlatteningDimension)
  {
    return 0;
  }

  v6[1] = v3;
  v6[2] = v4;
  v6[0] = &uid->_lower;
  return sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, uid, &unk_2217E0517, v6)[6];
}

- (unsigned)aggregateIndexForUidCoord:(const TSKUIDStructCoord *)coord
{
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension)
  {
    if (activeFlatteningDimension != 1)
    {
      LOWORD(v5) = 0;
      return v5;
    }

    column = coord->_column;
  }

  else
  {
    column = coord->_row;
  }

  v7 = column;
  v8 = &v7;
  return sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v7, &unk_2217E0517, &v8)[6];
}

- (id)aggregateForUidCoord:(const TSKUIDStructCoord *)coord
{
  v5 = objc_msgSend_aggregateIndexForUidCoord_(self, a2, coord, v3);
  if (objc_msgSend_count(self->_aggregates, v6, v7, v8) <= v5)
  {
    v15 = 0;
  }

  else
  {
    v12 = objc_msgSend_asArray(self->_aggregates, v9, v10, v11);
    v15 = objc_msgSend_objectAtIndex_(v12, v13, v5, v14);
  }

  return v15;
}

- (id)columnNameForAggregateIndex:(unint64_t)index allowDuplicateNames:(BOOL)names
{
  namesCopy = names;
  if (!self->_calcEngine)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBySet columnNameForAggregateIndex:allowDuplicateNames:]", names);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 824, 0, "Re-constructing a non-empty pivot table without the calc engine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (objc_msgSend_count(self->_aggregates, a2, index, names) <= index)
  {
    v31 = 0;
  }

  else
  {
    v19 = objc_msgSend_asArray(self->_aggregates, v16, v17, v18);
    v22 = objc_msgSend_objectAtIndex_(v19, v20, index, v21);

    v26 = objc_msgSend_columnUid(v22, v23, v24, v25);
    v29 = objc_msgSend_columnIndexForColumnUID_(self->_pivotDataTable, v27, v26, v27);
    v43 = v29;
    if (namesCopy)
    {
      v31 = objc_msgSend_displayNameForColumnAtIndex_(self->_pivotDataTable, v28, v29, v30);
    }

    else
    {
      v32 = objc_msgSend_calcEngine(self, v28, v29, v30);
      v36 = objc_msgSend_namer(v32, v33, v34, v35);
      v42[0] = objc_msgSend_pivotDataTableUID(self, v37, v38, v39);
      v42[1] = v40;
      v31 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v36, v40, &v43, v42, 1);
    }
  }

  return v31;
}

- (id)descriptionForAggregateIndex:(unint64_t)index locale:(id)locale
{
  v4 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, a2, index, 0, 0, locale);

  return v4;
}

- (id)descriptionForAggregateIndex:(unint64_t)index useShortLabel:(BOOL)label allowDuplicateNames:(BOOL)names locale:(id)locale
{
  namesCopy = names;
  labelCopy = label;
  localeCopy = locale;
  if (!localeCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupBySet descriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 847, 0, "Requires a locale here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self->_aggregates, v10, v11, v12) <= index)
  {
    v32 = 0;
  }

  else
  {
    v25 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v23, index, v24);
    v29 = objc_msgSend_aggregateType(v25, v26, v27, v28);
    if (labelCopy)
    {
      objc_msgSend_localizedShortLabelForAggType_(localeCopy, v30, v29, v31);
    }

    else
    {
      objc_msgSend_localizedLabelForAggType_(localeCopy, v30, v29, v31);
    }
    v33 = ;
    v35 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v34, index, namesCopy);
    v40 = sub_221131078(localeCopy, v36);
    if (!v33)
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = objc_msgSend_aggregateType(v25, v37, v38, v39);
      v46 = sub_2211CCD30(v42, v43, v44, v45);
      v33 = objc_msgSend_stringWithFormat_(v41, v47, @"<Invalid AggType>: %@", v48, v46);

      v49 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSTGroupBySet descriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v51);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v52, v55, 859, 0, "Expecting to have localized label for all correct aggregate types");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
    }

    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v40, v39, v33, v35);
  }

  return v32;
}

- (id)compactDescriptionForAggregateIndex:(unint64_t)index locale:(id)locale
{
  v4 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, a2, index, 0, 0, locale);

  return v4;
}

- (id)compactDescriptionForAggregateIndex:(unint64_t)index useShortLabel:(BOOL)label allowDuplicateNames:(BOOL)names locale:(id)locale
{
  namesCopy = names;
  labelCopy = label;
  localeCopy = locale;
  if (!localeCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupBySet compactDescriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 872, 0, "Requires a locale here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  if (objc_msgSend_count(self->_aggregates, v10, v11, v12) <= index)
  {
    v32 = 0;
  }

  else
  {
    v25 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v23, index, v24);
    v29 = objc_msgSend_aggregateType(v25, v26, v27, v28);
    if (labelCopy)
    {
      objc_msgSend_localizedShortLabelForAggType_(localeCopy, v30, v29, v31);
    }

    else
    {
      objc_msgSend_localizedLabelForAggType_(localeCopy, v30, v29, v31);
    }
    v33 = ;
    v35 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v34, index, namesCopy);
    v40 = sub_221131094(localeCopy, v36);
    if (!v33)
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = objc_msgSend_aggregateType(v25, v37, v38, v39);
      v46 = sub_2211CCD30(v42, v43, v44, v45);
      v33 = objc_msgSend_stringWithFormat_(v41, v47, @"<Invalid AggType>: %@", v48, v46);

      v49 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSTGroupBySet compactDescriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v51);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v52, v55, 884, 0, "Expecting to have localized label for all correct aggregate types");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
    }

    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, v40, v39, v35, v33);
  }

  return v32;
}

- (unsigned)aggregateIndexForAggName:(id)name locale:(id)locale
{
  nameCopy = name;
  localeCopy = locale;
  v11 = objc_msgSend_aggregates(self, v8, v9, v10);
  v15 = objc_msgSend_count(v11, v12, v13, v14);

  if (v15)
  {
    v17 = 0;
    while (1)
    {
      v18 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v16, v17, 0);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v19, v18, v20))
      {
        break;
      }

      v22 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v21, v17, 0, 0, localeCopy);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v23, v22, v24))
      {

        break;
      }

      v26 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v25, v17, 0, 0, localeCopy);
      v29 = objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v27, v26, v28);

      if (!v29)
      {
        goto LABEL_10;
      }

      if (v15 == ++v17)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    if (v17 != 0xFFFF)
    {
      goto LABEL_32;
    }

LABEL_11:
    v17 = 0;
    while (1)
    {
      v30 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v16, v17, 1, 0, localeCopy);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v31, v30, v32))
      {
        break;
      }

      v34 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v33, v17, 1, 0, localeCopy);
      v37 = objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v35, v34, v36);

      if (!v37)
      {
        goto LABEL_17;
      }

      if (v15 == ++v17)
      {
        goto LABEL_18;
      }
    }

LABEL_17:
    if (v17 != 0xFFFF)
    {
      goto LABEL_32;
    }

LABEL_18:
    v17 = 0;
    while (1)
    {
      v38 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v16, v17, 1);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v39, v38, v40))
      {
        break;
      }

      v42 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v41, v17, 0, 1, localeCopy);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v43, v42, v44))
      {

        break;
      }

      v46 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v45, v17, 0, 1, localeCopy);
      v49 = objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v47, v46, v48);

      if (!v49)
      {
        goto LABEL_26;
      }

      if (v15 == ++v17)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    if (v17 != 0xFFFF)
    {
      goto LABEL_32;
    }

LABEL_27:
    v17 = 0;
    while (1)
    {
      v50 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v16, v17, 1, 1, localeCopy);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v51, v50, v52))
      {
        break;
      }

      v54 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v53, v17, 1, 1, localeCopy);
      v57 = objc_msgSend_localizedCaseInsensitiveCompare_(nameCopy, v55, v54, v56);

      if (!v57)
      {
        goto LABEL_32;
      }

      if (v15 == ++v17)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    LOWORD(v17) = -1;
  }

LABEL_32:

  return v17;
}

- (TSKUIDStruct)columnUIDForGroupingColumnName:(id)name
{
  v89 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v8 = objc_msgSend_groupingColumns(self->_rowGroupings, v5, v6, v7);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v83, v88, 16);
  if (v13)
  {
    v14 = *v84;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v84 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v83 + 1) + 8 * v15);
      v82 = 0;
      pivotDataTable = self->_pivotDataTable;
      v18 = objc_msgSend_columnUid(v16, v10, v11, v12);
      v82 = objc_msgSend_columnIndexForColumnUID_(pivotDataTable, v19, v18, v19);
      v23 = objc_msgSend_calcEngine(self, v20, v21, v22);
      v27 = objc_msgSend_namer(v23, v24, v25, v26);
      v80 = objc_msgSend_pivotDataTableUID(self, v28, v29, v30);
      v81 = v31;
      v32 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v27, v31, &v82, &v80, 1);

      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v32, v33, nameCopy, v34))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v83, v88, 16);
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v71 = objc_msgSend_columnUid(v16, v35, v36, v37);
    v46 = v72;

    if (v71)
    {
      goto LABEL_24;
    }

    if (v46)
    {
      v71 = 0;
      goto LABEL_24;
    }
  }

  else
  {
LABEL_9:
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v41 = objc_msgSend_groupingColumns(self->_columnGroupings, v38, v39, v40, 0);
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v76, v87, 16);
  if (v46)
  {
    v47 = *v77;
    while (2)
    {
      v48 = 0;
      do
      {
        if (*v77 != v47)
        {
          objc_enumerationMutation(v41);
        }

        v49 = *(*(&v76 + 1) + 8 * v48);
        v82 = 0;
        v50 = self->_pivotDataTable;
        v51 = objc_msgSend_columnUid(v49, v43, v44, v45);
        v82 = objc_msgSend_columnIndexForColumnUID_(v50, v52, v51, v52);
        v56 = objc_msgSend_calcEngine(self, v53, v54, v55);
        v60 = objc_msgSend_namer(v56, v57, v58, v59);
        v80 = objc_msgSend_pivotDataTableUID(self, v61, v62, v63);
        v81 = v64;
        v65 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v60, v64, &v82, &v80, 1);

        if (!objc_msgSend_localizedCaseInsensitiveCompare_(v65, v66, nameCopy, v67))
        {
          v71 = objc_msgSend_columnUid(v49, v68, v69, v70);
          v46 = v73;

          goto LABEL_23;
        }

        ++v48;
      }

      while (v46 != v48);
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v76, v87, 16);
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v71 = 0;
LABEL_23:

LABEL_24:
  v74 = v71;
  v75 = v46;
  result._upper = v75;
  result._lower = v74;
  return result;
}

- (unsigned)columnGroupLevelForColumnUID:(const TSKUIDStruct *)d
{
  v4 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, a2, d, 0);
  v6 = v5;
  v9 = objc_msgSend_groupByForColumnGroups(self, v5, v7, v8);
  v11 = objc_msgSend_groupNodeForGroupUid_(v9, v10, v4, v6);

  if (v11)
  {
    v15 = objc_msgSend_groupLevel(v11, v12, v13, v14);
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (unsigned)rowGroupLevelForRowUID:(const TSKUIDStruct *)d
{
  v4 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, a2, d, 0);
  v6 = v5;
  v9 = objc_msgSend_groupByForRowGroups(self, v5, v7, v8);
  v11 = objc_msgSend_groupNodeForGroupUid_(v9, v10, v4, v6);

  if (v11)
  {
    v15 = objc_msgSend_groupLevel(v11, v12, v13, v14);
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (id)categoryRefForUidCoord:(const TSKUIDStructCoord *)coord outShowAsType:(unsigned __int8 *)type
{
  column = coord->_column;
  row = coord->_row;
  v77 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (!activeFlatteningDimension)
  {
    v75[0] = &row;
    v7 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row, &unk_2217E0517, v75);
    row = *(v7 + 2);
    goto LABEL_5;
  }

  if (activeFlatteningDimension == 1)
  {
    v75[0] = &v77;
    v7 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v77, &unk_2217E0517, v75);
    v77 = *(v7 + 2);
LABEL_5:
    v8 = v7[6];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v72 = objc_msgSend_groupByForColumnGroups(self, a2, coord, type, type);
  v71 = objc_msgSend_groupByForRowGroups(self, v9, v10, v11);
  v13 = objc_msgSend_groupNodeForGroupUid_(v72, v12, v77._lower, v77._upper);
  v15 = objc_msgSend_groupNodeForGroupUid_(v71, v14, row._lower, row._upper);
  v19 = objc_msgSend_groupLevel(v13, v16, v17, v18);
  v23 = objc_msgSend_groupLevel(v15, v20, v21, v22);
  v70 = objc_msgSend_groupByForColumnLevel_rowLevel_(self, v24, v19, v23);
  v28 = objc_msgSend_groupValueTuple(v13, v25, v26, v27);
  v32 = objc_msgSend_groupValueTuple(v15, v29, v30, v31);
  v34 = objc_msgSend_groupValueUidForTuple_appendingTuple_(TSTGroupValueTuple, v33, v28, v32);
  v36 = v35;
  v75[0] = v34;
  v75[1] = v35;

  if (v8 >= objc_msgSend_count(self->_aggregates, v37, v38, v39))
  {
    v46 = 0;
    goto LABEL_15;
  }

  v43 = objc_msgSend_asArray(self->_aggregates, v40, v41, v42);
  v46 = objc_msgSend_objectAtIndex_(v43, v44, v8, v45);

  if (!v46)
  {
LABEL_15:
    v54 = 0;
    v50 = v70;
    goto LABEL_16;
  }

  v50 = v70;
  v51 = objc_msgSend_showAsType(v46, v47, v48, v49);
  *v69 = v51;
  if ((v51 & 0xFE) == 6 && (objc_msgSend_hasValidRunningTotalFieldForAggregate_(self, v52, v46, v53) & 1) == 0)
  {
    *v69 = 0;
  }

  v54 = objc_msgSend_groupNodeForGroupUid_(v70, v52, v34, v36);

  if (v54)
  {
    v55 = [TSCECategoryRef alloc];
    v74[0] = objc_msgSend_groupByUid(v70, v56, v57, v58);
    v74[1] = v59;
    v73[0] = objc_msgSend_columnUid(v46, v59, v60, v61);
    v73[1] = v62;
    v65 = objc_msgSend_aggregateType(v46, v62, v63, v64);
    v54 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v55, v66, v74, v75, v73, v65, (v23 + v19));
  }

LABEL_16:

  return v54;
}

- (id)getPivotDataBundleForUidCoord:(const TSKUIDStructCoord *)coord upToLevel:(unsigned __int8)level
{
  levelCopy = level;
  column = coord->_column;
  row = coord->_row;
  v110 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (!activeFlatteningDimension)
  {
    p_row = &row;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row, &unk_2217E0517, &p_row);
    row = *(v8 + 2);
    goto LABEL_5;
  }

  if (activeFlatteningDimension == 1)
  {
    p_row = &v110;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v110, &unk_2217E0517, &p_row);
    v110 = *(v8 + 2);
LABEL_5:
    v9 = *(v8 + 24);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = objc_opt_new();
  objc_msgSend_setAggregateIndex_(v10, v11, v9, v12);
  objc_msgSend_setAggregateType_(v10, v13, 0, v14);
  objc_msgSend_setShowAsType_(v10, v15, 0, v16);
  if (v110 == 0uLL)
  {
    v106 = 0;
  }

  else
  {
    v106 = objc_msgSend_groupByForColumnGroups(self, v17, v18, v19);
  }

  if (row == 0uLL)
  {
    v105 = 0;
  }

  else
  {
    v105 = objc_msgSend_groupByForRowGroups(self, v17, v18, v19);
  }

  v108 = objc_msgSend_groupNodeForGroupUid_(v106, v17, v110._lower, v110._upper);
  v107 = objc_msgSend_groupNodeForGroupUid_(v105, v20, row._lower, row._upper);
  if (v108)
  {
    v24 = objc_msgSend_groupLevel(v108, v21, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  v25 = v107;
  if (v107)
  {
    v25 = objc_msgSend_groupLevel(v107, v21, v22, v23);
  }

  if (v24 >= levelCopy)
  {
    v26 = levelCopy;
  }

  else
  {
    v26 = v24;
  }

  if (!v108)
  {
    v26 = v24;
  }

  if (v25 >= levelCopy)
  {
    v27 = levelCopy;
  }

  else
  {
    v27 = v25;
  }

  if (!v107)
  {
    v27 = v25;
  }

  if (levelCopy == 255)
  {
    v28 = v25;
  }

  else
  {
    v28 = v27;
  }

  if (levelCopy == 255)
  {
    v29 = v24;
  }

  else
  {
    v29 = v26;
  }

  v30 = v105;
  v104 = v29;
  if (v106 && (v30 = v106, v105))
  {
    v31 = objc_msgSend_groupByForColumnLevel_rowLevel_(self, v21, v29, v28);
  }

  else
  {
    v31 = v30;
  }

  v35 = v31;
  if (v108)
  {
    if (v107)
    {
      v36 = objc_msgSend_groupValueTuple(v108, v32, v33, v34);
      v40 = objc_msgSend_groupValueTuple(v107, v37, v38, v39);
      v42 = objc_msgSend_groupValueUidForTuple_appendingTuple_(TSTGroupValueTuple, v41, v36, v40);
      v44 = v43;

      goto LABEL_44;
    }

    v36 = objc_msgSend_groupValueTuple(v108, v32, v33, v34);
    v48 = objc_msgSend_groupValueUid(v36, v50, v51, v52);
  }

  else
  {
    v36 = objc_msgSend_groupValueTuple(v107, v32, v33, v34);
    v48 = objc_msgSend_groupValueUid(v36, v45, v46, v47);
  }

  v42 = v48;
  v44 = v49;
LABEL_44:

  if (objc_msgSend_count(self->_aggregates, v53, v54, v55) <= v9)
  {
    v62 = 0;
  }

  else
  {
    v59 = objc_msgSend_asArray(self->_aggregates, v56, v57, v58);
    v62 = objc_msgSend_objectAtIndex_(v59, v60, v9, v61);
  }

  v63 = objc_msgSend_groupNodeForGroupUid_(v35, v56, v42, v44);
  v66 = v63;
  if (v62 && v63)
  {
    objc_msgSend_setAggregateIndex_(v10, v64, v9, v65);
    v70 = objc_msgSend_aggregateType(v62, v67, v68, v69);
    objc_msgSend_setAggregateType_(v10, v71, v70, v72);
    v76 = objc_msgSend_showAsType(v62, v73, v74, v75);
    objc_msgSend_setShowAsType_(v10, v77, v76, v78);
    v80 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v79, v9, 0);
    objc_msgSend_setAggregateFieldName_(v10, v81, v80, v82);

    v86 = objc_msgSend_groupValueTuple(v66, v83, v84, v85);
    v90 = objc_msgSend_numberOfLevels(v86, v87, v88, v89);
    if ((v104 + v28) >= v90)
    {
      v93 = v90;
    }

    else
    {
      v93 = (v104 + v28);
    }

    if (v93)
    {
      for (i = 1; i <= v93; ++i)
      {
        v96 = objc_msgSend_groupValueAtLevel_(v86, v91, i, v92);
        if (v96)
        {
          v100 = objc_msgSend_columnNameForCategoryLevel_shortForm_(v35, v95, i, 0);
          if (v100)
          {
            v101 = objc_msgSend_tsceValue(v96, v97, v98, v99);
            objc_msgSend_addDataField_withValue_(v10, v102, v100, v101);
          }
        }
      }
    }
  }

  return v10;
}

- (id)p_descriptionForPivotGroupValueTuple:(id)tuple upToLevel:(unsigned __int8)level locale:(id)locale
{
  levelCopy = level;
  tupleCopy = tuple;
  localeCopy = locale;
  v10 = localeCopy;
  v11 = 0;
  if (levelCopy <= 2)
  {
    if (levelCopy == 1)
    {
      v90 = MEMORY[0x277CCACA8];
      v44 = sub_22113113C(localeCopy, v9);
      v47 = objc_msgSend_groupValueAtLevel_(tupleCopy, v91, 1, v92);
      v17 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v93, v47, v94);
      v11 = objc_msgSend_stringWithFormat_(v90, v95, v44, v96, v17);
      goto LABEL_15;
    }

    if (levelCopy != 2)
    {
      goto LABEL_16;
    }

    v43 = MEMORY[0x277CCACA8];
    v44 = sub_221131120(localeCopy, v9);
    v47 = objc_msgSend_groupValueAtLevel_(tupleCopy, v45, 1, v46);
    v17 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v48, v47, v49);
    v101 = objc_msgSend_groupValueAtLevel_(tupleCopy, v50, 2, v51);
    v22 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v52, v101, v53);
    v11 = objc_msgSend_stringWithFormat_(v43, v54, v44, v55, v17, v22);
  }

  else
  {
    if (levelCopy == 3)
    {
      v56 = MEMORY[0x277CCACA8];
      v44 = sub_221131104(localeCopy, v9);
      v100 = objc_msgSend_groupValueAtLevel_(tupleCopy, v57, 1, v58);
      v17 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v59, v100, v60);
      v101 = objc_msgSend_groupValueAtLevel_(tupleCopy, v61, 2, v62);
      v22 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v63, v101, v64);
      v25 = objc_msgSend_groupValueAtLevel_(tupleCopy, v65, 3, v66);
      v28 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v67, v25, v68);
      v11 = objc_msgSend_stringWithFormat_(v56, v69, v44, v70, v17, v22, v28);
    }

    else
    {
      if (levelCopy == 4)
      {
        v71 = MEMORY[0x277CCACA8];
        v99 = sub_2211310E8(localeCopy, v9);
        v100 = objc_msgSend_groupValueAtLevel_(tupleCopy, v72, 1, v73);
        v17 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v74, v100, v75);
        v101 = objc_msgSend_groupValueAtLevel_(tupleCopy, v76, 2, v77);
        v22 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v78, v101, v79);
        v25 = objc_msgSend_groupValueAtLevel_(tupleCopy, v80, 3, v81);
        v28 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v82, v25, v83);
        v31 = objc_msgSend_groupValueAtLevel_(tupleCopy, v84, 4, v85);
        v34 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v86, v31, v87);
        v11 = objc_msgSend_stringWithFormat_(v71, v88, v99, v89, v17, v22, v28, v34);
      }

      else
      {
        if (levelCopy != 5)
        {
          goto LABEL_16;
        }

        v12 = MEMORY[0x277CCACA8];
        sub_2211310CC(localeCopy, v9);
        v99 = v98 = v10;
        v100 = objc_msgSend_groupValueAtLevel_(tupleCopy, v13, 1, v14);
        v17 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v15, v100, v16);
        v101 = objc_msgSend_groupValueAtLevel_(tupleCopy, v18, 2, v19);
        v22 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v20, v101, v21);
        v25 = objc_msgSend_groupValueAtLevel_(tupleCopy, v23, 3, v24);
        v28 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v26, v25, v27);
        v31 = objc_msgSend_groupValueAtLevel_(tupleCopy, v29, 4, v30);
        v34 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v32, v31, v33);
        v37 = objc_msgSend_groupValueAtLevel_(tupleCopy, v35, 5, v36);
        v40 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v38, v37, v39);
        v11 = objc_msgSend_stringWithFormat_(v12, v41, v99, v42, v17, v22, v28, v34, v40);

        v10 = v98;
      }

      v44 = v99;
    }

    v47 = v100;
  }

LABEL_15:
LABEL_16:

  return v11;
}

- (id)descriptionForPivotGroupCellForColumnUid:(const TSKUIDStruct *)uid upToLevel:(unsigned __int8)level
{
  levelCopy = level;
  v7 = objc_msgSend_groupByForColumnGroups(self, a2, uid, level);
  v11 = objc_msgSend_groupByForColumnGroups(self, v8, v9, v10);
  v13 = objc_msgSend_groupNodeForGroupUid_(v11, v12, uid->_lower, uid->_upper);

  v17 = objc_msgSend_groupLevel(v13, v14, v15, v16);
  if (v17 >= levelCopy)
  {
    v21 = levelCopy;
  }

  else
  {
    v21 = v17;
  }

  if (levelCopy == 255)
  {
    v22 = v17;
  }

  else
  {
    v22 = v21;
  }

  v23 = objc_msgSend_groupValueTuple(v13, v18, v19, v20);
  v27 = objc_msgSend_locale(v7, v24, v25, v26);
  v29 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v28, v23, v22, v27);

  return v29;
}

- (id)descriptionForPivotGroupCellForRowUid:(const TSKUIDStruct *)uid upToLevel:(unsigned __int8)level
{
  levelCopy = level;
  v7 = objc_msgSend_groupByForRowGroups(self, a2, uid, level);
  v9 = objc_msgSend_groupNodeForGroupUid_(v7, v8, uid->_lower, uid->_upper);
  v13 = objc_msgSend_groupLevel(v9, v10, v11, v12);
  if (v13 >= levelCopy)
  {
    v17 = levelCopy;
  }

  else
  {
    v17 = v13;
  }

  if (levelCopy == 255)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v19 = objc_msgSend_groupValueTuple(v9, v14, v15, v16);
  v23 = objc_msgSend_locale(v7, v20, v21, v22);
  v25 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v24, v19, v18, v23);

  return v25;
}

- (id)descriptionForPivotBodyCellForUidCoord:(const TSKUIDStructCoord *)coord
{
  column = coord->_column;
  row = coord->_row;
  v76 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension)
  {
    if (activeFlatteningDimension != 1)
    {
      v8 = 0;
      goto LABEL_7;
    }

    p_row = &v76;
    v7 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v76, &unk_2217E0517, &p_row);
    v76 = *(v7 + 2);
  }

  else
  {
    p_row = &row;
    v7 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row, &unk_2217E0517, &p_row);
    row = *(v7 + 2);
  }

  v8 = *(v7 + 24);
LABEL_7:
  if (v8 >= objc_msgSend_count(self->_aggregates, a2, coord, v3) || (objc_msgSend_asArray(self->_aggregates, v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndex_(v12, v13, v8, v14), v15 = objc_claimAutoreleasedReturnValue(), v12, !v15))
  {
    v56 = 0;
    goto LABEL_21;
  }

  v73 = v15;
  v72 = objc_msgSend_groupByForColumnGroups(self, v16, v17, v18);
  v71 = objc_msgSend_groupByForRowGroups(self, v19, v20, v21);
  v23 = objc_msgSend_groupNodeForGroupUid_(v72, v22, v76._lower, v76._upper);
  v25 = objc_msgSend_groupNodeForGroupUid_(v71, v24, row._lower, row._upper);
  v29 = objc_msgSend_groupLevel(v23, v26, v27, v28);
  v33 = objc_msgSend_groupLevel(v25, v30, v31, v32);
  v74 = objc_msgSend_groupValueTuple(v23, v34, v35, v36);
  v40 = objc_msgSend_groupValueTuple(v25, v37, v38, v39);
  v44 = objc_msgSend_locale(v71, v41, v42, v43);
  v46 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v45, v40, v33, v44);
  v48 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v47, v74, v29, v44);
  v50 = v48;
  if (v46 && v48)
  {
    v51 = MEMORY[0x277CCACA8];
    v52 = sub_221131158(v44, v49);
    v55 = objc_msgSend_stringWithFormat_(v51, v53, v52, v54, v50, v46);
  }

  else if (v46)
  {
    v57 = MEMORY[0x277CCACA8];
    v52 = sub_221131174(v44, v49);
    v55 = objc_msgSend_stringWithFormat_(v57, v58, v52, v59, v46);
  }

  else
  {
    if (!v48)
    {
      v63 = 0;
      goto LABEL_18;
    }

    v60 = MEMORY[0x277CCACA8];
    v52 = sub_221131174(v44, v49);
    v55 = objc_msgSend_stringWithFormat_(v60, v61, v52, v62, v50);
  }

  v63 = v55;

LABEL_18:
  v65 = objc_msgSend_descriptionForAggregateIndex_locale_(self, v49, v8, v44);
  v56 = v65;
  if (v63)
  {
    v66 = MEMORY[0x277CCACA8];
    v67 = sub_221131094(v44, v64);
    v56 = objc_msgSend_stringWithFormat_(v66, v68, v67, v69, v65, v63);
  }

LABEL_21:

  return v56;
}

- (TSUIndexSet)pivotDataModelRowIndexesNeededForCell:(SEL)cell
{
  TSUIndexSet::TSUIndexSet(retstr);
  v10 = objc_msgSend_groupByForColumnGroups(self, v7, v8, v9);
  v14 = objc_msgSend_groupByForRowGroups(self, v11, v12, v13);
  v16 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v15, a4, 0);
  v18 = v17;
  v19 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v17, &a4->_row, 0);
  v21 = v20;
  v22 = objc_msgSend_groupNodeForGroupUid_(v10, v20, v16, v18);
  v24 = objc_msgSend_groupNodeForGroupUid_(v14, v23, v19, v21);
  v28 = v24;
  if (v22)
  {
    objc_msgSend_pivotOnlyRowIndexes(v22, v25, v26, v27);
    TSUIndexSet::addIndexes(retstr, &v38);
    TSUIndexSet::~TSUIndexSet(&v38);
    if (v28)
    {
      objc_msgSend_pivotOnlyRowIndexes(v28, v29, v30, v31);
      TSUIndexSet::intersectWithIndexes(retstr, &v38);
LABEL_6:
      TSUIndexSet::~TSUIndexSet(&v38);
    }
  }

  else
  {
    if (v24)
    {
      objc_msgSend_pivotOnlyRowIndexes(v24, v25, v26, v27);
      TSUIndexSet::addIndexes(retstr, &v38);
      goto LABEL_6;
    }

    v33 = objc_msgSend_topLevelGroupNode(v14, v25, v26, v27);
    v37 = v33;
    if (v33)
    {
      objc_msgSend_pivotOnlyRowIndexes(v33, v34, v35, v36);
      TSUIndexSet::addIndexes(retstr, &v38);
      TSUIndexSet::~TSUIndexSet(&v38);
    }
  }

  return result;
}

- (id)findExistingGroupNodeInGroupBy:(id)by usingValues:(const void *)values upToLevel:(unint64_t)level coerceForDateFields:(BOOL)fields
{
  fieldsCopy = fields;
  byCopy = by;
  if (byCopy)
  {
    v77 = byCopy;
    v8 = objc_opt_new();
    v12 = objc_msgSend_ownerIndex(byCopy, v9, v10, v11);
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v13, v12, v14);
    v18 = objc_msgSend_ownerIndex(byCopy, v15, v16, v17);
    v21 = objc_msgSend_groupingColumnsForOwnerIndex_(self, v19, v18, v20);
    v25 = v21;
    v27 = __p;
    v26 = v83;
    if (__p != v83)
    {
      v28 = 0;
      v29 = 0;
      p_cache = TSCEFunction_XMATCH.cache;
      v76 = v21;
      do
      {
        v81 = v27[v29];
        if (objc_msgSend_count(v8, v22, v23, v24) >= level)
        {
          break;
        }

        v31 = sub_2210BE864(values, &v81);
        if (!v31)
        {
          break;
        }

        v32 = v31[3];
        v36 = v32;
        if (fieldsCopy && objc_msgSend_valueType(v32, v33, v34, v35) == 7)
        {
          v37 = objc_msgSend_objectAtIndexedSubscript_(v25, v33, v29, v35);
          v41 = objc_msgSend_groupingType(v37, v38, v39, v40);
          if (objc_msgSend_groupingTypeIsAnyDateType_(p_cache + 473, v42, v41, v43))
          {
            v47 = objc_msgSend_tsceValue(v36, v44, v45, v46);
            v51 = objc_msgSend_asStringValue(v47, v48, v49, v50);

            v75 = v51;
            v55 = objc_msgSend_locale(v77, v52, v53, v54);
            v59 = objc_msgSend_asString(v51, v56, v57, v58);
            v60 = TSUCreateDateFromString();

            if (v60)
            {
              v61 = [TSCEDateCellValue alloc];
              v63 = objc_msgSend_initWithDate_locale_(v61, v62, v60, v55);

              v36 = v63;
            }

            p_cache = (TSCEFunction_XMATCH + 16);
          }

          v25 = v76;
        }

        objc_msgSend_addObject_(v8, v33, v36, v35);

        ++v29;
        ++v28;
      }

      while (&v27[v28] != v26);
    }

    v64 = [TSTGroupValueTuple alloc];
    v67 = objc_msgSend_initWithValueArray_(v64, v65, v8, v66);
    byCopy = v77;
    v71 = objc_msgSend_numberOfLevels(v67, v68, v69, v70);
    v73 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(v77, v72, v67, v71, 0);

    if (__p)
    {
      v83 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v73 = 0;
  }

  return v73;
}

- (id)grandGrandTotalCategoryRefForAggregate:(id)aggregate
{
  aggregateCopy = aggregate;
  v8 = objc_msgSend_groupByForColumnGroups(self, v5, v6, v7);
  v9 = [TSCECategoryRef alloc];
  v29[0] = objc_msgSend_groupByUid(v8, v10, v11, v12);
  v29[1] = v13;
  v28[0] = objc_msgSend_topLevelGroupUid(v8, v13, v14, v15);
  v28[1] = v16;
  v19 = objc_msgSend_columnUid(aggregateCopy, v16, v17, v18);
  v23 = objc_msgSend_aggregateType(aggregateCopy, v20, v21, v22, v19, v20);
  v25 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v9, v24, v29, v28, &v27, v23, 0);

  return v25;
}

- (id)firstAggregate
{
  p_first_node = &self->_aggregateUidMap.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v3 = p_first_node[5].__next_;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

- (id)grandTotalCategoryRefForColumn:(const TSKUIDStruct *)column forAggregate:(id)aggregate
{
  aggregateCopy = aggregate;
  v34 = 0;
  v9 = objc_msgSend_groupByForColumnGroups(self, v6, v7, v8, 0, 0, 0, 0);
  objc_msgSend_topLevelGroupUid(v9, v10, v11, v12);
  TSKMakeUIDStructCoord();

  v17 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self, v13, &v33, &v34);
  if (aggregateCopy)
  {
    v18 = objc_msgSend_columnUid(aggregateCopy, v14, v15, v16);
    objc_msgSend_setColumnUid_(v17, v19, v18, v19);
    v23 = objc_msgSend_aggregateType(aggregateCopy, v20, v21, v22);
    objc_msgSend_setType_(v17, v24, v23, v25);
  }

  else
  {
    v26 = objc_msgSend_firstAggregate(self, v14, v15, v16);
    aggregateCopy = v26;
    if (v26)
    {
      v30 = objc_msgSend_columnUid(v26, v27, v28, v29);
      objc_msgSend_setColumnUid_(v17, v31, v30, v31);
    }

    objc_msgSend_setType_(v17, v27, 1, v29);
  }

  return v17;
}

- (id)grandTotalCategoryRefForRow:(const TSKUIDStruct *)row forAggregate:(id)aggregate
{
  aggregateCopy = aggregate;
  v28 = 0;
  v9 = objc_msgSend_groupByForColumnGroups(self, v6, v7, v8, 0, 0, 0, 0);
  objc_msgSend_topLevelGroupUid(v9, v10, v11, v12);
  TSKMakeUIDStructCoord();

  v17 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self, v13, &v27, &v28);
  if (aggregateCopy)
  {
    v18 = objc_msgSend_columnUid(aggregateCopy, v14, v15, v16);
    objc_msgSend_setColumnUid_(v17, v19, v18, v19);
    v23 = objc_msgSend_aggregateType(aggregateCopy, v20, v21, v22);
    objc_msgSend_setType_(v17, v24, v23, v25);
  }

  return v17;
}

- (id)percentParentDenominatorCategoryRefFor:(id)for inGroupBy:(id)by forAggregate:(id)aggregate forShowAsType:(unsigned __int8)type
{
  typeCopy = type;
  forCopy = for;
  byCopy = by;
  aggregateCopy = aggregate;
  if ((typeCopy & 0xFE) != 4)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupBySet percentParentDenominatorCategoryRefFor:inGroupBy:forAggregate:forShowAsType:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1409, 0, "Only expecting these two showAsTypes, got: %d", typeCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v25 = objc_msgSend_ownerIndex(byCopy, v12, v13, v14);
  objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v26, v25, v27);
  if (objc_msgSend_groupLevel(forCopy, v28, v29, v30) < ((v60 - __p) >> 3))
  {
    v34 = objc_msgSend_groupLevel(forCopy, v31, v32, v33);
    sub_2211576E4(&__p, v34);
  }

  v35 = objc_msgSend_count(self->_columnGroupings, v31, v32, v33);
  v39 = v35;
  if (typeCopy != 4)
  {
    if (objc_msgSend_count(self->_rowGroupings, v36, v37, v38))
    {
      v45 = __p;
      if (__p != v60)
      {
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v47 = *v45++;
          v46 = v47;
          if (v41 <= v47)
          {
            v48 = v46;
          }

          else
          {
            v48 = v41;
          }

          if (v41 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v48 = v46;
          }

          if (v46 >= v39)
          {
            v41 = v48;
          }
        }

        while (v45 != v60);
        if (v41 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_31:
    v49 = 0;
    v50 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_32;
  }

  if (!v35)
  {
    goto LABEL_31;
  }

  v40 = __p;
  if (__p == v60)
  {
    goto LABEL_31;
  }

  v41 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v43 = *v40++;
    v42 = v43;
    if (v41 <= v43)
    {
      v44 = v42;
    }

    else
    {
      v44 = v41;
    }

    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = v42;
    }

    if (v42 < v35)
    {
      v41 = v44;
    }
  }

  while (v40 != v60);
  if (v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

LABEL_37:
  v52 = objc_msgSend_groupingColumnForIndex_(self, v36, v41, v38);
  v49 = v52;
  v57 = 0;
  v58 = 0;
  if (v52 && (v57 = objc_msgSend_columnUid(v52, v53, v54, v55), v58 = v56, v57 | v56))
  {
    v50 = objc_msgSend_percentRunningDenominatorCategoryRefFor_inGroupBy_runningOnColumnUid_forAggregate_(self, v56, forCopy, byCopy, &v57, aggregateCopy);
  }

  else
  {
    v50 = 0;
  }

LABEL_32:

  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  return v50;
}

- (id)percentRunningDenominatorCategoryRefFor:(id)for inGroupBy:(id)by runningOnColumnUid:(const TSKUIDStruct *)uid forAggregate:(id)aggregate
{
  forCopy = for;
  byCopy = by;
  aggregateCopy = aggregate;
  v18 = objc_msgSend_groupingIndexForColumnUID_(self, v13, uid, v14);
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v71 = aggregateCopy;
    v72 = byCopy;
    v20 = objc_msgSend_groupValueTuple(forCopy, v15, v16, v17);
    v24 = objc_msgSend_ownerIndex(byCopy, v21, v22, v23);
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v25, v24, v26);
    if (objc_msgSend_groupLevel(forCopy, v27, v28, v29) < (v80 - v79))
    {
      v33 = objc_msgSend_groupLevel(forCopy, v30, v31, v32);
      sub_2211576E4(&v79, v33);
    }

    memset(v77, 0, sizeof(v77));
    v78 = 1065353216;
    v34 = v79;
    v35 = v80;
    if (v79 != v80)
    {
      v36 = 1;
      do
      {
        v75[0] = *v34;
        v37 = objc_msgSend_groupValueAtLevel_(v20, v30, v36, v32);
        if (v37 && v75[0] != v18)
        {
          *&v76 = v75;
          v38 = sub_22115A450(v77, v75, &unk_2217E0517, &v76);
          objc_storeStrong(v38 + 3, v37);
        }

        ++v36;

        ++v34;
      }

      while (v34 != v35);
    }

    TSUIndexSet::TSUIndexSet(&v76);
    v41 = v79;
    v42 = v80;
    if (v79 == v80)
    {
      v43 = 0;
    }

    else
    {
      v43 = 0;
      do
      {
        v39 = *v41;
        if (*v41 == v18)
        {
          v43 = 1;
        }

        else
        {
          TSUIndexSet::addIndex(&v76);
        }

        ++v41;
      }

      while (v41 != v42);
    }

    v45 = objc_msgSend_ownerIndexForGroupingCombination_(self, v39, &v76, v40);
    aggregateCopy = v71;
    if ((v43 & (v45 != 0)) != 0)
    {
      byCopy = v72;
      v46 = objc_msgSend_groupByForOwnerIndex_createIfMissing_(self, v44, v45, 1);
      v47 = TSUIndexSet::count(&v76);
      v49 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(self, v48, v46, v77, v47, 0);
      if (v49)
      {
        v50 = [TSCECategoryRef alloc];
        v75[0] = objc_msgSend_groupByUid(v46, v51, v52, v53);
        v75[1] = v54;
        v74[0] = objc_msgSend_groupUid(v49, v54, v55, v56);
        v74[1] = v57;
        v73[0] = objc_msgSend_columnUid(v71, v57, v58, v59);
        v73[1] = v60;
        v63 = objc_msgSend_aggregateType(v71, v60, v61, v62);
        v67 = objc_msgSend_groupLevel(v49, v64, v65, v66);
        v69 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v50, v68, v75, v74, v73, v63, v67);
      }

      else
      {
        v69 = 0;
      }
    }

    else
    {
      v69 = 0;
      byCopy = v72;
    }

    v19 = v69;
    TSUIndexSet::~TSUIndexSet(&v76);
    sub_221087B80(v77);
    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }
  }

  return v19;
}

- (id)restrictColumnIndexes:(id)indexes toColumnGroupLevel:(unsigned __int8)level forPivotTable:(id)table
{
  levelCopy = level;
  indexesCopy = indexes;
  tableCopy = table;
  v10 = indexesCopy;
  if ((objc_msgSend_isAPivotTable(tableCopy, v11, v12, v13) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTGroupBySet restrictColumnIndexes:toColumnGroupLevel:forPivotTable:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1549, 0, "Only expected this call with pivotTableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  v26 = v10;
  if (levelCopy != 255)
  {
    if (levelCopy == 253)
    {
      LOBYTE(levelCopy) = objc_msgSend_numberOfColumnLevels(tableCopy, v14, v15, v16);
    }

    v27 = objc_opt_new();
    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = sub_221157CEC;
    v43 = &unk_27845FB60;
    v44 = tableCopy;
    selfCopy = self;
    v47 = levelCopy;
    v28 = v27;
    v46 = v28;
    objc_msgSend_enumerateIndexesUsingBlock_(v10, v29, &v40, v30);
    v26 = v10;
    if (objc_msgSend_count(v28, v31, v32, v33, v40, v41, v42, v43))
    {
      v26 = objc_msgSend_mutableCopy(v10, v34, v35, v36);
      objc_msgSend_removeIndexes_(v26, v37, v28, v38);
    }
  }

  return v26;
}

- (id)restrictRowIndexes:(id)indexes toRowGroupLevel:(unsigned __int8)level forPivotTable:(id)table
{
  levelCopy = level;
  indexesCopy = indexes;
  tableCopy = table;
  v13 = indexesCopy;
  v14 = v13;
  if (levelCopy != 255)
  {
    if (levelCopy == 253)
    {
      LOBYTE(levelCopy) = objc_msgSend_numberOfRowLevels(tableCopy, v10, v11, v12);
    }

    v15 = objc_opt_new();
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_221157EE0;
    v31 = &unk_27845FB60;
    v32 = tableCopy;
    selfCopy = self;
    v35 = levelCopy;
    v16 = v15;
    v34 = v16;
    objc_msgSend_enumerateIndexesUsingBlock_(v13, v17, &v28, v18);
    v14 = v13;
    if (objc_msgSend_count(v16, v19, v20, v21, v28, v29, v30, v31))
    {
      v14 = objc_msgSend_mutableCopy(v13, v22, v23, v24);
      objc_msgSend_removeIndexes_(v14, v25, v16, v26);
    }
  }

  return v14;
}

- (id)restrictColumnIndexes:(id)indexes forAggrIndexLevel:(unsigned __int16)level forPivotTable:(id)table
{
  levelCopy = level;
  indexesCopy = indexes;
  tableCopy = table;
  v13 = indexesCopy;
  v14 = v13;
  if (levelCopy != 0xFFFF)
  {
    v14 = v13;
    if (objc_msgSend_flatteningDimension(self, v10, v11, v12) == 1)
    {
      v15 = objc_opt_new();
      v19 = objc_msgSend_translator(tableCopy, v16, v17, v18);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_2211580F8;
      v33[3] = &unk_27845FB88;
      v20 = v19;
      v34 = v20;
      v36 = levelCopy;
      v21 = v15;
      v35 = v21;
      objc_msgSend_enumerateIndexesUsingBlock_(v13, v22, v33, v23);
      v14 = v13;
      if (objc_msgSend_count(v21, v24, v25, v26))
      {
        v14 = objc_msgSend_mutableCopy(v13, v27, v28, v29);
        objc_msgSend_removeIndexes_(v14, v30, v21, v31);
      }
    }
  }

  return v14;
}

- (id)restrictRowIndexes:(id)indexes forAggrIndexLevel:(unsigned __int16)level forPivotTable:(id)table
{
  levelCopy = level;
  indexesCopy = indexes;
  tableCopy = table;
  v13 = indexesCopy;
  v14 = v13;
  if (levelCopy != 0xFFFF)
  {
    v14 = v13;
    if (!objc_msgSend_flatteningDimension(self, v10, v11, v12))
    {
      v15 = objc_opt_new();
      v19 = objc_msgSend_translator(tableCopy, v16, v17, v18);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_22115830C;
      v33[3] = &unk_27845FB88;
      v20 = v19;
      v34 = v20;
      v36 = levelCopy;
      v21 = v15;
      v35 = v21;
      objc_msgSend_enumerateIndexesUsingBlock_(v13, v22, v33, v23);
      v14 = v13;
      if (objc_msgSend_count(v21, v24, v25, v26))
      {
        v14 = objc_msgSend_mutableCopy(v13, v27, v28, v29);
        objc_msgSend_removeIndexes_(v14, v30, v21, v31);
      }
    }
  }

  return v14;
}

- (BOOL)hasUnfilteredAt:(const TSKUIDStruct *)at forDimension:(int64_t)dimension
{
  if (dimension)
  {
    v6 = objc_msgSend_groupByForColumnGroups(self, a2, at, dimension);
    v8 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v7, at, 0);
  }

  else
  {
    v6 = objc_msgSend_groupByForRowGroups(self, a2, at, 0);
    v8 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v10, at, 0);
  }

  v11 = objc_msgSend_groupNodeForGroupUid_(v6, v9, v8, v9);
  v15 = v11;
  if (v11)
  {
    hasUnfilteredRows = objc_msgSend_hasUnfilteredRows(v11, v12, v13, v14);
  }

  else
  {
    hasUnfilteredRows = 0;
  }

  return hasUnfilteredRows;
}

- (id)filteringCategoryRefAt:(const TSKUIDStruct *)at forDimension:(int64_t)dimension
{
  if (dimension)
  {
    v6 = objc_msgSend_groupByForColumnGroups(self, a2, at, dimension);
    v8 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v7, at, 0);
  }

  else
  {
    v6 = objc_msgSend_groupByForRowGroups(self, a2, at, 0);
    v8 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v10, at, 0);
  }

  v14 = objc_msgSend_groupNodeForGroupUid_(v6, v9, v8, v9);
  if (v14)
  {
    v15 = objc_msgSend_anyAggregator(v6, v11, v12, v13, 0, 0);
    v19 = v15;
    if (v15)
    {
      v22[0] = objc_msgSend_columnUid(v15, v16, v17, v18);
      v22[1] = v16;
    }

    v20 = objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v14, v16, 1, 0, v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)getPivotHidingIndexesForGroupingColumn:(const TSKUIDStruct *)column columns:(id)columns rows:(id)rows forHiding:(BOOL)hiding forPivotTable:(id)table
{
  hidingCopy = hiding;
  v78 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  rowsCopy = rows;
  tableCopy = table;
  if (*column == 0)
  {
    goto LABEL_40;
  }

  v60 = tableCopy;
  v16 = objc_msgSend_groupingColumns(self->_columnGroupings, v12, v13, v14);
  v61 = objc_msgSend_groupingColumns(self->_rowGroupings, v17, v18, v19);
  v59 = hidingCopy;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v20 = v16;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v72, v77, 16);
  if (v25)
  {
    v26 = *v73;
    v27 = 1;
LABEL_4:
    v28 = 0;
    v29 = v27;
    v27 += v25;
    while (1)
    {
      if (*v73 != v26)
      {
        objc_enumerationMutation(v20);
      }

      if (objc_msgSend_groupingColumnUid(*(*(&v72 + 1) + 8 * v28), v22, v23, v24) == column->_lower && v22 == column->_upper)
      {
        break;
      }

      ++v29;
      if (v25 == ++v28)
      {
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v72, v77, 16);
        if (v25)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }
    }

    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    v44 = 1;
  }

  else
  {
LABEL_13:

LABEL_15:
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v34 = v61;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v68, v76, 16);
    if (!v39)
    {
      goto LABEL_38;
    }

    v40 = *v69;
    v41 = 1;
LABEL_17:
    v42 = 0;
    v29 = v41;
    v41 += v39;
    while (1)
    {
      if (*v69 != v40)
      {
        objc_enumerationMutation(v34);
      }

      if (objc_msgSend_groupingColumnUid(*(*(&v68 + 1) + 8 * v42), v36, v37, v38) == column->_lower && v36 == column->_upper)
      {
        break;
      }

      ++v29;
      if (v39 == ++v42)
      {
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v68, v76, 16);
        if (v39)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }
    }

    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_39;
    }

    v44 = 0;
  }

  v48 = objc_msgSend_count(self->_aggregates, v31, v32, v33);
  if (v59)
  {
    v34 = objc_msgSend_hiddenStates(v60, v45, v46, v47);
    if (!v44)
    {
LABEL_32:
      if (objc_msgSend_count(self->_rowGroupings, v45, v46, v47) <= v29)
      {
        goto LABEL_38;
      }

      v52 = objc_msgSend_groupByForRowGroups(self, v49, v50, v51);
      v53 = v64;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_221158B64;
      v64[3] = &unk_27845FBB0;
      v64[4] = v60;
      v65 = v59;
      v64[5] = v34;
      v64[6] = rowsCopy;
      v64[7] = self;
      v64[8] = v48;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v52, v54, v29, v64);
      goto LABEL_37;
    }
  }

  else
  {
    v34 = 0;
    if (!v44)
    {
      goto LABEL_32;
    }
  }

  if (objc_msgSend_count(self->_columnGroupings, v45, v46, v47) <= v29)
  {
    goto LABEL_38;
  }

  v52 = objc_msgSend_groupByForColumnGroups(self, v55, v56, v57);
  v53 = v66;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_221158A6C;
  v66[3] = &unk_27845FBB0;
  v66[4] = v60;
  v67 = v59;
  v66[5] = v34;
  v66[6] = columnsCopy;
  v66[7] = self;
  v66[8] = v48;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v52, v58, v29, v66);
LABEL_37:

LABEL_38:
LABEL_39:

  tableCopy = v60;
LABEL_40:
}

- (void)getHidingIndexesForGrandTotalsForPivotTable:(id)table columns:(id)columns rows:(id)rows
{
  tableCopy = table;
  columnsCopy = columns;
  rowsCopy = rows;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension == 1)
  {
    v14 = self->_aggregateUidList.__end_ - self->_aggregateUidList.__begin_;
  }

  else
  {
    v14 = 1;
  }

  if (activeFlatteningDimension)
  {
    v15 = 1;
  }

  else
  {
    v15 = self->_aggregateUidList.__end_ - self->_aggregateUidList.__begin_;
  }

  v16 = objc_msgSend_groupByForColumnGroups(self, v9, v10, v11);
  v20 = objc_msgSend_topLevelGroupUid(v16, v17, v18, v19);
  v22 = v21;

  v27 = objc_msgSend_columnIndexForColumnUID_(tableCopy, v23, v20, v22);
  if (v27 != 0x7FFF && v14)
  {
    do
    {
      objc_msgSend_addIndex_(columnsCopy, v24, v27++, v26);
      --v14;
    }

    while (v14);
  }

  v28 = objc_msgSend_groupByForRowGroups(self, v24, v25, v26);
  v32 = objc_msgSend_topLevelGroupUid(v28, v29, v30, v31);
  v34 = v33;

  v38 = objc_msgSend_rowIndexForRowUID_(tableCopy, v35, v32, v34);
  if (v38 != 0x7FFFFFFF && v15)
  {
    do
    {
      objc_msgSend_addIndex_(rowsCopy, v36, v38++, v37);
      --v15;
    }

    while (v15);
  }
}

- (id)groupByForUuidCoord:(const TSKUIDStructCoord *)coord
{
  column = coord->_column;
  row = coord->_row;
  v28 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension)
  {
    if (activeFlatteningDimension == 1)
    {
      p_row = &v28;
      v28 = *(sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v28, &unk_2217E0517, &p_row) + 2);
    }
  }

  else
  {
    p_row = &row;
    row = *(sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row, &unk_2217E0517, &p_row) + 2);
  }

  v7 = objc_msgSend_groupByForColumnGroups(self, a2, coord, v3, row);
  v9 = objc_msgSend_groupNodeForGroupUid_(v7, v8, v28._lower, v28._upper);

  v13 = objc_msgSend_groupByForRowGroups(self, v10, v11, v12);
  v15 = objc_msgSend_groupNodeForGroupUid_(v13, v14, row._lower, row._upper);

  v19 = objc_msgSend_groupLevel(v9, v16, v17, v18);
  v23 = objc_msgSend_groupLevel(v15, v20, v21, v22);
  v25 = objc_msgSend_groupByForColumnLevel_rowLevel_(self, v24, v19, v23);

  return v25;
}

- (id)groupNodeForUuidCoord:(const TSKUIDStructCoord *)coord
{
  v26 = 0;
  v4 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self, a2, coord, &v26);
  if (objc_msgSend_isValid(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_groupByUid(v4, v8, v9, v10);
    v13 = v12;
    v16 = objc_msgSend_calcEngine(self, v12, v14, v15);
    v18 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v17, v11, v13, v16);

    v22 = objc_msgSend_absoluteGroupUid(v4, v19, v20, v21);
    v24 = objc_msgSend_groupNodeForGroupUid_(v18, v23, v22, v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)groupValueTupleForUuidCoord:(const TSKUIDStructCoord *)coord createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v7 = objc_msgSend_groupNodeForUuidCoord_(self, a2, coord, missing);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_groupValueTuple(v7, v8, v9, v10);
    goto LABEL_17;
  }

  if (!missingCopy)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v15 = objc_msgSend_groupByForUuidCoord_(self, v8, coord, v10);
  if (v15)
  {
    v16 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v13, &coord->_row, 0);
    v18 = v17;
    v21 = objc_msgSend_groupByForRowGroups(self, v17, v19, v20);
    v23 = objc_msgSend_groupNodeForGroupUid_(v21, v22, v16, v18);

    v25 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v24, coord, 0);
    v27 = v26;
    v30 = objc_msgSend_groupByForColumnGroups(self, v26, v28, v29);
    v32 = objc_msgSend_groupNodeForGroupUid_(v30, v31, v25, v27);

    if (!(v23 | v32))
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTGroupBySet groupValueTupleForUuidCoord:createIfMissing:]", v35);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 1881, 0, "Couldn't locate rowGroupNode or columnGroupNode");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
      v12 = 0;
LABEL_15:

      goto LABEL_16;
    }

    if (v32)
    {
      if (v23)
      {
        v54 = objc_msgSend_groupValueTuple(v23, v33, v34, v35);
        v58 = objc_msgSend_groupValueTuple(v32, v55, v56, v57);
        v12 = objc_msgSend_groupValueTupleByAppendingTuple_(v58, v59, v54, v60);

        goto LABEL_15;
      }

      v61 = objc_msgSend_groupValueTuple(v32, v33, v34, v35);
    }

    else
    {
      v61 = objc_msgSend_groupValueTuple(v23, v33, v34, v35);
    }

    v12 = v61;
    goto LABEL_15;
  }

  v45 = MEMORY[0x277D81150];
  v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBySet groupValueTupleForUuidCoord:createIfMissing:]", v14);
  v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v48);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 1894, 0, "Need a groupBy for this coordinate - why didn't you help?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
  v12 = 0;
LABEL_16:

LABEL_17:

  return v12;
}

- (id)duplicateFilterSet
{
  filterSet = self->_filterSet;
  v5 = objc_msgSend_context(filterSet, a2, v2, v3);
  v8 = objc_msgSend_copyWithContext_(filterSet, v6, v5, v7);

  return v8;
}

- (TSKUIDStruct)pivotTableUID
{
  upper = self->_pivotTableUID._upper;
  lower = self->_pivotTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 26) = 1065353216;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 84) = 1065353216;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 94) = 1065353216;
  *(self + 50) = 0;
  *(self + 51) = 0;
  *(self + 49) = 0;
  return self;
}

@end