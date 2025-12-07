@interface TSTTableTile
- (BOOL)isEmpty;
- (BOOL)lastSavedInBNC;
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (NSIndexSet)populatedRows;
- (TSTCellStorage)cellStorageRefAtColumnIndex:(unsigned __int16)index tileRowIndex:(unsigned int)rowIndex;
- (TSTTableTile)initWithRows:(id)rows shouldUseWideRows:(BOOL)wideRows context:(id)context;
- (id)description;
- (id)findOrAddRowInfoAtTileRowIndex:(unsigned int)index;
- (id)removeColumnsAtColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns;
- (id)rowInfoAtOrAfterTileRowIndex:(unsigned int)index outTileRowIndex:(unsigned int *)rowIndex;
- (id)rowInfoForTileRowIndex:(unsigned int)index;
- (id)shiftUpAndYankBy:(unsigned int)by;
- (id)yankRowInfoAtTileRowIndex:(unsigned int)index;
- (id)yankRowsAtTileRowIndex:(unsigned int)index;
- (id)yankRowsAtTileRowIndex:(unsigned int)index count:(unsigned int)count;
- (int)insertColumnsAtColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns;
- (int64_t)setCell:(id)cell atColumnIndex:(unsigned __int16)index tileRowIndex:(unsigned int)rowIndex;
- (unint64_t)archivingCompatibilityVersion;
- (unsigned)maxColumn;
- (unsigned)maxRow;
- (unsigned)numRows;
- (void)_removeRowsAtTileRowIndex:(unsigned int)index numberOfRows:(unsigned int)rows shiftingContent:(BOOL)content;
- (void)_setRowInfo:(id)info atTileRowIndex:(unsigned int)index;
- (void)didApplyConcurrentCellMap:(id)map;
- (void)enumerateRowsAndIndexesWithBlock:(id)block;
- (void)enumerateRowsWithBlock:(id)block;
- (void)insertRowsAtTileRowIndex:(unsigned int)index numberOfRows:(unsigned int)rows;
- (void)moveColumnsAtColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns toDestColumnIndex:(unsigned __int16)columnIndex;
- (void)p_pruneRowCount;
- (void)pruneEmptyRows;
- (void)saveToArchiver:(id)archiver;
- (void)setShouldUseWideRows:(BOOL)rows;
- (void)shiftUpAtTileRowIndex:(unsigned int)index count:(unsigned int)count;
- (void)spliceRowInfo:(id)info atTileRowIndex:(unsigned int)index overwrite:(BOOL)overwrite;
- (void)spliceRows:(id)rows atTileRowIndex:(unsigned int)index;
- (void)swapRowAtTileRowIndex:(unsigned int)index withRowAtTileRowIndex:(unsigned int)rowIndex;
- (void)widenAllRowsForUpgrade;
- (void)willModify;
@end

@implementation TSTTableTile

- (unsigned)maxRow
{
  if (objc_msgSend_count(self->_rowInfos, a2, v2, v3))
  {
    v10 = objc_msgSend_count(self->_rowInfos, v5, v6, v7);
    while (v10-- >= 1)
    {
      if (objc_msgSend_pointerAtIndex_(self->_rowInfos, v8, v10, v9))
      {
        return v10;
      }
    }
  }

  LODWORD(v10) = 0x7FFFFFFF;
  return v10;
}

- (unsigned)numRows
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ((objc_msgSend_isEmpty(self, a2, v2, v3) & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2210BECB0;
    v9[3] = &unk_27845E8B8;
    v9[4] = &v10;
    objc_msgSend_enumerateRowsWithBlock_(self, v5, v9, v6);
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)isEmpty
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2210BED88;
  v5[3] = &unk_27845E8B8;
  v5[4] = &v6;
  objc_msgSend_enumerateRowsWithBlock_(self, a2, v5, v2);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)maxColumn
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFF;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2210BEE8C;
  v5[3] = &unk_27845E8E0;
  v5[4] = &v6;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, a2, v5, v2);
  v3 = *(v7 + 12);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (TSTTableTile)initWithRows:(id)rows shouldUseWideRows:(BOOL)wideRows context:(id)context
{
  rowsCopy = rows;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TSTTableTile;
  v13 = [(TSTTableTile *)&v17 initWithContext:contextCopy];
  if (v13)
  {
    if (rowsCopy)
    {
      v14 = objc_msgSend_copy(rowsCopy, v10, v11, v12);
    }

    else
    {
      v14 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v10, v11, v12);
    }

    rowInfos = v13->_rowInfos;
    v13->_rowInfos = v14;

    v13->_lastSavedInBNC = 1;
    v13->_storageVersion = 5;
    v13->_shouldUseWideRows = wideRows;
  }

  return v13;
}

- (BOOL)lastSavedInBNC
{
  if (self->_lastSavedInBNC)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2210BF12C;
    v6[3] = &unk_27845E8B8;
    v6[4] = &v7;
    objc_msgSend_enumerateRowsWithBlock_(self, a2, v6, v2);
    self->_lastSavedInBNC = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
    return self->_lastSavedInBNC;
  }

  else
  {
    return 0;
  }
}

- (void)p_pruneRowCount
{
  v5 = objc_msgSend_maxRow(self, a2, v2, v3);
  v9 = objc_msgSend_count(self->_rowInfos, v6, v7, v8);
  if (v5 == 0x7FFFFFFF)
  {
    if (!v9)
    {
      return;
    }

    v12 = 0;
  }

  else
  {
    v12 = (v5 + 1);
    if (v9 <= v12)
    {
      return;
    }
  }

  rowInfos = self->_rowInfos;

  objc_msgSend_setCount_(rowInfos, v10, v12, v11);
}

- (void)_setRowInfo:(id)info atTileRowIndex:(unsigned int)index
{
  v4 = *&index;
  infoCopy = info;
  if (objc_msgSend_count(self->_rowInfos, v6, v7, v8) <= v4)
  {
    objc_msgSend_setCount_(self->_rowInfos, v9, (v4 + 127), v10);
  }

  if (infoCopy && objc_msgSend_pointerAtIndex_(self->_rowInfos, v9, v4, v10))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTile _setRowInfo:atTileRowIndex:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 202, 0, "Duplicate row indexes!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  objc_msgSend_setTileRowIndex_(infoCopy, v9, v4, v10);
  objc_msgSend_replacePointerAtIndex_withPointer_(self->_rowInfos, v20, v4, infoCopy);
  v24 = self->_pruningCount + 1;
  self->_pruningCount = v24;
  if (v24 > 0x80 || !infoCopy && objc_msgSend_count(self->_rowInfos, v21, v22, v23) - 1 == v4)
  {
    objc_msgSend_p_pruneRowCount(self, v21, v22, v23);
    self->_pruningCount = 0;
  }
}

- (id)rowInfoForTileRowIndex:(unsigned int)index
{
  if (objc_msgSend_count(self->_rowInfos, a2, *&index, v3) <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_rowInfos, v6, index, v7);
  }

  return v8;
}

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  v67 = *MEMORY[0x277D85DE8];
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[18], v5);

  v10 = *(v6 + 16);
  if ((v10 & 0x20) != 0)
  {
    v11 = *(v6 + 68);
  }

  else
  {
    v11 = 0;
  }

  self->_lastSavedInBNC = v11;
  if ((v10 & 0x10) != 0)
  {
    self->_storageVersion = *(v6 + 64);
  }

  if ((v10 & 0x40) != 0)
  {
    v12 = *(v6 + 69);
  }

  else
  {
    v12 = 0;
  }

  self->_shouldUseWideRows = v12;
  v13 = *(v6 + 32);
  v14 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v7, v8, v9);
  rowInfos = self->_rowInfos;
  self->_rowInfos = v14;

  v19 = objc_msgSend_fileFormatVersion(unarchiverCopy, v16, v17, v18);
  if (v13 <= 0)
  {
LABEL_35:
    shouldUseWideRows = self->_shouldUseWideRows;
LABEL_36:
    if (!shouldUseWideRows && objc_msgSend_fileFormatVersion(unarchiverCopy, v20, v21, v22) <= 0xD000000000000)
    {
      objc_msgSend_willModifyForUpgrade(self, v20, v21, v22);
    }

    if (self->_storageVersion <= 4u)
    {
      objc_msgSend_willModifyForUpgrade(self, v20, v21, v22);
      self->_storageVersion = 5;
    }

    objc_msgSend_p_pruneRowCount(self, v20, v21, v22);
    v24 = 1;
  }

  else
  {
    v23 = v19;
    v59 = 80;
    v24 = 0;
    v25 = -1;
    v26 = 1;
    v61 = 1;
    while (1)
    {
      v27 = objc_msgSend_rowInfoFromArchive_fileFormatVersion_(TSTTableTileRowInfo, v20, *(*(v6 + 40) + 8 * v26), v23, v59);
      v31 = v27;
      if (!v27)
      {
        break;
      }

      v32 = objc_msgSend_tileRowIndex(v27, v28, v29, v30);
      if (objc_msgSend_cellCount(v31, v33, v34, v35) && (objc_msgSend_rowInfoForTileRowIndex_(self, v36, v32, v38), v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v36, v31, v32);
        if (v25 >= v32)
        {
          objc_msgSend_willModifyForUpgrade(self, v40, v41, v42);
        }

        if (v25 <= v32)
        {
          v25 = v32;
        }

        v43 = objc_msgSend_usesWideOffsets(v31, v40, v41, v42);
        v47 = v43;
        if (!self->_shouldUseWideRows && ((v43 ^ 1) & 1) == 0)
        {
          objc_msgSend_willModifyForUpgrade(self, v44, v45, v46);
          self->_shouldUseWideRows = 1;
        }

        v61 &= v47;
      }

      else
      {
        objc_msgSend_willModifyForUpgrade(self, v36, v37, v38);
      }

      v24 = v26++ >= v13;
      if (v26 - v13 == 1)
      {
        shouldUseWideRows = self->_shouldUseWideRows;
        if (v61 & 1 | !shouldUseWideRows)
        {
          goto LABEL_36;
        }

        objc_msgSend_willModifyForUpgradeWithOptions_(self, v20, 2, v22);
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v49 = *(&self->super.super.isa + v59);
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v62, v66, 16);
        if (v54)
        {
          v55 = *v63;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v63 != v55)
              {
                objc_enumerationMutation(v49);
              }

              v57 = *(*(&v62 + 1) + 8 * i);
              if ((objc_msgSend_usesWideOffsets(v57, v51, v52, v53) & 1) == 0)
              {
                objc_msgSend_convertToWideOffsets(v57, v51, v52, v53);
              }
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v51, &v62, v66, 16);
          }

          while (v54);
        }

        goto LABEL_35;
      }
    }
  }

  return v24;
}

- (void)willModify
{
  self->_lastSavedInBNC = 1;
  v2.receiver = self;
  v2.super_class = TSTTableTile;
  [(TSTTableTile *)&v2 willModify];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2210C1B78, off_2812E4498[18]);

  v7 = *(v6 + 16);
  *(v6 + 48) = 0;
  *(v6 + 16) = v7 | 7;
  *(v6 + 56) = 0;
  v11 = objc_msgSend_numRows(self, v8, v9, v10);
  storageVersion = self->_storageVersion;
  *(v6 + 16) |= 0x18u;
  *(v6 + 60) = v11;
  *(v6 + 64) = storageVersion;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_2210BF9C0;
  v22 = &unk_27845E908;
  v24 = v6;
  v13 = archiverCopy;
  v23 = v13;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v14, &v19, v15);
  lastSavedInBNC = self->_lastSavedInBNC;
  v18 = *(v6 + 16);
  *(v6 + 16) = v18 | 0x20;
  *(v6 + 68) = lastSavedInBNC;
  if (self->_shouldUseWideRows)
  {
    *(v6 + 16) = v18 | 0x60;
    *(v6 + 69) = 1;
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v13, v16, 0xA000000000003, @"TSTExpandedTables", v19, v20, v21, v22);
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v13, v16, 7, v6, v19, v20, v21, v22);
}

- (unint64_t)archivingCompatibilityVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x300020000000ALL;
  if (self->_shouldUseWideRows)
  {
    v3 = 0xA000000000003;
    v9 = 0xA000000000003;
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2210BFC48;
    v5[3] = &unk_27845E8B8;
    v5[4] = &v6;
    objc_msgSend_enumerateRowsWithBlock_(self, a2, v5, v2);
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldUseWideRows:(BOOL)rows
{
  if (self->_shouldUseWideRows != rows)
  {
    if (self->_shouldUseWideRows)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Table embiggening is a one-way process", a2, "[TSTTableTile setShouldUseWideRows:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", 398);
      v6 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableTile setShouldUseWideRows:]", v8);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 398, 1, "Table embiggening is a one-way process");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(self, a2, rows, v3);
    self->_shouldUseWideRows = rows;
  }
}

- (NSIndexSet)populatedRows
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2210BFF08;
  v14 = sub_2210BFF18;
  v15 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2210BFF20;
  v9[3] = &unk_27845E8E0;
  v9[4] = &v10;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v5, v9, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)description
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2210C0180;
  v16[3] = &unk_27845E8E0;
  v16[4] = &v17;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, a2, v16, v2);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v18[3];
  v11 = objc_msgSend_populatedRows(self, v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v4, v12, @"<%@:%p %lu cells/ rows %@ >", v13, v6, self, v7, v11);

  _Block_object_dispose(&v17, 8);

  return v14;
}

- (void)pruneEmptyRows
{
  v5 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2210C0318;
  v16[3] = &unk_27845E930;
  v6 = v5;
  v17 = v6;
  objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v7, v16, v8);
  if (objc_msgSend_count(v6, v9, v10, v11))
  {
    objc_msgSend_willModify(self, v12, v13, v14);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2210C0388;
  v15[3] = &unk_27845E958;
  v15[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v6, v12, v15, v14);
}

- (id)findOrAddRowInfoAtTileRowIndex:(unsigned int)index
{
  v4 = *&index;
  v9 = objc_msgSend_rowInfoForTileRowIndex_(self, a2, *&index, v3);
  if (!v9)
  {
    objc_msgSend_willModify(self, v6, v7, v8);
    v9 = objc_msgSend_rowInfoWithTileRowIndex_wideOffsets_(TSTTableTileRowInfo, v10, v4, self->_shouldUseWideRows);
    objc_msgSend__setRowInfo_atTileRowIndex_(self, v11, v9, v4);
  }

  return v9;
}

- (void)enumerateRowsAndIndexesWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_rowInfos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v17, 16);
  if (v7)
  {
    v8 = 0;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      if (v11)
      {
        blockCopy[2](blockCopy, v11, v8, &v16);
        if (v16)
        {
          break;
        }
      }

      v8 = (v8 + 1);
      if (v7 == ++v10)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v12, v17, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateRowsWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_rowInfos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v16, 16);
  if (v7)
  {
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v11 + 1) + 8 * v9);
      if (v10)
      {
        blockCopy[2](blockCopy, v10, &v15);
        if (v15)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v11, v16, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)rowInfoAtOrAfterTileRowIndex:(unsigned int)index outTileRowIndex:(unsigned int *)rowIndex
{
  LODWORD(v5) = index;
  v7 = objc_msgSend_rowInfoForTileRowIndex_(self, a2, *&index, rowIndex);
  if (v7)
  {
LABEL_4:
    if (!rowIndex)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = objc_msgSend_count(self->_rowInfos, v8, v9, v10) - 1;
  if (v13 < v5)
  {
    v7 = 0;
    LODWORD(v5) = 0x7FFFFFFF;
    goto LABEL_4;
  }

  do
  {
    v5 = (v5 + 1);
    v7 = objc_msgSend_rowInfoForTileRowIndex_(self, v11, v5, v12);
  }

  while (!v7 && v13 >= v5);
  if (!v7)
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  if (rowIndex)
  {
LABEL_5:
    *rowIndex = v5;
  }

LABEL_6:

  return v7;
}

- (TSTCellStorage)cellStorageRefAtColumnIndex:(unsigned __int16)index tileRowIndex:(unsigned int)rowIndex
{
  v4 = *&rowIndex;
  indexCopy = index;
  if (objc_msgSend_isEmpty(self, a2, index, *&rowIndex))
  {
    return 0;
  }

  v10 = objc_msgSend_rowInfoForTileRowIndex_(self, v7, v4, v8);
  v13 = v10;
  if (v10)
  {
    v9 = objc_msgSend_cellStorageRefAtIndex_(v10, v11, indexCopy, v12);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)setCell:(id)cell atColumnIndex:(unsigned __int16)index tileRowIndex:(unsigned int)rowIndex
{
  v5 = *&rowIndex;
  indexCopy = index;
  cellCopy = cell;
  objc_msgSend_willModify(self, v9, v10, v11);
  v17 = objc_msgSend_findOrAddRowInfoAtTileRowIndex_(self, v12, v5, v13);
  if (!v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableTile setCell:atColumnIndex:tileRowIndex:]", v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 541, 0, "Couldn't find row info for row index %lu", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  if (objc_msgSend_usesWideOffsets(v17, v14, v15, v16))
  {
    if (!self->_shouldUseWideRows)
    {
      self->_shouldUseWideRows = 1;
    }
  }

  else if (self->_shouldUseWideRows)
  {
    objc_msgSend_convertToWideOffsets(v17, v27, v28, v29);
  }

  v33 = objc_msgSend_setCell_atIndex_(v17, v27, cellCopy, indexCopy);
  if (!self->_shouldUseWideRows && objc_msgSend_usesWideOffsets(v17, v30, v31, v32))
  {
    self->_shouldUseWideRows = 1;
  }

  if (!objc_msgSend_cellCount(v17, v30, v31, v32))
  {
    objc_msgSend__removeRowInfo_atTileRowIndex_(self, v34, v17, v5);
  }

  return v33;
}

- (int)insertColumnsAtColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns
{
  if ((objc_msgSend_isEmpty(self, a2, index, *&columns) & 1) == 0)
  {
    objc_msgSend_willModify(self, v7, v8, v9);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2210C0A8C;
    v13[3] = &unk_27845E980;
    indexCopy = index;
    columnsCopy = columns;
    v13[4] = self;
    objc_msgSend_enumerateRowsWithBlock_(self, v10, v13, v11);
  }

  return 0;
}

- (id)removeColumnsAtColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns
{
  if (objc_msgSend_isEmpty(self, a2, index, *&columns))
  {
    v10 = 0;
  }

  else
  {
    objc_msgSend_willModify(self, v7, v8, v9);
    v11 = objc_opt_new();
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = sub_2210C0C2C;
    v21 = &unk_27845E9A8;
    indexCopy = index;
    columnsCopy = columns;
    v10 = v11;
    v22 = v10;
    objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v12, &v18, v13);
    objc_msgSend_pruneEmptyRows(self, v14, v15, v16, v18, v19, v20, v21);
  }

  return v10;
}

- (void)moveColumnsAtColumnIndex:(unsigned __int16)index numberOfColumns:(unsigned int)columns toDestColumnIndex:(unsigned __int16)columnIndex
{
  if ((objc_msgSend_isEmpty(self, a2, index, *&columns) & 1) == 0)
  {
    objc_msgSend_willModify(self, v9, v10, v11);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2210C0D58;
    v17[3] = &unk_27845E9C8;
    indexCopy = index;
    columnIndexCopy = columnIndex;
    columnsCopy = columns;
    objc_msgSend_enumerateRowsWithBlock_(self, v12, v17, v13);
    objc_msgSend_pruneEmptyRows(self, v14, v15, v16);
  }
}

- (void)insertRowsAtTileRowIndex:(unsigned int)index numberOfRows:(unsigned int)rows
{
  LODWORD(v7) = objc_msgSend_maxRow(self, a2, *&index, *&rows);
  isEmpty = objc_msgSend_isEmpty(self, v8, v9, v10);
  if (rows && (isEmpty & 1) == 0 && v7 >= index)
  {
    objc_msgSend_willModify(self, v12, v13, v14);
    objc_msgSend_setCount_(self->_rowInfos, v15, v7 + rows, v16);
    v7 = v7;
    rowsCopy = rows;
    do
    {
      v21 = objc_msgSend_rowInfoForTileRowIndex_(self, v17, v7, v18);
      if (v21)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v20, 0, v7);
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v22, v21, rowsCopy + v7);
      }
    }

    while (v7-- > index);
  }
}

- (void)_removeRowsAtTileRowIndex:(unsigned int)index numberOfRows:(unsigned int)rows shiftingContent:(BOOL)content
{
  contentCopy = content;
  v7 = *&index;
  objc_msgSend_willModify(self, a2, *&index, *&rows);
  if ((objc_msgSend_isEmpty(self, v9, v10, v11) & 1) == 0)
  {
    v15 = objc_msgSend_maxRow(self, v12, v13, v14);
    v16 = v15;
    if (v7 || v15 >= rows)
    {
      if (v15 >= v7)
      {
        v17 = rows + v7;
        do
        {
          v19 = objc_msgSend_rowInfoForTileRowIndex_(self, v12, v7, v14);
          if (v7 >= v17)
          {
            if (contentCopy)
            {
              objc_msgSend__setRowInfo_atTileRowIndex_(self, v18, 0, v7);
              objc_msgSend__setRowInfo_atTileRowIndex_(self, v20, v19, v7 - rows);
            }
          }

          else
          {
            objc_msgSend__setRowInfo_atTileRowIndex_(self, v18, 0, v7);
          }

          v7 = (v7 + 1);
        }

        while (v7 <= v16);
      }
    }

    else
    {
      objc_msgSend_setCount_(self->_rowInfos, v12, 0, v14);
    }
  }

  objc_msgSend_p_pruneRowCount(self, v12, v13, v14);
}

- (void)shiftUpAtTileRowIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v5 = *&index;
  isEmpty = objc_msgSend_isEmpty(self, a2, *&index, *&count);
  if (v4 && (isEmpty & 1) == 0 && objc_msgSend_maxRow(self, v8, v9, v10) >= v5)
  {
    objc_msgSend_willModify(self, v11, v12, v13);

    MEMORY[0x2821F9670](self, sel__removeRowsAtTileRowIndex_numberOfRows_shiftingContent_, v5, v4);
  }
}

- (id)shiftUpAndYankBy:(unsigned int)by
{
  v4 = *&by;
  isEmpty = objc_msgSend_isEmpty(self, a2, *&by, v3);
  if (!v4 || isEmpty)
  {
    v10 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v7, v8, v9);
  }

  else
  {
    v10 = objc_msgSend_yankRowsAtTileRowIndex_count_(self, v7, 0, v4);
    objc_msgSend_shiftUpAtTileRowIndex_count_(self, v11, 0, v4);
  }

  return v10;
}

- (id)yankRowInfoAtTileRowIndex:(unsigned int)index
{
  v4 = *&index;
  if (objc_msgSend_isEmpty(self, a2, *&index, v3))
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_rowInfoForTileRowIndex_(self, v6, v4, v7);
    if (v8)
    {
      objc_msgSend_willModify(self, v9, v10, v11);
      objc_msgSend__setRowInfo_atTileRowIndex_(self, v12, 0, v4);
    }
  }

  return v8;
}

- (id)yankRowsAtTileRowIndex:(unsigned int)index count:(unsigned int)count
{
  v7 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], a2, *&index, *&count);
  objc_msgSend_setCount_(v7, v8, count, v9);
  isEmpty = objc_msgSend_isEmpty(self, v10, v11, v12);
  if (count)
  {
    v17 = isEmpty;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0 && objc_msgSend_maxRow(self, v14, v15, v16) >= index)
  {
    objc_msgSend_willModify(self, v18, v19, v20);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_2210BFF08;
    v45 = sub_2210BFF18;
    v46 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v21, v22, v23);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2210C1338;
    v36[3] = &unk_27845E9F0;
    indexCopy = index;
    v40 = index + count - 1;
    v24 = v7;
    v37 = v24;
    v38 = &v41;
    objc_msgSend_enumerateRowsAndIndexesWithBlock_(self, v25, v36, v26);
    v27 = v42[5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2210C13E4;
    v35[3] = &unk_27845E958;
    v35[4] = self;
    objc_msgSend_enumerateIndexesUsingBlock_(v27, v28, v35, v29);
    objc_msgSend_p_pruneRowCount(self, v30, v31, v32);
    v33 = v24;

    _Block_object_dispose(&v41, 8);
  }

  return v7;
}

- (id)yankRowsAtTileRowIndex:(unsigned int)index
{
  v4 = *&index;
  v6 = objc_msgSend_maxRow(self, a2, *&index, v3);
  if ((objc_msgSend_isEmpty(self, v7, v8, v9) & 1) != 0 || v6 < v4)
  {
    v13 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v10, v11, v12);
  }

  else
  {
    v13 = objc_msgSend_yankRowsAtTileRowIndex_count_(self, v10, v4, v6 - v4 + 1);
  }

  return v13;
}

- (void)spliceRowInfo:(id)info atTileRowIndex:(unsigned int)index overwrite:(BOOL)overwrite
{
  overwriteCopy = overwrite;
  v6 = *&index;
  infoCopy = info;
  objc_msgSend_willModify(self, v8, v9, v10);
  if (overwriteCopy)
  {
    v14 = objc_msgSend_rowInfoForTileRowIndex_(self, v11, v6, v12);
    if (v14)
    {
      objc_msgSend__removeRowInfo_atTileRowIndex_(self, v13, v14, v6);
    }
  }

  objc_msgSend__setRowInfo_atTileRowIndex_(self, v11, infoCopy, v6);
}

- (void)spliceRows:(id)rows atTileRowIndex:(unsigned int)index
{
  rowsCopy = rows;
  objc_msgSend_willModify(self, v7, v8, v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2210C15E8;
  v12[3] = &unk_27845EA18;
  v12[4] = self;
  indexCopy = index;
  objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(rowsCopy, v10, v12, v11);
}

- (void)swapRowAtTileRowIndex:(unsigned int)index withRowAtTileRowIndex:(unsigned int)rowIndex
{
  if (index != rowIndex)
  {
    v4 = *&rowIndex;
    v5 = *&index;
    v14 = objc_msgSend_rowInfoForTileRowIndex_(self, a2, *&index, *&rowIndex);
    v12 = objc_msgSend_rowInfoForTileRowIndex_(self, v7, v4, v8);
    if (v14 | v12)
    {
      objc_msgSend_willModify(self, v9, v10, v11);
      if (v14)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v13, 0, v5);
      }

      if (v12)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v13, 0, v4);
      }

      if (v14)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v13, v14, v4);
      }

      if (v12)
      {
        objc_msgSend__setRowInfo_atTileRowIndex_(self, v13, v12, v5);
      }
    }
  }
}

- (void)didApplyConcurrentCellMap:(id)map
{
  mapCopy = map;
  if (objc_msgSend_count(mapCopy, v5, v6, v7))
  {
    objc_msgSend_willModify(self, v8, v9, v10);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2210C17D0;
  v14[3] = &unk_27845E958;
  v14[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(mapCopy, v8, v14, v10);
  objc_msgSend_p_pruneRowCount(self, v11, v12, v13);
}

- (void)widenAllRowsForUpgrade
{
  v19 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
  if (!self->_shouldUseWideRows)
  {
    self->_shouldUseWideRows = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_rowInfos;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
    if (v10)
    {
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ((objc_msgSend_usesWideOffsets(v13, v7, v8, v9, v14) & 1) == 0)
          {
            objc_msgSend_convertToWideOffsets(v13, v7, v8, v9);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
      }

      while (v10);
    }
  }
}

@end