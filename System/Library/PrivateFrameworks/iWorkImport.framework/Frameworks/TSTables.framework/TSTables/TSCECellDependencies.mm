@interface TSCECellDependencies
- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)range cellRange:(const TSCEInternalRangeReference *)cellRange;
- (BOOL)cellHasThisCellPrecedent:(const TSUCellCoord *)precedent precedentRef:(const TSCEInternalCellReference *)ref;
- (BOOL)cellRecordHasPrecedents:(TSCECellRecord *)precedents;
- (BOOL)dirtyPrecedentCountsAreConsistent:(BOOL)consistent;
- (BOOL)hasDependentsOfCell:(const TSCEInternalCellReference *)cell;
- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)coord;
- (BOOL)insertCellRecord:(TSCECellRecord *)record doWillModify:(BOOL)modify;
- (BOOL)isCellRefDirty:(const TSCEInternalCellReference *)dirty;
- (BOOL)isCellRefInACycle:(const TSCEInternalCellReference *)cycle;
- (BOOL)removeSomePrecedents:(unint64_t)precedents markDependentsDirty:(BOOL)dirty;
- (BOOL)replaceCellRecord:(TSCECellRecord *)record;
- (TSCECellCoordSet)allCoordsContainingFormulas;
- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport;
- (TSCECellCoordSet)cellsInACycle;
- (TSCECellCoordSet)dirtyCells;
- (TSCECellDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD ownerIndex:(unsigned __int16)index;
- (TSCECellRecord)findCellRecord:(const TSUCellCoord *)record willModifyOnTile:(BOOL)tile;
- (TSCECellRecord)findCellRecordForCellRef:(const TSCECellRef *)ref willModifyOnTile:(BOOL)tile;
- (TSCECellRecord)findCellRecordForIntCellRef:(const TSCEInternalCellReference *)ref willModifyOnTile:(BOOL)tile;
- (TSCEInternalCellRefSet)allCellRefs;
- (TSKUIDStruct)ownerUID;
- (TSUCellCoord)embiggenedCellCoord;
- (id).cxx_construct;
- (id)descriptionOfCellsInRange:(const TSCERangeCoordinate *)range dirtyOnly:(BOOL)only;
- (id)explainDirtyPrecedentCount:(const TSUCellCoord *)count;
- (id)precedentsAsString:(const TSUCellCoord *)string dirtyOnly:(BOOL)only;
- (id)tileForCoord:(const TSUCellCoord *)coord createIfMissing:(BOOL)missing;
- (unint64_t)computedNumberOfDirtyPrecedents:(const TSUCellCoord *)precedents;
- (unint64_t)countRecordsInRange:(const TSCERangeCoordinate *)range cellRestrictions:(unint64_t)restrictions;
- (unint64_t)dirtyPrecedentsCountOfCellCoord:(const TSUCellCoord *)coord;
- (unint64_t)dirtyPrecedentsCountOfCellRef:(const TSCECellRef *)ref;
- (unint64_t)memoryUseEstimate;
- (vector<TSCEInternalCellReference,)dependentsOfCell:(TSCECellDependencies *)self;
- (vector<TSUCellCoord,)cellsWithRecordsInRange:(TSCECellDependencies *)self formulaCellsOnly:(SEL)only;
- (void)addCellsDependentOnBoth:(const TSCEInternalCellReference *)both precedent2:(const TSCEInternalCellReference *)precedent2 toCellCoordSet:(void *)set;
- (void)addDependentsAtCoord:(const TSUCellCoord *)coord toCellReferenceSet:(void *)set;
- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set;
- (void)adjustDirtyCountAndPushDependents:(TSCECellRecord *)dependents outDependents:(id)outDependents isInitialCell:(BOOL)cell adjustBy:(unint64_t)by;
- (void)adjustDirtyPrecedentCount:(TSCECellRecord *)count isInitialCell:(BOOL)cell adjustBy:(unint64_t)by;
- (void)appendEdgeToArchive:(void *)archive edge:(const TSCEInternalCellReference *)edge;
- (void)appendExpandedEdgeToArchive:(void *)archive edge:(const TSCEInternalCellReference *)edge;
- (void)applyBlockToRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block;
- (void)applyBlockToRecordsAtIndexes:(id)indexes rowIndexes:(id)rowIndexes cellRestrictions:(unint64_t)restrictions doWillModify:(BOOL)modify block:(id)block;
- (void)applyBlockToRecordsInRange:(const TSCERangeCoordinate *)range cellRestrictions:(unint64_t)restrictions doWillModify:(BOOL)modify block:(id)block;
- (void)applyBlockToSortedRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block;
- (void)assertDirtyPrecedentsCountConsistency;
- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)cell outCellRefs:(void *)refs;
- (void)cellsReferencingRange:(const TSCERangeCoordinate *)range fromOwnerID:(unsigned __int16)d outFormulaCoords:(void *)coords;
- (void)clearCycleAndPushDependents:(TSCECellRecord *)dependents outDependents:(id)outDependents;
- (void)collectDependencies:(id)dependencies;
- (void)decrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)count;
- (void)depthFirstSearch:(const TSCEInternalCellReference *)search state:(void *)state;
- (void)detectAndRepairDirtyCellsAreOnLeafQueue:(void *)queue;
- (void)dirtyAllCells;
- (void)encodeToArchive:(void *)archive;
- (void)encodeToExpandedArchive:(void *)archive;
- (void)encodeToTiledArchive:(void *)archive archiver:(id)archiver;
- (void)findAndRecordCyclesInDirtyCells:(void *)cells outCellsInCycles:(id)cycles;
- (void)formulaCellsInRange:(const TSCERangeCoordinate *)range rewriteSpec:(id)spec outFormulaCells:(void *)cells;
- (void)formulaCellsInThisOwner:(void *)owner;
- (void)formulaCellsReferencingCellsAffectedByInsertRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingCellsAffectedByMoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingCellsAffectedByRemoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingCellsInRange:(const TSCERangeCoordinate *)range outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingIndexes:(id)indexes rowIndexes:(id)rowIndexes outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingThisOwner:(void *)owner;
- (void)incrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)count;
- (void)markCellCleanAndPushNextLeaves:(const TSUCellCoord *)leaves;
- (void)markCellRecordForPruning:(const TSUCellCoord *)pruning;
- (void)markEverythingClean;
- (void)pruneEmptyCellRecords:(id)records timeout:(double)timeout;
- (void)pushDirectDependentsIfNotBothInCyle:(TSCECellRecord *)cyle outDependents:(id)dependents;
- (void)readExpandedPrecedentsWithOwners:(const void *)owners cellRecord:(TSCECellRecord *)record;
- (void)readExpandedPrecedentsWithoutOwners:(const void *)owners cellRecord:(TSCECellRecord *)record;
- (void)readFromArchive:(const void *)archive;
- (void)readFromTiledArchive:(const void *)archive unarchiver:(id)unarchiver ownerDepends:(id)depends;
- (void)readPrecedentsWithOwners:(const void *)owners cellRecord:(TSCECellRecord *)record;
- (void)readPrecedentsWithoutOwners:(const void *)owners cellRecord:(TSCECellRecord *)record;
- (void)removeCellRecordAt:(const TSUCellCoord *)at;
- (void)removeDependentEdge:(const TSUCellCoord *)edge edge:(const TSCEInternalCellReference *)a4;
- (void)setContainsAFormulaInGrid:(unsigned __int16)grid row:(unsigned int)row containsFormula:(BOOL)formula;
- (void)setContainsFormula:(TSCECellRecord *)formula containsFormula:(BOOL)containsFormula;
- (void)setDirtyInGrid:(unsigned __int16)grid row:(unsigned int)row isDirty:(BOOL)dirty;
- (void)setDirtySelfPlusPrecedentsCount:(TSCECellRecord *)count dirtyCount:(unint64_t)dirtyCount;
- (void)setInACycle:(TSCECellRecord *)cycle inACycle:(BOOL)aCycle;
- (void)setInACycleInGrid:(unsigned __int16)grid row:(unsigned int)row inACycle:(BOOL)cycle;
- (void)sortCellRecords;
- (void)unpackAfterUnarchive;
@end

@implementation TSCECellDependencies

- (TSCECellDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD ownerIndex:(unsigned __int16)index
{
  trackerCopy = tracker;
  v22.receiver = self;
  v22.super_class = TSCECellDependencies;
  v11 = [(TSCECellDependencies *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_dependencyTracker = trackerCopy;
    v11->_ownerUID = *iD;
    v11->_internalOwnerID = d;
    v11->_numCellRecords = 0;
    v11->_ownerIndex = index;
    v11->_hasExcelImportTranslationCells = 0;
    v11->_unarchivedCellRecords = 0;
    v11->_tilesLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    if (trackerCopy)
    {
      v13 = [TSCECellRecordTile alloc];
      internalOwnerID = v12->_internalOwnerID;
      v18 = objc_msgSend_objectContext(trackerCopy, v15, v16, v17);
      v21 = objc_msgSend_initWithOwnerId_tileColumnBegin_tileRowBegin_context_(v13, v19, internalOwnerID, 0, 0, v18);

      sub_22111AB1C(&v12->_tiles.__begin_, &v21);
    }
  }

  return v12;
}

- (TSUCellCoord)embiggenedCellCoord
{
  LODWORD(v3) = sub_2215C2704(&self->_containsAFormulaGrid._tiles.__begin_);
  v4 = v3;
  if (v3 < 0xFFFF)
  {
    v5 = sub_2215C2724(&self->_containsAFormulaGrid);
    if (v5 >= 0xFF)
    {
      return (v4 | (v5 << 32));
    }

    else
    {
      return 0x7FFF7FFFFFFFLL;
    }
  }

  else
  {
    return v3;
  }
}

- (void)readPrecedentsWithoutOwners:(const void *)owners cellRecord:(TSCECellRecord *)record
{
  v6 = *(owners + 4);
  if (v6 >= 1)
  {
    v15 = v4;
    v16 = v5;
    v10 = 0;
    v11 = 4 * v6;
    do
    {
      v12 = *(*(owners + 3) + v10);
      v13.row = v12;
      v13.column = BYTE2(v12);
      if ((v12 & 0x1000000) == 0)
      {
        break;
      }

      v10 += 4;
      internalOwnerID = self->_internalOwnerID;
      sub_2215C52D0(record, &v13, 1);
    }

    while (v11 != v10);
  }
}

- (void)readPrecedentsWithOwners:(const void *)owners cellRecord:(TSCECellRecord *)record
{
  recordCopy = record;
  v7 = *(owners + 8);
  v8 = *(owners + 14);
  v43 = v8;
  if (v8 < 1)
  {
    if (*(owners + 18) == v7)
    {
      goto LABEL_7;
    }

    v15 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readPrecedentsWithOwners:cellRecord:]", record);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v18, v10, v13, 164, 0, "corrupted file");
  }

  else
  {
    if (v8 == v7)
    {
LABEL_8:
      v22 = 0;
      v23 = 0x277D81000uLL;
      v41 = recordCopy;
      v42 = v7;
      while (1)
      {
        v24 = *(*(owners + 5) + 4 * v22);
        v45.row = v24;
        v45.column = BYTE2(v24);
        if ((v24 & 0x1000000) == 0)
        {
          return;
        }

        dependencyTracker = self->_dependencyTracker;
        if (v8 < 1)
        {
          break;
        }

        if (!dependencyTracker)
        {
          LODWORD(v28) = *(*(owners + 10) + 4 * v22);
LABEL_19:
          if (v28 == 0xFFFF)
          {
            LODWORD(v28) = self->_internalOwnerID;
          }

          goto LABEL_21;
        }

        v44._lower = 0;
        v44._upper = 0;
        v44._lower = TSKUIDStruct::loadFromMessage();
        v44._upper = v26;
        LODWORD(v28) = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v26, &v44, v27);
        if (v28 == 0xFFFF && v44 != 0uLL)
        {
          v29 = v23;
          v30 = *(v23 + 336);
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readPrecedentsWithOwners:cellRecord:]", record);
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v33);
          v35 = TSKUIDStruct::description(&v44);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v34, 181, 0, "Couldn't locate tableID found in cross-table reference: %{public}@", v35);

          v23 = v29;
          objc_msgSend_logFullBacktrace(*(v29 + 336), v37, v38, v39);
          recordCopy = v41;
          v7 = v42;
          v8 = v43;
        }

LABEL_21:
        v46 = v28;
        if (v28 != 0xFFFF)
        {
          sub_2215C52D0(recordCopy, &v45, 1);
        }

        if (v7 == ++v22)
        {
          return;
        }
      }

      v28 = *(*(owners + 10) + 4 * v22);
      if (dependencyTracker)
      {
        v40 = objc_msgSend_idMap(dependencyTracker, a2, owners, record);
        if (*(v40 + 144))
        {
          LODWORD(v28) = sub_2212602C8(v40, v28);
        }
      }

      goto LABEL_19;
    }

    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readPrecedentsWithOwners:cellRecord:]", record);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 162, 0, "corrupted file");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  v8 = v43;
LABEL_7:
  if (v7 >= 1)
  {
    goto LABEL_8;
  }
}

- (void)readExpandedPrecedentsWithoutOwners:(const void *)owners cellRecord:(TSCECellRecord *)record
{
  v6 = *(owners + 4);
  if (v6 >= 1)
  {
    v14 = v4;
    v15 = v5;
    v10 = 0;
    v11 = 4 * v6;
    do
    {
      v12.row = *(*(owners + 3) + v10);
      v12.column = *(*(owners + 5) + v10);
      internalOwnerID = self->_internalOwnerID;
      sub_2215C52D0(record, &v12, 1);
      v10 += 4;
    }

    while (v11 != v10);
  }
}

- (void)readExpandedPrecedentsWithOwners:(const void *)owners cellRecord:(TSCECellRecord *)record
{
  v7 = *(owners + 12);
  if (*(owners + 20) != v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies readExpandedPrecedentsWithOwners:cellRecord:]", record);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 229, 0, "corrupted file");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (v7 >= 1)
  {
    v17 = 0;
    do
    {
      v21.row = *(*(owners + 7) + v17);
      v21.column = *(*(owners + 9) + v17);
      v18 = *(*(owners + 11) + v17);
      dependencyTracker = self->_dependencyTracker;
      if (dependencyTracker)
      {
        v20 = objc_msgSend_idMap(dependencyTracker, a2, owners, record);
        if (*(v20 + 144))
        {
          LOWORD(v18) = sub_2212602C8(v20, v18);
        }
      }

      v17 += 4;
      v22 = v18;
      sub_2215C52D0(record, &v21, 1);
    }

    while (4 * v7 != v17);
  }
}

- (void)readFromArchive:(const void *)archive
{
  v3 = *(archive + 8);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      TSCE::CellRecordArchive::CellRecordArchive(v6, *(*(archive + 5) + 8 * i + 8));
      if (v7 == 1)
      {
        operator new();
      }

      TSCE::CellRecordArchive::~CellRecordArchive(v6);
    }
  }
}

- (void)unpackAfterUnarchive
{
  if (!self->_dependencyTracker)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellDependencies unpackAfterUnarchive]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 359, 0, "invalid nil value for '%{public}s'", "_dependencyTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  if (begin == var0)
  {
    goto LABEL_6;
  }

  do
  {
    v15 = *begin;
    objc_msgSend_unpackAfterUnarchiveForCellDependencies_(v15, v16, self, v17);

    ++begin;
  }

  while (begin != var0);
  if (self->_tiles.__begin_ == self->_tiles.var0)
  {
LABEL_6:
    v20 = [TSCECellRecordTile alloc];
    internalOwnerID = self->_internalOwnerID;
    v25 = objc_msgSend_objectContext(self->_dependencyTracker, v22, v23, v24);
    v37 = objc_msgSend_initWithOwnerId_tileColumnBegin_tileRowBegin_context_(v20, v26, internalOwnerID, 0, 0, v25);

    p_tilesLock = &self->_tilesLock;
    os_unfair_lock_lock(&self->_tilesLock);
    sub_22111AB1C(&self->_tiles.__begin_, &v37);
    os_unfair_lock_unlock(&self->_tilesLock);
    LOBYTE(v36) = 0;
    sub_2212E22F0(&p_tilesLock);
  }

  unarchivedCellRecords = self->_unarchivedCellRecords;
  if (unarchivedCellRecords)
  {
    v28 = *unarchivedCellRecords;
    v29 = unarchivedCellRecords[1];
    if (*unarchivedCellRecords == v29)
    {
      goto LABEL_13;
    }

    do
    {
      v30 = *v28;
      objc_msgSend_replaceCellRecord_(self, v18, *v28, v19);
      if (*(v30 + 16) == 1)
      {
        v32 = self->_internalOwnerID;
        p_tilesLock = *(v30 + 32) | (*(v30 + 36) << 32);
        v36 = v32;
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self->_dependencyTracker, v31, &p_tilesLock, 0);
      }

      v33 = sub_2211226F4(v30);
      MEMORY[0x223DA1450](v33, 0x1020C4012755DA7);
      ++v28;
    }

    while (v28 != v29);
    unarchivedCellRecords = self->_unarchivedCellRecords;
    if (unarchivedCellRecords)
    {
LABEL_13:
      v34 = *unarchivedCellRecords;
      if (*unarchivedCellRecords)
      {
        unarchivedCellRecords[1] = v34;
        operator delete(v34);
      }

      MEMORY[0x223DA1450](unarchivedCellRecords, 0x80C40D6874129);
    }

    self->_unarchivedCellRecords = 0;
  }
}

- (void)encodeToExpandedArchive:(void *)archive
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_22111BB5C;
  v3[3] = &unk_27845F240;
  v3[4] = self;
  v3[5] = archive;
  objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, a2, 1, 0, v3);
}

- (void)readFromTiledArchive:(const void *)archive unarchiver:(id)unarchiver ownerDepends:(id)depends
{
  unarchiverCopy = unarchiver;
  dependsCopy = depends;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22111BE04;
  v13[3] = &unk_27845D8D8;
  v9 = dependsCopy;
  v14 = v9;
  v10 = unarchiverCopy;
  v11 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v10, v12, archive + 16, v11, 0, v13);
}

- (void)encodeToTiledArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_initWithCapacity_(v7, v8, self->_tiles.var0 - self->_tiles.__begin_, v9);
  p_tilesLock = &self->_tilesLock;
  v21 = &self->_tilesLock;
  os_unfair_lock_lock(&self->_tilesLock);
  v22 = 1;
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  if (begin != var0)
  {
    do
    {
      v14 = *begin;
      if (objc_msgSend_numCellRecords(v14, v15, v16, v17))
      {
        objc_msgSend_addObject_(v10, v18, v14, v19);
      }

      ++begin;
    }

    while (begin != var0);
    p_tilesLock = v21;
  }

  os_unfair_lock_unlock(p_tilesLock);
  v22 = 0;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v20, v10, archive + 16);
  sub_2212E22F0(&v21);
}

- (unint64_t)memoryUseEstimate
{
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  v4 = 100;
  while (begin != var0)
  {
    v5 = *begin;
    v4 += objc_msgSend_memoryUseEstimate(v5, v6, v7, v8);

    ++begin;
  }

  return v4;
}

- (id)tileForCoord:(const TSUCellCoord *)coord createIfMissing:(BOOL)missing
{
  column = coord->column;
  if (coord->row == 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFFLL;
  }

  else
  {
    v5 = coord->row & 0xFFFFFF80;
  }

  v6 = column == 0x7FFF;
  if (column == 0x7FFF)
  {
    v7 = 0x7FFF;
  }

  else
  {
    v7 = column & 0xFFE0;
  }

  v50 = v7;
  if (v6 && coord->row == 0x7FFFFFFF)
  {
    v37 = 0;
    goto LABEL_35;
  }

  selfCopy2 = self;
  v53 = 0;
  p_tiles = &self->_tiles;
  v11 = self->_tiles.var0 - self->_tiles.__begin_;
  if (!v11)
  {
    v18 = 0;
    v12 = 0;
    goto LABEL_27;
  }

  missingCopy = missing;
  v12 = 0;
  v13 = v11 >> 3;
  while (1)
  {
    v14 = v12 + ((v13 - v12) >> 1);
    v18 = p_tiles->__begin_[v14];
    if (!v18)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCECellDependencies tileForCoord:createIfMissing:]", v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 491, 0, "invalid nil value for '%{public}s'", "t");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }

    if (objc_msgSend_tileRowBegin(v18, v15, v16, v17) >= v5)
    {
      if (objc_msgSend_tileRowBegin(v18, v28, v29, v30) > v5)
      {
        goto LABEL_20;
      }

      if (objc_msgSend_tileColumnBegin(v18, v31, v32, v33) >= v50)
      {
        break;
      }
    }

    v12 = v14 + 1;
LABEL_21:

    if (v12 >= v13)
    {
      v18 = 0;
      goto LABEL_23;
    }
  }

  if (objc_msgSend_tileColumnBegin(v18, v34, v35, v36) > v50)
  {
LABEL_20:
    v13 = v12 + ((v13 - v12) >> 1);
    goto LABEL_21;
  }

  v53 = v18;
LABEL_23:
  selfCopy2 = self;
  *&missing = missingCopy;
  if (!v18)
  {
LABEL_27:
    if (missing)
    {
      v38 = [TSCECellRecordTile alloc];
      internalOwnerID = selfCopy2->_internalOwnerID;
      v43 = objc_msgSend_objectContext(selfCopy2->_dependencyTracker, v40, v41, v42);
      v53 = objc_msgSend_initWithOwnerId_tileColumnBegin_tileRowBegin_context_(v38, v44, internalOwnerID, v50, v5, v43);

      lock = &selfCopy2->_tilesLock;
      os_unfair_lock_lock(&selfCopy2->_tilesLock);
      v52 = 1;
      begin = selfCopy2->_tiles.__begin_;
      v46 = selfCopy2->_tiles.var0 - begin;
      if (v12 == v46 >> 3)
      {
        sub_22111AB1C(p_tiles, &v53);
      }

      else
      {
        if (v12 + 1 < v46 >> 3)
        {
          begin = p_tiles->__begin_;
        }

        sub_22111C3E8(p_tiles, &begin[v12], &v53);
      }

      os_unfair_lock_unlock(lock);
      v52 = 0;
      sub_2212E22F0(&lock);
      v18 = v53;
    }
  }

  v37 = v18;

LABEL_35:

  return v37;
}

- (TSCECellRecord)findCellRecord:(const TSUCellCoord *)record willModifyOnTile:(BOOL)tile
{
  tileCopy = tile;
  result = objc_msgSend_tileForCoord_(self, a2, record, tile);
  if (result)
  {
    v11 = result;
    if (tileCopy)
    {
      v12 = objc_msgSend_calcEngine(self->_dependencyTracker, v8, v9, v10);
      isRecalculationRunning = objc_msgSend_isRecalculationRunning(v12, v13, v14, v15);

      objc_msgSend_willModifyWithOptions_(v11, v17, isRecalculationRunning, v18);
    }

    v19 = *record;

    return objc_msgSend_findCellRecord_(v11, v8, v19, v10);
  }

  return result;
}

- (TSCECellRecord)findCellRecordForCellRef:(const TSCECellRef *)ref willModifyOnTile:(BOOL)tile
{
  CellRecord_willModifyOnTile = tile;
  upper = ref->_tableUID._upper;
  if (ref->_tableUID._lower == self->_ownerUID._lower && upper == self->_ownerUID._upper)
  {

    return objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, ref, tile);
  }

  else
  {
    dependencyTracker = self->_dependencyTracker;
    v16[0] = ref->_tableUID._lower;
    v16[1] = upper;
    v10 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(dependencyTracker, a2, v16, tile);
    v13 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, v11, v10, v12);
    v15 = v13;
    if (v13)
    {
      CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v13, v14, ref, CellRecord_willModifyOnTile);
    }

    if (v15)
    {
      return CellRecord_willModifyOnTile;
    }

    else
    {
      return 0;
    }
  }
}

- (TSCECellRecord)findCellRecordForIntCellRef:(const TSCEInternalCellReference *)ref willModifyOnTile:(BOOL)tile
{
  CellRecord_willModifyOnTile = tile;
  tableID = ref->tableID;
  if (tableID == self->_internalOwnerID)
  {

    return objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, ref, tile);
  }

  else
  {
    v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, a2, tableID, tile);
    v10 = v8;
    if (v8)
    {
      CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v8, v9, ref, CellRecord_willModifyOnTile);
    }

    if (v10)
    {
      return CellRecord_willModifyOnTile;
    }

    else
    {
      return 0;
    }
  }
}

- (void)applyBlockToRecordsInRange:(const TSCERangeCoordinate *)range cellRestrictions:(unint64_t)restrictions doWillModify:(BOOL)modify block:(id)block
{
  modifyCopy = modify;
  blockCopy = block;
  if ((restrictions & 2) == 0 || !sub_2215C25E8(&self->_isDirtyGrid))
  {
    column = range->_topLeft.column;
    if (column == 0x7FFF)
    {
      v11 = 0x7FFF;
    }

    else
    {
      v11 = column & 0xFFE0;
    }

    if (range->_topLeft.row == 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = range->_topLeft.row & 0xFFFFFF80;
    }

    begin = self->_tiles.__begin_;
    var0 = self->_tiles.var0;
    while (begin != var0)
    {
      v15 = *begin;
      if (objc_msgSend_tileRowBegin(v15, v16, v17, v18) >= v12 && v11 <= objc_msgSend_tileColumnBegin(v15, v19, v20, v21))
      {
        objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(v15, v22, *&range->_topLeft, *&range->_bottomRight, restrictions, modifyCopy, blockCopy);
      }

      ++begin;
    }
  }
}

- (void)applyBlockToRecordsAtIndexes:(id)indexes rowIndexes:(id)rowIndexes cellRestrictions:(unint64_t)restrictions doWillModify:(BOOL)modify block:(id)block
{
  indexesCopy = indexes;
  rowIndexesCopy = rowIndexes;
  blockCopy = block;
  if (objc_msgSend_count(indexesCopy, v15, v16, v17) && objc_msgSend_count(rowIndexesCopy, v18, v19, v20))
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22111C9A4;
    v23[3] = &unk_27845F290;
    v24 = rowIndexesCopy;
    selfCopy = self;
    restrictionsCopy = restrictions;
    modifyCopy = modify;
    v26 = blockCopy;
    objc_msgSend_enumerateRangesUsingBlock_(indexesCopy, v21, v23, v22);
  }
}

- (void)applyBlockToRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block
{
  modifyCopy = modify;
  blockCopy = block;
  if ((records & 2) == 0 || !sub_2215C25E8(&self->_isDirtyGrid))
  {
    begin = self->_tiles.__begin_;
    var0 = self->_tiles.var0;
    while (begin != var0)
    {
      v10 = *begin;
      v12 = v10;
      if (v10 && (objc_msgSend_applyBlockToRecords_doWillModify_block_(v10, v11, records, modifyCopy, blockCopy) & 1) == 0)
      {

        break;
      }

      ++begin;
    }
  }
}

- (void)applyBlockToSortedRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block
{
  modifyCopy = modify;
  blockCopy = block;
  if ((records & 2) == 0 || !sub_2215C25E8(&self->_isDirtyGrid))
  {
    begin = self->_tiles.__begin_;
    var0 = self->_tiles.var0;
    while (begin != var0)
    {
      v10 = *begin;
      v12 = v10;
      if (v10 && (objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(v10, v11, records, modifyCopy, blockCopy) & 1) == 0)
      {

        break;
      }

      ++begin;
    }
  }
}

- (unint64_t)countRecordsInRange:(const TSCERangeCoordinate *)range cellRestrictions:(unint64_t)restrictions
{
  if ((restrictions & 2) != 0 && sub_2215C25E8(&self->_isDirtyGrid))
  {
    return 0;
  }

  topLeft = range->_topLeft;
  bottomRight = range->_bottomRight;
  v10 = *&range->_topLeft & 0xFFFF00000000;
  v11 = *&bottomRight & 0xFFFF00000000;
  v12 = *&range->_topLeft;
  if (v12 != 0x7FFFFFFF || v10 == 0x7FFF00000000 || v11 == 0x7FFF00000000)
  {
    if (v12 != 0x7FFFFFFF && v10 == 0x7FFF00000000 && v11 == 0x7FFF00000000)
    {
      v17 = 0x7FFFLL;
      if (bottomRight.row != 0x7FFFFFFF)
      {
        v19 = 0;
        if ((restrictions & 2) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v17 = WORD2(*&range->_topLeft);
    }

    v18 = range->_bottomRight;
  }

  else
  {
    v17 = WORD2(*&range->_topLeft);
    if (bottomRight.row == 0x7FFFFFFFLL)
    {
      topLeft.row = 0;
      v18.row = 0x7FFFFFFF;
    }

    else
    {
      v18.row = range->_bottomRight;
    }
  }

  v19 = v17;
  v17 = WORD2(*&range->_bottomRight);
  bottomRight.row = v18.row;
  if ((restrictions & 2) == 0)
  {
LABEL_26:
    if ((restrictions & 1) == 0)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22111CECC;
      v23[3] = &unk_27845F2B8;
      v23[4] = &v25;
      objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v19, range, restrictions, 0, v23);
LABEL_34:
      v7 = v26[3];
      _Block_object_dispose(&v25, 8);
      return v7;
    }

    v20 = (&self->_isInACycleGrid & ((restrictions << 61) >> 63));
    p_containsAFormulaGrid = &self->_containsAFormulaGrid;
    goto LABEL_38;
  }

LABEL_30:
  if (restrictions)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22111CEB4;
    v24[3] = &unk_27845F2B8;
    v24[4] = &v25;
    objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v19, range, restrictions, 0, v24);
    goto LABEL_34;
  }

  if ((restrictions & 4) != 0)
  {
    p_containsAFormulaGrid = &self->_isDirtyAndNotInACycleGrid;
  }

  else
  {
    p_containsAFormulaGrid = &self->_isDirtyGrid;
  }

  v20 = 0;
LABEL_38:

  return sub_2215C3704(p_containsAFormulaGrid, v19, topLeft.row, v17, bottomRight.row, v20);
}

- (vector<TSUCellCoord,)cellsWithRecordsInRange:(TSCECellDependencies *)self formulaCellsOnly:(SEL)only
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_22111D014;
  v13 = sub_22111D038;
  v14 = &unk_22188E88F;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22111D050;
  v8[3] = &unk_27845F2B8;
  v8[4] = &v9;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, only, a4, a5, 0, v8);
  v6 = v10;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211230D4(retstr, v6[6], v6[7], (v6[7] - v6[6]) >> 3);
  _Block_object_dispose(&v9, 8);
  result = __p;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return result;
}

- (void)cellsReferencingRange:(const TSCERangeCoordinate *)range fromOwnerID:(unsigned __int16)d outFormulaCoords:(void *)coords
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22111D1DC;
  v5[3] = &unk_27845F318;
  dCopy = d;
  v5[4] = coords;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, a2, range, 0, 0, v5);
}

- (void)formulaCellsReferencingCellsInRange:(const TSCERangeCoordinate *)range outFormulaCells:(void *)cells
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5812000000;
  v11 = sub_22111D510;
  v12 = sub_22111D51C;
  v13 = &unk_22188E88F;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22111D524;
  v7[3] = &unk_27845F340;
  v7[4] = &v8;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, a2, range, 0, 0, v7);
  sub_2212E0430((v9 + 6), self->_dependencyTracker, &v6);
  TSCECellRefSet::addCellRefs(cells, &v6);
  sub_22107C800(&v6, v6._coordsForOwnerUid.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v8, 8);
  sub_221122744(v14);
}

- (void)formulaCellsReferencingThisOwner:(void *)owner
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x5812000000;
  v10 = sub_22111D510;
  v11 = sub_22111D51C;
  v12 = &unk_22188E88F;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22111D698;
  v6[3] = &unk_27845F368;
  v6[4] = &v7;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 0, v6);
  sub_2212E0430((v8 + 6), self->_dependencyTracker, &v5);
  TSCECellRefSet::addCellRefs(owner, &v5);
  sub_22107C800(&v5, v5._coordsForOwnerUid.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v7, 8);
  sub_221122744(v13);
}

- (void)formulaCellsInThisOwner:(void *)owner
{
  v6 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, self->_internalOwnerID, v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22111D748;
  v8[3] = &unk_27845F388;
  v8[4] = v6;
  v8[5] = v7;
  v8[6] = owner;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, v7, 1, 0, v8);
}

- (void)formulaCellsInRange:(const TSCERangeCoordinate *)range rewriteSpec:(id)spec outFormulaCells:(void *)cells
{
  specCopy = spec;
  v12 = objc_msgSend_rewriteType(specCopy, v9, v10, v11);
  v15 = objc_msgSend_rewriteTypeUsesAmendRewriteSpec_(TSCEDependencyTracker, v13, v12, v14);
  v18 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, v16, self->_internalOwnerID, v17);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22111D89C;
  v22[3] = &unk_27845F3D8;
  v24 = v18;
  v25 = v19;
  cellsCopy = cells;
  v27 = v15;
  v20 = specCopy;
  v23 = v20;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v21, range, 1, 0, v22);
}

- (void)formulaCellsReferencingIndexes:(id)indexes rowIndexes:(id)rowIndexes outFormulaCells:(void *)cells
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x5812000000;
  v12 = sub_22111D510;
  v13 = sub_22111D51C;
  v14 = &unk_22188E88F;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22111DC6C;
  v8[3] = &unk_27845F340;
  v8[4] = &v9;
  objc_msgSend_applyBlockToRecordsAtIndexes_rowIndexes_cellRestrictions_doWillModify_block_(self, a2, indexes, rowIndexes, 0, 0, v8);
  sub_2212E0430((v10 + 6), self->_dependencyTracker, &v7);
  TSCECellRefSet::addCellRefs(cells, &v7);
  sub_22107C800(&v7, v7._coordsForOwnerUid.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v9, 8);
  sub_221122744(v15);
}

- (void)formulaCellsReferencingCellsAffectedByRemoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v10 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9);
  v16[0] = objc_msgSend_affectedRangeForRemoveRows(v10, v11, v12, v13);
  v16[1] = v14;

  objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(self, v15, v16, cells);
}

- (void)formulaCellsReferencingCellsAffectedByInsertRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v10 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9);
  v16[0] = objc_msgSend_affectedRangeForInsertRows(v10, v11, v12, v13);
  v16[1] = v14;

  objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(self, v15, v16, cells);
}

- (void)formulaCellsReferencingCellsAffectedByMoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v10 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9);
  v16[0] = objc_msgSend_affectedRangeForMoveRows(v10, v11, v12, v13);
  v16[1] = v14;

  objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(self, v15, v16, cells);
}

- (BOOL)insertCellRecord:(TSCECellRecord *)record doWillModify:(BOOL)modify
{
  if (!record)
  {
    return 0;
  }

  modifyCopy = modify;
  v14 = record->var4 | (record->var5 << 32);
  v7 = objc_msgSend_tileForCoord_createIfMissing_(self, a2, &v14, 1);
  v11 = v7;
  if (modifyCopy)
  {
    objc_msgSend_willModify(v7, v8, v9, v10);
  }

  if (v11)
  {
    inserted = objc_msgSend_insertCellRecord_cellDependencies_(v11, v8, record, self);
  }

  else
  {
    inserted = 0;
  }

  return inserted;
}

- (void)removeDependentEdge:(const TSUCellCoord *)edge edge:(const TSCEInternalCellReference *)a4
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, edge, 1);
  if (CellRecord_willModifyOnTile)
  {
    v8 = CellRecord_willModifyOnTile;
    sub_2215C5434(CellRecord_willModifyOnTile, a4, 0);
    if ((*(v8 + 38) & 4) == 0 && (sub_2215C5AB8(v8) & 1) == 0 && !sub_2215C5AF0(v8))
    {

      objc_msgSend_markCellRecordForPruning_(self, v9, edge, v10);
    }
  }
}

- (void)markCellRecordForPruning:(const TSUCellCoord *)pruning
{
  ownerIndex = self->_ownerIndex;
  v6 = ownerIndex > 4;
  v7 = (1 << ownerIndex) & 0x1A;
  if (v6 || v7 == 0)
  {

    (MEMORY[0x2821F9670])(self, sel_removeCellRecordAt_, pruning);
  }

  else
  {
    v9 = objc_msgSend_tileForCoord_(self, a2, pruning, v3);
    if (v9)
    {
      objc_msgSend_incrementPruningNeededRecords(v9, v10, v11, v12);
      dependencyTracker = self->_dependencyTracker;
      internalOwnerID = self->_internalOwnerID;

      MEMORY[0x2821F9670](dependencyTracker, sel_markOwnerIDHavingRecordsToPrune_, internalOwnerID, v13);
    }
  }
}

- (void)removeCellRecordAt:(const TSUCellCoord *)at
{
  v6 = objc_msgSend_tileForCoord_(self, a2, at, v3);
  if (v6)
  {
    v7 = *at;

    (MEMORY[0x2821F9670])(v6, sel_removeCellRecord_cellDependencies_, v7, self);
  }
}

- (void)pruneEmptyCellRecords:(id)records timeout:(double)timeout
{
  recordsCopy = records;
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  while (begin != var0)
  {
    v11 = *begin;
    if (objc_msgSend_pruningNeededRecords(*begin, v6, v7, v8))
    {
      objc_msgSend_pruneEmptyRecords_(v11, v6, self, v8);
      if (recordsCopy)
      {
        objc_msgSend_timeIntervalSinceNow(recordsCopy, v6, v7, v8);
        if (-v12 > timeout)
        {
          goto LABEL_8;
        }
      }
    }

    ++begin;
  }

  objc_msgSend_clearOwnerIDHavingRecordsToPrune_(self->_dependencyTracker, v6, self->_internalOwnerID, v8);
LABEL_8:
}

- (BOOL)replaceCellRecord:(TSCECellRecord *)record
{
  v12 = record->var4 | (record->var5 << 32);
  v5 = objc_msgSend_tileForCoord_createIfMissing_(self, a2, &v12, 1);
  objc_msgSend_willModify(v5, v6, v7, v8);
  if (v5)
  {
    v10 = objc_msgSend_replaceCellRecord_cellDependencies_(v5, v9, record, self);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v5 = TSKUIDStruct::description(&self->_ownerUID);
  v9 = objc_msgSend_userFriendlyOwnerName(self, v6, v7, v8);
  IsUnregistering = objc_msgSend_ownerIdIsUnregistering_(self->_dependencyTracker, v10, self->_internalOwnerID, v11);
  v13 = &stru_2834BADA0;
  if (IsUnregistering)
  {
    v13 = @"[UNREGISTERING]";
  }

  v14 = v13;
  if (objc_msgSend_isEqual_(v9, v15, v5, v16))
  {
    v48._lower = sub_2212C4A5C(&self->_ownerUID, self->_ownerIndex);
    v48._upper = v19;
    if (v48._lower == self->_ownerUID._lower && v19 == self->_ownerUID._upper)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_msgSend_stringForOwnerKind_(TSCECellDependenciesPrinter, v19, self->_ownerIndex, v20);
      v25 = objc_msgSend_stringWithFormat_(v21, v23, @"%@ %@ (%@) %@", v24, v9, v22, v5, v14, v48._lower, v48._upper);
      objc_msgSend_setOwnerName_(dependenciesCopy, v26, v25, v27);
    }

    else
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = TSKUIDStruct::description(&v48);
      v34 = objc_msgSend_stringForOwnerKind_(TSCECellDependenciesPrinter, v32, self->_ownerIndex, v33);
      v22 = objc_msgSend_stringWithFormat_(v30, v35, @"%@-%@", v36, v31, v34);

      v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%@ (%@) %@", v38, v22, v5, v14);
      objc_msgSend_setOwnerName_(dependenciesCopy, v39, v25, v40);
    }
  }

  else
  {
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%@ (%@) %@", v18, v9, v5, v14);
    objc_msgSend_setOwnerName_(dependenciesCopy, v28, v22, v29);
  }

  v41 = sub_2215C2678(&self->_isDirtyGrid);
  objc_msgSend_setNumDirtyCells_(dependenciesCopy, v42, v41, v43);
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  while (begin != var0)
  {
    v46 = *begin;
    objc_msgSend_collectDependencies_cellDependencies_(v46, v47, dependenciesCopy, self);

    ++begin;
  }
}

- (void)sortCellRecords
{
  begin = self->_tiles.__begin_;
  var0 = self->_tiles.var0;
  while (begin != var0)
  {
    v6 = *begin++;
    objc_msgSend_sortCellRecords(v6, a2, v2, v3);
  }
}

- (unint64_t)computedNumberOfDirtyPrecedents:(const TSUCellCoord *)precedents
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, precedents, 0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (CellRecord_willModifyOnTile)
  {
    v5 = (*(CellRecord_willModifyOnTile + 38) >> 1) & 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22111E59C;
    v8[3] = &unk_27845F428;
    v9 = v5;
    v8[4] = self;
    v8[5] = &v10;
    sub_2215C5898(CellRecord_willModifyOnTile, v8);
    v6 = v11[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

- (id)explainDirtyPrecedentCount:(const TSUCellCoord *)count
{
  v3 = MEMORY[0x277CCAB68];
  v4 = NSStringFromTSUCellCoord();
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"CellDependencies for %@\n", v6, v4);

  return 0;
}

- (id)precedentsAsString:(const TSUCellCoord *)string dirtyOnly:(BOOL)only
{
  v4 = MEMORY[0x277CCAB68];
  v5 = NSStringFromTSUCellCoord();
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"Cell Precedents of %@:\n", v7, v5);

  return v8;
}

- (id)descriptionOfCellsInRange:(const TSCERangeCoordinate *)range dirtyOnly:(BOOL)only
{
  onlyCopy = only;
  v7 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, range, only);
  if (onlyCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22111E8C8;
  v12[3] = &unk_27845F450;
  v9 = v7;
  v13 = v9;
  objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(self, v10, range, v8, 0, v12);

  return v9;
}

- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)cell outCellRefs:(void *)refs
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, cell, 1);
  if (CellRecord_willModifyOnTile)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22111E9DC;
    v7[3] = &unk_27845F4A0;
    v7[4] = self;
    v7[5] = refs;
    sub_2215C5978(CellRecord_willModifyOnTile, v7);
  }
}

- (void)adjustDirtyPrecedentCount:(TSCECellRecord *)count isInitialCell:(BOOL)cell adjustBy:(unint64_t)by
{
  if (count)
  {
    var2 = count->var2;
    LODWORD(v6) = !cell;
    if (var2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v6;
    }

    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, a2, count, var2 + by + v6);
  }
}

- (void)adjustDirtyCountAndPushDependents:(TSCECellRecord *)dependents outDependents:(id)outDependents isInitialCell:(BOOL)cell adjustBy:(unint64_t)by
{
  cellCopy = cell;
  outDependentsCopy = outDependents;
  var2 = dependents->var2;
  objc_msgSend_adjustDirtyPrecedentCount_isInitialCell_adjustBy_(self, v11, dependents, cellCopy, by);
  if (!var2)
  {
    objc_msgSend_pushDirectDependentsIfNotBothInCyle_outDependents_(self, v12, dependents, outDependentsCopy);
  }
}

- (void)pushDirectDependentsIfNotBothInCyle:(TSCECellRecord *)cyle outDependents:(id)dependents
{
  dependentsCopy = dependents;
  v7 = dependentsCopy;
  if ((cyle->var6 & 2) != 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22111ED14;
    v15[3] = &unk_27845F4F0;
    v15[4] = self;
    cyleCopy = cyle;
    v16 = dependentsCopy;
    sub_2215C5978(cyle, v15);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v14 = 1065353216;
    v8 = sub_2215C5B9C(cyle, v13);
    internalOwnerID = self->_internalOwnerID;
    v11 = cyle->var4 | (cyle->var5 << 32);
    v12 = internalOwnerID;
    objc_msgSend_addCellRefs_fromCellRef_(v7, v10, v8, &v11);
    sub_221122744(v13);
  }
}

- (void)clearCycleAndPushDependents:(TSCECellRecord *)dependents outDependents:(id)outDependents
{
  outDependentsCopy = outDependents;
  var6 = dependents->var6;
  if ((var6 & 2) != 0)
  {
    objc_msgSend_setInACycle_inACycle_(self, v6, dependents, 0);
  }

  if (!dependents->var2)
  {
    internalOwnerID = self->_internalOwnerID;
    v11 = dependents->var4 | (dependents->var5 << 32);
    v12 = internalOwnerID;
    objc_msgSend_dgl_markDependentsDirty_(self->_dependencyTracker, v6, &v11, v7);
  }

  if ((var6 & 2) != 0)
  {
    objc_msgSend_pushDirectDependentsIfNotBothInCyle_outDependents_(self, v6, dependents, outDependentsCopy);
  }
}

- (BOOL)hasDependentsOfCell:(const TSCEInternalCellReference *)cell
{
  CellRecordForIntCellRef_willModifyOnTile = objc_msgSend_findCellRecordForIntCellRef_willModifyOnTile_(self, a2, cell, 0);
  if (CellRecordForIntCellRef_willModifyOnTile && sub_2215C5AF0(CellRecordForIntCellRef_willModifyOnTile))
  {
    return 1;
  }

  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v6, cell->tableID, v7);
  if (!v9)
  {
    return 0;
  }

  v13 = v9;
  v14 = objc_msgSend_rangeDependencies(v9, v10, v11, v12);
  if (objc_msgSend_hasDependentsAtCoord_(v14, v15, cell, v16))
  {
    hasDependentsAtCoord = 1;
  }

  else
  {
    v20 = objc_msgSend_spanningRowDependencies(v13, v17, v18, v19);
    if (objc_msgSend_hasDependentsAtCoord_(v20, v21, cell, v22))
    {
      hasDependentsAtCoord = 1;
    }

    else
    {
      v26 = objc_msgSend_spanningColumnDependencies(v13, v23, v24, v25);
      hasDependentsAtCoord = objc_msgSend_hasDependentsAtCoord_(v26, v27, cell, v28);
    }
  }

  return hasDependentsAtCoord;
}

- (vector<TSCEInternalCellReference,)dependentsOfCell:(TSCECellDependencies *)self
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x4812000000;
  v33 = sub_22111F378;
  v34 = sub_22111F39C;
  v35 = &unk_22188E88F;
  v37 = 0;
  v38 = 0;
  __p = 0;
  CellRecordForIntCellRef_willModifyOnTile = objc_msgSend_findCellRecordForIntCellRef_willModifyOnTile_(self, a3, a4, 0);
  if (CellRecordForIntCellRef_willModifyOnTile)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22111F3B4;
    v29[3] = &unk_27845F518;
    v29[4] = &v30;
    sub_2215C57F8(CellRecordForIntCellRef_willModifyOnTile, v29);
  }

  v10 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self->_dependencyTracker, v8, a4->tableID, v9);
  v14 = v10;
  if (v10)
  {
    v15 = objc_msgSend_rangeDependencies(v10, v11, v12, v13);
    objc_msgSend_processDependentsForDFS_coord_outCells_(v15, v16, self, a4, v31 + 6);

    v20 = objc_msgSend_spanningRowDependencies(v14, v17, v18, v19);
    objc_msgSend_processDependentsForDFS_coord_outCells_(v20, v21, self, a4, v31 + 6);

    v25 = objc_msgSend_spanningColumnDependencies(v14, v22, v23, v24);
    objc_msgSend_processDependentsForDFS_coord_outCells_(v25, v26, self, a4, v31 + 6);
  }

  v27 = v31;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221122D00(retstr, v27[6], v27[7], 0xAAAAAAAAAAAAAAABLL * ((v27[7] - v27[6]) >> 2));
  _Block_object_dispose(&v30, 8);
  result = __p;
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  return result;
}

- (void)depthFirstSearch:(const TSCEInternalCellReference *)search state:(void *)state
{
  selfCopy = self;
  objc_msgSend_dependentsOfCell_(self, a2, search, state);
  v72 = *search;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  sub_221122D00(&v73, v80, v81, 0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 2));
  v76 = 0;
  v77 = 0;
  v79 = 0;
  v78 = 0;
  sub_22112318C(&v69, 1uLL, &v72);
  sub_22111EF5C(state + 48, search);
  sub_221122A94(state + 9, search, search);
  v7 = *state;
  searchCopy = search;
  v8 = sub_2211227C8(state + 1, search, &unk_2217E0320, &searchCopy);
  v8[4] = v7;
  v8[5] = v7;
  ++*state;
  v9 = v70;
  if (v69 == v70)
  {
    goto LABEL_70;
  }

  v54 = v56;
  do
  {
    v10 = (v9 - 72);
    if (*(v9 - 56) != *(v9 - 48))
    {
      v68 = 0;
      v67 = 0;
      v11 = *(v9 - 48);
      v12 = *(v11 - 12);
      v11 -= 12;
      v13 = *(v11 + 8);
      *(v9 - 48) = v11;
      v67 = v12;
      v68 = v13;
      if (sub_221123474(state + 1, &v67))
      {
        if (sub_221123474(state + 9, &v67))
        {
          searchCopy = &v67;
          v14 = sub_2211227C8(state + 1, &v67, &unk_2217E0320, &searchCopy)[4];
          searchCopy = (v9 - 72);
          if (v14 >= sub_2211227C8(state + 1, (v9 - 72), &unk_2217E0320, &searchCopy)[5])
          {
            if (*v10 == v67 && ((v67 ^ *v10) & 0x101FFFF00000000) == 0 && *(v9 - 64) == v68)
            {
              *(v9 - 8) = 1;
            }
          }

          else
          {
            searchCopy = &v67;
            v15 = sub_2211227C8(state + 1, &v67, &unk_2217E0320, &searchCopy)[4];
            searchCopy = (v9 - 72);
            sub_2211227C8(state + 1, (v9 - 72), &unk_2217E0320, &searchCopy)[5] = v15;
          }
        }
      }

      else
      {
        sub_22111EF5C(v9 - 32, &v67);
        objc_msgSend_dependentsOfCell_(selfCopy, v36, &v67, v37);
        *&v57 = v67;
        DWORD2(v57) = v68;
        v58[1] = 0;
        v59 = 0;
        v58[0] = 0;
        sub_221122D00(v58, searchCopy, v65, 0xAAAAAAAAAAAAAAABLL * ((v65 - searchCopy) >> 2));
        __p = 0;
        v61 = 0;
        v63 = 0;
        v62 = 0;
        v38 = v70;
        if (v70 >= v71)
        {
          v39 = sub_22112355C(&v69, &v57);
        }

        else
        {
          sub_2211232E8(&v69, v70, &v57);
          v39 = v38 + 72;
        }

        v70 = v39;
        v40 = *state;
        v82 = &v67;
        v41 = sub_2211227C8(state + 1, &v67, &unk_2217E0320, &v82);
        v41[4] = v40;
        v41[5] = v40;
        ++*state;
        sub_22111EF5C(state + 48, &v67);
        sub_221122A94(state + 9, &v67, &v67);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        if (v58[0])
        {
          v58[1] = v58[0];
          operator delete(v58[0]);
        }

        if (searchCopy)
        {
          v65 = searchCopy;
          operator delete(searchCopy);
        }
      }

      v9 = v70;
      continue;
    }

    searchCopy = (v9 - 72);
    v16 = sub_2211227C8(state + 1, (v9 - 72), &unk_2217E0320, &searchCopy)[5];
    for (i = *(v9 - 32); i != *(v9 - 24); i += 3)
    {
      v18 = *i;
      DWORD2(v57) = i[2];
      *&v57 = v18;
      searchCopy = &v57;
      if (sub_2211227C8(state + 1, &v57, &unk_2217E0320, &searchCopy)[5] < v16)
      {
        searchCopy = i;
        v16 = sub_2211227C8(state + 1, i, &unk_2217E0320, &searchCopy)[5];
      }
    }

    searchCopy = (v9 - 72);
    sub_2211227C8(state + 1, (v9 - 72), &unk_2217E0320, &searchCopy)[5] = v16;
    searchCopy = (v9 - 72);
    if (v16 != sub_2211227C8(state + 1, (v9 - 72), &unk_2217E0320, &searchCopy)[4])
    {
      goto LABEL_68;
    }

    searchCopy = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0x7FFF7FFFFFFFLL;
    v68 = 0xFFFF;
    do
    {
      v19 = *(state + 7);
      v20 = *(v19 - 12);
      v19 -= 12;
      v21 = *(v19 + 8);
      v67 = v20;
      v68 = v21;
      *(state + 7) = v19;
      sub_2211238A8(state + 9, &v67);
      sub_22111EF5C(&searchCopy, &v67);
      v25 = *v10 == v67 && ((v67 ^ *v10) & 0x101FFFF00000000) == 0;
    }

    while (!v25 || *(v9 - 64) != v68);
    v27 = searchCopy;
    v26 = v65;
    v28 = (0xAAAAAAAAAAAAAAABLL * ((v65 - searchCopy) >> 2) > 1) | *(v9 - 8);
    if (v65 != searchCopy)
    {
      v29 = 0;
      v30 = 0;
      while (1)
      {
        if (v29)
        {
          v31 = objc_msgSend_formulaOwnerId(v29, v22, row_low, v24, v54);
          row_low = LOWORD(v27[1].row);
          if (v31 == row_low)
          {
            if (v30)
            {
              goto LABEL_29;
            }

            goto LABEL_32;
          }
        }

        else
        {
          row_low = LOWORD(v27[1].row);
        }

        v29 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(selfCopy->_dependencyTracker, v22, row_low, v24, v54);

        v35 = objc_msgSend_cellDependencies(v29, v32, v33, v34);

        v30 = v35;
        if (v35)
        {
LABEL_29:
          if ((v28 & 1) != objc_msgSend_isCellInACycle_(v30, v22, v27, v24))
          {
            row_low = objc_msgSend_findCellRecord_willModifyOnTile_(v30, v22, v27, 1);
            if (row_low)
            {
              objc_msgSend_setInACycle_inACycle_(v30, v22, row_low, v28 & 1);
            }
          }
        }

LABEL_32:
        v27 = (v27 + 12);
        if (v27 == v26)
        {
          v27 = searchCopy;
          v26 = v65;
          goto LABEL_49;
        }
      }
    }

    v30 = 0;
    v29 = 0;
LABEL_49:
    v57 = 0u;
    *v58 = 0u;
    LODWORD(v59) = 1065353216;
    while (v27 != v26)
    {
      if (v29)
      {
        v42 = objc_msgSend_formulaOwnerId(v29, v22, row_low, v24);
        row_low = LOWORD(v27[1].row);
        if (v42 == row_low)
        {
          if (!v30)
          {
            goto LABEL_65;
          }

          goto LABEL_57;
        }
      }

      else
      {
        row_low = LOWORD(v27[1].row);
      }

      v29 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(selfCopy->_dependencyTracker, v22, row_low, v24, v54);

      v46 = objc_msgSend_cellDependencies(v29, v43, v44, v45);

      v30 = v46;
      if (!v46)
      {
        goto LABEL_65;
      }

LABEL_57:
      CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v30, v22, v27, 1, v54);
      v48 = CellRecord_willModifyOnTile;
      if (CellRecord_willModifyOnTile)
      {
        if (v28)
        {
          if (!*(CellRecord_willModifyOnTile + 16))
          {
            objc_msgSend_dgl_markDependentsDirty_(selfCopy->_dependencyTracker, v22, v27, v24);
          }

          v49 = v28;
          v50 = selfCopy;
          v51 = objc_msgSend_dgl_computedNumberOfDirtyPrecedents_(selfCopy->_dependencyTracker, v22, v27, v24);
          objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(v30, v52, v48, v51 + 1);
          if (!v51)
          {
            objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(v50->_dependencyTracker, v53, v27, v48, 0);
          }

          selfCopy = v50;
          objc_msgSend_dgl_cellRefsForCycleCellsReferringToCell_outCellRefs_(v50->_dependencyTracker, v53, v27, &v57);
          v28 = v49;
        }

        else
        {
          sub_2212DFCE8(&v57, v27);
        }
      }

LABEL_65:
      v27 = (v27 + 12);
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v56[0] = sub_22111FC78;
    v56[1] = &unk_27845F540;
    v56[2] = selfCopy;
    sub_2212DFEC0(&v57, v55);
    sub_221122744(&v57);

    if (searchCopy)
    {
      v65 = searchCopy;
      operator delete(searchCopy);
    }

LABEL_68:
    v9 = v70 - 72;
    sub_22112341C(&v69, (v70 - 72));
    v70 = v9;
  }

  while (v69 != v9);
LABEL_70:
  *&v57 = &v69;
  sub_221123394(&v57);
  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }
}

- (void)findAndRecordCyclesInDirtyCells:(void *)cells outCellsInCycles:(id)cycles
{
  cyclesCopy = cycles;
  if (objc_msgSend_hasDirtyCells(self, v7, v8, v9))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22111FD64;
    v11[3] = &unk_27845F568;
    v11[4] = self;
    cellsCopy = cells;
    v12 = cyclesCopy;
    objc_msgSend_applyBlockToRecords_doWillModify_block_(self, v10, 2, 0, v11);
  }
}

- (void)setContainsAFormulaInGrid:(unsigned __int16)grid row:(unsigned int)row containsFormula:(BOOL)formula
{
  p_containsAFormulaGrid = &self->_containsAFormulaGrid;
  if (formula)
  {
    sub_2215C2F88(p_containsAFormulaGrid, grid, row);
  }

  else
  {
    sub_2215C3280(p_containsAFormulaGrid, grid, *&row);
  }
}

- (void)setDirtyInGrid:(unsigned __int16)grid row:(unsigned int)row isDirty:(BOOL)dirty
{
  v5 = *&row;
  gridCopy = grid;
  p_isDirtyGrid = &self->_isDirtyGrid;
  if (dirty)
  {
    sub_2215C2F88(p_isDirtyGrid, grid, row);
    if (!sub_2215C3528(&self->_isInACycleGrid._tiles.__begin_, gridCopy, v5))
    {

      sub_2215C2F88(&self->_isDirtyAndNotInACycleGrid, gridCopy, v5);
    }
  }

  else
  {
    sub_2215C3280(p_isDirtyGrid, grid, *&row);

    sub_2215C3280(&self->_isDirtyAndNotInACycleGrid, gridCopy, v5);
  }
}

- (void)setInACycleInGrid:(unsigned __int16)grid row:(unsigned int)row inACycle:(BOOL)cycle
{
  v5 = *&row;
  gridCopy = grid;
  p_isInACycleGrid = &self->_isInACycleGrid;
  if (cycle)
  {
    sub_2215C2F88(p_isInACycleGrid, grid, row);

    sub_2215C3280(&self->_isDirtyAndNotInACycleGrid, gridCopy, v5);
  }

  else
  {
    sub_2215C3280(p_isInACycleGrid, grid, *&row);
    if (sub_2215C3528(&self->_isDirtyGrid._tiles.__begin_, gridCopy, v5))
    {

      sub_2215C2F88(&self->_isDirtyAndNotInACycleGrid, gridCopy, v5);
    }
  }
}

- (unint64_t)dirtyPrecedentsCountOfCellRef:(const TSCECellRef *)ref
{
  dependencyTracker = self->_dependencyTracker;
  tableUID = ref->_tableUID;
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(dependencyTracker, a2, &tableUID, v3);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_dirtyPrecedentsCountOfCellCoord_(v6, v7, ref, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)dirtyPrecedentsCountOfCellCoord:(const TSUCellCoord *)coord
{
  result = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, coord, 0);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (BOOL)isCellRefInACycle:(const TSCEInternalCellReference *)cycle
{
  cycleCopy = cycle;
  tableID = cycle->tableID;
  if (tableID == self->_internalOwnerID)
  {

    return objc_msgSend_isCellInACycle_(self, a2, cycleCopy, v3);
  }

  else
  {
    v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, a2, tableID, v3);
    v10 = v7;
    if (v7)
    {
      LOBYTE(cycleCopy) = objc_msgSend_isCellInACycle_(v7, v8, cycleCopy, v9);
    }

    return (v10 != 0) & cycleCopy;
  }
}

- (TSCECellCoordSet)cellsInACycle
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  result = sub_2215C25E8(&self->_isInACycleGrid);
  if ((result & 1) == 0)
  {
    sub_2215C2BFC(v8, &self->_isInACycleGrid);
    v7 = 0;
    while (1)
    {
      result = sub_2215C2C08(v8, &v7 + 1, &v7);
      if (!result)
      {
        break;
      }

      v6.row = v7;
      v6.column = WORD2(v7);
      TSCECellCoordSet::addCellCoord(retstr, &v6);
    }
  }

  return result;
}

- (TSCECellCoordSet)dirtyCells
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  result = sub_2215C25E8(&self->_isDirtyGrid);
  if ((result & 1) == 0)
  {
    sub_2215C2BFC(v8, &self->_isDirtyGrid);
    v7 = 0;
    while (1)
    {
      result = sub_2215C2C08(v8, &v7 + 1, &v7);
      if (!result)
      {
        break;
      }

      v6.row = v7;
      v6.column = WORD2(v7);
      TSCECellCoordSet::addCellCoord(retstr, &v6);
    }
  }

  return result;
}

- (BOOL)isCellRefDirty:(const TSCEInternalCellReference *)dirty
{
  dirtyCopy = dirty;
  tableID = dirty->tableID;
  if (tableID == self->_internalOwnerID)
  {

    return objc_msgSend_isCellDirty_(self, a2, dirtyCopy, v3);
  }

  else
  {
    v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self->_dependencyTracker, a2, tableID, v3);
    v10 = v7;
    if (v7)
    {
      LOBYTE(dirtyCopy) = objc_msgSend_isCellDirty_(v7, v8, dirtyCopy, v9);
    }

    return (v10 != 0) & dirtyCopy;
  }
}

- (void)setDirtySelfPlusPrecedentsCount:(TSCECellRecord *)count dirtyCount:(unint64_t)dirtyCount
{
  if (count)
  {
    var2 = count->var2;
    count->var2 = dirtyCount;
    if (!dirtyCount || !var2)
    {
      objc_msgSend_setDirtyInGrid_row_isDirty_(self, a2, count->var5, count->var4, dirtyCount != 0);
      dirtyCount = count->var2;
    }

    if (dirtyCount == 1)
    {
      internalOwnerID = self->_internalOwnerID;
      v8 = count->var4 | (count->var5 << 32);
      v9 = internalOwnerID;
      objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(self->_dependencyTracker, a2, &v8, count, 0);
    }
  }
}

- (void)incrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)count
{
  if ((count->var6 & 0x100) == 0)
  {
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, a2, count, count->var2 + 1);
  }
}

- (void)decrDirtySelfPlusPrecedentsCount:(TSCECellRecord *)count
{
  if ((count->var6 & 0x100) == 0)
  {
    var2 = count->var2;
    if (var2)
    {

      objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, a2, count, var2 - 1);
    }

    else
    {
      dependencyTracker = self->_dependencyTracker;
      internalOwnerID = self->_internalOwnerID;
      v6 = MEMORY[0x277CCACA8];
      v11 = NSStringFromTSUCellCoord();
      v9 = objc_msgSend_stringWithFormat_(v6, v7, @"Avoided underflow in dirtySelfPlusPrecedentsCount for cell: %@", v8, v11);
      objc_msgSend_assertForInconsistentDependGraph_assertMessage_(dependencyTracker, v10, internalOwnerID, v9);
    }
  }
}

- (void)setInACycle:(TSCECellRecord *)cycle inACycle:(BOOL)aCycle
{
  if (cycle)
  {
    var6 = cycle->var6;
    if (aCycle != (var6 & 2) >> 1)
    {
      v5 = var6 & 0xFFFD;
      if (aCycle)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      cycle->var6 = v5 | v6;
      objc_msgSend_setInACycleInGrid_row_inACycle_(self, a2, cycle->var5, cycle->var4, aCycle);
    }
  }
}

- (void)setContainsFormula:(TSCECellRecord *)formula containsFormula:(BOOL)containsFormula
{
  if (formula)
  {
    if (containsFormula)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    formula->var6 = formula->var6 & 0xFFFB | v4;
    objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(self, a2, formula->var5, formula->var4, containsFormula);
  }
}

- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)coord
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, coord, 0);

  return MEMORY[0x2821F9670](self, sel_cellRecordHasPrecedents_, CellRecord_willModifyOnTile, v5);
}

- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, coord, 0);
  if (CellRecord_willModifyOnTile)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_221120854;
    v6[3] = &unk_27845F588;
    v6[4] = set;
    sub_2215C574C(CellRecord_willModifyOnTile, v6);
  }
}

- (void)addDependentsAtCoord:(const TSUCellCoord *)coord toCellReferenceSet:(void *)set
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, coord, 0);
  if (CellRecord_willModifyOnTile)
  {

    sub_2215C5C0C(CellRecord_willModifyOnTile, set);
  }
}

- (BOOL)cellHasThisCellPrecedent:(const TSUCellCoord *)precedent precedentRef:(const TSCEInternalCellReference *)ref
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, precedent, 0);
  if (CellRecord_willModifyOnTile)
  {

    LOBYTE(CellRecord_willModifyOnTile) = sub_2215C56F4(CellRecord_willModifyOnTile, ref);
  }

  return CellRecord_willModifyOnTile;
}

- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)range cellRange:(const TSCEInternalRangeReference *)cellRange
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  TSCERangeCoordinate::asCellRect(&cellRange->var0);
  v37.origin = v8;
  v37.size = v7;
  if (cellRange->var1 == self->_internalOwnerID && (v9 = *range, (TSUCellRect::contains(&v37, v9) & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, v7, range, 0);
    if (CellRecord_willModifyOnTile)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x5812000000;
      v32 = sub_221120BE0;
      v33 = sub_221120BEC;
      v34 = &unk_22188E88F;
      memset(v35, 0, sizeof(v35));
      v36 = 1065353216;
      v19 = 0;
      v20 = &v19;
      v21 = 0x5812000000;
      v22 = sub_221120BF4;
      v23 = sub_221120C00;
      v24 = &unk_22188E88F;
      v28[0] = 0;
      v28[1] = 0;
      v25 = 0;
      v26 = 0;
      v27 = v28;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_221120C0C;
      v17[3] = &unk_27845F5B0;
      v18 = v37;
      v17[8] = cellRange;
      v17[9] = range;
      v17[4] = self;
      v17[5] = &v38;
      v17[6] = &v19;
      v17[7] = &v29;
      sub_2215C574C(CellRecord_willModifyOnTile, v17);
      if ((v39[3] & 1) == 0)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_221120D00;
        v16[3] = &unk_27845F5D8;
        v16[4] = self;
        v16[5] = &v38;
        v16[6] = cellRange;
        TSCECellCoordSet::enumerateCoordsUsingBlock(v20 + 6, v16);
        if (!*(v39 + 24))
        {
          v13 = v30 + 8;
          do
          {
            v13 = *v13;
            if (!v13)
            {
              break;
            }

            HasDeepPrecedentInRange_cellRange = objc_msgSend_dgl_cellHasDeepPrecedentInRange_cellRange_(self->_dependencyTracker, v12, (v13 + 2), cellRange);
            *(v39 + 24) = HasDeepPrecedentInRange_cellRange;
          }

          while ((HasDeepPrecedentInRange_cellRange & 1) == 0);
        }
      }

      _Block_object_dispose(&v19, 8);
      sub_22107C860(&v27, v28[0]);
      _Block_object_dispose(&v29, 8);
      sub_2210BDEC0(v35);
    }

    v10 = *(v39 + 24);
  }

  _Block_object_dispose(&v38, 8);
  return v10 & 1;
}

- (void)addCellsDependentOnBoth:(const TSCEInternalCellReference *)both precedent2:(const TSCEInternalCellReference *)precedent2 toCellCoordSet:(void *)set
{
  internalOwnerID = self->_internalOwnerID;
  if (both->tableID == internalOwnerID)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, both, 0);
    if (CellRecord_willModifyOnTile)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_221120EB0;
      v11[3] = &unk_27845F600;
      v11[4] = self;
      v11[5] = precedent2;
      v11[6] = set;
      sub_2215C57F8(CellRecord_willModifyOnTile, v11);
    }
  }

  else if (precedent2->tableID == internalOwnerID)
  {

    objc_msgSend_addCellsDependentOnBoth_precedent2_toCellCoordSet_(self, a2, precedent2, both);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_221120F24;
    v10[3] = &unk_27845F388;
    v10[4] = both;
    v10[5] = precedent2;
    v10[6] = set;
    objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, a2, 1, 0, v10);
  }
}

- (void)detectAndRepairDirtyCellsAreOnLeafQueue:(void *)queue
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_221121010;
  v3[3] = &unk_27845F240;
  v3[4] = self;
  v3[5] = queue;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 2, 1, v3);
}

- (void)markEverythingClean
{
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 1, &unk_2834A1DA0);
  sub_2215C25A0(&self->_isDirtyGrid);

  sub_2215C25A0(&self->_isInACycleGrid);
}

- (void)dirtyAllCells
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x4012000000;
  v3[3] = sub_2211211E4;
  v3[4] = nullsub_12;
  v3[5] = &unk_22188E88F;
  internalOwnerID = self->_internalOwnerID;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2211211FC;
  v2[3] = &unk_27845F648;
  v2[4] = self;
  v2[5] = v3;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 1, v2);
  _Block_object_dispose(v3, 8);
}

- (TSCEInternalCellRefSet)allCellRefs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5812000000;
  v11 = sub_22111D510;
  v12 = sub_22111D51C;
  v13 = &unk_22188E88F;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x4012000000;
  v6[3] = sub_2211211E4;
  v6[4] = nullsub_12;
  v6[5] = &unk_22188E88F;
  internalOwnerID = self->_internalOwnerID;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211213AC;
  v5[3] = &unk_27845F670;
  v5[4] = v6;
  v5[5] = &v8;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a3, 0, 0, v5);
  sub_2212DFCE4(retstr, (v9 + 6));
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return sub_221122744(v14);
}

- (TSCECellCoordSet)allCoordsContainingFormulas
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x5812000000;
  v9 = sub_221120BF4;
  v10 = sub_221120C00;
  v11 = &unk_22188E88F;
  v15[0] = 0;
  v15[1] = 0;
  v12 = 0;
  v13 = 0;
  v14 = v15;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2211214FC;
  v5[3] = &unk_27845F368;
  v5[4] = &v6;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a3, 1, 0, v5);
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v7 + 6));
  _Block_object_dispose(&v6, 8);
  sub_22107C860(&v14, v15[0]);
  return result;
}

- (void)assertDirtyPrecedentsCountConsistency
{
  if ((objc_msgSend_dirtyPrecedentCountsAreConsistent_(self, a2, 1, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCECellDependencies assertDirtyPrecedentsCountConsistency]", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 1927, 0, "assertDirtyPrecedentsCountConsistency: inconsistency detected.");

    v14 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
  }
}

- (BOOL)dirtyPrecedentCountsAreConsistent:(BOOL)consistent
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221121708;
  v5[3] = &unk_27845F698;
  v5[4] = self;
  v5[5] = v7;
  v5[6] = &v8;
  consistentCopy = consistent;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 0, 0, v5);
  v3 = *(v9 + 24);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (void)markCellCleanAndPushNextLeaves:(const TSUCellCoord *)leaves
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(self, a2, leaves, 1);
  if (CellRecord_willModifyOnTile)
  {
    v6 = CellRecord_willModifyOnTile;
    if (*(CellRecord_willModifyOnTile + 16))
    {
      objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(self, v5, CellRecord_willModifyOnTile, 0);
      internalOwnerID = self->_internalOwnerID;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_221121B54;
      v8[3] = &unk_27845F6C0;
      v9 = internalOwnerID;
      v8[4] = self;
      v8[5] = v6;
      sub_2215C57F8(v6, v8);
    }
  }
}

- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x5812000000;
  v10 = sub_221120BF4;
  v11 = sub_221120C00;
  v12 = &unk_22188E88F;
  v16[0] = 0;
  v16[1] = 0;
  v13 = 0;
  v14 = 0;
  v15 = v16;
  v4 = &v7;
  if (self->_hasExcelImportTranslationCells)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_221121EA8;
    v6[3] = &unk_27845F368;
    v6[4] = &v7;
    objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a3, 0, 0, v6);
    v4 = v8;
  }

  TSCECellCoordSet::TSCECellCoordSet(retstr, (v4 + 6));
  _Block_object_dispose(&v7, 8);
  sub_22107C860(&v15, v16[0]);
  return result;
}

- (void)appendEdgeToArchive:(void *)archive edge:(const TSCEInternalCellReference *)edge
{
  v5 = LOWORD(edge->coordinate.row) | (edge->coordinate.column << 16) | 0x1000000;
  tableID = edge->tableID;
  if (tableID == self->_internalOwnerID)
  {
    v8 = *(archive + 4);
    v7 = archive + 16;
    if (v8 == *(archive + 5))
    {
      v9 = v8 + 1;
      sub_2210BBC64(archive + 4, v8 + 1);
      *(*(archive + 3) + 4 * v8) = v5;
    }

    else
    {
      *(*(archive + 3) + 4 * v8) = v5;
      v9 = v8 + 1;
    }
  }

  else
  {
    v10 = *(archive + 8);
    if (v10 == *(archive + 9))
    {
      v12 = v10 + 1;
      sub_2210BBC64(archive + 8, v10 + 1);
      *(*(archive + 5) + 4 * v10) = v5;
      tableID = edge->tableID;
    }

    else
    {
      *(*(archive + 5) + 4 * v10) = v5;
      v12 = v10 + 1;
    }

    v7 = archive + 72;
    v13 = *(archive + 18);
    *(archive + 8) = v12;
    if (v13 == *(archive + 19))
    {
      v9 = v13 + 1;
      sub_2210BBC64(archive + 18, v13 + 1);
      *(*(archive + 10) + 4 * v13) = tableID;
    }

    else
    {
      *(*(archive + 10) + 4 * v13) = tableID;
      v9 = v13 + 1;
    }
  }

  *v7 = v9;
}

- (void)appendExpandedEdgeToArchive:(void *)archive edge:(const TSCEInternalCellReference *)edge
{
  row = edge->coordinate.row;
  column = edge->coordinate.column;
  if (edge->tableID == self->_internalOwnerID)
  {
    v7 = *(archive + 4);
    if (v7 == *(archive + 5))
    {
      v8 = v7 + 1;
      sub_2210BBC64(archive + 4, v7 + 1);
      *(*(archive + 3) + 4 * v7) = row;
    }

    else
    {
      *(*(archive + 3) + 4 * v7) = row;
      v8 = v7 + 1;
    }

    v12 = *(archive + 8);
    *(archive + 4) = v8;
    if (v12 == *(archive + 9))
    {
      v13 = v12 + 1;
      sub_2210BBC64(archive + 8, v12 + 1);
      *(*(archive + 5) + 4 * v12) = column;
    }

    else
    {
      *(*(archive + 5) + 4 * v12) = column;
      v13 = v12 + 1;
    }

    *(archive + 8) = v13;
  }

  else
  {
    v10 = *(archive + 12);
    if (v10 == *(archive + 13))
    {
      v11 = v10 + 1;
      sub_2210BBC64(archive + 12, v10 + 1);
      *(*(archive + 7) + 4 * v10) = row;
    }

    else
    {
      *(*(archive + 7) + 4 * v10) = row;
      v11 = v10 + 1;
    }

    v14 = *(archive + 16);
    *(archive + 12) = v11;
    if (v14 == *(archive + 17))
    {
      v15 = v14 + 1;
      sub_2210BBC64(archive + 16, v14 + 1);
      *(*(archive + 9) + 4 * v14) = column;
    }

    else
    {
      *(*(archive + 9) + 4 * v14) = column;
      v15 = v14 + 1;
    }

    v16 = *(archive + 20);
    *(archive + 16) = v15;
    tableID = edge->tableID;
    if (v16 == *(archive + 21))
    {
      v18 = v16 + 1;
      sub_2210BBC64(archive + 20, v16 + 1);
      *(*(archive + 11) + 4 * v16) = tableID;
    }

    else
    {
      *(*(archive + 11) + 4 * v16) = tableID;
      v18 = v16 + 1;
    }

    *(archive + 20) = v18;
  }
}

- (void)encodeToArchive:(void *)archive
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2211221F8;
  v3[3] = &unk_27845F240;
  v3[4] = self;
  v3[5] = archive;
  objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, a2, 1, 0, v3);
}

- (BOOL)cellRecordHasPrecedents:(TSCECellRecord *)precedents
{
  if (precedents)
  {
    return sub_2215C5AB8(precedents);
  }

  else
  {
    return 0;
  }
}

- (BOOL)removeSomePrecedents:(unint64_t)precedents markDependentsDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4812000000;
  v24 = sub_22111D014;
  v25 = sub_22111D038;
  v26 = &unk_22188E88F;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221122594;
  v16[3] = &unk_27845F6E8;
  v16[4] = &v21;
  v16[5] = &v17;
  v16[6] = precedents;
  objc_msgSend_applyBlockToRecords_doWillModify_block_(self, a2, 1, 0, v16);
  v8 = v22[6];
  v9 = v22[7];
  while (v8 != v9)
  {
    if (dirtyCopy)
    {
      dependencyTracker = self->_dependencyTracker;
      internalOwnerID = self->_internalOwnerID;
      v14 = *v8 & 0xFFFFFFFFFFFFLL;
      v15 = internalOwnerID;
      objc_msgSend_dgl_markCellDirty_(dependencyTracker, v6, &v14, v7);
    }

    objc_msgSend_dgl_removeFormulaForOwnerID_cellCoord_(self->_dependencyTracker, v6, self->_internalOwnerID, *v8++);
  }

  v12 = v18[3];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v12 != 0;
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
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  return self;
}

@end