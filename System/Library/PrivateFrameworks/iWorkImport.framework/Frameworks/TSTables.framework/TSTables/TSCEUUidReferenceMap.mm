@interface TSCEUUidReferenceMap
+ (id)_stringForInternalCellRef:(const TSCEInternalCellReference *)ref;
- (id).cxx_construct;
- (id)description;
- (id)initFromArchive:(const void *)archive dependencyTracker:(id)tracker;
- (void)addCellRef:(const TSCEInternalCellReference *)ref forUuid:(const TSKUIDStruct *)uuid;
- (void)encodeToArchive:(void *)archive alsoSave31Format:(BOOL)format archiver:(id)archiver;
- (void)getCellRefs:(void *)refs referringToUuids:(const void *)uuids;
- (void)removeAllCellRefsInOwner:(unsigned __int16)owner;
- (void)removeCellRef:(const TSCEInternalCellReference *)ref;
- (void)removeCellRef:(const TSCEInternalCellReference *)ref forUuid:(const TSKUIDStruct *)uuid;
- (void)upgradeForOwners:(id)owners;
@end

@implementation TSCEUUidReferenceMap

+ (id)_stringForInternalCellRef:(const TSCEInternalCellReference *)ref
{
  v3 = MEMORY[0x277CCACA8];
  tableID = ref->tableID;
  v5 = NSStringFromTSUCellCoord();
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"#%lu[%@]", v7, tableID, v5);

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p>:\n", v6, v4, self);
  for (i = self->_cellRefsByUuid.__table_.__first_node_.__next_; i; i = i->_lower)
  {
    v21 = i[1];
    if (sub_2212E0238(&i[2]))
    {
      v9 = TSKUIDStruct::description(&v21);
      objc_msgSend_appendFormat_(v7, v10, @"[%@] = ", v11, v9);

      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v20 = 1;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_22141CE90;
      v16[3] = &unk_278463C98;
      v12 = v7;
      v17 = v12;
      v18 = v19;
      sub_2212DFEC0(&i[2], v16);
      objc_msgSend_appendString_(v12, v13, @"\n", v14);

      _Block_object_dispose(v19, 8);
    }
  }

  return v7;
}

- (void)addCellRef:(const TSCEInternalCellReference *)ref forUuid:(const TSKUIDStruct *)uuid
{
  v7 = sub_2210875C4(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, uuid);
  if (v7)
  {
    sub_2212DFCE8(v7 + 4, &ref->coordinate);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 1065353216;
    sub_2212DFCE8(v10, &ref->coordinate);
    uuidCopy = uuid;
    v8 = sub_22141DC04(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, uuid, &unk_2217E1C18, &uuidCopy);
    sub_2212DFCA0((v8 + 4), v10);
    sub_221122744(v10);
  }

  *&v10[0] = ref;
  v9 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, ref, &unk_2217E1C18, v10);
  sub_2210C2B00(v9 + 4, uuid, uuid);
}

- (void)removeCellRef:(const TSCEInternalCellReference *)ref forUuid:(const TSKUIDStruct *)uuid
{
  v7 = sub_2210875C4(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, uuid);
  if (v7)
  {
    sub_2212DFDD0(v7 + 4, ref);
    refCopy = ref;
    v8 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, ref, &unk_2217E1C18, &refCopy);
    sub_2211F2EF4(v8 + 4, uuid);
  }
}

- (void)removeCellRef:(const TSCEInternalCellReference *)ref
{
  if (sub_221123474(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, ref))
  {
    refCopy2 = ref;
    v5 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, ref, &unk_2217E1C18, &refCopy2);
    sub_2213FB8DC(v9, (v5 + 4));
    for (i = v10; i; i = *i)
    {
      objc_msgSend_removeCellRef_forUuid_(self, v6, ref, (i + 2));
    }

    refCopy2 = ref;
    v8 = sub_22141DEC4(&self->_uuidsByCellRef.__table_.__bucket_list_.__ptr_, ref, &unk_2217E1C18, &refCopy2);
    sub_2210BE918(v8 + 4);
    sub_2210BDEC0(v9);
  }
}

- (void)removeAllCellRefsInOwner:(unsigned __int16)owner
{
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  next = self->_uuidsByCellRef.__table_.__first_node_.__next_;
  if (next)
  {
    ownerCopy = owner;
    do
    {
      v7 = next[2];
      v8 = *(next + 6);
      if (ownerCopy == v8)
      {
        sub_2212DFCE8(v9, &v7);
      }

      next = *next;
    }

    while (next);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22141D264;
  v6[3] = &unk_27845F540;
  v6[4] = self;
  sub_2212DFEC0(v9, v6);
  sub_221122744(v9);
}

- (void)getCellRefs:(void *)refs referringToUuids:(const void *)uuids
{
  v4 = *uuids;
  v5 = *(uuids + 1);
  if (*uuids != v5)
  {
    do
    {
      v8 = sub_2210875C4(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, v4);
      if (v8)
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = sub_22141D338;
        v9[3] = &unk_27845F588;
        v9[4] = refs;
        sub_2212DFEC0((v8 + 4), v9);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

- (id)initFromArchive:(const void *)archive dependencyTracker:(id)tracker
{
  trackerCopy = tracker;
  v11 = objc_msgSend_init(self, v5, v6, v7);
  if (v11)
  {
    v12 = objc_msgSend_idMap(trackerCopy, v8, v9, v10);
    v14 = *(archive + 6);
    if (v14 >= 1)
    {
      v15 = v12;
      for (i = 0; i != v14; ++i)
      {
        v17 = *(*(archive + 4) + 8 * i + 8);
        v46 = 0uLL;
        if (*(v17 + 48))
        {
          v18 = *(v17 + 48);
        }

        else
        {
          v18 = MEMORY[0x277D809E0];
        }

        *&v46 = TSKUIDStruct::loadFromMessage(v18, v13);
        *(&v46 + 1) = v19;
        v38 = 0;
        v39 = &v38;
        v40 = 0x5812000000;
        v41 = sub_22141D658;
        v42 = sub_22141D664;
        v43 = &unk_22188E88F;
        memset(v44, 0, sizeof(v44));
        v45 = 1065353216;
        if ((*(v17 + 16) & 2) != 0)
        {
          v24 = *(v17 + 56);
          memset(v36, 0, sizeof(v36));
          v37 = 1065353216;
          sub_2212E0790(v36, v24);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = sub_22141D66C;
          v31[3] = &unk_278464D80;
          v34 = v15;
          v25 = v11;
          v35 = v46;
          v32 = v25;
          v33 = &v38;
          sub_2212DFEC0(v36, v31);

          sub_221122744(v36);
        }

        else
        {
          v20 = *(v17 + 32);
          if (v20 >= 1)
          {
            v21 = 8;
            do
            {
              DWORD2(v36[0]) = 0;
              *&v36[0] = 0;
              *&v36[0] = sub_2215C3954(*(*(v17 + 40) + v21));
              DWORD2(v36[0]) = v22;
              if (*(v15 + 144))
              {
                LOWORD(v22) = sub_2212602C8(v15, v22);
              }

              WORD4(v36[0]) = v22;
              v47 = v36;
              v23 = sub_22141DEC4(v11 + 6, v36, &unk_2217E1C18, &v47);
              sub_2210C2B00(v23 + 4, &v46, &v46);
              sub_2212DFCE8(v39 + 6, v36);
              v21 += 8;
              --v20;
            }

            while (v20);
          }
        }

        v26 = v39;
        *&v36[0] = &v46;
        v27 = sub_22141DC04(v11 + 1, &v46, &unk_2217E1C18, v36);
        sub_2212DFCA0((v27 + 4), (v26 + 6));
        _Block_object_dispose(&v38, 8);
        sub_221122744(v44);
      }
    }
  }

  return v11;
}

- (void)upgradeForOwners:(id)owners
{
  ownersCopy = owners;
  v8 = objc_msgSend_ownerUIDMap(ownersCopy, v5, v6, v7);
  sub_22141E1BC(v20, &self->_cellRefsByUuid);
  for (i = v21; i; i = *i)
  {
    v19 = *(i + 1);
    v18 = 0uLL;
    v22 = v19;
    v10 = sub_221119F90(v8, &v22);
    if (v10)
    {
      v12 = v10[4];
      v11 = v10[5];
      *&v18 = v12;
      *(&v18 + 1) = v11;
      if (v12 | v11)
      {
        if (v19 != v12 || *(&v19 + 1) != v11)
        {
          sub_22141E578(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, &v19);
          *&v22 = &v18;
          v14 = sub_22141DC04(&self->_cellRefsByUuid.__table_.__bucket_list_.__ptr_, &v18, &unk_2217E1C18, &v22);
          sub_2212DFCA0((v14 + 4), (i + 4));
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_22141D8A0;
          v15[3] = &unk_278464DA8;
          v15[4] = self;
          v16 = v19;
          v17 = v18;
          sub_2212DFEC0((i + 4), v15);
        }
      }
    }
  }

  sub_22141E4F8(v20);
}

- (void)encodeToArchive:(void *)archive alsoSave31Format:(BOOL)format archiver:(id)archiver
{
  formatCopy = format;
  archiverCopy = archiver;
  next = self->_cellRefsByUuid.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v21 = next[1];
      if (sub_2212E0238(&next[2]))
      {
        break;
      }

LABEL_20:
      next = next->_lower;
      if (!next)
      {
        goto LABEL_21;
      }
    }

    v10 = *(archive + 4);
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = *(archive + 6);
    v12 = *v10;
    if (v11 < *v10)
    {
      *(archive + 6) = v11 + 1;
      v13 = *&v10[2 * v11 + 2];
LABEL_10:
      *(v13 + 16) |= 1u;
      v16 = *(v13 + 48);
      if (!v16)
      {
        v17 = *(v13 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0360](v17);
        *(v13 + 48) = v16;
      }

      TSKUIDStruct::saveToMessage(&v21, v16);
      *(v13 + 16) |= 2u;
      v18 = *(v13 + 56);
      if (!v18)
      {
        v19 = *(v13 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v19);
        *(v13 + 56) = v18;
      }

      sub_2212E0690(&next[2], v18);
      if (formatCopy)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22141DAF0;
        v20[3] = &unk_27845F588;
        v20[4] = v13;
        sub_2212DFEC0(&next[2], v20);
      }

      goto LABEL_20;
    }

    if (v12 == *(archive + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
      v10 = *(archive + 4);
      v12 = *v10;
    }

    *v10 = v12 + 1;
    v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive_CellRefsForUuid>(*(archive + 2));
    v14 = *(archive + 6);
    v15 = *(archive + 4) + 8 * v14;
    *(archive + 6) = v14 + 1;
    *(v15 + 8) = v13;
    goto LABEL_10;
  }

LABEL_21:
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end