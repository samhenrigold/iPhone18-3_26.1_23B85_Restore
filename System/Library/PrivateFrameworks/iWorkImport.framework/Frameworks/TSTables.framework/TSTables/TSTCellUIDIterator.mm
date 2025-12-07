@interface TSTCellUIDIterator
- (BOOL)nextCellUIDsBatch:(void *)batch batchSize:(unint64_t)size;
- (TSKUIDStruct)p_nextCellRefIdWithUIDIndexList:(const void *)list UIDs:(const void *)ds index:(unint64_t *)index remainDup:(unint64_t *)dup lastDiffPos:(unint64_t *)pos recentResults:(void *)results;
- (TSKUIDStructCoord)_nextCellUID_NoDispatch;
- (TSKUIDStructCoord)cellUID;
- (TSKUIDStructCoord)nextCellUID;
- (TSTCellUIDIterator)initWithCellUIDList:(id)list;
- (id).cxx_construct;
- (void)setCellUID:(TSKUIDStructCoord *)d;
@end

@implementation TSTCellUIDIterator

- (TSTCellUIDIterator)initWithCellUIDList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = TSTCellUIDIterator;
  v6 = [(TSTCellUIDIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cellUIDList, list);
    v7->_lastColumnDiffPos = 0;
    *&v7->_columnIndex = 0u;
    *&v7->_columnRemainDup = 0u;
    *&v7->_index = 0u;
  }

  return v7;
}

- (TSKUIDStruct)p_nextCellRefIdWithUIDIndexList:(const void *)list UIDs:(const void *)ds index:(unint64_t *)index remainDup:(unint64_t *)dup lastDiffPos:(unint64_t *)pos recentResults:(void *)results
{
  if (*dup)
  {
    --*dup;
    v11 = *pos;
    if (*pos < *(results + 5))
    {
LABEL_5:
      v21 = *(results + 4) + v11;
LABEL_10:
      v37 = (*(*(results + 1) + ((v21 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v21);
      goto LABEL_11;
    }

    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds, index);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 575, 0, "Unexpected back reference value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
LABEL_4:
    v11 = *pos;
    goto LABEL_5;
  }

  v23 = *ds;
  v24 = *(ds + 1);
  v25 = (*index)++;
  v26 = *(*list + 4 * v25);
  v27 = (v26 - 1);
  if (v26 >= 1)
  {
    *pos = v27;
    if (*(results + 5) <= v27)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 585, 0, "Unexpected back reference value.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
      v27 = *pos;
    }

    v21 = *(results + 4) + v27;
    goto LABEL_10;
  }

  v42 = (v24 - v23) >> 4;
  v43 = -v42 - v26;
  if (-v42 >= v26)
  {
    if (*pos >= *(results + 5))
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v57);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 593, 0, "Unexpected back reference value.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
    }

    *dup = v43;
    goto LABEL_4;
  }

  v44 = -v26;
  if (v42 <= v44)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellUIDIterator p_nextCellRefIdWithUIDIndexList:UIDs:index:remainDup:lastDiffPos:recentResults:]", ds);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDList.mm", v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 589, 0, "Unexpected ID reference value.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    v23 = *ds;
  }

  v37 = (v23 + 16 * v44);
LABEL_11:
  sub_2213C63C8(results, v37);
  v38 = *(results + 5);
  if (v38 >= 0x3E9)
  {
    *(results + 5) = v38 - 1;
    sub_2213C6EDC(results, 1);
  }

  v39 = (*(*(results + 1) + ((*(results + 4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(results + 4));
  v40 = *v39;
  v41 = v39[1];
  result._upper = v41;
  result._lower = v40;
  return result;
}

- (TSKUIDStructCoord)_nextCellUID_NoDispatch
{
  index = self->_index;
  if (index >= objc_msgSend_compressedSize(self->_cellUIDList, a3, v3, v4))
  {
    v29 = self->_index;
    v30 = objc_msgSend_compressedSize(self->_cellUIDList, v8, v9, v10);
    v34 = objc_msgSend_uncompressedCellUIDs(self->_cellUIDList, v31, v32, v33);
    v38 = objc_msgSend_count(v34, v35, v36, v37);
    v39 = v29 - v30;

    if (v39 >= v38)
    {
      retstr->_column = 0u;
      retstr->_row = 0u;
    }

    else
    {
      cellUIDList = self->_cellUIDList;
      ++self->_index;
      v44 = objc_msgSend_uncompressedCellUIDs(cellUIDList, v40, v41, v42);
      v47 = v44;
      if (v44)
      {
        objc_msgSend_cellUIDAtIndex_(v44, v45, v39, v46);
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }

      v48 = v50;
      retstr->_column = v49;
      retstr->_row = v48;
    }
  }

  else
  {
    v11 = objc_msgSend_compressedRowIndexes(self->_cellUIDList, v8, v9, v10);
    v15 = objc_msgSend_compressedRowUIDs(self->_cellUIDList, v12, v13, v14);
    objc_msgSend_p_nextCellRefIdWithUIDIndexList_UIDs_index_remainDup_lastDiffPos_recentResults_(self, v16, v11, v15, &self->_rowIndex, &self->_rowRemainDup, &self->_lastRowDiffPos, &self->_recentRowResults);
    v20 = objc_msgSend_compressedColumnIndexes(self->_cellUIDList, v17, v18, v19);
    v24 = objc_msgSend_compressedColumnUIDs(self->_cellUIDList, v21, v22, v23);
    objc_msgSend_p_nextCellRefIdWithUIDIndexList_UIDs_index_remainDup_lastDiffPos_recentResults_(self, v25, v20, v24, &self->_columnIndex, &self->_columnRemainDup, &self->_lastColumnDiffPos, &self->_recentColumnResults);
    ++self->_index;
    result = TSTMakeCellUID(&v49);
    v27 = v50;
    self->_cellUID._column = v49;
    self->_cellUID._row = v27;
    row = self->_cellUID._row;
    retstr->_column = self->_cellUID._column;
    retstr->_row = row;
  }

  return result;
}

- (TSKUIDStructCoord)nextCellUID
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x5012000000;
  v18 = sub_2213C6704;
  v19 = nullsub_59;
  v20 = &unk_22188E88F;
  v7 = objc_msgSend_cellUIDList(self, a3, v3, v4);
  v11 = objc_msgSend_queue(v7, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2213C6714;
  v14[3] = &unk_27845EC10;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(v11, v14);

  v12 = *(v16 + 4);
  retstr->_column = *(v16 + 3);
  retstr->_row = v12;
  _Block_object_dispose(&v15, 8);
  return result;
}

- (BOOL)nextCellUIDsBatch:(void *)batch batchSize:(unint64_t)size
{
  *(batch + 1) = *batch;
  v7 = objc_msgSend_cellUIDList(self, a2, batch, size);
  v11 = objc_msgSend_queue(v7, v8, v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213C6840;
  block[3] = &unk_2784643B8;
  block[4] = self;
  block[5] = batch;
  block[6] = size;
  dispatch_sync(v11, block);

  return *batch != *(batch + 1);
}

- (TSKUIDStructCoord)cellUID
{
  v3 = *&self[5]._row._upper;
  retstr->_column = *&self[5]._column._upper;
  retstr->_row = v3;
  return self;
}

- (void)setCellUID:(TSKUIDStructCoord *)d
{
  column = d->_column;
  self->_cellUID._row = d->_row;
  self->_cellUID._column = column;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end