@interface TSTFormulaRewriteSpec
- (TSTFormulaRewriteSpec)initWithOwnerDeletion:(const TSKUIDStruct *)deletion;
- (TSTFormulaRewriteSpec)initWithOwnerInsertion:(const TSKUIDStruct *)insertion fromOwnerUID:(const TSKUIDStruct *)d;
- (TSTFormulaRewriteSpec)initWithPivotRuleChange:(const TSKUIDStruct *)change;
- (TSTFormulaRewriteSpec)initWithTransposeTable:(const TSKUIDStruct *)table transposedBodyRange:(TSCERangeCoordinate)range numberOfFooterRows:(unsigned int)rows;
- (id)initForCategorizedTableBaseToChromeRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper;
- (id)initForCategorizedTableChromeToBaseRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper srcCoordMapper:(id)coordMapper fromTableUID:(const TSKUIDStruct *)uID;
- (id)initForGroupBy:(const TSKUIDStruct *)by groupNodeUIDReassignment:(const void *)reassignment;
- (id)initForGroupBy:(const TSKUIDStruct *)by withGroupByChange:(id)change;
- (id)initForInsertingRowsOrColumnsIntoTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows;
- (id)initForMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source;
- (id)initForMergeOriginsMovedWithMap:(const void *)map reverseMap:(const void *)reverseMap inTableUID:(const TSKUIDStruct *)d;
- (id)initForMovingRegionWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract;
- (id)initForMovingRowsOrColumnsInTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids shuffleMap:(id)map areRows:(BOOL)rows srcTract:(const void *)tract destTract:(const void *)destTract;
- (id)initForPastingCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids;
- (id)initForRemoveRowsOrColumnsFromTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows;
- (id)initForReorderRowsWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map;
- (id)initForSortWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map;
- (id)initForTableUIDReassignment:(const void *)reassignment;
- (id)initForUndoMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source;
- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSTFormulaRewriteSpec

- (TSTFormulaRewriteSpec)initWithOwnerDeletion:(const TSKUIDStruct *)deletion
{
  v8.receiver = self;
  v8.super_class = TSTFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v8 initWithRewriteType:1];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setTableUID_(v4, v5, deletion->_lower, deletion->_upper);
  }

  return v6;
}

- (TSTFormulaRewriteSpec)initWithOwnerInsertion:(const TSKUIDStruct *)insertion fromOwnerUID:(const TSKUIDStruct *)d
{
  v11.receiver = self;
  v11.super_class = TSTFormulaRewriteSpec;
  v6 = [(TSCEFormulaRewriteSpec *)&v11 initWithRewriteType:0];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setTableUID_(v6, v7, insertion->_lower, insertion->_upper);
    objc_msgSend_setFromTableUID_(v8, v9, d->_lower, d->_upper);
  }

  return v8;
}

- (TSTFormulaRewriteSpec)initWithTransposeTable:(const TSKUIDStruct *)table transposedBodyRange:(TSCERangeCoordinate)range numberOfFooterRows:(unsigned int)rows
{
  v5 = *&rows;
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  v19.receiver = self;
  v19.super_class = TSTFormulaRewriteSpec;
  v9 = [(TSCEFormulaRewriteSpec *)&v19 initWithRewriteType:11];
  v11 = v9;
  if (v9)
  {
    objc_msgSend_setTableUID_(v9, v10, table->_lower, table->_upper);
    v12 = objc_opt_new();
    objc_msgSend_setTransposedBodyRange_(v12, v13, topLeft, bottomRight);
    objc_msgSend_setNumberOfFooterRows_(v12, v14, v5, v15);
    objc_msgSend_setTransposedInfo_(v11, v16, v12, v17);
  }

  return v11;
}

- (id)initForRemoveRowsOrColumnsFromTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows
{
  rowsCopy = rows;
  v17.receiver = self;
  v17.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v17 initWithRewriteType:2];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, table->_lower, table->_upper);
    v11 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v13 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v11, v12, table, uuids, rowsCopy);
    objc_msgSend_setRowColumnInfo_(v10, v14, v13, v15);
  }

  return v10;
}

- (id)initForInsertingRowsOrColumnsIntoTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids areRows:(BOOL)rows
{
  rowsCopy = rows;
  v17.receiver = self;
  v17.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v17 initWithRewriteType:3];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, table->_lower, table->_upper);
    v11 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v13 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v11, v12, table, uuids, rowsCopy);
    objc_msgSend_setRowColumnInfo_(v10, v14, v13, v15);
  }

  return v10;
}

- (id)initForMovingRowsOrColumnsInTable:(const TSKUIDStruct *)table rowColumnUuids:(const void *)uuids shuffleMap:(id)map areRows:(BOOL)rows srcTract:(const void *)tract destTract:(const void *)destTract
{
  rowsCopy = rows;
  mapCopy = map;
  v31.receiver = self;
  v31.super_class = TSTFormulaRewriteSpec;
  v15 = [(TSCEFormulaRewriteSpec *)&v31 initWithRewriteType:4];
  v17 = v15;
  if (v15)
  {
    objc_msgSend_setTableUID_(v15, v16, table->_lower, table->_upper);
    v18 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v20 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v18, v19, table, tract, table, destTract);
    objc_msgSend_setRegionMovedInfo_(v17, v21, v20, v22);

    v23 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v25 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v23, v24, table, uuids, rowsCopy);
    objc_msgSend_setRowColumnInfo_(v17, v26, v25, v27);

    objc_msgSend_setShuffleMap_(v17, v28, mapCopy, v29);
  }

  return v17;
}

- (id)initForSortWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map
{
  mapCopy = map;
  v20.receiver = self;
  v20.super_class = TSTFormulaRewriteSpec;
  v9 = [(TSCEFormulaRewriteSpec *)&v20 initWithRewriteType:5];
  v11 = v9;
  if (v9)
  {
    objc_msgSend_setTableUID_(v9, v10, d->_lower, d->_upper);
    v12 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v14 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v12, v13, d, uids, 1);
    objc_msgSend_setRowColumnInfo_(v11, v15, v14, v16);

    objc_msgSend_setShuffleMap_(v11, v17, mapCopy, v18);
  }

  return v11;
}

- (id)initForReorderRowsWithTableUID:(const TSKUIDStruct *)d rowUids:(const void *)uids shuffleMap:(id)map
{
  mapCopy = map;
  v20.receiver = self;
  v20.super_class = TSTFormulaRewriteSpec;
  v9 = [(TSCEFormulaRewriteSpec *)&v20 initWithRewriteType:12];
  v11 = v9;
  if (v9)
  {
    objc_msgSend_setTableUID_(v9, v10, d->_lower, d->_upper);
    v12 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
    v14 = objc_msgSend_initWithFormulaOwnerUID_uuids_areRows_(v12, v13, d, uids, 1);
    objc_msgSend_setRowColumnInfo_(v11, v15, v14, v16);

    objc_msgSend_setShuffleMap_(v11, v17, mapCopy, v18);
  }

  return v11;
}

- (id)initForMovingRegionWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract
{
  v19.receiver = self;
  v19.super_class = TSTFormulaRewriteSpec;
  v10 = [(TSCEFormulaRewriteSpec *)&v19 initWithRewriteType:6];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTableUID_(v10, v11, d->_lower, d->_upper);
    v13 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v15 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v13, v14, d, tract, iD, destTract);
    objc_msgSend_setRegionMovedInfo_(v12, v16, v15, v17);
  }

  return v12;
}

- (id)initForCategorizedTableBaseToChromeRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper
{
  mapperCopy = mapper;
  v26.receiver = self;
  v26.super_class = TSTFormulaRewriteSpec;
  v13 = [(TSCEFormulaRewriteSpec *)&v26 initWithRewriteType:14];
  v15 = v13;
  if (v13)
  {
    objc_msgSend_setTableUID_(v13, v14, d->_lower, d->_upper);
    v16 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v18 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v16, v17, d, tract, iD, destTract);
    objc_msgSend_setRegionMovedInfo_(v15, v19, v18, v20);

    objc_msgSend_setCoordMapper_(v15, v21, mapperCopy, v22);
    objc_msgSend_addCoordMapper_(v15, v23, mapperCopy, v24);
  }

  return v15;
}

- (id)initForCategorizedTableChromeToBaseRewriterWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract coordMapper:(id)mapper srcCoordMapper:(id)coordMapper fromTableUID:(const TSKUIDStruct *)uID
{
  mapperCopy = mapper;
  coordMapperCopy = coordMapper;
  v34.receiver = self;
  v34.super_class = TSTFormulaRewriteSpec;
  v17 = [(TSCEFormulaRewriteSpec *)&v34 initWithRewriteType:15];
  v19 = v17;
  if (v17)
  {
    objc_msgSend_setTableUID_(v17, v18, d->_lower, d->_upper);
    v20 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
    v22 = objc_msgSend_initWithSrcTableUID_srcTract_dstTableUID_destTract_(v20, v21, d, tract, iD, destTract);
    objc_msgSend_setRegionMovedInfo_(v19, v23, v22, v24);

    if (*uID == 0)
    {
      uIDCopy = d;
    }

    else
    {
      uIDCopy = uID;
    }

    objc_msgSend_setFromTableUID_(v19, v25, uIDCopy->_lower, uIDCopy->_upper);
    objc_msgSend_setCoordMapper_(v19, v27, mapperCopy, v28);
    objc_msgSend_setSrcCoordMapper_(v19, v29, coordMapperCopy, v30);
    objc_msgSend_addCoordMapper_(v19, v31, mapperCopy, v32);
  }

  return v19;
}

- (id)initForMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source
{
  v22.receiver = self;
  v22.super_class = TSTFormulaRewriteSpec;
  v10 = [(TSCEFormulaRewriteSpec *)&v22 initWithRewriteType:7];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTableUID_(v10, v11, d->_lower, d->_upper);
    v13 = [TSCEFormulaRewrite_RegionInfo alloc];
    v15 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v13, v14, d, uids, rowUids);
    v16 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
    v18 = objc_msgSend_initWithMergeRegion_mergeSource_(v16, v17, v15, *&source);
    objc_msgSend_setMergeInfo_(v12, v19, v18, v20);
  }

  return v12;
}

- (id)initForUndoMergeCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids mergeSource:(TSUCellCoord)source
{
  v22.receiver = self;
  v22.super_class = TSTFormulaRewriteSpec;
  v10 = [(TSCEFormulaRewriteSpec *)&v22 initWithRewriteType:8];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTableUID_(v10, v11, d->_lower, d->_upper);
    v13 = [TSCEFormulaRewrite_RegionInfo alloc];
    v15 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v13, v14, d, uids, rowUids);
    v16 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
    v18 = objc_msgSend_initWithMergeRegion_mergeSource_(v16, v17, v15, *&source);
    objc_msgSend_setMergeInfo_(v12, v19, v18, v20);
  }

  return v12;
}

- (id)initForMergeOriginsMovedWithMap:(const void *)map reverseMap:(const void *)reverseMap inTableUID:(const TSKUIDStruct *)d
{
  v17.receiver = self;
  v17.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v17 initWithRewriteType:9];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, d->_lower, d->_upper);
    v11 = [TSCEFormulaRewrite_MergeOriginMovedInfo alloc];
    v13 = objc_msgSend_initWithMergeOriginsMap_reverseMap_(v11, v12, map, reverseMap);
    objc_msgSend_setMergeOriginMovedInfo_(v10, v14, v13, v15);
  }

  return v10;
}

- (id)initForPastingCellsWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids
{
  v20.receiver = self;
  v20.super_class = TSTFormulaRewriteSpec;
  v8 = [(TSCEFormulaRewriteSpec *)&v20 initWithRewriteType:17];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setTableUID_(v8, v9, d->_lower, d->_upper);
    v11 = [TSCEFormulaRewrite_RegionInfo alloc];
    v13 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v11, v12, d, uids, rowUids);
    v14 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
    v16 = objc_msgSend_initWithMergeRegion_mergeSource_(v14, v15, v13, 0);
    objc_msgSend_setMergeInfo_(v10, v17, v16, v18);
  }

  return v10;
}

- (id)initForTableUIDReassignment:(const void *)reassignment
{
  v12.receiver = self;
  v12.super_class = TSTFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v12 initWithRewriteType:10];
  if (v4)
  {
    v5 = [TSCERewriteTableUIDInfo alloc];
    v8 = objc_msgSend_initWithTableUIDMap_(v5, v6, reassignment, v7);
    objc_msgSend_setTableUIDInfo_(v4, v9, v8, v10);
  }

  return v4;
}

- (id)initForGroupBy:(const TSKUIDStruct *)by withGroupByChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = TSTFormulaRewriteSpec;
  v6 = [(TSCEFormulaRewriteSpec *)&v13 initWithRewriteType:16];
  v9 = v6;
  if (v6)
  {
    objc_msgSend_setGroupByChange_(v6, v7, changeCopy, v8);
    objc_msgSend_setCanBeNested_(v9, v10, 0, v11);
  }

  return v9;
}

- (id)initForGroupBy:(const TSKUIDStruct *)by groupNodeUIDReassignment:(const void *)reassignment
{
  v13.receiver = self;
  v13.super_class = TSTFormulaRewriteSpec;
  v6 = [(TSCEFormulaRewriteSpec *)&v13 initWithRewriteType:13];
  if (v6)
  {
    v7 = [TSCERewriteGroupNodeUIDInfo alloc];
    v9 = objc_msgSend_initWithGroupByUid_groupNodeUIDMap_(v7, v8, by, reassignment);
    objc_msgSend_setGroupNodeUIDInfo_(v6, v10, v9, v11);
  }

  return v6;
}

- (TSTFormulaRewriteSpec)initWithPivotRuleChange:(const TSKUIDStruct *)change
{
  v8.receiver = self;
  v8.super_class = TSTFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v8 initWithRewriteType:18];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setTableUID_(v4, v5, change->_lower, change->_upper);
  }

  return v6;
}

- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  v5 = *(message + 32);
  v135.receiver = self;
  v135.super_class = TSTFormulaRewriteSpec;
  unarchiver = [(TSCEFormulaRewriteSpec *)&v135 initWithRewriteType:v5, unarchiver];
  if (unarchiver)
  {
    v9 = *(message + 4);
    if (v9)
    {
      v10 = TSKUIDStruct::loadFromMessage(*(message + 3), v6);
      objc_msgSend_setTableUID_(unarchiver, v11, v10, v11);
      v9 = *(message + 4);
    }

    if ((v9 & 2) != 0)
    {
      v12 = TSKUIDStruct::loadFromMessage(*(message + 4), v6);
      objc_msgSend_setConditionalStyleOwnerUID_(unarchiver, v13, v12, v13);
      v9 = *(message + 4);
    }

    if ((v9 & 4) != 0)
    {
      v14 = TSKUIDStruct::loadFromMessage(*(message + 5), v6);
      objc_msgSend_setGroupByUID_(unarchiver, v15, v14, v15);
      v9 = *(message + 4);
    }

    if ((v9 & 0x4000) != 0)
    {
      objc_msgSend_setIsInverse_(unarchiver, v6, *(message + 132), v7);
    }

    switch(v5)
    {
      case 2:
      case 3:
        v52 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 6))
        {
          v55 = objc_msgSend_initFromMessage_(v52, v53, *(message + 6), v54);
        }

        else
        {
          v55 = objc_msgSend_initFromMessage_(v52, v53, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v54);
        }

        v22 = v55;
        objc_msgSend_setRowColumnInfo_(unarchiver, v56, v55, v57);
        goto LABEL_60;
      case 4:
        v82 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 6))
        {
          v85 = objc_msgSend_initFromMessage_(v82, v83, *(message + 6), v84);
        }

        else
        {
          v85 = objc_msgSend_initFromMessage_(v82, v83, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v84);
        }

        v88 = v85;
        objc_msgSend_setRowColumnInfo_(unarchiver, v86, v85, v87);

        if ((*(message + 16) & 0x10) == 0)
        {
          v91 = MEMORY[0x277D81150];
          v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "[TSTFormulaRewriteSpec initFromMessage:unarchiver:]", v90);
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaRewriteSpec.mm", v94);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v96, v92, v95, 415, 0, "Move rewriteSpec should have AUX rowColumnInfo in archive");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99);
        }

        v100 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 7))
        {
          v103 = objc_msgSend_initFromMessage_(v100, v101, *(message + 7), v102);
        }

        else
        {
          v103 = objc_msgSend_initFromMessage_(v100, v101, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v102);
        }

        v22 = v103;
        v107 = objc_msgSend_rowColumnInfo(unarchiver, v104, v105, v106);
        objc_msgSend_setAuxRowColumnInfo_(v107, v108, v22, v109);

        v110 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
        if (*(message + 8))
        {
          v113 = objc_msgSend_initFromMessage_(v110, v111, *(message + 8), v112);
        }

        else
        {
          v113 = objc_msgSend_initFromMessage_(v110, v111, &TSCE::_RegionMovedInfoArchive_default_instance_, v112);
        }

        v49 = v113;
        objc_msgSend_setRegionMovedInfo_(unarchiver, v114, v113, v115);
        goto LABEL_59;
      case 5:
      case 12:
        v24 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 6))
        {
          v27 = objc_msgSend_initFromMessage_(v24, v25, *(message + 6), v26);
        }

        else
        {
          v27 = objc_msgSend_initFromMessage_(v24, v25, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v26);
        }

        v30 = v27;
        objc_msgSend_setRowColumnInfo_(unarchiver, v28, v27, v29);

        if ((*(message + 16) & 0x10) == 0)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTFormulaRewriteSpec initFromMessage:unarchiver:]", v32);
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaRewriteSpec.mm", v36);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 424, 0, "Sort/Reorder rewriteSpec should have AUX rowColumnInfo in archive");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
        }

        v42 = [TSCEFormulaRewriteInfo_RowColumnInfo alloc];
        if (*(message + 7))
        {
          v45 = objc_msgSend_initFromMessage_(v42, v43, *(message + 7), v44);
        }

        else
        {
          v45 = objc_msgSend_initFromMessage_(v42, v43, &TSCE::_ColumnOrRowUuidsInfoArchive_default_instance_, v44);
        }

        v22 = v45;
        v49 = objc_msgSend_rowColumnInfo(unarchiver, v46, v47, v48);
        objc_msgSend_setAuxRowColumnInfo_(v49, v50, v22, v51);
        goto LABEL_59;
      case 6:
      case 14:
      case 15:
        v16 = [TSCEFormulaRewrite_RegionMovedInfo alloc];
        if (*(message + 8))
        {
          v19 = objc_msgSend_initFromMessage_(v16, v17, *(message + 8), v18);
        }

        else
        {
          v19 = objc_msgSend_initFromMessage_(v16, v17, &TSCE::_RegionMovedInfoArchive_default_instance_, v18);
        }

        v22 = v19;
        objc_msgSend_setRegionMovedInfo_(unarchiver, v20, v19, v21);
        goto LABEL_60;
      case 7:
      case 8:
      case 17:
        if ((*(message + 17) & 4) != 0)
        {
          v23 = *(*(message + 13) + 28) | (*(*(message + 13) + 24) << 32);
        }

        else
        {
          v23 = 0x7FFF7FFFFFFFLL;
        }

        v58 = [TSCEFormulaRewrite_RegionMergedInfo alloc];
        v59 = [TSCEFormulaRewrite_RegionInfo alloc];
        if (*(message + 9))
        {
          v62 = objc_msgSend_initFromMessage_(v59, v60, *(message + 9), v61);
        }

        else
        {
          v62 = objc_msgSend_initFromMessage_(v59, v60, TSCE::_RegionInfoArchive_default_instance_, v61);
        }

        v22 = v62;
        v49 = objc_msgSend_initWithMergeRegion_mergeSource_(v58, v63, v62, v23);
        objc_msgSend_setMergeInfo_(unarchiver, v64, v49, v65);
LABEL_59:

        goto LABEL_60;
      case 9:
        v117 = [TSCEFormulaRewrite_MergeOriginMovedInfo alloc];
        if (*(message + 12))
        {
          v120 = objc_msgSend_initFromMessage_(v117, v118, *(message + 12), v119);
        }

        else
        {
          v120 = objc_msgSend_initFromMessage_(v117, v118, &TSCE::_MergeOriginMovedArchive_default_instance_, v119);
        }

        v22 = v120;
        objc_msgSend_setMergeOriginMovedInfo_(unarchiver, v121, v120, v122);
        goto LABEL_60;
      case 10:
        v129 = [TSCERewriteTableUIDInfo alloc];
        if (*(message + 10))
        {
          v132 = objc_msgSend_initFromMessage_(v129, v130, *(message + 10), v131);
        }

        else
        {
          v132 = objc_msgSend_initFromMessage_(v129, v130, &TSCE::_RewriteTableUIDInfoArchive_default_instance_, v131);
        }

        v22 = v132;
        objc_msgSend_setTableUIDInfo_(unarchiver, v133, v132, v134);
        goto LABEL_60;
      case 11:
        v22 = objc_opt_new();
        v72 = *(message + 11);
        if (!v72)
        {
          v72 = TSCE::_TableTransposeInfoArchive_default_instance_;
        }

        v73 = v72[3];
        if (v73)
        {
          v74 = v73;
        }

        else
        {
          v74 = &TSCE::_RangeCoordinateArchive_default_instance_;
        }

        v75 = sub_22126987C(v74);
        objc_msgSend_setTransposedBodyRange_(v22, v76, v75, v76);
        v79 = *(message + 11);
        if (!v79)
        {
          v79 = TSCE::_TableTransposeInfoArchive_default_instance_;
        }

        objc_msgSend_setNumberOfFooterRows_(v22, v77, *(v79 + 8), v78);
        objc_msgSend_setTransposedInfo_(unarchiver, v80, v22, v81);
        goto LABEL_60;
      case 13:
        v123 = [TSCERewriteGroupNodeUIDInfo alloc];
        if (*(message + 14))
        {
          v126 = objc_msgSend_initFromMessage_(v123, v124, *(message + 14), v125);
        }

        else
        {
          v126 = objc_msgSend_initFromMessage_(v123, v124, &TSCE::_RewriteGroupNodeUIDInfoArchive_default_instance_, v125);
        }

        v22 = v126;
        objc_msgSend_setGroupNodeUIDInfo_(unarchiver, v127, v126, v128);
        goto LABEL_60;
      case 16:
        v66 = [TSCEGroupByChange alloc];
        if (*(message + 15))
        {
          v69 = objc_msgSend_initWithArchive_(v66, v67, *(message + 15), v68);
        }

        else
        {
          v69 = objc_msgSend_initWithArchive_(v66, v67, &TSCE::_GroupByChangeArchive_default_instance_, v68);
        }

        v22 = v69;
        objc_msgSend_setGroupByChange_(unarchiver, v70, v69, v71);
        goto LABEL_60;
      case 18:
        return unarchiver;
      default:
        v22 = unarchiver;
        unarchiver = 0;
LABEL_60:

        break;
    }
  }

  return unarchiver;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v10 = objc_msgSend_tableUID(self, v7, v8, v9);
  if (v10 | v11)
  {
    v118._lower = objc_msgSend_tableUID(self, v11, v12, v13);
    v118._upper = v14;
    *(message + 4) |= 1u;
    v15 = *(message + 3);
    if (!v15)
    {
      v16 = *(message + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x223DA0360](v16);
      *(message + 3) = v15;
    }

    TSKUIDStruct::saveToMessage(&v118, v15);
  }

  v17 = objc_msgSend_conditionalStyleOwnerUID(self, v11, v12, v13, v118._lower, v118._upper);
  if (v17 | v18)
  {
    v118._lower = objc_msgSend_conditionalStyleOwnerUID(self, v18, v19, v20);
    v118._upper = v21;
    *(message + 4) |= 2u;
    v22 = *(message + 4);
    if (!v22)
    {
      v23 = *(message + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0360](v23);
      *(message + 4) = v22;
    }

    TSKUIDStruct::saveToMessage(&v118, v22);
  }

  v24 = objc_msgSend_groupByUID(self, v18, v19, v20, v118._lower, v118._upper);
  if (v24 | v25)
  {
    v118._lower = objc_msgSend_groupByUID(self, v25, v26, v27);
    v118._upper = v28;
    *(message + 4) |= 4u;
    v29 = *(message + 5);
    if (!v29)
    {
      v30 = *(message + 1);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x223DA0360](v30);
      *(message + 5) = v29;
    }

    TSKUIDStruct::saveToMessage(&v118, v29);
  }

  isInverse = objc_msgSend_isInverse(self, v25, v26, v27, v118._lower, v118._upper);
  *(message + 4) |= 0x4000u;
  *(message + 132) = isInverse;
  v35 = objc_msgSend_rewriteType(self, v32, v33, v34);
  *(message + 4) |= 0x2000u;
  *(message + 32) = v35;
  switch(objc_msgSend_rewriteType(self, v36, v37, v38))
  {
    case 2u:
    case 3u:
      v44 = objc_msgSend_rowColumnInfo(self, v39, v40, v41);
      *(message + 4) |= 8u;
      v45 = *(message + 6);
      if (!v45)
      {
        v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>();
        *(message + 6) = v45;
      }

      goto LABEL_60;
    case 4u:
      v87 = objc_msgSend_rowColumnInfo(self, v39, v40, v41);
      *(message + 4) |= 8u;
      v88 = *(message + 6);
      if (!v88)
      {
        v88 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>();
        *(message + 6) = v88;
      }

      objc_msgSend_saveToMessage_(v87, v85, v88, v86);

      v92 = objc_msgSend_rowColumnInfo(self, v89, v90, v91);
      v98 = objc_msgSend_auxRowColumnInfo(v92, v93, v94, v95);
      *(message + 4) |= 0x10u;
      v99 = *(message + 7);
      if (!v99)
      {
        v99 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>();
        *(message + 7) = v99;
      }

      objc_msgSend_saveToMessage_(v98, v96, v99, v97);

      v44 = objc_msgSend_regionMovedInfo(self, v100, v101, v102);
      *(message + 4) |= 0x20u;
      v45 = *(message + 8);
      if (!v45)
      {
        v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionMovedInfoArchive>();
        *(message + 8) = v45;
      }

      goto LABEL_60;
    case 5u:
    case 0xCu:
      v69 = objc_msgSend_rowColumnInfo(self, v39, v40, v41);
      *(message + 4) |= 8u;
      v70 = *(message + 6);
      if (!v70)
      {
        v70 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>();
        *(message + 6) = v70;
      }

      objc_msgSend_saveToMessage_(v69, v67, v70, v68);

      v44 = objc_msgSend_rowColumnInfo(self, v71, v72, v73);
      v79 = objc_msgSend_auxRowColumnInfo(v44, v74, v75, v76);
      *(message + 4) |= 0x10u;
      v80 = *(message + 7);
      if (!v80)
      {
        v80 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnOrRowUuidsInfoArchive>();
        *(message + 7) = v80;
      }

      objc_msgSend_saveToMessage_(v79, v77, v80, v78);

      goto LABEL_68;
    case 6u:
    case 0xEu:
    case 0xFu:
      v44 = objc_msgSend_regionMovedInfo(self, v39, v40, v41);
      *(message + 4) |= 0x20u;
      v45 = *(message + 8);
      if (!v45)
      {
        v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionMovedInfoArchive>();
        *(message + 8) = v45;
      }

      goto LABEL_60;
    case 7u:
    case 8u:
    case 0x11u:
      v44 = objc_msgSend_mergeInfo(self, v39, v40, v41);
      v51 = objc_msgSend_mergeRegion(v44, v46, v47, v48);
      *(message + 4) |= 0x40u;
      v52 = *(message + 9);
      if (!v52)
      {
        v53 = *(message + 1);
        if (v53)
        {
          v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
        }

        v52 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v53, v49);
        *(message + 9) = v52;
      }

      objc_msgSend_saveToMessage_(v51, v49, v52, v50);

      v60 = *objc_msgSend_mergeSource(v44, v54, v55, v56);
      if (v60 != 0x7FFFFFFF && (v60 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        *(message + 4) |= 0x400u;
        v61 = *(message + 13);
        if (!v61)
        {
          v61 = google::protobuf::Arena::CreateMaybeMessage<TSCE::MergeSourceArchive>();
          *(message + 13) = v61;
        }

        v62 = *(objc_msgSend_mergeSource(v44, v57, v58, v59) + 4);
        v61[4] |= 1u;
        v61[6] = v62;
        v66 = *objc_msgSend_mergeSource(v44, v63, v64, v65);
        v61[4] |= 2u;
        v61[7] = v66;
      }

      goto LABEL_68;
    case 9u:
      v44 = objc_msgSend_mergeOriginMovedInfo(self, v39, v40, v41);
      *(message + 4) |= 0x200u;
      v45 = *(message + 12);
      if (!v45)
      {
        v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::MergeOriginMovedArchive>();
        *(message + 12) = v45;
      }

      goto LABEL_60;
    case 0xAu:
      v44 = objc_msgSend_tableUIDInfo(self, v39, v40, v41);
      *(message + 4) |= 0x80u;
      v45 = *(message + 10);
      if (!v45)
      {
        v81 = *(message + 1);
        if (v81)
        {
          v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
        }

        v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive>(v81);
        *(message + 10) = v45;
      }

      goto LABEL_60;
    case 0xBu:
      *(message + 4) |= 0x100u;
      v103 = *(message + 11);
      if (!v103)
      {
        v103 = google::protobuf::Arena::CreateMaybeMessage<TSCE::TableTransposeInfoArchive>();
        *(message + 11) = v103;
      }

      v104 = objc_msgSend_transposedInfo(self, v39, v40, v41);
      v118._lower = objc_msgSend_transposedBodyRange(v104, v105, v106, v107);
      v118._upper = v108;
      *(v103 + 16) |= 1u;
      v109 = *(v103 + 24);
      if (!v109)
      {
        v110 = *(v103 + 8);
        if (v110)
        {
          v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
        }

        v109 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v110);
        *(v103 + 24) = v109;
      }

      sub_221269844(&v118, v109);

      v44 = objc_msgSend_transposedInfo(self, v111, v112, v113, v118._lower, v118._upper);
      v117 = objc_msgSend_numberOfFooterRows(v44, v114, v115, v116);
      *(v103 + 16) |= 2u;
      *(v103 + 32) = v117;
      goto LABEL_68;
    case 0xDu:
      v44 = objc_msgSend_groupNodeUIDInfo(self, v39, v40, v41);
      *(message + 4) |= 0x800u;
      v45 = *(message + 14);
      if (!v45)
      {
        v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteGroupNodeUIDInfoArchive>();
        *(message + 14) = v45;
      }

LABEL_60:
      objc_msgSend_saveToMessage_(v44, v42, v45, v43);
      goto LABEL_68;
    case 0x10u:
      v44 = objc_msgSend_groupByChange(self, v39, v40, v41);
      *(message + 4) |= 0x1000u;
      v84 = *(message + 15);
      if (!v84)
      {
        v84 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByChangeArchive>();
        *(message + 15) = v84;
      }

      objc_msgSend_saveToArchive_(v44, v82, v84, v83);
LABEL_68:

      break;
    default:
      break;
  }
}

@end