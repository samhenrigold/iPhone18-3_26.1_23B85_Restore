@interface TSTCategoryOwner
+ (int64_t)p_compareGroupByViaOwnerIndexes:(id)indexes otherGroupBy:(id)by;
- (BOOL)allowRegistrationOfAggFormulas;
- (BOOL)backwardCompatibleToPrePivot;
- (BOOL)hasEnabledGroupBys;
- (NSArray)groupBys;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)p_willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord refreshCategoryInfo:(BOOL)info;
- (TSTCategoryOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTable:(id)table;
- (TSTCategoryOwner)initWithBaseTableModel:(id)model;
- (TSTCategoryOwner)initWithContext:(id)context;
- (TSTTableModel)tableModel;
- (id)description;
- (id)groupByByUid:(const TSKUIDStruct *)uid;
- (id)groupByForOwnerIndex:(unsigned __int16)index;
- (id)registerGroupByForColumns:(id)columns ownerIndex:(unsigned __int16)index hiddenStates:(id)states groupBySet:(id)set;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (void)addGroupByInSortedOrder:(id)order;
- (void)dealloc;
- (void)didAddRows:(const void *)rows;
- (void)didMergeRange:(TSUModelCellRect)range;
- (void)didUnmergeRange:(TSUModelCellRect)range;
- (void)linkGroupBy:(id)by;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)rebuildAllAggFormulas;
- (void)registerWithDistributors;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)resetAllGroupings;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setBaseTableUID:(TSKUIDStruct)d;
- (void)setFormulaOwnerUIDsWithMap:(id)map;
- (void)setTableModel:(id)model;
- (void)sortGroupBys;
- (void)teardown;
- (void)unregisterFromCalcEngine;
- (void)unregisterFromDistributors;
- (void)unregisterGroupBy:(id)by;
- (void)updateWithDocumentRoot:(id)root;
- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d;
- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willModify;
- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d;
@end

@implementation TSTCategoryOwner

- (TSTCategoryOwner)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTCategoryOwner;
  result = [(TSTCategoryOwner *)&v4 initWithContext:context];
  if (result)
  {
    result->_baseTableUID._lower = 0;
    result->_baseTableUID._upper = 0;
    result->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (TSTCategoryOwner)initWithBaseTableModel:(id)model
{
  modelCopy = model;
  v8 = objc_msgSend_context(modelCopy, v5, v6, v7);
  v15.receiver = self;
  v15.super_class = TSTCategoryOwner;
  v9 = [(TSTCategoryOwner *)&v15 initWithContext:v8];

  if (v9)
  {
    v9->_baseTableUID._lower = objc_msgSend_tableUID(modelCopy, v10, v11, v12);
    v9->_baseTableUID._upper = v13;
    objc_storeWeak(&v9->_tableModel, modelCopy);
    v9->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v9;
}

- (NSArray)groupBys
{
  os_unfair_lock_lock(&self->_lock);
  v6 = objc_msgSend_copy(self->_groupBys, v3, v4, v5);
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)rebuildAllAggFormulas
{
  v17 = *MEMORY[0x277D85DE8];
  objc_msgSend_groupBys(self, a2, v2, v3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_rebuildAllAggFormulas(*(*(&v12 + 1) + 8 * v11++), v6, v7, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)setBaseTableUID:(TSKUIDStruct)d
{
  dCopy = d;
  p_baseTableUID = &self->_baseTableUID;
  if (d._lower != self->_baseTableUID._lower || d._upper != self->_baseTableUID._upper)
  {
    v8 = self->_calcEngine;
    if (self->_isRegisteredWithCalcEngine)
    {
      objc_msgSend_unregisterFromCalcEngine(self, v5, v6, v7);
      *p_baseTableUID = dCopy;
      objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self, v9, v8, &dCopy);
    }

    else
    {
      *p_baseTableUID = dCopy;
    }
  }
}

- (void)setTableModel:(id)model
{
  modelCopy = model;
  v21 = modelCopy;
  if (modelCopy)
  {
    objc_storeWeak(&self->_tableModel, modelCopy);
    v10 = objc_msgSend_tableUID(v21, v7, v8, v9);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCategoryOwner setTableModel:]", v6);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 129, 0, "invalid nil value for '%{public}s'", "tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    objc_storeWeak(&self->_tableModel, 0);
    v11 = 0;
    v10 = 0;
  }

  self->_baseTableUID._lower = v10;
  self->_baseTableUID._upper = v11;
}

- (void)dealloc
{
  objc_msgSend_teardown(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = TSTCategoryOwner;
  [(TSTCategoryOwner *)&v5 dealloc];
}

- (BOOL)hasEnabledGroupBys
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_groupBys;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_isEnabled(*(*(&v12 + 1) + 8 * i), v5, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (BOOL)backwardCompatibleToPrePivot
{
  os_unfair_lock_lock(&self->_lock);
  if (objc_msgSend_count(self->_groupBys, v3, v4, v5) > 1)
  {
    goto LABEL_5;
  }

  if (!objc_msgSend_count(self->_groupBys, v6, v7, v8))
  {
    v22 = 1;
    goto LABEL_7;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_groupBys, v9, 0, v10);
  v15 = objc_msgSend_ownerIndex(v11, v12, v13, v14);

  if (v15 == 8)
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(self->_groupBys, v16, 0, v17);
    v22 = objc_msgSend_usesPrePivotAggregateTypesOnly(v18, v19, v20, v21);
  }

  else
  {
LABEL_5:
    v22 = 0;
  }

LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  return v22;
}

- (void)willModify
{
  v13.receiver = self;
  v13.super_class = TSTCategoryOwner;
  [(TSTCategoryOwner *)&v13 willModify];
  if (objc_msgSend_backwardCompatibleToPrePivot(self, v3, v4, v5))
  {
    v9 = objc_msgSend_tableModel(self, v6, v7, v8);
    objc_msgSend_willModify(v9, v10, v11, v12);
  }
}

+ (int64_t)p_compareGroupByViaOwnerIndexes:(id)indexes otherGroupBy:(id)by
{
  indexesCopy = indexes;
  byCopy = by;
  if (indexesCopy == byCopy)
  {
    goto LABEL_10;
  }

  v10 = objc_msgSend_ownerIndex(indexesCopy, v6, v7, v8);
  if (v10 >= objc_msgSend_ownerIndex(byCopy, v11, v12, v13))
  {
    v18 = objc_msgSend_ownerIndex(indexesCopy, v14, v15, v16);
    if (v18 != objc_msgSend_ownerIndex(byCopy, v19, v20, v21))
    {
      goto LABEL_11;
    }

    v25 = objc_msgSend_groupByUid(indexesCopy, v22, v23, v24);
    v27 = v26;
    v30 = objc_msgSend_groupByUid(byCopy, v26, v28, v29);
    if (v27 < v31 || v27 == v31 && v25 < v30)
    {
      goto LABEL_3;
    }

    v34 = objc_msgSend_groupByUid(indexesCopy, v31, v32, v33);
    v36 = v35;
    if (v34 != objc_msgSend_groupByUid(byCopy, v35, v37, v38) || v36 != v39)
    {
LABEL_11:
      v17 = 1;
      goto LABEL_12;
    }

LABEL_10:
    v17 = 0;
    goto LABEL_12;
  }

LABEL_3:
  v17 = -1;
LABEL_12:

  return v17;
}

- (void)addGroupByInSortedOrder:(id)order
{
  orderCopy = order;
  os_unfair_lock_lock(&self->_lock);
  if (objc_msgSend_count(self->_groupBys, v4, v5, v6))
  {
    for (i = 0; ; ++i)
    {
      v13 = objc_msgSend_count(self->_groupBys, v7, v8, v9);
      groupBys = self->_groupBys;
      if (i >= v13)
      {
        objc_msgSend_addObject_(groupBys, v11, orderCopy, v12);
        goto LABEL_11;
      }

      v15 = objc_msgSend_objectAtIndexedSubscript_(groupBys, v11, i, v12);
      v17 = objc_msgSend_p_compareGroupByViaOwnerIndexes_otherGroupBy_(TSTCategoryOwner, v16, orderCopy, v15);
      if (!v17)
      {
        break;
      }

      if (v17 == -1)
      {
        objc_msgSend_insertObject_atIndex_(self->_groupBys, v18, orderCopy, i);
        break;
      }
    }
  }

  else
  {
    objc_msgSend_addObject_(self->_groupBys, v7, orderCopy, v9);
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)sortGroupBys
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_groupBys(self, a2, v2, v3);
  v11 = objc_msgSend_count(v5, v6, v7, v8);
  if (v11 >= 2)
  {
    v12 = 1;
    while (1)
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(v5, v9, v12 - 1, v10);
      v16 = objc_msgSend_objectAtIndexedSubscript_(v5, v14, v12, v15);
      v18 = objc_msgSend_p_compareGroupByViaOwnerIndexes_otherGroupBy_(TSTCategoryOwner, v17, v13, v16);

      if (v18 != -1)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_14;
      }
    }

    os_unfair_lock_lock(&self->_lock);
    objc_msgSend_removeAllObjects(self->_groupBys, v19, v20, v21);
    os_unfair_lock_unlock(&self->_lock);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v5;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v29, v33, 16);
    if (v26)
    {
      v27 = *v30;
      do
      {
        v28 = 0;
        do
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(v22);
          }

          objc_msgSend_addGroupByInSortedOrder_(self, v24, *(*(&v29 + 1) + 8 * v28++), v25, v29);
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v29, v33, 16);
      }

      while (v26);
    }
  }

LABEL_14:
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = TSKUIDStruct::description(&self->_baseTableUID);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p> (on table %@)", v7, v4, self, v5);

  return v8;
}

- (void)registerWithDistributors
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  v6 = objc_msgSend_cellWillChangeDistributor(WeakRetained, v3, v4, v5);
  objc_msgSend_addReceiverIfMissing_(v6, v7, self, v8);

  v12 = objc_msgSend_mergeOwner(WeakRetained, v9, v10, v11);
  v16 = objc_msgSend_mergeChangeDistributor(v12, v13, v14, v15);
  objc_msgSend_addReceiverIfMissing_(v16, v17, self, v18);
}

- (void)unregisterFromDistributors
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  if (WeakRetained)
  {
    v20 = WeakRetained;
    v7 = objc_msgSend_mergeOwner(WeakRetained, v4, v5, v6);
    v11 = objc_msgSend_mergeChangeDistributor(v7, v8, v9, v10);
    objc_msgSend_removeReceiver_(v11, v12, self, v13);

    v17 = objc_msgSend_cellWillChangeDistributor(v20, v14, v15, v16);
    objc_msgSend_removeReceiver_(v17, v18, self, v19);

    WeakRetained = v20;
  }
}

- (void)teardown
{
  v19 = *MEMORY[0x277D85DE8];
  objc_msgSend_unregisterFromDistributors(self, a2, v2, v3);
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_groupBys;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_teardown(*(*(&v14 + 1) + 8 * v12++), v7, v8, v9, v14);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
    }

    while (v10);
  }

  groupBys = self->_groupBys;
  self->_groupBys = 0;

  os_unfair_lock_unlock(&self->_lock);
  objc_storeWeak(&self->_tableModel, 0);
  self->_calcEngine = 0;
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  v81 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  selfCopy = self;
  if (self->_isRegisteredWithCalcEngine)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCategoryOwner registerWithCalcEngine:baseOwnerUID:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 356, 0, "Already registered with calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  selfCopy->_calcEngine = engineCopy;
  selfCopy->_isRegisteredWithCalcEngine = 1;
  objc_msgSend_groupBys(selfCopy, v6, v7, v8);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  obj = v77 = 0u;
  v19 = 0;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v76, v80, 16);
  if (v23)
  {
    v74 = *v77;
    v71 = *MEMORY[0x277D808F8];
    do
    {
      v24 = 0;
      v25 = v19;
      do
      {
        if (*v77 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v76 + 1) + 8 * v24);
        if (objc_msgSend_isRegisteredWithCalcEngine(v26, v20, v21, v22))
        {
          v30 = MEMORY[0x277D81150];
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTCategoryOwner registerWithCalcEngine:baseOwnerUID:]", v29);
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v33);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 365, 0, "GroupBy shouldn't be registered yet.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
        }

        if (objc_msgSend_ownerIndex(v26, v27, v28, v29) != 8 || objc_msgSend_loadFromFileVersion(engineCopy, v39, v40, v41) >= v71)
        {
          v42 = objc_msgSend_ownerIndex(v26, v39, v40, v41);
          v45 = sub_2212C4930(d, v42, v43, v44);
          objc_msgSend_setGroupByUid_(v26, v46, v45, v46);
        }

        calcEngine = selfCopy->_calcEngine;
        v48 = objc_msgSend_groupByUid(v26, v39, v40, v41);
        v50 = v49;
        lower = d->_lower;
        upper = d->_upper;
        LOWORD(v70) = objc_msgSend_ownerIndex(v26, v49, v53, v54);
        v19 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(calcEngine, v55, v48, v50, v26, 0, lower, upper, v70);
        if (!v19)
        {
          objc_msgSend_setIsRegisteredWithCalcEngine_(v26, v20, 1, v22);
          objc_msgSend_checkForFormulaCoordUpgrade(v26, v56, v57, v58);
          v19 = v25;
        }

        ++v24;
        v25 = v19;
      }

      while (v23 != v24);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v76, v80, 16);
    }

    while (v23);
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_tableModel);
  v63 = objc_msgSend_documentRoot(WeakRetained, v60, v61, v62);
  objc_msgSend_updateWithDocumentRoot_(selfCopy, v64, v63, v65);

  objc_msgSend_registerWithDistributors(selfCopy, v66, v67, v68);
  return v19;
}

- (void)unregisterFromCalcEngine
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_isRegisteredWithCalcEngine)
  {
    objc_msgSend_groupBys(self, a2, v2, v3);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if (objc_msgSend_isRegisteredWithCalcEngine(v13, v7, v8, v9, v19))
          {
            calcEngine = self->_calcEngine;
            v15 = objc_msgSend_groupByUid(v13, v7, v8, v9);
            objc_msgSend_unregisterOwner_(calcEngine, v16, v15, v16);
            objc_msgSend_setIsRegisteredWithCalcEngine_(v13, v17, 0, v18);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
      }

      while (v10);
    }
  }

  self->_calcEngine = 0;
  self->_isRegisteredWithCalcEngine = 0;
}

- (void)linkGroupBy:(id)by
{
  byCopy = by;
  if (byCopy)
  {
    v7 = objc_msgSend_groupByUid(byCopy, v4, v5, v6);
    if (v7 | v8)
    {
      objc_msgSend_setCategoryOwner_(byCopy, v8, self, v9);
      selfCopy = self;
      objc_sync_enter(selfCopy);
      os_unfair_lock_lock(&selfCopy->_lock);
      if (!selfCopy->_groupBys)
      {
        v11 = objc_opt_new();
        groupBys = selfCopy->_groupBys;
        selfCopy->_groupBys = v11;
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      objc_msgSend_addGroupByInSortedOrder_(selfCopy, v13, byCopy, v14);
      objc_sync_exit(selfCopy);

      if (selfCopy->_isRegisteredWithCalcEngine)
      {
        calcEngine = selfCopy->_calcEngine;
        if (calcEngine)
        {
          v19 = objc_msgSend_groupByUid(byCopy, v15, v16, v17);
          v21 = v20;
          v24 = objc_msgSend_baseTableUID(selfCopy, v20, v22, v23);
          v26 = v25;
          v32 = objc_msgSend_ownerIndex(byCopy, v25, v27, v28);
          objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(calcEngine, v29, v19, v21, byCopy, 0, v24, v26, v32);
          objc_msgSend_setIsRegisteredWithCalcEngine_(byCopy, v30, 1, v31);
        }
      }
    }
  }
}

- (void)resetAllGroupings
{
  v21 = *MEMORY[0x277D85DE8];
  objc_msgSend_groupBys(self, a2, v2, v3);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_msgSend_resetGroupings(v12, v6, v7, v8, v16);
        objc_msgSend_didChangeGroupByStructure(v12, v13, v14, v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
    }

    while (v9);
  }
}

- (id)groupByByUid:(const TSKUIDStruct *)uid
{
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_groupBys;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_groupByUid(v13, v7, v8, v9, v17) == uid->_lower && v7 == uid->_upper)
        {
          v15 = v13;
          goto LABEL_14;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (id)groupByForOwnerIndex:(unsigned __int16)index
{
  indexCopy = index;
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_groupBys;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_ownerIndex(v13, v7, v8, v9, v16) == indexCopy)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

- (id)registerGroupByForColumns:(id)columns ownerIndex:(unsigned __int16)index hiddenStates:(id)states groupBySet:(id)set
{
  indexCopy = index;
  columnsCopy = columns;
  statesCopy = states;
  setCopy = set;
  if (indexCopy != 8 && (indexCopy - 205) >= 0x44Du)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCategoryOwner registerGroupByForColumns:ownerIndex:hiddenStates:groupBySet:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 486, 0, "Bad ownerIndex (%d) for groupBy", indexCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v25 = sub_2212C4930(&self->_baseTableUID._lower, indexCopy, v13, v14);
  v27 = v26;
  v61[0] = v25;
  v61[1] = v26;
  v29 = objc_msgSend_groupByForOwnerIndex_(self, v26, indexCopy, v28);
  v33 = v29;
  if (v29)
  {
    if (objc_msgSend_groupByUid(v29, v30, v31, v32) != v25 || v34 != v27)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTCategoryOwner registerGroupByForColumns:ownerIndex:hiddenStates:groupBySet:]", v35);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 493, 0, "If ownerIndex matches up, then so should groupByUid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
    }

    objc_msgSend_resetWithGroupings_categoryOwner_hiddenStates_groupBySet_(v33, v34, columnsCopy, self, statesCopy, setCopy);
  }

  else
  {
    v45 = [TSTGroupBy alloc];
    isEnabled_categoryOwner_groupByUid_ownerIndex = objc_msgSend_initWithGroupings_isEnabled_categoryOwner_groupByUid_ownerIndex_(v45, v46, columnsCopy, 1, self, v61, indexCopy);
    objc_msgSend_setHiddenStates_(isEnabled_categoryOwner_groupByUid_ownerIndex, v48, statesCopy, v49);
    objc_msgSend_setGroupBySet_(isEnabled_categoryOwner_groupByUid_ownerIndex, v50, setCopy, v51);
    objc_msgSend_linkGroupBy_(self, v52, isEnabled_categoryOwner_groupByUid_ownerIndex, v53);
    objc_msgSend_resetGroupings(isEnabled_categoryOwner_groupByUid_ownerIndex, v54, v55, v56);
    v33 = isEnabled_categoryOwner_groupByUid_ownerIndex;
    objc_msgSend_didChangeGroupByStructure(isEnabled_categoryOwner_groupByUid_ownerIndex, v57, v58, v59);
  }

  return v33;
}

- (void)unregisterGroupBy:(id)by
{
  byCopy = by;
  if (byCopy)
  {
    objc_msgSend_willModify(self, v4, v5, v6);
    os_unfair_lock_lock(&self->_lock);
    objc_msgSend_removeObjectIdenticalTo_(self->_groupBys, v7, byCopy, v8);
    os_unfair_lock_unlock(&self->_lock);
    if (objc_msgSend_isRegisteredWithCalcEngine(byCopy, v9, v10, v11))
    {
      calcEngine = self->_calcEngine;
      v16 = objc_msgSend_groupByUid(byCopy, v12, v13, v14);
      objc_msgSend_unregisterOwner_(calcEngine, v17, v16, v17);
      objc_msgSend_setIsRegisteredWithCalcEngine_(byCopy, v18, 0, v19);
    }
  }
}

- (void)updateWithDocumentRoot:(id)root
{
  v29 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  if (rootCopy)
  {
    objc_msgSend_groupBys(self, v4, v5, v6);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v8 = v25 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
    if (v12)
    {
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_updateWithDocumentRoot_(*(*(&v24 + 1) + 8 * i), v10, rootCopy, v11);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v24, v28, 16);
      }

      while (v12);
    }
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCategoryOwner updateWithDocumentRoot:]", v6);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 526, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }
}

- (BOOL)allowRegistrationOfAggFormulas
{
  if (self->_calcEngine)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_tableModel);
      v8 = objc_msgSend_calcEngine(v4, v5, v6, v7);
      LOBYTE(WeakRetained) = v8 != 0;
    }
  }

  else
  {
    LOBYTE(WeakRetained) = 0;
  }

  return WeakRetained;
}

- (TSTCategoryOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTable:(id)table
{
  unarchiverCopy = unarchiver;
  v11 = objc_msgSend_initWithBaseTableModel_(self, v9, table, v10);
  if (v11)
  {
    v12 = *(archive + 8);
    if (v12 >= 1)
    {
      v13 = 8;
      do
      {
        v14 = [TSTGroupBy alloc];
        v16 = objc_msgSend_initWithArchive_forCategoryOwner_unarchiver_(v14, v15, *(*(archive + 5) + v13), v11, unarchiverCopy);
        v20 = objc_msgSend_groupByUid(v16, v17, v18, v19);
        if (v20 | v21)
        {
          objc_msgSend_linkGroupBy_(v11, v21, v16, v22);
        }

        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  return v11;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v24 = 0;
  v25 = 0;
  *(archive + 4) |= 1u;
  v7 = *(archive + 6);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0360](v8);
    *(archive + 6) = v7;
  }

  TSP::UUIDData::saveToMessage(&v24, v7);
  v11 = objc_msgSend_groupByForOwnerIndex_(self, v9, 8, v10, v24, v25);
  v15 = v11;
  if (v11)
  {
    if (!objc_msgSend_isPrePivotV2Compatible(v11, v12, v13, v14))
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v16, 0xC000000000007, @"TSTPivotTables_v2");
      goto LABEL_15;
    }

    v17 = *(archive + 5);
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = *(archive + 8);
    v19 = *v17;
    if (v18 < *v17)
    {
      *(archive + 8) = v18 + 1;
      objc_msgSend_encodeToArchive_archiver_backwardCompatOptions_(v15, v16, *&v17[2 * v18 + 2], archiverCopy, 2);
      goto LABEL_15;
    }

    if (v19 == *(archive + 9))
    {
LABEL_13:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v17 = *(archive + 5);
      v19 = *v17;
    }

    *v17 = v19 + 1;
    v20 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive>(*(archive + 3));
    v21 = *(archive + 8);
    v22 = *(archive + 5) + 8 * v21;
    *(archive + 8) = v21 + 1;
    *(v22 + 8) = v20;
    objc_msgSend_encodeToArchive_archiver_backwardCompatOptions_(v15, v23, v20, archiverCopy, 2);
  }

LABEL_15:
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[278], v6);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22128C4D0;
  v11[3] = &unk_27845D8D8;
  v11[4] = self;
  v8 = unarchiverCopy;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v8, v10, v7 + 16, v9, 0, v11);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22128DD6C, off_2812E4498[278]);

  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v6, self->_groupBys, v5 + 16);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  v24 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  objc_msgSend_willModify(self, v7, v8, v9);
  objc_msgSend_groupBys(self, v10, v11, v12);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v13 = v20 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v19, v23, 16);
  if (v16)
  {
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(*(*(&v19 + 1) + 8 * v18++), v15, map, engineCopy, v19);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v19, v23, 16);
    }

    while (v16);
  }
}

- (void)setFormulaOwnerUIDsWithMap:(id)map
{
  v48 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_msgSend_groupBys(self, v8, v9, v10);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v11 = v44 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v43, v47, 16);
  if (v16)
  {
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        v20 = objc_msgSend_groupByUid(v19, v13, v14, v15);
        v22 = v21;
        v25 = objc_msgSend_tableUID(mapCopy, v21, v23, v24);
        v29 = objc_msgSend_ownerIndex(v19, v26, v27, v28, v25, v26, v43);
        if (sub_2212C4930(&v42, v29, v30, v31) == v20 && v13 == v22)
        {
          TableUID = objc_msgSend_nextTableUID(mapCopy, v13, v14, v15);
          v37 = objc_msgSend_ownerIndex(v19, v34, v35, v36, TableUID, v34);
          v40 = sub_2212C4930(&v42, v37, v38, v39);
          objc_msgSend_setGroupByUid_(v19, v41, v40, v41);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v43, v47, 16);
    }

    while (v16);
  }
}

- (TSKUIDStruct)p_willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord refreshCategoryInfo:(BOOL)info
{
  infoCopy = info;
  v104 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  selfCopy = self;
  v88 = objc_msgSend_tableModel(self, v7, v8, v9);
  v81 = objc_msgSend_mergeOwner(v88, v10, v11, v12);
  v100.origin = objc_msgSend_mergedRangeForBaseCellCoord_(v81, v13, *&coord, v14);
  v100.size = v15;
  if (TSUCellRect::isValid(&v100))
  {
    column = TSUCellRect::firstColumn(&v100);
    LOWORD(v83) = TSUCellRect::lastColumn(&v100);
    if (v100.origin.row != coord._coord.row || ((*&v100.origin ^ *&coord) & 0x101FFFF00000000) != 0)
    {
      v101 = 0;
      v102 = 0;
      goto LABEL_40;
    }

    origin = v100.origin;
  }

  else
  {
    origin = coord;
    v83 = HIDWORD(*&coord);
    column = coord._coord.column;
  }

  v101 = 0;
  v102 = 0;
  v19 = objc_msgSend_columnRowUIDMap(v88, v16, v17, v18);
  v101 = objc_msgSend_rowUIDForRowIndex_(v19, v20, *&coord, v21);
  v102 = v22;

  objc_msgSend_willModify(self, v23, v24, v25);
  v82 = objc_msgSend_groupBys(self, v26, v27, v28);
  for (i = column; i <= v83; i = ++column)
  {
    v99 = 0uLL;
    v33 = objc_msgSend_columnRowUIDMap(v88, v29, v30, v31);
    *&v99 = objc_msgSend_columnUIDForColumnIndex_(v33, v34, column, v35);
    *(&v99 + 1) = v36;

    if (v99 != 0)
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = v82;
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v95, v103, 16);
      if (v41)
      {
        v42 = 0;
        v43 = 0;
        v44 = *v96;
        v85 = *v96;
        do
        {
          v45 = 0;
          v86 = v41;
          do
          {
            if (*v96 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v95 + 1) + 8 * v45);
            if (objc_msgSend_isEnabled(v46, v38, v39, v40) && (objc_msgSend_isForPivotTable(v46, v38, v39, v40) & 1) == 0 && objc_msgSend_containsRowUid_(v46, v38, &v101, v40) && v46)
            {
              objc_msgSend_groupingColumnLevelsForColumn_(v46, v38, &v99, v40);
              v47 = v93;
              if (v93 != v94)
              {
                do
                {
                  v48 = *v47;
                  v49 = objc_msgSend_groupingColumns(v46, v38, v39, v40);
                  v52 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, v48 - 1, v51);

                  v53 = v101;
                  v54 = v102;
                  v58 = objc_msgSend_numberOfLevels(v46, v55, v56, v57);
                  v61 = objc_msgSend_groupValueTupleForRowUid_atLevel_(v46, v59, v53, v54, v58);
                  if ((v42 & 1) == 0)
                  {
                    if (cellCopy)
                    {
                      v62 = objc_msgSend_cellValueFromCell_atBaseCellCoord_(v88, v60, cellCopy, origin);

                      v43 = v62;
                      if (!v62)
                      {
                        v43 = objc_opt_new();
                      }
                    }

                    else
                    {
                      v63 = objc_opt_new();

                      v43 = v63;
                    }
                  }

                  v64 = objc_msgSend_groupValueForValue_calcEngine_(v52, v60, v43, selfCopy->_calcEngine);
                  v66 = objc_msgSend_groupValueTupleByReplacingValue_atLevel_(v61, v65, v64, v48);
                  if ((objc_msgSend_isEqual_(v66, v67, v61, v68) & 1) == 0)
                  {
                    objc_msgSend_removeRowUid_forGroupValue_(v46, v69, &v101, v61);
                    objc_msgSend_insertRowUid_atRowIndex_forGroupValue_(v46, v70, &v101, 0x7FFFFFFFLL, v66);
                    if (infoCopy)
                    {
                      v74 = [TSCEUIDSet alloc];
                      v76 = objc_msgSend_initWithUUID_(v74, v75, v101, v102);
                      objc_msgSend_willMakeGroupingChangesInRowUIDs_(v46, v77, v76, v78);
                    }

                    objc_msgSend_markAllDependentsAsDirty(v46, v71, v72, v73);
                  }

                  ++v47;
                  v42 = 1;
                }

                while (v47 != v94);
                v47 = v93;
              }

              if (v47)
              {
                v94 = v47;
                operator delete(v47);
              }

              v44 = v85;
              v41 = v86;
            }

            ++v45;
          }

          while (v45 != v41);
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v95, v103, 16);
        }

        while (v41);
      }

      else
      {
        v43 = 0;
      }
    }
  }

LABEL_40:
  v79 = v101;
  v80 = v102;
  result._upper = v80;
  result._lower = v79;
  return result;
}

- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d
{
  v41 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  if (self->_calcEngine && (objc_msgSend_hasEnabledGroupBys(self, v7, v8, v9) & 1) != 0)
  {
    objc_msgSend_groupBys(self, v11, v12, v13);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v14 = v36 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v40, 16);
    if (v19)
    {
      v20 = *v36;
      do
      {
        v21 = 0;
        do
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v14);
          }

          objc_msgSend_startOfGroupingChangesBatch(*(*(&v35 + 1) + 8 * v21++), v16, v17, v18);
        }

        while (v19 != v21);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v35, v40, 16);
      }

      while (v19);
    }

    objc_msgSend_p_willApplyCell_baseCellCoord_refreshCategoryInfo_(self, v22, cellCopy, *&coord, 1);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v14;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v31, v39, 16);
    if (v28)
    {
      v29 = *v32;
      do
      {
        v30 = 0;
        do
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v23);
          }

          objc_msgSend_endOfGroupingChangesBatch(*(*(&v31 + 1) + 8 * v30++), v25, v26, v27, v31);
        }

        while (v28 != v30);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v31, v39, 16);
      }

      while (v28);
    }
  }
}

- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  v32 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  if (self->_calcEngine && (objc_msgSend_hasEnabledGroupBys(self, v5, v6, v7) & 1) != 0)
  {
    v9 = objc_opt_new();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22128D398;
    v29[3] = &unk_27845ED98;
    v29[4] = self;
    v10 = v9;
    v30 = v10;
    objc_msgSend_enumerateCellsWithIDsUsingBlock_(mapCopy, v11, v29, v12);
    objc_msgSend_groupBys(self, v13, v14, v15);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v16 = v26 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v25, v31, 16);
    if (v21)
    {
      v22 = *v26;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v25 + 1) + 8 * i);
          if (objc_msgSend_isEnabled(v24, v18, v19, v20, v25))
          {
            objc_msgSend_willMakeGroupingChangesInRowUIDs_(v24, v18, v10, v20);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v25, v31, 16);
      }

      while (v21);
    }
  }
}

- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  v42 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  if (self->_calcEngine)
  {
    objc_msgSend_groupBys(self, v5, v6, v7);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v9 = v37 = 0u;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v36, v41, 16);
    v15 = v9;
    if (v14)
    {
      v16 = *v37;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v9);
          }

          if (objc_msgSend_isEnabled(*(*(&v36 + 1) + 8 * i), v11, v12, v13))
          {

            v18 = objc_opt_new();
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = sub_22128D6CC;
            v34[3] = &unk_2784624C0;
            v34[4] = self;
            v15 = v18;
            v35 = v15;
            objc_msgSend_enumerateSeriallyUsingBlock_(mapCopy, v19, v34, v20);
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v21 = v9;
            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v30, v40, 16);
            if (v26)
            {
              v27 = *v31;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v31 != v27)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v29 = *(*(&v30 + 1) + 8 * j);
                  if (objc_msgSend_isEnabled(v29, v23, v24, v25, v30))
                  {
                    objc_msgSend_willMakeGroupingChangesInRowUIDs_(v29, v23, v15, v25);
                  }
                }

                v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v30, v40, 16);
              }

              while (v26);
            }

            goto LABEL_21;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v36, v41, 16);
        if (v14)
        {
          continue;
        }

        break;
      }

      v15 = v9;
    }

LABEL_21:
  }
}

- (void)didMergeRange:(TSUModelCellRect)range
{
  origin = range.var0.origin;
  rangeCopy = range;
  if (objc_msgSend_hasEnabledGroupBys(self, a2, *&range.var0.origin, *&range.var0.size))
  {
    v8 = objc_msgSend_tableModel(self, v5, v6, v7);
    v12 = objc_msgSend_newCell(v8, v9, v10, v11);
    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v8, v13, v12, origin, 1);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22128D850;
    v15[3] = &unk_2784624E8;
    v15[4] = self;
    v14 = v12;
    v16 = v14;
    sub_2211DCA74(&rangeCopy, v15);
  }
}

- (void)didUnmergeRange:(TSUModelCellRect)range
{
  rangeCopy = range;
  if (objc_msgSend_hasEnabledGroupBys(self, a2, *&range.var0.origin, *&range.var0.size))
  {
    v7 = objc_msgSend_tableModel(self, v4, v5, v6);
    v11 = objc_msgSend_newCell(v7, v8, v9, v10);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22128D934;
    v13[3] = &unk_278462510;
    selfCopy = self;
    v16 = v7;
    v14 = v11;
    v12 = v11;
    sub_2211DCA74(&rangeCopy, v13);
  }
}

- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d
{
  v33 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasEnabledGroupBys(self, a2, rows, d))
  {
    v6 = [TSCEUIDSet alloc];
    v9 = objc_msgSend_initWithUUIDVector_(v6, v7, rows, v8);
    if (objc_msgSend_count(v9, v10, v11, v12))
    {
      objc_msgSend_willModify(self, v13, v14, v15);
      objc_msgSend_groupBys(self, v16, v17, v18);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v19 = v29 = 0u;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v32, 16);
      if (v24)
      {
        v25 = *v29;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v29 != v25)
            {
              objc_enumerationMutation(v19);
            }

            v27 = *(*(&v28 + 1) + 8 * i);
            if (objc_msgSend_isEnabled(v27, v21, v22, v23, v28))
            {
              objc_msgSend_removeRowUids_(v27, v21, v9, v23);
            }
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v28, v32, 16);
        }

        while (v24);
      }
    }
  }
}

- (void)didAddRows:(const void *)rows
{
  v30 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasEnabledGroupBys(self, a2, rows, v3))
  {
    objc_msgSend_willModify(self, v6, v7, v8);
    v9 = [TSCEUIDSet alloc];
    v12 = objc_msgSend_initWithUUIDVector_(v9, v10, rows, v11);
    objc_msgSend_groupBys(self, v13, v14, v15);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v16 = v26 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v25, v29, 16);
    if (v21)
    {
      v22 = *v26;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v25 + 1) + 8 * i);
          if (objc_msgSend_isEnabled(v24, v18, v19, v20, v25))
          {
            objc_msgSend_insertRowUids_(v24, v18, v12, v20);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v25, v29, 16);
      }

      while (v21);
    }
  }
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSKUIDStruct)baseTableUID
{
  p_baseTableUID = &self->_baseTableUID;
  lower = self->_baseTableUID._lower;
  upper = p_baseTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end