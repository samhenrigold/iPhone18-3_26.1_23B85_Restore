@interface TSCEFormulaOwnerDependencies
- (BOOL)duringSubOwnerUIDUpgrade;
- (TSCEDependencyTracker)dependencyTracker;
- (TSCEFormulaOwnerDependencies)initWithContext:(id)context dependencyTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD owner:(id)owner ownerIndex:(unsigned __int16)index;
- (TSKUIDStruct)formulaOwnerUid;
- (TSUCellCoord)embiggenedCellCoord;
- (void)dealloc;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)pushRangeAndSpanningDependents:(id)dependents fromCoord:(const TSUCellCoord *)coord cellIsInACycle:(BOOL)cycle;
- (void)resetOwnerUIDForUpgrade:(const TSKUIDStruct *)upgrade forBaseOwner:(const TSKUIDStruct *)owner ownerKind:(unsigned __int16)kind;
- (void)saveToArchiver:(id)archiver;
- (void)setDependencyTracker:(id)tracker;
- (void)setOwnerIndex:(unsigned __int16)index;
- (void)unpackAfterUnarchive;
- (void)willClose;
@end

@implementation TSCEFormulaOwnerDependencies

- (TSCEFormulaOwnerDependencies)initWithContext:(id)context dependencyTracker:(id)tracker ownerID:(unsigned __int16)d ownerUID:(const TSKUIDStruct *)iD owner:(id)owner ownerIndex:(unsigned __int16)index
{
  dCopy = d;
  contextCopy = context;
  trackerCopy = tracker;
  ownerCopy = owner;
  v62.receiver = self;
  v62.super_class = TSCEFormulaOwnerDependencies;
  v17 = [(TSCEFormulaOwnerDependencies *)&v62 initWithContext:contextCopy];
  v18 = v17;
  if (v17)
  {
    v17->_formulaOwnerUid = *iD;
    v17->_formulaOwnerId = dCopy;
    v17->_ownerIndex = index;
    v19 = [TSCECellDependencies alloc];
    v21 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_ownerIndex_(v19, v20, trackerCopy, dCopy, iD, v18->_ownerIndex);
    cellDependencies = v18->_cellDependencies;
    v18->_cellDependencies = v21;

    v23 = [TSCERangeDependencies alloc];
    v25 = objc_msgSend_initWithDependTracker_ownerID_(v23, v24, trackerCopy, dCopy);
    rangeDependencies = v18->_rangeDependencies;
    v18->_rangeDependencies = v25;

    v27 = [TSCESpanningDependencies alloc];
    isColumns = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v27, v28, trackerCopy, dCopy, iD, 0);
    spanningRowDependencies = v18->_spanningRowDependencies;
    v18->_spanningRowDependencies = isColumns;

    v31 = [TSCESpanningDependencies alloc];
    v33 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v31, v32, trackerCopy, dCopy, iD, 1);
    spanningColumnDependencies = v18->_spanningColumnDependencies;
    v18->_spanningColumnDependencies = v33;

    v35 = [TSCEVolatileDependencies alloc];
    v37 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_(v35, v36, trackerCopy, dCopy, iD);
    volatileDependencies = v18->_volatileDependencies;
    v18->_volatileDependencies = v37;

    v39 = [TSCEWholeOwnerDependencies alloc];
    v41 = objc_msgSend_initWithDependTracker_ownerID_(v39, v40, trackerCopy, dCopy);
    wholeOwnerDependencies = v18->_wholeOwnerDependencies;
    v18->_wholeOwnerDependencies = v41;

    v43 = [TSCEErrorsAndWarnings alloc];
    v45 = objc_msgSend_initWithDependTracker_ownerID_(v43, v44, trackerCopy, dCopy);
    errors = v18->_errors;
    v18->_errors = v45;

    v47 = [TSCESpillSizes alloc];
    v49 = objc_msgSend_initWithDependTracker_ownerID_(v47, v48, trackerCopy, dCopy);
    spillSizes = v18->_spillSizes;
    v18->_spillSizes = v49;

    v51 = [TSCEUuidReferences alloc];
    v54 = objc_msgSend_initWithOwnerUID_(v51, v52, iD, v53);
    uuidReferences = v18->_uuidReferences;
    v18->_uuidReferences = v54;

    objc_storeStrong(&v18->_formulaOwner, owner);
    if (objc_opt_respondsToSelector())
    {
      v59 = objc_msgSend_objectToArchiveInDependencyTracker(v18->_formulaOwner, v56, v57, v58);
      calcEngineRegistrationObject = v18->_calcEngineRegistrationObject;
      v18->_calcEngineRegistrationObject = v59;
    }
  }

  return v18;
}

- (void)willClose
{
  cellDependencies = self->_cellDependencies;
  self->_cellDependencies = 0;

  rangeDependencies = self->_rangeDependencies;
  self->_rangeDependencies = 0;

  spanningColumnDependencies = self->_spanningColumnDependencies;
  self->_spanningColumnDependencies = 0;

  spanningRowDependencies = self->_spanningRowDependencies;
  self->_spanningRowDependencies = 0;

  volatileDependencies = self->_volatileDependencies;
  self->_volatileDependencies = 0;

  wholeOwnerDependencies = self->_wholeOwnerDependencies;
  self->_wholeOwnerDependencies = 0;

  errors = self->_errors;
  self->_errors = 0;

  spillSizes = self->_spillSizes;
  self->_spillSizes = 0;

  uuidReferences = self->_uuidReferences;
  self->_uuidReferences = 0;
}

- (void)dealloc
{
  objc_msgSend_willClose(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = TSCEFormulaOwnerDependencies;
  [(TSCEFormulaOwnerDependencies *)&v5 dealloc];
}

- (TSCEDependencyTracker)dependencyTracker
{
  cellDependencies = self->_cellDependencies;
  if (cellDependencies)
  {
    cellDependencies = objc_msgSend_dependencyTracker(cellDependencies, a2, v2, v3);
    v4 = vars8;
  }

  return cellDependencies;
}

- (void)setDependencyTracker:(id)tracker
{
  trackerCopy = tracker;
  cellDependencies = self->_cellDependencies;
  if (cellDependencies)
  {
    objc_msgSend_setDependencyTracker_(cellDependencies, v4, trackerCopy, v5);
    objc_msgSend_setDependencyTracker_(self->_rangeDependencies, v7, trackerCopy, v8);
    objc_msgSend_setDependencyTracker_(self->_spanningColumnDependencies, v9, trackerCopy, v10);
    objc_msgSend_setDependencyTracker_(self->_spanningRowDependencies, v11, trackerCopy, v12);
    objc_msgSend_setDependencyTracker_(self->_volatileDependencies, v13, trackerCopy, v14);
    objc_msgSend_setDependencyTracker_(self->_wholeOwnerDependencies, v15, trackerCopy, v16);
    objc_msgSend_setDependencyTracker_(self->_errors, v17, trackerCopy, v18);
    objc_msgSend_setDependencyTracker_(self->_spillSizes, v19, trackerCopy, v20);
  }
}

- (void)setOwnerIndex:(unsigned __int16)index
{
  if (self->_ownerIndex != index)
  {
    indexCopy = index;
    objc_msgSend_willModify(self, a2, index, v3);
    self->_ownerIndex = indexCopy;
    cellDependencies = self->_cellDependencies;
    if (cellDependencies)
    {

      objc_msgSend_setOwnerIndex_(cellDependencies, v6, indexCopy, v7);
    }
  }
}

- (TSUCellCoord)embiggenedCellCoord
{
  cellDependencies = self->_cellDependencies;
  if (cellDependencies)
  {
    return objc_msgSend_embiggenedCellCoord(cellDependencies, a2, v2, v3);
  }

  else
  {
    return 0x7FFF7FFFFFFFLL;
  }
}

- (void)pushRangeAndSpanningDependents:(id)dependents fromCoord:(const TSUCellCoord *)coord cellIsInACycle:(BOOL)cycle
{
  cycleCopy = cycle;
  dependentsCopy = dependents;
  v11 = objc_msgSend_rangeDependencies(self, v8, v9, v10);
  v15 = v11;
  if (v11 && (objc_msgSend_isEmpty(v11, v12, v13, v14) & 1) == 0)
  {
    objc_msgSend_pushDependents_outDependents_referencingCellIsInACycle_(v15, v12, coord, dependentsCopy, cycleCopy);
  }

  v16 = objc_msgSend_spanningRowDependencies(self, v12, v13, v14);
  v20 = v16;
  if (v16 && (objc_msgSend_isEmpty(v16, v17, v18, v19) & 1) == 0)
  {
    objc_msgSend_pushDependents_outDependents_referencingCellIsInACycle_(v20, v17, coord, dependentsCopy, cycleCopy);
  }

  v21 = objc_msgSend_spanningColumnDependencies(self, v17, v18, v19);
  v25 = v21;
  if (v21 && (objc_msgSend_isEmpty(v21, v22, v23, v24) & 1) == 0)
  {
    objc_msgSend_pushDependents_outDependents_referencingCellIsInACycle_(v25, v26, coord, dependentsCopy, cycleCopy);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E2AC8[132], v5);

  if (*(v6 + 24))
  {
    v8 = *(v6 + 24);
  }

  else
  {
    v8 = MEMORY[0x277D809E0];
  }

  self->_formulaOwnerUid._lower = TSKUIDStruct::loadFromMessage(v8, v7);
  self->_formulaOwnerUid._upper = v9;
  self->_formulaOwnerId = *(v6 + 136);
  v10 = *(v6 + 16);
  if ((v10 & 0x8000) != 0)
  {
    v11 = *(v6 + 140);
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOWORD(v11) = 0;
  if ((v10 & 0x200) != 0)
  {
LABEL_8:
    TSKUIDStruct::loadFromMessage(*(v6 + 96), v9);
  }

LABEL_9:
  self->_ownerIndex = v11;
  v12 = [TSCECellDependencies alloc];
  v14 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_ownerIndex_(v12, v13, 0, self->_formulaOwnerId, &self->_formulaOwnerUid, self->_ownerIndex);
  cellDependencies = self->_cellDependencies;
  self->_cellDependencies = v14;

  v16 = [TSCERangeDependencies alloc];
  v18 = objc_msgSend_initWithDependTracker_ownerID_(v16, v17, 0, self->_formulaOwnerId);
  rangeDependencies = self->_rangeDependencies;
  self->_rangeDependencies = v18;

  v20 = [TSCESpanningDependencies alloc];
  isColumns = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v20, v21, 0, self->_formulaOwnerId, &self->_formulaOwnerUid, 1);
  spanningColumnDependencies = self->_spanningColumnDependencies;
  self->_spanningColumnDependencies = isColumns;

  v24 = [TSCESpanningDependencies alloc];
  v26 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_isColumns_(v24, v25, 0, self->_formulaOwnerId, &self->_formulaOwnerUid, 0);
  spanningRowDependencies = self->_spanningRowDependencies;
  self->_spanningRowDependencies = v26;

  v28 = [TSCEVolatileDependencies alloc];
  v30 = objc_msgSend_initWithDependTracker_ownerID_ownerUID_(v28, v29, 0, self->_formulaOwnerId, &self->_formulaOwnerUid);
  volatileDependencies = self->_volatileDependencies;
  self->_volatileDependencies = v30;

  v32 = [TSCEWholeOwnerDependencies alloc];
  v34 = objc_msgSend_initWithDependTracker_ownerID_(v32, v33, 0, self->_formulaOwnerId);
  wholeOwnerDependencies = self->_wholeOwnerDependencies;
  self->_wholeOwnerDependencies = v34;

  v36 = [TSCEErrorsAndWarnings alloc];
  v38 = objc_msgSend_initWithDependTracker_ownerID_(v36, v37, 0, self->_formulaOwnerId);
  errors = self->_errors;
  self->_errors = v38;

  v40 = [TSCESpillSizes alloc];
  v42 = objc_msgSend_initWithDependTracker_ownerID_(v40, v41, 0, self->_formulaOwnerId);
  spillSizes = self->_spillSizes;
  self->_spillSizes = v42;

  v46 = *(v6 + 16);
  if ((v46 & 0x400) != 0)
  {
    objc_msgSend_readFromTiledArchive_unarchiver_ownerDepends_(self->_cellDependencies, v44, *(v6 + 104), unarchiverCopy, self);
  }

  else if ((v46 & 2) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_cellDependencies, v44, *(v6 + 32), v45);
  }

  v47 = *(v6 + 16);
  if ((v47 & 0x1000) != 0)
  {
    objc_msgSend_readFromTiledArchive_unarchiver_ownerDepends_(self->_rangeDependencies, v44, *(v6 + 120), unarchiverCopy, self);
  }

  else if ((v47 & 4) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_rangeDependencies, v44, *(v6 + 40), v45);
  }

  v48 = *(v6 + 16);
  if ((v48 & 0x10) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_spanningColumnDependencies, v44, *(v6 + 56), v45);
    v48 = *(v6 + 16);
  }

  if ((v48 & 0x20) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_spanningRowDependencies, v44, *(v6 + 64), v45);
    v48 = *(v6 + 16);
  }

  if ((v48 & 8) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_volatileDependencies, v44, *(v6 + 48), v45);
    v48 = *(v6 + 16);
  }

  if ((v48 & 0x40) != 0)
  {
    objc_msgSend_readFromExpandedArchive_(self->_wholeOwnerDependencies, v44, *(v6 + 72), v45);
    v48 = *(v6 + 16);
  }

  if ((v48 & 0x80) != 0)
  {
    objc_msgSend_readFromArchive_(self->_errors, v44, *(v6 + 80), v45);
    v48 = *(v6 + 16);
  }

  if ((v48 & 0x800) != 0)
  {
    v53 = [TSCEUuidReferences alloc];
    if (*(v6 + 112))
    {
      v52 = objc_msgSend_initFromArchive_ownerUID_(v53, v54, *(v6 + 112), &self->_formulaOwnerUid);
    }

    else
    {
      v52 = objc_msgSend_initFromArchive_ownerUID_(v53, v54, &TSCE::_UuidReferencesArchive_default_instance_, &self->_formulaOwnerUid);
    }
  }

  else
  {
    v49 = [TSCEUuidReferences alloc];
    v52 = objc_msgSend_initWithOwnerUID_(v49, v50, &self->_formulaOwnerUid, v51);
  }

  uuidReferences = self->_uuidReferences;
  self->_uuidReferences = v52;

  v58 = *(v6 + 16);
  if ((v58 & 0x2000) != 0)
  {
    objc_msgSend_readFromArchive_(self->_spillSizes, v56, *(v6 + 128), v57);
    v58 = *(v6 + 16);
  }

  if ((v58 & 0x100) != 0)
  {
    v59 = *(v6 + 88);
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_2213BDB5C;
    v61[3] = &unk_2784634F0;
    v61[4] = self;
    sub_221375DAC(unarchiverCopy, v59, &unk_2835174A8, v61);
  }
}

- (void)unpackAfterUnarchive
{
  v5 = objc_msgSend_dependencyTracker(self->_cellDependencies, a2, v2, v3);

  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaOwnerDependencies unpackAfterUnarchive]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 234, 0, "invalid nil value for '%{public}s'", "_cellDependencies.dependencyTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  objc_msgSend_unpackAfterUnarchive(self->_cellDependencies, v6, v7, v8);
  objc_msgSend_unpackAfterUnarchive(self->_rangeDependencies, v18, v19, v20);
  objc_msgSend_unpackAfterUnarchive(self->_spanningColumnDependencies, v21, v22, v23);
  objc_msgSend_unpackAfterUnarchive(self->_spanningRowDependencies, v24, v25, v26);
  objc_msgSend_unpackAfterUnarchive(self->_volatileDependencies, v27, v28, v29);
  objc_msgSend_unpackAfterUnarchive(self->_wholeOwnerDependencies, v30, v31, v32);
  objc_msgSend_unpackAfterUnarchive(self->_uuidReferences, v33, v34, v35);
  v39 = objc_msgSend_formulaOwner(self->_calcEngineRegistrationObject, v36, v37, v38);
  if (v39)
  {
    v40 = v39;
    objc_storeStrong(&self->_formulaOwner, v39);
    v39 = v40;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, 0x300020000000ALL, v6);
  v7 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v8, sub_2213BE9D0, off_2812E2AC8[132]);

  *(v9 + 16) |= 1u;
  v10 = *(v9 + 24);
  if (!v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0360](v11);
    *(v9 + 24) = v10;
  }

  p_formulaOwnerUid = &self->_formulaOwnerUid;
  TSKUIDStruct::saveToMessage(&self->_formulaOwnerUid, v10);
  formulaOwnerId = self->_formulaOwnerId;
  ownerIndex = self->_ownerIndex;
  *(v9 + 16) |= 0xC000u;
  *(v9 + 136) = formulaOwnerId;
  *(v9 + 140) = ownerIndex;
  formulaOwnerUid = self->_formulaOwnerUid;
  if (ownerIndex > 7 || ((1 << ownerIndex) & 0x86) == 0)
  {
    formulaOwnerUid._lower = sub_2212C4A5C(p_formulaOwnerUid, ownerIndex);
    formulaOwnerUid._upper = ownerIndex;
    v18 = self->_ownerIndex;
    if (v18 == 17 || v18 == 100 || (v18 - 205) <= 0x44C)
    {
      self->_saveAsEmbiggenedFormat = 1;
    }
  }

  if (formulaOwnerUid._lower != p_formulaOwnerUid->_lower || formulaOwnerUid._upper != self->_formulaOwnerUid._upper)
  {
    *(v9 + 16) |= 0x200u;
    v19 = *(v9 + 96);
    if (!v19)
    {
      v20 = *(v9 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0360](v20);
      *(v9 + 96) = v19;
    }

    TSKUIDStruct::saveToMessage(&formulaOwnerUid, v19);
  }

  if (self->_saveAsEmbiggenedFormat)
  {
    goto LABEL_33;
  }

  v21 = objc_msgSend_embiggenedCellCoord(self, ownerIndex, v13, v14);
  if (v21 != 0x7FFFFFFF && v21 > 0xFFFE)
  {
    goto LABEL_24;
  }

  v24 = WORD2(v21) != 0x7FFF && WORD2(v21) > 0xFEu;
  v25 = v24;
  self->_saveAsEmbiggenedFormat = v25;
  if (v24)
  {
    goto LABEL_33;
  }

  v71 = objc_msgSend_count(self->_errors, ownerIndex, v22, v23);
  if (v71 >> 3 > 0x270 || objc_msgSend_memoryUseEstimate(self->_cellDependencies, ownerIndex, v72, v73) > 0x3000000)
  {
LABEL_24:
    self->_saveAsEmbiggenedFormat = 1;
LABEL_33:
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v7, ownerIndex, 0xA000000000003, @"TSTExpandedTables");
    goto LABEL_34;
  }

  if (self->_saveAsEmbiggenedFormat)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (self->_cellDependencies)
  {
    *(v9 + 16) |= 0x400u;
    v27 = *(v9 + 104);
    if (!v27)
    {
      v28 = *(v9 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesTiledArchive>(v28);
      *(v9 + 104) = v27;
    }

    objc_msgSend_encodeToTiledArchive_archiver_(self->_cellDependencies, ownerIndex, v27, v7);
    if (!self->_saveAsEmbiggenedFormat)
    {
      *(v9 + 16) |= 2u;
      v29 = *(v9 + 32);
      if (!v29)
      {
        v30 = *(v9 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesExpandedArchive>(v30);
        *(v9 + 32) = v29;
      }

      objc_msgSend_encodeToExpandedArchive_(self->_cellDependencies, ownerIndex, v29, v26);
    }
  }

  if (self->_rangeDependencies)
  {
    *(v9 + 16) |= 0x1000u;
    v31 = *(v9 + 120);
    if (!v31)
    {
      v32 = *(v9 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesTiledArchive>(v32);
      *(v9 + 120) = v31;
    }

    objc_msgSend_encodeToTiledArchive_archiver_(self->_rangeDependencies, ownerIndex, v31, v7);
    if (!self->_saveAsEmbiggenedFormat)
    {
      *(v9 + 16) |= 4u;
      v33 = *(v9 + 40);
      if (!v33)
      {
        v34 = *(v9 + 8);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v34);
        *(v9 + 40) = v33;
      }

      objc_msgSend_encodeToArchive_(self->_rangeDependencies, ownerIndex, v33, v26);
    }
  }

  if (self->_spanningColumnDependencies)
  {
    *(v9 + 16) |= 0x10u;
    v35 = *(v9 + 56);
    if (!v35)
    {
      v36 = *(v9 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v36);
      *(v9 + 56) = v35;
    }

    objc_msgSend_encodeToExpandedArchive_(self->_spanningColumnDependencies, ownerIndex, v35, v26);
  }

  if (self->_spanningRowDependencies)
  {
    *(v9 + 16) |= 0x20u;
    v37 = *(v9 + 64);
    if (!v37)
    {
      v38 = *(v9 + 8);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v38);
      *(v9 + 64) = v37;
    }

    objc_msgSend_encodeToExpandedArchive_(self->_spanningRowDependencies, ownerIndex, v37, v26);
  }

  if (self->_volatileDependencies)
  {
    *(v9 + 16) |= 8u;
    v39 = *(v9 + 48);
    if (!v39)
    {
      v40 = *(v9 + 8);
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesExpandedArchive>(v40);
      *(v9 + 48) = v39;
    }

    objc_msgSend_encodeToExpandedArchive_embiggenedFormatOnly_(self->_volatileDependencies, ownerIndex, v39, self->_saveAsEmbiggenedFormat);
  }

  if (!self->_saveAsEmbiggenedFormat && self->_wholeOwnerDependencies)
  {
    *(v9 + 16) |= 0x40u;
    v41 = *(v9 + 72);
    if (!v41)
    {
      v42 = *(v9 + 8);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesExpandedArchive>(v42);
      *(v9 + 72) = v41;
    }

    objc_msgSend_encodeToExpandedArchive_(self->_wholeOwnerDependencies, ownerIndex, v41, v26);
  }

  if (self->_errors)
  {
    *(v9 + 16) |= 0x80u;
    v43 = *(v9 + 80);
    if (!v43)
    {
      v44 = *(v9 + 8);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v44);
      *(v9 + 80) = v43;
    }

    objc_msgSend_encodeToArchive_(self->_errors, ownerIndex, v43, v26);
  }

  if (self->_spillSizes)
  {
    *(v9 + 16) |= 0x2000u;
    v45 = *(v9 + 128);
    if (!v45)
    {
      v46 = *(v9 + 8);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellSpillSizesArchive>(v46);
      *(v9 + 128) = v45;
    }

    objc_msgSend_encodeToArchive_(self->_spillSizes, ownerIndex, v45, v26);
  }

  uuidReferences = self->_uuidReferences;
  if (uuidReferences)
  {
    *(v9 + 16) |= 0x800u;
    v48 = *(v9 + 112);
    if (!v48)
    {
      v49 = *(v9 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive>(v49);
      *(v9 + 112) = v48;
    }

    objc_msgSend_encodeToArchive_archiver_(uuidReferences, ownerIndex, v48, v7);
  }

  v53 = TSUProtocolCast();
  if (v53 && objc_msgSend_ownerIndex(self, v50, v51, v52, &unk_2835174A8) != 100)
  {
    if (objc_opt_respondsToSelector())
    {
      v57 = objc_msgSend_objectToArchiveInDependencyTracker(v53, v54, v55, v56);

      if (!v57)
      {
        v60 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSCEFormulaOwnerDependencies saveToArchiver:]", v59);
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v63);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 450, 0, "failed to get an object to archive for a formula owner that needs registration. Registration failure at unarchive time is likely.");

        v57 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
LABEL_110:

        goto LABEL_111;
      }
    }

    else
    {
      v57 = v53;
    }

    *(v9 + 16) |= 0x100u;
    v69 = *(v9 + 88);
    if (!v69)
    {
      v70 = *(v9 + 8);
      if (v70)
      {
        v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = MEMORY[0x223DA0390](v70);
      *(v9 + 88) = v69;
    }

    objc_msgSend_setWeakReference_message_(v7, v58, v57, v69);
    goto LABEL_110;
  }

LABEL_111:
  self->_saveAsEmbiggenedFormat = 0;
}

- (BOOL)duringSubOwnerUIDUpgrade
{
  v4 = objc_msgSend_dependencyTracker(self, a2, v2, v3);
  v8 = objc_msgSend_duringSubOwnerUIDUpgrade(v4, v5, v6, v7);

  return v8;
}

- (void)resetOwnerUIDForUpgrade:(const TSKUIDStruct *)upgrade forBaseOwner:(const TSKUIDStruct *)owner ownerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  v8 = objc_msgSend_formulaOwnerUid(self, a2, upgrade, owner);
  v10 = v9;
  if (objc_msgSend_ownerIndex(self, v9, v11, v12) != kindCopy)
  {
    objc_msgSend_setOwnerIndex_(self, v13, kindCopy, v15);
  }

  if (v8 != upgrade->_lower || v10 != upgrade->_upper)
  {
    if (!objc_msgSend_ownerIndex(self, v13, v14, v15))
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCEFormulaOwnerDependencies resetOwnerUIDForUpgrade:forBaseOwner:ownerKind:]", v19);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 492, 0, "OwnerIndex must be set to use this method");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    if (objc_msgSend_ownerIndex(self, v17, v18, v19) == 1)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSCEFormulaOwnerDependencies resetOwnerUIDForUpgrade:forBaseOwner:ownerKind:]", v31);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 493, 0, "Tables cannot use this method");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
    }

    if (objc_msgSend_ownerIndex(self, v29, v30, v31) == 2)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCEFormulaOwnerDependencies resetOwnerUIDForUpgrade:forBaseOwner:ownerKind:]", v43);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaOwnerDependencies.mm", v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 494, 0, "Charts cannot use this method");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
    }

    objc_msgSend_willModifyForUpgrade(self, v41, v42, v43);
    self->_formulaOwnerUid = *upgrade;
    cellDependencies = self->_cellDependencies;
    if (cellDependencies)
    {
      objc_msgSend_resetOwnerUIDForUpgrade_(cellDependencies, v53, upgrade, v54);
    }

    objc_msgSend_resetOwnerUIDForUpgrade_(self->_spanningRowDependencies, v53, upgrade, v54);
    objc_msgSend_resetOwnerUIDForUpgrade_(self->_spanningColumnDependencies, v56, upgrade, v57);
    volatileDependencies = self->_volatileDependencies;
    if (volatileDependencies)
    {

      objc_msgSend_resetOwnerUIDForUpgrade_(volatileDependencies, v58, upgrade, v59);
    }
  }
}

- (TSKUIDStruct)formulaOwnerUid
{
  p_formulaOwnerUid = &self->_formulaOwnerUid;
  lower = self->_formulaOwnerUid._lower;
  upper = p_formulaOwnerUid->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end