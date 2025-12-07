@interface TSCEVolatileDependencies
- (BOOL)addVolatileGeometryReference:(const TSCEInternalCellReference *)reference;
- (BOOL)addVolatileLocaleReference:(TSUCellCoord)reference;
- (BOOL)addVolatileRandomReference:(TSUCellCoord)reference;
- (BOOL)addVolatileRemoteDataReference:(TSUCellCoord)reference;
- (BOOL)addVolatileSheetTableNameReference:(TSUCellCoord)reference;
- (BOOL)addVolatileTimeReference:(TSUCellCoord)reference;
- (BOOL)dirtyRemoteDataVolatileCellsForKeys:(id)keys refsToDirty:(id)dirty;
- (BOOL)isEmpty;
- (BOOL)replaceRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)reference specifierSet:(id)set;
- (TSCEVolatileDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD;
- (TSKUIDStruct)ownerUID;
- (id).cxx_construct;
- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set;
- (void)addRemoteDataPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set;
- (void)clearRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)reference;
- (void)deleteVolatileReferencesFromCell:(TSUCellCoord)cell;
- (void)encodeToArchive:(void *)archive;
- (void)encodeToExpandedArchive:(void *)archive embiggenedFormatOnly:(BOOL)only;
- (void)readFromArchive:(const void *)archive;
- (void)readFromExpandedArchive:(const void *)archive;
- (void)removeAllPrecedents;
- (void)unpackAfterUnarchive;
@end

@implementation TSCEVolatileDependencies

- (TSCEVolatileDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD
{
  v9.receiver = self;
  v9.super_class = TSCEVolatileDependencies;
  result = [(TSCEVolatileDependencies *)&v9 init];
  if (result)
  {
    result->_dependencyTracker = tracker;
    result->_internalOwnerID = d;
    result->_ownerUID = *iD;
  }

  return result;
}

- (void)readFromArchive:(const void *)archive
{
  v6 = *(archive + 4);
  if (v6 != *(archive + 8))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 93, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (v6 >= 1)
  {
    v16 = 0;
    do
    {
      v75 = 0;
      v75.row = *(*(archive + 5) + v16);
      v75.column = *(*(archive + 3) + v16);
      TSCECellCoordSet::addCellCoord(&self->_volatileDateTimeCellCoordinates, &v75);
      v16 += 4;
    }

    while (4 * v6 != v16);
  }

  v17 = *(archive + 12);
  if (v17 != *(archive + 16))
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 101, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  if (v17 >= 1)
  {
    v27 = 0;
    do
    {
      v75 = 0;
      v75.row = *(*(archive + 9) + v27);
      v75.column = *(*(archive + 7) + v27);
      TSCECellCoordSet::addCellCoord(&self->_volatileRandomCellCoordinates, &v75);
      v27 += 4;
    }

    while (4 * v17 != v27);
  }

  v28 = *(archive + 56);
  if (v28 != *(archive + 60))
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 109, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  if (v28 >= 1)
  {
    v38 = 0;
    do
    {
      v75 = 0;
      v75.row = *(*(archive + 31) + v38);
      v75.column = *(*(archive + 29) + v38);
      TSCECellCoordSet::addCellCoord(&self->_volatileLocaleCellCoordinates, &v75);
      v38 += 4;
    }

    while (4 * v28 != v38);
  }

  v39 = *(archive + 52);
  if (v39 >= 1)
  {
    v40 = 8;
    do
    {
      sub_221269DB8(*(*(archive + 27) + v40), &v75);
      v73 = objc_msgSend_internalCellReferenceForCellRef_(self->_dependencyTracker, v41, &v75, v42);
      v74 = v43;
      objc_msgSend_addVolatileGeometryReference_(self, v43, &v73, v44);
      v40 += 8;
      --v39;
    }

    while (v39);
  }

  v45 = *(archive + 46);
  if (v45 >= 1)
  {
    v46 = 8;
    do
    {
      v47 = sub_2212697C0(*(*(archive + 24) + v46));
      internalOwnerID = self->_internalOwnerID;
      v75 = (v47 & 0xFFFFFFFFFFFFLL);
      v76 = internalOwnerID;
      objc_msgSend_addVolatileGeometryReference_(self, v49, &v75, v50);
      v46 += 8;
      --v45;
    }

    while (v45);
  }

  v51 = *(archive + 72);
  if (v51 != *(archive + 76))
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 129, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
  }

  if (v51 >= 1)
  {
    v61 = 0;
    do
    {
      v75 = 0;
      v75.row = *(*(archive + 39) + v61);
      v75.column = *(*(archive + 37) + v61);
      TSCECellCoordSet::addCellCoord(&self->_volatileRemoteDataCellCoordinates, &v75);
      v61 += 4;
    }

    while (4 * v51 != v61);
  }

  v62 = *(archive + 64);
  if (v62 != *(archive + 68))
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEVolatileDependencies readFromArchive:]", v3);
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v66);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v68, v64, v67, 137, 0, "corrupt volatile dependency tracker archive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71);
  }

  if (v62 >= 1)
  {
    v72 = 0;
    do
    {
      v75 = 0;
      v75.row = *(*(archive + 35) + v72);
      v75.column = *(*(archive + 33) + v72);
      TSCECellCoordSet::addCellCoord(&self->_volatileSheetTableNamesCellCoordinates, &v75);
      v72 += 4;
    }

    while (4 * v62 != v72);
  }
}

- (void)encodeToArchive:(void *)archive
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214D2BA4;
  v10[3] = &unk_27845F2D8;
  v10[4] = archive;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileDateTimeCellCoordinates._rectRepresentation.origin, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214D2C64;
  v9[3] = &unk_27845F2D8;
  v9[4] = archive;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileRandomCellCoordinates._rectRepresentation.origin, v9);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214D2D24;
  v8[3] = &unk_27845F2D8;
  v8[4] = archive;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileLocaleCellCoordinates._rectRepresentation.origin, v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214D2DE4;
  v7[3] = &unk_27845F2D8;
  v7[4] = archive;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileRemoteDataCellCoordinates._rectRepresentation.origin, v7);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214D2EA8;
  v6[3] = &unk_27845F2D8;
  v6[4] = archive;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileSheetTableNamesCellCoordinates._rectRepresentation.origin, v6);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214D2F6C;
  v5[3] = &unk_27845F218;
  v5[4] = self;
  v5[5] = archive;
  sub_2212DFEC0(&self->_volatileGeometryReferencesToThisTable, v5);
}

- (void)readFromExpandedArchive:(const void *)archive
{
  v5 = *(archive + 4);
  if (v5)
  {
    TSCECellCoordSet::loadFromArchive(&self->_volatileDateTimeCellCoordinates, *(archive + 3));
    v5 = *(archive + 4);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  TSCECellCoordSet::loadFromArchive(&self->_volatileRandomCellCoordinates, *(archive + 4));
  v5 = *(archive + 4);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  TSCECellCoordSet::loadFromArchive(&self->_volatileLocaleCellCoordinates, *(archive + 5));
  v5 = *(archive + 4);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    TSCECellCoordSet::loadFromArchive(&self->_volatileRemoteDataCellCoordinates, *(archive + 7));
    if ((*(archive + 4) & 0x20) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  TSCECellCoordSet::loadFromArchive(&self->_volatileSheetTableNamesCellCoordinates, *(archive + 6));
  v5 = *(archive + 4);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return;
  }

LABEL_13:
  v6 = *(archive + 8);

  sub_2212E0790(&self->_volatileGeometryReferencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v6);
}

- (void)unpackAfterUnarchive
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2214D323C;
  v2[3] = &unk_27845F540;
  v2[4] = self;
  sub_2212DFEC0(&self->_volatileGeometryReferencesToThisTable, v2);
}

- (void)encodeToExpandedArchive:(void *)archive embiggenedFormatOnly:(BOOL)only
{
  if (!only)
  {
    *(archive + 4) |= 1u;
    v6 = *(archive + 3);
    if (!v6)
    {
      v7 = *(archive + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v7);
      *(archive + 3) = v6;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileDateTimeCellCoordinates, v6);
    *(archive + 4) |= 2u;
    v8 = *(archive + 4);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v9);
      *(archive + 4) = v8;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileRandomCellCoordinates, v8);
    *(archive + 4) |= 4u;
    v10 = *(archive + 5);
    if (!v10)
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v11);
      *(archive + 5) = v10;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileLocaleCellCoordinates, v10);
    *(archive + 4) |= 8u;
    v12 = *(archive + 6);
    if (!v12)
    {
      v13 = *(archive + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v13);
      *(archive + 6) = v12;
    }

    TSCECellCoordSet::encodeToArchive(&self->_volatileSheetTableNamesCellCoordinates, v12);
    *(archive + 4) |= 0x20u;
    v14 = *(archive + 8);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v15);
      *(archive + 8) = v14;
    }

    sub_2212E0690(&self->_volatileGeometryReferencesToThisTable, v14);
  }

  *(archive + 4) |= 0x10u;
  v16 = *(archive + 7);
  if (!v16)
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v17);
    *(archive + 7) = v16;
  }

  TSCECellCoordSet::encodeToArchive(&self->_volatileRemoteDataCellCoordinates, v16);
}

- (void)deleteVolatileReferencesFromCell:(TSUCellCoord)cell
{
  cellCopy = cell;
  TSCECellCoordSet::removeCellCoord(&self->_volatileDateTimeCellCoordinates, &cellCopy);
  TSCECellCoordSet::removeCellCoord(&self->_volatileRandomCellCoordinates, &cellCopy);
  TSCECellCoordSet::removeCellCoord(&self->_volatileLocaleCellCoordinates, &cellCopy);
  TSCECellCoordSet::removeCellCoord(&self->_volatileSheetTableNamesCellCoordinates, &cellCopy);
  TSCECellCoordSet::removeCellCoord(&self->_volatileRemoteDataCellCoordinates, &cellCopy);
  objc_msgSend_clearRemoteDataKeyInterestedInForReference_(self, v4, &cellCopy, v5);
  v6 = sub_2214D4730(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_, &cellCopy);
  if (v6 == v7)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v11 = 0;
    v10 = 0;
    do
    {
      if (!v11 || objc_msgSend_formulaOwnerUid(v11, v7, v8, v9) != *(v12 + 3) || v7 != *(v12 + 4))
      {
        v14 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self->_dependencyTracker, v7, (v12 + 24), v9);

        v18 = objc_msgSend_volatileDependencies(v14, v15, v16, v17);

        v10 = v18;
        v11 = v14;
      }

      if (v10)
      {
        internalOwnerID = self->_internalOwnerID;
        v20 = *(v12 + 2) & 0xFFFFFFFFFFFFLL;
        v21 = internalOwnerID;
        sub_2212DFDD0(v10 + 40, &v20);
      }

      v12 = *v12;
    }

    while (v12 != v13);
  }

  sub_2214D4790(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_, &cellCopy);
}

- (void)removeAllPrecedents
{
  TSCECellCoordSet::clear(&self->_volatileDateTimeCellCoordinates);
  TSCECellCoordSet::clear(&self->_volatileRandomCellCoordinates);
  TSCECellCoordSet::clear(&self->_volatileLocaleCellCoordinates);
  TSCECellCoordSet::clear(&self->_volatileSheetTableNamesCellCoordinates);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2214D36F0;
  v17[3] = &unk_278465A18;
  v17[4] = self;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&self->_volatileRemoteDataCellCoordinates._rectRepresentation.origin, v17);
  TSCECellCoordSet::clear(&self->_volatileRemoteDataCellCoordinates);
  next = self->_volatileGeometryPrecedents.__table_.__first_node_.__next_;
  if (next)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (!v7 || objc_msgSend_formulaOwnerUid(v7, v3, v4, v5) != next[3] || v3 != next[4])
      {
        v9 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self->_dependencyTracker, v3, (next + 3), v5);

        v13 = objc_msgSend_volatileDependencies(v9, v10, v11, v12);

        v8 = v13;
        v7 = v9;
      }

      if (v8)
      {
        internalOwnerID = self->_internalOwnerID;
        v15 = next[2] & 0xFFFFFFFFFFFFLL;
        v16 = internalOwnerID;
        sub_2212DFDD0(v8 + 40, &v15);
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_2210BE918(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_);
}

- (void)addRemoteDataPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set
{
  if (TSCECellCoordSet::containsCellCoord(&self->_volatileRemoteDataCellCoordinates, coord))
  {

    TSCEReferenceSet::insertRef(set, 0xB, v5, v6);
  }
}

- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set
{
  if (TSCECellCoordSet::containsCellCoord(&self->_volatileDateTimeCellCoordinates, coord))
  {
    TSCEReferenceSet::insertRef(set, 5, v7, v8);
    TSCEReferenceSet::insertRef(set, 4, v9, v10);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileRandomCellCoordinates, coord))
  {
    TSCEReferenceSet::insertRef(set, 6, v11, v12);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileLocaleCellCoordinates, coord))
  {
    TSCEReferenceSet::insertRef(set, 7, v13, v14);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileRemoteDataCellCoordinates, coord))
  {
    TSCEReferenceSet::insertRef(set, 0xB, v15, v16);
  }

  if (TSCECellCoordSet::containsCellCoord(&self->_volatileSheetTableNamesCellCoordinates, coord))
  {
    TSCEReferenceSet::insertRef(set, 0xD, v17, v18);
  }

  v19 = sub_2214D4730(&self->_volatileGeometryPrecedents.__table_.__bucket_list_.__ptr_, coord);
  if (v19 != v20)
  {
    v21 = v19;
    v22 = v20;
    do
    {
      v23 = *(v21 + 3);
      TSCEReferenceSet::insertGeometryVolatileRef(set, &v23);
      v21 = *v21;
    }

    while (v21 != v22);
  }
}

- (BOOL)addVolatileTimeReference:(TSUCellCoord)reference
{
  referenceCopy = reference;
  TSCECellCoordSet::addCellCoord(&self->_volatileDateTimeCellCoordinates, &referenceCopy);
  return 1;
}

- (BOOL)addVolatileRandomReference:(TSUCellCoord)reference
{
  referenceCopy = reference;
  TSCECellCoordSet::addCellCoord(&self->_volatileRandomCellCoordinates, &referenceCopy);
  return 1;
}

- (BOOL)addVolatileLocaleReference:(TSUCellCoord)reference
{
  referenceCopy = reference;
  TSCECellCoordSet::addCellCoord(&self->_volatileLocaleCellCoordinates, &referenceCopy);
  return 1;
}

- (BOOL)addVolatileRemoteDataReference:(TSUCellCoord)reference
{
  referenceCopy = reference;
  TSCECellCoordSet::addCellCoord(&self->_volatileRemoteDataCellCoordinates, &referenceCopy);
  return 1;
}

- (BOOL)replaceRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)reference specifierSet:(id)set
{
  setCopy = set;
  size = self->_remoteDataKeysForCellCoordinate.__table_.__size_;
  if (size)
  {
    referenceCopy = reference;
    size = sub_2214D4820(&self->_remoteDataKeysForCellCoordinate.__table_.__bucket_list_.__ptr_, reference, &unk_2217E213E, &referenceCopy)[3];
  }

  v8 = size;
  if (setCopy | v8)
  {
    v11 = v8;
    if ((objc_msgSend_isEqual_(setCopy, v9, v8, v10) & 1) == 0)
    {
      if (!setCopy)
      {
        setCopy = objc_msgSend_set(TSCERemoteDataSpecifierSet, v12, v13, v14);
      }

      referenceCopy = 0;
      v67 = &referenceCopy;
      v68 = 0x3032000000;
      v69 = sub_2214D3CF4;
      v70 = sub_2214D3D04;
      v71 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v12, v13, v14);
      v60 = 0;
      v61 = &v60;
      v62 = 0x3032000000;
      v63 = sub_2214D3CF4;
      v64 = sub_2214D3D04;
      v65 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v15, v16, v17);
      if (!v11)
      {
        v11 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v18, v19, v20);
        referenceCopy2 = reference;
        v21 = sub_2214D4820(&self->_remoteDataKeysForCellCoordinate.__table_.__bucket_list_.__ptr_, reference, &unk_2217E213E, &referenceCopy2);
        objc_storeStrong(v21 + 3, v11);
      }

      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_2214D3D0C;
      v59[3] = &unk_2784665E8;
      v59[4] = self;
      v59[5] = &referenceCopy;
      v59[6] = reference;
      objc_msgSend_enumerateSpecifiersWithBlock_(v11, v18, v59, v20);
      objc_msgSend_removeAllSpecifiers(v11, v22, v23, v24);
      v50 = MEMORY[0x277D85DD0];
      v51 = 3221225472;
      v52 = sub_2214D3DF4;
      v53 = &unk_278466610;
      v56 = &referenceCopy;
      selfCopy = self;
      v57 = &v60;
      referenceCopy3 = reference;
      v25 = v11;
      v55 = v25;
      objc_msgSend_enumerateSpecifiersWithBlock_(setCopy, v26, &v50, v27);
      if (objc_msgSend_count(v61[5], v28, v29, v30, v50, v51, v52, v53, selfCopy))
      {
        v34 = objc_msgSend_calcEngine(self->_dependencyTracker, v31, v32, v33);
        v38 = objc_msgSend_remoteDataStore(v34, v35, v36, v37);
        objc_msgSend_addRemoteDataInterest_forOwner_(v38, v39, v61[5], &self->_ownerUID);
      }

      if (objc_msgSend_count(v67[5], v31, v32, v33))
      {
        v43 = objc_msgSend_calcEngine(self->_dependencyTracker, v40, v41, v42);
        v47 = objc_msgSend_remoteDataStore(v43, v44, v45, v46);
        objc_msgSend_removeRemoteDataInterest_forOwner_(v47, v48, v67[5], &self->_ownerUID);
      }

      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&referenceCopy, 8);

      v11 = v25;
    }
  }

  else
  {
    setCopy = 0;
    v11 = 0;
  }

  return 1;
}

- (void)clearRemoteDataKeyInterestedInForReference:(const TSUCellCoord *)reference
{
  if (self->_remoteDataKeysForCellCoordinate.__table_.__size_)
  {
    referenceCopy = reference;
    v5 = sub_2214D4820(&self->_remoteDataKeysForCellCoordinate.__table_.__bucket_list_.__ptr_, reference, &unk_2217E213E, &referenceCopy)[3];
    v9 = v5;
    if (v5 && objc_msgSend_count(v5, v6, v7, v8))
    {
      referenceCopy = 0;
      v32 = &referenceCopy;
      v33 = 0x3032000000;
      v34 = sub_2214D3CF4;
      v35 = sub_2214D3D04;
      v36 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v10, v11, v12);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_2214D40C4;
      v30[3] = &unk_2784665E8;
      v30[5] = &referenceCopy;
      v30[6] = reference;
      v30[4] = self;
      objc_msgSend_enumerateSpecifiersWithBlock_(v9, v13, v30, v14);
      objc_msgSend_removeAllSpecifiers(v9, v15, v16, v17);
      if (objc_msgSend_count(v32[5], v18, v19, v20))
      {
        v24 = objc_msgSend_calcEngine(self->_dependencyTracker, v21, v22, v23);
        v28 = objc_msgSend_remoteDataStore(v24, v25, v26, v27);
        objc_msgSend_removeRemoteDataInterest_forOwner_(v28, v29, v32[5], &self->_ownerUID);
      }

      _Block_object_dispose(&referenceCopy, 8);
    }
  }

  else
  {
    v9 = 0;
  }
}

- (BOOL)addVolatileSheetTableNameReference:(TSUCellCoord)reference
{
  referenceCopy = reference;
  TSCECellCoordSet::addCellCoord(&self->_volatileSheetTableNamesCellCoordinates, &referenceCopy);
  return 1;
}

- (BOOL)addVolatileGeometryReference:(const TSCEInternalCellReference *)reference
{
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, a2, reference->tableID, v3);
  v11 = objc_msgSend_volatileDependencies(v6, v7, v8, v9);
  if (v6)
  {
    goto LABEL_4;
  }

  objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v10, reference->tableID, 0, 0);
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v12, reference->tableID, v13);
  v17 = objc_msgSend_volatileDependencies(v6, v14, v15, v16);

  if (v17)
  {
    v11 = v17;
LABEL_4:
    v20 = v6;
    goto LABEL_5;
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEVolatileDependencies addVolatileGeometryReference:]", v19);
  v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEVolatileDependencies.mm", v25);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 465, 0, "NULL volatile dependencies");

  v11 = 0;
  v20 = v6;
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
LABEL_5:
  sub_2212DFCE8(&self->_volatileGeometryReferencesToThisTable._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &reference->coordinate);
  if (v11)
  {
    coordinate = reference->coordinate;
    ownerUID = self->_ownerUID;
    sub_2214D4F5C(v11 + 45, &coordinate);
  }

  return 1;
}

- (BOOL)dirtyRemoteDataVolatileCellsForKeys:(id)keys refsToDirty:(id)dirty
{
  dirtyCopy = dirty;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214D44A0;
  v11[3] = &unk_278466638;
  v12 = dirtyCopy;
  v13 = &v14;
  v11[4] = self;
  v7 = dirtyCopy;
  objc_msgSend_enumerateSpecifiersWithBlock_(keys, v8, v11, v9);
  LOBYTE(keys) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return keys;
}

- (BOOL)isEmpty
{
  isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileDateTimeCellCoordinates);
  if (isEmpty)
  {
    isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileRandomCellCoordinates);
    if (isEmpty)
    {
      isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileLocaleCellCoordinates);
      if (isEmpty)
      {
        isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileRemoteDataCellCoordinates);
        if (isEmpty)
        {
          isEmpty = TSCECellCoordSet::isEmpty(&self->_volatileSheetTableNamesCellCoordinates);
          if (isEmpty)
          {
            isEmpty = sub_2212E0280(&self->_volatileGeometryReferencesToThisTable);
            if (isEmpty)
            {
              LOBYTE(isEmpty) = self->_volatileGeometryPrecedents.__table_.__size_ == 0;
            }
          }
        }
      }
    }
  }

  return isEmpty;
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
  *(self + 8) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = self + 64;
  *(self + 13) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = self + 104;
  *(self + 18) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 23) = 0;
  *(self + 16) = 0;
  *(self + 17) = self + 144;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 22) = self + 184;
  *(self + 29) = 0;
  *(self + 28) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 27) = self + 224;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 68) = 1065353216;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 78) = 1065353216;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 88) = 1065353216;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 98) = 1065353216;
  return self;
}

@end