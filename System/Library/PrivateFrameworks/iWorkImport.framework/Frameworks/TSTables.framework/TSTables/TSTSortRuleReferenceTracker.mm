@interface TSTSortRuleReferenceTracker
- (BOOL)p_hasRuleReferenceForTrackedReference:(id)reference;
- (TSCESpanningRangeRef)p_referenceForColumnIndex:(SEL)index;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)ownerUID;
- (TSTSortRuleReferenceTracker)initWithTableInfo:(id)info baseTableUID:(const TSKUIDStruct *)d context:(id)context;
- (TSTTableInfo)tableInfo;
- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)ref;
- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (unsigned)p_columnForTrackedReference:(id)reference;
- (void)beginTrackingReference:(id)reference;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)endTrackingReference:(id)reference;
- (void)registerWithCalcEngine:(id)engine;
- (void)registerWithCalcEngine:(id)engine reregister:(BOOL)reregister;
- (void)setBaseTableUID:(TSKUIDStruct)d;
- (void)setOwnerUID:(const TSKUIDStruct *)d;
- (void)setTableInfo:(id)info;
- (void)unregisterFromCalcEngine;
- (void)updateForSortRules:(id)rules;
@end

@implementation TSTSortRuleReferenceTracker

- (TSTSortRuleReferenceTracker)initWithTableInfo:(id)info baseTableUID:(const TSKUIDStruct *)d context:(id)context
{
  infoCopy = info;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = TSTSortRuleReferenceTracker;
  v10 = [(TSTSortRuleReferenceTracker *)&v26 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_tableInfo, infoCopy);
    v11->_ownerUID._lower = sub_2212C4930(d, 6, v12, v13);
    v11->_ownerUID._upper = v14;
    v11->_baseTableUID = *d;
    v11->_isRegisteredWithCalculationEngine = 0;
    v15 = [TSCETrackedReferenceStore alloc];
    v18 = objc_msgSend_initWithContext_(v15, v16, contextCopy, v17);
    trackedRefsStore = v11->_trackedRefsStore;
    v11->_trackedRefsStore = v18;

    v23 = objc_msgSend_calcEngine(infoCopy, v20, v21, v22);
    objc_msgSend_registerWithCalcEngine_reregister_(v11, v24, v23, 0);
  }

  return v11;
}

- (void)registerWithCalcEngine:(id)engine reregister:(BOOL)reregister
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    p_baseTableUID = &self->_baseTableUID;
    if (!self->_baseTableUID._lower && !self->_baseTableUID._upper)
    {
      p_baseTableUID = &self->_ownerUID;
    }

    lower = p_baseTableUID->_lower;
    upper = p_baseTableUID->_upper;
    if (!reregister)
    {
      objc_msgSend_willModify(self->_trackedRefsStore, v7, v8, v9);
      v18 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_willModify(v18, v13, v14, v15);
    }

    v19 = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(v19, v16, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, lower, upper, 6);

    self->_isRegisteredWithCalculationEngine = 1;
    v20 = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_markOwnerAsDirty_(v20, v17, self->_ownerUID._lower, self->_ownerUID._upper);
  }
}

- (void)registerWithCalcEngine:(id)engine
{
  engineCopy = engine;
  objc_storeWeak(&self->_calcEngine, engineCopy);
  objc_msgSend_registerWithCalcEngine_reregister_(self, v4, engineCopy, 0);
}

- (void)unregisterFromCalcEngine
{
  objc_msgSend_willModify(self->_trackedRefsStore, a2, v2, v3);
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_willModify(WeakRetained, v6, v7, v8);

  v9 = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_unregisterOwner_(v9, v10, self->_ownerUID._lower, self->_ownerUID._upper);

  self->_isRegisteredWithCalculationEngine = 0;

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)setTableInfo:(id)info
{
  infoCopy = info;
  objc_storeWeak(&self->_tableInfo, infoCopy);
  if (infoCopy)
  {
    self->_baseTableUID._lower = objc_msgSend_tableUID(infoCopy, v5, v6, v7);
    self->_baseTableUID._upper = v8;
    v13[0] = sub_2212C4930(&self->_baseTableUID._lower, 6, v9, v10);
    v13[1] = v11;
    objc_msgSend_setOwnerUID_(self, v11, v13, v12);
  }
}

- (TSCESpanningRangeRef)p_referenceForColumnIndex:(SEL)index
{
  v5 = a4;
  v14 = objc_msgSend_tableInfo(self, index, a4, v4);
  v10 = objc_msgSend_tableUID(v14, v7, v8, v9);
  v11 = (v5 << 32) | 0x7FFFFFFF;
  retstr->rangeRef.range._topLeft = v11;
  retstr->rangeRef.range._bottomRight = v11;
  retstr->rangeRef._tableUID._lower = v10;
  retstr->rangeRef._tableUID._upper = v12;
  retstr->rangeContext = 0;

  return result;
}

- (unsigned)p_columnForTrackedReference:(id)reference
{
  referenceCopy = reference;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFF;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v7 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(referenceCopy, v6, WeakRetained, &self->_ownerUID);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22139EFF0;
  v11[3] = &unk_278463C70;
  v11[4] = self;
  v11[5] = &v12;
  objc_msgSend_foreachSpanningRangeRef_(v7, v8, v11, v9);
  LOWORD(self) = *(v13 + 12);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (BOOL)p_hasRuleReferenceForTrackedReference:(id)reference
{
  v21 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v5, v6, v7);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v8 = v17 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        if (objc_msgSend_isEqualToTrackedReference_(*(*(&v16 + 1) + 8 * i), v10, referenceCopy, v11, v16))
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v16, v20, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (void)beginTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_beginTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained);
}

- (void)endTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_endTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained);
}

- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)ref
{
  v5 = [TSCETrackedReference alloc];
  v8 = objc_msgSend_initWithSpanningRangeRef_(v5, v6, ref, v7);
  objc_msgSend_beginTrackingReference_(self, v9, v8, v10);

  return v8;
}

- (void)updateForSortRules:(id)rules
{
  v52 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  if (self->_isRegisteredWithCalculationEngine)
  {
    v38 = rulesCopy;
    objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v5, v6, v7);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    obj = v47 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v46, v51, 16);
    if (v11)
    {
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(obj);
          }

          objc_msgSend_endTrackingReference_(self, v9, *(*(&v46 + 1) + 8 * i), v10);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v46, v51, 16);
      }

      while (v11);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v39 = v38;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v14, &v42, v50, 16);
    if (v18)
    {
      v19 = *v43;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v39);
          }

          v21 = objc_msgSend_baseIndex(*(*(&v42 + 1) + 8 * j), v15, v16, v17);
          objc_msgSend_p_referenceForColumnIndex_(self, v22, v21, v23);
          v28 = objc_msgSend_beginTrackingReferenceWithSpanningRef_(self, v24, v41, v25);
          if (!v28)
          {
            v29 = MEMORY[0x277D81150];
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTSortRuleReferenceTracker updateForSortRules:]", v27);
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSortRuleReferenceTracker.mm", v32);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 175, 0, "Couldn't track reference!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v15, &v42, v50, 16);
      }

      while (v18);
    }

    rulesCopy = v38;
  }
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setOwnerUID:(const TSKUIDStruct *)d
{
  p_ownerUID = &self->_ownerUID;
  if (d->_lower != self->_ownerUID._lower || d->_upper != self->_ownerUID._upper)
  {
    *p_ownerUID = *d;
    objc_msgSend_setOwnerUID_(self->_trackedRefsStore, a2, d->_lower, d->_upper);
    if (self->_baseTableUID._lower != sub_2212C4A5C(p_ownerUID, 6) || self->_baseTableUID._upper != v5)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTSortRuleReferenceTracker setOwnerUID:]", v6);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSortRuleReferenceTracker.mm", v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 190, 0, "You should have called setBaseTableUID: instead (it sets both base and subOwner UIDs");

      v16 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
    }
  }
}

- (void)setBaseTableUID:(TSKUIDStruct)d
{
  lower = self->_baseTableUID._lower;
  p_baseTableUID = &self->_baseTableUID;
  if (d._lower != lower || d._upper != self->_baseTableUID._upper)
  {
    self->_baseTableUID = d;
    v8[0] = sub_2212C4930(p_baseTableUID, 6, d._lower, d._upper);
    v8[1] = v6;
    objc_msgSend_setOwnerUID_(self, v6, v8, v7);
  }
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  trackedRefsStore = self->_trackedRefsStore;
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  v11 = archiverCopy;
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0390](v10);
    *(archive + 3) = v9;
    archiverCopy = v11;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v7, trackedRefsStore, v9);
}

- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v16.receiver = self;
  v16.super_class = TSTSortRuleReferenceTracker;
  v7 = [(TSTSortRuleReferenceTracker *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v9 = *(archive + 3);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22139F9FC;
    v14[3] = &unk_278460F08;
    v15 = v7;
    v10 = unarchiverCopy;
    v12 = objc_opt_class();
    if (v9)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, v9, v12, 0, v14);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, MEMORY[0x277D80A18], v12, 0, v14);
    }
  }

  return v8;
}

- (TSKUIDStruct)baseTableUID
{
  upper = self->_baseTableUID._upper;
  lower = self->_baseTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end