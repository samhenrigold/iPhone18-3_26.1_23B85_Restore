@interface TSCEWholeOwnerDependencies
- (BOOL)addOwnerReference:(const TSCEInternalCellReference *)reference;
- (TSCEWholeOwnerDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d;
- (id).cxx_construct;
- (void)addPrecedentsOfCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set;
- (void)deleteOwnerReferencesFromCell:(TSUCellCoord)cell;
- (void)encodeToArchive:(void *)archive;
- (void)encodeToExpandedArchive:(void *)archive;
- (void)readFromArchive:(const void *)archive;
- (void)removeAllPrecedents;
- (void)unpackAfterUnarchive;
@end

@implementation TSCEWholeOwnerDependencies

- (TSCEWholeOwnerDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d
{
  v7.receiver = self;
  v7.super_class = TSCEWholeOwnerDependencies;
  result = [(TSCEWholeOwnerDependencies *)&v7 init];
  if (result)
  {
    result->_dependencyTracker = tracker;
    result->_internalOwnerID = d;
    result->_unarchivedRefSet = 0;
  }

  return result;
}

- (void)readFromArchive:(const void *)archive
{
  v3 = *(archive + 6);
  if (v3 >= 1)
  {
    v6 = 8;
    do
    {
      v34 = 0;
      v33 = 0;
      v33 = sub_2215C3954(*(*(archive + 4) + v6));
      v34 = v7;
      dependencyTracker = self->_dependencyTracker;
      if (dependencyTracker)
      {
        v11 = objc_msgSend_idMap(dependencyTracker, v7, v8, v9);
        v12 = v34;
        if (*(v11 + 144))
        {
          v12 = sub_2212602C8(v11, v34);
        }

        LOWORD(v34) = v12;
      }

      if ((sub_2212E0198(&self->_referencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v33) & 1) == 0)
      {
        sub_2212DFCE8(&self->_referencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v33);
        v15 = objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v13, v34, v14);
        if (v15 || (v17 = v34, objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v16, v34, 0, 0), objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v18, v17, v19), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v31 = v33;
          internalOwnerID = self->_internalOwnerID;
          sub_2213A09F0(v15 + 64, &v31);
        }

        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSCEWholeOwnerDependencies readFromArchive:]", v21);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWholeOwnerDependencies.mm", v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 68, 0, "NULL whole owner dependencies");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      }

      v6 += 8;
      --v3;
    }

    while (v3);
  }
}

- (void)encodeToArchive:(void *)archive
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2213A00D4;
  v3[3] = &unk_27845F588;
  v3[4] = archive;
  sub_2212DFEC0(&self->_referencesToThisTable, v3);
}

- (void)unpackAfterUnarchive
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_2213A0314;
  v7[4] = sub_2213A0324;
  v8 = 0;
  unarchivedRefSet = self->_unarchivedRefSet;
  if (unarchivedRefSet)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2213A032C;
    v6[3] = &unk_278463C98;
    v6[4] = self;
    v6[5] = v7;
    sub_2212DFEC0(unarchivedRefSet, v6);
    v4 = self->_unarchivedRefSet;
    if (v4)
    {
      v5 = sub_221122744(v4);
      MEMORY[0x223DA1450](v5, 0x10A0C408EF24B1CLL);
    }
  }

  self->_unarchivedRefSet = 0;
  _Block_object_dispose(v7, 8);
}

- (void)encodeToExpandedArchive:(void *)archive
{
  *(archive + 4) |= 1u;
  v4 = *(archive + 3);
  if (!v4)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v6);
    *(archive + 3) = v4;
  }

  sub_2212E0690(&self->_referencesToThisTable, v4);
}

- (BOOL)addOwnerReference:(const TSCEInternalCellReference *)reference
{
  sub_2212DFCE8(&self->_referencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &reference->coordinate);
  v7 = objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v5, reference->tableID, v6);
  if (v7 || (objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v8, reference->tableID, 0, 0), objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self->_dependencyTracker, v9, reference->tableID, v10), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    coordinate = reference->coordinate;
    internalOwnerID = self->_internalOwnerID;
    sub_2213A09F0(v7 + 64, &coordinate);
  }

  v14 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEWholeOwnerDependencies addOwnerReference:]", v12);
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWholeOwnerDependencies.mm", v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 145, 0, "NULL whole owner dependencies");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  return 1;
}

- (void)deleteOwnerReferencesFromCell:(TSUCellCoord)cell
{
  cellCopy = cell;
  internalOwnerID = self->_internalOwnerID;
  v19 = *&cell & 0xFFFFFFFFFFFFLL;
  v20 = internalOwnerID;
  v5 = sub_2213A0EB0(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_, &cellCopy);
  if (v5 == v6)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v5;
    v12 = v6;
    v10 = 0;
    v9 = 0;
    do
    {
      v13 = *(v11 + 12);
      if (!v10 || objc_msgSend_formulaOwnerId(v10, v6, v7, v8) != v13)
      {
        v14 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v6, v13, v8);

        v18 = objc_msgSend_wholeOwnerDependencies(v14, v15, v16, v17);

        v9 = v18;
        v10 = v14;
      }

      if (v9)
      {
        sub_2212DFDD0(v9 + 3, &v19);
      }

      v11 = *v11;
    }

    while (v11 != v12);
  }

  sub_2213A0FCC(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_, &cellCopy);
}

- (void)removeAllPrecedents
{
  next = self->_referencesFromThisTable.__table_.__first_node_.__next_;
  if (next)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(next + 12);
      internalOwnerID = self->_internalOwnerID;
      v15 = next[2] & 0xFFFFFFFFFFFFLL;
      LODWORD(v16) = internalOwnerID;
      if (!v6 || objc_msgSend_formulaOwnerId(v6, a2, v2, v3, v15, v16) != v8)
      {
        v10 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, a2, v8, v3, v15, v16);

        v14 = objc_msgSend_wholeOwnerDependencies(v10, v11, v12, v13);

        v7 = v14;
        v6 = v10;
      }

      if (v7)
      {
        sub_2212DFDD0(v7 + 3, &v15);
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_2210BE918(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_);
}

- (void)addPrecedentsOfCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set
{
  v6 = sub_2213A0EB0(&self->_referencesFromThisTable.__table_.__bucket_list_.__ptr_, coord);
  if (v6 != v7)
  {
    v9 = v6;
    v10 = v7;
    do
    {
      v12._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, v7, *(v9 + 12), v8, 0, 0);
      v12._upper = v11;
      TSCEReferenceSet::insertWholeOwnerRef(set, &v12);
      v9 = *v9;
    }

    while (v9 != v10);
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end