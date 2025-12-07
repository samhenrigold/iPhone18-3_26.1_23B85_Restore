@interface TSCEFormulaRewriteInfo_RowColumnInfo
- (BOOL)indexIsAffected:(unsigned int)affected;
- (BOOL)isForTable:(const TSKUIDStruct *)table;
- (NSIndexSet)rowOrColumnIndices;
- (TSCECellRef)originalCellRefForRewriteType:(SEL)type updatedCellRef:(unsigned int)ref;
- (TSCECellRef)updatedCellRefForRewriteType:(SEL)type originalCellRef:(unsigned int)ref;
- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithFormulaOwnerUID:(const TSKUIDStruct *)d uuids:(const void *)uuids areRows:(BOOL)rows;
- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithTableUID:(const TSKUIDStruct *)d condStyleOwnerUID:(const TSKUIDStruct *)iD groupByUID:(const TSKUIDStruct *)uID uuids:(const void *)uuids atIndexes:(const void *)indexes areRows:(BOOL)rows;
- (TSCERangeCoordinate)affectedRangeForInsertRows;
- (TSCERangeCoordinate)affectedRangeForMoveRows;
- (TSCERangeCoordinate)affectedRangeForRemoveRows;
- (TSCERangeCoordinate)tableRange;
- (TSKUIDStruct)insertAtUid;
- (TSKUIDStruct)insertOppositeUid;
- (TSKUIDStruct)uuidForIndex:(unsigned int)index;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUuidsForRange:(SEL)range inTable:(_NSRange)table areRows:(id)rows shuffleMap:(BOOL)map;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsForIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsInRange:(SEL)range;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)message;
- (unsigned)columnIndexForUuid:(const TSKUIDStruct *)uuid;
- (unsigned)offsetForRowIndex:(unsigned int)index;
- (unsigned)offsetForUpdatedRowIndex:(unsigned int)index isRemoveRows:(BOOL)rows;
- (unsigned)rowIndexForUuid:(const TSKUIDStruct *)uuid;
- (vector<TSCERangeCoordinate,)coordRangesForInsertRemove;
- (void)createAuxRowColumnInfoForMove;
- (void)loadIndexesForTable:(id)table uidResolver:(id)resolver forRemoveRows:(BOOL)rows shuffleMap:(id)map;
- (void)saveToMessage:(void *)message;
- (void)setInsertAtUid:(TSKUIDStruct)uid;
- (void)setInsertOppositeUid:(TSKUIDStruct)uid;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewriteInfo_RowColumnInfo

- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithFormulaOwnerUID:(const TSKUIDStruct *)d uuids:(const void *)uuids areRows:(BOOL)rows
{
  v16.receiver = self;
  v16.super_class = TSCEFormulaRewriteInfo_RowColumnInfo;
  v8 = [(TSCEFormulaRewriteInfo_RowColumnInfo *)&v16 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 8) = *d;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    v10 = [TSCEFormulaRewrite_Uids alloc];
    v13 = objc_msgSend_initWithUids_(v10, v11, uuids, v12);
    v14 = *(v9 + 7);
    *(v9 + 7) = v13;

    if (v9 + 64 != uuids)
    {
      sub_2210BD068(v9 + 8, *uuids, *(uuids + 1), (*(uuids + 1) - *uuids) >> 4);
    }

    v9[88] = rows;
  }

  return v9;
}

- (TSCEFormulaRewriteInfo_RowColumnInfo)initWithTableUID:(const TSKUIDStruct *)d condStyleOwnerUID:(const TSKUIDStruct *)iD groupByUID:(const TSKUIDStruct *)uID uuids:(const void *)uuids atIndexes:(const void *)indexes areRows:(BOOL)rows
{
  v38.receiver = self;
  v38.super_class = TSCEFormulaRewriteInfo_RowColumnInfo;
  v14 = [(TSCEFormulaRewriteInfo_RowColumnInfo *)&v38 init];
  v15 = v14;
  if (v14)
  {
    v14->_tableUID = *d;
    v14->_conditionalStyleOwnerUID = *iD;
    v14->_groupByUID = *uID;
    v16 = [TSCEFormulaRewrite_Uids alloc];
    v18 = objc_msgSend_initWithUids_atIndexes_(v16, v17, uuids, indexes);
    rowOrColumnUids = v15->_rowOrColumnUids;
    v15->_rowOrColumnUids = v18;

    if (&v15->_rowOrColumnUuids != uuids)
    {
      sub_2210BD068(&v15->_rowOrColumnUuids, *uuids, *(uuids + 1), (*(uuids + 1) - *uuids) >> 4);
    }

    v15->_isRows = rows;
    v20 = objc_opt_new();
    objc_storeStrong(&v15->_rangeEntries, v20);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 0;
    v24 = objc_msgSend_indexes(v15->_rowOrColumnUids, v21, v22, v23);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2212C8868;
    v29[3] = &unk_278462A58;
    v30 = v15;
    v32 = v36;
    v33 = v34;
    v25 = v20;
    v31 = v25;
    objc_msgSend_enumerateRangesUsingBlock_(v24, v26, v29, v27);

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);
  }

  return v15;
}

- (BOOL)isForTable:(const TSKUIDStruct *)table
{
  lower = table->_lower;
  if (table->_lower == self->_tableUID._lower && table->_upper == self->_tableUID._upper || lower == self->_conditionalStyleOwnerUID._lower && table->_upper == self->_conditionalStyleOwnerUID._upper)
  {
    return 1;
  }

  if (lower == self->_groupByUID._lower)
  {
    return table->_upper == self->_groupByUID._upper;
  }

  return 0;
}

- (id)initFromMessage:(const void *)message
{
  v38.receiver = self;
  v38.super_class = TSCEFormulaRewriteInfo_RowColumnInfo;
  v5 = [(TSCEFormulaRewriteInfo_RowColumnInfo *)&v38 init];
  if (v5)
  {
    v6 = MEMORY[0x277D809E0];
    if (*(message + 6))
    {
      v7 = *(message + 6);
    }

    else
    {
      v7 = MEMORY[0x277D809E0];
    }

    *(v5 + 1) = TSKUIDStruct::loadFromMessage(v7, v4);
    *(v5 + 2) = v8;
    if (*(message + 7))
    {
      v9 = *(message + 7);
    }

    else
    {
      v9 = v6;
    }

    *(v5 + 3) = TSKUIDStruct::loadFromMessage(v9, v8);
    *(v5 + 4) = v10;
    if (*(message + 8))
    {
      v11 = *(message + 8);
    }

    else
    {
      v11 = v6;
    }

    *(v5 + 5) = TSKUIDStruct::loadFromMessage(v11, v10);
    *(v5 + 6) = v12;
    v5[88] = *(message + 104);
    v13 = [TSCEFormulaRewrite_Uids alloc];
    if (*(message + 9))
    {
      v16 = objc_msgSend_initFromMessage_(v13, v14, *(message + 9), v15);
    }

    else
    {
      v16 = objc_msgSend_initFromMessage_(v13, v14, &TSCE::_IndexedUidsArchive_default_instance_, v15);
    }

    v17 = *(v5 + 7);
    *(v5 + 7) = v16;

    v23 = objc_msgSend_uids(*(v5 + 7), v18, v19, v20);
    if (v5 + 64 != v23)
    {
      sub_2210BD068(v5 + 8, *v23, v23[1], (v23[1] - *v23) >> 4);
    }

    v24 = *(message + 8);
    v25 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v21, v24, v22);
    if (v24 >= 1)
    {
      v26 = 8;
      do
      {
        v27 = [TSCEFormulaRewriteInfo_RangeEntry alloc];
        v30 = objc_msgSend_initFromMessage_(v27, v28, *(*(message + 5) + v26), v29);
        objc_msgSend_addObject_(v25, v31, v30, v32);

        v26 += 8;
        --v24;
      }

      while (v24);
    }

    objc_storeStrong(v5 + 12, v25);
    if (*(message + 10))
    {
      v33 = *(message + 10);
    }

    else
    {
      v33 = &TSCE::_RangeCoordinateArchive_default_instance_;
    }

    *(v5 + 13) = sub_22126987C(v33);
    *(v5 + 14) = v34;
    v35 = *(message + 4);
    if ((v35 & 0x20) != 0)
    {
      *(v5 + 17) = TSKUIDStruct::loadFromMessage(*(message + 11), v34);
      *(v5 + 18) = v34;
      v35 = *(message + 4);
    }

    if ((v35 & 0x40) != 0)
    {
      *(v5 + 19) = TSKUIDStruct::loadFromMessage(*(message + 12), v34);
      *(v5 + 20) = v36;
    }
  }

  return v5;
}

- (void)saveToMessage:(void *)message
{
  v54 = *MEMORY[0x277D85DE8];
  *(message + 4) |= 1u;
  v5 = *(message + 6);
  if (!v5)
  {
    v6 = *(message + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(message + 6) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_tableUID, v5);
  *(message + 4) |= 2u;
  v7 = *(message + 7);
  if (!v7)
  {
    v8 = *(message + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0360](v8);
    *(message + 7) = v7;
  }

  TSKUIDStruct::saveToMessage(&self->_conditionalStyleOwnerUID, v7);
  *(message + 4) |= 4u;
  v9 = *(message + 8);
  if (!v9)
  {
    v10 = *(message + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0360](v10);
    *(message + 8) = v9;
  }

  TSKUIDStruct::saveToMessage(&self->_groupByUID, v9);
  isRows = self->_isRows;
  v14 = *(message + 4) | 0x80;
  *(message + 4) = v14;
  *(message + 104) = isRows;
  rowOrColumnUids = self->_rowOrColumnUids;
  if (!rowOrColumnUids)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEFormulaRewriteInfo_RowColumnInfo saveToMessage:]", v12);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 542, 0, "Cannot archive until we have called loadIndexesForTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    rowOrColumnUids = self->_rowOrColumnUids;
    v14 = *(message + 4);
  }

  *(message + 4) = v14 | 8;
  v25 = *(message + 9);
  if (!v25)
  {
    v26 = *(message + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v26);
    *(message + 9) = v25;
  }

  objc_msgSend_saveToMessage_(rowOrColumnUids, v11, v25, v12);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = self->_rangeEntries;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v49, v53, 16);
  if (v31)
  {
    v32 = *v50;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = *(*(&v49 + 1) + 8 * i);
        v35 = *(message + 5);
        if (!v35)
        {
          goto LABEL_29;
        }

        v36 = *(message + 8);
        v37 = *v35;
        if (v36 < *v35)
        {
          *(message + 8) = v36 + 1;
          objc_msgSend_saveToMessage_(v34, v29, *&v35[2 * v36 + 2], v30, v49);
          continue;
        }

        if (v37 == *(message + 9))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 24));
          v35 = *(message + 5);
          v37 = *v35;
        }

        *v35 = v37 + 1;
        v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteRangeEntryArchive>(*(message + 3));
        v39 = *(message + 8);
        v40 = *(message + 5) + 8 * v39;
        *(message + 8) = v39 + 1;
        *(v40 + 8) = v38;
        objc_msgSend_saveToMessage_(v34, v41, v38, v42, v49);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v49, v53, 16);
    }

    while (v31);
  }

  *(message + 4) |= 0x10u;
  v43 = *(message + 10);
  if (!v43)
  {
    v44 = *(message + 1);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v44);
    *(message + 10) = v43;
  }

  sub_221269844(&self->_tableRange, v43);
  if (self->_insertAtUid._lower || self->_insertAtUid._upper)
  {
    *(message + 4) |= 0x20u;
    v45 = *(message + 11);
    if (!v45)
    {
      v46 = *(message + 1);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x223DA0360](v46);
      *(message + 11) = v45;
    }

    TSKUIDStruct::saveToMessage(&self->_insertAtUid, v45);
  }

  if (self->_insertOppositeUid._lower || self->_insertOppositeUid._upper)
  {
    *(message + 4) |= 0x40u;
    v47 = *(message + 12);
    if (!v47)
    {
      v48 = *(message + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = MEMORY[0x223DA0360](v48);
      *(message + 12) = v47;
    }

    TSKUIDStruct::saveToMessage(&self->_insertOppositeUid, v47);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUuidsForRange:(SEL)range inTable:(_NSRange)table areRows:(id)rows shuffleMap:(BOOL)map
{
  mapCopy = map;
  length = table.length;
  location = table.location;
  rowsCopy = rows;
  v15 = a7;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  if (!v15)
  {
    if (mapCopy)
    {
      if (rowsCopy)
      {
        objc_msgSend_rowUIDsForRowRange_(rowsCopy, v13, location, length);
LABEL_15:
        v25 = v28;
        *&retstr->__begin_ = v27;
        retstr->__cap_ = v25;
        goto LABEL_16;
      }
    }

    else if (rowsCopy)
    {
      objc_msgSend_columnUIDsForColumnRange_(rowsCopy, v13, location, length);
      goto LABEL_15;
    }

    v27 = 0uLL;
    v28 = 0;
    goto LABEL_15;
  }

  v16 = location + length;
  if (mapCopy)
  {
    if (location < v16)
    {
      do
      {
        v17 = objc_msgSend_reverseMapIndex_(v15, v13, location, v14);
        *&v27 = objc_msgSend_rowUIDForRowIndex_(rowsCopy, v18, v17, v19, 0, 0);
        *(&v27 + 1) = v20;
        sub_221083454(retstr, &v27);
        location = (location + 1);
        LODWORD(length) = length - 1;
      }

      while (length);
    }
  }

  else if (location < v16)
  {
    do
    {
      v21 = objc_msgSend_reverseMapIndex_(v15, v13, location, v14);
      *&v27 = objc_msgSend_columnUIDForColumnIndex_(rowsCopy, v22, v21, v23, 0, 0);
      *(&v27 + 1) = v24;
      sub_221083454(retstr, &v27);
      location = (location + 1);
      LODWORD(length) = length - 1;
    }

    while (length);
  }

LABEL_16:

  return result;
}

- (void)loadIndexesForTable:(id)table uidResolver:(id)resolver forRemoveRows:(BOOL)rows shuffleMap:(id)map
{
  tableCopy = table;
  resolverCopy = resolver;
  mapCopy = map;
  objc_msgSend_unloadIndexes(self, v12, v13, v14);
  self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v15, v16, v17);
  self->_conditionalStyleOwnerUID._upper = v18;
  self->_groupByUID._lower = objc_msgSend_groupByUID(tableCopy, v18, v19, v20);
  self->_groupByUID._upper = v21;
  objc_msgSend_loadIndexesForTable_isRows_shuffleMap_(self->_rowOrColumnUids, v21, resolverCopy, self->_isRows, mapCopy);
  self->_tableRange._topLeft = objc_msgSend_tableRangeCoordinate(resolverCopy, v22, v23, v24);
  self->_tableRange._bottomRight = v25;
  v26 = objc_opt_new();
  objc_storeStrong(&self->_rangeEntries, v26);
  v27 = objc_opt_new();
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2020000000;
  v51 = 0;
  v31 = objc_msgSend_indexes(self->_rowOrColumnUids, v28, v29, v30);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2212C94A4;
  v42[3] = &unk_278462A80;
  v42[4] = self;
  v32 = resolverCopy;
  v43 = v32;
  v33 = mapCopy;
  v44 = v33;
  v47 = v52;
  v48 = v50;
  rowsCopy = rows;
  v34 = v26;
  v45 = v34;
  v35 = v27;
  v46 = v35;
  objc_msgSend_enumerateRangesUsingBlock_(v31, v36, v42, v37);

  v39 = objc_msgSend_UIDSetForIndexes_isRows_(v32, v38, v35, self->_isRows);
  expandedRowColumnUuids = self->_expandedRowColumnUuids;
  self->_expandedRowColumnUuids = v39;

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v52, 8);
}

- (void)setInsertAtUid:(TSKUIDStruct)uid
{
  self->_insertAtUid = uid;
  auxRowColumnInfo = self->_auxRowColumnInfo;
  if (auxRowColumnInfo)
  {
    MEMORY[0x2821F9670](auxRowColumnInfo, sel_setInsertAtUid_, uid._lower, uid._upper);
  }
}

- (void)setInsertOppositeUid:(TSKUIDStruct)uid
{
  self->_insertOppositeUid = uid;
  auxRowColumnInfo = self->_auxRowColumnInfo;
  if (auxRowColumnInfo)
  {
    MEMORY[0x2821F9670](auxRowColumnInfo, sel_setInsertOppositeUid_, uid._lower, uid._upper);
  }
}

- (void)createAuxRowColumnInfoForMove
{
  v3 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_tableUID(self, v4, v5, v6);
  v11 = objc_msgSend_rowOrColumnUuids(self, v8, v9, v10);
  isRows = objc_msgSend_isRows(self, v12, v13, v14);
  v17 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v3, v16, v7, v11, isRows);
  auxRowColumnInfo = self->_auxRowColumnInfo;
  self->_auxRowColumnInfo = v17;

  self->_auxRowColumnInfo->_conditionalStyleOwnerUID = *objc_msgSend_conditionalStyleOwnerUID(self, v19, v20, v21);
  self->_auxRowColumnInfo->_groupByUID = *objc_msgSend_groupByUID(self, v22, v23, v24);
  v28 = objc_msgSend_insertAtUid(self, v25, v26, v27);
  v29 = self->_auxRowColumnInfo;
  v29->_insertAtUid._lower = v28;
  v29->_insertAtUid._upper = v30;
  inserted = objc_msgSend_insertOppositeUid(self, v30, v31, v32);
  v34 = self->_auxRowColumnInfo;
  v34->_insertOppositeUid._lower = inserted;
  v34->_insertOppositeUid._upper = v35;
}

- (void)unloadIndexes
{
  rangeEntries = self->_rangeEntries;
  self->_rangeEntries = 0;

  auxRowColumnInfo = self->_auxRowColumnInfo;
  self->_auxRowColumnInfo = 0;

  expandedRowColumnUuids = self->_expandedRowColumnUuids;
  self->_expandedRowColumnUuids = 0;
}

- (unsigned)offsetForRowIndex:(unsigned int)index
{
  v39 = *MEMORY[0x277D85DE8];
  rangeEntries = self->_rangeEntries;
  if (!rangeEntries)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo offsetForRowIndex:]", v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v11);
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v12, 670, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v13, v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    rangeEntries = self->_rangeEntries;
  }

  if (objc_msgSend_count(rangeEntries, a2, *&index, v3) >= 0xA && *MEMORY[0x277D81408] != -1)
  {
    sub_2216F76B0();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = self->_rangeEntries;
  v21 = 0;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v38, 16);
  if (v25)
  {
    v26 = *v35;
    indexCopy = index;
LABEL_8:
    v28 = 0;
    while (1)
    {
      if (*v35 != v26)
      {
        objc_enumerationMutation(v19);
      }

      v29 = *(*(&v34 + 1) + 8 * v28);
      if (objc_msgSend_range(v29, v22, v23, v24) > indexCopy)
      {
        break;
      }

      v21 = objc_msgSend_offset(v29, v30, v31, v32);
      if (v25 == ++v28)
      {
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v34, v38, 16);
        if (v25)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  return v21;
}

- (unsigned)offsetForUpdatedRowIndex:(unsigned int)index isRemoveRows:(BOOL)rows
{
  rowsCopy = rows;
  v69 = *MEMORY[0x277D85DE8];
  rangeEntries = self->_rangeEntries;
  if (!rangeEntries)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo offsetForUpdatedRowIndex:isRemoveRows:]", rows);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v12);
    v14 = NSStringFromSelector(a2);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v13, 692, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v14, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    rangeEntries = self->_rangeEntries;
  }

  if (objc_msgSend_count(rangeEntries, a2, *&index, rows) >= 0xA && *MEMORY[0x277D81408] != -1)
  {
    sub_2216F76C4();
  }

  if (rowsCopy)
  {
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v20 = self->_rangeEntries;
    v22 = 0;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v63, v68, 16);
    if (v26)
    {
      v27 = *v64;
LABEL_9:
      v28 = 0;
      while (1)
      {
        if (*v64 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v63 + 1) + 8 * v28);
        if (objc_msgSend_range(v29, v23, v24, v25) > (v22 + index))
        {
          break;
        }

        v22 = objc_msgSend_offset(v29, v30, v31, v32);
        if (v26 == ++v28)
        {
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v63, v68, 16);
          if (v26)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    if (objc_msgSend_offsetForRowIndex_(self, v33, v22 + index, v34) != v22)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSCEFormulaRewriteInfo_RowColumnInfo offsetForUpdatedRowIndex:isRemoveRows:]", v36);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 712, 0, "This should be the same offset, then, right");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
    }
  }

  else
  {
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v46 = self->_rangeEntries;
    v22 = 0;
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v59, v67, 16);
    if (v51)
    {
      v52 = *v60;
LABEL_19:
      v53 = 0;
      while (1)
      {
        if (*v60 != v52)
        {
          objc_enumerationMutation(v46);
        }

        v54 = *(*(&v59 + 1) + 8 * v53);
        if (objc_msgSend_range(v54, v48, v49, v50) > (index - v22))
        {
          break;
        }

        v22 = objc_msgSend_offset(v54, v55, v56, v57);
        if (v51 == ++v53)
        {
          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v59, v67, 16);
          if (v51)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }
  }

  return v22;
}

- (TSCECellRef)updatedCellRefForRewriteType:(SEL)type originalCellRef:(unsigned int)ref
{
  selfCopy = self;
  *retstr = *a5;
  if (!*&self[4].coordinate)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v13);
    v15 = NSStringFromSelector(type);
    v16 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 730, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v15, v16);

    self = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (ref <= 0x11)
  {
    if (((1 << ref) & 0x20380) != 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 776, 0, "Should not see this call, its more complex than that");
      goto LABEL_21;
    }

    if (((1 << ref) & 0x1030) != 0)
    {
      v27 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v30, v22, v25, 769, 0, "Should not see this call, we should get either the insert or remove rewrite types");
      goto LABEL_21;
    }

    if (((1 << ref) & 0x12400) != 0)
    {
      return self;
    }
  }

  if (ref != 2)
  {
    if (ref == 3)
    {
      tableUID = a5->_tableUID;
      self = objc_msgSend_isForTable_(selfCopy, type, &tableUID, a5);
      if (self)
      {
        isRows = objc_msgSend_isRows(selfCopy, v31, v32, v33);
        coordinate = a5->coordinate;
        if (isRows)
        {
          self = objc_msgSend_offsetForRowIndex_(selfCopy, v35, coordinate, v36);
          v38 = retstr->coordinate.row + self;
LABEL_19:
          retstr->coordinate.row = v38;
          return self;
        }

        self = objc_msgSend_offsetForRowIndex_(selfCopy, v35, WORD2(coordinate), v36);
        v65 = retstr->coordinate.column + self;
LABEL_28:
        retstr->coordinate.column = v65;
        return self;
      }

      return self;
    }

    v54 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo updatedCellRefForRewriteType:originalCellRef:]", a5);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v57, v22, v25, 734, 0, "Not implemented for this rewrite type");
LABEL_21:

    v61 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v61, v58, v59, v60);
  }

  tableUID = a5->_tableUID;
  self = objc_msgSend_isForTable_(selfCopy, type, &tableUID, a5);
  if (self)
  {
    v42 = objc_msgSend_isRows(selfCopy, v39, v40, v41);
    v46 = objc_msgSend_rowOrColumnUids(selfCopy, v43, v44, v45);
    v49 = v46;
    v50 = retstr->coordinate;
    if (v42)
    {
      v51 = objc_msgSend_containsIndex_(v46, v47, *&retstr->coordinate, v48);

      if (!v51)
      {
        self = objc_msgSend_offsetForRowIndex_(selfCopy, v52, a5->coordinate.row, v53);
        v38 = v50.row - self;
        goto LABEL_19;
      }
    }

    else
    {
      v62 = objc_msgSend_containsIndex_(v46, v47, v50.column, v48);

      if (!v62)
      {
        self = objc_msgSend_offsetForRowIndex_(selfCopy, v63, a5->coordinate.column, v64);
        v65 = v50.column - self;
        goto LABEL_28;
      }
    }

    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
    retstr->coordinate = 0x7FFF7FFFFFFFLL;
  }

  return self;
}

- (TSCECellRef)originalCellRefForRewriteType:(SEL)type updatedCellRef:(unsigned int)ref
{
  selfCopy = self;
  *retstr = *a5;
  if (!*&self[4].coordinate)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v13);
    v15 = NSStringFromSelector(type);
    v16 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 792, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v15, v16);

    self = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (ref <= 0x11)
  {
    if (((1 << ref) & 0x20380) != 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 841, 0, "Should not see this call, its more complex than that");
      goto LABEL_21;
    }

    if (((1 << ref) & 0x1030) != 0)
    {
      v27 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v30, v22, v25, 834, 0, "Should not see this call, we should get either the insert or remove rewrite types");
      goto LABEL_21;
    }

    if (((1 << ref) & 0x12400) != 0)
    {
      return self;
    }
  }

  if (ref != 2)
  {
    if (ref == 3)
    {
      tableUID = a5->_tableUID;
      self = objc_msgSend_isForTable_(selfCopy, type, &tableUID, a5);
      if (self)
      {
        isRows = objc_msgSend_isRows(selfCopy, v31, v32, v33);
        v38 = objc_msgSend_rowOrColumnUids(selfCopy, v35, v36, v37);
        v41 = v38;
        coordinate = a5->coordinate;
        if (isRows)
        {
          v43 = objc_msgSend_containsIndex_(v38, v39, coordinate, v40);

          if (!v43)
          {
            self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(selfCopy, v44, a5->coordinate.row, 0);
            v45 = retstr->coordinate.row - self;
LABEL_19:
            retstr->coordinate.row = v45;
            return self;
          }

LABEL_26:
          retstr->_tableUID._lower = 0;
          retstr->_tableUID._upper = 0;
          retstr->coordinate = 0x7FFF7FFFFFFFLL;
          return self;
        }

        v61 = objc_msgSend_containsIndex_(v38, v39, WORD2(coordinate), v40);

        if (v61)
        {
          goto LABEL_26;
        }

        self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(selfCopy, v62, a5->coordinate.column, 0);
        v60 = retstr->coordinate.column - self;
LABEL_28:
        retstr->coordinate.column = v60;
        return self;
      }

      return self;
    }

    v52 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], type, "[TSCEFormulaRewriteInfo_RowColumnInfo originalCellRefForRewriteType:updatedCellRef:]", a5);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v55, v22, v25, 796, 0, "Not implemented for this rewrite type");
LABEL_21:

    v59 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v59, v56, v57, v58);
  }

  tableUID = a5->_tableUID;
  self = objc_msgSend_isForTable_(selfCopy, type, &tableUID, a5);
  if (self)
  {
    v49 = objc_msgSend_isRows(selfCopy, v46, v47, v48);
    v51 = a5->coordinate;
    if (v49)
    {
      self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(selfCopy, v50, v51, 1);
      v45 = retstr->coordinate.row + self;
      goto LABEL_19;
    }

    self = objc_msgSend_offsetForUpdatedRowIndex_isRemoveRows_(selfCopy, v50, WORD2(v51), 1);
    v60 = retstr->coordinate.column + self;
    goto LABEL_28;
  }

  return self;
}

- (BOOL)indexIsAffected:(unsigned int)affected
{
  v4 = *&affected;
  if (!self->_rangeEntries)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo indexIsAffected:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v10);
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v11, 855, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v12, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_containsIndex_(rowOrColumnUids, a2, v4, v3);
}

- (TSKUIDStruct)uuidForIndex:(unsigned int)index
{
  v4 = *&index;
  if (!self->_rangeEntries)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo uuidForIndex:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v10);
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v11, 860, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v12, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  v19 = objc_msgSend_uidForIndex_(rowOrColumnUids, a2, v4, v3);
  result._upper = v20;
  result._lower = v19;
  return result;
}

- (unsigned)columnIndexForUuid:(const TSKUIDStruct *)uuid
{
  if (!self->_rangeEntries)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo columnIndexForUuid:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v10);
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v11, 865, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v12, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_columnIndexForUid_(rowOrColumnUids, a2, uuid, v3);
}

- (unsigned)rowIndexForUuid:(const TSKUIDStruct *)uuid
{
  if (!self->_rangeEntries)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo rowIndexForUuid:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v10);
    v12 = NSStringFromSelector(a2);
    v13 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v11, 870, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v12, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_rowIndexForUid_(rowOrColumnUids, a2, uuid, v3);
}

- (NSIndexSet)rowOrColumnIndices
{
  if (!self->_rangeEntries)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo rowOrColumnIndices]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v9);
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v10, 875, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v11, v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  rowOrColumnUids = self->_rowOrColumnUids;

  return objc_msgSend_indexes(rowOrColumnUids, a2, v2, v3);
}

- (TSCERangeCoordinate)tableRange
{
  if (!self->_rangeEntries)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo tableRange]", v2);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v8);
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v9, 880, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v10, v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  topLeft = self->_tableRange._topLeft;
  bottomRight = self->_tableRange._bottomRight;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (TSCERangeCoordinate)affectedRangeForRemoveRows
{
  if (!self->_rangeEntries)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteInfo_RowColumnInfo affectedRangeForRemoveRows]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v9);
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v10, 885, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v11, v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  topLeft = self->_tableRange._topLeft;
  bottomRight = self->_tableRange._bottomRight;
  v19 = objc_msgSend_indexes(self->_rowOrColumnUids, a2, v2, v3);
  v26 = HIDWORD(*&topLeft);
  if (!objc_msgSend_count(v19, v20, v21, v22))
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_isRows(self, v23, v24, v25))
  {
    LOWORD(v26) = objc_msgSend_firstIndex(v19, v27, v28, v29);
LABEL_7:
    row = topLeft.row;
    goto LABEL_8;
  }

  row = objc_msgSend_firstIndex(v19, v27, v28, v29);
LABEL_8:

  v31 = *&topLeft & 0xFFFF000000000000 | row | (v26 << 32);
  v32 = bottomRight;
  result._bottomRight = v32;
  result._topLeft = v31;
  return result;
}

- (TSCERangeCoordinate)affectedRangeForInsertRows
{
  if (self->_useWholeTableForInsertionDependencies)
  {
    topLeft = self->_tableRange._topLeft;
    bottomRight = self->_tableRange._bottomRight;
  }

  else
  {
    topLeft = objc_msgSend_affectedRangeForRemoveRows(self, a2, v2, v3);
  }

  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

- (TSCERangeCoordinate)affectedRangeForMoveRows
{
  topLeft = self->_tableRange._topLeft;
  bottomRight = self->_tableRange._bottomRight;
  v11 = objc_msgSend_auxRowColumnInfo(self, a2, v2, v3);
  if (!self->_rangeEntries)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEFormulaRewriteInfo_RowColumnInfo affectedRangeForMoveRows]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v15);
    v17 = NSStringFromSelector(a2);
    v18 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v13, v16, 918, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v17, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = HIDWORD(*&topLeft);
  if (v11)
  {
    v24 = objc_msgSend_indexes(self->_rowOrColumnUids, v8, v9, v10);
    Index = objc_msgSend_firstIndex(v24, v25, v26, v27);
    v32 = objc_msgSend_rowOrColumnUids(v11, v29, v30, v31);
    v36 = objc_msgSend_indexes(v32, v33, v34, v35);
    v40 = objc_msgSend_firstIndex(v36, v37, v38, v39);
    if (v40 >= Index)
    {
      v41 = Index;
    }

    else
    {
      v41 = v40;
    }

    v45 = objc_msgSend_indexes(self->_rowOrColumnUids, v42, v43, v44);
    v49 = objc_msgSend_lastIndex(v45, v46, v47, v48);
    v53 = objc_msgSend_rowOrColumnUids(v11, v50, v51, v52);
    v57 = objc_msgSend_indexes(v53, v54, v55, v56);
    v61 = objc_msgSend_lastIndex(v57, v58, v59, v60);
    if (v49 <= v61)
    {
      LODWORD(v49) = v61;
    }

    if (objc_msgSend_isRows(self, v62, v63, v64))
    {
      bottomRight = bottomRight & 0xFFFFFFFF00000000 | v49;
      row = v41;
    }

    else
    {
      bottomRight = bottomRight & 0xFFFF0000FFFFFFFFLL | (v49 << 32);
      row = topLeft.row;
      LOWORD(v23) = v41;
    }
  }

  else
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEFormulaRewriteInfo_RowColumnInfo affectedRangeForMoveRows]", v10);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v71, v67, v70, 920, 0, "invalid nil value for '%{public}s'", "insertInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74);
    row = topLeft.row;
  }

  v75 = *&topLeft & 0xFFFF000000000000 | row | (v23 << 32);
  v76 = bottomRight;
  result._bottomRight = v76;
  result._topLeft = v75;
  return result;
}

- (vector<TSCERangeCoordinate,)coordRangesForInsertRemove
{
  v7 = objc_msgSend_rowOrColumnIndices(self, a3, v3, v4);
  v19 = 0;
  v20 = &v19;
  v21 = 0x4812000000;
  v22 = sub_2212CB1FC;
  v23 = sub_2212CB220;
  v24 = &unk_22188E88F;
  v26 = 0;
  v27 = 0;
  __p = 0;
  if (objc_msgSend_isRows(self, v8, v9, v10))
  {
    v13 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v14 = sub_2212CB238;
  }

  else
  {
    v13 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v14 = sub_2212CB2A8;
  }

  v13[2] = v14;
  v13[3] = &unk_278462AA8;
  v13[4] = &v19;
  objc_msgSend_enumerateRangesUsingBlock_(v7, v11, v13, v12);
  v15 = v20;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2212CBCA0(retstr, v15[6], v15[7], (v15[7] - v15[6]) >> 4);
  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsInRange:(SEL)range
{
  range2 = a4.length;
  location = a4.location;
  v51 = *MEMORY[0x277D85DE8];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  rangeEntries = self->_rangeEntries;
  if (!rangeEntries)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], range, "[TSCEFormulaRewriteInfo_RowColumnInfo uuidsInRange:]", a4.length);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v12);
    v14 = NSStringFromSelector(range);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v13, 969, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v14, v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    rangeEntries = self->_rangeEntries;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = rangeEntries;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v46, v50, 16);
  if (v24)
  {
    v25 = 0;
    v44 = *v47;
LABEL_5:
    v26 = 0;
    while (1)
    {
      if (*v47 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v46 + 1) + 8 * v26);
      v52.location = objc_msgSend_range(v27, v21, v22, v23);
      v54.location = location;
      v54.length = range2;
      v31 = NSIntersectionRange(v52, v54);
      length = v31.length;
      if (v31.length)
      {
        v53.location = objc_msgSend_range(v27, v31.length, v29, v30);
        v55.location = location;
        v55.length = range2;
        v32 = NSIntersectionRange(v53, v55);
        v33 = v32.length;
        v36 = v25;
        if (v32.location != objc_msgSend_range(v27, v32.length, v34, v35))
        {
          v36 = v32.location + v25 - objc_msgSend_range(v27, length, v29, v30);
        }

        if (v36 < v36 + v32.length)
        {
          v37 = v36;
          do
          {
            begin = self->_rowOrColumnUuids.__begin_;
            if (v36 >= self->_rowOrColumnUuids.__end_ - begin)
            {
              sub_2211E631C();
            }

            sub_221083454(retstr, &begin[v37]._lower);
            ++v36;
            ++v37;
            --v33;
          }

          while (v33);
        }
      }

      if (objc_msgSend_range(v27, length, v29, v30) > location + range2)
      {
        break;
      }

      objc_msgSend_range(v27, v39, v40, v41);
      v25 += v21;
      if (++v26 == v24)
      {
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v46, v50, 16);
        if (v24)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uuidsForIndexes:(SEL)indexes
{
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = sub_2212C7E00;
  v28 = sub_2212C7E24;
  *__p = 0u;
  v30 = 0u;
  if (!self->_rangeEntries)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaRewriteInfo_RowColumnInfo uuidsForIndexes:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v13);
    v15 = NSStringFromSelector(indexes);
    v16 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v14, 1005, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v15, v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2212CB830;
  v23[3] = &unk_2784623E0;
  v23[4] = self;
  v23[5] = &v24;
  objc_msgSend_enumerateRangesUsingBlock_(v9, v7, v23, v8);
  v21 = v25;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v21[6], v21[7], (v21[7] - v21[6]) >> 4);
  _Block_object_dispose(&v24, 8);
  if (__p[1])
  {
    *&v30 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (id)description
{
  v5 = MEMORY[0x277CCAB68];
  if (objc_msgSend_isRows(self, a2, v2, v3))
  {
    v9 = @"row";
  }

  else
  {
    v9 = @"column";
  }

  v10 = objc_msgSend_rowOrColumnUids(self, v6, v7, v8);
  v13 = objc_msgSend_stringWithFormat_(v5, v11, @"%@ uuids: %@", v12, v9, v10);

  return v13;
}

- (TSKUIDStruct)insertAtUid
{
  upper = self->_insertAtUid._upper;
  lower = self->_insertAtUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)insertOppositeUid
{
  upper = self->_insertOppositeUid._upper;
  lower = self->_insertOppositeUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end