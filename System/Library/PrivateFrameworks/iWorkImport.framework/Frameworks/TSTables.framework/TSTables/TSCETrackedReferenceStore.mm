@interface TSCETrackedReferenceStore
- (TSCETrackedReferenceStore)initWithContext:(id)context;
- (TSKUIDStruct)ownerUID;
- (id)allTrackedReferences;
- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)ref calcEngine:(id)engine;
- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)ref calcEngine:(id)engine;
- (id)trackedReferenceAtCoord:(TSUCellCoord)coord;
- (void)beginTrackingReference:(id)reference calcEngine:(id)engine;
- (void)endTrackingReference:(id)reference calcEngine:(id)engine;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setOwnerUID:(TSKUIDStruct)d;
- (void)willClose;
@end

@implementation TSCETrackedReferenceStore

- (void)setOwnerUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  objc_msgSend_willModify(self, a2, d._lower, d._upper);
  self->_ownerUID._lower = lower;
  self->_ownerUID._upper = upper;
}

- (TSCETrackedReferenceStore)initWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TSCETrackedReferenceStore;
  v5 = [(TSCETrackedReferenceStore *)&v12 initWithContext:contextCopy];
  if (v5)
  {
    v5->_ownerUID._lower = TSKMakeUIDStructRandom();
    v5->_ownerUID._upper = v6;
    v7 = objc_opt_new();
    trackedRefsLock = v5->_trackedRefsLock;
    v5->_trackedRefsLock = v7;

    v9 = objc_opt_new();
    trackedReferences = v5->_trackedReferences;
    v5->_trackedReferences = v9;

    v5->_nextEmptyTrackedReferencesIndex = 0;
  }

  return v5;
}

- (void)willClose
{
  trackedReferences = self->_trackedReferences;
  self->_trackedReferences = 0;
}

- (void)beginTrackingReference:(id)reference calcEngine:(id)engine
{
  referenceCopy = reference;
  engineCopy = engine;
  objc_msgSend_willModify(self, v8, v9, v10);
  objc_msgSend_lock(self->_trackedRefsLock, v11, v12, v13);
  nextEmptyTrackedReferencesIndex = self->_nextEmptyTrackedReferencesIndex;
  if (!(nextEmptyTrackedReferencesIndex >> 24))
  {
    v36 = objc_msgSend_coordFromIndex_(TSCETrackedReferenceStore, v14, nextEmptyTrackedReferencesIndex, v15);
    objc_msgSend_setFormulaCoord_(referenceCopy, v17, v36, v18);
    v22 = objc_msgSend_maxKey(self->_trackedReferences, v19, v20, v21);
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22 + 1;
    }

    v25 = self->_nextEmptyTrackedReferencesIndex;
    trackedReferences = self->_trackedReferences;
    if (v25 == v24)
    {
      objc_msgSend_setObject_forKey_(trackedReferences, v23, referenceCopy, v24);
      v24 = self->_nextEmptyTrackedReferencesIndex + 1;
    }

    else
    {
      objc_msgSend_setObject_forKey_(trackedReferences, v23, referenceCopy, self->_nextEmptyTrackedReferencesIndex);
      v30 = v25;
      while (++v30 < v24)
      {
        if ((objc_msgSend_hasObjectForKey_(self->_trackedReferences, v27, v30, v29) & 1) == 0)
        {
          self->_nextEmptyTrackedReferencesIndex = v30;
          goto LABEL_13;
        }
      }

      v30 = self->_nextEmptyTrackedReferencesIndex;
LABEL_13:
      if (v30 == v25)
      {
        v30 = 0;
        if (v25)
        {
          while ((objc_msgSend_hasObjectForKey_(self->_trackedReferences, v27, v30, v29) & 1) != 0)
          {
            if (++v30 >= self->_nextEmptyTrackedReferencesIndex)
            {
              v30 = self->_nextEmptyTrackedReferencesIndex;
              goto LABEL_19;
            }
          }

          self->_nextEmptyTrackedReferencesIndex = v30;
        }
      }

LABEL_19:
      if (v30 != v25)
      {
        goto LABEL_21;
      }
    }

    self->_nextEmptyTrackedReferencesIndex = v24;
LABEL_21:
    objc_msgSend_unlock(self->_trackedRefsLock, v27, v28, v29);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v35, 0, 1);
    v32 = objc_msgSend_precedentsWithCalcEngine_hostOwnerUID_(referenceCopy, v31, engineCopy, &self->_ownerUID);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v34, &v35);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(engineCopy, v33, &v36, &self->_ownerUID, v32, &v34);

    goto LABEL_22;
  }

  objc_msgSend_unlock(self->_trackedRefsLock, v14, nextEmptyTrackedReferencesIndex, v15);
LABEL_22:
}

- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)ref calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = [TSCETrackedReference alloc];
  v10 = objc_msgSend_initWithCellRef_(v7, v8, ref, v9);
  objc_msgSend_beginTrackingReference_calcEngine_(self, v11, v10, engineCopy);

  return v10;
}

- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)ref calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = [TSCETrackedReference alloc];
  v10 = objc_msgSend_initWithSpanningRangeRef_(v7, v8, ref, v9);
  objc_msgSend_beginTrackingReference_calcEngine_(self, v11, v10, engineCopy);

  return v10;
}

- (void)endTrackingReference:(id)reference calcEngine:(id)engine
{
  referenceCopy = reference;
  engineCopy = engine;
  objc_msgSend_willModify(self, v8, v9, v10);
  v26 = objc_msgSend_formulaCoord(referenceCopy, v11, v12, v13);
  v16 = objc_msgSend_indexFromCoord_(TSCETrackedReferenceStore, v14, &v26, v15);
  objc_msgSend_lock(self->_trackedRefsLock, v17, v18, v19);
  objc_msgSend_removeObjectForKey_(self->_trackedReferences, v20, v16, v21);
  if (self->_nextEmptyTrackedReferencesIndex > v16)
  {
    self->_nextEmptyTrackedReferencesIndex = v16;
  }

  objc_msgSend_unlock(self->_trackedRefsLock, v22, v23, v24);
  objc_msgSend_removeFormulaAt_inOwner_(engineCopy, v25, &v26, &self->_ownerUID);
}

- (id)allTrackedReferences
{
  objc_msgSend_lock(self->_trackedRefsLock, a2, v2, v3);
  v5 = MEMORY[0x277CBEB18];
  v9 = objc_msgSend_count(self->_trackedReferences, v6, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v5, v10, v9, v11);
  trackedReferences = self->_trackedReferences;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2212B7A34;
  v21[3] = &unk_278462990;
  v14 = v12;
  v22 = v14;
  objc_msgSend_foreach_(trackedReferences, v15, v21, v16);
  objc_msgSend_unlock(self->_trackedRefsLock, v17, v18, v19);

  return v14;
}

- (id)trackedReferenceAtCoord:(TSUCellCoord)coord
{
  coordCopy = coord;
  v5 = objc_msgSend_indexFromCoord_(TSCETrackedReferenceStore, a2, &coordCopy, v3);
  v8 = objc_msgSend_objectForKey_(self->_trackedReferences, v6, v5, v7);

  return v8;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2212B8370, off_2812E2AC8[286]);

  v10 = objc_msgSend_count(self->_trackedReferences, v7, v8, v9);
  *(v6 + 16) |= 1u;
  v11 = *(v6 + 96);
  if (!v11)
  {
    v12 = *(v6 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x223DA0300](v12);
    *(v6 + 96) = v11;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v11);
  if (v10 < 0xF4241)
  {
    trackedReferences = self->_trackedReferences;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2212B7C9C;
    v17[3] = &unk_2784629B8;
    v19 = v6;
    v18 = archiverCopy;
    objc_msgSend_foreach_(trackedReferences, v15, v17, v16);
  }

  else
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v13, 0xA000000000003, @"TSTExpandedTables");
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E2AC8[286], v6);

  v8 = TSKUIDStruct::loadFromMessage();
  self->_ownerUID._lower = v8;
  self->_ownerUID._upper = v9;
  if (!(v8 | v9))
  {
    self->_ownerUID._lower = TSKMakeUIDStructRandom();
    self->_ownerUID._upper = v10;
  }

  self->_nextEmptyTrackedReferencesIndex = 0;
  v11 = objc_opt_new();
  trackedRefsLock = self->_trackedRefsLock;
  self->_trackedRefsLock = v11;

  v13 = objc_opt_new();
  trackedReferences = self->_trackedReferences;
  self->_trackedReferences = v13;

  v15 = *(v7 + 80);
  v16 = *(v7 + 56);
  v17 = *(v7 + 32);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2212B80D4;
  v40[3] = &unk_2784629E0;
  v40[4] = self;
  v18 = MEMORY[0x223DA1C10](v40);
  v21 = v18;
  if (v15)
  {
    if (v15 >= 1)
    {
      v22 = 8;
      do
      {
        v23 = *(*(v7 + 88) + v22);
        v24 = [TSCETrackedReference alloc];
        v27 = objc_msgSend_initFromExpandedArchive_(v24, v25, v23, v26);
        (v21)[2](v21, v27);

        v22 += 8;
        --v15;
      }

      while (v15);
    }
  }

  else if (v16)
  {
    if (v16 >= 1)
    {
      v28 = 8;
      do
      {
        v29 = *(*(v7 + 64) + v28);
        v30 = [TSCETrackedReference alloc];
        v33 = objc_msgSend_initFromArchive_(v30, v31, v29, v32);
        (v21)[2](v21, v33);

        v28 += 8;
        --v16;
      }

      while (v16);
    }
  }

  else if (v17)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2212B815C;
    v38[3] = &unk_278462A08;
    v39 = v18;
    v34 = unarchiverCopy;
    v35 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v34, v36, v7 + 24, v35, 0, v38);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2212B82B8;
  v37[3] = &unk_27845E3F8;
  v37[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v19, v37, v20);
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end