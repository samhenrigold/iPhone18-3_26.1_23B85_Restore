@interface TSTCellMap
+ (id)cellMapWithContext:(id)context;
+ (id)uuidBasedCellMapWithContext:(id)context;
- (TSCECellCoordSet)coordinatesForTableInfo:(SEL)info passingTest:(id)test;
- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellIDList:(const void *)list;
- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellUIDList:(id)list skipCellUIDListCopy:(BOOL)copy;
- (TSTCellMap)initWithContext:(id)context uidBased:(BOOL)based;
- (TSUCellCoord)cellIDAtIndex:(unint64_t)index;
- (const)columnUIDs;
- (const)rowUIDs;
- (id).cxx_construct;
- (id)cellAtIndex:(unint64_t)index;
- (id)cellIDBasedCellMapByTableInfo:(id)info;
- (id)cellMapMaskedByUIDs:(const void *)ds inRows:(BOOL)rows;
- (id)changeDescriptorsForTable:(id)table;
- (id)copyWithZone:(_NSZone *)zone copyingCells:(BOOL)cells;
- (id)findCellForCellID:(TSUCellCoord)d;
- (id)findCellForCellUID:(const TSKUIDStructCoord *)d;
- (id)initShallowMapWithContext:(id)context uidBased:(BOOL)based;
- (id)iterator;
- (id)p_addCell:(id)cell;
- (id)p_cellAtIndex:(unint64_t)index inCellListArray:(id)array;
- (id)shallowCopyToCoordFormUsingMap:(id)map;
- (id)uuidBasedCellMapByTableInfo:(id)info;
- (unint64_t)count;
- (unint64_t)estimatedMemoryCost;
- (unint64_t)p_cellCount;
- (void)addCell:(id)cell andCellID:(TSUCellCoord)d;
- (void)addCell:(id)cell andCellUID:(const TSKUIDStructCoord *)d;
- (void)addHeadMergeAction:(id)action;
- (void)addMergeAction:(id)action;
- (void)addMergeActions:(id)actions;
- (void)addPrecopiedCells:(void *)cells andCellUIDs:(void *)ds;
- (void)appendCellMap:(id)map precopied:(BOOL)precopied;
- (void)clearDataListIDs;
- (void)clearMerges;
- (void)enumerateCellsWithIDsUsingBlock:(id)block;
- (void)enumerateCellsWithUIDsUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_addPrecopiedCells:(void *)cells;
- (void)p_copyCellsAndUUIDsFromCellMap:(id)map convertingToCellIDsWithTableInfo:(id)info;
- (void)p_resolveCellIDsToUUIDsByTableInfo:(id)info;
- (void)p_shallowAddCell:(id)cell atCellCoord:(TSUCellCoord)coord;
- (void)remapUIDsByColumnMap:(const void *)map rowMap:(const void *)rowMap ownerMap:(const void *)ownerMap;
- (void)replaceCellAtIndex0:(id)index0;
- (void)reserve:(unint64_t)reserve;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellMap

- (TSTCellMap)initWithContext:(id)context uidBased:(BOOL)based
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = TSTCellMap;
  v7 = [(TSTCellMap *)&v13 initWithContext:contextCopy];
  if (v7)
  {
    v8 = objc_opt_new();
    cellLists = v7->_cellLists;
    v7->_cellLists = v8;

    v10 = objc_opt_new();
    cellUIDs = v7->_cellUIDs;
    v7->_cellUIDs = v10;

    v7->_mayModifyFormulasInCells = 1;
    v7->_mayModifyValuesReferencedByFormulas = 1;
    v7->_shouldResetSpillFormulas = 1;
    v7->_uidBased = based;
  }

  return v7;
}

- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellUIDList:(id)list skipCellUIDListCopy:(BOOL)copy
{
  contextCopy = context;
  cellCopy = cell;
  listCopy = list;
  v14 = objc_msgSend_initWithContext_uidBased_(self, v13, contextCopy, 1);
  v18 = v14;
  v19 = v14;
  if (v14)
  {
    *(v14 + 180) = 1;
    v20 = listCopy;
    if (!copy)
    {
      v20 = objc_msgSend_copy(listCopy, v15, v16, v17);
    }

    objc_storeStrong((v18 + 184), v20);
    if (!copy)
    {
    }

    v23 = objc_msgSend_p_addCell_(v19, v21, cellCopy, v22);
  }

  return v19;
}

- (TSTCellMap)initWithContext:(id)context cell:(id)cell cellIDList:(const void *)list
{
  contextCopy = context;
  cellCopy = cell;
  v11 = objc_msgSend_initWithContext_uidBased_(self, v10, contextCopy, 0);
  v14 = v11;
  if (v11)
  {
    *(v11 + 180) = 1;
    v15 = (v11 + 64);
    if (v15 != list)
    {
      sub_22128026C(v15, *list, *(list + 1), (*(list + 1) - *list) >> 3);
    }

    v16 = objc_msgSend_p_addCell_(v14, v12, cellCopy, v13);
  }

  return v14;
}

- (id)initShallowMapWithContext:(id)context uidBased:(BOOL)based
{
  result = objc_msgSend_initWithContext_uidBased_(self, a2, context, based);
  if (result)
  {
    *(result + 181) = 1;
  }

  return result;
}

+ (id)uuidBasedCellMapWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContext_uidBased_(v4, v5, contextCopy, 1);

  return v6;
}

+ (id)cellMapWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContext_uidBased_(v4, v5, contextCopy, 0);

  return v6;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[104], v6);

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_22127A4EC;
  v59[3] = &unk_27845D8D8;
  v59[4] = self;
  v8 = unarchiverCopy;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v8, v10, v7 + 24, v9, 0, v59);

  v56 = v7;
  self->_uidBased = *(v7 + 152);
  v11 = *(v7 + 136);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v7 + 128);
  if (v13)
  {
    v14 = 8 * v13;
    do
    {
      TSCE::CellCoordinateArchive::CellCoordinateArchive(v58, *v12);
      v15 = sub_2212697C0(v58);
      p_cellIDs = &self->_cellIDs;
      end = self->_cellIDs.__end_;
      cap = self->_cellIDs.__cap_;
      if (end >= cap)
      {
        v20 = end - p_cellIDs->__begin_;
        if ((v20 + 1) >> 61)
        {
          sub_22107C148();
        }

        v21 = cap - p_cellIDs->__begin_;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          sub_2210874C4(p_cellIDs, v23);
        }

        v24 = (8 * v20);
        *v24 = v15;
        v19 = (8 * v20 + 8);
        v25 = self->_cellIDs.__end_ - self->_cellIDs.__begin_;
        v26 = (v24 - v25);
        memcpy(v24 - v25, p_cellIDs->__begin_, v25);
        begin = p_cellIDs->__begin_;
        p_cellIDs->__begin_ = v26;
        self->_cellIDs.__end_ = v19;
        self->_cellIDs.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        *end = v15;
        v19 = end + 1;
      }

      self->_cellIDs.__end_ = v19;
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v58);
      ++v12;
      v14 -= 8;
    }

    while (v14);
  }

  v28 = [TSTCellUIDList alloc];
  if (*(v56 + 144))
  {
    v30 = objc_msgSend_initFromMessage_unarchiver_(v28, v29, *(v56 + 144), v8, unarchiverCopy);
  }

  else
  {
    v30 = objc_msgSend_initFromMessage_unarchiver_(v28, v29, &TST::_CellUIDListArchive_default_instance_, v8, unarchiverCopy);
  }

  cellUIDs = self->_cellUIDs;
  self->_cellUIDs = v30;

  v36 = self->_cellIDs.__begin_;
  v35 = self->_cellIDs.__end_;
  if (v35 == v36)
  {
    if (!objc_msgSend_count(self->_cellUIDs, v32, v33, v34))
    {
      goto LABEL_28;
    }

    v36 = self->_cellIDs.__begin_;
    v35 = self->_cellIDs.__end_;
  }

  uidBased = self->_uidBased;
  if (uidBased != (v35 == v36) || uidBased != (objc_msgSend_count(self->_cellUIDs, v32, v33, v34) != 0))
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTCellMap loadFromUnarchiver:]", v34);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 185, 0, "serious error: flag out of sync with content.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
  }

LABEL_28:
  v47 = *(v56 + 112);
  if (v47)
  {
    v48 = (v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  v49 = *(v56 + 104);
  if (v49)
  {
    v50 = 8 * v49;
    do
    {
      TST::MergeOperationArchive::MergeOperationArchive(v58, *v48);
      v51 = [TSTMergeAction alloc];
      v53 = objc_msgSend_initWithArchive_unarchiver_(v51, v52, v58, v8);
      objc_msgSend_addMergeAction_(self, v54, v53, v55);

      TST::MergeOperationArchive::~MergeOperationArchive(v58);
      ++v48;
      v50 -= 8;
    }

    while (v50);
  }

  self->_mayModifyFormulasInCells = *(v56 + 153);
  self->_mayModifyValuesReferencedByFormulas = *(v56 + 154);
  self->_shouldResetSpillFormulas = *(v56 + 155);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_22127A500;
  v57[3] = &unk_27845E3F8;
  v57[4] = self;
  objc_msgSend_addFinalizeHandler_(v8, v32, v57, v34);
}

- (void)saveToArchiver:(id)archiver
{
  v73 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  if (self->_shallowCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCellMap saveToArchiver:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 211, 0, "We should never archive shallow copies. That's not what they are for");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v18 = objc_msgSend_messageWithNewFunction_descriptor_(v16, v17, sub_221280398, off_2812E4498[104]);

  v22 = objc_msgSend_cellLists(self, v19, v20, v21);
  objc_msgSend_setStrongReferenceArray_message_(v16, v23, v22, v18 + 24);

  uidBased = self->_uidBased;
  *(v18 + 16) |= 2u;
  *(v18 + 152) = uidBased;
  p_cellIDs = &self->_cellIDs;
  begin = self->_cellIDs.__begin_;
  end = self->_cellIDs.__end_;
  if (end != begin)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_count(self->_cellUIDs, v24, v25, v26))
  {
    uidBased = self->_uidBased;
    begin = p_cellIDs->__begin_;
    end = self->_cellIDs.__end_;
LABEL_6:
    if (uidBased != (end == begin) || uidBased != (objc_msgSend_count(self->_cellUIDs, v24, v25, v26) != 0))
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCellMap saveToArchiver:]", v26);
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 224, 0, "serious error: flag out of sync with content.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
    }
  }

  v40 = p_cellIDs->__begin_;
  v41 = self->_cellIDs.__end_;
  while (v40 != v41)
  {
    v71 = *v40;
    v42 = *(v18 + 136);
    if (!v42)
    {
      goto LABEL_16;
    }

    v43 = *(v18 + 128);
    v44 = *v42;
    if (v43 < *v42)
    {
      *(v18 + 128) = v43 + 1;
      v45 = *&v42[2 * v43 + 2];
      goto LABEL_18;
    }

    if (v44 == *(v18 + 132))
    {
LABEL_16:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 120));
      v42 = *(v18 + 136);
      v44 = *v42;
    }

    *v42 = v44 + 1;
    v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(v18 + 120));
    v46 = *(v18 + 128);
    v47 = *(v18 + 136) + 8 * v46;
    *(v18 + 128) = v46 + 1;
    *(v47 + 8) = v45;
LABEL_18:
    sub_221269820(&v71, v45);
    ++v40;
  }

  cellUIDs = self->_cellUIDs;
  *(v18 + 16) |= 1u;
  v49 = *(v18 + 144);
  if (!v49)
  {
    v50 = *(v18 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v50);
    *(v18 + 144) = v49;
  }

  objc_msgSend_saveToMessage_archiver_(cellUIDs, v24, v49, v16);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v51 = self->_mergeActions;
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v67, v72, 16);
  if (v54)
  {
    v55 = *v68;
    do
    {
      v56 = 0;
      do
      {
        if (*v68 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v67 + 1) + 8 * v56);
        v58 = *(v18 + 112);
        if (!v58)
        {
          goto LABEL_33;
        }

        v59 = *(v18 + 104);
        v60 = *v58;
        if (v59 < *v58)
        {
          *(v18 + 104) = v59 + 1;
          objc_msgSend_saveToArchive_archiver_(v57, v53, *&v58[2 * v59 + 2], v16, v67);
          goto LABEL_35;
        }

        if (v60 == *(v18 + 108))
        {
LABEL_33:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 96));
          v58 = *(v18 + 112);
          v60 = *v58;
        }

        *v58 = v60 + 1;
        v61 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(v18 + 96));
        v62 = *(v18 + 104);
        v63 = *(v18 + 112) + 8 * v62;
        *(v18 + 104) = v62 + 1;
        *(v63 + 8) = v61;
        objc_msgSend_saveToArchive_archiver_(v57, v64, v61, v16, v67);
LABEL_35:
        ++v56;
      }

      while (v54 != v56);
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v67, v72, 16);
    }

    while (v54);
  }

  v65 = *(v18 + 16);
  *(v18 + 153) = self->_mayModifyFormulasInCells;
  *(v18 + 154) = self->_mayModifyValuesReferencedByFormulas;
  shouldResetSpillFormulas = self->_shouldResetSpillFormulas;
  *(v18 + 16) = v65 | 0x1C;
  *(v18 + 155) = shouldResetSpillFormulas;
}

- (id)copyWithZone:(_NSZone *)zone copyingCells:(BOOL)cells
{
  cellsCopy = cells;
  v7 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v7, v8, zone, v9);
  v14 = objc_msgSend_context(self, v11, v12, v13);
  v17 = objc_msgSend_initWithContext_(v10, v15, v14, v16);

  if (cellsCopy)
  {
    v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20);
    objc_msgSend_setCellLists_(v17, v22, v21, v23);

    v27 = objc_msgSend_cellLists(self, v24, v25, v26);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_22127ADE8;
    v77[3] = &unk_278462170;
    v28 = v17;
    v78 = v28;
    objc_msgSend_enumerateObjectsUsingBlock_(v27, v29, v77, v30);

    isUIDBased = objc_msgSend_isUIDBased(self, v31, v32, v33);
    objc_msgSend_setUidBased_(v28, v35, isUIDBased, v36);
    if (objc_msgSend_isUIDBased(self, v37, v38, v39))
    {
      v43 = objc_msgSend_cellUIDs(self, v40, v41, v42);
      v47 = objc_msgSend_copy(v43, v44, v45, v46);
      objc_msgSend_setCellUIDs_(v28, v48, v47, v49);
    }

    else
    {
      v50 = objc_msgSend_cellUIDList(TSTCellUIDList, v40, v41, v42);
      objc_msgSend_setCellUIDs_(v28, v51, v50, v52);

      if (v28 != self)
      {
        sub_22128026C(v28 + 8, self->_cellIDs.__begin_, self->_cellIDs.__end_, self->_cellIDs.__end_ - self->_cellIDs.__begin_);
      }
    }
  }

  if (self->_mergeActions)
  {
    v53 = objc_alloc(MEMORY[0x277CBEB18]);
    v56 = objc_msgSend_initWithArray_(v53, v54, self->_mergeActions, v55);
    v57 = *(v17 + 88);
    *(v17 + 88) = v56;
  }

  mayModifyFormulasInCells = objc_msgSend_mayModifyFormulasInCells(self, v18, v19, v20);
  objc_msgSend_setMayModifyFormulasInCells_(v17, v59, mayModifyFormulasInCells, v60);
  mayModifyValuesReferencedByFormulas = objc_msgSend_mayModifyValuesReferencedByFormulas(self, v61, v62, v63);
  objc_msgSend_setMayModifyValuesReferencedByFormulas_(v17, v65, mayModifyValuesReferencedByFormulas, v66);
  shouldResetSpillFormulas = objc_msgSend_shouldResetSpillFormulas(self, v67, v68, v69);
  objc_msgSend_setShouldResetSpillFormulas_(v17, v71, shouldResetSpillFormulas, v72);
  *(v17 + 180) = objc_msgSend_isOneToMany(self, v73, v74, v75);
  return v17;
}

- (unint64_t)count
{
  if (!objc_msgSend_isUIDBased(self, a2, v2, v3))
  {
    return self->_cellIDs.__end_ - self->_cellIDs.__begin_;
  }

  v8 = objc_msgSend_cellUIDs(self, v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);

  return v12;
}

- (unint64_t)estimatedMemoryCost
{
  v5 = objc_msgSend_count(self, a2, v2, v3);
  oneToMany = self->_oneToMany;
  isUIDBased = objc_msgSend_isUIDBased(self, v7, v8, v9);
  v11 = 3;
  if (isUIDBased)
  {
    v11 = 5;
  }

  v12 = v5 << v11;
  v13 = 1000;
  if (!oneToMany)
  {
    v13 = 1000 * v5;
  }

  return v12 + v13;
}

- (TSUCellCoord)cellIDAtIndex:(unint64_t)index
{
  if (objc_msgSend_isUIDBased(self, a2, index, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellMap cellIDAtIndex:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 311, 0, "cannot examine cellIDs in UID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  begin = self->_cellIDs.__begin_;
  if (index >= self->_cellIDs.__end_ - begin)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  else
  {
    return begin[index];
  }
}

- (id)cellAtIndex:(unint64_t)index
{
  v6 = objc_msgSend_cellLists(self, a2, index, v3);
  v8 = objc_msgSend_p_cellAtIndex_inCellListArray_(self, v7, index, v6);

  return v8;
}

- (const)rowUIDs
{
  v4 = objc_msgSend_cellUIDs(self, a2, v2, v3);
  v8 = objc_msgSend_rowUIDs(v4, v5, v6, v7);

  return v8;
}

- (const)columnUIDs
{
  v4 = objc_msgSend_cellUIDs(self, a2, v2, v3);
  v8 = objc_msgSend_columnUIDs(v4, v5, v6, v7);

  return v8;
}

- (void)enumerateCellsWithIDsUsingBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellMap enumerateCellsWithIDsUsingBlock:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 332, 0, "can't enumerate IDs since have UIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if ((objc_msgSend_isUIDBased(self, v8, v9, v10) & 1) == 0)
  {
    if (objc_msgSend_isOneToMany(self, v20, v21, v22))
    {
      v53 = 0;
      v26 = objc_msgSend_cellLists(self, v23, v24, v25);
      v30 = objc_msgSend_firstObject(v26, v27, v28, v29);
      v33 = objc_msgSend_cellAtIndex_(v30, v31, 0, v32);

      begin = self->_cellIDs.__begin_;
      end = self->_cellIDs.__end_;
      if (begin != end)
      {
        v36 = 0;
        v37 = begin + 1;
        do
        {
          blockCopy[2](blockCopy, *&v37[-1], v33, v36, &v53);
          if (v53)
          {
            break;
          }

          ++v36;
          v38 = v37++ == end;
        }

        while (!v38);
      }
    }

    else
    {
      v52 = 0;
      v39 = self->_cellIDs.__begin_;
      v40 = self->_cellIDs.__end_;
      if (v39 != v40)
      {
        v41 = 0;
        v42 = v39 + 1;
        do
        {
          v43 = v42[-1];
          v44 = objc_msgSend_cellLists(self, v23, v24, v25);
          v47 = objc_msgSend_objectAtIndex_(v44, v45, v41 / 0x9C4, v46);

          objc_opt_class();
          v50 = objc_msgSend_cellAtIndex_(v47, v48, v41 % 0x9C4, v49);
          v51 = TSUDynamicCast();
          (blockCopy[2])(blockCopy, v43, v51, v41, &v52);

          LOBYTE(v43.row) = v52;
          if (v43.row)
          {
            break;
          }

          ++v41;
          v38 = v42++ == v40;
        }

        while (!v38);
      }
    }
  }
}

- (void)enumerateCellsWithUIDsUsingBlock:(id)block
{
  blockCopy = block;
  if ((objc_msgSend_isUIDBased(self, v5, v6, v7) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellMap enumerateCellsWithUIDsUsingBlock:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 373, 0, "can't enumerate by UIDs since have IDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (objc_msgSend_isUIDBased(self, v8, v9, v10))
  {
    v23 = objc_msgSend_cellLists(self, v20, v21, v22);
    v27 = objc_msgSend_firstObject(v23, v24, v25, v26);
    v31 = objc_msgSend_count(v27, v28, v29, v30);

    if (v31 == 1)
    {
      v35 = objc_msgSend_cellLists(self, v32, v33, v34);
      v39 = objc_msgSend_firstObject(v35, v36, v37, v38);
      v42 = objc_msgSend_cellAtIndex_(v39, v40, 0, v41);

      cellUIDs = self->_cellUIDs;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_22127B6D0;
      v52[3] = &unk_278462198;
      v53 = v42;
      v54 = blockCopy;
      v44 = v42;
      objc_msgSend_enumerateCellUIDsUsingBlock_(cellUIDs, v45, v52, v46);
    }

    else
    {
      v47 = self->_cellUIDs;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_22127B6EC;
      v50[3] = &unk_2784612C0;
      v50[4] = self;
      v51 = blockCopy;
      objc_msgSend_enumerateCellUIDsUsingBlock_(v47, v48, v50, v49);
    }
  }
}

- (id)iterator
{
  v3 = [TSTCellMapIterator alloc];
  v6 = objc_msgSend_initWithCellMap_(v3, v4, self, v5);

  return v6;
}

- (id)findCellForCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (objc_msgSend_isUIDBased(self, a2, *&d, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellMap findCellForCellID:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 413, 0, "cannot use find with a UID based cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (self->_cellIDs.__end_ == self->_cellIDs.__begin_ || (objc_msgSend_isUIDBased(self, v5, v6, v7) & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    size = self->_searchableIDMap.__table_.__size_;
    if (size != objc_msgSend_count(self, v17, v18, v19))
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_22127BA3C;
      v25[3] = &unk_27845DE10;
      v25[4] = self;
      objc_msgSend_enumerateCellsWithIDsUsingBlock_(self, v22, v25, v23);
    }

    v20 = sub_221087F14(&self->_searchableIDMap.__table_.__bucket_list_.__ptr_, &dCopy);
    if (v20)
    {
      v20 = v20[3];
    }
  }

  return v20;
}

- (id)findCellForCellUID:(const TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_count(self->_cellUIDs, a2, d, v3);
  if (v6)
  {
    if (objc_msgSend_isUIDBased(self, v7, v8, v9))
    {
      size = self->_searchableUIDMap.__table_.__size_;
      if (size != objc_msgSend_count(self, v10, v11, v12))
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = sub_22127BBB8;
        v17[3] = &unk_2784621C0;
        v17[4] = self;
        objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v14, v17, v15);
      }

      v6 = sub_221280960(&self->_searchableUIDMap.__table_.__bucket_list_.__ptr_, d);
      if (v6)
      {
        v6 = v6[6];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)addCell:(id)cell andCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  if ((objc_msgSend_isUIDBased(self, v6, v7, v8) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellMap addCell:andCellUID:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 457, 0, "cannot add UIDs in ID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_cellLists(self, v9, v10, v11);
  v25 = objc_msgSend_firstObject(v21, v22, v23, v24);
  v29 = objc_msgSend_count(v25, v26, v27, v28);
  v33 = objc_msgSend_cellUIDs(self, v30, v31, v32);
  if (v29 == objc_msgSend_count(v33, v34, v35, v36))
  {

    goto LABEL_10;
  }

  v43 = objc_msgSend_cellLists(self, v37, v38, v39);
  if (objc_msgSend_count(v43, v44, v45, v46) < 2)
  {

    goto LABEL_9;
  }

  v50 = objc_msgSend_cellUIDs(self, v47, v48, v49);
  v54 = objc_msgSend_count(v50, v51, v52, v53);

  if (v54 < 0x9C5)
  {
LABEL_9:
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTCellMap addCell:andCellUID:]", v42);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v60, v56, v59, 459, 0, "cannot add cells in one-to-many mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
  }

LABEL_10:
  if (objc_msgSend_isUIDBased(self, v40, v41, v42))
  {
    objc_msgSend_addCellUID_(self->_cellUIDs, v64, d, v65);
    v68 = objc_msgSend_p_addCell_(self, v66, cellCopy, v67);
  }
}

- (void)reserve:(unint64_t)reserve
{
  if (objc_msgSend_isUIDBased(self, a2, reserve, v3))
  {
    cellUIDs = self->_cellUIDs;

    objc_msgSend_reserve_(cellUIDs, v6, reserve, v7);
  }

  else
  {
    sub_2211687C4(&self->_cellIDs.__begin_, reserve);
    v9 = vcvtps_u32_f32(reserve / self->_searchableIDMap.__table_.__max_load_factor_);

    sub_221087270(&self->_searchableIDMap, v9);
  }
}

- (void)addPrecopiedCells:(void *)cells andCellUIDs:(void *)ds
{
  if ((objc_msgSend_isUIDBased(self, a2, cells, ds) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCellMap addPrecopiedCells:andCellUIDs:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 482, 0, "cannot add UIDs in ID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_cellLists(self, v7, v8, v9);
  v23 = objc_msgSend_firstObject(v19, v20, v21, v22);
  v27 = objc_msgSend_count(v23, v24, v25, v26);
  v31 = objc_msgSend_cellUIDs(self, v28, v29, v30);
  if (v27 == objc_msgSend_count(v31, v32, v33, v34))
  {

    goto LABEL_10;
  }

  v41 = objc_msgSend_cellLists(self, v35, v36, v37);
  if (objc_msgSend_count(v41, v42, v43, v44) < 2)
  {

    goto LABEL_9;
  }

  v48 = objc_msgSend_cellUIDs(self, v45, v46, v47);
  v52 = objc_msgSend_count(v48, v49, v50, v51);

  if (v52 < 0x9C5)
  {
LABEL_9:
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTCellMap addPrecopiedCells:andCellUIDs:]", v40);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 484, 0, "cannot add cells in one-to-many mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
  }

LABEL_10:
  if (objc_msgSend_isUIDBased(self, v38, v39, v40))
  {
    if ((*(cells + 1) - *cells) >> 3 != (*(ds + 1) - *ds) >> 5)
    {
      v64 = MEMORY[0x277D81150];
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSTCellMap addPrecopiedCells:andCellUIDs:]", v63);
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v67);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 491, 0, "Cell and CellUID sizes don't match up");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72);
    }

    objc_msgSend_addCellUIDs_(self->_cellUIDs, v62, ds, v63);

    objc_msgSend_p_addPrecopiedCells_(self, v73, cells, v74);
  }
}

- (void)addCell:(id)cell andCellID:(TSUCellCoord)d
{
  dCopy = d;
  cellCopy = cell;
  if (objc_msgSend_isUIDBased(self, v6, v7, v8))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellMap addCell:andCellID:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 499, 0, "Cannot add cellIDs while in UID mode.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if ((objc_msgSend_isUIDBased(self, v9, v10, v11) & 1) == 0 && !sub_221087F14(&self->_searchableIDMap.__table_.__bucket_list_.__ptr_, &dCopy))
  {
    sub_22111D090(&self->_cellIDs, &dCopy);
    v23 = objc_msgSend_p_addCell_(self, v21, cellCopy, v22);
    v27 = &dCopy;
    v24 = sub_221280404(&self->_searchableIDMap.__table_.__bucket_list_.__ptr_, &dCopy, &unk_2217E0EFD, &v27);
    v25 = v24[3];
    v24[3] = v23;
  }
}

- (void)replaceCellAtIndex0:(id)index0
{
  index0Copy = index0;
  if (objc_msgSend_isEmpty(index0Copy, v4, v5, v6))
  {

    index0Copy = 0;
  }

  v10 = objc_msgSend_cellLists(self, v7, v8, v9);
  v14 = objc_msgSend_firstObject(v10, v11, v12, v13);

  if (!v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTCellMap replaceCellAtIndex0:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 532, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  objc_msgSend_replaceCell_atIndex_(v14, v15, index0Copy, 0);
}

- (void)clearDataListIDs
{
  if (objc_msgSend_isUIDBased(self, a2, v2, v3))
  {

    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v5, &unk_2834A3CE8, v6);
  }

  else
  {

    objc_msgSend_enumerateCellsWithIDsUsingBlock_(self, v5, &unk_2834A3D08, v6);
  }
}

- (void)addMergeAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (!self->_mergeActions)
    {
      v7 = objc_opt_new();
      mergeActions = self->_mergeActions;
      self->_mergeActions = v7;
    }

    objc_msgSend_verify(actionCopy, v4, v5, v6);
    objc_msgSend_addObject_(self->_mergeActions, v9, actionCopy, v10);
  }
}

- (void)addHeadMergeAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (!self->_mergeActions)
    {
      v7 = objc_opt_new();
      mergeActions = self->_mergeActions;
      self->_mergeActions = v7;
    }

    objc_msgSend_verify(actionCopy, v4, v5, v6);
    objc_msgSend_insertObject_atIndex_(self->_mergeActions, v9, actionCopy, 0);
  }
}

- (void)addMergeActions:(id)actions
{
  actionsCopy = actions;
  if (objc_msgSend_count(actionsCopy, v4, v5, v6))
  {
    mergeActions = self->_mergeActions;
    if (mergeActions)
    {
      objc_msgSend_addObjectsFromArray_(mergeActions, v7, actionsCopy, v8);
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CBEB18]);
      v13 = objc_msgSend_initWithArray_(v10, v11, actionsCopy, v12);
      v14 = self->_mergeActions;
      self->_mergeActions = v13;
    }
  }
}

- (void)remapUIDsByColumnMap:(const void *)map rowMap:(const void *)rowMap ownerMap:(const void *)ownerMap
{
  v60 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isUIDBased(self, a2, map, rowMap))
  {
    v12 = objc_msgSend_context(self, v9, v10, v11);
    v15 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v13, v12, v14);

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_22127CB40;
    v55[3] = &unk_278462228;
    mapCopy = map;
    rowMapCopy = rowMap;
    v16 = v15;
    v56 = v16;
    v50 = v16;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v17, v55, v18);
    v22 = objc_msgSend_cellLists(v16, v19, v20, v21);
    objc_msgSend_setCellLists_(self, v23, v22, v24);

    v28 = objc_msgSend_cellUIDs(v16, v25, v26, v27);
    objc_msgSend_setCellUIDs_(self, v29, v28, v30);

    v49 = 88;
    if (self->_mergeActions)
    {
      v31 = objc_alloc(MEMORY[0x277CBEB18]);
      v35 = objc_msgSend_count(self->_mergeActions, v32, v33, v34);
      v38 = objc_msgSend_initWithCapacity_(v31, v36, v35, v37);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v39 = self->_mergeActions;
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v51, v59, 16);
      if (v42)
      {
        v43 = *v52;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v52 != v43)
            {
              objc_enumerationMutation(v39);
            }

            v47 = objc_msgSend_remapUIDsByColumnMap_rowMap_ownerMap_(*(*(&v51 + 1) + 8 * i), v41, map, rowMap, ownerMap, v49);
            if (v47)
            {
              objc_msgSend_addObject_(v38, v45, v47, v46);
            }
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v51, v59, 16);
        }

        while (v42);
      }

      v48 = *(&self->super.super.isa + v49);
      *(&self->super.super.isa + v49) = v38;
    }
  }
}

- (void)clearMerges
{
  mergeActions = self->_mergeActions;
  self->_mergeActions = 0;
}

- (void)appendCellMap:(id)map precopied:(BOOL)precopied
{
  mapCopy = map;
  v55 = 0;
  v56 = &v55;
  v57 = 0x4812000000;
  v58 = sub_22127CFA8;
  v59 = sub_22127CFCC;
  v60 = &unk_22188E88F;
  memset(v61, 0, sizeof(v61));
  v10 = objc_msgSend_count(mapCopy, v7, v8, v9);
  sub_22116A0A0(v56 + 6, v10);
  if (objc_msgSend_isUIDBased(self, v11, v12, v13))
  {
    if (objc_msgSend_isUIDBased(mapCopy, v14, v15, v16))
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x4812000000;
      v49 = sub_22127CFF8;
      v50 = sub_22127D01C;
      v51 = &unk_22188E88F;
      v53 = 0;
      v54 = 0;
      __p = 0;
      sub_22127D034(&__p, v10);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_22127D0D4;
      v44[3] = &unk_278462250;
      precopiedCopy = precopied;
      v44[4] = &v55;
      v44[5] = &v46;
      objc_msgSend_enumerateCellsWithUIDsUsingBlock_(mapCopy, v19, v44, v20);
      objc_msgSend_addCellUIDs_(self->_cellUIDs, v21, (v47 + 6), v22);
      _Block_object_dispose(&v46, 8);
      if (__p)
      {
        v53 = __p;
        operator delete(__p);
      }

      goto LABEL_10;
    }

    v33 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTCellMap appendCellMap:precopied:]", v18);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v36, v28, v31, 645, 0, "Trying to append a cellID cellMap to a uidBased map. Aborting.");
  }

  else
  {
    if (!objc_msgSend_isUIDBased(mapCopy, v14, v15, v16))
    {
      sub_2211687C4(&self->_cellIDs.__begin_, v10 + self->_cellIDs.__end_ - self->_cellIDs.__begin_);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_22127D210;
      v42[3] = &unk_278462278;
      precopiedCopy2 = precopied;
      v42[4] = self;
      v42[5] = &v55;
      objc_msgSend_enumerateCellsWithIDsUsingBlock_(mapCopy, v40, v42, v41);
LABEL_10:
      objc_msgSend_p_addPrecopiedCells_(self, v23, (v56 + 6), v24);
      goto LABEL_11;
    }

    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTCellMap appendCellMap:precopied:]", v26);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 663, 0, "Trying to append a uidBased cellMap to a cellID map. Aborting.");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
LABEL_11:
  _Block_object_dispose(&v55, 8);
  v46 = v61;
  sub_22107C2C0(&v46);
}

- (id)cellIDBasedCellMapByTableInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7))
  {
    v11 = objc_msgSend_copyWithZone_copyingCells_(self, v8, 0, 0);
    objc_msgSend_p_copyCellsAndUUIDsFromCellMap_convertingToCellIDsWithTableInfo_(v11, v12, self, infoCopy);
  }

  else
  {
    v11 = objc_msgSend_copy(self, v8, v9, v10);
  }

  return v11;
}

- (id)uuidBasedCellMapByTableInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_copy(self, v5, v6, v7);
  objc_msgSend_p_resolveCellIDsToUUIDsByTableInfo_(v8, v9, infoCopy, v10);

  return v8;
}

- (TSCECellCoordSet)coordinatesForTableInfo:(SEL)info passingTest:(id)test
{
  testCopy = test;
  v9 = a5;
  v62 = 0;
  v63 = &v62;
  v64 = 0x5812000000;
  v65 = sub_22127D80C;
  v66 = sub_22127D818;
  v67 = &unk_22188E88F;
  v71[0] = 0;
  v71[1] = 0;
  v68 = 0;
  v69 = 0;
  v70 = v71;
  if (objc_msgSend_isUIDBased(self, v10, v11, v12))
  {
    v16 = objc_msgSend_cellLists(self, v13, v14, v15);
    if (objc_msgSend_count(v16, v17, v18, v19) == 1 && (objc_msgSend_firstObject(v16, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_count(v23, v24, v25, v26), v23, v27 == 1))
    {
      if (!v9 || (objc_msgSend_firstObject(v16, v20, v21, v22), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_cellAtIndex_(v28, v29, 0, v30), v31 = objc_claimAutoreleasedReturnValue(), v28, LOBYTE(v55.row) = 0, LOBYTE(v28) = v9[2](v9, v31, &v55), v31, (v28 & 1) != 0))
      {
        v32 = objc_msgSend_cellUIDs(self, v20, v21, v22);
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = sub_22127D824;
        v59[3] = &unk_2784622A0;
        v60 = testCopy;
        v61 = &v62;
        objc_msgSend_enumerateCellUIDsUsingBlock_(v32, v33, v59, v34);
      }
    }

    else
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v43 = objc_msgSend_cellUIDs(self, v20, v21, v22);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_22127D890;
      v48[3] = &unk_2784622C8;
      v49 = testCopy;
      v52 = v9;
      selfCopy = self;
      v51 = v16;
      v53 = &v55;
      v54 = &v62;
      objc_msgSend_enumerateCellUIDsUsingBlock_(v43, v44, v48, v45);

      _Block_object_dispose(&v55, 8);
    }
  }

  else
  {
    v35 = objc_msgSend_count(self, v13, v14, v15);
    v47 = 0;
    if (v35)
    {
      v38 = 0;
      v39 = v35 - 1;
      do
      {
        if (v9)
        {
          v40 = objc_msgSend_cellAtIndex_(self, v36, v38, v37);
          v41 = v9[2](v9, v40, &v47);

          if ((v41 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v55 = 0;
        v55 = objc_msgSend_cellIDAtIndex_(self, v36, v38, v37);
        TSCECellCoordSet::addCellCoord((v63 + 6), &v55);
LABEL_12:
        if (v47)
        {
          break;
        }
      }

      while (v39 != v38++);
    }
  }

  TSCECellCoordSet::TSCECellCoordSet(retstr, (v63 + 6));
  _Block_object_dispose(&v62, 8);
  sub_22107C860(&v70, v71[0]);

  return result;
}

- (id)shallowCopyToCoordFormUsingMap:(id)map
{
  mapCopy = map;
  v8 = objc_msgSend_context(self, v5, v6, v7);
  v11 = objc_msgSend_cellMapWithContext_(TSTCellMap, v9, v8, v10);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22127DAA4;
  v19[3] = &unk_2784622F0;
  v12 = mapCopy;
  v20 = v12;
  v13 = v11;
  v21 = v13;
  objc_msgSend_enumerateCellsWithUIDsUsingBlock_(self, v14, v19, v15);
  v16 = v21;
  v17 = v13;

  return v13;
}

- (id)cellMapMaskedByUIDs:(const void *)ds inRows:(BOOL)rows
{
  rowsCopy = rows;
  selfCopy = self;
  v10 = selfCopy;
  if (rowsCopy)
  {
    v11 = objc_msgSend_cellUIDs(selfCopy, v7, v8, v9);
    v15 = objc_msgSend_rowUIDs(v11, v12, v13, v14);
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *ds;
    if ((v16 - *v15) == (*(ds + 1) - *ds))
    {
      while (v17 != v16)
      {
        if (*v17 != *v18 || v17[1] != v18[1])
        {
          goto LABEL_19;
        }

        v17 += 2;
        v18 += 2;
      }

LABEL_18:

      goto LABEL_26;
    }

LABEL_19:

    v28 = [TSTCellMap alloc];
    v32 = objc_msgSend_context(v10, v29, v30, v31);
    v34 = objc_msgSend_initWithContext_uidBased_(v28, v33, v32, 1);

    v65 = 0;
    v66 = &v65;
    v67 = 0x5812000000;
    v68 = sub_22127DF1C;
    v69 = sub_22127DF28;
    v70 = &unk_22188E88F;
    sub_221280A48(v71, *ds, *(ds + 1));
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_22127DF30;
    v62[3] = &unk_278462318;
    v64 = &v65;
    v35 = v34;
    v63 = v35;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v10, v36, v62, v37);
    if (v10[11])
    {
      v38 = objc_alloc(MEMORY[0x277CBEB18]);
      v41 = objc_msgSend_initWithArray_(v38, v39, v10[11], v40);
      v42 = v35[11];
      v35[11] = v41;
    }

    v43 = v63;
  }

  else
  {
    v11 = objc_msgSend_cellUIDs(selfCopy, v7, v8, v9);
    v23 = objc_msgSend_columnUIDs(v11, v20, v21, v22);
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *ds;
    if ((v24 - *v23) == (*(ds + 1) - *ds))
    {
      while (v25 != v24)
      {
        if (*v25 != *v26 || v25[1] != v26[1])
        {
          goto LABEL_22;
        }

        v25 += 2;
        v26 += 2;
      }

      goto LABEL_18;
    }

LABEL_22:

    v44 = [TSTCellMap alloc];
    v48 = objc_msgSend_context(v10, v45, v46, v47);
    v50 = objc_msgSend_initWithContext_uidBased_(v44, v49, v48, 1);

    v65 = 0;
    v66 = &v65;
    v67 = 0x5812000000;
    v68 = sub_22127DF1C;
    v69 = sub_22127DF28;
    v70 = &unk_22188E88F;
    sub_221280A48(v71, *ds, *(ds + 1));
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22127DFBC;
    v59[3] = &unk_278462318;
    v61 = &v65;
    v35 = v50;
    v60 = v35;
    objc_msgSend_enumerateCellsWithUIDsUsingBlock_(v10, v51, v59, v52);
    if (v10[11])
    {
      v53 = objc_alloc(MEMORY[0x277CBEB18]);
      v56 = objc_msgSend_initWithArray_(v53, v54, v10[11], v55);
      v57 = v35[11];
      v35[11] = v56;
    }

    v43 = v60;
  }

  _Block_object_dispose(&v65, 8);
  sub_2210BDEC0(v71);
  v10 = v35;
LABEL_26:

  return v10;
}

- (id)p_cellAtIndex:(unint64_t)index inCellListArray:(id)array
{
  arrayCopy = array;
  v10 = arrayCopy;
  if (self->_oneToMany)
  {
    v11 = objc_msgSend_firstObject(arrayCopy, v7, v8, v9);
    objc_msgSend_cellAtIndex_(v11, v12, 0, v13);
  }

  else
  {
    v11 = objc_msgSend_objectAtIndex_(arrayCopy, v7, index / 0x9C4, v9);
    objc_msgSend_cellAtIndex_(v11, v14, index % 0x9C4, v15);
  }
  v16 = ;

  return v16;
}

- (void)p_shallowAddCell:(id)cell atCellCoord:(TSUCellCoord)coord
{
  coordCopy = coord;
  cellCopy = cell;
  if (objc_msgSend_isEmpty(cellCopy, v6, v7, v8))
  {

    cellCopy = 0;
  }

  v12 = objc_msgSend_cellLists(self, v9, v10, v11);
  v16 = objc_msgSend_lastObject(v12, v13, v14, v15);

  if (!v16 || objc_msgSend_count(v16, v17, v18, v19) >= 0x9C4)
  {
    v20 = [TSTCellList alloc];
    v24 = objc_msgSend_context(self, v21, v22, v23);
    v27 = objc_msgSend_initWithContext_(v20, v25, v24, v26);

    v31 = objc_msgSend_cellLists(self, v28, v29, v30);
    objc_msgSend_addObject_(v31, v32, v27, v33);

    v16 = v27;
  }

  sub_22111D090(&self->_cellIDs, &coordCopy);
  v36 = objc_msgSend_shallowAddCell_(v16, v34, cellCopy, v35);
}

- (id)p_addCell:(id)cell
{
  cellCopy = cell;
  if (objc_msgSend_isEmpty(cellCopy, v5, v6, v7))
  {

    cellCopy = 0;
  }

  v11 = objc_msgSend_cellLists(self, v8, v9, v10);
  v15 = objc_msgSend_lastObject(v11, v12, v13, v14);

  if (!v15 || objc_msgSend_count(v15, v16, v17, v18) >= 0x9C4)
  {
    v21 = [TSTCellList alloc];
    v25 = objc_msgSend_context(self, v22, v23, v24);
    v15 = objc_msgSend_initWithContext_(v21, v26, v25, v27);

    v31 = objc_msgSend_cellLists(self, v28, v29, v30);
    objc_msgSend_addObject_(v31, v32, v15, v33);
  }

  if (cellCopy && self->_shallowCopy)
  {
    v34 = [TSTCell alloc];
    v38 = objc_msgSend_locale(cellCopy, v35, v36, v37);
    v41 = objc_msgSend_initWithLocale_(v34, v39, v38, v40);

    objc_msgSend_shallowCopyToCell_(cellCopy, v42, v41, v43);
    v46 = objc_msgSend_shallowAddCell_(v15, v44, v41, v45);
  }

  else
  {
    v46 = objc_msgSend_addCell_(v15, v19, cellCopy, v20);
  }

  return v46;
}

- (void)p_addPrecopiedCells:(void *)cells
{
  v6 = objc_msgSend_cellLists(self, a2, cells, v3);
  v10 = objc_msgSend_lastObject(v6, v7, v8, v9);

  if (self->_shallowCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellMap p_addPrecopiedCells:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 909, 0, "Shallow copy not supported in this path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  objc_msgSend_willModify(v10, v11, v12, v13);
  v23 = *cells;
  v24 = *(cells + 1);
  if (*cells != v24)
  {
    do
    {
      v25 = *v23;
      if (objc_msgSend_isEmpty(v25, v26, v27, v28))
      {

        v25 = 0;
      }

      if (!v10 || objc_msgSend_count(v10, v29, v30, v31) >= 0x9C4)
      {
        v34 = [TSTCellList alloc];
        v38 = objc_msgSend_context(self, v35, v36, v37);
        v10 = objc_msgSend_initWithContext_(v34, v39, v38, v40);

        v44 = objc_msgSend_cellLists(self, v41, v42, v43);
        objc_msgSend_addObject_(v44, v45, v10, v46);
      }

      objc_msgSend_addPrecopiedCell_(v10, v32, v25, v33);

      ++v23;
    }

    while (v23 != v24);
  }
}

- (void)p_copyCellsAndUUIDsFromCellMap:(id)map convertingToCellIDsWithTableInfo:(id)info
{
  mapCopy = map;
  infoCopy = info;
  if ((objc_msgSend_isUIDBased(mapCopy, v8, v9, v10) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellMap p_copyCellsAndUUIDsFromCellMap:convertingToCellIDsWithTableInfo:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellMap.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 936, 0, "This should only be called with a UID based cell map.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_cellLists(mapCopy, v11, v12, v13);
  v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25, v26);
  objc_msgSend_setCellLists_(self, v28, v27, v29);

  v73 = 0;
  v74 = &v73;
  v75 = 0x4812000000;
  v76 = sub_22127EA24;
  v77 = sub_22127EA48;
  v78 = &unk_22188E88F;
  v80 = 0;
  v81 = 0;
  __p = 0;
  if (objc_msgSend_count(v23, v30, v31, v32) == 1 && (objc_msgSend_firstObject(v23, v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend_count(v36, v37, v38, v39), v36, v40 == 1))
  {
    v41 = objc_msgSend_firstObject(v23, v33, v34, v35);
    v44 = objc_msgSend_cellAtIndex_(v41, v42, 0, v43);

    v47 = objc_msgSend_p_addCell_(self, v45, v44, v46);
    v51 = objc_msgSend_cellUIDs(mapCopy, v48, v49, v50);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_22127EA60;
    v70[3] = &unk_278462340;
    v71 = infoCopy;
    v72 = &v73;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v51, v52, v70, v53);
  }

  else
  {
    v54 = objc_msgSend_cellUIDs(mapCopy, v33, v34, v35);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_22127EACC;
    v65[3] = &unk_278462368;
    v66 = infoCopy;
    selfCopy = self;
    v68 = v23;
    v69 = &v73;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v54, v55, v65, v56);

    v44 = v66;
  }

  if (&self->_cellIDs != (v74 + 6))
  {
    sub_22128026C(&self->_cellIDs, v74[6], v74[7], (v74[7] - v74[6]) >> 3);
  }

  v60 = objc_msgSend_cellUIDList(TSTCellUIDList, v57, v58, v59);
  objc_msgSend_setCellUIDs_(self, v61, v60, v62);

  objc_msgSend_setUidBased_(self, v63, 0, v64);
  _Block_object_dispose(&v73, 8);
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }
}

- (void)p_resolveCellIDsToUUIDsByTableInfo:(id)info
{
  infoCopy = info;
  if ((objc_msgSend_isUIDBased(self, v5, v6, v7) & 1) == 0)
  {
    begin = self->_cellIDs.__begin_;
    end = self->_cellIDs.__end_;
    if (begin != end)
    {
      do
      {
        v12 = *begin;
        v18 = 0u;
        v19 = 0u;
        if (infoCopy)
        {
          objc_msgSend_cellUIDForCellID_(infoCopy, v8, v12, v9, v18, v19);
        }

        v13 = objc_msgSend_cellUIDs(self, v8, v12, v9, v18, v19);
        objc_msgSend_addCellUID_(v13, v14, &v18, v15);

        ++begin;
      }

      while (begin != end);
      begin = self->_cellIDs.__begin_;
    }

    self->_cellIDs.__end_ = begin;
    sub_2211A89A4(&self->_searchableIDMap);
    objc_msgSend_setUidBased_(self, v16, 1, v17);
  }
}

- (unint64_t)p_cellCount
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_cellLists(self, a2, v2, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22127ED40;
  v9[3] = &unk_278462390;
  v9[4] = &v10;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v5, v9, v6);

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)changeDescriptorsForTable:(id)table
{
  v47 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7);
  v41 = objc_msgSend_regionFromCellMap_withTableInfo_(TSTCellRegion, v9, self, tableCopy);
  v11 = objc_msgSend_changeDescriptorWithType_cellRegion_(TSTChangeDescriptor, v10, 37, v41);
  objc_msgSend_addObject_(v8, v12, v11, v13);

  v15 = objc_msgSend_changeDescriptorWithType_strokeRegion_(TSTChangeDescriptor, v14, 32, v41);
  objc_msgSend_addObject_(v8, v16, v15, v17);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = objc_msgSend_mergeActions(self, v18, v19, v20);
  v23 = 0;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v42, v46, 16);
  if (v26)
  {
    v27 = *v43;
    do
    {
      v28 = 0;
      v29 = v23;
      do
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v30 = objc_msgSend_cellRegionForTable_(*(*(&v42 + 1) + 8 * v28), v24, tableCopy, v25);
        v23 = objc_msgSend_region_addingRegion_(TSTCellRegion, v31, v29, v30);

        ++v28;
        v29 = v23;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v42, v46, 16);
    }

    while (v26);
  }

  if (objc_msgSend_cellCount(v23, v32, v33, v34))
  {
    v36 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v35, 17, v23, v23);
    objc_msgSend_addObject_(v8, v37, v36, v38);
  }

  v39 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v35, v8, v41);

  return v39;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  return self;
}

@end