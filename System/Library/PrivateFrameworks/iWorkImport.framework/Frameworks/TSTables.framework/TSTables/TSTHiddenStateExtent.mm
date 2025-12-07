@interface TSTHiddenStateExtent
+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range;
+ (unint64_t)firstIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (unint64_t)firstIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (unint64_t)lastIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (unint64_t)lastIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (void)swapIndexesWithIndexSet:(id)set index:(unint64_t)index withIndex:(unint64_t)withIndex;
- (BOOL)anyCollapsed;
- (BOOL)anyHidden;
- (BOOL)anyHiddenInRange:(_NSRange)range;
- (BOOL)anyHiddenInRange:(_NSRange)range forAction:(unsigned __int8)action;
- (BOOL)hasActiveFilters;
- (BOOL)hasFilterRulesWithTable:(id)table inBaseColumns:(id)columns;
- (BOOL)hasHiddenAtIndex:(unsigned int)index;
- (BOOL)hideAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action;
- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (BOOL)hideAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension;
- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension;
- (BOOL)needsFilterFormulaRewriteForImport;
- (BOOL)p_canUsePrePivotFilterSet;
- (BOOL)showAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)showAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action;
- (BOOL)showAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (BOOL)showAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (TSCECellRef)cellReferenceForIndex:(SEL)index;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)hiddenStateExtentUid;
- (TSKUIDStruct)ownerUID;
- (TSTHiddenStateExtent)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner;
- (TSTHiddenStateExtent)initWithHiddenStatesOwner:(id)owner forRows:(BOOL)rows;
- (TSTHiddenStatesOwner)hiddenStatesOwner;
- (TSTTableFilterSet)filterSet;
- (TSTTableInfo)tableInfo;
- (TSTTableModel)tableModel;
- (TSUViewColumnOrRowIndex)p_viewIndexForBaseIndex:(TSUModelColumnOrRowIndex)index;
- (id).cxx_construct;
- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState;
- (id)collapseSummaryGroupUIDs:(id)ds;
- (id)copyCollapsedStateToUpdatedGroupUids:(id)uids dimension:(int64_t)dimension;
- (id)duplicateFilterSet;
- (id)duplicateFilterSetInUidFormWithTable:(id)table;
- (id)expandSummaryGroupUIDs:(id)ds;
- (id)hiddenOrCollapsedIndexes;
- (id)indexesOfCollapsedInRange:(_NSRange)range;
- (id)indexesOfFilteredInRange:(_NSRange)range;
- (id)indexesOfHiddenInBaseRange:(_NSRange)range;
- (id)indexesOfHiddenInRange:(_NSRange)range;
- (id)indexesOfUserHiddenInRange:(_NSRange)range;
- (id)indexesOfUserVisibleInRange:(_NSRange)range;
- (id)indexesOfVisibleInRange:(_NSRange)range;
- (id)indexesOfVisibleIndexesInIndexes:(id)indexes;
- (id)linkedResolver;
- (id)mutableFilteredIndexes;
- (id)mutablePivotHiddenIndexes;
- (id)mutableUserHiddenIndexes;
- (id)p_baseHiddenIndexes;
- (id)p_calculateAverageThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord;
- (id)p_calculateTopOrBottomThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord isTop:(BOOL)top keyScale:(unsigned __int8)scale;
- (id)p_calculateUniqueThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord;
- (id)p_collapsedIndexes;
- (id)p_createThresholdCellValue:(id)value locale:(id)locale;
- (id)p_filteredIndexes;
- (id)p_hiddenIndexes;
- (id)p_summaryFilteredIndexes;
- (id)p_summaryHiddenIndexes;
- (id)p_summaryPivotHiddenIndexes;
- (id)p_userHiddenIndexes;
- (id)precedentsForFilterSet:(id)set calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD;
- (id)pruneCollapsedGroupsInDimension:(int64_t)dimension;
- (id)tableTranslator;
- (id)uniqueValuesForColumnUID:(const TSKUIDStruct *)d;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (unsigned)findFirstVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end;
- (unsigned)findLastVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end;
- (unsigned)hidingActionForBaseIndex:(TSUModelColumnOrRowIndex)index;
- (unsigned)hidingActionForUid:(const TSKUIDStruct *)uid;
- (unsigned)hidingActionForViewIndex:(TSUViewColumnOrRowIndex)index;
- (unsigned)indexOfVisibleAfterAndIncludingIndex:(unsigned int)index;
- (unsigned)indexOfVisibleAfterIndex:(unsigned int)index;
- (unsigned)numberOfHidden;
- (unsigned)numberOfHiddenInBaseRange:(_NSRange)range;
- (unsigned)numberOfHiddenInRange:(_NSRange)range;
- (unsigned)numberOfUserHiddenInRange:(_NSRange)range;
- (unsigned)ownerKind;
- (void)clearAllCachedRowIndexes;
- (void)clearAllFiltered;
- (void)clearAllPivotHidden;
- (void)clearInvalidIndexes;
- (void)dealloc;
- (void)deleteBaseRange:(_NSRange)range withUids:(const void *)uids;
- (void)dirtyFilterState;
- (void)dirtyFilterStateForFooters;
- (void)dirtyFilterStateForHeaders;
- (void)dirtyFilterStateForRowRange:(_NSRange)range;
- (void)enableFilterSet:(BOOL)set;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)endOfGroupingChangesBatch;
- (void)filterSetUpdated;
- (void)hideAtViewIndexes:(id)indexes forAction:(unsigned __int8)action;
- (void)insertBaseRange:(_NSRange)range;
- (void)loadIndexesFromTable:(id)table;
- (void)moveBaseRangeFrom:(_NSRange)from toIndex:(TSUModelColumnOrRowIndex)index;
- (void)moveViewRangeOnlyFrom:(_NSRange)from toIndex:(TSUViewColumnOrRowIndex)index;
- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block;
- (void)p_addHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (void)p_calculateUniqueDistinctIndexWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord tableModel:(id)model rule:(id)rule;
- (void)p_hiddenStateChangedForBaseIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (void)p_registerAllFormulasReturningCoords:(void *)coords;
- (void)p_removeAllFormulaFromCalculationEngine;
- (void)p_removeHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)removeUid:(const TSKUIDStruct *)uid;
- (void)setFilterSet:(id)set;
- (void)setFilterSetType:(int)type;
- (void)setGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed;
- (void)setHiddenStateExtentUid:(TSKUIDStruct)uid;
- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)import;
- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import;
- (void)setupAfterUnarchive;
- (void)showAtViewIndexes:(id)indexes forAction:(unsigned __int8)action;
- (void)swapBaseIndex:(TSUModelColumnOrRowIndex)index withIndex:(TSUModelColumnOrRowIndex)withIndex;
- (void)syncUpHiddenStateFormulaOwnerUIDs;
- (void)unregisterFromCalcEngine;
- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d;
- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willChangeGroupByTo:(id)to;
- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSTHiddenStateExtent

+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  intersectingCopy = intersecting;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_221388330;
  v18 = sub_221388340;
  v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221388348;
  v13[3] = &unk_278462AA8;
  v13[4] = &v14;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(intersectingCopy, v10, location, length, 0, v13);
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

+ (unint64_t)firstIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  v10 = setCopy;
  if (range >= endRange)
  {
    range = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  if (objc_msgSend_containsIndex_(setCopy, v8, range, v9))
  {
    while (1)
    {
      v13 = endRange - range;
      if (endRange - range < 2)
      {
        rangeCopy2 = range;
        goto LABEL_11;
      }

      v14 = v13 >> 1;
      v15 = objc_msgSend_countOfIndexesInRange_(v10, v11, range, v13 >> 1);
      rangeCopy2 = range + (v13 >> 1);
      if (v15 != v14)
      {
        if (!v15)
        {
          rangeCopy2 = 0x7FFFFFFFFFFFFFFFLL;
          if (range != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

LABEL_11:
          if (objc_msgSend_containsIndex_(v10, v11, rangeCopy2, v12))
          {
            range = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            range = rangeCopy2;
          }

          break;
        }

        endRange = rangeCopy2 + 1;
        rangeCopy2 = range;
      }

      range = rangeCopy2;
      if (rangeCopy2 >= endRange)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_14:

  return range;
}

+ (unint64_t)lastIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  if (range >= endRange)
  {
    rangeCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    do
    {
      v10 = range + ((endRange - range) >> 1);
      if (endRange == v10)
      {
        break;
      }

      v11 = objc_msgSend_countOfIndexesInRange_(setCopy, v7, range + ((endRange - range) >> 1), endRange - v10);
      if (v11 == endRange - v10)
      {
        endRange = range + ((endRange - range) >> 1);
      }

      else
      {
        if (!v11)
        {
          rangeCopy = endRange - 1;
          range = v10;
          if (rangeCopy != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_14;
          }

          break;
        }

        range += (endRange - range) >> 1;
      }
    }

    while (range < endRange);
    if (objc_msgSend_containsIndex_(setCopy, v7, range, v8))
    {
      rangeCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      rangeCopy = range;
    }
  }

LABEL_14:

  return rangeCopy;
}

+ (unint64_t)firstIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  indexSetCopy = indexSet;
  if (range >= endRange)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    for (i = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v10, setCopy, range, endRange); ; i = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, setCopy, v18, v23 + 1))
    {
      v14 = i;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (i == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v13, indexSetCopy, range, endRange);
      if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v14 == IndexNotInIndexSet_beginRange_pastEndRange)
      {
        v15 = v14;
        break;
      }

      if (v14 <= IndexNotInIndexSet_beginRange_pastEndRange)
      {
        v18 = IndexNotInIndexSet_beginRange_pastEndRange;
      }

      else
      {
        v18 = v14;
      }

      v19 = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v17, setCopy, range, endRange);
      v21 = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v20, indexSetCopy, range, endRange);
      if (v21 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      endRange = v23 + 1;
      range = v18;
    }
  }

  return v15;
}

+ (unint64_t)lastIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  indexSetCopy = indexSet;
  if (range >= endRange)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    for (i = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v10, setCopy, range, endRange); ; i = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, setCopy, range, v18 + 1))
    {
      v14 = i;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (i == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v13, indexSetCopy, range, endRange);
      if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v14 == IndexNotInIndexSet_beginRange_pastEndRange)
      {
        v15 = v14;
        break;
      }

      if (IndexNotInIndexSet_beginRange_pastEndRange >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = IndexNotInIndexSet_beginRange_pastEndRange;
      }

      v19 = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v17, setCopy, range, endRange);
      v21 = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v20, indexSetCopy, range, endRange);
      if (v19 <= v21)
      {
        range = v21;
      }

      else
      {
        range = v19;
      }

      endRange = v18 + 1;
    }
  }

  return v15;
}

- (TSTHiddenStateExtent)initWithHiddenStatesOwner:(id)owner forRows:(BOOL)rows
{
  rowsCopy = rows;
  v20 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  v18.receiver = self;
  v18.super_class = TSTHiddenStateExtent;
  v7 = [(TSTHiddenStateExtent *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_hiddenStatesOwner, ownerCopy);
    v19.__sig = objc_msgSend_baseTableUID(ownerCopy, v9, v10, v11);
    *v19.__opaque = v12;
    if (rowsCopy)
    {
      v15 = 4;
    }

    else
    {
      v15 = 11;
    }

    v8->_hiddenStateExtentUid._lower = sub_2212C4930(&v19, v15, v13, v14);
    v8->_hiddenStateExtentUid._upper = v16;
    v8->_forRows = rowsCopy;
    v8->_uniqueValuesLock._os_unfair_lock_opaque = 0;
    v8->_pendingComputedLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    pthread_mutexattr_init(&v19);
    pthread_mutexattr_settype(&v19, 0);
    pthread_mutex_init(&v8->_viewIndexesMutex, &v19);
  }

  return v8;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_msgSend_tableInfo(self, v4, v5, v6);

    if (v8)
    {
      v12 = objc_msgSend_tableInfo(self, v9, v10, v11);
      v16 = objc_msgSend_groupByForRows(v12, v13, v14, v15);
      v20 = objc_msgSend_groupByChangeDistributor(v16, v17, v18, v19);
      objc_msgSend_removeReceiver_(v20, v21, self, v22);

      v26 = objc_msgSend_tableInfo(self, v23, v24, v25);
      v30 = objc_msgSend_groupByForColumns(v26, v27, v28, v29);
      v34 = objc_msgSend_groupByChangeDistributor(v30, v31, v32, v33);
      objc_msgSend_removeReceiver_(v34, v35, self, v36);

      v40 = objc_msgSend_tableInfo(self, v37, v38, v39);
      v44 = objc_msgSend_cellWillChangeDistributor(v40, v41, v42, v43);
      objc_msgSend_removeReceiver_(v44, v45, self, v46);
    }
  }

  pthread_mutex_destroy(&self->_viewIndexesMutex);
  v47.receiver = self;
  v47.super_class = TSTHiddenStateExtent;
  [(TSTHiddenStateExtent *)&v47 dealloc];
}

- (TSTTableInfo)tableInfo
{
  v4 = objc_msgSend_tableModel(self, a2, v2, v3);
  v8 = objc_msgSend_tableInfo(v4, v5, v6, v7);

  return v8;
}

- (id)tableTranslator
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v6 = objc_msgSend_hiddenStates(WeakRetained, v3, v4, v5);
  v10 = objc_msgSend_translator(v6, v7, v8, v9);

  return v10;
}

- (BOOL)p_canUsePrePivotFilterSet
{
  if (self->_forRows)
  {
    v4 = objc_msgSend_tableModel(self, a2, v2, v3);
    if (objc_msgSend_isAPivotDataModel(v4, v5, v6, v7))
    {
      v11 = 0;
    }

    else
    {
      v12 = objc_msgSend_tableInfo(v4, v8, v9, v10);
      v16 = v12;
      if (v12)
      {
        v11 = objc_msgSend_isAPivotTable(v12, v13, v14, v15) - 1;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)setupAfterUnarchive
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tableModel(self, a2, v2, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_context(v5, v6, v7, v8);
    v14 = objc_msgSend_documentRoot(v10, v11, v12, v13);
    v18 = objc_msgSend_documentLocale(v14, v15, v16, v17);

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v19 = self->_thresholdCellValues;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v87, v91, 16);
    if (v23)
    {
      v24 = *v88;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v88 != v24)
          {
            objc_enumerationMutation(v19);
          }

          objc_msgSend_setLocale_(*(*(&v87 + 1) + 8 * i), v21, v18, v22);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v87, v91, 16);
      }

      while (v23);
    }

    if (!self->_filterSet)
    {
      if (objc_msgSend_p_canUsePrePivotFilterSet(self, v26, v27, v28))
      {
        v29 = objc_msgSend_prePivotRowFilterSet(v9, v26, v27, v28);
        v33 = objc_msgSend_context(v9, v30, v31, v32);
        v36 = objc_msgSend_copyWithContext_(v29, v34, v33, v35);
        filterSet = self->_filterSet;
        self->_filterSet = v36;
      }

      if (!self->_filterSet)
      {
        v38 = [TSTTableFilterSet alloc];
        v42 = objc_msgSend_context(v9, v39, v40, v41);
        v44 = objc_msgSend_initWithFilterRules_type_context_(v38, v43, 0, 0, v42);
        v45 = self->_filterSet;
        self->_filterSet = v44;
      }
    }

    v49 = objc_msgSend_tableInfo(self, v26, v27, v28);
    if (v49)
    {
      if (self->_columnUidsWithUniqueIndexes.__table_.__size_)
      {
        v50 = objc_msgSend_tableInfo(self, v46, v47, v48);
        v54 = objc_msgSend_cellWillChangeDistributor(v50, v51, v52, v53);
        objc_msgSend_addReceiverIfMissing_(v54, v55, self, v56);
      }

      v57 = objc_msgSend_groupByForRows(v49, v46, v47, v48);
      v61 = objc_msgSend_groupByChangeDistributor(v57, v58, v59, v60);
      objc_msgSend_addReceiverIfMissing_(v61, v62, self, v63);

      v67 = objc_msgSend_groupByForColumns(v49, v64, v65, v66);
      v71 = objc_msgSend_groupByChangeDistributor(v67, v68, v69, v70);
      objc_msgSend_addReceiverIfMissing_(v71, v72, self, v73);
    }

    thresholdCellValues = self->_thresholdCellValues;
    v75 = objc_msgSend_hiddenStateFormulaOwnerForRows(v9, v46, v47, v48);
    objc_msgSend_setThresholdCellValues_(v75, v76, thresholdCellValues, v77);
  }

  else
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTHiddenStateExtent setupAfterUnarchive]", v8);
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v81);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v83, v79, v82, 418, 0, "invalid nil value for '%{public}s'", "tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86);
  }
}

- (void)syncUpHiddenStateFormulaOwnerUIDs
{
  v16 = objc_msgSend_tableModel(self, a2, v2, v3);
  if (v16)
  {
    v8 = objc_msgSend_forRows(self, v5, v6, v7);
    lower = self->_hiddenStateExtentUid._lower;
    upper = self->_hiddenStateExtentUid._upper;
    if (v8)
    {
      objc_msgSend_hiddenStateFormulaOwnerForRows(v16, v9, v10, v11);
    }

    else
    {
      objc_msgSend_hiddenStateFormulaOwnerForColumns(v16, v9, v10, v11);
    }
    v14 = ;
    objc_msgSend_setOwnerUID_(v14, v15, lower, upper);
  }
}

- (void)setHiddenStateExtentUid:(TSKUIDStruct)uid
{
  upper = uid._upper;
  lower = uid._lower;
  if (uid._lower != self->_hiddenStateExtentUid._lower || uid._upper != self->_hiddenStateExtentUid._upper)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (objc_msgSend_duringSubOwnerUIDUpgrade(WeakRetained, v7, v8, v9))
    {
    }

    else if (WeakRetained)
    {
      objc_msgSend_willModify(WeakRetained, v10, v11, v12);
      objc_msgSend_unregisterFromCalcEngine(self, v13, v14, v15);
      self->_hiddenStateExtentUid._lower = lower;
      self->_hiddenStateExtentUid._upper = upper;
      v16 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v24[0] = objc_msgSend_baseTableUID(v16, v17, v18, v19);
      v24[1] = v20;
      objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self, v20, WeakRetained, v24);

      objc_msgSend_p_registerAllFormulas(self, v21, v22, v23);
LABEL_8:
      objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(self, v10, v11, v12);

      return;
    }

    WeakRetained = 0;
    self->_hiddenStateExtentUid._lower = lower;
    self->_hiddenStateExtentUid._upper = upper;
    goto LABEL_8;
  }
}

- (void)willChangeGroupByTo:(id)to
{
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
    v12 = objc_msgSend_groupByForRows(v8, v9, v10, v11);
    v16 = objc_msgSend_groupByChangeDistributor(v12, v13, v14, v15);
    objc_msgSend_removeReceiver_(v16, v17, self, v18);

    v22 = objc_msgSend_tableInfo(self, v19, v20, v21);
    v26 = objc_msgSend_groupByForColumns(v22, v23, v24, v25);
    v30 = objc_msgSend_groupByChangeDistributor(v26, v27, v28, v29);
    objc_msgSend_removeReceiver_(v30, v31, self, v32);
  }

  v33 = objc_msgSend_groupByChangeDistributor(toCopy, v5, v6, v7);
  objc_msgSend_addReceiverIfMissing_(v33, v34, self, v35);

  self->_invalidateViewGeometry = 1;
}

- (TSUViewColumnOrRowIndex)p_viewIndexForBaseIndex:(TSUModelColumnOrRowIndex)index
{
  v6 = objc_msgSend_tableTranslator(self, a2, *&index._index, v3);
  if ((objc_msgSend_areMapsStale(v6, v7, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_forRows(self, v10, v11, v12))
    {
      v19.var0 = objc_msgSend_viewRowIndexForBaseRowIndex_(v6, v14, index._index, v15);
      v16 = TSUViewRowIndex::asColumnRowIndex(&v19);
    }

    else
    {
      v18.var0 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v6, v14, LOWORD(index._index), v15);
      if (v18.var0 == 0x7FFF)
      {
        goto LABEL_3;
      }

      v16 = TSUViewColumnIndex::asColumnRowIndex(&v18);
    }

    v13._index = v16;
    goto LABEL_9;
  }

  self->_invalidateViewGeometry = 1;
LABEL_3:
  v13._index = 0x7FFFFFFF;
LABEL_9:

  return v13;
}

- (void)p_addHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  actionCopy = action;
  index = index._index;
  if (index._index == 0x7FFFFFFFLL)
  {
    LODWORD(v8) = viewIndex;
    if (viewIndex._index == 0x7FFFFFFF)
    {
      return;
    }
  }

  else
  {
    LODWORD(v8) = objc_msgSend_p_viewIndexForBaseIndex_(self, a2, index._index, *&viewIndex._index);
  }

  if (actionCopy <= 3)
  {
    if (actionCopy == 1)
    {
      goto LABEL_17;
    }

    if (actionCopy != 2)
    {
      goto LABEL_27;
    }

    if (!self->_baseFilteredIndexes)
    {
      v9 = objc_opt_new();
      baseFilteredIndexes = self->_baseFilteredIndexes;
      self->_baseFilteredIndexes = v9;
    }

    if (index == 0x7FFFFFFF)
    {
      if (v8 != 0x7FFFFFFF)
      {
        p_viewIndexesMutex = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        objc_msgSend_addIndex_(self->_summaryFilteredIndexes, v12, v8, v13);
LABEL_37:
        objc_msgSend_addIndex_(self->_filteredIndexes, v14, v8, v15);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v69, v8, v70);
        pthread_mutex_unlock(p_viewIndexesMutex);
      }
    }

    else
    {
      objc_msgSend_addIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index);
      if (v8 != 0x7FFFFFFF)
      {
        p_viewIndexesMutex = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        goto LABEL_37;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v39 = objc_msgSend_tableModel(self, v71, v72, v73);
    v139 = objc_msgSend_tableUID(v39, v74, v75, v76);
    v140 = v77;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v77, &v139, v78);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v79, v141, v80);
    goto LABEL_56;
  }

  switch(actionCopy)
  {
    case 4:
      return;
    case 16:
      if (index == 0x7FFFFFFF)
      {
        pthread_mutex_lock(&self->_viewIndexesMutex);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v27, v8, v28);
        objc_msgSend_addIndex_(self->_summaryPivotHiddenIndexes, v29, v8, v30);
        pthread_mutex_unlock(&self->_viewIndexesMutex);
      }

      else
      {
        v60 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index);
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v63);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 576, 0, "Not allowing pivot-hidden for base indexes.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
      }

LABEL_26:
      WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
      v39 = objc_msgSend_tableModel(self, v36, v37, v38);
      v139 = objc_msgSend_tableUID(v39, v40, v41, v42);
      v140 = v43;
      objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v43, &v139, v44);
      objc_msgSend_markCellRefAsDirty_(WeakRetained, v45, v141, v46);
LABEL_56:

      return;
    case 8:
LABEL_17:
      if (!self->_baseUserHiddenIndexes)
      {
        v16 = objc_opt_new();
        baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
        self->_baseUserHiddenIndexes = v16;
      }

      if (index == 0x7FFFFFFF)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index);
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v21);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 557, 0, "Not allowing user-hidden as view only");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
      }

      else
      {
        objc_msgSend_addIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index);
      }

      if (v8 != 0x7FFFFFFF)
      {
        pthread_mutex_lock(&self->_viewIndexesMutex);
        objc_msgSend_addIndex_(self->_userHiddenIndexes, v31, v8, v32);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v33, v8, v34);
        pthread_mutex_unlock(&self->_viewIndexesMutex);
      }

      goto LABEL_26;
  }

LABEL_27:
  if (!self->_baseUserHiddenIndexes)
  {
    v47 = objc_opt_new();
    v48 = self->_baseUserHiddenIndexes;
    self->_baseUserHiddenIndexes = v47;
  }

  if (!self->_baseFilteredIndexes)
  {
    v49 = objc_opt_new();
    v50 = self->_baseFilteredIndexes;
    self->_baseFilteredIndexes = v49;
  }

  if ((actionCopy & 9) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 615, 0, "Not allowing user-hidden as view only");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
    }

    else
    {
      objc_msgSend_addIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_addIndex_(self->_userHiddenIndexes, v81, v8, v82);
      objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v83, v8, v84);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v85 = objc_loadWeakRetained(&self->_calcEngine);
    v89 = objc_msgSend_tableModel(self, v86, v87, v88);
    v139 = objc_msgSend_tableUID(v89, v90, v91, v92);
    v140 = v93;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v93, &v139, v94);
    objc_msgSend_markCellRefAsDirty_(v85, v95, v141, v96);
  }

  if ((actionCopy & 0x10) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v97, v8, v98);
      objc_msgSend_addIndex_(self->_summaryPivotHiddenIndexes, v99, v8, v100);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    else
    {
      v101 = MEMORY[0x277D81150];
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index);
      v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v104);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v106, v102, v105, 634, 0, "Not allowing pivot-hidden for base indexes.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109);
    }

    v110 = objc_loadWeakRetained(&self->_calcEngine);
    v114 = objc_msgSend_tableModel(self, v111, v112, v113);
    v139 = objc_msgSend_tableUID(v114, v115, v116, v117);
    v140 = v118;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v118, &v139, v119);
    objc_msgSend_markCellRefAsDirty_(v110, v120, v141, v121);
  }

  if ((actionCopy & 2) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      if (v8 != 0x7FFFFFFF)
      {
        v122 = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        objc_msgSend_addIndex_(self->_summaryFilteredIndexes, v123, v8, v124);
LABEL_54:
        objc_msgSend_addIndex_(self->_filteredIndexes, v125, v8, v126);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v127, v8, v128);
        pthread_mutex_unlock(v122);
      }
    }

    else
    {
      objc_msgSend_addIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index);
      if (v8 != 0x7FFFFFFF)
      {
        v122 = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        goto LABEL_54;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v39 = objc_msgSend_tableModel(self, v129, v130, v131);
    v139 = objc_msgSend_tableUID(v39, v132, v133, v134);
    v140 = v135;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v135, &v139, v136);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v137, v141, v138);
    goto LABEL_56;
  }
}

- (void)p_removeHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  actionCopy = action;
  index = index._index;
  if (index._index == 0x7FFFFFFFLL)
  {
    v8 = viewIndex._index;
    if (viewIndex._index == 0x7FFFFFFF)
    {
      return;
    }
  }

  else
  {
    v8 = objc_msgSend_p_viewIndexForBaseIndex_(self, a2, index._index, *&viewIndex._index);
  }

  if (actionCopy > 3)
  {
    if (actionCopy == 4)
    {
      goto LABEL_42;
    }

    if (actionCopy == 16)
    {
      if (index == 0x7FFFFFFF)
      {
        pthread_mutex_lock(&self->_viewIndexesMutex);
        objc_msgSend_removeIndex_(self->_summaryPivotHiddenIndexes, v37, v8, v38);
        pthread_mutex_unlock(&self->_viewIndexesMutex);
      }

      goto LABEL_21;
    }

    if (actionCopy != 8)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_userHiddenIndexes, v25, v8, v26);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

LABEL_21:
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v17 = objc_msgSend_tableModel(self, v27, v28, v29);
    v92 = objc_msgSend_tableUID(v17, v30, v31, v32);
    v93 = v33;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v33, &v92, v34);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v35, v94, v36);
LABEL_41:

    goto LABEL_42;
  }

  if (actionCopy == 1)
  {
    goto LABEL_17;
  }

  if (actionCopy == 2)
  {
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_filteredIndexes, v9, v8, v10);
      objc_msgSend_removeIndex_(self->_summaryFilteredIndexes, v11, v8, v12);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v17 = objc_msgSend_tableModel(self, v14, v15, v16);
    v92 = objc_msgSend_tableUID(v17, v18, v19, v20);
    v93 = v21;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v21, &v92, v22);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v23, v94, v24);
    goto LABEL_41;
  }

LABEL_25:
  if ((actionCopy & 9) != 0)
  {
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_userHiddenIndexes, v39, v8, v40);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v41 = objc_loadWeakRetained(&self->_calcEngine);
    v45 = objc_msgSend_tableModel(self, v42, v43, v44);
    v92 = objc_msgSend_tableUID(v45, v46, v47, v48);
    v93 = v49;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v49, &v92, v50);
    objc_msgSend_markCellRefAsDirty_(v41, v51, v94, v52);
  }

  if ((actionCopy & 0x10) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_summaryPivotHiddenIndexes, v53, v8, v54);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v55 = objc_loadWeakRetained(&self->_calcEngine);
    v59 = objc_msgSend_tableModel(self, v56, v57, v58);
    v92 = objc_msgSend_tableUID(v59, v60, v61, v62);
    v93 = v63;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v63, &v92, v64);
    objc_msgSend_markCellRefAsDirty_(v55, v65, v94, v66);
  }

  if ((actionCopy & 2) != 0)
  {
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_filteredIndexes, v67, v8, v68);
      objc_msgSend_removeIndex_(self->_summaryFilteredIndexes, v69, v8, v70);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v17 = objc_msgSend_tableModel(self, v71, v72, v73);
    v92 = objc_msgSend_tableUID(v17, v74, v75, v76);
    v93 = v77;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v77, &v92, v78);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v79, v94, v80);
    goto LABEL_41;
  }

LABEL_42:
  if (index == 0x7FFFFFFF)
  {
    objc_msgSend_p_summaryFilteredIndexes(self, a2, *&index._index, *&viewIndex._index);

    objc_msgSend_p_summaryPivotHiddenIndexes(self, v81, v82, v83);
    if ((objc_msgSend_containsIndex_(self->_summaryFilteredIndexes, v84, v8, v85) & 1) == 0 && (objc_msgSend_containsIndex_(self->_summaryPivotHiddenIndexes, v86, v8, v87) & 1) == 0)
    {
LABEL_49:
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_combinedHiddenIndexes, v90, v8, v91);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }

  else if ((objc_msgSend_containsIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index) & 1) == 0 && (objc_msgSend_containsIndex_(self->_baseFilteredIndexes, v88, index, v89) & 1) == 0 && v8 != 0x7FFFFFFF)
  {
    goto LABEL_49;
  }
}

- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action
{
  actionCopy = action;
  v9 = objc_msgSend_tableTranslator(self, a2, uid, action);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent hideAtUid:forAction:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 774, 0, "Can't show/hide at a uuid without a TSTTableTranslator to translate to an index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  lower = uid->_lower;
  upper = uid->_upper;
  if (self->_forRows)
  {
    v22 = objc_msgSend_baseRowIndexForRowUID_(v9, v7, lower, upper);
  }

  else
  {
    v23 = objc_msgSend_baseColumnIndexForColumnUID_(v9, v7, lower, upper);
    if (v23 == 0x7FFF)
    {
      v22 = 0x7FFFFFFF;
    }

    else
    {
      v22 = v23;
    }
  }

  v24 = uid->_lower;
  v25 = uid->_upper;
  if (self->_forRows)
  {
    v26 = objc_msgSend_viewRowIndexForRowUID_(v9, v21, v24, v25);
  }

  else
  {
    v28 = objc_msgSend_viewColumnIndexForColumnUID_(v9, v21, v24, v25);
    if (v28 == 0x7FFF)
    {
      v26 = 0x7FFFFFFF;
    }

    else
    {
      v26 = v28;
    }
  }

  v29 = objc_msgSend_hideAtUid_forIndex_forViewIndex_forAction_(self, v27, uid, v22, v26, actionCopy);

  return v29;
}

- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  v6 = action & 0xFB;
  if ((action & 0xFFFFFFFB) == 0)
  {
    return 0;
  }

  v12 = objc_msgSend_hidingActionForUid_(self, a2, uid, *&index._index);
  if ((v6 & ~v12) == 0)
  {
    return 0;
  }

  v16 = v12 | v6;
  if (index._index == 0x7FFFFFFF)
  {
    uidCopy2 = uid;
    p_summaryHiddenByUid = &self->_summaryHiddenByUid;
  }

  else
  {
    if (((v12 | v6) & 0x10) != 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTHiddenStateExtent hideAtUid:forIndex:forViewIndex:forAction:]", v14);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 822, 0, "Pivot Hiding not allowed on base rows or columns.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
      goto LABEL_11;
    }

    uidCopy2 = uid;
    p_summaryHiddenByUid = &self->_baseHiddenByUid;
  }

  *(sub_2213958D0(p_summaryHiddenByUid, uid, &unk_2217E1891, &uidCopy2) + 32) = v16;
LABEL_11:
  objc_msgSend_p_addHiddenIndex_viewIndex_forAction_(self, v18, index._index, viewIndex._index, v6);
  objc_msgSend_p_hiddenStateChangedForBaseIndex_viewIndex_forAction_(self, v28, index._index, viewIndex._index, v6);
  result = 1;
  if (index._index != 0x7FFFFFFF && (action & 0x10) != 0)
  {
    if (self->_forRows)
    {
      LODWORD(uidCopy2) = index;
      v32 = objc_msgSend_tableModel(self, v29, v30, v31);
      objc_msgSend_setHidingState_atRowIndex_(v32, v33, v16 & 0xEB, &uidCopy2);
    }

    else
    {
      LOWORD(uidCopy2) = index._index;
      if (LOWORD(index._index) == 0x7FFF)
      {
        return 1;
      }

      v32 = objc_msgSend_tableModel(self, v29, v30, v31);
      objc_msgSend_setHidingState_atColumnIndex_(v32, v34, v16, &uidCopy2);
    }

    return 1;
  }

  return result;
}

- (BOOL)showAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action
{
  actionCopy = action;
  v9 = objc_msgSend_tableTranslator(self, a2, uid, action);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent showAtUid:forAction:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 864, 0, "Can't show/hide at a uuid without a TSTTableTranslator to translate to an index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  lower = uid->_lower;
  upper = uid->_upper;
  if (self->_forRows)
  {
    v22 = objc_msgSend_baseRowIndexForRowUID_(v9, v7, lower, upper);
  }

  else
  {
    v23 = objc_msgSend_baseColumnIndexForColumnUID_(v9, v7, lower, upper);
    if (v23 == 0x7FFF)
    {
      v22 = 0x7FFFFFFF;
    }

    else
    {
      v22 = v23;
    }
  }

  v24 = uid->_lower;
  v25 = uid->_upper;
  if (self->_forRows)
  {
    v26 = objc_msgSend_viewRowIndexForRowUID_(v9, v21, v24, v25);
  }

  else
  {
    v28 = objc_msgSend_viewColumnIndexForColumnUID_(v9, v21, v24, v25);
    if (v28 == 0x7FFF)
    {
      v26 = 0x7FFFFFFF;
    }

    else
    {
      v26 = v28;
    }
  }

  v29 = objc_msgSend_showAtUid_forIndex_forViewIndex_forAction_(self, v27, uid, v22, v26, actionCopy);

  return v29;
}

- (BOOL)showAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  if (!action)
  {
    return 0;
  }

  actionCopy = action;
  v11 = objc_msgSend_hidingActionForUid_(self, a2, uid, *&index._index);
  v12 = v11;
  if (actionCopy != 255)
  {
    if ((v11 & actionCopy) != 0)
    {
      v13 = v11 & ~actionCopy;
      if (index._index == 0x7FFFFFFF)
      {
        if (v13)
        {
          uidCopy2 = uid;
          p_summaryHiddenByUid = &self->_summaryHiddenByUid;
LABEL_13:
          *(sub_2213958D0(p_summaryHiddenByUid, uid, &unk_2217E1891, &uidCopy2) + 32) = v13;
          goto LABEL_17;
        }

        p_baseHiddenByUid = &self->_summaryHiddenByUid;
      }

      else
      {
        if (v13)
        {
          uidCopy2 = uid;
          p_summaryHiddenByUid = &self->_baseHiddenByUid;
          goto LABEL_13;
        }

        p_baseHiddenByUid = &self->_baseHiddenByUid;
      }

      sub_2211F2EF4(p_baseHiddenByUid, uid);
      goto LABEL_17;
    }

    return 0;
  }

  v15 = 40;
  if (index._index == 0x7FFFFFFF)
  {
    v15 = 80;
  }

  sub_2211F2EF4((&self->super.isa + v15), uid);
  v13 = 0;
  if (!v12)
  {
    return 0;
  }

LABEL_17:
  objc_msgSend_p_removeHiddenIndex_viewIndex_forAction_(self, v16, index._index, viewIndex._index, actionCopy);
  objc_msgSend_p_hiddenStateChangedForBaseIndex_viewIndex_forAction_(self, v19, index._index, viewIndex._index, actionCopy);
  result = 1;
  if (index._index != 0x7FFFFFFF && (actionCopy & 0x14) != 0)
  {
    v23 = objc_msgSend_tableTranslator(self, v20, v21, v22);
    v25 = v23;
    if (self->_forRows)
    {
      LODWORD(uidCopy2) = objc_msgSend_baseRowIndexForRowUID_(v23, v24, uid->_lower, uid->_upper);
      if (uidCopy2 != 0x7FFFFFFF)
      {
        v29 = objc_msgSend_tableModel(self, v26, v27, v28);
        objc_msgSend_setHidingState_atRowIndex_(v29, v30, v13 & 0xEB, &uidCopy2);
LABEL_24:
      }
    }

    else
    {
      LOWORD(uidCopy2) = objc_msgSend_baseColumnIndexForColumnUID_(v23, v24, uid->_lower, uid->_upper);
      if (uidCopy2 != 0x7FFF)
      {
        v29 = objc_msgSend_tableModel(self, v31, v32, v33);
        objc_msgSend_setHidingState_atColumnIndex_(v29, v34, v13, &uidCopy2);
        goto LABEL_24;
      }
    }

    return 1;
  }

  return result;
}

- (unsigned)hidingActionForUid:(const TSKUIDStruct *)uid
{
  v5 = sub_2210875C4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2210875C4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, uid);
  if (v7)
  {
    v6 |= *(v7 + 32);
  }

  return v6;
}

- (void)removeUid:(const TSKUIDStruct *)uid
{
  sub_2211F2EF4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, uid);

  sub_2211F2EF4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, uid);
}

- (BOOL)anyHidden
{
  if (objc_msgSend_count(self->_baseFilteredIndexes, a2, v2, v3) || objc_msgSend_count(self->_baseUserHiddenIndexes, v5, v6, v7))
  {
    return 1;
  }

  v13 = objc_msgSend_p_summaryHiddenIndexes(self, v8, v9, v10);
  v11 = objc_msgSend_count(v13, v14, v15, v16) != 0;

  return v11;
}

- (BOOL)anyCollapsed
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  if (objc_msgSend_count(self->_collapsedGroupUids, v6, v7, v8))
  {
    if (objc_msgSend_forRows(self, v9, v10, v11) && (objc_msgSend_isCategorized(v5, v12, v13, v14) & 1) != 0)
    {
      isAPivotTable = 1;
    }

    else
    {
      isAPivotTable = objc_msgSend_isAPivotTable(v5, v12, v13, v14);
    }
  }

  else
  {
    isAPivotTable = 0;
  }

  return isAPivotTable;
}

- (unsigned)numberOfHidden
{
  if (objc_msgSend_anyCollapsed(self, a2, v2, v3))
  {
    v8 = objc_msgSend_anyHidden(self, v5, v6, v7);
    v12 = objc_msgSend_p_collapsedIndexes(self, v9, v10, v11);
    v16 = v12;
    if (v8)
    {
      v17 = objc_msgSend_p_hiddenIndexes(self, v13, v14, v15);
      objc_msgSend_addIndexes_(v16, v18, v17, v19);

      v23 = objc_msgSend_count(v16, v20, v21, v22);
    }

    else
    {
      v23 = objc_msgSend_count(v12, v13, v14, v15);
    }

    LODWORD(v35) = v23;
  }

  else
  {
    v16 = objc_msgSend_p_baseHiddenIndexes(self, v5, v6, v7);
    v27 = objc_msgSend_count(v16, v24, v25, v26);
    v31 = objc_msgSend_p_summaryHiddenIndexes(self, v28, v29, v30);
    v35 = objc_msgSend_count(v31, v32, v33, v34) + v27;
  }

  return v35;
}

- (void)loadIndexesFromTable:(id)table
{
  tableCopy = table;
  v11 = objc_msgSend_tableTranslator(self, v5, v6, v7);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  next = self->_baseHiddenByUid.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v13 = next[32];
      if (v13)
      {
        *v49 = *(next + 1);
        if ((v13 & 9) != 0)
        {
          sub_221083454(&v54, v49);
        }

        if ((v13 & 2) != 0)
        {
          sub_221083454(&v51, v49);
        }
      }

      next = *next;
    }

    while (next);
    if (v54 != v55)
    {
      if (self->_forRows)
      {
        objc_msgSend_mutableBaseRowIndexesForUIDs_(v11, v8, &v54, v10);
      }

      else
      {
        objc_msgSend_mutableBaseColumnIndexesForUIDs_(v11, v8, &v54, v10);
      }
      v14 = ;
      baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
      self->_baseUserHiddenIndexes = v14;

      objc_msgSend_count(self->_baseUserHiddenIndexes, v16, v17, v18);
    }
  }

  if (v51 != v52)
  {
    if (self->_forRows)
    {
      objc_msgSend_mutableBaseRowIndexesForUIDs_(v11, v8, &v51, v10);
    }

    else
    {
      objc_msgSend_mutableBaseColumnIndexesForUIDs_(v11, v8, &v51, v10);
    }
    v19 = ;
    baseFilteredIndexes = self->_baseFilteredIndexes;
    self->_baseFilteredIndexes = v19;
  }

  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  __p = 0;
  v47 = 0;
  v48 = 0;
  for (i = self->_summaryHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
  {
    v22 = *(i + 32);
    if (v22)
    {
      v45 = *(i + 1);
      if ((v22 & 0x10) != 0)
      {
        sub_221083454(v49, &v45);
      }

      if ((v22 & 2) != 0)
      {
        sub_221083454(&__p, &v45);
      }
    }
  }

  if (self->_needsSummaryUidUpgrade)
  {
    objc_msgSend_willModifyForUpgrade(tableCopy, v8, v9, v10);
    if (objc_msgSend_count(self->_summaryPivotHiddenIndexes, v23, v24, v25))
    {
      summaryPivotHiddenIndexes = self->_summaryPivotHiddenIndexes;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_22138ADE0;
      v44[3] = &unk_27845E958;
      v44[4] = self;
      objc_msgSend_enumerateIndexesUsingBlock_(summaryPivotHiddenIndexes, v26, v44, v28);
    }

    if (objc_msgSend_count(self->_summaryFilteredIndexes, v26, v27, v28))
    {
      summaryFilteredIndexes = self->_summaryFilteredIndexes;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_22138ADF0;
      v43[3] = &unk_27845E958;
      v43[4] = self;
      objc_msgSend_enumerateIndexesUsingBlock_(summaryFilteredIndexes, v8, v43, v10);
    }

    self->_needsSummaryUidUpgrade = 0;
  }

  else
  {
    if (v49[1] != v49[0])
    {
      if (self->_forRows)
      {
        objc_msgSend_viewRowIndexesForUIDs_(v11, v8, v49, v10);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForUIDs_(v11, v8, v49, v10);
      }
      v31 = ;
      v35 = objc_msgSend_mutableCopy(v31, v32, v33, v34);
      v36 = self->_summaryPivotHiddenIndexes;
      self->_summaryPivotHiddenIndexes = v35;
    }

    if (v47 != __p)
    {
      if (self->_forRows)
      {
        objc_msgSend_viewRowIndexesForUIDs_(v11, v8, &__p, v10);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForUIDs_(v11, v8, &__p, v10);
      }
      v37 = ;
      v41 = objc_msgSend_mutableCopy(v37, v38, v39, v40);
      v42 = self->_summaryFilteredIndexes;
      self->_summaryFilteredIndexes = v41;
    }
  }

  objc_msgSend_verifyIndexesAreConsistent(self, v8, v9, v10);
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }
}

- (void)clearInvalidIndexes
{
  if (self->_invalidateViewGeometry)
  {
    v18 = objc_msgSend_tableTranslator(self, a2, v2, v3);
    if ((objc_msgSend_areMapsStale(v18, v5, v6, v7) & 1) == 0)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      *&self->_invalidateViewGeometry = 0;
      userHiddenIndexes = self->_userHiddenIndexes;
      self->_userHiddenIndexes = 0;

      filteredIndexes = self->_filteredIndexes;
      self->_filteredIndexes = 0;

      combinedHiddenIndexes = self->_combinedHiddenIndexes;
      self->_combinedHiddenIndexes = 0;

      collapsedIndexes = self->_collapsedIndexes;
      self->_collapsedIndexes = 0;

      summaryFilteredIndexes = self->_summaryFilteredIndexes;
      self->_summaryFilteredIndexes = 0;

      summaryPivotHiddenIndexes = self->_summaryPivotHiddenIndexes;
      self->_summaryPivotHiddenIndexes = 0;

      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }

  if (self->_invalidateCollapsed)
  {
    v19 = objc_msgSend_tableTranslator(self, a2, v2, v3);
    if ((objc_msgSend_areMapsStale(v19, v14, v15, v16) & 1) == 0)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      self->_invalidateCollapsed = 0;
      v17 = self->_collapsedIndexes;
      self->_collapsedIndexes = 0;

      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }
}

- (id)p_collapsedIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v5 = self->_collapsedIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (v5)
  {
    goto LABEL_29;
  }

  if (!objc_msgSend_count(self->_collapsedGroupUids, v6, v7, v8))
  {
    v55 = 0;
    goto LABEL_28;
  }

  v12 = objc_msgSend_tableInfo(self, v9, v10, v11);
  if (objc_msgSend_isAPivotTable(v12, v13, v14, v15))
  {
    v19 = objc_msgSend_pivotOwner(v12, v16, v17, v18);
    v23 = objc_msgSend_groupBySet(v19, v20, v21, v22);
    if (objc_msgSend_forRows(self, v24, v25, v26))
    {
      v30 = objc_msgSend_pivotOwner(v12, v27, v28, v29);
      v34 = objc_msgSend_groupBySet(v30, v31, v32, v33);
      v38 = objc_msgSend_groupByForRowGroups(v34, v35, v36, v37);

      v41 = objc_msgSend_rowUidsForGroupUids_(v38, v39, self->_collapsedGroupUids, v40);
      v44 = objc_msgSend_childGroupUidsForGroupUids_(v38, v42, self->_collapsedGroupUids, v43);
      objc_msgSend_addUuidsFromSet_(v41, v45, v44, v46);
      v48 = objc_msgSend_expandGroupUidsForFlattening_forDimension_(v23, v47, v41, 0);
      if (objc_msgSend_count(v48, v49, v50, v51))
      {
        if (v48)
        {
          objc_msgSend_uuidsAsVector(v48, v52, v53, v54);
        }

        else
        {
          __p = 0;
          v103 = 0;
          v104 = 0;
        }

        v99 = objc_msgSend_mutableRowIndexesForUIDs_(v12, v52, &__p, v54);
        goto LABEL_23;
      }
    }

    else
    {
      v78 = objc_msgSend_pivotOwner(v12, v27, v28, v29);
      v82 = objc_msgSend_groupBySet(v78, v79, v80, v81);
      v38 = objc_msgSend_groupByForColumnGroups(v82, v83, v84, v85);

      v41 = objc_msgSend_rowUidsForGroupUids_(v38, v86, self->_collapsedGroupUids, v87);
      v44 = objc_msgSend_childGroupUidsForGroupUids_(v38, v88, self->_collapsedGroupUids, v89);
      objc_msgSend_addUuidsFromSet_(v41, v90, v44, v91);
      v48 = objc_msgSend_expandGroupUidsForFlattening_forDimension_(v23, v92, v41, 1);
      if (objc_msgSend_count(v48, v93, v94, v95))
      {
        if (v48)
        {
          objc_msgSend_uuidsAsVector(v48, v96, v97, v98);
        }

        else
        {
          __p = 0;
          v103 = 0;
          v104 = 0;
        }

        v99 = objc_msgSend_mutableColumnIndexesForUIDs_(v12, v96, &__p, v98);
LABEL_23:
        v55 = v99;
        if (__p)
        {
          v103 = __p;
          operator delete(__p);
        }

        goto LABEL_25;
      }
    }

    v55 = 0;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  if (objc_msgSend_isCategorized(v12, v16, v17, v18) && objc_msgSend_forRows(self, v56, v57, v58))
  {
    v19 = objc_msgSend_groupBy(v12, v59, v60, v61);
    v23 = objc_msgSend_rowUidsForGroupUids_(v19, v62, self->_collapsedGroupUids, v63);
    v38 = objc_msgSend_childGroupUidsForGroupUids_(v19, v64, self->_collapsedGroupUids, v65);
    objc_msgSend_addUuidsFromSet_(v23, v66, v38, v67);
    v41 = objc_msgSend_labelRowUidsForGroupUids_(v19, v68, v38, v69);
    objc_msgSend_addUuidsFromSet_(v23, v70, v41, v71);
    if (objc_msgSend_count(v23, v72, v73, v74))
    {
      if (v23)
      {
        objc_msgSend_uuidsAsVector(v23, v75, v76, v77);
      }

      else
      {
        __p = 0;
        v103 = 0;
        v104 = 0;
      }

      v55 = objc_msgSend_mutableRowIndexesForUIDs_(v12, v75, &__p, v77);
      if (__p)
      {
        v103 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v55 = 0;
    }

    goto LABEL_26;
  }

  v55 = 0;
LABEL_27:

LABEL_28:
  v5 = v55;
  pthread_mutex_lock(&self->_viewIndexesMutex);
  objc_storeStrong(&self->_collapsedIndexes, v55);
  pthread_mutex_unlock(&self->_viewIndexesMutex);

  if (v5)
  {
LABEL_29:
    v100 = objc_msgSend_mutableCopy(v5, v6, v7, v8);

    goto LABEL_30;
  }

  v100 = objc_opt_new();
LABEL_30:

  return v100;
}

- (id)p_hiddenIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v5 = self->_combinedHiddenIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v5)
  {
    v9 = objc_msgSend_tableTranslator(self, v6, v7, v8);
    v13 = objc_msgSend_p_baseHiddenIndexes(self, v10, v11, v12);
    if (objc_msgSend_areMapsStale(v9, v14, v15, v16))
    {
      v20 = 0;
    }

    else
    {
      if (objc_msgSend_count(v13, v17, v18, v19))
      {
        if (objc_msgSend_forRows(self, v21, v22, v23))
        {
          objc_msgSend_viewRowIndexesForBaseRowIndexes_(v9, v24, v13, v25);
        }

        else
        {
          objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v9, v24, v13, v25);
        }
        v26 = ;
        v20 = objc_msgSend_mutableCopy(v26, v27, v28, v29);
      }

      else
      {
        v20 = 0;
      }

      v30 = objc_msgSend_p_summaryHiddenIndexes(self, v21, v22, v23);
      if (objc_msgSend_count(v30, v31, v32, v33))
      {
        if (v20)
        {
          objc_msgSend_addIndexes_(v20, v34, v30, v36);
        }

        else
        {
          v20 = objc_msgSend_mutableCopy(v30, v34, v35, v36);
        }
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_combinedHiddenIndexes, v20);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v5 = v20;
  }

  return v5;
}

- (id)p_filteredIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v5 = self->_filteredIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v5)
  {
    v9 = objc_msgSend_tableTranslator(self, v6, v7, v8);
    v13 = v9;
    if (self->_baseFilteredIndexes && (objc_msgSend_areMapsStale(v9, v10, v11, v12) & 1) == 0)
    {
      v18 = objc_msgSend_forRows(self, v14, v15, v16);
      baseFilteredIndexes = self->_baseFilteredIndexes;
      if (v18)
      {
        objc_msgSend_viewRowIndexesForBaseRowIndexes_(v13, v19, baseFilteredIndexes, v20);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v13, v19, baseFilteredIndexes, v20);
      }
      v22 = ;
      v17 = objc_msgSend_mutableCopy(v22, v23, v24, v25);

      v29 = objc_msgSend_p_summaryFilteredIndexes(self, v26, v27, v28);
      if (objc_msgSend_count(v29, v30, v31, v32))
      {
        if (v17)
        {
          objc_msgSend_addIndexes_(v17, v33, v29, v35);
        }

        else
        {
          v17 = objc_msgSend_mutableCopy(v29, v33, v34, v35);
        }
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_filteredIndexes, v17);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    else
    {
      v17 = 0;
    }

    v5 = v17;
  }

  return v5;
}

- (id)p_summaryFilteredIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v5 = self->_summaryFilteredIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v5)
  {
    v12 = objc_msgSend_tableTranslator(self, v6, v7, v8);
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTHiddenStateExtent p_summaryFilteredIndexes]", v11);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1298, 0, "invalid nil value for '%{public}s'", "translator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    }

    if (objc_msgSend_areMapsStale(v12, v9, v10, v11))
    {
      v25 = 0;
    }

    else
    {
      if (self->_summaryHiddenByUid.__table_.__size_)
      {
        __p = 0;
        v36 = 0;
        v37 = 0;
        for (i = self->_summaryHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
        {
          if ((i[2] & 2) != 0)
          {
            v34 = i[1];
            sub_221083454(&__p, &v34);
          }
        }

        if (objc_msgSend_forRows(self, v22, v23, v24))
        {
          objc_msgSend_viewRowIndexesForUIDs_(v12, v27, &__p, v28);
        }

        else
        {
          objc_msgSend_viewColumnIndexesForUIDs_(v12, v27, &__p, v28);
        }
        v29 = ;
        v25 = objc_msgSend_mutableCopy(v29, v30, v31, v32);

        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v25 = objc_opt_new();
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_summaryFilteredIndexes, v25);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v5 = v25;
  }

  return v5;
}

- (id)p_userHiddenIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v5 = self->_userHiddenIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v5)
  {
    v9 = objc_msgSend_tableTranslator(self, v6, v7, v8);
    v13 = v9;
    if (self->_baseUserHiddenIndexes && (objc_msgSend_areMapsStale(v9, v10, v11, v12) & 1) == 0)
    {
      v18 = objc_msgSend_forRows(self, v14, v15, v16);
      baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
      if (v18)
      {
        objc_msgSend_viewRowIndexesForBaseRowIndexes_(v13, v19, baseUserHiddenIndexes, v20);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v13, v19, baseUserHiddenIndexes, v20);
      }
      v22 = ;
      v17 = objc_msgSend_mutableCopy(v22, v23, v24, v25);

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_userHiddenIndexes, v17);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    else
    {
      v17 = 0;
    }

    v5 = v17;
  }

  return v5;
}

- (id)p_summaryPivotHiddenIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v5 = self->_summaryPivotHiddenIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v5)
  {
    v12 = objc_msgSend_tableTranslator(self, v6, v7, v8);
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTHiddenStateExtent p_summaryPivotHiddenIndexes]", v11);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1365, 0, "invalid nil value for '%{public}s'", "translator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    }

    if (objc_msgSend_areMapsStale(v12, v9, v10, v11))
    {
      v25 = 0;
    }

    else
    {
      if (self->_summaryHiddenByUid.__table_.__size_)
      {
        __p = 0;
        v36 = 0;
        v37 = 0;
        for (i = self->_summaryHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
        {
          if ((i[2] & 0x10) != 0)
          {
            v34 = i[1];
            sub_221083454(&__p, &v34);
          }
        }

        if (objc_msgSend_forRows(self, v22, v23, v24))
        {
          objc_msgSend_viewRowIndexesForUIDs_(v12, v27, &__p, v28);
        }

        else
        {
          objc_msgSend_viewColumnIndexesForUIDs_(v12, v27, &__p, v28);
        }
        v29 = ;
        v25 = objc_msgSend_mutableCopy(v29, v30, v31, v32);

        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v25 = objc_opt_new();
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_summaryPivotHiddenIndexes, v25);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v5 = v25;
  }

  return v5;
}

- (BOOL)hideAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v5 = *&index._index;
  v10 = objc_msgSend_tableTranslator(self, a2, *&index._index, action);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent hideAtViewIndex:forAction:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1400, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_viewMap(v10, v7, v8, v9);
  v23 = v20;
  v28 = 0;
  v29 = 0;
  if (self->_forRows)
  {
    v24 = objc_msgSend_rowUIDForRowIndex_(v20, v21, v5, v22, v28, v29);
  }

  else
  {
    v24 = objc_msgSend_columnUIDForColumnIndex_(v20, v21, v5, v22, v28, v29);
  }

  v28 = v24;
  v29 = v25;
  v26 = objc_msgSend_hideAtUid_forAction_(self, v25, &v28, actionCopy);

  return v26;
}

- (BOOL)showAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v5 = *&index._index;
  v10 = objc_msgSend_tableTranslator(self, a2, *&index._index, action);
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent showAtViewIndex:forAction:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1409, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_viewMap(v10, v7, v8, v9);
  v23 = v20;
  v28 = 0;
  v29 = 0;
  if (self->_forRows)
  {
    v24 = objc_msgSend_rowUIDForRowIndex_(v20, v21, v5, v22, v28, v29);
  }

  else
  {
    v24 = objc_msgSend_columnUIDForColumnIndex_(v20, v21, v5, v22, v28, v29);
  }

  v28 = v24;
  v29 = v25;
  v26 = objc_msgSend_showAtUid_forAction_(self, v25, &v28, actionCopy);

  return v26;
}

- (void)hideAtViewIndexes:(id)indexes forAction:(unsigned __int8)action
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22138BFF8;
  v4[3] = &unk_278463938;
  v4[4] = self;
  actionCopy = action;
  objc_msgSend_enumerateIndexesUsingBlock_(indexes, a2, v4, action);
}

- (void)showAtViewIndexes:(id)indexes forAction:(unsigned __int8)action
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22138C088;
  v4[3] = &unk_278463938;
  v4[4] = self;
  actionCopy = action;
  objc_msgSend_enumerateIndexesUsingBlock_(indexes, a2, v4, action);
}

- (BOOL)hideAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v9 = objc_msgSend_tableTranslator(self, a2, *&index._index, action);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent hideAtBaseIndex:forAction:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1430, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  self->_invalidateViewGeometry = 1;
  if (self->_forRows)
  {
    v24 = objc_msgSend_rowUIDForBaseRowIndex_(v9, v7, index._index, v8);
    v25 = v19;
    v20 = objc_msgSend_hideAtUid_forAction_(self, v19, &v24, actionCopy);
  }

  else
  {
    v24 = objc_msgSend_columnUIDForBaseColumnIndex_(v9, v7, LOWORD(index._index), v8);
    v25 = v21;
    v20 = objc_msgSend_hideAtUid_forAction_(self, v21, &v24, actionCopy);
  }

  v22 = v20;

  return v22;
}

- (BOOL)showAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v9 = objc_msgSend_tableTranslator(self, a2, *&index._index, action);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent showAtBaseIndex:forAction:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1444, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  self->_invalidateViewGeometry = 1;
  if (self->_forRows)
  {
    v24 = objc_msgSend_rowUIDForBaseRowIndex_(v9, v7, index._index, v8);
    v25 = v19;
    v20 = objc_msgSend_showAtUid_forAction_(self, v19, &v24, actionCopy);
  }

  else
  {
    v24 = objc_msgSend_columnUIDForBaseColumnIndex_(v9, v7, LOWORD(index._index), v8);
    v25 = v21;
    v20 = objc_msgSend_showAtUid_forAction_(self, v21, &v24, actionCopy);
  }

  v22 = v20;

  return v22;
}

- (void)clearAllFiltered
{
  __p = 0;
  v53 = 0;
  v54 = 0;
  for (i = self->_baseHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
  {
    if (*(i + 32))
    {
      v6 = (*(i + 32) & 2) == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v51 = *(i + 1);
      sub_221083454(&__p, &v51);
    }
  }

  v7 = objc_msgSend_count(self->_baseFilteredIndexes, a2, v2, v3);
  if (v7 != (v53 - __p) >> 4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent clearAllFiltered]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1469, 0, "Expected counts to match.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  for (j = self->_summaryHiddenByUid.__table_.__first_node_.__next_; j; j = *j)
  {
    if (*(j + 32))
    {
      v21 = (*(j + 32) & 2) == 0;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      v51 = *(j + 1);
      sub_221083454(&__p, &v51);
    }
  }

  v22 = __p;
  v23 = v53;
  v24 = __p != v53;
  if (__p != v53)
  {
    do
    {
      v25 = sub_2210875C4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v22);
      if (v25)
      {
        v26 = *(v25 + 32);
        if ((v26 & 0xFFFFFFFD) != 0)
        {
          *&v51 = v22;
          *(sub_2213958D0(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v22, &unk_2217E1891, &v51) + 32) = v26 & 0xFD;
        }

        else
        {
          sub_2211F2EF4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v22);
        }
      }

      v27 = sub_2210875C4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v22);
      if (v27)
      {
        v28 = *(v27 + 32);
        if ((v28 & 0xFFFFFFFD) != 0)
        {
          *&v51 = v22;
          *(sub_2213958D0(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v22, &unk_2217E1891, &v51) + 32) = v28 & 0xFD;
        }

        else
        {
          sub_2211F2EF4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v22);
        }
      }

      v22 += 2;
    }

    while (v22 != v23);
  }

  if (objc_msgSend_count(self->_baseFilteredIndexes, v8, v9, v10))
  {
    objc_msgSend_removeAllIndexes(self->_baseFilteredIndexes, v29, v30, v31);
    v24 = 1;
  }

  if (objc_msgSend_count(self->_summaryFilteredIndexes, v29, v30, v31))
  {
    objc_msgSend_removeAllIndexes(self->_summaryFilteredIndexes, v32, v33, v34);
  }

  else if (!v24)
  {
    goto LABEL_33;
  }

  self->_invalidateViewGeometry = 1;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v39 = objc_msgSend_tableModel(self, v36, v37, v38);
  v50[0] = objc_msgSend_tableUID(v39, v40, v41, v42);
  v50[1] = v43;
  objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v43, v50, v44);
  objc_msgSend_markCellRefAsDirty_(WeakRetained, v45, &v51, v46);

  objc_msgSend_verifyIndexesAreConsistent(self, v47, v48, v49);
LABEL_33:
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }
}

- (void)clearAllPivotHidden
{
  if (objc_msgSend_count(self->_summaryPivotHiddenIndexes, a2, v2, v3) || self->_summaryHiddenByUid.__table_.__size_)
  {
    objc_msgSend_removeAllIndexes(self->_summaryPivotHiddenIndexes, v5, v6, v7);
    __p = 0;
    v32 = 0;
    v33 = 0;
    next = self->_summaryHiddenByUid.__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        if (*(next + 32))
        {
          v9 = (*(next + 32) & 0x10) == 0;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
          v30 = *(next + 1);
          sub_221083454(&__p, &v30);
        }

        next = *next;
      }

      while (next);
      v10 = __p;
      v11 = v32;
      if (__p != v32)
      {
        do
        {
          v12 = sub_2210875C4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v10);
          if (v12)
          {
            v13 = *(v12 + 32);
            if ((v13 & 0xFFFFFFEF) != 0)
            {
              *&v30 = v10;
              *(sub_2213958D0(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v10, &unk_2217E1891, &v30) + 32) = v13 & 0xEF;
            }

            else
            {
              sub_2211F2EF4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v10);
            }
          }

          v10 += 2;
        }

        while (v10 != v11);
      }
    }

    self->_invalidateViewGeometry = 1;
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v18 = objc_msgSend_tableModel(self, v15, v16, v17);
    v29[0] = objc_msgSend_tableUID(v18, v19, v20, v21);
    v29[1] = v22;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v22, v29, v23);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v24, &v30, v25);

    objc_msgSend_verifyIndexesAreConsistent(self, v26, v27, v28);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }
  }
}

- (unsigned)hidingActionForViewIndex:(TSUViewColumnOrRowIndex)index
{
  v4 = *&index._index;
  if (objc_msgSend_anyHidden(self, a2, *&index._index, v3))
  {
    v9 = objc_msgSend_tableTranslator(self, v6, v7, v8);
    v15 = objc_msgSend_viewMap(v9, v10, v11, v12);
    if (!v9)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTHiddenStateExtent hidingActionForViewIndex:]", v14);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1594, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    v37 = 0;
    v38 = 0;
    if (self->_forRows)
    {
      v25 = objc_msgSend_rowUIDForRowIndex_(v15, v13, v4, v14, v37, v38);
    }

    else
    {
      v25 = objc_msgSend_columnUIDForColumnIndex_(v15, v13, v4, v14, v37, v38);
    }

    v37 = v25;
    v38 = v26;
    v28 = objc_msgSend_hidingActionForUid_(self, v26, &v37, v27);
  }

  else
  {
    v28 = 0;
  }

  if (objc_msgSend_anyCollapsed(self, v6, v7, v8))
  {
    v32 = objc_msgSend_p_collapsedIndexes(self, v29, v30, v31);
    v35 = objc_msgSend_containsIndex_(v32, v33, v4, v34);

    if (v35)
    {
      v28 |= 4u;
    }
  }

  return v28;
}

- (unsigned)hidingActionForBaseIndex:(TSUModelColumnOrRowIndex)index
{
  if (!objc_msgSend_anyHidden(self, a2, *&index._index, v3))
  {
    return 0;
  }

  v11 = objc_msgSend_tableTranslator(self, v6, v7, v8);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTHiddenStateExtent hidingActionForBaseIndex:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1615, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v26 = 0;
  v27 = 0;
  if (self->_forRows)
  {
    v21 = objc_msgSend_rowUIDForBaseRowIndex_(v11, v9, index._index, v10, v26, v27);
  }

  else
  {
    v21 = objc_msgSend_columnUIDForBaseColumnIndex_(v11, v9, LOWORD(index._index), v10, v26, v27);
  }

  v26 = v21;
  v27 = v22;
  v24 = objc_msgSend_hidingActionForUid_(self, v22, &v26, v23);

  return v24;
}

- (id)indexesOfHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyCollapsed(self, a2, range.location, range.length))
  {
    v9 = objc_msgSend_p_collapsedIndexes(self, v6, v7, v8);
    if (objc_msgSend_anyHidden(self, v10, v11, v12))
    {
      v16 = objc_msgSend_p_hiddenIndexes(self, v13, v14, v15);
      objc_msgSend_addIndexes_(v9, v17, v16, v18);
    }

    v19 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v13, v9, location, length);
LABEL_7:
    v24 = v19;

    if (v24)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (objc_msgSend_anyHidden(self, v6, v7, v8))
  {
    v9 = objc_msgSend_p_hiddenIndexes(self, v20, v21, v22);
    v19 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v23, v9, location, length);
    goto LABEL_7;
  }

LABEL_8:
  v24 = objc_opt_new();
LABEL_9:

  return v24;
}

- (id)indexesOfHiddenInBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (!objc_msgSend_anyHidden(self, a2, range.location, range.length) || (objc_msgSend_p_baseHiddenIndexes(self, v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v10, v9, location, length), v11 = objc_claimAutoreleasedReturnValue(), v9, !v11))
  {
    v11 = objc_opt_new();
  }

  return v11;
}

- (id)indexesOfUserHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_p_userHiddenIndexes(self, a2, range.location, range.length);
  v10 = objc_msgSend_count(v6, v7, v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_p_userHiddenIndexes(self, v11, v12, v13);
    v16 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v15, v14, location, length);
  }

  else
  {
    v16 = objc_opt_new();
  }

  return v16;
}

- (id)indexesOfFilteredInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_p_filteredIndexes(self, a2, range.location, range.length);
  v10 = objc_msgSend_count(v6, v7, v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_p_filteredIndexes(self, v11, v12, v13);
    v16 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v15, v14, location, length);
  }

  else
  {
    v16 = objc_opt_new();
  }

  return v16;
}

- (id)indexesOfCollapsedInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyCollapsed(self, a2, range.location, range.length))
  {
    v9 = objc_msgSend_p_collapsedIndexes(self, v6, v7, v8);
    v11 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v10, v9, location, length);
  }

  else
  {
    v11 = objc_opt_new();
  }

  return v11;
}

- (id)indexesOfVisibleInRange:(_NSRange)range
{
  v4 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length);
  v7 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self, v5, v4, v6);

  return v7;
}

- (id)indexesOfUserVisibleInRange:(_NSRange)range
{
  v4 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], a2, range.location, range.length);
  v8 = objc_msgSend_p_userHiddenIndexes(self, v5, v6, v7);
  if (objc_msgSend_count(v8, v9, v10, v11))
  {
    objc_msgSend_removeIndexes_(v4, v12, v8, v13);
  }

  return v4;
}

- (id)indexesOfVisibleIndexesInIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (((objc_msgSend_anyHidden(self, v5, v6, v7) & 1) != 0 || objc_msgSend_anyCollapsed(self, v8, v9, v10)) && objc_msgSend_count(indexesCopy, v8, v9, v10))
  {
    v14 = objc_msgSend_mutableCopy(indexesCopy, v11, v12, v13);
    v18 = objc_msgSend_p_hiddenIndexes(self, v15, v16, v17);
    if (objc_msgSend_count(v18, v19, v20, v21))
    {
      objc_msgSend_removeIndexes_(v14, v22, v18, v24);
    }

    if (objc_msgSend_anyCollapsed(self, v22, v23, v24))
    {
      v28 = objc_msgSend_p_collapsedIndexes(self, v25, v26, v27);
      objc_msgSend_removeIndexes_(v14, v29, v28, v30);
    }
  }

  else
  {
    v14 = indexesCopy;
  }

  return v14;
}

- (unsigned)numberOfHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyCollapsed(self, a2, range.location, range.length))
  {
    v9 = objc_msgSend_anyHidden(self, v6, v7, v8);
    v13 = objc_msgSend_p_collapsedIndexes(self, v10, v11, v12);
    v17 = v13;
    if (v9)
    {
      v18 = objc_msgSend_p_hiddenIndexes(self, v14, v15, v16);
      objc_msgSend_addIndexes_(v17, v19, v18, v20);

      v22 = objc_msgSend_countOfIndexesInRange_(v17, v21, location, length);
    }

    else
    {
      v22 = objc_msgSend_countOfIndexesInRange_(v13, v14, location, length);
    }
  }

  else
  {
    v17 = objc_msgSend_p_hiddenIndexes(self, v6, v7, v8);
    v22 = objc_msgSend_countOfIndexesInRange_(v17, v23, location, length);
  }

  v24 = v22;

  return v24;
}

- (unsigned)numberOfHiddenInBaseRange:(_NSRange)range
{
  v3 = objc_msgSend_indexesOfHiddenInBaseRange_(self, a2, range.location, range.length);
  v7 = objc_msgSend_count(v3, v4, v5, v6);

  return v7;
}

- (unsigned)numberOfUserHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_p_userHiddenIndexes(self, a2, range.location, range.length);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_p_userHiddenIndexes(self, v10, v11, v12);
    v15 = objc_msgSend_countOfIndexesInRange_(v13, v14, location, length);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)anyHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyHidden(self, a2, range.location, range.length))
  {
    v9 = objc_msgSend_p_hiddenIndexes(self, v6, v7, v8);
    if (objc_msgSend_count(v9, v10, v11, v12))
    {
      v14 = objc_msgSend_intersectsIndexesInRange_(v9, v13, location, length);

      if (v14)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  if (!objc_msgSend_anyCollapsed(self, v6, v7, v8))
  {
    return 0;
  }

  v19 = objc_msgSend_p_collapsedIndexes(self, v16, v17, v18);
  v15 = objc_msgSend_intersectsIndexesInRange_(v19, v20, location, length);

  return v15;
}

- (BOOL)anyHiddenInRange:(_NSRange)range forAction:(unsigned __int8)action
{
  actionCopy = action;
  length = range.length;
  location = range.location;
  if (!objc_msgSend_anyHidden(self, a2, range.location, range.length))
  {
    return 0;
  }

  if (actionCopy <= 1)
  {
    if (!actionCopy)
    {
      return 0;
    }

    if (actionCopy == 1)
    {
LABEL_6:
      v11 = objc_msgSend_p_userHiddenIndexes(self, v8, v9, v10);
      if (objc_msgSend_count(v11, v12, v13, v14))
      {
        v18 = objc_msgSend_p_userHiddenIndexes(self, v15, v16, v17);
        v20 = objc_msgSend_intersectsIndexesInRange_(v18, v19, location, length);
LABEL_15:
        v30 = v20;

LABEL_32:
        return v30;
      }

      goto LABEL_16;
    }
  }

  else
  {
    switch(actionCopy)
    {
      case 2:
        v11 = objc_msgSend_p_filteredIndexes(self, v8, v9, v10);
        if (objc_msgSend_count(v11, v31, v32, v33))
        {
          v18 = objc_msgSend_p_filteredIndexes(self, v34, v35, v36);
          v20 = objc_msgSend_intersectsIndexesInRange_(v18, v37, location, length);
          goto LABEL_15;
        }

LABEL_16:
        v30 = 0;
        goto LABEL_32;
      case 4:
        if (objc_msgSend_anyCollapsed(self, v8, v9, v10))
        {
          goto LABEL_31;
        }

        return 0;
      case 8:
        goto LABEL_6;
    }
  }

  if ((actionCopy & 9) != 0)
  {
    v21 = objc_msgSend_p_userHiddenIndexes(self, v8, v9, v10);
    if (objc_msgSend_count(v21, v22, v23, v24))
    {
      v28 = objc_msgSend_p_userHiddenIndexes(self, v25, v26, v27);
      v30 = objc_msgSend_intersectsIndexesInRange_(v28, v29, location, length);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  if ((actionCopy & 2) != 0 && (v30 & 1) == 0)
  {
    v41 = objc_msgSend_p_filteredIndexes(self, v8, v9, v10);
    if (objc_msgSend_count(v41, v42, v43, v44))
    {
      v48 = objc_msgSend_p_filteredIndexes(self, v45, v46, v47);
      v30 = objc_msgSend_intersectsIndexesInRange_(v48, v49, location, length);
    }

    else
    {
      v30 = 0;
    }
  }

  if ((actionCopy & 4) != 0 && (v30 & 1) == 0)
  {
    if (objc_msgSend_anyCollapsed(self, v8, v9, v10))
    {
LABEL_31:
      v11 = objc_msgSend_p_collapsedIndexes(self, v38, v39, v40);
      v30 = objc_msgSend_intersectsIndexesInRange_(v11, v50, location, length);
      goto LABEL_32;
    }

    return 0;
  }

  return v30;
}

- (BOOL)hasHiddenAtIndex:(unsigned int)index
{
  v6 = objc_msgSend_p_hiddenIndexes(self, a2, *&index, v3);
  if (objc_msgSend_count(v6, v7, v8, v9) && (objc_msgSend_containsIndex_(v6, v10, index, v12) & 1) != 0)
  {
    v13 = 1;
  }

  else if (objc_msgSend_anyCollapsed(self, v10, v11, v12))
  {
    v17 = objc_msgSend_p_collapsedIndexes(self, v14, v15, v16);
    v13 = objc_msgSend_containsIndex_(v17, v18, index, v19);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unsigned)findFirstVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end
{
  if (objc_msgSend_anyCollapsed(self, a2, *&begin, *&end))
  {
    v10 = objc_msgSend_p_collapsedIndexes(self, v7, v8, v9);
    v14 = objc_msgSend_p_hiddenIndexes(self, v11, v12, v13);
    if (objc_msgSend_count(v14, v15, v16, v17))
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_orIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v18, v10, v14, begin, end);
    }

    else
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v18, v10, begin, end);
    }

    IndexNotInIndexSet_beginRange_pastEndRange = IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange;
  }

  else
  {
    v10 = objc_msgSend_p_hiddenIndexes(self, v7, v8, v9);
    IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v20, v10, begin, end);
  }

  if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return IndexNotInIndexSet_beginRange_pastEndRange;
  }
}

- (unsigned)findLastVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end
{
  if (objc_msgSend_anyCollapsed(self, a2, *&begin, *&end))
  {
    v10 = objc_msgSend_p_collapsedIndexes(self, v7, v8, v9);
    v14 = objc_msgSend_p_hiddenIndexes(self, v11, v12, v13);
    if (objc_msgSend_count(v14, v15, v16, v17))
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_orIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v18, v10, v14, begin, end);
    }

    else
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v18, v10, begin, end);
    }

    IndexNotInIndexSet_beginRange_pastEndRange = IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange;
  }

  else
  {
    v10 = objc_msgSend_p_hiddenIndexes(self, v7, v8, v9);
    IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v20, v10, begin, end);
  }

  if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return IndexNotInIndexSet_beginRange_pastEndRange;
  }
}

- (unsigned)indexOfVisibleAfterIndex:(unsigned int)index
{
  v9 = objc_msgSend_tableTranslator(self, a2, *&index, v3);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTHiddenStateExtent indexOfVisibleAfterIndex:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1876, 0, "Can't use this method without a TSTTableTranslator to provide tableSize");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v24.origin = objc_msgSend_range(v9, v6, v7, v8);
  v24.size = v19;
  if (self->_forRows)
  {
    v20 = TSUCellRect::lastRow(&v24);
  }

  else
  {
    v20 = TSUCellRect::lastColumn(&v24);
  }

  if (v20 <= index)
  {
    FirstVisibleIndexInBegin_afterEnd = 0x7FFFFFFF;
  }

  else
  {
    FirstVisibleIndexInBegin_afterEnd = objc_msgSend_findFirstVisibleIndexInBegin_afterEnd_(self, v21, index + 1, v20 + 1, *&v24.origin, *&v24.size);
  }

  return FirstVisibleIndexInBegin_afterEnd;
}

- (unsigned)indexOfVisibleAfterAndIncludingIndex:(unsigned int)index
{
  v4 = *&index;
  v9 = objc_msgSend_tableTranslator(self, a2, *&index, v3);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTHiddenStateExtent indexOfVisibleAfterAndIncludingIndex:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1891, 0, "Can't use this method without a TSTTableTranslator to provide tableSize");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v24.origin = objc_msgSend_range(v9, v6, v7, v8);
  v24.size = v19;
  if (self->_forRows)
  {
    v20 = TSUCellRect::lastRow(&v24);
  }

  else
  {
    v20 = TSUCellRect::lastColumn(&v24);
  }

  if (v20 >= v4)
  {
    FirstVisibleIndexInBegin_afterEnd = objc_msgSend_findFirstVisibleIndexInBegin_afterEnd_(self, v21, v4, v20 + 1, *&v24.origin, *&v24.size);
  }

  else
  {
    FirstVisibleIndexInBegin_afterEnd = 0x7FFFFFFF;
  }

  return FirstVisibleIndexInBegin_afterEnd;
}

- (void)insertBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseUserHiddenIndexes, a2, range.location, range.length);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseFilteredIndexes, v6, location, length);
  self->_invalidateViewGeometry = 1;

  objc_msgSend_clearAllCachedRowIndexes(self, v7, v8, v9);
}

- (void)deleteBaseRange:(_NSRange)range withUids:(const void *)uids
{
  length = range.length;
  location = range.location;
  v8 = -range.length;
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseUserHiddenIndexes, a2, range.location + range.length, -range.length);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseFilteredIndexes, v9, location + length, v8);
  v13 = *uids;
  v14 = *(uids + 1);
  while (v13 != v14)
  {
    sub_2211F2EF4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v13);
    v13 += 2;
  }

  self->_invalidateViewGeometry = 1;

  objc_msgSend_clearAllCachedRowIndexes(self, v10, v11, v12);
}

- (void)moveBaseRangeFrom:(_NSRange)from toIndex:(TSUModelColumnOrRowIndex)index
{
  length = from.length;
  location = from.location;
  index = index._index;
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_baseUserHiddenIndexes, a2, from.location, from.length, index._index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_baseFilteredIndexes, v8, location, length, index);
  self->_invalidateViewGeometry = 1;
  objc_msgSend_clearAllCachedRowIndexes(self, v9, v10, v11);
  objc_msgSend_dirtyFilterStateForHeaders(self, v12, v13, v14);
  objc_msgSend_dirtyFilterStateForFooters(self, v15, v16, v17);

  objc_msgSend_dirtyFilterStateForRowRange_(self, v18, index, length);
}

- (void)moveViewRangeOnlyFrom:(_NSRange)from toIndex:(TSUViewColumnOrRowIndex)index
{
  length = from.length;
  location = from.location;
  index = index._index;
  pthread_mutex_lock(&self->_viewIndexesMutex);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_summaryFilteredIndexes, v8, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_summaryPivotHiddenIndexes, v9, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_userHiddenIndexes, v10, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_filteredIndexes, v11, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_combinedHiddenIndexes, v12, location, length, index);

  pthread_mutex_unlock(&self->_viewIndexesMutex);
}

+ (void)swapIndexesWithIndexSet:(id)set index:(unint64_t)index withIndex:(unint64_t)withIndex
{
  setCopy = set;
  if (setCopy)
  {
    v9 = objc_msgSend_containsIndex_(setCopy, v7, index, v8);
    v14 = objc_msgSend_containsIndex_(setCopy, v10, withIndex, v11);
    if (v9 != v14)
    {
      objc_msgSend_removeIndex_(setCopy, v12, index, v13);
      objc_msgSend_removeIndex_(setCopy, v15, withIndex, v16);
      if (v9)
      {
        objc_msgSend_addIndex_(setCopy, v17, withIndex, v18);
      }

      if (v14)
      {
        objc_msgSend_addIndex_(setCopy, v17, index, v18);
      }
    }
  }
}

- (void)swapBaseIndex:(TSUModelColumnOrRowIndex)index withIndex:(TSUModelColumnOrRowIndex)withIndex
{
  index = index._index;
  v6 = withIndex._index;
  objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, a2, self->_baseUserHiddenIndexes, index._index, withIndex._index);
  objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v7, self->_baseFilteredIndexes, index, v6);
  v10 = objc_msgSend_p_viewIndexForBaseIndex_(self, v8, index, v9);
  v13 = objc_msgSend_p_viewIndexForBaseIndex_(self, v11, v6, v12);
  if (v10 != 0x7FFFFFFF)
  {
    v17 = v13;
    if (v13 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v18, self->_userHiddenIndexes, v10, v17);
      objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v19, self->_filteredIndexes, v10, v17);
      objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v20, self->_combinedHiddenIndexes, v10, v17);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }

  objc_msgSend_clearAllCachedRowIndexes(self, v14, v15, v16);
}

- (id)p_baseHiddenIndexes
{
  p_baseFilteredIndexes = &self->_baseFilteredIndexes;
  v6 = objc_msgSend_count(self->_baseFilteredIndexes, a2, v2, v3);
  baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
  p_baseUserHiddenIndexes = &self->_baseUserHiddenIndexes;
  v12 = objc_msgSend_count(baseUserHiddenIndexes, v9, v10, v11);
  if (v6)
  {
    v16 = v12 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (v6 | v12)
    {
      if (v6)
      {
        v20 = p_baseFilteredIndexes;
      }

      else
      {
        v20 = p_baseUserHiddenIndexes;
      }

      v17 = *v20;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = objc_msgSend_mutableCopy(*p_baseFilteredIndexes, v13, v14, v15);
    objc_msgSend_addIndexes_(v17, v18, *p_baseUserHiddenIndexes, v19);
  }

  return v17;
}

- (id)p_summaryHiddenIndexes
{
  v5 = objc_msgSend_p_summaryFilteredIndexes(self, a2, v2, v3);
  v9 = objc_msgSend_p_summaryPivotHiddenIndexes(self, v6, v7, v8);
  v13 = objc_msgSend_count(v5, v10, v11, v12);
  v17 = objc_msgSend_count(v9, v14, v15, v16);
  if (v13 && v17)
  {
    v21 = objc_msgSend_mutableCopy(v5, v18, v19, v20);
    objc_msgSend_addIndexes_(v21, v22, v9, v23);
  }

  else if (v13 | v17)
  {
    if (v13)
    {
      v24 = objc_msgSend_mutableCopy(v5, v18, v19, v20);
    }

    else
    {
      v24 = objc_msgSend_mutableCopy(v9, v18, v19, v20);
    }

    v21 = v24;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)mutableUserHiddenIndexes
{
  v8 = objc_msgSend_p_userHiddenIndexes(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_p_userHiddenIndexes(self, v5, v6, v7);
    v13 = objc_msgSend_mutableCopy(v9, v10, v11, v12);
  }

  else
  {
    v13 = objc_opt_new();
  }

  return v13;
}

- (id)mutableFilteredIndexes
{
  v8 = objc_msgSend_p_filteredIndexes(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_p_filteredIndexes(self, v5, v6, v7);
    v13 = objc_msgSend_mutableCopy(v9, v10, v11, v12);
  }

  else
  {
    v13 = objc_opt_new();
  }

  return v13;
}

- (id)hiddenOrCollapsedIndexes
{
  v5 = objc_msgSend_p_hiddenIndexes(self, a2, v2, v3);
  if (objc_msgSend_anyCollapsed(self, v6, v7, v8))
  {
    if (objc_msgSend_count(v5, v9, v10, v11))
    {
      v15 = objc_msgSend_mutableCopy(v5, v12, v13, v14);
      v19 = objc_msgSend_p_collapsedIndexes(self, v16, v17, v18);
      objc_msgSend_addIndexes_(v15, v20, v19, v21);
    }

    else
    {
      v15 = objc_msgSend_p_collapsedIndexes(self, v12, v13, v14);
    }

    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_5:
    v22 = v15;
    goto LABEL_9;
  }

  v15 = v5;
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_8:
  v22 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v9, v10, v11);
LABEL_9:
  v23 = v22;

  return v23;
}

- (id)mutablePivotHiddenIndexes
{
  v4 = objc_msgSend_p_summaryPivotHiddenIndexes(self, a2, v2, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_mutableCopy(v4, v5, v6, v7);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  return v10;
}

- (TSTHiddenStateExtent)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner
{
  unarchiverCopy = unarchiver;
  obj = owner;
  v11 = objc_msgSend_initWithHiddenStatesOwner_forRows_(self, v9, obj, *(archive + 44) == 1);
  if (v11)
  {
    if (*(archive + 18))
    {
      v12 = *(archive + 18);
    }

    else
    {
      v12 = MEMORY[0x277D809E0];
    }

    v11->_hiddenStateExtentUid._lower = TSKUIDStruct::loadFromMessage(v12, v10);
    v11->_hiddenStateExtentUid._upper = v13;
    v97 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v13, v14, v15);
    v16 = *(archive + 14);
    if (v16 < 1)
    {
      thresholdCellValues = v11->_thresholdCellValues;
      v11->_thresholdCellValues = 0;
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CBEB18]);
      v20 = objc_msgSend_initWithCapacity_(v17, v18, 8, v19);
      v21 = v11->_thresholdCellValues;
      v11->_thresholdCellValues = v20;

      v23 = 8;
      do
      {
        v24 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v22, *(*(archive + 8) + v23), v97);
        objc_msgSend_addObject_(v11->_thresholdCellValues, v25, v24, v26);

        v23 += 8;
        --v16;
      }

      while (v16);
    }

    v11->_needsToUpdateFilterSetForImport = *(archive + 180);
    v28 = *(archive + 8);
    if (v28 >= 1)
    {
      v29 = 8;
      do
      {
        v30 = *(*(archive + 5) + v29);
        *&v104 = 0;
        v104._singleRange._begin = 0;
        if (*(v30 + 24))
        {
          v31 = *(v30 + 24);
        }

        else
        {
          v31 = MEMORY[0x277D809E0];
        }

        *&v104 = TSKUIDStruct::loadFromMessage(v31, v22);
        v104._singleRange._begin = v22;
        v32 = *(v30 + 16);
        if ((v32 & 2) != 0)
        {
          v33 = *(v30 + 32);
          if ((v32 & 4) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v33 = 0;
          if ((v32 & 4) == 0)
          {
            goto LABEL_21;
          }
        }

        if (*(v30 + 33))
        {
          v34 = v33 | 2;
LABEL_23:
          v101._lower = &v104;
          *(sub_2213958D0(&v11->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, &v104, &unk_2217E1891, &v101) + 32) = v34;
          goto LABEL_24;
        }

LABEL_21:
        if (v33)
        {
          v34 = 1;
          goto LABEL_23;
        }

LABEL_24:
        v29 += 8;
        --v28;
      }

      while (v28);
    }

    v35 = *(archive + 32);
    v96 = v11;
    if (v35 >= 1)
    {
      v36 = 8;
      while (1)
      {
        v37 = *(*(archive + 17) + v36);
        *&v104 = 0;
        v104._singleRange._begin = 0;
        if (*(v37 + 24))
        {
          v38 = *(v37 + 24);
        }

        else
        {
          v38 = MEMORY[0x277D809E0];
        }

        *&v104 = TSKUIDStruct::loadFromMessage(v38, v22);
        v104._singleRange._begin = v22;
        v39 = *(v37 + 16);
        if ((v39 & 2) != 0)
        {
          v40 = *(v37 + 32);
          if ((v39 & 4) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v40 = 0;
          if ((v39 & 4) == 0)
          {
            goto LABEL_36;
          }
        }

        if (*(v37 + 33))
        {
          v40 |= 2u;
        }

LABEL_36:
        if (v39 & 8) != 0 && (*(v37 + 34))
        {
          LOBYTE(v40) = v40 | 0x10;
LABEL_40:
          v101._lower = &v104;
          *(sub_2213958D0(&v11->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, &v104, &unk_2217E1891, &v101) + 32) = v40;
          goto LABEL_41;
        }

        if (v40)
        {
          goto LABEL_40;
        }

LABEL_41:
        v36 += 8;
        if (!--v35)
        {
          goto LABEL_47;
        }
      }
    }

    v41 = *(archive + 4);
    if ((v41 & 4) != 0)
    {
      sub_22126A778(*(archive + 20), &v104);
      v42 = TSUIndexSet::asNSIndexSet(&v104);
      v46 = objc_msgSend_mutableCopy(v42, v43, v44, v45);
      summaryPivotHiddenIndexes = v11->_summaryPivotHiddenIndexes;
      v11->_summaryPivotHiddenIndexes = v46;

      v11->_needsSummaryUidUpgrade = 1;
      TSUIndexSet::~TSUIndexSet(&v104);
      v41 = *(archive + 4);
    }

    if ((v41 & 8) != 0)
    {
      sub_22126A778(*(archive + 21), &v104);
      v48 = TSUIndexSet::asNSIndexSet(&v104);
      v52 = objc_msgSend_mutableCopy(v48, v49, v50, v51);
      summaryFilteredIndexes = v11->_summaryFilteredIndexes;
      v11->_summaryFilteredIndexes = v52;

      v11->_needsSummaryUidUpgrade = 1;
      TSUIndexSet::~TSUIndexSet(&v104);
    }

LABEL_47:
    v54 = *(archive + 20);
    if (v54 >= 1)
    {
      v55 = objc_opt_new();
      collapsedGroupUids = v11->_collapsedGroupUids;
      v11->_collapsedGroupUids = v55;

      v58 = 8;
      do
      {
        v59 = TSKUIDStruct::loadFromMessage(*(*(archive + 11) + v58), v57);
        objc_msgSend_addUUID_(v11->_collapsedGroupUids, v60, v59, v60);
        v58 += 8;
        --v54;
      }

      while (v54);
    }

    if ((*(archive + 16) & 2) != 0)
    {
      v61 = *(archive + 19);
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = sub_22138EAC0;
      v102[3] = &unk_27845E018;
      v103 = v11;
      v62 = unarchiverCopy;
      v63 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v62, v64, v61, v63, 0, v102);
    }

    v92 = unarchiverCopy;
    v95 = *(archive + 26);
    if (v95 >= 1)
    {
      v65 = objc_opt_new();
      uniqueValuesByColumnUid = v11->_uniqueValuesByColumnUid;
      v11->_uniqueValuesByColumnUid = v65;

      v68 = 0;
      archiveCopy = archive;
      do
      {
        v69 = *(*(archive + 14) + 8 * v68 + 8);
        v101._lower = 0;
        v101._upper = 0;
        if (*(v69 + 48))
        {
          v70 = *(v69 + 48);
        }

        else
        {
          v70 = MEMORY[0x277D809E0];
        }

        v101._lower = TSKUIDStruct::loadFromMessage(v70, v67);
        v101._upper = v71;
        v99 = TSKUIDStruct::NSUUIDValue(&v101);
        v98 = objc_opt_new();
        v77 = objc_msgSend_uniqueValueToRowUids(v98, v72, v73, v74);
        v78 = *(v69 + 32);
        if (v78 >= 1)
        {
          for (i = 0; i != v78; ++i)
          {
            v80 = *(*(v69 + 40) + 8 * i + 8);
            v82 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v75, *(v80 + 48) & 0xFFFFFFFFFFFFFFFELL, v76, v92);
            if (v82)
            {
              memset(&v104, 0, 24);
              v83 = *(v80 + 32);
              if (v83 >= 1)
              {
                v84 = 8;
                do
                {
                  v100 = 0uLL;
                  *&v100 = TSKUIDStruct::loadFromMessage(*(*(v80 + 40) + v84), v81);
                  *(&v100 + 1) = v85;
                  sub_221083454(&v104, &v100);
                  v84 += 8;
                  --v83;
                }

                while (v83);
              }

              v86 = [TSCEMutableUIDSet alloc];
              v89 = objc_msgSend_initWithUUIDVector_(v86, v87, &v104, v88);
              objc_msgSend_setObject_forKey_(v77, v90, v89, v82);

              if (*&v104)
              {
                v104._singleRange._begin = v104;
                operator delete(*&v104);
              }
            }
          }
        }

        v11 = v96;
        objc_msgSend_setObject_forKey_(v96->_uniqueValuesByColumnUid, v75, v98, v99, v92);
        sub_2210C2B00(&v96->_columnUidsWithUniqueIndexes.__table_.__bucket_list_.__ptr_, &v101, &v101);

        ++v68;
        archive = archiveCopy;
      }

      while (v68 != v95);
    }

    objc_storeWeak(&v11->_hiddenStatesOwner, obj);

    unarchiverCopy = v92;
  }

  return v11;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v148 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v6 = *(archive + 18);
  if (!v6)
  {
    v7 = *(archive + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(archive + 18) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_hiddenStateExtentUid, v6);
  forRows = self->_forRows;
  *(archive + 4) |= 0x10u;
  *(archive + 44) = forRows;
  v15 = objc_msgSend_count(self->_thresholdCellValues, v9, v10, v11);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(archive + 8);
      if (!v17)
      {
        goto LABEL_12;
      }

      v18 = *(archive + 14);
      v19 = *v17;
      if (v18 >= *v17)
      {
        break;
      }

      *(archive + 14) = v18 + 1;
      v20 = *&v17[2 * v18 + 2];
LABEL_14:
      v23 = objc_msgSend_objectAtIndex_(self->_thresholdCellValues, v12, v16, v14, archiverCopy);
      objc_msgSend_encodeCellValueToArchive_(v23, v24, v20, v25);

      if (v15 == ++v16)
      {
        goto LABEL_15;
      }
    }

    if (v19 == *(archive + 15))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
      v17 = *(archive + 8);
      v19 = *v17;
    }

    *v17 = v19 + 1;
    v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(archive + 6));
    v21 = *(archive + 14);
    v22 = *(archive + 8) + 8 * v21;
    *(archive + 14) = v21 + 1;
    *(v22 + 8) = v20;
    goto LABEL_14;
  }

LABEL_15:
  needsToUpdateFilterSetForImport = self->_needsToUpdateFilterSetForImport;
  v27 = *(archive + 4);
  *(archive + 4) = v27 | 0x20;
  *(archive + 180) = needsToUpdateFilterSetForImport;
  filterSet = self->_filterSet;
  if (filterSet)
  {
    *(archive + 4) = v27 | 0x22;
    v29 = *(archive + 19);
    if (!v29)
    {
      v30 = *(archive + 1);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x223DA0390](v30);
      *(archive + 19) = v29;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, filterSet, v29, archiverCopy);
  }

  archiveCopy = archive;
  selfCopy = self;
  next = self->_baseHiddenByUid.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v33 = next[32];
      if ((v33 & 0xEB) != 0)
      {
        break;
      }

LABEL_38:
      next = *next;
      if (!next)
      {
        goto LABEL_39;
      }
    }

    v34 = archiveCopy[5];
    if (!v34)
    {
      goto LABEL_28;
    }

    v35 = *(archiveCopy + 8);
    v36 = *v34;
    if (v35 < *v34)
    {
      *(archiveCopy + 8) = v35 + 1;
      v37 = *&v34[2 * v35 + 2];
LABEL_30:
      *&__p = *(next + 1);
      *(v37 + 16) |= 1u;
      v40 = *(v37 + 24);
      if (!v40)
      {
        v41 = *(v37 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        v40 = MEMORY[0x223DA0360](v41);
        *(v37 + 24) = v40;
      }

      TSKUIDStruct::saveToMessage(&__p, v40);
      if ((v33 & 9) != 0)
      {
        *(v37 + 16) |= 2u;
        *(v37 + 32) = 1;
      }

      if ((v33 & 2) != 0)
      {
        *(v37 + 16) |= 4u;
        *(v37 + 33) = 1;
      }

      goto LABEL_38;
    }

    if (v36 == *(archiveCopy + 9))
    {
LABEL_28:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 3));
      v34 = archiveCopy[5];
      v36 = *v34;
    }

    *v34 = v36 + 1;
    v37 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive_RowOrColumnState>(archiveCopy[3]);
    v38 = *(archiveCopy + 8);
    v39 = archiveCopy[5] + 8 * v38;
    *(archiveCopy + 8) = v38 + 1;
    *(v39 + 8) = v37;
    goto LABEL_30;
  }

LABEL_39:
  p_isa = &selfCopy->super.isa;
  v43 = selfCopy->_summaryHiddenByUid.__table_.__first_node_.__next_;
  if (v43)
  {
    while (1)
    {
      v44 = v43[32];
      if (v44)
      {
        break;
      }

LABEL_58:
      v43 = *v43;
      if (!v43)
      {
        goto LABEL_59;
      }
    }

    v45 = archiveCopy[17];
    if (!v45)
    {
      goto LABEL_46;
    }

    v46 = *(archiveCopy + 32);
    v47 = *v45;
    if (v46 < *v45)
    {
      *(archiveCopy + 32) = v46 + 1;
      v48 = *&v45[2 * v46 + 2];
LABEL_48:
      *&__p = *(v43 + 1);
      *(v48 + 16) |= 1u;
      v51 = *(v48 + 24);
      if (!v51)
      {
        v52 = *(v48 + 8);
        if (v52)
        {
          v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
        }

        v51 = MEMORY[0x223DA0360](v52);
        *(v48 + 24) = v51;
      }

      TSKUIDStruct::saveToMessage(&__p, v51);
      if ((v44 & 9) != 0)
      {
        *(v48 + 16) |= 2u;
        *(v48 + 32) = 1;
      }

      if ((v44 & 2) != 0)
      {
        *(v48 + 16) |= 4u;
        *(v48 + 33) = 1;
      }

      if ((v44 & 0x10) != 0)
      {
        *(v48 + 16) |= 8u;
        *(v48 + 34) = 1;
      }

      goto LABEL_58;
    }

    if (v47 == *(archiveCopy + 33))
    {
LABEL_46:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 15));
      v45 = archiveCopy[17];
      v47 = *v45;
    }

    *v45 = v47 + 1;
    v48 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive_RowOrColumnState>(archiveCopy[15]);
    v49 = *(archiveCopy + 32);
    v50 = archiveCopy[17] + 8 * v49;
    *(archiveCopy + 32) = v49 + 1;
    *(v50 + 8) = v48;
    goto LABEL_48;
  }

LABEL_59:
  if (objc_msgSend_count(selfCopy->_collapsedGroupUids, v12, v13, v14, archiverCopy))
  {
    collapsedGroupUids = selfCopy->_collapsedGroupUids;
    if (collapsedGroupUids)
    {
      objc_msgSend_uuidsAsVector(collapsedGroupUids, v53, v54, v55);
      v57 = __p;
      begin = __p._singleRange._begin;
      if (*&__p != __p._singleRange._begin)
      {
        while (1)
        {
          v59 = archiveCopy[11];
          if (!v59)
          {
            goto LABEL_67;
          }

          v60 = *(archiveCopy + 20);
          v61 = *v59;
          if (v60 >= *v59)
          {
            break;
          }

          *(archiveCopy + 20) = v60 + 1;
          v62 = *&v59[2 * v60 + 2];
LABEL_69:
          TSKUIDStruct::saveToMessage(v57++, v62);
          if (v57 == begin)
          {
            v57 = __p;
            goto LABEL_71;
          }
        }

        if (v61 == *(archiveCopy + 21))
        {
LABEL_67:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 9));
          v59 = archiveCopy[11];
          v61 = *v59;
        }

        *v59 = v61 + 1;
        v62 = MEMORY[0x223DA0360](archiveCopy[9]);
        v63 = *(archiveCopy + 20);
        v64 = archiveCopy[11] + 8 * v63;
        *(archiveCopy + 20) = v63 + 1;
        *(v64 + 8) = v62;
        goto LABEL_69;
      }

LABEL_71:
      if (v57)
      {
        __p._singleRange._begin = v57;
        operator delete(v57);
      }
    }
  }

  v127 = objc_msgSend_p_summaryPivotHiddenIndexes(selfCopy, v53, v54, v55);
  if (objc_msgSend_count(v127, v65, v66, v67))
  {
    MEMORY[0x223D9F7A0](&__p, v127);
    *(archiveCopy + 4) |= 4u;
    v71 = archiveCopy[20];
    if (!v71)
    {
      v72 = archiveCopy[1];
      if (v72)
      {
        v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
      }

      v71 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v72);
      archiveCopy[20] = v71;
    }

    sub_22126A644(&__p, v71);
    TSUIndexSet::~TSUIndexSet(&__p);
  }

  v128 = objc_msgSend_p_summaryFilteredIndexes(selfCopy, v68, v69, v70);
  if (objc_msgSend_count(v128, v73, v74, v75))
  {
    MEMORY[0x223D9F7A0](&__p, v128);
    *(archiveCopy + 4) |= 8u;
    v79 = archiveCopy[21];
    if (!v79)
    {
      v80 = archiveCopy[1];
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v80);
      archiveCopy[21] = v79;
    }

    sub_22126A644(&__p, v79);
    TSUIndexSet::~TSUIndexSet(&__p);
  }

  objc_msgSend_uniqueValuesLock(selfCopy, v76, v77, v78);
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = selfCopy->_uniqueValuesByColumnUid;
  v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v141, v147, 16);
  if (v131)
  {
    v130 = *v142;
    do
    {
      for (i = 0; i != v131; ++i)
      {
        if (*v142 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v84 = *(*(&v141 + 1) + 8 * i);
        v85 = archiveCopy[14];
        if (!v85)
        {
          goto LABEL_95;
        }

        v86 = *(archiveCopy + 26);
        v87 = *v85;
        if (v86 < *v85)
        {
          *(archiveCopy + 26) = v86 + 1;
          v88 = *&v85[2 * v86 + 2];
          goto LABEL_97;
        }

        if (v87 == *(archiveCopy + 27))
        {
LABEL_95:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 12));
          v85 = archiveCopy[14];
          v87 = *v85;
        }

        *v85 = v87 + 1;
        v88 = google::protobuf::Arena::CreateMaybeMessage<TST::UniqueIndexArchive>(archiveCopy[12]);
        v89 = *(archiveCopy + 26);
        v90 = archiveCopy[14] + 8 * v89;
        *(archiveCopy + 26) = v89 + 1;
        *(v90 + 8) = v88;
LABEL_97:
        v133 = objc_msgSend_objectForKey_(p_isa[35], v82, v84, v83);
        v134 = objc_msgSend_uniqueValueToRowUids(v133, v91, v92, v93);
        sub_221395B0C(v140, v84);
        *(v88 + 16) |= 1u;
        v94 = *(v88 + 48);
        if (!v94)
        {
          v95 = *(v88 + 8);
          if (v95)
          {
            v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
          }

          v94 = MEMORY[0x223DA0360](v95);
          *(v88 + 48) = v94;
        }

        TSP::UUIDData::saveToMessage(v140, v94);
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v96 = v134;
        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v136, v146, 16);
        if (v100)
        {
          v101 = *v137;
          do
          {
            for (j = 0; j != v100; ++j)
            {
              if (*v137 != v101)
              {
                objc_enumerationMutation(v96);
              }

              v103 = *(*(&v136 + 1) + 8 * j);
              v104 = objc_msgSend_objectForKey_(v96, v98, v103, v99);
              if (objc_msgSend_count(v104, v105, v106, v107))
              {
                v111 = *(v88 + 40);
                if (!v111)
                {
                  goto LABEL_112;
                }

                v112 = *(v88 + 32);
                v113 = *v111;
                if (v112 < *v111)
                {
                  *(v88 + 32) = v112 + 1;
                  v114 = *&v111[2 * v112 + 2];
LABEL_114:
                  v117 = objc_msgSend_tsp_protobufString(v103, v108, v109, v110);
                  if (v117)
                  {
                    v118 = v117;
                  }

                  else
                  {
                    v118 = "";
                  }

                  sub_22138F538(v114, v118);
                  if (v104)
                  {
                    objc_msgSend_uuidsAsVector(v104, v119, v120, v121);
                  }

                  else
                  {
                    memset(&__p, 0, 24);
                  }

                  sub_22123ACF4(&__p, (v114 + 24));
                  if (*&__p)
                  {
                    __p._singleRange._begin = __p;
                    operator delete(*&__p);
                  }

                  goto LABEL_122;
                }

                if (v113 == *(v88 + 36))
                {
LABEL_112:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v88 + 24));
                  v111 = *(v88 + 40);
                  v113 = *v111;
                }

                *v111 = v113 + 1;
                v114 = google::protobuf::Arena::CreateMaybeMessage<TST::UniqueIndexArchive_UniqueIndexEntryArchive>(*(v88 + 24));
                v115 = *(v88 + 32);
                v116 = *(v88 + 40) + 8 * v115;
                *(v88 + 32) = v115 + 1;
                *(v116 + 8) = v114;
                goto LABEL_114;
              }

LABEL_122:
            }

            p_isa = &selfCopy->super.isa;
            v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v98, &v136, v146, 16);
          }

          while (v100);
        }
      }

      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v141, v147, 16);
    }

    while (v131);
  }

  objc_msgSend_uniqueValuesUnlock(p_isa, v122, v123, v124);
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  lower = self->_hiddenStateExtentUid._lower;
  upper = self->_hiddenStateExtentUid._upper;
  v9 = d->_lower;
  v10 = d->_upper;
  v16 = objc_msgSend_ownerKind(self, v11, v12, v13);
  LODWORD(v9) = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(engineCopy, v14, lower, upper, self, 0, v9, v10, v16);
  objc_storeWeak(&self->_calcEngine, engineCopy);

  return v9;
}

- (void)unregisterFromCalcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_unregisterOwner_(WeakRetained, v4, self->_hiddenStateExtentUid._lower, self->_hiddenStateExtentUid._upper);

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = sub_221119F90(map, &self->_hiddenStateExtentUid._lower);
  if (v7)
  {
    self->_hiddenStateExtentUid = v7[2];
  }

  filterSet = self->_filterSet;
  if (filterSet)
  {
    objc_msgSend_willModify(filterSet, v8, v9, v10);
    memset(&v31, 0, sizeof(v31));
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v32, engineCopy, &v31);
    v17 = objc_msgSend_ruleCount(self->_filterSet, v12, v13, v14);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = objc_msgSend_ruleAtAbsoluteIndex_(self->_filterSet, v15, v18, v16);
        LOBYTE(v31.coordinate.row) = 0;
        v23 = objc_msgSend_predicate(v19, v20, v21, v22, *&v31.coordinate);
        objc_msgSend_remapOwnerUIDsWithMap_rewriteContext_error_(v23, v24, map, &v32, &v31);

        ++v18;
      }

      while (v17 != v18);
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    IsRegistered = objc_msgSend_ownerIsRegistered_(WeakRetained, v26, self->_hiddenStateExtentUid._lower, self->_hiddenStateExtentUid._upper);

    if (IsRegistered)
    {
      objc_msgSend_filterSetUpdated(self, v28, v29, v30);
    }
  }
}

- (void)p_removeAllFormulaFromCalculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_removeAllFormulasFromOwner_(WeakRetained, v4, &self->_hiddenStateExtentUid, v5);

  v6 = objc_loadWeakRetained(&self->_calcEngine);
  v10 = objc_msgSend_tableModel(self, v7, v8, v9);
  v18[0] = objc_msgSend_tableUID(v10, v11, v12, v13);
  v18[1] = v14;
  objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v14, v18, v15);
  objc_msgSend_markCellRefAsDirty_(v6, v16, v19, v17);
}

- (id)precedentsForFilterSet:(id)set calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD
{
  setCopy = set;
  engineCopy = engine;
  v16 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v10, v11, v12);
  for (i = 0; i < objc_msgSend_ruleCount(setCopy, v13, v14, v15); ++i)
  {
    v20 = objc_msgSend_ruleAtAbsoluteIndex_(setCopy, v18, i, v19);
    v27 = objc_msgSend_formula(v20, v21, v22, v23);
    if (v27 && v16)
    {
      v28 = objc_msgSend_referenceSet(v16, v24, v25, v26);
      v88 = *iD;
      v89 = *d;
      objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v27, v29, v28, engineCopy, &v88, 1, 1);
    }

    if (objc_msgSend_needsThreshold(v20, v24, v25, v26))
    {
      v88 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v30, 2, i);
      v89 = *d;
      objc_msgSend_insertCellRef_(v16, v33, &v88, v34);
    }

    v35 = objc_msgSend_predicate(v20, v30, v31, v32);
    v39 = objc_msgSend_predicateType(v35, v36, v37, v38);

    if (v39 <= 0x34)
    {
      if (((1 << v39) & 0x10000000018000) != 0)
      {
        v43 = objc_msgSend_tableModel(self, v40, v41, v42);
        v92 = objc_msgSend_tableUID(v43, v44, v45, v46);
        v93 = v47;
        objc_msgSend_uniqueDistinctPrecedentForTableUID_(TSCEHauntedOwner, v47, &v92, v48);

        objc_msgSend_insertCellRef_(v16, v49, &v88, v50);
      }

      else if (((1 << v39) & 0xC000000000000) != 0)
      {
        v51 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v40, d->_lower, d->_upper, engineCopy);
        v55 = objc_msgSend_pivotDataModel(v51, v52, v53, v54);
        v59 = v55;
        if (v55)
        {
          v92 = objc_msgSend_tableUID(v55, v56, v57, v58);
          v93 = v60;
          objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v60, &v92, v61);
          objc_msgSend_insertCellRef_(v16, v62, &v88, v63);
        }
      }
    }

    if (objc_msgSend_needsFormulaRewriteForImport(setCopy, v40, v41, v42))
    {
      if (objc_msgSend_needsFormulaRewriteForImport(v20, v64, v65, v66))
      {
        v70 = objc_msgSend_tableModel(self, v67, v68, v69);
        v73 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v20, v71, v70, v72);

        v77 = objc_msgSend_tableModel(self, v74, v75, v76);
        v81 = objc_msgSend_tableUID(v77, v78, v79, v80);
        v88 = (v73 << 32) | 0x7FFFFFFF;
        v89._lower = v88;
        v89._upper = v81;
        v90 = v82;
        v91 = 0;

        objc_msgSend_insertSpanningRangeRef_(v16, v83, &v88, v84);
      }
    }
  }

  return v16;
}

- (void)p_registerAllFormulasReturningCoords:(void *)coords
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v9 = objc_msgSend_filterSet(self, v6, v7, v8);
    v211 = v9;
    v13 = objc_msgSend_ruleCount(v9, v10, v11, v12);
    if (!v9)
    {
      goto LABEL_50;
    }

    v17 = v13;
    if (!v13)
    {
      goto LABEL_50;
    }

    v212 = objc_msgSend_tableInfo(self, v14, v15, v16);
    v18 = [TSCEBulkCellChangeMinion alloc];
    v19 = objc_loadWeakRetained(&self->_calcEngine);
    v214 = objc_msgSend_initWithCalcEngine_(v18, v20, v19, v21);

    coordsCopy = coords;
    if (!objc_msgSend_isAPivotTable(v212, v22, v23, v24))
    {
      v106 = v211;
      v209 = objc_msgSend_tableModel(self, v25, v26, v27);
      v228.origin = objc_msgSend_bodyRange(v209, v107, v108, v109);
      v228.size = v110;
      v111 = TSUCellRect::lastRow(&v228);
      v218.origin = objc_msgSend_footerRowRange(v209, v112, v113, v114);
      v218.size = v115;
      v116 = TSUCellRect::lastRow(&v218);
      v119 = 0;
      if (v116 == 0x7FFFFFFF)
      {
        v120 = v111;
      }

      else
      {
        v120 = v116;
      }

      do
      {
        v217 = 0;
        v217 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v117, v119, v118);
        v121 = objc_loadWeakRetained(&self->_calcEngine);
        v123 = objc_msgSend_precedentsForFilterSet_calcEngine_hostOwnerUID_hostCellID_(self, v122, v211, v121, &self->_hiddenStateExtentUid, &v217);

        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v224, 0, 1);
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v216, &v224);
        objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v214, v124, &v217, &self->_hiddenStateExtentUid, v123, &v216);

        if (coords)
        {
          TSCECellCoordSet::addCellCoord(coords, &v217);
        }

        v119 = (v119 + 1);
      }

      while (v119 <= v120);
      v125 = 0;
      do
      {
        v126 = objc_msgSend_ruleAtAbsoluteIndex_(v106, v117, v125, v118);
        if (objc_msgSend_needsThreshold(v126, v127, v128, v129))
        {
          v133 = objc_msgSend_formula(v126, v130, v131, v132);
          v217 = 0;
          v217 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v134, 2, v125);
          v138 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v135, v136, v137);
          v139 = objc_loadWeakRetained(&self->_calcEngine);
          v143 = objc_msgSend_emptyReferenceSetWrapper(v139, v140, v141, v142);

          if (v143)
          {
            if (v133)
            {
              v147 = objc_msgSend_referenceSet(v143, v144, v145, v146);
              v148 = objc_loadWeakRetained(&self->_calcEngine);
              *&v224.var0 = v138;
              v224.var6 = self->_hiddenStateExtentUid;
              objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v133, v149, v147, v148, &v224, 1, 1);

              v106 = v211;
            }

            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v224, 0, 1);
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v215, &v224);
            objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v214, v150, &v217, &self->_hiddenStateExtentUid, v143, &v215);

            if (coordsCopy)
            {
              TSCECellCoordSet::addCellCoord(coordsCopy, &v217);
            }
          }
        }

        ++v125;
      }

      while (v17 != v125);
      goto LABEL_49;
    }

    if (objc_msgSend_ruleCount(v211, v25, v26, v27) >= 2)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTHiddenStateExtent p_registerAllFormulasReturningCoords:]", v29);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 2443, 0, "Expecting at most one filter rule on a pivotTable");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
    }

    v39 = objc_msgSend_ruleAtAbsoluteIndex_(v211, v28, 0, v29);
    v43 = objc_msgSend_predicate(v39, v40, v41, v42);

    v209 = v43;
    v50 = objc_msgSend_predicateType(v43, v44, v45, v46);
    if (self->_forRows)
    {
      v51 = objc_msgSend_numberOfHeaderRows(v212, v47, v48, v49);
      v55 = objc_msgSend_numberOfRows(v212, v52, v53, v54);
      v59 = objc_msgSend_groupByRootUid(TSCECategoryRef, v56, v57, v58);
      v61 = objc_msgSend_rowIndexForRowUID_(v212, v60, v59, v60);
      if (v61)
      {
        v65 = v55 - 1;
        if (v61 != 0x7FFFFFFF && v61 - 1 < v65)
        {
          v65 = v61 - 1;
        }

        v66 = objc_msgSend_pivotOwner(v212, v62, v63, v64);
        v210 = objc_msgSend_groupBySet(v66, v67, v68, v69);

        if (v50 != 50)
        {
          v72 = MEMORY[0x277D81150];
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSTHiddenStateExtent p_registerAllFormulasReturningCoords:]", v71);
          v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v75);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v77, v73, v76, 2461, 0, "Only support PivotSourceFiltered filter for pivotTable");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80);
        }

        if (v51 <= v65)
        {
          v81 = v212;
          do
          {
            v218.origin = 0;
            v218.origin = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v70, v51, v71);
            v228.origin = 0;
            v228.size = 0;
            v228.origin = objc_msgSend_rowUIDForRowIndex_(v81, v82, v51, v83);
            v228.size = v84;
            v85 = objc_msgSend_filteringCategoryRefAt_forDimension_(v210, v84, &v228, 0);
            v86 = objc_loadWeakRetained(&self->_calcEngine);
            v90 = objc_msgSend_emptyReferenceSetWrapper(v86, v87, v88, v89);

            v94 = objc_msgSend_referenceSet(v90, v91, v92, v93);
            TSCEReferenceSet::insertRef(v94, v85);
            v81 = v212;
            v95 = [TSCEFormulaObject alloc];
            TSCEFormulaCreationMagic::categoryRef(v85, &v225);
            TSCEFormulaCreationMagic::ISBLANK(&v225, v229, &v226);
            TSCEFormulaCreationMagic::NOT(&v226, v230, &v227);
            v98 = objc_msgSend_initWithCreator_(v95, v96, &v227, v97);

            v102 = objc_msgSend_referenceSet(v90, v99, v100, v101);
            v103 = objc_loadWeakRetained(&self->_calcEngine);
            *&v224.var0 = v218.origin;
            v224.var6 = self->_hiddenStateExtentUid;
            objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v98, v104, v102, v103, &v224, 0, 1);

            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v224, 0, 1);
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v223, &v224);
            objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v214, v105, &v218, &self->_hiddenStateExtentUid, v90, &v223);

            if (coordsCopy)
            {
              TSCECellCoordSet::addCellCoord(coordsCopy, &v218.origin);
            }

            v51 = (v51 + 1);
          }

          while (v51 <= v65);
        }

LABEL_48:
      }
    }

    else
    {
      v151 = objc_msgSend_numberOfHeaderColumns(v212, v47, v48, v49);
      v155 = objc_msgSend_numberOfColumns(v212, v152, v153, v154);
      v159 = objc_msgSend_groupByRootUid(TSCECategoryRef, v156, v157, v158);
      v161 = objc_msgSend_columnIndexForColumnUID_(v212, v160, v159, v160);
      if (v161)
      {
        v165 = v155 - 1;
        if (v161 != 0x7FFF && v161 - 1 < v165)
        {
          v165 = v161 - 1;
        }

        v166 = objc_msgSend_pivotOwner(v212, v162, v163, v164);
        v210 = objc_msgSend_groupBySet(v166, v167, v168, v169);

        if (v50 != 51)
        {
          v172 = MEMORY[0x277D81150];
          v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, "[TSTHiddenStateExtent p_registerAllFormulasReturningCoords:]", v171);
          v176 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v175);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v177, v173, v176, 2498, 0, "Only support PivotSourceFiltered filter for pivotTable");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v178, v179, v180);
        }

        if (v151 <= v165)
        {
          v181 = v212;
          do
          {
            v218.origin = 0;
            v218.origin = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v170, v151, v171);
            v228.origin = 0;
            v228.size = 0;
            v228.origin = objc_msgSend_columnUIDForColumnIndex_(v181, v182, v151, v183);
            v228.size = v184;
            v185 = objc_msgSend_filteringCategoryRefAt_forDimension_(v210, v184, &v228, 1);
            v186 = objc_loadWeakRetained(&self->_calcEngine);
            v190 = objc_msgSend_emptyReferenceSetWrapper(v186, v187, v188, v189);

            v194 = objc_msgSend_referenceSet(v190, v191, v192, v193);
            TSCEReferenceSet::insertRef(v194, v185);
            v181 = v212;
            v195 = [TSCEFormulaObject alloc];
            TSCEFormulaCreationMagic::categoryRef(v185, &v220);
            TSCEFormulaCreationMagic::ISBLANK(&v220, v231, &v221);
            TSCEFormulaCreationMagic::NOT(&v221, v232, &v222);
            v198 = objc_msgSend_initWithCreator_(v195, v196, &v222, v197);

            v202 = objc_msgSend_referenceSet(v190, v199, v200, v201);
            v203 = objc_loadWeakRetained(&self->_calcEngine);
            *&v224.var0 = v218.origin;
            v224.var6 = self->_hiddenStateExtentUid;
            objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v198, v204, v202, v203, &v224, 0, 1);

            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v224, 0, 1);
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v219, &v224);
            objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v214, v205, &v218, &self->_hiddenStateExtentUid, v190, &v219);

            if (coordsCopy)
            {
              TSCECellCoordSet::addCellCoord(coordsCopy, &v218.origin);
            }

            v151 = (v151 + 1);
          }

          while (v151 <= v165);
        }

        goto LABEL_48;
      }
    }

LABEL_49:

    objc_msgSend_flushAllChanges(v214, v206, v207, v208);
    v9 = v211;
LABEL_50:
  }
}

- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension
{
  if (!objc_msgSend_anyCollapsed(self, a2, collapsed, dimension))
  {
    return 0;
  }

  v10 = objc_msgSend_tableInfo(self, v7, v8, v9);
  v14 = v10;
  if (dimension)
  {
    objc_msgSend_groupByForColumns(v10, v11, v12, v13);
  }

  else
  {
    objc_msgSend_groupByForRows(v10, v11, v12, v13);
  }
  v16 = ;

  v21 = objc_msgSend_groupNodeForGroupUid_(v16, v17, collapsed->_lower, collapsed->_upper);
  if (v21)
  {
    do
    {
      collapsedGroupUids = self->_collapsedGroupUids;
      v23 = objc_msgSend_groupUid(v21, v18, v19, v20);
      v15 = objc_msgSend_containsUuid_(collapsedGroupUids, v24, v23, v24);
      v28 = objc_msgSend_parentNode(v21, v25, v26, v27);

      if (v28)
      {
        v29 = v15;
      }

      else
      {
        v29 = 1;
      }

      v21 = v28;
    }

    while ((v29 & 1) == 0);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension
{
  if (!objc_msgSend_anyCollapsed(self, a2, visible, dimension))
  {
    return 0;
  }

  v10 = objc_msgSend_tableInfo(self, v7, v8, v9);
  v14 = v10;
  if (dimension)
  {
    objc_msgSend_groupByForColumns(v10, v11, v12, v13);
  }

  else
  {
    objc_msgSend_groupByForRows(v10, v11, v12, v13);
  }
  v16 = ;

  v18 = objc_msgSend_groupNodeForGroupUid_(v16, v17, visible->_lower, visible->_upper);
  v22 = v18;
  if (v18 && (v23 = self->_collapsedGroupUids, v24 = objc_msgSend_groupUid(v18, v19, v20, v21), objc_msgSend_containsUuid_(v23, v25, v24, v25)))
  {
    v29 = objc_msgSend_parentNode(v22, v26, v27, v28);

    if (v29)
    {
      v22 = v29;
      do
      {
        collapsedGroupUids = self->_collapsedGroupUids;
        v34 = objc_msgSend_groupUid(v22, v30, v31, v32);
        v39 = objc_msgSend_containsUuid_(collapsedGroupUids, v35, v34, v35);
        if (v39)
        {
          break;
        }

        v40 = objc_msgSend_parentNode(v22, v36, v37, v38);

        v22 = v40;
      }

      while (v40);
      v15 = v39 ^ 1;
    }

    else
    {
      v22 = 0;
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed
{
  collapsedGroupUids = self->_collapsedGroupUids;
  if (collapsed)
  {
    if (!collapsedGroupUids)
    {
      v7 = objc_opt_new();
      v8 = self->_collapsedGroupUids;
      self->_collapsedGroupUids = v7;

      collapsedGroupUids = self->_collapsedGroupUids;
    }

    objc_msgSend_addUUID_(collapsedGroupUids, a2, d->_lower, d->_upper);
  }

  else
  {
    objc_msgSend_removeUUID_(collapsedGroupUids, a2, d->_lower, d->_upper);
  }

  self->_invalidateCollapsed = 1;
}

- (id)collapseSummaryGroupUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v5, v6, v7))
  {
    v13 = objc_msgSend_p_collapsedIndexes(self, v8, v9, v10);
    collapsedGroupUids = self->_collapsedGroupUids;
    if (!collapsedGroupUids)
    {
      v15 = objc_opt_new();
      v16 = self->_collapsedGroupUids;
      self->_collapsedGroupUids = v15;

      collapsedGroupUids = self->_collapsedGroupUids;
    }

    objc_msgSend_addUuidsFromSet_(collapsedGroupUids, v11, dsCopy, v12);
    self->_invalidateCollapsed = 1;
    v20 = objc_msgSend_p_collapsedIndexes(self, v17, v18, v19);
    v24 = objc_msgSend_count(v20, v21, v22, v23);
    if (v24 <= objc_msgSend_count(v13, v25, v26, v27))
    {
    }

    else
    {
      v28 = v20;
      objc_msgSend_removeIndexes_(v28, v29, v13, v30);

      if (v28)
      {
        goto LABEL_9;
      }
    }
  }

  v28 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v8, v9, v10);
LABEL_9:

  return v28;
}

- (id)expandSummaryGroupUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v5, v6, v7))
  {
    v11 = objc_msgSend_p_collapsedIndexes(self, v8, v9, v10);
    objc_msgSend_removeUuidsFromSet_(self->_collapsedGroupUids, v12, dsCopy, v13);
    self->_invalidateCollapsed = 1;
    v17 = objc_msgSend_p_collapsedIndexes(self, v14, v15, v16);
    v21 = objc_msgSend_count(v11, v18, v19, v20);
    if (v21 <= objc_msgSend_count(v17, v22, v23, v24))
    {
    }

    else
    {
      v25 = v11;
      objc_msgSend_removeIndexes_(v25, v26, v17, v27);

      if (v25)
      {
        goto LABEL_7;
      }
    }
  }

  v25 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v8, v9, v10);
LABEL_7:

  return v25;
}

- (id)copyCollapsedStateToUpdatedGroupUids:(id)uids dimension:(int64_t)dimension
{
  uidsCopy = uids;
  if (objc_msgSend_count(self->_collapsedGroupUids, v7, v8, v9) && (collapsedGroupUids = self->_collapsedGroupUids, objc_msgSend_previousGroupNodeUids(uidsCopy, v10, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(collapsedGroupUids) = objc_msgSend_intersectsSet_(collapsedGroupUids, v15, v14, v16), v14, collapsedGroupUids))
  {
    v17 = objc_opt_new();
    v18 = objc_opt_new();
    v22 = objc_msgSend_updatedGroupNodeUids(uidsCopy, v19, v20, v21);
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = sub_221390F58;
    v34 = &unk_278463960;
    v35 = uidsCopy;
    selfCopy = self;
    v23 = v17;
    v37 = v23;
    v24 = v18;
    v38 = v24;
    objc_msgSend_foreachUuid_(v22, v25, &v31, v26);
    v27 = [TSTExpandCollapseState alloc];
    v29 = objc_msgSend_initWithCollapsed_expanded_dimension_(v27, v28, v23, v24, dimension, v31, v32, v33, v34);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState
{
  stateCopy = state;
  v13 = objc_msgSend_p_collapsedIndexes(self, v7, v8, v9);
  if (!self->_collapsedGroupUids)
  {
    v14 = objc_opt_new();
    collapsedGroupUids = self->_collapsedGroupUids;
    self->_collapsedGroupUids = v14;
  }

  v16 = objc_msgSend_uidsExpanded(stateCopy, v10, v11, v12);
  v20 = objc_msgSend_count(v16, v17, v18, v19);

  if (v20)
  {
    v24 = self->_collapsedGroupUids;
    v25 = objc_msgSend_uidsExpanded(stateCopy, v21, v22, v23);
    v20 = objc_msgSend_removeUuidsFromSetReturningRemoved_(v24, v26, v25, v27);

    self->_invalidateCollapsed = 1;
  }

  v28 = objc_msgSend_uidsCollapsed(stateCopy, v21, v22, v23);
  v32 = objc_msgSend_count(v28, v29, v30, v31);

  if (v32)
  {
    v36 = self->_collapsedGroupUids;
    v37 = objc_msgSend_uidsCollapsed(stateCopy, v33, v34, v35);
    v32 = objc_msgSend_addUuidsFromSetReturningAdded_(v36, v38, v37, v39);

    self->_invalidateCollapsed = 1;
  }

  if (undoState)
  {
    v40 = [TSTExpandCollapseState alloc];
    v44 = objc_msgSend_dimension(stateCopy, v41, v42, v43);
    *undoState = objc_msgSend_initWithCollapsed_expanded_dimension_(v40, v45, v20, v32, v44);
  }

  v46 = objc_msgSend_p_collapsedIndexes(self, v33, v34, v35);
  v47 = objc_opt_new();
  v50 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v13, v48, v46, v49);
  objc_msgSend_addIndexes_(v47, v51, v50, v52);

  v55 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v46, v53, v13, v54);
  objc_msgSend_addIndexes_(v47, v56, v55, v57);

  return v47;
}

- (id)pruneCollapsedGroupsInDimension:(int64_t)dimension
{
  v6 = objc_msgSend_tableInfo(self, a2, dimension, v3);
  v10 = v6;
  if (dimension == 1)
  {
    v11 = objc_msgSend_groupByForColumns(v6, v7, v8, v9);
    v15 = objc_msgSend_maxColumnLevel(v10, v12, v13, v14);
  }

  else
  {
    v11 = objc_msgSend_groupByForRows(v6, v7, v8, v9);
    v15 = objc_msgSend_maxRowLevel(v10, v16, v17, v18);
  }

  v19 = v15;
  v20 = objc_opt_new();
  objc_msgSend_addUuidsFromSet_(v20, v21, self->_collapsedGroupUids, v22);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_221391434;
  v31[3] = &unk_27845FA48;
  v23 = v20;
  v32 = v23;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v11, v24, 1, v19, v31);
  v25 = [TSTExpandCollapseState alloc];
  v27 = objc_msgSend_initWithCollapsed_expanded_dimension_(v25, v26, 0, v23, dimension);
  v29 = objc_msgSend_applyCollapseExpandState_outUndoState_(self, v28, v27, 0);

  return v29;
}

- (id)p_calculateAverageThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord
{
  engineCopy = engine;
  row = coord->row;
  v8 = *&coord->column;
  v12 = objc_msgSend_filterSet(self, v9, v10, v11);
  v15 = objc_msgSend_ruleAtAbsoluteIndex_(v12, v13, row, v14);

  v19 = objc_msgSend_tableModel(self, v16, v17, v18);
  v22 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v15, v20, v19, v21);
  v29[0] = objc_msgSend_tableUID(v19, v23, v24, v25);
  v29[1] = v26;
  v27 = sub_221256390(engineCopy, row | (v8 << 32), &self->_hiddenStateExtentUid, (v22 << 32) | 0x7FFFFFFF, (v22 << 32) | 0x7FFFFFFF, v29);

  return v27;
}

- (id)p_calculateUniqueThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord
{
  engineCopy = engine;
  row = coord->row;
  v8 = *&coord->column;
  v11 = objc_msgSend_ruleAtAbsoluteIndex_(self->_filterSet, v9, row, v10);
  v15 = objc_msgSend_tableModel(self, v12, v13, v14);
  v18 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v11, v16, v15, v17);

  v22 = objc_msgSend_tableModel(self, v19, v20, v21);
  v29[0] = objc_msgSend_tableUID(v22, v23, v24, v25);
  v29[1] = v26;

  v27 = sub_22125668C(engineCopy, row | (v8 << 32), &self->_hiddenStateExtentUid, (v18 << 32) | 0x7FFFFFFF, (v18 << 32) | 0x7FFFFFFF, v29);

  return v27;
}

- (id)p_calculateTopOrBottomThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord isTop:(BOOL)top keyScale:(unsigned __int8)scale
{
  scaleCopy = scale;
  topCopy = top;
  engineCopy = engine;
  row = coord->row;
  v12 = *&coord->column;
  v16 = objc_msgSend_filterSet(self, v13, v14, v15);
  v19 = objc_msgSend_ruleAtAbsoluteIndex_(v16, v17, row, v18);

  v23 = objc_msgSend_tableModel(self, v20, v21, v22);
  v26 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v19, v24, v23, v25);
  v90[0] = objc_msgSend_tableUID(v23, v27, v28, v29);
  v90[1] = v30;
  v36 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32);
  v37 = v26;
  v38 = ((v26 << 32) | 0x7FFFFFFF);
  if (scaleCopy == 9)
  {
    v49 = row | (v12 << 32);
    v50 = sub_221256DB8(engineCopy, v49, &self->_hiddenStateExtentUid, ((v37 << 32) | 0x7FFFFFFF), (v37 << 32) | 0x7FFFFFFF, v90);
    if ((objc_msgSend_isNil(v50, v51, v52, v53) & 1) == 0)
    {
      v57 = objc_msgSend_predicate(v19, v54, v55, v56);
      objc_msgSend_numberParam1(v57, v58, v59, v60);
      v62 = v61;

      v66 = objc_msgSend_number(v50, v63, v64, v65);
      v89._decimal.w[0] = objc_msgSend_decimalRepresentation(v66, v67, v68, v69);
      v89._decimal.w[1] = v70;
      TSUDecimal::doubleValue(&v89);
      v72 = floor(v62 / 100.0 * v71);

      if (v72 >= 1.0)
      {
        v76 = sub_221256984(engineCopy, v49, &self->_hiddenStateExtentUid, v38, v38, v90, topCopy, 0, v72);
      }

      else
      {
        v73 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v76 = objc_msgSend_initWithDecimal_(v73, v74, &v89, v75);
      }

      v87 = v76;

      v36 = v87;
    }
  }

  else if (scaleCopy == 10)
  {
    v39 = objc_msgSend_predicate(v19, v33, v34, v35);
    objc_msgSend_numberParam1(v39, v40, v41, v42);
    v44 = v43;

    if (v44 >= 1.0)
    {
      v48 = sub_221256984(engineCopy, row | (v12 << 32), &self->_hiddenStateExtentUid, v38, v38, v90, topCopy, 1, v44);
    }

    else
    {
      v45 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v48 = objc_msgSend_initWithDecimal_(v45, v46, &v89, v47);
    }

    v86 = v48;

    v36 = v86;
  }

  else
  {
    v77 = MEMORY[0x277D81150];
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTHiddenStateExtent p_calculateTopOrBottomThresholdWithCalcEngine:formulaCoord:isTop:keyScale:]", v35);
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v80);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v82, v78, v81, 2880, 0, "Unexpected key scale found: %d", scaleCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85);
  }

  return v36;
}

- (id)p_createThresholdCellValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v11 = objc_msgSend_deepType_(valueCopy, v7, 0, v8);
  if (v11 > 4u)
  {
    if (v11 == 5)
    {
      v32 = [TSCENumberValue alloc];
      v36 = objc_msgSend_number(valueCopy, v33, v34, v35);
      v40 = objc_msgSend_rawDecimalValue(v36, v37, v38, v39);
      v44 = objc_msgSend_number(valueCopy, v41, v42, v43);
      v48 = objc_msgSend_unit(v44, v45, v46, v47);
      v16 = objc_msgSend_initWithDecimal_baseUnit_(v32, v49, v40, v48);

      v50 = [TSCENumberCellValue alloc];
      v18 = objc_msgSend_initWithNumberValue_locale_(v50, v51, v16, localeCopy);
      goto LABEL_10;
    }

    if (v11 != 9)
    {
LABEL_8:
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTHiddenStateExtent p_createThresholdCellValue:locale:]", v10);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 2906, 0, "Unexpected threshold value type found: %d", v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
      v22 = 0;
      goto LABEL_11;
    }

LABEL_7:
    v19 = [TSCENilCellValue alloc];
    v22 = objc_msgSend_initWithLocale_(v19, v20, localeCopy, v21);
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_7;
  }

  if (v11 != 3)
  {
    goto LABEL_8;
  }

  v12 = [TSCEDateCellValue alloc];
  v16 = objc_msgSend_date(valueCopy, v13, v14, v15);
  v18 = objc_msgSend_initWithDate_locale_(v12, v17, v16, localeCopy);
LABEL_10:
  v22 = v18;

LABEL_11:

  return v22;
}

- (void)p_calculateUniqueDistinctIndexWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord tableModel:(id)model rule:(id)rule
{
  v91 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  modelCopy = model;
  ruleCopy = rule;
  v13 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(ruleCopy, v11, modelCopy, v12);
  v17 = objc_msgSend_columnRowUIDMap(modelCopy, v14, v15, v16);
  v89._lower = objc_msgSend_columnUIDForColumnIndex_(v17, v18, v13, v19);
  v89._upper = v20;

  v84 = TSKUIDStruct::NSUUIDValue(&v89);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v83 = selfCopy;
  objc_msgSend_uniqueValuesLock(selfCopy, v22, v23, v24);
  uniqueValuesByColumnUid = selfCopy->_uniqueValuesByColumnUid;
  if (!uniqueValuesByColumnUid)
  {
    v28 = objc_opt_new();
    v29 = selfCopy->_uniqueValuesByColumnUid;
    selfCopy->_uniqueValuesByColumnUid = v28;

    uniqueValuesByColumnUid = selfCopy->_uniqueValuesByColumnUid;
  }

  v30 = objc_msgSend_objectForKey_(uniqueValuesByColumnUid, v25, v84, v26);
  v31 = v30 == 0;

  if (v31)
  {
    v79 = objc_msgSend_p_calculateUniqueThresholdWithCalcEngine_formulaCoord_(v83, v32, engineCopy, coord);
    if (!v79)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTHiddenStateExtent p_calculateUniqueDistinctIndexWithCalcEngine:formulaCoord:tableModel:rule:]", v36);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 2928, 0, "invalid nil value for '%{public}s'", "uniqueKeyToRowIndexes");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
    }

    v80 = objc_opt_new();
    v49 = objc_msgSend_mutableCopy(v79, v46, v47, v48);
    objc_msgSend_setUniqueValueToRowIndexes_(v80, v50, v49, v51);

    v55 = objc_msgSend_uniqueValueToRowUids(v80, v52, v53, v54);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v56 = v79;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v85, v90, 16);
    if (v60)
    {
      v61 = *v86;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v86 != v61)
          {
            objc_enumerationMutation(v56);
          }

          v63 = *(*(&v85 + 1) + 8 * i);
          v64 = objc_msgSend_objectForKey_(v56, v58, v63, v59);
          v68 = objc_msgSend_columnRowUIDMap(modelCopy, v65, v66, v67);
          v70 = objc_msgSend_UIDSetForIndexes_isRows_(v68, v69, v64, 1);

          objc_msgSend_setObject_forKey_(v55, v71, v70, v63);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v58, &v85, v90, 16);
      }

      while (v60);
    }

    v75 = v83;
    if (!v83->_columnUidsWithUniqueIndexes.__table_.__size_)
    {
      v76 = objc_msgSend_cellWillChangeDistributor(modelCopy, v72, v73, v74);
      objc_msgSend_addReceiver_(v76, v77, v83, v78);

      v75 = v83;
    }

    objc_msgSend_setObject_forKey_(v75->_uniqueValuesByColumnUid, v72, v80, v84);
    sub_2210C2B00(&v75->_columnUidsWithUniqueIndexes.__table_.__bucket_list_.__ptr_, &v89, &v89);
  }

  objc_msgSend_uniqueValuesUnlock(v83, v32, v33, v34);
  objc_sync_exit(v83);
}

- (unsigned)ownerKind
{
  if (self->_forRows)
  {
    return 4;
  }

  else
  {
    return 11;
  }
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_hiddenStateExtentUid._upper;
  lower = self->_hiddenStateExtentUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v6 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5);

  return v6;
}

- (id)linkedResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v6 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5);

  return v6;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  v311[0] = at;
  engineCopy = engine;
  if ((objc_msgSend_shouldAbortRecalculation(engineCopy, v5, v6, v7) & 1) == 0)
  {
    v12 = objc_msgSend_filterCoordTypeForFilterCoordinate_(TSTHiddenStates, v8, v311, v9);
    v281 = objc_msgSend_columnOrRowIndexForFilterCoordinate_(TSTHiddenStates, v13, v311, v14);
    v18 = objc_msgSend_hiddenStatesOwner(self, v15, v16, v17);
    v282 = objc_msgSend_hiddenStates(v18, v19, v20, v21);

    if (self->_forRows)
    {
      objc_msgSend_filterSetForRows(v282, v22, v23, v24);
    }

    else
    {
      objc_msgSend_filterSetForColumns(v282, v22, v23, v24);
    }
    v285 = ;
    v28 = objc_msgSend_tableTranslator(self, v25, v26, v27);
    v283 = objc_msgSend_tableModel(self, v29, v30, v31);
    if (objc_msgSend_needsFormulaRewriteForImport(v285, v32, v33, v34))
    {
      obj = v283;
      objc_sync_enter(obj);
      if (objc_msgSend_needsFormulaRewriteForImport(v285, v38, v39, v40))
      {
        v289 = v28;
        v44 = objc_msgSend_context(obj, v41, v42, v43);
        v280 = v12;
        v47 = objc_msgSend_copyWithContext_(v285, v45, v44, v46);

        for (i = 0; i < objc_msgSend_ruleCount(v47, v48, v49, v50); ++i)
        {
          v54 = objc_msgSend_ruleAtAbsoluteIndex_(v47, v52, i, v53);
          v57 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v54, v55, obj, v56);
          v307 = 0;
          v308 = &v307;
          v309 = 0x2020000000;
          v310 = 0;
          v303 = 0;
          v304 = &v303;
          v305 = 0x2020000000;
          v306 = 0;
          v299 = 0;
          v300 = &v299;
          v301 = 0x2020000000;
          v302 = 1;
          v295 = 0;
          v296 = &v295;
          v297 = 0x2020000000;
          v298 = 0;
          v61 = objc_msgSend_bodyRowRange(v28, v58, v59, v60);
          v63 = v62;
          v66 = objc_msgSend_tableInfo(self, v62, v64, v65);
          v68 = v66;
          v69 = v61;
          v294[0] = MEMORY[0x277D85DD0];
          v294[1] = 3221225472;
          v70 = (v61 & 0xFFFF00000000) != 0x7FFF00000000 && v61 == 0x7FFFFFFFLL;
          v294[2] = sub_2213932AC;
          v294[3] = &unk_278463988;
          if (v70)
          {
            v69 = 0;
          }

          v294[4] = &v303;
          v294[5] = &v295;
          v294[6] = &v299;
          v294[7] = &v307;
          objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v66, v67, v69 | (v57 << 32), v63 & 0xFFFFFFFF00000000 | 1, 2, 0x400000, v294);

          v28 = v289;
          if ((v308[3] & 1) == 0 && *(v304 + 24) == 1 && *(v300 + 24) == 1)
          {
            hiddenStateExtentUid = self->_hiddenStateExtentUid;
            v74 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v71, v72, v73);
            v78 = objc_msgSend_predicate(v54, v75, v76, v77);
            v291 = v74;
            v292 = hiddenStateExtentUid;
            objc_msgSend_rewriteNumberToDurationForSageImport_durationUnitLargest_(v78, v79, &v291, *(v296 + 24));

            self->_needsToUpdateFilterSetForImport = 1;
          }

          _Block_object_dispose(&v295, 8);
          _Block_object_dispose(&v299, 8);
          _Block_object_dispose(&v303, 8);
          _Block_object_dispose(&v307, 8);
        }

        objc_msgSend_setNeedsFormulaRewriteForImport_(v47, v52, 0, v53);
        if (self->_rewrittenFilterSet)
        {
          v82 = MEMORY[0x277D81150];
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v81);
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v85);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v87, v83, v86, 3049, 0, "should have nil _rewrittenFilterSet");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90);
        }

        objc_storeStrong(&self->_rewrittenFilterSet, v47);
        __dmb(0xBu);
        objc_msgSend_setNeedsFormulaRewriteForImport_(v285, v91, 0, v92);

        v28 = v289;
        v12 = v280;
      }

      objc_sync_exit(obj);
    }

    rewrittenFilterSet = self->_rewrittenFilterSet;
    if (rewrittenFilterSet)
    {
      v96 = rewrittenFilterSet;
    }

    else
    {
      v97 = objc_msgSend_context(v283, v35, v36, v37);
      v96 = objc_msgSend_copyWithContext_(v285, v98, v97, v99);
    }

    if (v12 != 4)
    {
      if (v12 != 2)
      {
        v180 = objc_msgSend_viewRowIndexForBaseRowIndex_(v28, v94, v281, v95);
        v184 = objc_msgSend_headerRowRange(v28, v181, v182, v183);
        if (v185 >> 32 && v185)
        {
          v188 = v184 & 0xFFFF00000000;
          if (v184 == 0x7FFFFFFF && v188 != 0x7FFF00000000)
          {
            goto LABEL_106;
          }

          v189 = v184 != 0x7FFFFFFF || v188 == 0x7FFF00000000;
          v190 = !v189;
          if (v180 >= v184 || v190)
          {
            v191 = v184 + HIDWORD(v185) - 1;
            if (v184 == 0x7FFFFFFF)
            {
              v191 = 0x7FFFFFFF;
            }

            if (v191 >= v180)
            {
              goto LABEL_106;
            }
          }
        }

        v192 = objc_msgSend_footerRowRange(v28, v185, v186, v187);
        if (v193 >> 32 && v193)
        {
          v194 = v192 & 0xFFFF00000000;
          if (v192 == 0x7FFFFFFF && v194 != 0x7FFF00000000)
          {
            goto LABEL_106;
          }

          v195 = v192 != 0x7FFFFFFF || v194 == 0x7FFF00000000;
          v196 = !v195;
          if (v180 >= v192 || v196)
          {
            v197 = v192 + HIDWORD(v193) - 1;
            if (v192 == 0x7FFFFFFF)
            {
              v197 = 0x7FFFFFFF;
            }

            if (v197 >= v180)
            {
              goto LABEL_106;
            }
          }
        }

        if (objc_msgSend_rowIsShown_withHiddenStateExtent_withCalcEngine_(v96, v193, v281, self, engineCopy))
        {
LABEL_106:
          selfCopy2 = self;
          os_unfair_lock_lock(&self->_pendingComputedLock);
          TSUIndexSet::addIndex(&self->_pendingColumnsOrRowsShown);
        }

        else
        {
          selfCopy2 = self;
          os_unfair_lock_lock(&self->_pendingComputedLock);
          TSUIndexSet::addIndex(&self->_pendingColumnsOrRowsHidden);
        }

        os_unfair_lock_unlock(&selfCopy2->_pendingComputedLock);
        goto LABEL_156;
      }

      obja = self->_thresholdCellValues;
      if (!self->_thresholdCellValues)
      {
        selfCopy3 = self;
        objc_sync_enter(selfCopy3);
        thresholdCellValues = self->_thresholdCellValues;
        if (!thresholdCellValues)
        {
          objc_msgSend_clearAllCachedRowIndexes(selfCopy3, v103, v104, v105);
          v107 = objc_alloc(MEMORY[0x277CBEB18]);
          v110 = objc_msgSend_initWithCapacity_(v107, v108, 8, v109);
          v111 = [TSCENilCellValue alloc];
          v115 = objc_msgSend_objectLocale(v283, v112, v113, v114);
          v118 = objc_msgSend_initWithLocale_(v111, v116, v115, v117);

          v121 = 8;
          do
          {
            objc_msgSend_addObject_(v110, v119, v118, v120);
            --v121;
          }

          while (v121);
          objc_storeStrong(&self->_thresholdCellValues, v110);
          v122 = self->_thresholdCellValues;
          v126 = objc_msgSend_hiddenStateFormulaOwnerForRows(v283, v123, v124, v125);
          objc_msgSend_setThresholdCellValues_(v126, v127, v122, v128);

          thresholdCellValues = self->_thresholdCellValues;
        }

        v129 = thresholdCellValues;

        objc_sync_exit(selfCopy3);
        obja = v129;
      }

      v130 = objc_msgSend_ruleAtAbsoluteIndex_(v96, v100, v281, v101);
      v134 = objc_msgSend_predicate(v130, v131, v132, v133);
      v138 = v134;
      if (!v134)
      {
        goto LABEL_155;
      }

      v139 = objc_msgSend_predicateType(v134, v135, v136, v137);
      if (v139 > 45)
      {
        if (v139 > 48)
        {
          if (v139 == 49)
          {
LABEL_135:
            v242 = objc_msgSend_qualifier1(v138, v140, v141, v142);
            objc_msgSend_p_calculateTopOrBottomThresholdWithCalcEngine_formulaCoord_isTop_keyScale_(self, v243, engineCopy, v311, 0, v242);
            v234 = LABEL_144:;
            goto LABEL_145;
          }

          if (v139 == 52)
          {
            goto LABEL_132;
          }

LABEL_146:
          v253 = MEMORY[0x277D81150];
          v254 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v142);
          v257 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v255, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v256);
          v261 = objc_msgSend_predicateType(v138, v258, v259, v260);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v253, v262, v254, v257, 3121, 0, "Unexpected predicate type found when calculating threshold: %d", v261);

          v238 = 0;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v263, v264, v265);
          goto LABEL_147;
        }

        if ((v139 - 46) < 2)
        {
LABEL_127:
          v234 = objc_msgSend_p_calculateAverageThresholdWithCalcEngine_formulaCoord_(self, v140, engineCopy, v311);
LABEL_145:
          v248 = 1;
          v238 = v234;
          v249 = objc_msgSend_nativeType(v234, v235, v236, v237);
          goto LABEL_148;
        }

        if (v139 != 48)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v139 <= 29)
        {
          if ((v139 - 11) >= 2)
          {
            if ((v139 - 15) >= 2)
            {
              goto LABEL_146;
            }

LABEL_132:
            v238 = 0;
            objc_msgSend_p_calculateUniqueDistinctIndexWithCalcEngine_formulaCoord_tableModel_rule_(self, v140, engineCopy, v311, v283, v130);
LABEL_147:
            v248 = 0;
            v249 = objc_msgSend_nativeType(0, v239, v240, v241);
LABEL_148:
            if (v249 == 6)
            {
              v266 = objc_msgSend_asReferenceValue(v238, v250, v251, v252);
              v307 = objc_msgSend_tableUID(v283, v267, v268, v269);
              v308 = v270;
              v271 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v270, engineCopy, &v307, v311[0], 0);
              v273 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v266, v272, v271, 0);

              if (!v248)
              {
                goto LABEL_154;
              }
            }

            else
            {
              v273 = v238;
              if (!v248)
              {
LABEL_154:

LABEL_155:
                goto LABEL_156;
              }
            }

            v274 = objc_msgSend_objectLocale(v283, v250, v251, v252);
            v276 = objc_msgSend_p_createThresholdCellValue_locale_(self, v275, v273, v274);

            if (v276)
            {
              selfCopy4 = self;
              objc_sync_enter(selfCopy4);
              objc_msgSend_replaceObjectAtIndex_withObject_(obja, v278, v281, v276);
              objc_sync_exit(selfCopy4);
            }

            goto LABEL_154;
          }

          goto LABEL_127;
        }

        if (v139 != 30)
        {
          if (v139 == 31)
          {
            goto LABEL_135;
          }

          goto LABEL_146;
        }
      }

      v246 = objc_msgSend_qualifier1(v138, v140, v141, v142);
      objc_msgSend_p_calculateTopOrBottomThresholdWithCalcEngine_formulaCoord_isTop_keyScale_(self, v247, engineCopy, v311, 1, v246);
      goto LABEL_144;
    }

    v143 = objc_msgSend_ruleAtAbsoluteIndex_(v96, v94, 0, v95);
    v147 = objc_msgSend_predicate(v143, v144, v145, v146);

    v154 = objc_msgSend_predicateType(v147, v148, v149, v150);
    if ((v154 & 0xFE) != 0x32)
    {
      v155 = MEMORY[0x277D81150];
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v153);
      v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v158);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v155, v160, v156, v159, 3144, 0, "Only grandTotal predicates are supported for view indexes, not predType %d", v154);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163);
    }

    if (self->_forRows)
    {
      v164 = objc_msgSend_headerRowRange(v28, v151, v152, v153);
      if (v165 >> 32 && v165)
      {
        v168 = v164 & 0xFFFF00000000;
        if (v164 == 0x7FFFFFFF && v168 != 0x7FFF00000000)
        {
          goto LABEL_139;
        }

        v169 = v164 != 0x7FFFFFFF || v168 == 0x7FFF00000000;
        v170 = !v169;
        if (v281 >= v164 || v170)
        {
          v171 = v164 + HIDWORD(v165) - 1;
          if (v164 == 0x7FFFFFFF)
          {
            v171 = 0x7FFFFFFF;
          }

          if (v171 >= v281)
          {
            goto LABEL_139;
          }
        }
      }

      v172 = objc_msgSend_footerRowRange(v28, v165, v166, v167);
      if (v173 >> 32 && v173)
      {
        v176 = v172 & 0xFFFF00000000;
        if (v172 == 0x7FFFFFFF && v176 != 0x7FFF00000000)
        {
          goto LABEL_139;
        }

        v177 = v172 != 0x7FFFFFFF || v176 == 0x7FFF00000000;
        v178 = !v177;
        if (v281 >= v172 || v178)
        {
          v179 = v172 + HIDWORD(v173) - 1;
          if (v172 == 0x7FFFFFFF)
          {
            v179 = 0x7FFFFFFF;
          }

          if (v179 >= v281)
          {
            goto LABEL_139;
          }
        }
      }
    }

    else
    {
      v199 = objc_msgSend_headerColumnRange(v28, v151, v152, v153);
      if (v173 >> 32 && v173)
      {
        if (v199 != 0x7FFFFFFF && (v199 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          goto LABEL_139;
        }

        if (WORD2(v199) <= v281)
        {
          v200 = WORD2(v199) == 0x7FFF || v173 == 0;
          v201 = v200 ? 0x7FFF : v173 + WORD2(v199) - 1;
          if (v201 >= v281)
          {
            goto LABEL_139;
          }
        }
      }
    }

    if (!objc_msgSend_isEnabled(v96, v173, v174, v175))
    {
LABEL_139:
      p_pendingComputedLock = &self->_pendingComputedLock;
      os_unfair_lock_lock(&self->_pendingComputedLock);
      TSUIndexSet::addIndex(&self->_pendingViewColumnsOrRowsShown);
LABEL_140:
      os_unfair_lock_unlock(p_pendingComputedLock);

LABEL_156:
      v11 = 0;
      v10 = options.var0 & 0x5F;
      goto LABEL_157;
    }

    v205 = objc_msgSend_tableInfo(self, v202, v203, v204);
    if ((objc_msgSend_isAPivotTable(v205, v206, v207, v208) & 1) == 0)
    {
      v212 = MEMORY[0x277D81150];
      v213 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v211);
      v216 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v214, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v215);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v212, v217, v213, v216, 3159, 0, "Only expect this on pivot tables, atm.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v218, v219, v220);
    }

    v221 = objc_msgSend_tableModel(self, v209, v210, v211);
    v225 = objc_msgSend_pivotOwner(v221, v222, v223, v224);
    v229 = objc_msgSend_groupBySet(v225, v226, v227, v228);

    v307 = 0;
    v308 = 0;
    if (v154 == 51)
    {
      v233 = objc_msgSend_columnUIDForColumnIndex_(v205, v230, v281, v231);
      v232 = 1;
    }

    else
    {
      v232 = 0;
      if (v154 != 50)
      {
        goto LABEL_138;
      }

      v233 = objc_msgSend_rowUIDForRowIndex_(v205, v230, v281, 0);
      v232 = 0;
    }

    v307 = v233;
    v308 = v230;
LABEL_138:
    hasUnfilteredAt_forDimension = objc_msgSend_hasUnfilteredAt_forDimension_(v229, v230, &v307, v232);

    if ((hasUnfilteredAt_forDimension & 1) == 0)
    {
      p_pendingComputedLock = &self->_pendingComputedLock;
      os_unfair_lock_lock(&self->_pendingComputedLock);
      TSUIndexSet::addIndex(&self->_pendingViewColumnsOrRowsHidden);
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v10 = options.var0 & 0x5F | 0x20;
  v11 = 0x80;
LABEL_157:

  return (v11 | v10);
}

- (void)writeResultsForCalcEngine:(id)engine
{
  v8 = objc_msgSend_tableInfo(self, a2, engine, v3);
  if (self->_rewrittenFilterSet)
  {
    v9 = objc_msgSend_tableInfo(self, v5, v6, v7);
    objc_msgSend_setFilterSet_(v9, v10, self->_rewrittenFilterSet, v11);

    rewrittenFilterSet = self->_rewrittenFilterSet;
    self->_rewrittenFilterSet = 0;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x5012000000;
  v53 = sub_2213938A8;
  v54 = sub_2213938CC;
  v55 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v56);
  if (TSUIndexSet::count(&self->_pendingColumnsOrRowsShown) || TSUIndexSet::count(&self->_pendingColumnsOrRowsHidden) || TSUIndexSet::count(&self->_pendingViewColumnsOrRowsShown) || TSUIndexSet::count(&self->_pendingViewColumnsOrRowsHidden))
  {
    v16 = objc_msgSend_tableModel(self, v13, v14, v15);
    objc_msgSend_willModify(v16, v17, v18, v19);
  }

  v49 = objc_msgSend_translator(v8, v13, v14, v15);
  TSUIndexSet::enumerateIndexesUsingBlock();
  TSUIndexSet::enumerateIndexesUsingBlock();
  v48 = MEMORY[0x277D85DD0];
  v20 = v49;
  TSUIndexSet::enumerateIndexesUsingBlock();
  v47 = MEMORY[0x277D85DD0];
  TSUIndexSet::enumerateIndexesUsingBlock();
  if (self->_forRows)
  {
    v24 = objc_msgSend_numberOfColumns(v8, v21, v22, v23);
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = sub_221393AEC;
    v44 = &unk_278463A00;
    v46 = v24;
    selfCopy = self;
  }

  else
  {
    v25 = objc_msgSend_numberOfRows(v8, v21, v22, v23);
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = sub_221393B3C;
    v38 = &unk_278463A00;
    v40 = v25;
    selfCopy2 = self;
  }

  TSUIndexSet::enumerateRangesUsingBlock();
  if (objc_msgSend_isAPivotTable(v8, v26, v27, v28, v35, v36, v37, v38, selfCopy2, v40, v41, v42, v43, v44, selfCopy, v46, v47, 3221225472, sub_221393A88, &unk_2784639D8, self, &v50, v48, 3221225472, sub_2213939E0, &unk_2784639B0) && TSUIndexSet::count((v51 + 6)))
  {
    v32 = objc_msgSend_pivotOwner(v8, v29, v30, v31);
    v33 = TSUIndexSet::asNSIndexSet((v51 + 6));
    objc_msgSend_filteringChanged_forDimension_(v32, v34, v33, !self->_forRows);
  }

  os_unfair_lock_lock(&self->_pendingComputedLock);
  TSUIndexSet::removeAllIndexes(&self->_pendingColumnsOrRowsShown);
  TSUIndexSet::removeAllIndexes(&self->_pendingColumnsOrRowsHidden);
  TSUIndexSet::removeAllIndexes(&self->_pendingViewColumnsOrRowsShown);
  TSUIndexSet::removeAllIndexes(&self->_pendingViewColumnsOrRowsHidden);
  os_unfair_lock_unlock(&self->_pendingComputedLock);

  _Block_object_dispose(&v50, 8);
  TSUIndexSet::~TSUIndexSet(&v56);
}

- (void)setFilterSet:(id)set
{
  setCopy = set;
  if (objc_msgSend_containsFilterRulesInUIDForm(setCopy, v5, v6, v7))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent setFilterSet:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 3531, 0, "filterset should be in geometric form");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  objc_storeStrong(&self->_filterSet, set);
  if (objc_msgSend_p_canUsePrePivotFilterSet(self, v19, v20, v21))
  {
    v25 = objc_msgSend_tableModel(self, v22, v23, v24);
    objc_msgSend_willModify(v25, v26, v27, v28);
    filterSet = self->_filterSet;
    v33 = objc_msgSend_objectLocale(filterSet, v30, v31, v32);
    v36 = objc_msgSend_downgradeFilterSetForBackwardCompatWithLocale_(filterSet, v34, v33, v35);
    objc_msgSend_setPrePivotRowFilterSet_(v25, v37, v36, v38);
  }
}

- (TSTTableFilterSet)filterSet
{
  filterSet = self->_filterSet;
  if (!filterSet)
  {
    if (objc_msgSend_p_canUsePrePivotFilterSet(self, a2, v2, v3))
    {
      v9 = objc_msgSend_tableModel(self, v6, v7, v8);
      v13 = objc_msgSend_prePivotRowFilterSet(v9, v10, v11, v12);
      v17 = objc_msgSend_tableModel(self, v14, v15, v16);
      v21 = objc_msgSend_context(v17, v18, v19, v20);
      v24 = objc_msgSend_copyWithContext_(v13, v22, v21, v23);
      v25 = self->_filterSet;
      self->_filterSet = v24;
    }

    filterSet = self->_filterSet;
    if (!filterSet)
    {
      v26 = objc_msgSend_tableModel(self, v6, v7, v8);
      WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

      if (WeakRetained && v26)
      {
        v28 = [TSTTableFilterSet alloc];
        v32 = objc_msgSend_context(v26, v29, v30, v31);
        v34 = objc_msgSend_initWithFilterRules_type_context_(v28, v33, 0, 0, v32);
        objc_msgSend_setFilterSet_(self, v35, v34, v36);
      }

      filterSet = self->_filterSet;
    }
  }

  return filterSet;
}

- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import
{
  importCopy = import;
  self->_needsToUpdateFilterSetForImport = import;
  v6 = objc_msgSend_forRows(self, a2, import, v3);
  v10 = objc_msgSend_tableModel(self, v7, v8, v9);
  v17 = v10;
  if (v6)
  {
    objc_msgSend_hiddenStateFormulaOwnerForRows(v10, v11, v12, v13);
  }

  else
  {
    objc_msgSend_hiddenStateFormulaOwnerForColumns(v10, v11, v12, v13);
  }
  v14 = ;
  objc_msgSend_setNeedsToUpdateFilterSetForImport_(v14, v15, importCopy, v16);
}

- (id)duplicateFilterSet
{
  v5 = objc_msgSend_filterSet(self, a2, v2, v3);
  v9 = objc_msgSend_tableModel(self, v6, v7, v8);
  v13 = objc_msgSend_context(v9, v10, v11, v12);
  v16 = objc_msgSend_copyWithContext_(v5, v14, v13, v15);

  return v16;
}

- (id)duplicateFilterSetInUidFormWithTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_filterSet(self, v5, v6, v7);
  v12 = objc_msgSend_context(tableCopy, v9, v10, v11);
  v14 = objc_msgSend_copyByRewritingFilterRulesToUidFormWithContext_withTableInfo_(v8, v13, v12, tableCopy);

  return v14;
}

- (BOOL)needsFilterFormulaRewriteForImport
{
  v4 = objc_msgSend_filterSet(self, a2, v2, v3);
  v8 = objc_msgSend_needsFormulaRewriteForImport(v4, v5, v6, v7);

  return v8;
}

- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)import
{
  importCopy = import;
  v7 = objc_msgSend_filterSet(self, a2, import, v3);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v7, v5, importCopy, v6);
}

- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  selfCopy = self;
  v11 = objc_msgSend_filterSet(self, v8, v9, v10);
  v18 = objc_msgSend_baseTableModel(tableCopy, v12, v13, v14);
  for (i = 0; i < objc_msgSend_ruleCount(v11, v15, v16, v17); ++i)
  {
    v23 = objc_msgSend_ruleAtAbsoluteIndex_(v11, v20, i, v22);
    v27 = objc_msgSend_predicate(v23, v24, v25, v26);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_221394330;
    v32[3] = &unk_278463A28;
    v35 = blockCopy;
    v28 = v23;
    v33 = v28;
    v34 = v18;
    objc_msgSend_rewriteFormulaWithBlock_(v27, v29, v32, v30);
  }

  objc_msgSend_filterSetUpdated(selfCopy, v20, v21, v22);
}

- (void)enableFilterSet:(BOOL)set
{
  setCopy = set;
  v17 = objc_msgSend_filterSet(self, a2, set, v3);
  if (objc_msgSend_isEnabled(v17, v6, v7, v8) != setCopy)
  {
    objc_msgSend_setIsEnabled_(v17, v9, setCopy, v10);
    if (setCopy)
    {
      objc_msgSend_p_removeAllFormulaFromCalculationEngine(self, v11, v12, v13);
      objc_msgSend_p_registerAllFormulas(self, v14, v15, v16);
    }

    else
    {
      objc_msgSend_dirtyFilterState(self, v11, v12, v13);
    }
  }
}

- (void)setFilterSetType:(int)type
{
  v4 = *&type;
  v6 = objc_msgSend_filterSet(self, a2, *&type, v3);
  objc_msgSend_setFilterSetType_(v6, v7, v4, v8);

  objc_msgSend_filterSetUpdated(self, v9, v10, v11);
}

- (BOOL)hasActiveFilters
{
  v4 = objc_msgSend_filterSet(self, a2, v2, v3);
  v8 = v4;
  v12 = v4 && objc_msgSend_isEnabled(v4, v5, v6, v7) && objc_msgSend_ruleCount(v8, v9, v10, v11) != 0;

  return v12;
}

- (void)filterSetUpdated
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_calcEngine);
    v7 = v4;
    if (v4)
    {
      objc_msgSend_allFormulaCoordsInOwner_(v4, v5, &self->_hiddenStateExtentUid, v6);
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    v20._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
    v20._rowsPerColumn.__tree_.__size_ = 0;
    v20._rectRepresentation.origin = 0;
    v20._rectRepresentation.size = 0;
    v20._rowsPerColumn.__tree_.__begin_node_ = &v20._rowsPerColumn.__tree_.__end_node_;
    objc_msgSend_p_registerAllFormulasReturningCoords_(self, v8, &v20, v9);
    TSCECellCoordSet::removeCellCoords(&v21, &v20);
    if (!TSCECellCoordSet::isEmpty(&v21))
    {
      v19._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v19._coordsForOwnerUid.__tree_.__size_ = 0;
      v19._coordsForOwnerUid.__tree_.__begin_node_ = &v19._coordsForOwnerUid.__tree_.__end_node_;
      TSCECellRefSet::addCellRefs(&v19, &self->_hiddenStateExtentUid, &v21);
      v13 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_removeFormulasAt_(v13, v14, &v19, v15);

      sub_22107C800(&v19, v19._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }

    objc_msgSend_clearInvalidIndexes(self, v10, v11, v12);
    objc_msgSend_dirtyFilterState(self, v16, v17, v18);
    sub_22107C860(&v20._rowsPerColumn, v20._rowsPerColumn.__tree_.__end_node_.__left_);
    sub_22107C860(&v21._rowsPerColumn, v21._rowsPerColumn.__tree_.__end_node_.__left_);
  }
}

- (void)dirtyFilterStateForRowRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v6 = objc_msgSend_tableInfo(self, a2, range.location, range.length);
    isAPivotTable = objc_msgSend_isAPivotTable(v6, v7, v8, v9);

    v13 = (location + length - 1);
    if (isAPivotTable)
    {
      v21 = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v11, location, v12);
      v22 = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v14, v13, v15);
    }

    else
    {
      v21 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v11, location, v12);
      v22 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v19, v13, v20);
    }

    hiddenStateExtentUid = self->_hiddenStateExtentUid;
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_markRangeRefAsDirty_(WeakRetained, v17, &v21, v18);
  }
}

- (void)dirtyFilterStateForHeaders
{
  if (self->_forRows)
  {
    v5 = objc_msgSend_tableModel(self, a2, v2, v3);
    v17.origin = objc_msgSend_headerRowRange(v5, v6, v7, v8);
    v17.size = v9;

    v10 = TSUCellRect::rows(&v17);
  }

  else
  {
    v12 = objc_msgSend_tableModel(self, a2, v2, v3);
    v17.origin = objc_msgSend_headerColumnRange(v12, v13, v14, v15);
    v17.size = v16;

    v10 = TSUCellRect::columns(&v17);
  }

  objc_msgSend_dirtyFilterStateForRowRange_(self, v11, v10, v11, *&v17.origin, *&v17.size);
}

- (void)dirtyFilterStateForFooters
{
  if (self->_forRows)
  {
    v5 = objc_msgSend_tableModel(self, a2, v2, v3);
    v12.origin = objc_msgSend_footerRowRange(v5, v6, v7, v8);
    v12.size = v9;

    v10 = TSUCellRect::rows(&v12);
    objc_msgSend_dirtyFilterStateForRowRange_(self, v11, v10, v11, *&v12.origin, *&v12.size);
  }
}

- (void)dirtyFilterState
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  if (objc_msgSend_isAPivotTable(v5, v6, v7, v8))
  {
    v20.origin = objc_msgSend_range(v5, v9, v10, v11);
    v20.size = v12;
    if (self->_forRows)
    {
      goto LABEL_5;
    }

LABEL_6:
    v18 = TSUCellRect::columns(&v20);
    goto LABEL_7;
  }

  v13 = objc_msgSend_tableModel(self, v9, v10, v11);
  v20.origin = objc_msgSend_range(v13, v14, v15, v16);
  v20.size = v17;

  if (!self->_forRows)
  {
    goto LABEL_6;
  }

LABEL_5:
  v18 = TSUCellRect::rows(&v20);
LABEL_7:
  objc_msgSend_dirtyFilterStateForRowRange_(self, v19, v18, v19, *&v20.origin, *&v20.size);
}

- (BOOL)hasFilterRulesWithTable:(id)table inBaseColumns:(id)columns
{
  tableCopy = table;
  columnsCopy = columns;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = objc_msgSend_filterSet(self, v8, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221394AEC;
  v15[3] = &unk_278463A50;
  v12 = columnsCopy;
  v16 = v12;
  v17 = &v18;
  objc_msgSend_enumerateFiltersInTable_usingBlock_(v11, v13, tableCopy, v15);

  LOBYTE(columnsCopy) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return columnsCopy;
}

- (TSCECellRef)cellReferenceForIndex:(SEL)index
{
  retstr->coordinate = a4._index;
  retstr->_tableUID = *&self[1].coordinate.row;
  return self;
}

- (void)p_hiddenStateChangedForBaseIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  v6 = *&viewIndex._index;
  v7 = *&index._index;
  if (index._index != 0x7FFFFFFF)
  {
    objc_msgSend_cellReferenceForIndex_(self, a2, index._index, *&viewIndex._index);
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v10, &v26, v11);
  }

  if ((action & 2) != 0)
  {
    v12 = objc_msgSend_tableInfo(self, a2, *&index._index, *&viewIndex._index);
    isAPivotTable = objc_msgSend_isAPivotTable(v12, v13, v14, v15);

    if (isAPivotTable)
    {
      if (v6 == 0x7FFFFFFF)
      {
        return;
      }

      v19 = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v17, v6, v18);
      v27 = 0;
      v28 = 0;
      v26 = v19;
      v20 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_markCellRefAsDirty_(v20, v21, &v26, v22);
    }

    else
    {
      if (v7 == 0x7FFFFFFF)
      {
        return;
      }

      v23 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v17, v7, v18);
      v27 = 0;
      v28 = 0;
      v26 = v23;
      v20 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_markCellRefAsDirty_(v20, v24, &v26, v25);
    }
  }
}

- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d
{
  cellCopy = cell;
  if (cellCopy)
  {
    v11 = objc_msgSend_tableInfo(self, v7, v8, v9);
    v15 = objc_msgSend_baseTableModel(v11, v12, v13, v14);

    v75 = 0;
    LODWORD(v11) = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_skipPendingWrites_(v15, v16, &v75, *&coord, 0, 1);
    v20 = v75;
    if (v11 || (objc_msgSend_locale(cellCopy, v17, v18, v19), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_asStringWithLocale_(v20, v23, v22, v24), v21 = objc_claimAutoreleasedReturnValue(), v22, !v21))
    {
      v21 = &stru_2834BADA0;
    }

    v74[0] = objc_msgSend_columnUIDForColumnIndex_(v15, v17, coord._coord.column, v19);
    v74[1] = v25;
    objc_msgSend_uniqueValuesLock(self, v25, v26, v27);
    v30 = objc_msgSend_uniqueValuesForColumnUID_(self, v28, v74, v29);
    v34 = v30;
    if (v30)
    {
      v71 = v20;
      v35 = objc_msgSend_uniqueValueToRowUids(v30, v31, v32, v33);
      v39 = objc_msgSend_formattedValue(cellCopy, v36, v37, v38);
      if (v39)
      {
        v42 = v39;
        isEqualToString = objc_msgSend_isEqualToString_(v39, v40, v21, v41);
      }

      else
      {
        v42 = &stru_2834BADA0;
        isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v40, v21, v41);
      }

      if ((isEqualToString & 1) == 0)
      {
        v46 = objc_msgSend_rowUIDForRowIndex_(v15, v44, *&coord, v45);
        v48 = v47;
        v70 = objc_msgSend_objectForKey_(v35, v47, v21, v49);
        objc_msgSend_removeUUID_(v70, v50, v46, v48);
        if (!objc_msgSend_count(v70, v51, v52, v53))
        {
          objc_msgSend_removeObjectForKey_(v35, v54, v21, v55);
        }

        v57 = objc_msgSend_objectForKey_(v35, v54, v42, v55);
        if (!v57)
        {
          v57 = objc_opt_new();
          objc_msgSend_setObject_forKey_(v35, v58, v57, v42);
        }

        objc_msgSend_addUUID_(v57, v56, v46, v48);
        objc_msgSend_clearRowIndexesCache(v34, v59, v60, v61);
        WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
        v72[0] = objc_msgSend_tableUID(v15, v63, v64, v65);
        v72[1] = v66;
        objc_msgSend_uniqueDistinctPrecedentForTableUID_(TSCEHauntedOwner, v66, v72, v67);
        objc_msgSend_markCellRefAsDirty_(WeakRetained, v68, v73, v69);
      }

      v20 = v71;
    }

    objc_msgSend_uniqueValuesUnlock(self, v31, v32, v33);
  }
}

- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_221395068;
  v4[3] = &unk_278463A78;
  v4[4] = self;
  v4[5] = d;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(map, a2, v4, d);
}

- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213950F0;
  v4[3] = &unk_278463AA0;
  v4[4] = self;
  v4[5] = d;
  objc_msgSend_enumerateSeriallyUsingBlock_(map, a2, v4, d);
}

- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d
{
  v66 = *MEMORY[0x277D85DE8];
  objc_msgSend_uniqueValuesLock(self, a2, rows, d);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  selfCopy = self;
  obj = self->_uniqueValuesByColumnUid;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v59, v65, 16);
  if (v7)
  {
    v47 = *v60;
    do
    {
      v49 = v7;
      for (i = 0; i != v49; ++i)
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v11 = objc_msgSend_objectForKey_(selfCopy->_uniqueValuesByColumnUid, v8, *(*(&v59 + 1) + 8 * i), v9);
        v15 = objc_msgSend_uniqueValueToRowUids(v11, v12, v13, v14);
        v50 = v11;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v16 = v15;
        v18 = 0;
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v55, v64, 16);
        if (v21)
        {
          v22 = *v56;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v56 != v22)
              {
                objc_enumerationMutation(v16);
              }

              v24 = *(*(&v55 + 1) + 8 * j);
              v25 = objc_msgSend_objectForKey_(v16, v19, v24, v20);
              objc_msgSend_removeUuidsFromVector_(v25, v26, rows, v27);
              if (!objc_msgSend_count(v25, v28, v29, v30))
              {
                if (!v18)
                {
                  v18 = objc_opt_new();
                }

                objc_msgSend_addObject_(v18, v31, v24, v32);
              }
            }

            v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v55, v64, 16);
          }

          while (v21);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v33 = v18;
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v51, v63, 16);
        if (v37)
        {
          v38 = *v52;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v52 != v38)
              {
                objc_enumerationMutation(v33);
              }

              objc_msgSend_removeObjectForKey_(v16, v35, *(*(&v51 + 1) + 8 * k), v36);
            }

            v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v51, v63, 16);
          }

          while (v37);
        }

        objc_msgSend_clearRowIndexesCache(v50, v40, v41, v42);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v59, v65, 16);
    }

    while (v7);
  }

  objc_msgSend_uniqueValuesUnlock(selfCopy, v43, v44, v45);
}

- (id)uniqueValuesForColumnUID:(const TSKUIDStruct *)d
{
  if (*d == 0 || !sub_2210875C4(&self->_columnUidsWithUniqueIndexes.__table_.__bucket_list_.__ptr_, d))
  {
    v9 = 0;
  }

  else
  {
    uniqueValuesByColumnUid = self->_uniqueValuesByColumnUid;
    v6 = TSKUIDStruct::NSUUIDValue(d);
    v9 = objc_msgSend_objectForKey_(uniqueValuesByColumnUid, v7, v6, v8);
  }

  return v9;
}

- (void)clearAllCachedRowIndexes
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_uniqueValuesLock(self, a2, v2, v3);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_uniqueValuesByColumnUid;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_objectForKey_(self->_uniqueValuesByColumnUid, v7, *(*(&v19 + 1) + 8 * v11), v8, v19);
        objc_msgSend_clearRowIndexesCache(v12, v13, v14, v15);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v9);
  }

  objc_msgSend_uniqueValuesUnlock(self, v16, v17, v18);
}

- (void)endOfGroupingChangesBatch
{
  if (self->_invalidateViewGeometry)
  {
    self->_invalidateViewGeometry = 1;
  }

  else
  {
    v8 = objc_msgSend_tableTranslator(self, a2, v2, v3);
    self->_invalidateViewGeometry = objc_msgSend_areMapsStale(v8, v5, v6, v7);
  }
}

- (TSTHiddenStatesOwner)hiddenStatesOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);

  return WeakRetained;
}

- (TSKUIDStruct)hiddenStateExtentUid
{
  upper = self->_hiddenStateExtentUid._upper;
  lower = self->_hiddenStateExtentUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *&self->_baseHiddenByUid.__table_.__first_node_.__next_ = 0u;
  self->_baseHiddenByUid.__table_.__bucket_list_ = 0u;
  self->_baseHiddenByUid.__table_.__max_load_factor_ = 1.0;
  self->_summaryHiddenByUid.__table_.__bucket_list_ = 0u;
  *&self->_summaryHiddenByUid.__table_.__first_node_.__next_ = 0u;
  self->_summaryHiddenByUid.__table_.__max_load_factor_ = 1.0;
  self->_columnUidsWithUniqueIndexes.__table_.__bucket_list_ = 0u;
  *&self->_columnUidsWithUniqueIndexes.__table_.__first_node_.__next_ = 0u;
  self->_columnUidsWithUniqueIndexes.__table_.__max_load_factor_ = 1.0;
  TSUIndexSet::TSUIndexSet(&self->_pendingColumnsOrRowsShown);
  TSUIndexSet::TSUIndexSet(&self->_pendingColumnsOrRowsHidden);
  TSUIndexSet::TSUIndexSet(&self->_pendingViewColumnsOrRowsShown);
  TSUIndexSet::TSUIndexSet(&self->_pendingViewColumnsOrRowsHidden);
  self->_cellRangesToInvalidate.__begin_ = 0;
  self->_cellRangesToInvalidate.__end_ = 0;
  self->_cellRangesToInvalidate.__cap_ = 0;
  return self;
}

@end