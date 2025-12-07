@interface TSTHiddenStatesOwner
- (TSKUIDStruct)baseTableUID;
- (TSTHiddenStatesOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTable:(id)table;
- (TSTHiddenStatesOwner)initWithBaseTable:(id)table;
- (TSTTableModel)tableModel;
- (id)calcEngine;
- (id)description;
- (id)hiddenStates;
- (id)hiddenStatesByExtentUid:(const TSKUIDStruct *)uid;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (void)didChangeExtentUids:(id)uids;
- (void)registerHiddenStates:(id)states baseOwnerUID:(const TSKUIDStruct *)d;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setBaseTableUID:(TSKUIDStruct)d;
- (void)unregisterHiddenStates:(id)states;
- (void)willChangeExtentUids:(id)uids;
@end

@implementation TSTHiddenStatesOwner

- (TSTHiddenStatesOwner)initWithBaseTable:(id)table
{
  tableCopy = table;
  v12.receiver = self;
  v12.super_class = TSTHiddenStatesOwner;
  v5 = [(TSTHiddenStatesOwner *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableModel, tableCopy);
    v6->_baseTableUID._lower = objc_msgSend_tableUID(tableCopy, v7, v8, v9);
    v6->_baseTableUID._upper = v10;
  }

  return v6;
}

- (void)setBaseTableUID:(TSKUIDStruct)d
{
  if (d._lower != self->_baseTableUID._lower || d._upper != self->_baseTableUID._upper)
  {
    self->_baseTableUID = d;
  }
}

- (id)hiddenStates
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_hiddenStatesByRowExtentUuid, a2, v2, v3) == -1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTHiddenStatesOwner hiddenStates]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStatesOwner.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 56, 0, "We should only have one hiddenStates per table, at the moment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  memset(v22, 0, sizeof(v22));
  v16 = self->_hiddenStatesByRowExtentUuid;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v22, v23, 16))
  {
    v20 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v18, **(&v22[0] + 1), v19, *&v22[0]);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)description
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = TSKUIDStruct::description(&self->_baseTableUID);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p>(on table %@)", v7, v4, self, v5);

  if (objc_msgSend_count(self->_hiddenStatesByRowExtentUuid, v9, v10, v11) || objc_msgSend_count(self->_hiddenStatesByColumnExtentUuid, v12, v13, v14))
  {
    objc_msgSend_appendFormat_(v8, v12, @"\n Hidden States:\n", v14);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = self->_hiddenStatesByRowExtentUuid;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v26, v30, 16);
    if (v19)
    {
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v17, *(*(&v26 + 1) + 8 * i), v18);
          objc_msgSend_appendFormat_(v8, v23, @"  - %@\n", v24, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v26, v30, 16);
      }

      while (v19);
    }
  }

  return v8;
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  v22 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_calcEngine, engine);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_hiddenStatesByRowExtentUuid;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v7, *(*(&v17 + 1) + 8 * v11), v8, v17);
        WeakRetained = objc_loadWeakRetained(&self->_tableModel);
        objc_msgSend_setTableModel_(v12, v14, WeakRetained, v15);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
    }

    while (v9);
  }

  return 0;
}

- (id)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

- (void)registerHiddenStates:(id)states baseOwnerUID:(const TSKUIDStruct *)d
{
  statesCopy = states;
  if (statesCopy)
  {
    if (!self->_hiddenStatesByRowExtentUuid)
    {
      v10 = objc_opt_new();
      hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
      self->_hiddenStatesByRowExtentUuid = v10;
    }

    if (!self->_hiddenStatesByColumnExtentUuid)
    {
      v12 = objc_opt_new();
      hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
      self->_hiddenStatesByColumnExtentUuid = v12;
    }

    v14 = self->_hiddenStatesByRowExtentUuid;
    v15 = objc_msgSend_rowHiddenStateExtent(statesCopy, v6, v7, v8);
    v48._lower = objc_msgSend_hiddenStateExtentUid(v15, v16, v17, v18);
    v48._upper = v19;
    v20 = TSKUIDStruct::description(&v48);
    objc_msgSend_setObject_forKey_(v14, v21, statesCopy, v20);

    v22 = self->_hiddenStatesByColumnExtentUuid;
    v26 = objc_msgSend_columnHiddenStateExtent(statesCopy, v23, v24, v25);
    v48._lower = objc_msgSend_hiddenStateExtentUid(v26, v27, v28, v29);
    v48._upper = v30;
    v31 = TSKUIDStruct::description(&v48);
    objc_msgSend_setObject_forKey_(v22, v32, statesCopy, v31);

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (WeakRetained)
    {
      v34 = objc_loadWeakRetained(&self->_calcEngine);
      v36 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(statesCopy, v35, v34, d);

      if (v36)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSTHiddenStatesOwner registerHiddenStates:baseOwnerUID:]", v38);
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStatesOwner.mm", v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 115, 0, "HiddenStates couldn't register with calc-engine");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
      }
    }
  }
}

- (id)hiddenStatesByExtentUid:(const TSKUIDStruct *)uid
{
  v4 = TSKUIDStruct::description(uid);
  v7 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v5, v4, v6);
  v10 = v7;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = objc_msgSend_objectForKey_(self->_hiddenStatesByColumnExtentUuid, v8, v4, v9);
  }

  v12 = v11;

  return v12;
}

- (void)unregisterHiddenStates:(id)states
{
  statesCopy = states;
  v8 = statesCopy;
  if (statesCopy)
  {
    hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
    v10 = objc_msgSend_rowHiddenStateExtent(statesCopy, v5, v6, v7);
    v30._lower = objc_msgSend_hiddenStateExtentUid(v10, v11, v12, v13);
    v30._upper = v14;
    v15 = TSKUIDStruct::description(&v30);
    objc_msgSend_removeObjectForKey_(hiddenStatesByRowExtentUuid, v16, v15, v17);

    hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
    v22 = objc_msgSend_columnHiddenStateExtent(v8, v19, v20, v21);
    v30._lower = objc_msgSend_hiddenStateExtentUid(v22, v23, v24, v25);
    v30._upper = v26;
    v27 = TSKUIDStruct::description(&v30);
    objc_msgSend_removeObjectForKey_(hiddenStatesByColumnExtentUuid, v28, v27, v29);
  }
}

- (void)willChangeExtentUids:(id)uids
{
  uidsCopy = uids;
  v8 = objc_msgSend_tableModel(self, v5, v6, v7);
  objc_msgSend_willModify(v8, v9, v10, v11);

  hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
  v16 = objc_msgSend_rowHiddenStateExtent(uidsCopy, v13, v14, v15);
  v36._lower = objc_msgSend_hiddenStateExtentUid(v16, v17, v18, v19);
  v36._upper = v20;
  v21 = TSKUIDStruct::description(&v36);
  objc_msgSend_removeObjectForKey_(hiddenStatesByRowExtentUuid, v22, v21, v23);

  hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
  v28 = objc_msgSend_columnHiddenStateExtent(uidsCopy, v25, v26, v27);
  v36._lower = objc_msgSend_hiddenStateExtentUid(v28, v29, v30, v31);
  v36._upper = v32;
  v33 = TSKUIDStruct::description(&v36);
  objc_msgSend_removeObjectForKey_(hiddenStatesByColumnExtentUuid, v34, v33, v35);
}

- (void)didChangeExtentUids:(id)uids
{
  uidsCopy = uids;
  hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
  v9 = objc_msgSend_rowHiddenStateExtent(uidsCopy, v6, v7, v8);
  v27._lower = objc_msgSend_hiddenStateExtentUid(v9, v10, v11, v12);
  v27._upper = v13;
  v14 = TSKUIDStruct::description(&v27);
  objc_msgSend_setObject_forKey_(hiddenStatesByRowExtentUuid, v15, uidsCopy, v14);

  hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
  v20 = objc_msgSend_columnHiddenStateExtent(uidsCopy, v17, v18, v19);
  v27._lower = objc_msgSend_hiddenStateExtentUid(v20, v21, v22, v23);
  v27._upper = v24;
  v25 = TSKUIDStruct::description(&v27);
  objc_msgSend_setObject_forKey_(hiddenStatesByColumnExtentUuid, v26, uidsCopy, v25);
}

- (TSTHiddenStatesOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTable:(id)table
{
  unarchiverCopy = unarchiver;
  v11 = objc_msgSend_initWithBaseTable_(self, v9, table, v10);
  if (v11)
  {
    v12 = *(archive + 8);
    if (v12 >= 1)
    {
      v13 = 8;
      do
      {
        v14 = [TSTHiddenStates alloc];
        v16 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v14, v15, *(*(archive + 5) + v13), unarchiverCopy, v11);
        objc_msgSend_registerHiddenStates_baseOwnerUID_(v11, v17, v16, &v11->_baseTableUID);

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
  v42 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v39 = 0;
  v40 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_hiddenStatesByRowExtentUuid;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v35, v41, 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v8, *(*(&v35 + 1) + 8 * i), v9);
        v17 = *(archive + 5);
        if (!v17)
        {
          goto LABEL_11;
        }

        v18 = *(archive + 8);
        v19 = *v17;
        if (v18 < *v17)
        {
          *(archive + 8) = v18 + 1;
          objc_msgSend_encodeToArchive_archiver_(v16, v15, *&v17[2 * v18 + 2], archiverCopy);
          goto LABEL_13;
        }

        if (v19 == *(archive + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v17 = *(archive + 5);
          v19 = *v17;
        }

        *v17 = v19 + 1;
        v23 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesArchive>(*(archive + 3));
        v24 = *(archive + 8);
        v25 = *(archive + 5) + 8 * v24;
        *(archive + 8) = v24 + 1;
        *(v25 + 8) = v23;
        objc_msgSend_encodeToArchive_archiver_(v16, v26, v23, archiverCopy);
LABEL_13:
        if (!(v12 | v11))
        {
          v27 = objc_msgSend_rowHiddenStateExtent(v16, v20, v21, v22);
          v12 = objc_msgSend_hiddenStateExtentUid(v27, v28, v29, v30);
          v11 = v31;
          v39 = v12;
          v40 = v31;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v35, v41, 16);
    }

    while (v10);
  }

  *(archive + 4) |= 1u;
  v32 = *(archive + 6);
  if (!v32)
  {
    v33 = *(archive + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x223DA0360](v33);
    *(archive + 6) = v32;
  }

  TSP::UUIDData::saveToMessage(&v39, v32);
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  v21 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_hiddenStatesByRowExtentUuid;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v11)
  {
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v9, *(*(&v16 + 1) + 8 * v13), v10, v16);
        objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v14, v15, map, engineCopy);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v16, v20, 16);
    }

    while (v11);
  }
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSKUIDStruct)baseTableUID
{
  upper = self->_baseTableUID._upper;
  lower = self->_baseTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end