@interface TSTCellDiffMap
+ (id)cellDiffMapWithContext:(id)context;
- (BOOL)p_scanCellDiffArrayForCellBorderChanges:(id)changes;
- (BOOL)p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty:(id)property;
- (BOOL)p_scanNSArrayOfDiffsForCellBorderChanges:(id)changes;
- (BOOL)p_scanNSArrayOfDiffsForSuppressCustomFormatHandlingProperty:(id)property;
- (TSTCellDiffMap)initWithContext:(id)context;
- (TSTCellDiffMap)initWithContext:(id)context cellDiff:(id)diff cellUIDList:(id)list;
- (TSTCellDiffMap)initWithContext:(id)context cellDiffArray:(id)array cellUIDList:(id)list uidBased:(BOOL)based;
- (id).cxx_construct;
- (id)addCellDiff:(id)diff andCellID:(TSUCellCoord)d avoidCopy:(BOOL)copy;
- (id)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d avoidCopy:(BOOL)copy;
- (id)cellDiffMapByIntersectingUIDs:(const void *)ds inRows:(BOOL)rows;
- (id)cellDiffMapByRemovingColumns:(const void *)columns;
- (id)cellDiffMapByRemovingRows:(const void *)rows;
- (id)copyWithZone:(_NSZone *)zone;
- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior;
- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block;
- (id)uuidBasedCellDiffMapByTableInfo:(id)info;
- (unint64_t)estimatedMemoryCost;
- (void)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d;
- (void)addCellDiffMap:(id)map;
- (void)addCellDiffs:(id)diffs atCellUIDs:(id)ds;
- (void)appendCellDiffMap:(id)map;
- (void)enumerateCellIDElementsUsingBlock:(id)block;
- (void)enumerateElementsUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_resolveCellIDsToUUIDsByTableInfo:(id)info;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellDiffMap

- (TSTCellDiffMap)initWithContext:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_array(MEMORY[0x277CBEA60], v5, v6, v7);
  v12 = objc_msgSend_cellUIDList(TSTCellUIDList, v9, v10, v11);
  v14 = objc_msgSend_initWithContext_cellDiffArray_cellUIDList_uidBased_(self, v13, contextCopy, v8, v12, 1);

  return v14;
}

- (TSTCellDiffMap)initWithContext:(id)context cellDiff:(id)diff cellUIDList:(id)list
{
  contextCopy = context;
  listCopy = list;
  v12 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v10, diff, v11);
  v14 = objc_msgSend_initWithContext_cellDiffArray_cellUIDList_uidBased_(self, v13, contextCopy, v12, listCopy, 1);

  return v14;
}

- (TSTCellDiffMap)initWithContext:(id)context cellDiffArray:(id)array cellUIDList:(id)list uidBased:(BOOL)based
{
  contextCopy = context;
  arrayCopy = array;
  listCopy = list;
  v71.receiver = self;
  v71.super_class = TSTCellDiffMap;
  v15 = [(TSTCellDiffMap *)&v71 initWithContext:contextCopy];
  if (!arrayCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap initWithContext:cellDiffArray:cellUIDList:uidBased:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 66, 0, "Nil cellDiffArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if (!listCopy)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap initWithContext:cellDiffArray:cellUIDList:uidBased:]", v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 67, 0, "Nil cellUIDList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  }

  if (!v15)
  {
    v34 = arrayCopy;
    goto LABEL_16;
  }

  v34 = arrayCopy;
  if (arrayCopy)
  {
    if (!listCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v34 = objc_msgSend_array(MEMORY[0x277CBEA60], v12, v13, v14);
    if (!listCopy)
    {
LABEL_11:
      listCopy = objc_msgSend_cellUIDList(TSTCellUIDList, v12, v13, v14);
    }
  }

  v35 = [TSTCellDiffArray alloc];
  v37 = objc_msgSend_initWithArray_context_(v35, v36, v34, contextCopy);
  v38 = *(v15 + 12);
  *(v15 + 12) = v37;

  v42 = objc_msgSend_copy(listCopy, v39, v40, v41);
  v43 = *(v15 + 13);
  *(v15 + 13) = v42;

  *(v15 + 88) = based;
  *(v15 + 89) = objc_msgSend_p_scanCellDiffArrayForCellBorderChanges_(v15, v44, *(v15 + 12), v45);
  *(v15 + 90) = objc_msgSend_p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty_(v15, v46, *(v15 + 12), v47);
  if (objc_msgSend_count(*(v15 + 12), v48, v49, v50) != 1 || !objc_msgSend_count(*(v15 + 13), v51, v52, v53))
  {
    v54 = objc_msgSend_count(*(v15 + 12), v51, v52, v53);
    if (v54 != objc_msgSend_count(*(v15 + 13), v55, v56, v57))
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTCellDiffMap initWithContext:cellDiffArray:cellUIDList:uidBased:]", v59);
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v63);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 78, 0, "unexpected diff/uidlist ratio");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
    }
  }

LABEL_16:

  return v15;
}

+ (id)cellDiffMapWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithContext_(v4, v5, contextCopy, v6);

  return v7;
}

- (void)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d
{
  row = d->_row;
  v6[0] = d->_column;
  v6[1] = row;
  v5 = objc_msgSend_addCellDiff_andCellUID_avoidCopy_(self, a2, diff, v6, 0);
}

- (id)addCellDiff:(id)diff andCellUID:(TSKUIDStructCoord *)d avoidCopy:(BOOL)copy
{
  copyCopy = copy;
  diffCopy = diff;
  if ((objc_msgSend_isUIDBased(self, v9, v10, v11) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap addCellDiff:andCellUID:avoidCopy:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 101, 0, "cannot add cellUIDs in cellID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_msgSend_count(self->_cellDiffArray, v12, v13, v14);
  v28 = objc_msgSend_cellUIDList(self, v25, v26, v27);
  v32 = objc_msgSend_count(v28, v29, v30, v31);

  if (v24 == v32)
  {
    if (copyCopy)
    {
      v36 = diffCopy;
    }

    else
    {
      v36 = objc_msgSend_copy(diffCopy, v33, v34, v35);
    }

    v45 = v36;
    objc_msgSend_addObject_(self->_cellDiffArray, v37, v36, v38);
    objc_msgSend_addCellUID_(self->_cellUIDList, v49, d, v50);
    if (self->_containsCellBorderChanges)
    {
      doesSetProperty = 1;
    }

    else
    {
      doesSetProperty = objc_msgSend_doesSetProperty_(v45, v51, 912, v52);
    }

    self->_containsCellBorderChanges = doesSetProperty;
    if (self->_containsSuppressCustomFormatHandlingProperty)
    {
      v54 = 1;
    }

    else
    {
      v54 = objc_msgSend_BOOLValueForSetProperty_(v45, v51, 914, v52);
    }

    self->_containsSuppressCustomFormatHandlingProperty = v54;
  }

  else
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCellDiffMap addCellDiff:andCellUID:avoidCopy:]", v35);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 117, 0, "can't add cells to a one-to-many mapping");

    v45 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
  }

  return v45;
}

- (id)addCellDiff:(id)diff andCellID:(TSUCellCoord)d avoidCopy:(BOOL)copy
{
  copyCopy = copy;
  diffCopy = diff;
  if (objc_msgSend_isUIDBased(self, v9, v10, v11))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap addCellDiff:andCellID:avoidCopy:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 123, 0, "cannot add cellIDs in UID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  p_cellIDs = &self->_cellIDs;
  if (objc_msgSend_count(self->_cellDiffArray, v12, v13, v14) == self->_cellIDs.__end_ - self->_cellIDs.__begin_)
  {
    if (copyCopy)
    {
      v28 = diffCopy;
    }

    else
    {
      v28 = objc_msgSend_copy(diffCopy, v24, v25, v26);
    }

    v37 = v28;
    objc_msgSend_addObject_(self->_cellDiffArray, v29, v28, v30);
    end = self->_cellIDs.__end_;
    cap = self->_cellIDs.__cap_;
    if (end >= cap)
    {
      v46 = end - p_cellIDs->__begin_;
      if ((v46 + 1) >> 61)
      {
        sub_22107C148();
      }

      v47 = cap - p_cellIDs->__begin_;
      v48 = v47 >> 2;
      if (v47 >> 2 <= (v46 + 1))
      {
        v48 = v46 + 1;
      }

      if (v47 >= 0x7FFFFFFFFFFFFFF8)
      {
        v49 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v49 = v48;
      }

      if (v49)
      {
        sub_2210874C4(&self->_cellIDs, v49);
      }

      v50 = (8 * v46);
      *v50 = d;
      v45 = (8 * v46 + 8);
      v51 = (self->_cellIDs.__end_ - p_cellIDs->__begin_);
      v52 = (v50 - v51);
      memcpy((v50 - v51), p_cellIDs->__begin_, v51);
      begin = p_cellIDs->__begin_;
      p_cellIDs->__begin_ = v52;
      self->_cellIDs.__end_ = v45;
      self->_cellIDs.__cap_ = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      *end = d;
      v45 = end + 1;
    }

    self->_cellIDs.__end_ = v45;
    if (self->_containsCellBorderChanges)
    {
      doesSetProperty = 1;
    }

    else
    {
      doesSetProperty = objc_msgSend_doesSetProperty_(diffCopy, v41, 912, v42);
    }

    self->_containsCellBorderChanges = doesSetProperty;
    if (self->_containsSuppressCustomFormatHandlingProperty)
    {
      v55 = 1;
    }

    else
    {
      v55 = objc_msgSend_BOOLValueForSetProperty_(diffCopy, v41, 914, v42);
    }

    self->_containsSuppressCustomFormatHandlingProperty = v55;
  }

  else
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCellDiffMap addCellDiff:andCellID:avoidCopy:]", v26);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 139, 0, "can't add cells to a one-to-many mapping");

    v37 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
  }

  return v37;
}

- (void)addCellDiffMap:(id)map
{
  mapCopy = map;
  isUIDBased = objc_msgSend_isUIDBased(self, v5, v6, v7);
  if (isUIDBased != objc_msgSend_isUIDBased(mapCopy, v9, v10, v11))
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellDiffMap addCellDiffMap:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 145, 0, "both maps should match isUIDBased state");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  if (objc_msgSend_isUIDBased(self, v12, v13, v14))
  {
    v27 = objc_msgSend_cellUIDList(mapCopy, v24, v25, v26);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_221414820;
    v52[3] = &unk_278464390;
    v52[4] = self;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v27, v28, v52, v29);
  }

  else
  {
    end = self->_cellIDs.__end_;
    v34 = *objc_msgSend_cellIDs(mapCopy, v24, v25, v26);
    v38 = objc_msgSend_cellIDs(mapCopy, v35, v36, v37);
    sub_221416F0C(&self->_cellIDs.__begin_, end, v34, *(v38 + 8), (*(v38 + 8) - v34) >> 3);
  }

  cellDiffArray = self->_cellDiffArray;
  v40 = objc_msgSend_cellDiffArray(mapCopy, v30, v31, v32);
  v44 = objc_msgSend_allObjects(v40, v41, v42, v43);
  objc_msgSend_addObjectsFromArray_(cellDiffArray, v45, v44, v46);

  if (self->_containsCellBorderChanges)
  {
    v50 = 1;
  }

  else
  {
    v50 = objc_msgSend_containsCellBorderChanges(mapCopy, v47, v48, v49);
  }

  self->_containsCellBorderChanges = v50;
  if (self->_containsSuppressCustomFormatHandlingProperty)
  {
    v51 = 1;
  }

  else
  {
    v51 = objc_msgSend_containsSuppressCustomFormatHandlingProperty(mapCopy, v47, v48, v49);
  }

  self->_containsSuppressCustomFormatHandlingProperty = v51;
}

- (void)addCellDiffs:(id)diffs atCellUIDs:(id)ds
{
  diffsCopy = diffs;
  dsCopy = ds;
  if ((objc_msgSend_isUIDBased(self, v8, v9, v10) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellDiffMap addCellDiffs:atCellUIDs:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 163, 0, "map should be UIDBased");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_count(diffsCopy, v11, v12, v13);
  if (v23 != objc_msgSend_count(dsCopy, v24, v25, v26))
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTCellDiffMap addCellDiffs:atCellUIDs:]", v28);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 164, 0, "cellDiffs and cellUIDList should match in length");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  objc_msgSend_addObjectsFromArray_(self->_cellDiffArray, v27, diffsCopy, v28);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_221414A88;
  v44[3] = &unk_278464390;
  v44[4] = self;
  objc_msgSend_enumerateCellUIDsUsingBlock_(dsCopy, v38, v44, v39);
  if (self->_containsCellBorderChanges)
  {
    v42 = 1;
  }

  else
  {
    v42 = objc_msgSend_p_scanNSArrayOfDiffsForCellBorderChanges_(self, v40, diffsCopy, v41);
  }

  self->_containsCellBorderChanges = v42;
  if (self->_containsSuppressCustomFormatHandlingProperty)
  {
    v43 = 1;
  }

  else
  {
    v43 = objc_msgSend_p_scanNSArrayOfDiffsForSuppressCustomFormatHandlingProperty_(self, v40, diffsCopy, v41);
  }

  self->_containsSuppressCustomFormatHandlingProperty = v43;
}

- (void)appendCellDiffMap:(id)map
{
  mapCopy = map;
  if (!objc_msgSend_isUIDBased(self, v5, v6, v7))
  {
    if (!objc_msgSend_isUIDBased(mapCopy, v8, v9, v10))
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_221414CEC;
      v28[3] = &unk_278464C90;
      v28[4] = self;
      objc_msgSend_enumerateCellIDElementsUsingBlock_(mapCopy, v13, v28, v14);
      goto LABEL_9;
    }

    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCellDiffMap appendCellDiffMap:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 190, 0, "Trying to append a uidBased cellDiffMap to a cellID diff map. Aborting.");
    goto LABEL_7;
  }

  if ((objc_msgSend_isUIDBased(mapCopy, v8, v9, v10) & 1) == 0)
  {
    v21 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCellDiffMap appendCellDiffMap:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v24, v16, v19, 181, 0, "Trying to append a cellID cellDiffMap to a uidBased diff map. Aborting.");
LABEL_7:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    goto LABEL_9;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_221414CB8;
  v29[3] = &unk_278464C68;
  v29[4] = self;
  objc_msgSend_enumerateElementsUsingBlock_(mapCopy, v11, v29, v12);
LABEL_9:
}

- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior
{
  v4 = objc_msgSend_pruneCellDiffMapAgainstTable_behavior_usingBlock_(self, a2, table, behavior, 0);

  return v4;
}

- (id)pruneCellDiffMapAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  if (objc_msgSend_count(self->_cellUIDList, v10, v11, v12) < 2)
  {
    if (!blockCopy)
    {
LABEL_9:
      v36 = objc_opt_new();
      cellUIDList = self->_cellUIDList;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_221415104;
      v47[3] = &unk_278464CE0;
      v30 = v36;
      v48 = v30;
      selfCopy = self;
      v34 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_usingBlock_(cellUIDList, v38, tableCopy, behavior, v47);
      v35 = v48;
      goto LABEL_10;
    }

    v18 = 0;
  }

  else
  {
    v16 = objc_msgSend_count(self->_cellDiffArray, v13, v14, v15);
    v18 = v16 == 1;
    if (!blockCopy)
    {
      if (v16 == 1)
      {
        v19 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_(self->_cellUIDList, v17, tableCopy, behavior);
        if (objc_msgSend_count(v19, v20, v21, v22))
        {
          v26 = objc_msgSend_allObjects(self->_cellDiffArray, v23, v24, v25);
          v30 = objc_msgSend_mutableCopy(v26, v27, v28, v29);
        }

        else
        {
          v30 = objc_opt_new();
        }

        v34 = v19;
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  v31 = objc_opt_new();
  v32 = self->_cellUIDList;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_221415044;
  v50[3] = &unk_278464CB8;
  v50[4] = self;
  v53 = v18;
  v52 = blockCopy;
  v30 = v31;
  v51 = v30;
  v34 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_usingBlock_(v32, v33, tableCopy, behavior, v50);

  v35 = v52;
LABEL_10:

LABEL_11:
  v39 = objc_alloc(objc_opt_class());
  v43 = objc_msgSend_context(self, v40, v41, v42);
  v45 = objc_msgSend_initWithContext_cellDiffArray_cellUIDList_uidBased_(v39, v44, v43, v30, v34, 1);

  return v45;
}

- (id)uuidBasedCellDiffMapByTableInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_copy(self, v5, v6, v7);
  objc_msgSend_p_resolveCellIDsToUUIDsByTableInfo_(v8, v9, infoCopy, v10);

  return v8;
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
        v16 = 0u;
        v17 = 0u;
        if (infoCopy)
        {
          objc_msgSend_cellUIDForCellID_(infoCopy, v8, v12, v9, v16, v17);
        }

        v13 = objc_msgSend_cellUIDList(self, v8, v12, v9, v16, v17);
        objc_msgSend_addCellUID_(v13, v14, &v16, v15);

        ++begin;
      }

      while (begin != end);
      begin = self->_cellIDs.__begin_;
    }

    self->_cellIDs.__end_ = begin;
    objc_msgSend_setUidBased_(self, v8, 1, v9);
  }
}

- (id)cellDiffMapByIntersectingUIDs:(const void *)ds inRows:(BOOL)rows
{
  rowsCopy = rows;
  selfCopy = self;
  if (rowsCopy)
  {
    sub_221280A48(v70, *ds, *(ds + 1));
    v10 = *objc_msgSend_rowUIDs(selfCopy->_cellUIDList, v7, v8, v9);
    v14 = *(objc_msgSend_rowUIDs(selfCopy->_cellUIDList, v11, v12, v13) + 8);
    v15 = v66;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3321888768;
    v67 = sub_2214156C0;
    v68 = &unk_2834A7E20;
    sub_2213FB8DC(&v69, v70);
    v16 = v66;
    while (v10 != v14)
    {
      if ((v67)(v16, *v10, v10[1]))
      {

        v25 = objc_alloc(objc_opt_class());
        v29 = objc_msgSend_context(selfCopy, v26, v27, v28);
        v32 = objc_msgSend_initWithContext_(v25, v30, v29, v31);

        cellUIDList = selfCopy->_cellUIDList;
        v34 = v62;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3321888768;
        v62[2] = sub_2214156F4;
        v62[3] = &unk_2834A7E58;
        sub_2213FB8DC(&v65, v70);
        v35 = v32;
        v63 = v35;
        v64 = selfCopy;
        objc_msgSend_enumerateCellUIDsUsingBlock_(cellUIDList, v36, v62, v37);
        v38 = v63;
        goto LABEL_13;
      }

      v10 += 2;
    }
  }

  else
  {
    sub_221280A48(v70, *ds, *(ds + 1));
    v20 = *objc_msgSend_columnUIDs(selfCopy->_cellUIDList, v17, v18, v19);
    v24 = *(objc_msgSend_columnUIDs(selfCopy->_cellUIDList, v21, v22, v23) + 8);
    v15 = v58;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3321888768;
    v59 = sub_22141579C;
    v60 = &unk_2834A7E20;
    sub_2213FB8DC(&v61, v70);
    v16 = v58;
    while (v20 != v24)
    {
      if ((v59)(v16, *v20, v20[1]))
      {

        v39 = objc_alloc(objc_opt_class());
        v43 = objc_msgSend_context(selfCopy, v40, v41, v42);
        v46 = objc_msgSend_initWithContext_(v39, v44, v43, v45);

        v47 = selfCopy->_cellUIDList;
        v34 = v54;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3321888768;
        v54[2] = sub_2214157D0;
        v54[3] = &unk_2834A7E58;
        sub_2213FB8DC(&v57, v70);
        v35 = v46;
        v55 = v35;
        v56 = selfCopy;
        objc_msgSend_enumerateCellUIDsUsingBlock_(v47, v48, v54, v49);
        v38 = v55;
LABEL_13:

        sub_2210BDEC0((v34 + 6));
        selfCopy = v35;
        goto LABEL_14;
      }

      v20 += 2;
    }
  }

LABEL_14:
  sub_2210BDEC0((v15 + 4));
  sub_2210BDEC0(v70);
  if (!objc_msgSend_count(selfCopy, v50, v51, v52))
  {

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)cellDiffMapByRemovingRows:(const void *)rows
{
  if (*(rows + 1) == *rows)
  {
    selfCopy = self;
  }

  else
  {
    v6 = objc_msgSend_context(self, a2, rows, v3);
    v9 = objc_msgSend_cellDiffMapWithContext_(TSTCellDiffMap, v7, v6, v8);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22141597C;
    v14[3] = &unk_278464D08;
    rowsCopy = rows;
    selfCopy = v9;
    v15 = selfCopy;
    objc_msgSend_enumerateElementsUsingBlock_(self, v11, v14, v12);
  }

  return selfCopy;
}

- (id)cellDiffMapByRemovingColumns:(const void *)columns
{
  if (*(columns + 1) == *columns)
  {
    selfCopy = self;
  }

  else
  {
    v6 = objc_msgSend_context(self, a2, columns, v3);
    v9 = objc_msgSend_cellDiffMapWithContext_(TSTCellDiffMap, v7, v6, v8);

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_221415B44;
    v14[3] = &unk_278464D08;
    columnsCopy = columns;
    selfCopy = v9;
    v15 = selfCopy;
    objc_msgSend_enumerateElementsUsingBlock_(self, v11, v14, v12);
  }

  return selfCopy;
}

- (void)enumerateElementsUsingBlock:(id)block
{
  blockCopy = block;
  if ((objc_msgSend_isUIDBased(self, v5, v6, v7) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellDiffMap enumerateElementsUsingBlock:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 374, 0, "cannot enumerate cellUIDs in cellID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (objc_msgSend_count(self->_cellDiffArray, v8, v9, v10) == 1)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(self->_cellDiffArray, v20, 0, v22);
    v27 = objc_msgSend_cellUIDList(self, v24, v25, v26);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_221415E38;
    v36[3] = &unk_278462198;
    v38 = blockCopy;
    v28 = v23;
    v37 = v28;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v27, v29, v36, v30);
  }

  else
  {
    v31 = objc_msgSend_cellUIDList(self, v20, v21, v22);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_221415E80;
    v34[3] = &unk_278462198;
    v34[4] = self;
    v35 = blockCopy;
    objc_msgSend_enumerateCellUIDsUsingBlock_(v31, v32, v34, v33);

    v28 = v35;
  }
}

- (void)enumerateCellIDElementsUsingBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellDiffMap enumerateCellIDElementsUsingBlock:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDiffMap.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 395, 0, "cannot enumerate cellIDs in UID mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v28 = 0;
  if (objc_msgSend_count(self->_cellDiffArray, v8, v9, v10) == 1)
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(self->_cellDiffArray, v20, 0, v21);
    p_cellIDs = &self->_cellIDs;
    begin = self->_cellIDs.__begin_;
    if (self->_cellIDs.__end_ != begin)
    {
      v25 = 0;
      do
      {
        blockCopy[2](blockCopy, v22, *&begin[v25], v25, &v28);
        ++v25;
        begin = p_cellIDs->__begin_;
      }

      while (v25 < p_cellIDs->__end_ - p_cellIDs->__begin_ && (v28 & 1) == 0);
    }
  }

  else if (self->_cellIDs.__end_ != self->_cellIDs.__begin_)
  {
    v26 = 0;
    do
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(self->_cellDiffArray, v20, v26, v21);
      blockCopy[2](blockCopy, v27, *&self->_cellIDs.__begin_[v26], v26, &v28);

      ++v26;
    }

    while (v26 < self->_cellIDs.__end_ - self->_cellIDs.__begin_ && (v28 & 1) == 0);
  }
}

- (BOOL)p_scanNSArrayOfDiffsForCellBorderChanges:(id)changes
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  changesCopy = changes;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(changesCopy);
        }

        if (objc_msgSend_doesSetProperty_(*(*(&v11 + 1) + 8 * i), v5, 912, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)p_scanCellDiffArrayForCellBorderChanges:(id)changes
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  changesCopy = changes;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(changesCopy);
        }

        if (objc_msgSend_doesSetProperty_(*(*(&v11 + 1) + 8 * i), v5, 912, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(changesCopy, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)p_scanNSArrayOfDiffsForSuppressCustomFormatHandlingProperty:(id)property
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  propertyCopy = property;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(propertyCopy);
        }

        if (objc_msgSend_BOOLValueForSetProperty_(*(*(&v11 + 1) + 8 * i), v5, 914, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)p_scanCellDiffArrayForSuppressCustomFormatHandlingProperty:(id)property
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  propertyCopy = property;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(propertyCopy);
        }

        if (objc_msgSend_BOOLValueForSetProperty_(*(*(&v11 + 1) + 8 * i), v5, 914, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(propertyCopy, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[128], v5);

  self->_uidBased = *(v6 + 64);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = 8 * v9;
    do
    {
      TSCE::CellCoordinateArchive::CellCoordinateArchive(v37, *v8);
      v11 = sub_2212697C0(v37);
      p_cellIDs = &self->_cellIDs;
      end = self->_cellIDs.__end_;
      cap = self->_cellIDs.__cap_;
      if (end >= cap)
      {
        v16 = end - p_cellIDs->__begin_;
        if ((v16 + 1) >> 61)
        {
          sub_22107C148();
        }

        v17 = cap - p_cellIDs->__begin_;
        v18 = v17 >> 2;
        if (v17 >> 2 <= (v16 + 1))
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          sub_2210874C4(p_cellIDs, v19);
        }

        v20 = (8 * v16);
        *v20 = v11;
        v15 = (8 * v16 + 8);
        v21 = self->_cellIDs.__end_ - self->_cellIDs.__begin_;
        v22 = (v20 - v21);
        memcpy(v20 - v21, p_cellIDs->__begin_, v21);
        begin = p_cellIDs->__begin_;
        p_cellIDs->__begin_ = v22;
        self->_cellIDs.__end_ = v15;
        self->_cellIDs.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        *end = v11;
        v15 = end + 1;
      }

      self->_cellIDs.__end_ = v15;
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v37);
      ++v8;
      v10 -= 8;
    }

    while (v10);
  }

  v24 = [TSTCellUIDList alloc];
  if (*(v6 + 48))
  {
    v26 = objc_msgSend_initFromMessage_unarchiver_(v24, v25, *(v6 + 48), unarchiverCopy);
  }

  else
  {
    v26 = objc_msgSend_initFromMessage_unarchiver_(v24, v25, &TST::_CellUIDListArchive_default_instance_, unarchiverCopy);
  }

  cellUIDList = self->_cellUIDList;
  self->_cellUIDList = v26;

  v28 = *(v6 + 56);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2214168D4;
  v36[3] = &unk_278464D30;
  v36[4] = self;
  v29 = unarchiverCopy;
  v31 = objc_opt_class();
  if (v28)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v29, v30, v28, v31, 0, v36);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v29, v30, MEMORY[0x277D80A18], v31, 0, v36);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2214168E8;
  v35[3] = &unk_27845E3F8;
  v35[4] = self;
  objc_msgSend_addFinalizeHandler_(v29, v32, v35, v33);
  self->_uidBased = 1;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22141710C, off_2812E4498[128]);

  cellDiffArray = self->_cellDiffArray;
  *(v6 + 16) |= 2u;
  v9 = *(v6 + 56);
  if (!v9)
  {
    v10 = *(v6 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0390](v10);
    *(v6 + 56) = v9;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v7, cellDiffArray, v9);
  uidBased = self->_uidBased;
  *(v6 + 16) |= 4u;
  *(v6 + 64) = uidBased;
  begin = self->_cellIDs.__begin_;
  end = self->_cellIDs.__end_;
  while (begin != end)
  {
    v27 = *begin;
    v17 = *(v6 + 40);
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = *(v6 + 32);
    v19 = *v17;
    if (v18 < *v17)
    {
      *(v6 + 32) = v18 + 1;
      v20 = *&v17[2 * v18 + 2];
      goto LABEL_14;
    }

    if (v19 == *(v6 + 36))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
      v17 = *(v6 + 40);
      v19 = *v17;
    }

    *v17 = v19 + 1;
    v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(v6 + 24));
    v21 = *(v6 + 32);
    v22 = *(v6 + 40) + 8 * v21;
    *(v6 + 32) = v21 + 1;
    *(v22 + 8) = v20;
LABEL_14:
    sub_221269820(&v27, v20);
    ++begin;
  }

  v24 = objc_msgSend_cellUIDList(self, v11, v12, v13);
  *(v6 + 16) |= 1u;
  v25 = *(v6 + 48);
  if (!v25)
  {
    v26 = *(v6 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v26);
    *(v6 + 48) = v25;
  }

  objc_msgSend_saveToMessage_archiver_(v24, v23, v25, archiverCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_context(self, v9, v10, v11);
  v15 = objc_msgSend_initWithContext_(v8, v13, v12, v14);

  v16 = objc_alloc(MEMORY[0x277CBEA60]);
  v20 = objc_msgSend_cellDiffArray(self, v17, v18, v19);
  v24 = objc_msgSend_allObjects(v20, v21, v22, v23);
  v26 = objc_msgSend_initWithArray_copyItems_(v16, v25, v24, 1);

  v27 = [TSTCellDiffArray alloc];
  v31 = objc_msgSend_context(self, v28, v29, v30);
  v33 = objc_msgSend_initWithArray_context_(v27, v32, v26, v31);
  objc_msgSend_setCellDiffArray_(v15, v34, v33, v35);

  if (objc_msgSend_isUIDBased(self, v36, v37, v38))
  {
    v42 = objc_msgSend_cellUIDList(self, v39, v40, v41);
    v45 = objc_msgSend_copyWithZone_(v42, v43, zone, v44);
    objc_msgSend_setCellUIDList_(v15, v46, v45, v47);
  }

  else if (v15 != self)
  {
    sub_22128026C((v15 + 64), self->_cellIDs.__begin_, self->_cellIDs.__end_, self->_cellIDs.__end_ - self->_cellIDs.__begin_);
  }

  isUIDBased = objc_msgSend_isUIDBased(self, v39, v40, v41);
  objc_msgSend_setUidBased_(v15, v49, isUIDBased, v50);
  v54 = objc_msgSend_containsCellBorderChanges(self, v51, v52, v53);
  objc_msgSend_setContainsCellBorderChanges_(v15, v55, v54, v56);

  return v15;
}

- (unint64_t)estimatedMemoryCost
{
  v5 = objc_msgSend_count(self->_cellDiffArray, a2, v2, v3);
  if (objc_msgSend_isUIDBased(self, v6, v7, v8))
  {
    v12 = 32 * objc_msgSend_count(self->_cellUIDList, v9, v10, v11);
  }

  else
  {
    v12 = self->_cellIDs.__end_ - self->_cellIDs.__begin_;
  }

  return v12 + 1000 * v5;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end