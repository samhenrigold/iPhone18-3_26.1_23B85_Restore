@interface TSCEUuidReferences
+ (id)_stringForInternalCellRef:(const TSCEInternalCellReference *)ref;
- (BOOL)getCellRefs:(void *)refs referringToOwnerUID:(const TSKUIDStruct *)d referringToUuids:(const void *)uuids;
- (TSCEUuidReferences)initWithOwnerUID:(const TSKUIDStruct *)d;
- (TSKUIDStruct)ownerUID;
- (id).cxx_construct;
- (id)description;
- (id)initFromArchive:(const void *)archive ownerUID:(const TSKUIDStruct *)d;
- (void)addCellCoord:(const TSUCellCoord *)coord referringToCategoryRef:(id)ref;
- (void)addCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d;
- (void)addCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d forColumnRowUuid:(const TSKUIDStruct *)uuid;
- (void)clear;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)getAllCellRefs:(void *)refs referringToOwnerUID:(const TSKUIDStruct *)d;
- (void)getCellRefs:(void *)refs referringToOwner:(const TSKUIDStruct *)owner;
- (void)getCellRefs:(void *)refs referringToOwners:(const void *)owners;
- (void)removeCellCoord:(const TSUCellCoord *)coord;
- (void)removeCellCoord:(const TSUCellCoord *)coord referringToCategoryRef:(id)ref;
- (void)removeCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d;
- (void)removeCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d forColumnRowUuid:(const TSKUIDStruct *)uuid;
- (void)unpackAfterUnarchive;
@end

@implementation TSCEUuidReferences

- (TSCEUuidReferences)initWithOwnerUID:(const TSKUIDStruct *)d
{
  v5.receiver = self;
  v5.super_class = TSCEUuidReferences;
  result = [(TSCEUuidReferences *)&v5 init];
  if (result)
  {
    result->_ownerUID = *d;
  }

  return result;
}

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
  v5 = TSKUIDStruct::description(&self->_ownerUID);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p> for ownerUID %@:\n", v7, v4, self, v5);

  for (i = self->_coordSetsReferringToTable.__table_.__first_node_.__next_; i; i = *i)
  {
    v10 = TSKUIDStruct::description(i + 1);
    v11 = TSCECellCoordSet::description((i + 32));
    objc_msgSend_appendFormat_(v8, v12, @"Table %@ <- %@\n", v13, v10, v11);
  }

  for (j = self->_coordSetsReferringToUuidInTable.__table_.__first_node_.__next_; j; j = j->_lower)
  {
    for (k = j[3]._lower; k; k = *k)
    {
      v16 = TSKUIDStruct::description(j + 1);
      v17 = TSKUIDStruct::description((k + 16));
      v18 = TSCECellCoordSet::description((k + 32));
      objc_msgSend_appendFormat_(v8, v19, @"Table %@, Uid: %@ <- %@\n", v20, v16, v17, v18);
    }
  }

  return v8;
}

- (void)addCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d
{
  if (*d != 0)
  {
    v9._lower = d;
    v7 = sub_2213292E0(&self->_coordSetsReferringToTable.__table_.__bucket_list_.__ptr_, d, &unk_2217E14B1, &v9);
    TSCECellCoordSet::addCellCoord((v7 + 4), coord);
    v9._lower = coord;
    v8 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, coord, &unk_2217E14B1, &v9);
    v9 = *d;
    v10 = 0;
    v11 = 0;
    sub_221329838(v8 + 3, &v9, &v9);
  }
}

- (void)removeCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d
{
  if (*d != 0)
  {
    v7 = sub_2210875C4(&self->_coordSetsReferringToTable.__table_.__bucket_list_.__ptr_, d);
    if (v7)
    {
      TSCECellCoordSet::removeCellCoord((v7 + 4), coord);
      v9._lower = coord;
      v8 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, coord, &unk_2217E14B1, &v9);
      v9 = *d;
      v10 = 0;
      v11 = 0;
      sub_221329A98(v8 + 3, &v9);
    }
  }
}

- (void)addCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d forColumnRowUuid:(const TSKUIDStruct *)uuid
{
  *&v13[0] = d;
  v9 = sub_221329BB8(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, d, &unk_2217E14B1, v13);
  *&v13[0] = uuid;
  v10 = sub_2213292E0(v9 + 4, uuid, &unk_2217E14B1, v13);
  TSCECellCoordSet::addCellCoord((v10 + 4), coord);
  *&v13[0] = coord;
  v11 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, coord, &unk_2217E14B1, v13);
  v12 = *uuid;
  v13[0] = *d;
  v13[1] = v12;
  sub_221329838(v11 + 3, v13, v13);
}

- (void)removeCellCoord:(const TSUCellCoord *)coord referringToTableUID:(const TSKUIDStruct *)d forColumnRowUuid:(const TSKUIDStruct *)uuid
{
  v9 = sub_2210875C4(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, d);
  if (v9)
  {
    v10 = sub_2210875C4(v9 + 4, uuid);
    if (v10)
    {
      TSCECellCoordSet::removeCellCoord((v10 + 4), coord);
      *&v13[0] = coord;
      v11 = sub_2213295A8(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, coord, &unk_2217E14B1, v13);
      v12 = *uuid;
      v13[0] = *d;
      v13[1] = v12;
      sub_221329A98(v11 + 3, v13);
    }
  }
}

- (void)addCellCoord:(const TSUCellCoord *)coord referringToCategoryRef:(id)ref
{
  refCopy = ref;
  v20 = objc_msgSend_groupByUid(refCopy, v7, v8, v9);
  v21 = v10;
  if (v20 | v10)
  {
    if (objc_msgSend_isBadRef(refCopy, v10, v11, v12, 0, 0, v20, v21))
    {
      v16 = objc_msgSend_relativeGroupUid(refCopy, v13, v14, v15);
    }

    else
    {
      v16 = objc_msgSend_absoluteGroupUid(refCopy, v13, v14, v15);
    }

    v18 = v16;
    v19 = v17;
    if (v16 | v17)
    {
      objc_msgSend_addCellCoord_referringToTableUID_forColumnRowUuid_(self, v17, coord, &v20, &v18);
    }

    objc_msgSend_addCellCoord_referringToTableUID_(self, v17, coord, &v20, v18, v19);
  }
}

- (void)removeCellCoord:(const TSUCellCoord *)coord referringToCategoryRef:(id)ref
{
  refCopy = ref;
  v20 = objc_msgSend_groupByUid(refCopy, v7, v8, v9);
  v21 = v10;
  if (v20 | v10)
  {
    if (objc_msgSend_isBadRef(refCopy, v10, v11, v12, 0, 0, v20, v21))
    {
      v16 = objc_msgSend_relativeGroupUid(refCopy, v13, v14, v15);
    }

    else
    {
      v16 = objc_msgSend_absoluteGroupUid(refCopy, v13, v14, v15);
    }

    v18 = v16;
    v19 = v17;
    if (v16 | v17)
    {
      objc_msgSend_removeCellCoord_referringToTableUID_forColumnRowUuid_(self, v17, coord, &v20, &v18);
    }

    objc_msgSend_removeCellCoord_referringToTableUID_(self, v17, coord, &v20, v18, v19);
  }
}

- (void)removeCellCoord:(const TSUCellCoord *)coord
{
  v5 = sub_221087F14(&self->_uuidsByCoord.__table_.__bucket_list_.__ptr_, coord);
  if (v5)
  {
    sub_221329E78(v9, (v5 + 3));
    for (i = v10; i; i = *i)
    {
      v8 = (i + 2);
      if (i[4] || i[5])
      {
        objc_msgSend_removeCellCoord_referringToTableUID_forColumnRowUuid_(self, v6, coord, v8);
      }

      else
      {
        objc_msgSend_removeCellCoord_referringToTableUID_(self, v6, coord, v8);
      }
    }

    sub_2210BDEC0(v9);
  }
}

- (void)clear
{
  sub_22132A150(&self->_coordSetsReferringToTable);
  sub_22132A1F4(&self->_coordSetsReferringToUuidInTable);

  sub_2210BE984(&self->_uuidsByCoord);
}

- (void)getCellRefs:(void *)refs referringToOwner:(const TSKUIDStruct *)owner
{
  if (*owner != 0)
  {
    v6 = sub_2210875C4(&self->_coordSetsReferringToTable.__table_.__bucket_list_.__ptr_, owner);
    if (v6)
    {

      TSCECellRefSet::addCellRefs(refs, &self->_ownerUID, (v6 + 4));
    }
  }
}

- (void)getCellRefs:(void *)refs referringToOwners:(const void *)owners
{
  v4 = *owners;
  v5 = *(owners + 1);
  if (*owners != v5)
  {
    do
    {
      objc_msgSend_getCellRefs_referringToOwner_(self, a2, refs, v4);
      v4 += 16;
    }

    while (v4 != v5);
  }
}

- (void)getAllCellRefs:(void *)refs referringToOwnerUID:(const TSKUIDStruct *)d
{
  objc_msgSend_getCellRefs_referringToOwner_(self, a2, refs, d);
  v7 = sub_2210875C4(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, d);
  if (v7)
  {
    for (i = v7[6]; i; i = *i)
    {
      TSCECellRefSet::addCellRefs(refs, &self->_ownerUID, (i + 4));
    }
  }
}

- (BOOL)getCellRefs:(void *)refs referringToOwnerUID:(const TSKUIDStruct *)d referringToUuids:(const void *)uuids
{
  v8 = sub_2210875C4(&self->_coordSetsReferringToUuidInTable.__table_.__bucket_list_.__ptr_, d);
  if (!v8)
  {
    return 0;
  }

  v9 = *uuids;
  v10 = *(uuids + 1);
  if (*uuids == v10)
  {
    return 0;
  }

  v11 = v8;
  v12 = 0;
  do
  {
    v13 = sub_221119F90(v11 + 4, v9);
    if (v13)
    {
      v14 = v13;
      if (!TSCECellCoordSet::isEmpty((v13 + 4)))
      {
        TSCECellRefSet::addCellRefs(refs, &self->_ownerUID, (v14 + 4));
        v12 = 1;
      }
    }

    v9 += 2;
  }

  while (v9 != v10);
  return v12;
}

- (id)initFromArchive:(const void *)archive ownerUID:(const TSKUIDStruct *)d
{
  archiveCopy = archive;
  v31 = objc_msgSend_init(self, a2, archive, d);
  if (v31)
  {
    *(v31 + 8) = *d;
    v7 = *(archiveCopy + 6);
    v8 = MEMORY[0x277D809E0];
    if (v7 >= 1)
    {
      v9 = 8;
      do
      {
        v10 = *(archiveCopy[4] + v9);
        v34 = 0;
        v35 = 0;
        if (*(v10 + 24))
        {
          v11 = *(v10 + 24);
        }

        else
        {
          v11 = v8;
        }

        v34 = TSKUIDStruct::loadFromMessage(v11, v6);
        v35 = v12;
        v32 = &v34;
        v13 = sub_2213292E0((v31 + 24), &v34, &unk_2217E14B1, &v32);
        if (*(v10 + 32))
        {
          v14 = *(v10 + 32);
        }

        else
        {
          v14 = &TSCE::_CellCoordSetArchive_default_instance_;
        }

        TSCECellCoordSet::loadFromArchive((v13 + 4), v14);
        v9 += 8;
        --v7;
      }

      while (v7);
    }

    v30 = *(archiveCopy + 12);
    if (v30 >= 1)
    {
      for (i = 0; i != v30; ++i)
      {
        v16 = archiveCopy;
        v17 = *(archiveCopy[7] + 8 * i + 8);
        v34 = 0;
        v35 = 0;
        if (*(v17 + 48))
        {
          v18 = *(v17 + 48);
        }

        else
        {
          v18 = v8;
        }

        v34 = TSKUIDStruct::loadFromMessage(v18, v6);
        v35 = v19;
        v32 = &v34;
        v20 = sub_221329BB8((v31 + 64), &v34, &unk_2217E14B1, &v32);
        v21 = *(v17 + 32);
        if (v21 >= 1)
        {
          v22 = v20;
          v23 = 8;
          do
          {
            v24 = *(*(v17 + 40) + v23);
            if ((*(v24 + 16) & 2) != 0)
            {
              v32 = 0;
              v33 = 0;
              if (*(v24 + 24))
              {
                v25 = *(v24 + 24);
              }

              else
              {
                v25 = v8;
              }

              v32 = TSKUIDStruct::loadFromMessage(v25, v6);
              v33 = v26;
              v36 = &v32;
              v27 = sub_2213292E0(v22 + 4, &v32, &unk_2217E14B1, &v36);
              if (*(v24 + 32))
              {
                v28 = *(v24 + 32);
              }

              else
              {
                v28 = &TSCE::_CellCoordSetArchive_default_instance_;
              }

              TSCECellCoordSet::loadFromArchive((v27 + 4), v28);
            }

            v23 += 8;
            --v21;
          }

          while (v21);
        }

        archiveCopy = v16;
      }
    }
  }

  return v31;
}

- (void)unpackAfterUnarchive
{
  next = self->_coordSetsReferringToTable.__table_.__first_node_.__next_;
  if (next)
  {
    v4 = MEMORY[0x277D85DD0];
    do
    {
      v14 = next[1];
      v12[0] = v4;
      v12[1] = 3221225472;
      v12[2] = sub_221328E10;
      v12[3] = &unk_278462DA0;
      v12[4] = self;
      v13 = v14;
      TSCECellCoordSet::enumerateCoordsUsingBlock(next + 4, v12);
      next = *next;
    }

    while (next);
  }

  for (i = self->_coordSetsReferringToUuidInTable.__table_.__first_node_.__next_; i; i = *i)
  {
    v14 = i[1];
    v6 = *(i + 6);
    if (v6)
    {
      v7 = MEMORY[0x277D85DD0];
      do
      {
        v11 = *(v6 + 1);
        v8[0] = v7;
        v8[1] = 3221225472;
        v8[2] = sub_221328E74;
        v8[3] = &unk_27845F3B0;
        v8[4] = self;
        v9 = v14;
        v10 = v11;
        TSCECellCoordSet::enumerateCoordsUsingBlock(v6 + 4, v8);
        v6 = *v6;
      }

      while (v6);
    }
  }
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  next = self->_coordSetsReferringToTable.__table_.__first_node_.__next_;
  if (next)
  {
    while (TSCECellCoordSet::isEmpty((next + 32)))
    {
LABEL_19:
      next = *next;
      if (!next)
      {
        goto LABEL_20;
      }
    }

    v7 = *(archive + 4);
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = *(archive + 6);
    v9 = *v7;
    if (v8 < *v7)
    {
      *(archive + 6) = v8 + 1;
      v10 = *&v7[2 * v8 + 2];
LABEL_10:
      *(v10 + 16) |= 1u;
      v13 = *(v10 + 24);
      if (!v13)
      {
        v14 = *(v10 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0360](v14);
        *(v10 + 24) = v13;
      }

      TSKUIDStruct::saveToMessage(next + 1, v13);
      *(v10 + 16) |= 2u;
      v15 = *(v10 + 32);
      if (!v15)
      {
        v16 = *(v10 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v16);
        *(v10 + 32) = v15;
      }

      TSCECellCoordSet::encodeToArchive((next + 32), v15);
      goto LABEL_19;
    }

    if (v9 == *(archive + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
      v7 = *(archive + 4);
      v9 = *v7;
    }

    *v7 = v9 + 1;
    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableRef>(*(archive + 2));
    v11 = *(archive + 6);
    v12 = *(archive + 4) + 8 * v11;
    *(archive + 6) = v11 + 1;
    *(v12 + 8) = v10;
    goto LABEL_10;
  }

LABEL_20:
  for (i = self->_coordSetsReferringToUuidInTable.__table_.__first_node_.__next_; i; i = i->_lower)
  {
    if (!i[3]._upper)
    {
      continue;
    }

    v18 = *(archive + 7);
    if (!v18)
    {
      goto LABEL_27;
    }

    v19 = *(archive + 12);
    v20 = *v18;
    if (v19 < *v18)
    {
      *(archive + 12) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
      goto LABEL_29;
    }

    if (v20 == *(archive + 13))
    {
LABEL_27:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 40));
      v18 = *(archive + 7);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableWithUuidRef>(*(archive + 5));
    v22 = *(archive + 12);
    v23 = *(archive + 7) + 8 * v22;
    *(archive + 12) = v22 + 1;
    *(v23 + 8) = v21;
LABEL_29:
    *(v21 + 16) |= 1u;
    v24 = *(v21 + 48);
    if (!v24)
    {
      v25 = *(v21 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x223DA0360](v25);
      *(v21 + 48) = v24;
    }

    TSKUIDStruct::saveToMessage(i + 1, v24);
    lower = i[3]._lower;
    if (lower)
    {
      while (TSCECellCoordSet::isEmpty((lower + 32)))
      {
LABEL_51:
        lower = *lower;
        if (!lower)
        {
          goto LABEL_52;
        }
      }

      v27 = *(v21 + 40);
      if (!v27)
      {
        goto LABEL_40;
      }

      v28 = *(v21 + 32);
      v29 = *v27;
      if (v28 < *v27)
      {
        *(v21 + 32) = v28 + 1;
        v30 = *&v27[2 * v28 + 2];
LABEL_42:
        *(v30 + 16) |= 1u;
        v33 = *(v30 + 24);
        if (!v33)
        {
          v34 = *(v30 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0360](v34);
          *(v30 + 24) = v33;
        }

        TSKUIDStruct::saveToMessage((lower + 16), v33);
        *(v30 + 16) |= 2u;
        v35 = *(v30 + 32);
        if (!v35)
        {
          v36 = *(v30 + 8);
          if (v36)
          {
            v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v36);
          *(v30 + 32) = v35;
        }

        TSCECellCoordSet::encodeToArchive((lower + 32), v35);
        goto LABEL_51;
      }

      if (v29 == *(v21 + 36))
      {
LABEL_40:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v21 + 24));
        v27 = *(v21 + 40);
        v29 = *v27;
      }

      *v27 = v29 + 1;
      v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_UuidRef>(*(v21 + 24));
      v31 = *(v21 + 32);
      v32 = *(v21 + 40) + 8 * v31;
      *(v21 + 32) = v31 + 1;
      *(v32 + 8) = v30;
      goto LABEL_42;
    }

LABEL_52:
    ;
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

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 34) = 1065353216;
  return self;
}

@end