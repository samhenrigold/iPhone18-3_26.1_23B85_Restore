@interface TSCEGroupByNodeMap
- (BOOL)getCellRefs:(void *)refs referringToGroupNodes:(const void *)nodes inGroupBy:(const TSKUIDStruct *)by;
- (id).cxx_construct;
- (id)description;
- (id)initFromArchive:(const void *)archive;
- (void)addCellRef:(const TSCEInternalCellReference *)ref usingCategoryRef:(id)categoryRef;
- (void)encodeToArchive:(void *)archive;
- (void)getCellRefs:(void *)refs forGroupRootInGroupBy:(const TSKUIDStruct *)by;
- (void)getCellRefs:(void *)refs inGroupBy:(const TSKUIDStruct *)by;
- (void)getCellRefs:(void *)refs inGroupBys:(const void *)bys;
- (void)removeAllCellRefsInOwner:(unsigned __int16)owner;
- (void)removeCellRef:(const TSCEInternalCellReference *)ref;
- (void)removeCellRef:(const TSCEInternalCellReference *)ref usingCategoryRef:(id)categoryRef;
- (void)upgradeGroupByUid:(const TSKUIDStruct *)uid toUid:(const TSKUIDStruct *)toUid;
@end

@implementation TSCEGroupByNodeMap

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p>:\n", v6, v4, self);
}

- (void)addCellRef:(const TSCEInternalCellReference *)ref usingCategoryRef:(id)categoryRef
{
  categoryRefCopy = categoryRef;
  v24[0] = objc_msgSend_groupByUid(categoryRefCopy, v7, v8, v9);
  v24[1] = v10;
  if (v24[0] | v10)
  {
    v22 = 0;
    v23 = 0;
    if (objc_msgSend_isBadRef(categoryRefCopy, v10, v11, v12))
    {
      v16 = objc_msgSend_relativeGroupUid(categoryRefCopy, v13, v14, v15);
    }

    else
    {
      v16 = objc_msgSend_absoluteGroupUid(categoryRefCopy, v13, v14, v15);
    }

    v22 = v16;
    v23 = v17;
    if (v16 | v17)
    {
      *&v21[0] = v24;
      v18 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v24, &unk_2217E1E08, v21);
      *&v21[0] = ref;
      v19 = sub_22147D360(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, ref, &unk_2217E1E08, v21);
      *&v21[0] = &v22;
      v20 = sub_22141DC04(v18 + 4, &v22, &unk_2217E1E08, v21);
      sub_2212DFCE8(v20 + 4, &ref->coordinate);
      TSKMakeUIDStructCoord();
      sub_22147D60C(v19 + 4, v21, v21);
    }
  }
}

- (void)removeCellRef:(const TSCEInternalCellReference *)ref usingCategoryRef:(id)categoryRef
{
  categoryRefCopy = categoryRef;
  v27[0] = objc_msgSend_groupByUid(categoryRefCopy, v7, v8, v9);
  v27[1] = v10;
  if (v27[0] | v10 && sub_221119F90(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v27))
  {
    v25 = 0;
    v26 = 0;
    if (objc_msgSend_isBadRef(categoryRefCopy, v11, v12, v13))
    {
      v17 = objc_msgSend_relativeGroupUid(categoryRefCopy, v14, v15, v16);
    }

    else
    {
      v17 = objc_msgSend_absoluteGroupUid(categoryRefCopy, v14, v15, v16);
    }

    v19 = v17;
    v20 = v18;
    v25 = v17;
    v26 = v18;
    v24[0] = v27;
    v21 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v27, &unk_2217E1E08, v24);
    v24[0] = ref;
    v22 = sub_22147D360(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, ref, &unk_2217E1E08, v24);
    if (v19 | v20)
    {
      v24[0] = &v25;
      v23 = sub_22141DC04(v21 + 4, &v25, &unk_2217E1E08, v24);
      sub_2212DFDD0(v23 + 4, ref);
      TSKMakeUIDStructCoord();
      sub_22147D86C(v22 + 4, v24);
    }

    if (!v21[7])
    {
      sub_22147D8A4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v27);
    }

    if (!v22[7])
    {
      sub_22147D8F0(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, ref);
    }
  }
}

- (void)removeCellRef:(const TSCEInternalCellReference *)ref
{
  v5 = sub_221123474(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, ref);
  if (v5)
  {
    for (i = v5[6]; i; i = *i)
    {
      v7 = *(i + 1);
      v10 = *(i + 2);
      v11 = v7;
      v12 = &v11;
      v8 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, &v11, &unk_2217E1E08, &v12);
      v12 = &v10;
      v9 = sub_22141DC04(v8 + 4, &v10, &unk_2217E1E08, &v12);
      sub_2212DFDD0(v9 + 4, ref);
    }

    sub_22147D8F0(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, ref);
  }

  sub_22147D8F0(&self->_groupNodesByCellRef.__table_.__bucket_list_.__ptr_, ref);
}

- (void)removeAllCellRefsInOwner:(unsigned __int16)owner
{
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  next = self->_groupNodesByCellRef.__table_.__first_node_.__next_;
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
  v6[2] = sub_22147C6B0;
  v6[3] = &unk_27845F540;
  v6[4] = self;
  sub_2212DFEC0(v9, v6);
  sub_221122744(v9);
}

- (BOOL)getCellRefs:(void *)refs referringToGroupNodes:(const void *)nodes inGroupBy:(const TSKUIDStruct *)by
{
  v7 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, by);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!v7 || (v8 = *nodes, v9 = *(nodes + 1), v8 == v9))
  {
    v12 = 0;
  }

  else
  {
    v10 = v7;
    do
    {
      v11 = sub_221119F90(v10 + 4, v8);
      if (v11)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_22147C7F0;
        v14[3] = &unk_278465940;
        v14[4] = &v15;
        v14[5] = refs;
        sub_2212DFEC0((v11 + 4), v14);
      }

      v8 += 2;
    }

    while (v8 != v9);
    v12 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v12 & 1;
}

- (void)getCellRefs:(void *)refs forGroupRootInGroupBy:(const TSKUIDStruct *)by
{
  v5 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, by);
  if (v5)
  {
    v9 = v5;
    v13[0] = objc_msgSend_groupByRootUid(TSCECategoryRef, v6, v7, v8);
    v13[1] = v10;
    v11 = sub_221119F90(v9 + 4, v13);
    if (v11)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_22147C8D8;
      v12[3] = &unk_27845F588;
      v12[4] = refs;
      sub_2212DFEC0((v11 + 4), v12);
    }
  }
}

- (void)getCellRefs:(void *)refs inGroupBy:(const TSKUIDStruct *)by
{
  v5 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, by);
  if (v5)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = MEMORY[0x277D85DD0];
      do
      {
        v8[0] = v7;
        v8[1] = 3221225472;
        v8[2] = sub_22147C99C;
        v8[3] = &unk_27845F588;
        v8[4] = refs;
        sub_2212DFEC0((v6 + 4), v8);
        v6 = *v6;
      }

      while (v6);
    }
  }
}

- (void)getCellRefs:(void *)refs inGroupBys:(const void *)bys
{
  v4 = *bys;
  v5 = *(bys + 1);
  if (*bys != v5)
  {
    do
    {
      objc_msgSend_getCellRefs_inGroupBy_(self, a2, refs, v4);
      v4 += 16;
    }

    while (v4 != v5);
  }
}

- (id)initFromArchive:(const void *)archive
{
  v5 = objc_msgSend_init(self, a2, archive, v3);
  if (v5)
  {
    v19 = *(archive + 6);
    if (v19 >= 1)
    {
      v6 = 0;
      v7 = MEMORY[0x277D809E0];
      do
      {
        v21 = v6;
        v8 = *(*(archive + 4) + 8 * v6 + 8);
        v27 = 0uLL;
        if (*(v8 + 48))
        {
          v9 = *(v8 + 48);
        }

        else
        {
          v9 = v7;
        }

        *&v27 = TSKUIDStruct::loadFromMessage(v9, v4);
        *(&v27 + 1) = v4;
        v10 = *(v8 + 32);
        if (v10 >= 1)
        {
          v11 = 8;
          do
          {
            v12 = *(*(v8 + 40) + v11);
            v26 = 0uLL;
            if (*(v12 + 24))
            {
              v13 = *(v12 + 24);
            }

            else
            {
              v13 = v7;
            }

            *&v26 = TSKUIDStruct::loadFromMessage(v13, v4);
            *(&v26 + 1) = v4;
            if ((*(v12 + 16) & 2) != 0)
            {
              v28[0] = &v27;
              v14 = sub_22147D0A0(v5 + 1, &v27, &unk_2217E1E08, v28);
              v28[0] = &v26;
              v15 = sub_22141DC04(v14 + 4, &v26, &unk_2217E1E08, v28);
              if (*(v12 + 32))
              {
                v16 = *(v12 + 32);
              }

              else
              {
                v16 = &TSCE::_InternalCellRefSetArchive_default_instance_;
              }

              sub_2212E0790(v15 + 4, v16);
              v28[0] = &v26;
              v17 = sub_22141DC04(v14 + 4, &v26, &unk_2217E1E08, v28);
              v22[0] = MEMORY[0x277D85DD0];
              v22[1] = 3221225472;
              v22[2] = sub_22147CC24;
              v22[3] = &unk_278464DA8;
              v23 = v5;
              v24 = v27;
              v25 = v26;
              sub_2212DFEC0((v17 + 4), v22);
            }

            v11 += 8;
            --v10;
          }

          while (v10);
        }

        v6 = v21 + 1;
      }

      while (v21 + 1 != v19);
    }
  }

  return v5;
}

- (void)encodeToArchive:(void *)archive
{
  for (i = self->_cellRefsByGroupNodeByGroupBy.__table_.__first_node_.__next_; i; i = i->_lower)
  {
    v25 = i[1];
    if (!i[3]._upper)
    {
      continue;
    }

    v5 = *(archive + 4);
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = *(archive + 6);
    v7 = *v5;
    if (v6 < *v5)
    {
      *(archive + 6) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
      goto LABEL_10;
    }

    if (v7 == *(archive + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
      v5 = *(archive + 4);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy>(*(archive + 2));
    v9 = *(archive + 6);
    v10 = *(archive + 4) + 8 * v9;
    *(archive + 6) = v9 + 1;
    *(v10 + 8) = v8;
LABEL_10:
    *(v8 + 16) |= 1u;
    v11 = *(v8 + 48);
    if (!v11)
    {
      v12 = *(v8 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x223DA0360](v12);
      *(v8 + 48) = v11;
    }

    TSKUIDStruct::saveToMessage(&v25, v11);
    lower = i[3]._lower;
    if (lower)
    {
      while (1)
      {
        v24 = *(lower + 16);
        if (sub_2212E0238(lower + 32))
        {
          break;
        }

LABEL_32:
        lower = *lower;
        if (!lower)
        {
          goto LABEL_33;
        }
      }

      v14 = *(v8 + 40);
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *(v8 + 32);
      v16 = *v14;
      if (v15 < *v14)
      {
        *(v8 + 32) = v15 + 1;
        v17 = *&v14[2 * v15 + 2];
LABEL_23:
        *(v17 + 16) |= 1u;
        v20 = *(v17 + 24);
        if (!v20)
        {
          v21 = *(v17 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x223DA0360](v21);
          *(v17 + 24) = v20;
        }

        TSKUIDStruct::saveToMessage(&v24, v20);
        *(v17 + 16) |= 2u;
        v22 = *(v17 + 32);
        if (!v22)
        {
          v23 = *(v17 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v23);
          *(v17 + 32) = v22;
        }

        sub_2212E0690(lower + 32, v22);
        goto LABEL_32;
      }

      if (v16 == *(v8 + 36))
      {
LABEL_21:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 24));
        v14 = *(v8 + 40);
        v16 = *v14;
      }

      *v14 = v16 + 1;
      v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_CellRefsForGroupNode>(*(v8 + 24));
      v18 = *(v8 + 32);
      v19 = *(v8 + 40) + 8 * v18;
      *(v8 + 32) = v18 + 1;
      *(v19 + 8) = v17;
      goto LABEL_23;
    }

LABEL_33:
    ;
  }
}

- (void)upgradeGroupByUid:(const TSKUIDStruct *)uid toUid:(const TSKUIDStruct *)toUid
{
  v7 = sub_2210875C4(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, uid);
  if (v7)
  {
    v8 = v7;
    sub_22141E1BC(v15, (v7 + 4));
    sub_221087680(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, v8, v13);
    sub_22147D314(v13);
    v13[0] = &toUid->_lower;
    v9 = sub_22147D0A0(&self->_cellRefsByGroupNodeByGroupBy.__table_.__bucket_list_.__ptr_, toUid, &unk_2217E1E08, v13);
    if (v9 + 4 != v15)
    {
      *(v9 + 16) = v17;
      sub_22147D93C(v9 + 4, v16, 0);
    }

    for (i = self->_groupNodesByCellRef.__table_.__first_node_.__next_; i; i = *i)
    {
      sub_22147DB74(v13, (i + 4));
      for (j = v14; j; j = *j)
      {
        if (j[2] == uid->_lower && j[3] == uid->_upper)
        {
          memset(v12, 0, sizeof(v12));
          TSKMakeUIDStructCoord();
          sub_22147D86C(i + 4, j + 2);
          sub_22147DBEC(i + 4, v12, v12);
        }
      }

      sub_2210BDEC0(v13);
    }

    sub_22141E4F8(v15);
  }
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