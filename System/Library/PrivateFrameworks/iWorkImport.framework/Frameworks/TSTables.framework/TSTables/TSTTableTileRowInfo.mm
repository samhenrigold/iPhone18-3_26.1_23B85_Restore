@interface TSTTableTileRowInfo
+ (id)rowInfoFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version;
+ (id)rowInfoWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets;
- (BOOL)_quickValidateBuffer:(TSTTableTileRowBuffer *)buffer;
- (BOOL)quickValidate;
- (BOOL)searchCellStorageRefAtColumnIndex:(unsigned __int16)index searchMask:(unint64_t)mask;
- (BOOL)validateWithResult:(id *)result;
- (TSTCellStorage)cellStorageRefAtIndex:(unsigned __int16)index;
- (TSTCellStorage)p_preBNCStorageRefAtIndex:(unsigned __int16)index;
- (TSTTableTileRowInfo)initWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets;
- (id)description;
- (id)initFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version;
- (id)p_emptyCell;
- (int64_t)setCell:(id)cell atIndex:(unsigned __int16)index;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (unsigned)_archivedColumnCount;
- (unsigned)cellIndexAtOrAfterIndex:(unsigned __int16)index;
- (unsigned)cellIndexAtOrBeforeIndex:(unsigned __int16)index;
- (vector<TSTCell)accumulateCurrentCellsConcurrentlyAtColumns:(TSTTableTileRowInfo *)self usingCellCreationBlock:(SEL)block;
- (void)_insertCell:(id)cell atIndex:(unsigned __int16)index;
- (void)_removeCellAtIndex:(unsigned __int16)index;
- (void)_replaceCellAtIndex:(unsigned __int16)index withCell:(id)cell;
- (void)convertToWideOffsets;
- (void)dealloc;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)enumerateStoragesInColumnRange:(_NSRange)range getPreBNC:(BOOL)c withBlock:(id)block;
- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (void)moveColumnsFromIndex:(unsigned __int16)index toIndex:(unsigned __int16)toIndex count:(unsigned int)count;
@end

@implementation TSTTableTileRowInfo

- (vector<TSTCell)accumulateCurrentCellsConcurrentlyAtColumns:(TSTTableTileRowInfo *)self usingCellCreationBlock:(SEL)block
{
  v16 = a5;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  sub_2211389A0(retstr, (*(a4 + 1) - *a4) >> 1);
  v10 = *a4;
  if (*(a4 + 1) != *a4)
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_cellStorageRefAtIndex_(self, v8, *(v10 + 2 * v11), v9, v16);
      v13 = v16[2](v16, v12, v11);
      v14 = retstr->__begin_[v11];
      retstr->__begin_[v11] = v13;

      ++v11;
      v10 = *a4;
    }

    while (v11 < (*(a4 + 1) - *a4) >> 1);
  }

  return result;
}

+ (id)rowInfoWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets
{
  offsetsCopy = offsets;
  v5 = *&index;
  v6 = [self alloc];
  v8 = objc_msgSend_initWithTileRowIndex_wideOffsets_(v6, v7, v5, offsetsCopy);

  return v8;
}

- (TSTTableTileRowInfo)initWithTileRowIndex:(unsigned int)index wideOffsets:(BOOL)offsets
{
  offsetsCopy = offsets;
  v7.receiver = self;
  v7.super_class = TSTTableTileRowInfo;
  result = [(TSTTableTileRowInfo *)&v7 init];
  if (result)
  {
    result->_tileRowIndex = index;
    *&result->_currentData._private.cellData = 0u;
    *&result->_currentData._private.allocatedCellBufferSize = 0u;
    *(&result->_currentData._private.offsets + 7) = 0;
    *&result->_preBNCData._private.cellData = 0u;
    *&result->_preBNCData._private.allocatedCellBufferSize = 0u;
    *(&result->_preBNCData._private.offsets + 7) = 0;
    if (offsetsCopy)
    {
      result->_currentData._private.wideOffsets = 1;
    }

    result->_cellCount = 0;
    *&result->_maxColumnIndexPrivate = 83984383;
    __dmb(0xBu);
  }

  return result;
}

- (void)dealloc
{
  sub_221138D14(&self->_currentData);
  sub_221138D14(&self->_preBNCData);
  v3.receiver = self;
  v3.super_class = TSTTableTileRowInfo;
  [(TSTTableTileRowInfo *)&v3 dealloc];
}

+ (id)rowInfoFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version
{
  v6 = [self alloc];
  v8 = objc_msgSend_initFromArchive_fileFormatVersion_(v6, v7, archive, version);

  return v8;
}

- (id)initFromArchive:(const void *)archive fileFormatVersion:(unint64_t)version
{
  v49.receiver = self;
  v49.super_class = TSTTableTileRowInfo;
  v6 = [(TSTTableTileRowInfo *)&v49 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_tileRowIndex = *(archive + 14);
  v6->_cellCount = *(archive + 15);
  p_cellCount = &v6->_cellCount;
  v6->_unfairLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  v6->_storageVersion = 1;
  v9 = *(archive + 4);
  if ((v9 & 0x40) != 0)
  {
    v6->_storageVersion = *(archive + 16);
  }

  if ((v9 & 4) != 0)
  {
    sub_221139174(&v6->_currentData, *(archive + 68) & ((v9 & 0x80) >> 7), (*(archive + 5) & 0xFFFFFFFFFFFFFFFELL), (*(archive + 6) & 0xFFFFFFFFFFFFFFFELL));
  }

  if (version > 0x3000200000009)
  {
    *(v7 + 79) = 0;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    sub_221139174(v7 + 48, 0, (*(archive + 3) & 0xFFFFFFFFFFFFFFFELL), (*(archive + 4) & 0xFFFFFFFFFFFFFFFELL));
  }

  sub_2211392B0(v7);
  if (!*p_cellCount)
  {
    sub_221138D14(v7 + 48);
    sub_221138D14(v7 + 8);
    if ((v9 & 4) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  v10 = sub_221138A3C(v7);
  v14 = v10;
  if (v10 == 0x7FFF)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableTileRowInfo initFromArchive:fileFormatVersion:]", v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 922, 0, "Can't find the last valid column during unarchive!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    v24 = *(v7 + 56);
    v25 = (v7 + 80);
LABEL_19:
    v28 = 0x800000000000005FLL;
    goto LABEL_20;
  }

  v25 = (v7 + 80);
  v24 = *(v7 + 56);
  if (*(v7 + 80) <= v10)
  {
    goto LABEL_19;
  }

  v27 = *(*(v7 + 72) + 2 * v10);
  if (v27 == 0xFFFF)
  {
    goto LABEL_19;
  }

  if (*(v7 + 82))
  {
    v27 *= 4;
  }

  v28 = v27 + 96;
LABEL_20:
  if (v24 > v28)
  {
    v32 = objc_msgSend_p_preBNCStorageRefAtIndex_(v7, v11, v14, v13);
    if (!v32)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTTableTileRowInfo initFromArchive:fileFormatVersion:]", v31);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 930, 0, "invalid nil value for '%{public}s'", "lastPreBNCCellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    }

    v42 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14 != 0x7FFF && *v25 > v14)
    {
      v43 = *(*(v7 + 72) + 2 * v14);
      if (v43 != 0xFFFF)
      {
        if (*(v7 + 82))
        {
          v42 = 4 * v43;
        }

        else
        {
          v42 = *(*(v7 + 72) + 2 * v14);
        }
      }
    }

    v44 = sub_221395B64(v32, v29, v30, v31);
    sub_221139394((v7 + 48), v42 + v44, v45, v46);
  }

  v26 = 0x8000000000000087;
  if (v14 != 0x7FFF && *(v7 + 40) > v14)
  {
    v47 = *(*(v7 + 32) + 2 * v14);
    if (v47 == 0xFFFF)
    {
      v26 = 0x8000000000000087;
      if ((v9 & 4) != 0)
      {
LABEL_37:
        if (*(v7 + 16) > v26)
        {
          sub_221139394((v7 + 8), v26, v12, v13);
        }

        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (*(v7 + 42))
    {
      v47 *= 4;
    }

    v26 = (v47 + 136);
  }

  if ((v9 & 4) != 0)
  {
    goto LABEL_37;
  }

LABEL_43:
  sub_2216F6BD8(v7, (v7 + 112));
LABEL_39:
  if ((objc_msgSend_quickValidate(v7, v26, v12, v13) & 1) == 0)
  {

    return 0;
  }

  return v7;
}

- (id)p_emptyCell
{
  emptyCellForPreBNC = self->_emptyCellForPreBNC;
  if (!emptyCellForPreBNC)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    emptyCellForPreBNC = self->_emptyCellForPreBNC;
    if (!emptyCellForPreBNC)
    {
      v5 = [TSTCell alloc];
      v9 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v6, v7, v8);
      v12 = objc_msgSend_initWithLocale_(v5, v10, v9, v11);
      v13 = self->_emptyCellForPreBNC;
      self->_emptyCellForPreBNC = v12;

      emptyCellForPreBNC = self->_emptyCellForPreBNC;
    }

    objc_sync_exit(selfCopy);
  }

  return emptyCellForPreBNC;
}

- (unsigned)_archivedColumnCount
{
  cellCount = self->_cellCount;
  if (cellCount)
  {
    LOWORD(cellCount) = sub_221138A3C(self) + 1;
  }

  return cellCount;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  wideOffsets = self->_currentData._private.wideOffsets;
  v11 = *(archive + 4);
  *(archive + 14) = self->_tileRowIndex;
  cellCount = self->_cellCount;
  *(archive + 4) = v11 | 0x30;
  *(archive + 15) = cellCount;
  if (!cellCount)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTileRowInfo encodeToArchive:archiver:]", v8);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1031, 0, "should not be archiving an empty row info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend__archivedColumnCount(self, v6, v7, v8);
  v24 = v22;
  if (v22 < 0x100)
  {
    if (wideOffsets)
    {
      v24 = v22;
    }

    else
    {
      v24 = 255;
    }
  }

  else
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v23, 0xA000000000003, @"TSTExpandedTables");
  }

  cellData = self->_currentData._private.cellData;
  cellBufferSize = self->_currentData._private.cellBufferSize;
  *(archive + 4) |= 4u;
  sub_22113C508(__p, cellData, cellBufferSize);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[0]);
  }

  offsets = self->_currentData._private.offsets;
  if (!offsets)
  {
    sub_221139CC8(&self->_currentData._private.cellData, (v24 - 1));
    offsets = self->_currentData._private.offsets;
  }

  v28 = 2 * v24;
  *(archive + 4) |= 8u;
  sub_22113C508(__p, offsets, v28);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[0]);
    if (wideOffsets)
    {
      goto LABEL_14;
    }
  }

  else if (wideOffsets)
  {
LABEL_14:
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v29, 0xA000000000003, @"TSTExpandedTables");
    v32 = *(archive + 4);
    *(archive + 68) = 1;
    *(archive + 4) = v32 | 0x81;
    HIBYTE(v71) = 4;
    strcpy(__p, "🤠");
    google::protobuf::internal::ArenaStringPtr::Set();
    if (SHIBYTE(v71) < 0)
    {
      operator delete(__p[0]);
    }

    *(archive + 4) |= 2u;
    HIBYTE(v71) = 4;
    strcpy(__p, "🤠");
    google::protobuf::internal::ArenaStringPtr::Set();
    goto LABEL_39;
  }

  v35 = self->_preBNCData._private.cellData;
  if (!v35)
  {
    v36 = objc_msgSend_p_emptyCell(self, 0, v30, v31);
    __p[0] = 0;
    __p[1] = __p;
    v71 = 0x5812000000;
    v72 = sub_221139EDC;
    v73 = nullsub_13;
    v74 = &unk_22188E88F;
    memset(v75, 0, sizeof(v75));
    v76 = 0;
    v37 = sub_221395DEC(v36, v75);
    sub_221139CC8(&self->_preBNCData._private.cellData, 0xFEu);
    v40 = v37;
    v41 = self->_cellCount * v37;
    allocatedCellBufferSize = self->_preBNCData._private.allocatedCellBufferSize;
    if (allocatedCellBufferSize < v41)
    {
      if (v41 >= 0x41)
      {
        if (v41 >= 0x81)
        {
          if (v41 >= 0x201)
          {
            if (v41 >= 0x401)
            {
              v43 = (v41 >> (flsll(2048) - 1) << 11) + 2048;
            }

            else
            {
              v43 = 1024;
            }
          }

          else
          {
            v43 = 512;
          }
        }

        else
        {
          v43 = 128;
        }
      }

      else
      {
        v43 = 64;
      }

      if (v43 >= 0x3FFFC)
      {
        v44 = 262140;
      }

      else
      {
        v44 = v43;
      }

      self->_preBNCData._private.allocatedCellBufferSize = v44;
      self->_preBNCData._private.cellData = malloc_type_realloc(self->_preBNCData._private.cellData, v44, 0x100004077774924uLL);
      allocatedCellBufferSize = self->_preBNCData._private.allocatedCellBufferSize;
    }

    if (self->_preBNCData._private.cellBufferSize > allocatedCellBufferSize)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "void _preallocateCellBufferSize(TSTTableTileRowBuffer *, NSUInteger)", v39);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 254, 0, "Row data buffer is too small!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    }

    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 0x7FFF;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v67[3] = 0;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_221139EF4;
    v66[3] = &unk_27845FAC0;
    v66[4] = self;
    v66[5] = v68;
    v66[8] = v40;
    v66[9] = v36;
    v66[6] = v67;
    v66[7] = __p;
    objc_msgSend_enumerateStoragesInColumnRange_withBlock_(self, v38, 0, 255, v66);
    _Block_object_dispose(v67, 8);
    _Block_object_dispose(v68, 8);
    _Block_object_dispose(__p, 8);
    v35 = self->_preBNCData._private.cellData;
  }

  v54 = self->_preBNCData._private.cellBufferSize;
  *(archive + 4) |= 1u;
  sub_22113C508(__p, v35, v54);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[0]);
  }

  v55 = self->_preBNCData._private.offsets;
  *(archive + 4) |= 2u;
  sub_22113C508(__p, v55, v28);
  google::protobuf::internal::ArenaStringPtr::Set();
LABEL_39:
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[0]);
  }

  storageVersion = self->_storageVersion;
  if (storageVersion != 5)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTTableTileRowInfo encodeToArchive:archiver:]", v34);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v60);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 1100, 0, "Expected current storage version.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
    storageVersion = self->_storageVersion;
  }

  *(archive + 4) |= 0x40u;
  *(archive + 16) = storageVersion;
}

- (unint64_t)archivingCompatibilityVersion
{
  if (objc_msgSend__archivedColumnCount(self, a2, v2, v3) > 0xFF || self->_currentData._private.wideOffsets)
  {
    return 0xA000000000003;
  }

  else
  {
    return 0x300020000000ALL;
  }
}

- (void)convertToWideOffsets
{
  if (!self->_currentData._private.wideOffsets)
  {
    sub_22113A218(&self->_currentData);

    sub_221138D14(&self->_preBNCData);
  }
}

- (unsigned)cellIndexAtOrAfterIndex:(unsigned __int16)index
{
  if (!self->_cellCount)
  {
    return 0x7FFF;
  }

  indexCopy = index;
  v5 = sub_221138A3C(self);
  v6 = 0x7FFF;
  if (v5 >= indexCopy)
  {
    v6 = indexCopy;
    while (v6 == 0x7FFF || self->_currentData._private.offsetBufferCount <= v6 || self->_currentData._private.offsets[v6] == -1)
    {
      if (v5 < ++v6)
      {
        return 0x7FFF;
      }
    }
  }

  return v6;
}

- (unsigned)cellIndexAtOrBeforeIndex:(unsigned __int16)index
{
  v3 = 0x7FFF;
  if (self->_cellCount)
  {
    v4 = 0;
    while ((index - v4) == 0x7FFF || self->_currentData._private.offsetBufferCount <= (index - v4) || self->_currentData._private.offsets[(index - v4)] == -1)
    {
      if (index < ++v4)
      {
        return 0x7FFF;
      }
    }

    return index - v4;
  }

  return v3;
}

- (void)_replaceCellAtIndex:(unsigned __int16)index withCell:(id)cell
{
  indexCopy = index;
  cellCopy = cell;
  v6 = sub_221138A3C(self);
  v8 = sub_2211438C8(cellCopy);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (indexCopy != 0x7FFF && self->_currentData._private.offsetBufferCount > indexCopy)
  {
    v10 = self->_currentData._private.offsets[indexCopy];
    if (v10 != 0xFFFF)
    {
      if (self->_currentData._private.wideOffsets)
      {
        v9 = 4 * v10;
      }

      else
      {
        v9 = self->_currentData._private.offsets[indexCopy];
      }
    }
  }

  v13 = sub_2216F6A80(&self->_currentData, indexCopy, v6, v7);
  v14 = v8 - v13;
  if (v14)
  {
    if (v14 >= 1)
    {
      sub_221139394(&self->_currentData._private.cellData, self->_currentData._private.cellBufferSize + v14, v11, v12);
    }

    v21 = v9;
    if (v6 > indexCopy)
    {
      sub_22113C758(&self->_currentData._private.cellData, (v13 + v9), v14, v12);
      v15 = indexCopy + 1;
      do
      {
        if (v15 != 0x7FFF)
        {
          offsetBufferCount = self->_currentData._private.offsetBufferCount;
          if (offsetBufferCount > v15)
          {
            v17 = self->_currentData._private.offsets[v15];
            if (v17 != 0xFFFF)
            {
              wideOffsets = self->_currentData._private.wideOffsets;
              if (self->_currentData._private.wideOffsets)
              {
                v19 = 4 * v17;
              }

              else
              {
                v19 = self->_currentData._private.offsets[v15];
              }

              if (v15 >= 0xFFu && !wideOffsets)
              {
                sub_22113A218(&self->_currentData);
                offsetBufferCount = self->_currentData._private.offsetBufferCount;
                wideOffsets = 1;
              }

              if (offsetBufferCount <= v15)
              {
                sub_221139CC8(&self->_currentData._private.cellData, v15);
              }

              v20 = v19 + v14;
              if (v19 + v14 == 0x7FFFFFFFFFFFFFFFLL)
              {
                LOWORD(v20) = -1;
              }

              else if (wideOffsets)
              {
                v20 >>= 2;
              }

              self->_currentData._private.offsets[v15] = v20;
            }
          }
        }

        ++v15;
      }

      while (v6 >= v15);
    }

    v9 = v21;
    if (v14 < 0)
    {
      sub_221139394(&self->_currentData._private.cellData, self->_currentData._private.cellBufferSize + v14, v11, v12);
    }
  }

  sub_221143B30(cellCopy, &self->_currentData._private.cellData[v9]);
  sub_221138D14(&self->_preBNCData);
}

- (void)_insertCell:(id)cell atIndex:(unsigned __int16)index
{
  indexCopy = index;
  cellCopy = cell;
  if (indexCopy != 0x7FFF && self->_currentData._private.offsetBufferCount > indexCopy && self->_currentData._private.offsets[indexCopy] != -1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableTileRowInfo _insertCell:atIndex:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1198, 0, "Can't insert over an existing cell!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = sub_221138A3C(self);
  cellCount = self->_cellCount;
  v19 = sub_2211438C8(cellCopy);
  v20 = sub_221139F78(&self->_currentData, indexCopy, v17, cellCount, v19);
  sub_221143B30(cellCopy, v20);
  sub_221138D14(&self->_preBNCData);
  ++self->_cellCount;
  if (!self->_maxColumnIndexIsValidPrivate || (maxColumnIndexPrivate = self->_maxColumnIndexPrivate, maxColumnIndexPrivate == 0x7FFF) || maxColumnIndexPrivate <= indexCopy)
  {
    self->_maxColumnIndexPrivate = indexCopy;
    self->_maxColumnIndexIsValidPrivate = 1;
  }
}

- (int64_t)setCell:(id)cell atIndex:(unsigned __int16)index
{
  indexCopy = index;
  cellCopy = cell;
  v9 = cellCopy;
  if (self->_storageVersion != 5)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Attempting to write cells to a preBNC row.", "[TSTTableTileRowInfo setCell:atIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 1241);
    v13 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableTileRowInfo setCell:atIndex:]", v15);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v16, v19, 1241, 1, "Attempting to write cells to a preBNC row.");

    TSUCrashBreakpoint();
    abort();
  }

  if (indexCopy == 0x7FFF || self->_currentData._private.offsetBufferCount <= indexCopy)
  {
    if (!cellCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    objc_msgSend__insertCell_atIndex_(self, v7, cellCopy, indexCopy);
    v11 = 1;
    goto LABEL_12;
  }

  v10 = self->_currentData._private.offsets[indexCopy];
  if (cellCopy)
  {
    if (v10 != 0xFFFF)
    {
      objc_msgSend__replaceCellAtIndex_withCell_(self, v7, indexCopy, cellCopy);
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v10 == 0xFFFF)
  {
    goto LABEL_11;
  }

  objc_msgSend__removeCellAtIndex_(self, v7, indexCopy, v8);
  v11 = -1;
LABEL_12:

  return v11;
}

- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  if (self->_storageVersion != 5)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Attempting to insert columns in a preBNC row.", a2, index, *&count, "[TSTTableTileRowInfo insertColumnsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 1273);
    v18 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableTileRowInfo insertColumnsAtIndex:count:]", v20);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v21, v24, 1273, 1, "Attempting to insert columns in a preBNC row.");

    TSUCrashBreakpoint();
    abort();
  }

  countCopy = count;
  indexCopy = index;
  v7 = sub_221138A3C(self);
  if (v7 != 0x7FFF && v7 >= indexCopy)
  {
    v8 = countCopy;
    v9 = (countCopy + indexCopy);
    v10 = v7 + 1;
    do
    {
      v11 = v10 - 1;
      offsetBufferCount = self->_currentData._private.offsetBufferCount;
      if (v10 == 0x8000 || offsetBufferCount <= v11)
      {
        wideOffsets = self->_currentData._private.wideOffsets;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = self->_currentData._private.offsets[(v10 - 1)];
        v14 = 4 * v13;
        if (!self->_currentData._private.wideOffsets)
        {
          v14 = self->_currentData._private.offsets[v11];
        }

        wideOffsets = self->_currentData._private.wideOffsets;
        if (v13 == 0xFFFF)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }
      }

      if ((v11 + v8) >= 0xFFu && !wideOffsets)
      {
        sub_22113A218(&self->_currentData);
        offsetBufferCount = self->_currentData._private.offsetBufferCount;
        wideOffsets = 1;
      }

      if (offsetBufferCount <= (v11 + v8))
      {
        sub_221139CC8(&self->_currentData._private.cellData, (v11 + v8));
      }

      v17 = v16 >> 2;
      if (!wideOffsets)
      {
        LOWORD(v17) = v16;
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        LOWORD(v17) = -1;
      }

      self->_currentData._private.offsets[(v11 + v8)] = v17;
      if (v11 < v9)
      {
        if (v11 >= 0xFF && !self->_currentData._private.wideOffsets)
        {
          sub_22113A218(&self->_currentData);
        }

        if (self->_currentData._private.offsetBufferCount <= v11)
        {
          sub_221139CC8(&self->_currentData._private.cellData, v11);
        }

        self->_currentData._private.offsets[v11] = -1;
      }

      v10 = v11;
    }

    while (v11 > indexCopy);
    sub_221138D14(&self->_preBNCData);

    sub_2211392B0(self);
  }
}

- (unint64_t)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  if (self->_storageVersion != 5)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Attempting to remove columns in a preBNC row.", a2, index, *&count, "[TSTTableTileRowInfo removeColumnsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 1309);
    v17 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTTableTileRowInfo removeColumnsAtIndex:count:]", v19);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v20, v23, 1309, 1, "Attempting to remove columns in a preBNC row.");

    TSUCrashBreakpoint();
    abort();
  }

  countCopy = count;
  indexCopy = index;
  v8 = sub_221138A3C(self);
  result = 0;
  if (v8 != 0x7FFF && v8 >= indexCopy)
  {
    cellCount = self->_cellCount;
    if (countCopy)
    {
      sub_2216F6C34(self, indexCopy, indexCopy + countCopy, v7);
    }

    do
    {
      offsetBufferCount = self->_currentData._private.offsetBufferCount;
      if ((indexCopy + countCopy) == 0x7FFF || offsetBufferCount <= (indexCopy + countCopy))
      {
        wideOffsets = self->_currentData._private.wideOffsets;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = self->_currentData._private.offsets[(indexCopy + countCopy)];
        v13 = 4 * v12;
        if (!self->_currentData._private.wideOffsets)
        {
          v13 = self->_currentData._private.offsets[(indexCopy + countCopy)];
        }

        wideOffsets = self->_currentData._private.wideOffsets;
        if (v12 == 0xFFFF)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }
      }

      if (indexCopy >= 0xFFu && !wideOffsets)
      {
        sub_22113A218(&self->_currentData);
        offsetBufferCount = self->_currentData._private.offsetBufferCount;
        wideOffsets = 1;
      }

      if (offsetBufferCount <= indexCopy)
      {
        sub_221139CC8(&self->_currentData._private.cellData, indexCopy);
      }

      v16 = v15 >> 2;
      if (!wideOffsets)
      {
        LOWORD(v16) = v15;
      }

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        LOWORD(v16) = -1;
      }

      self->_currentData._private.offsets[indexCopy] = v16;
      LOWORD(indexCopy) = indexCopy + 1;
    }

    while (v8 >= indexCopy);
    sub_221138D14(&self->_preBNCData);
    sub_2211392B0(self);
    return cellCount - self->_cellCount;
  }

  return result;
}

- (void)moveColumnsFromIndex:(unsigned __int16)index toIndex:(unsigned __int16)toIndex count:(unsigned int)count
{
  toIndexCopy = toIndex;
  indexCopy = index;
  toIndexCopy2 = toIndex;
  if (toIndex > index)
  {
    if (index + count > toIndex)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo moveColumnsFromIndex:toIndex:count:]", toIndex);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1356, 0, "Move column ranges cannot overlap!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    }

    toIndexCopy2 = toIndexCopy - count;
  }

  if (!self->_cellCount)
  {
    return;
  }

  v18 = sub_221138A3C(self);
  if (v18 < toIndexCopy && v18 < indexCopy)
  {
    return;
  }

  countCopy = count;
  v92 = 0;
  *__dst = 0u;
  v91 = 0u;
  wideOffsets = self->_currentData._private.wideOffsets;
  if (wideOffsets)
  {
    BYTE2(v92) = 1;
  }

  if (v18 != 0x7FFF)
  {
    v23 = indexCopy + count;
    offsetBufferCount = self->_currentData._private.offsetBufferCount;
    if (indexCopy != 0x7FFF && offsetBufferCount > indexCopy)
    {
      offsets = self->_currentData._private.offsets;
      v26 = offsets[indexCopy];
      if (v26 != 0xFFFF)
      {
LABEL_23:
        if (wideOffsets)
        {
          v31 = 4 * v26;
        }

        else
        {
          v31 = v26;
        }

        if (v23 == 0x7FFF || offsetBufferCount <= v23 || (v32 = offsets[(indexCopy + count)], v32 == 0xFFFF))
        {
          if (v18 <= v23)
          {
LABEL_40:
            cellBufferSize = self->_currentData._private.cellBufferSize;
          }

          else
          {
            v34 = (indexCopy + count);
            v35 = v18 - v34;
            v36 = v34 + 1;
            while (1)
            {
              if (v36 != 0x7FFF && v36 < offsetBufferCount)
              {
                v38 = offsets[v36];
                if (v38 != 0xFFFF)
                {
                  break;
                }
              }

              ++v36;
              if (!--v35)
              {
                goto LABEL_40;
              }
            }

            if (wideOffsets)
            {
              cellBufferSize = 4 * v38;
            }

            else
            {
              cellBufferSize = offsets[v36];
            }
          }
        }

        else if (wideOffsets)
        {
          cellBufferSize = 4 * v32;
        }

        else
        {
          cellBufferSize = offsets[(indexCopy + count)];
        }

        v39 = cellBufferSize - v31;
        if (cellBufferSize != v31)
        {
          sub_221139394(__dst, cellBufferSize - v31, v20, v21);
          memcpy(__dst[0], &self->_currentData._private.cellData[v31], v39);
          if (count)
          {
            v40 = 0;
            do
            {
              v41 = 0x7FFFFFFFFFFFFFFFLL;
              if ((v40 + indexCopy) != 0x7FFF && self->_currentData._private.offsetBufferCount > (v40 + indexCopy))
              {
                v42 = self->_currentData._private.offsets[(v40 + indexCopy)];
                if (v42 != 0xFFFF)
                {
                  if (self->_currentData._private.wideOffsets)
                  {
                    v42 *= 4;
                  }

                  v41 = v42 - v31;
                }
              }

              v43 = BYTE2(v92);
              if (v40 >= 0xFF && (v92 & 0x10000) == 0)
              {
                sub_22113A218(__dst);
                v43 = 1;
              }

              if (v40 >= v92)
              {
                sub_221139CC8(__dst, v40);
              }

              v44 = v41 >> 2;
              if ((v43 & 1) == 0)
              {
                LOWORD(v44) = v41;
              }

              if (v41 == 0x7FFFFFFFFFFFFFFFLL)
              {
                LOWORD(v44) = -1;
              }

              *(*(&v91 + 1) + 2 * v40++) = v44;
            }

            while (count != v40);
          }
        }

        goto LABEL_63;
      }
    }

    v27 = (v23 - 1);
    if (v27 > indexCopy)
    {
      v28 = v27 - indexCopy;
      v29 = indexCopy + 1;
      do
      {
        if (v29 != 0x7FFF && v29 < offsetBufferCount)
        {
          offsets = self->_currentData._private.offsets;
          v26 = offsets[v29];
          if (v26 != 0xFFFF)
          {
            goto LABEL_23;
          }
        }

        ++v29;
      }

      while (--v28);
    }
  }

LABEL_63:
  objc_msgSend_removeColumnsAtIndex_count_(self, v19, indexCopy, count);
  objc_msgSend_insertColumnsAtIndex_count_(self, v45, toIndexCopy2, count);
  v48 = __dst[1];
  if (__dst[1])
  {
    sub_221139394(&self->_currentData._private.cellData, __dst[1] + self->_currentData._private.cellBufferSize, v46, v47);
    v49 = self->_currentData._private.offsetBufferCount;
    if (self->_currentData._private.offsetBufferCount)
    {
      v50 = (v49 - 1) + 1;
      while (1)
      {
        v51 = v50--;
        if (v51 != 0x8000 && v49 > v50 && self->_currentData._private.offsets[v50] != -1)
        {
          break;
        }

        if (v50 <= 0)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {
LABEL_70:
      LOWORD(v50) = 0x7FFF;
    }

    v52 = sub_22113C5B8(&self->_currentData, toIndexCopy2, v50, v48);
    sub_22113C758(&self->_currentData._private.cellData, v52, v48, v53);
    v86 = v48;
    memcpy(&self->_currentData._private.cellData[v52], __dst[0], v48);
    countCopy2 = count;
    if (count)
    {
      v57 = 0;
      v88 = 0;
      v58 = v92;
      v59 = *(&v91 + 1);
      v87 = BYTE2(v92);
      do
      {
        v60 = toIndexCopy2 + v57;
        if ((toIndexCopy2 + v57) != 0x7FFF && self->_currentData._private.offsetBufferCount > v60 && self->_currentData._private.offsets[(toIndexCopy2 + v57)] != -1)
        {
          v61 = MEMORY[0x277D81150];
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "NSUInteger _applyMovingCellBuffer(TSTTableTileRowBuffer *, TSTTableTileRowBuffer *, TSUColumnIndex, TSUColumnRowCount)", v55);
          v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v64);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v66, v62, v65, 715, 0, "Overwriting a column in move!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69);
        }

        if (v57 != 0x7FFF && v57 < v58)
        {
          v70 = *(v59 + 2 * v57);
          if (v70 != 0xFFFF)
          {
            if (v87)
            {
              v71 = 4 * v70;
            }

            else
            {
              v71 = *(v59 + 2 * v57);
            }

            v72 = self->_currentData._private.wideOffsets;
            if ((toIndexCopy2 + v57) >= 0xFFu && !self->_currentData._private.wideOffsets)
            {
              sub_22113A218(&self->_currentData);
              v72 = 1;
            }

            if (self->_currentData._private.offsetBufferCount <= v60)
            {
              sub_221139CC8(&self->_currentData._private.cellData, (toIndexCopy2 + v57));
            }

            v73 = (v71 + v52) >> 2;
            if (!v72)
            {
              LOWORD(v73) = v71 + v52;
            }

            if (v71 + v52 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v74 = -1;
            }

            else
            {
              v74 = v73;
            }

            self->_currentData._private.offsets[(toIndexCopy2 + v57)] = v74;
            ++v88;
          }
        }

        ++v57;
      }

      while (countCopy2 != v57);
    }

    else
    {
      v88 = 0;
    }

    v75 = self->_currentData._private.offsetBufferCount;
    if (self->_currentData._private.offsetBufferCount)
    {
      v76 = (v75 - 1) + 1;
      v77 = countCopy;
      while (1)
      {
        v78 = v76--;
        if (v78 != 0x8000 && v75 > v76 && self->_currentData._private.offsets[v76] != -1)
        {
          break;
        }

        if (v76 <= 0)
        {
          LOWORD(v76) = 0x7FFF;
          break;
        }
      }
    }

    else
    {
      LOWORD(v76) = 0x7FFF;
      v77 = countCopy;
    }

    for (i = toIndexCopy2 + v77; i <= v76; ++i)
    {
      if (i != 0x7FFF)
      {
        v80 = self->_currentData._private.offsetBufferCount;
        if (v80 > i)
        {
          v81 = self->_currentData._private.offsets[i];
          if (v81 != 0xFFFF)
          {
            v82 = self->_currentData._private.wideOffsets;
            if (self->_currentData._private.wideOffsets)
            {
              v83 = 4 * v81;
            }

            else
            {
              v83 = self->_currentData._private.offsets[i];
            }

            if (i >= 0xFFu && !v82)
            {
              sub_22113A218(&self->_currentData);
              v80 = self->_currentData._private.offsetBufferCount;
              v82 = 1;
            }

            if (v80 <= i)
            {
              sub_221139CC8(&self->_currentData._private.cellData, i);
            }

            v84 = &v86[v83];
            if (&v86[v83] == 0x7FFFFFFFFFFFFFFFLL)
            {
              LOWORD(v84) = -1;
            }

            else if (v82)
            {
              v84 >>= 2;
            }

            self->_currentData._private.offsets[i] = v84;
          }
        }
      }
    }

    sub_221138D14(__dst);
    self->_cellCount += v88;
  }

  sub_221138D14(__dst);
  sub_221138D14(&self->_preBNCData);
  sub_2211392B0(self);
}

- (void)enumerateStoragesInColumnRange:(_NSRange)range getPreBNC:(BOOL)c withBlock:(id)block
{
  cCopy = c;
  length = range.length;
  location = range.location;
  blockCopy = block;
  v10 = sub_221138A3C(self);
  if (v10 >= (location + length - 1))
  {
    v11 = (location + length - 1);
  }

  else
  {
    v11 = v10;
  }

  v12 = 8;
  if (cCopy)
  {
    v12 = 48;
  }

  if (v11 >= location)
  {
    v13 = self + v12;
    v14 = *v13;
    do
    {
      while (1)
      {
        if (location != 0x7FFF && *(v13 + 16) > location)
        {
          v15 = *(*(v13 + 3) + 2 * location);
          if (v15 != 0xFFFF)
          {
            break;
          }
        }

        if (v11 < ++location)
        {
          goto LABEL_17;
        }
      }

      if (v13[34])
      {
        v15 *= 4;
      }

      v16 = 0;
      blockCopy[2](blockCopy, v14 + v15, location, &v16);
      if (v11 <= location)
      {
        break;
      }

      ++location;
    }

    while ((v16 & 1) == 0);
  }

LABEL_17:
}

- (BOOL)searchCellStorageRefAtColumnIndex:(unsigned __int16)index searchMask:(unint64_t)mask
{
  v5 = objc_msgSend_cellStorageRefAtIndex_(self, a2, index, mask);
  if (v5)
  {
    LOBYTE(v5) = !mask || (mask & 0x3EFF800) != 0 && ((v9 = v5, (mask & 0x400000) != 0) && ((sub_22113C374(v5, v6, v7, v8), sub_22113C374(v9, v10, v11, v12), v9[1]) || (sub_22114503C(v9, 0x400, v13, v14) & 1) != 0 || (sub_22114503C(v9, 0x200, v15, v16) & 1) != 0) || (mask & 0x800) != 0 && (sub_22114503C(v9, 0x20, v7, v8) & 1) != 0 || (mask & 0x1000) != 0 && (v9[10] & 8) != 0 || (mask & 0x2000) != 0 && (sub_22114503C(v9, 0x80, v7, v8) & 1) != 0 || (mask & 0x4000) != 0 && (v9[4] & 2) != 0 || (mask & 0x8000) != 0 && (sub_22113C374(v9, v6, v7, v8), (*(v9 + 9) & 0x7E0) != 0) || (mask & 0x10000) != 0 && (sub_22114503C(v9, 0x800, v7, v8) & 1) != 0 || (mask & 0x20000) != 0 && (sub_22114503C(v9, 0x200, v7, v8) & 1) != 0 || (mask & 0x800000) != 0 && (sub_22114503C(v9, 0x400, v7, v8) & 1) != 0 || (mask & 0x40000) != 0 && (sub_22114503C(v9, 0x100000, v7, v8) & 1) != 0 || (mask & 0x1000000) != 0 && (v9[5] & 2) != 0 || (mask & 0x80000) != 0 && (sub_22114503C(v9, 0x10, v7, v8) & 1) != 0 || (mask & 0x200000) != 0 && (sub_22114503C(v9, 0x40, v7, v8) & 1) != 0 || (mask & 0x2000000) != 0 && (sub_22113C374(v9, v6, v7, v8), (v9[1] & 0xF7) != 0));
  }

  return v5;
}

- (BOOL)quickValidate
{
  if ((!self->_preBNCData._private.cellData || (v4 = objc_msgSend__quickValidateBuffer_(self, a2, &self->_preBNCData, v2)) != 0) && (!self->_currentData._private.cellData || (v4 = objc_msgSend__quickValidateBuffer_(self, a2, &self->_currentData, v2)) != 0))
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)validateWithResult:(id *)result
{
  cellData = self->_currentData._private.cellData;
  p_currentData = &self->_currentData;
  if (result)
  {
    v5 = MEMORY[0x277CCAB68];
    v6 = objc_msgSend_description(self, a2, result, v3);
    v9 = objc_msgSend_stringWithString_(v5, v7, v6, v8);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  offsetBufferCount = self->_currentData._private.offsetBufferCount;
  if (self->_currentData._private.offsetBufferCount)
  {
    v12 = (offsetBufferCount - 1) + 1;
    while (1)
    {
      v13 = v12--;
      if (v13 != 0x8000 && offsetBufferCount > v12 && self->_currentData._private.offsets[v12] != -1)
      {
        break;
      }

      if (v12 <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    LOWORD(v12) = 0x7FFF;
  }

  v176 = self->_preBNCData._private.cellData;
  v178 = v10;
  if (self->_maxColumnIndexIsValidPrivate && self->_maxColumnIndexPrivate != v12)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 1621, 0, "%{public}@", @"Incorrect maximum column!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    objc_msgSend_appendString_(v10, v24, @"Incorrect maximum column!", v25);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v174 = 0;
  v175 = 0;
  v26 = 0;
  v27 = 0;
  v177 = 0;
  v28 = 0;
  do
  {
    v29 = 1;
    if (v28 != 0x7FFF && self->_currentData._private.offsetBufferCount > v28)
    {
      v30 = self->_currentData._private.offsets[v28];
      if (v30 == 0xFFFF)
      {
        v29 = 1;
      }

      else
      {
        if (self->_currentData._private.wideOffsets)
        {
          v31 = 4 * v30;
        }

        else
        {
          v31 = self->_currentData._private.offsets[v28];
        }

        if (v31 != v27)
        {
          v32 = MEMORY[0x277D81150];
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v35);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 1632, 0, "%{public}@", @" Misaligned cell storage offsets!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
          objc_msgSend_appendString_(v178, v41, @" Misaligned cell storage offsets!", v42);
          v14 = 0;
        }

        if (v31 >= self->_currentData._private.cellBufferSize)
        {
          v43 = MEMORY[0x277D81150];
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v46);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 1638, 0, "%{public}@", @" Cell storage overflow!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
          objc_msgSend_appendString_(v178, v52, @" Cell storage overflow!", v53);
          v14 = 0;
        }

        if (++v26 > self->_cellCount)
        {
          v54 = MEMORY[0x277D81150];
          v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v57);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 1646, 0, "%{public}@", @" Found an extra cell in this row!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
          objc_msgSend_appendString_(v178, v63, @" Found an extra cell in this row!", v64);
          v14 = 0;
        }

        v27 += sub_2216F6A80(p_currentData, v28, v12, v3);
        if (sub_22113C374(&cellData[v31], v65, v66, v67))
        {
          v29 = 0;
        }

        else
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
          v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v71);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 1692, 0, "%{public}@", @" Bad cell version!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
          objc_msgSend_appendString_(v178, v77, @" Bad cell version!", v78);
          v29 = 0;
          v14 = 0;
        }
      }
    }

    if (v176)
    {
      if (v28 == 0x7FFF || self->_preBNCData._private.offsetBufferCount <= v28 || (v79 = self->_preBNCData._private.offsets[v28], v79 == 0xFFFF))
      {
        if (v29)
        {
          goto LABEL_55;
        }

        v80 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (self->_preBNCData._private.wideOffsets)
        {
          v80 = 4 * v79;
        }

        else
        {
          v80 = self->_preBNCData._private.offsets[v28];
        }

        if (!v29)
        {
LABEL_44:
          if (v80 != v177)
          {
            v92 = MEMORY[0x277D81150];
            v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
            v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v95);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v97, v93, v96, 1710, 0, "%{public}@", @" Misaligned cell storage offsets in PreBNC!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99, v100);
            objc_msgSend_appendString_(v178, v101, @" Misaligned cell storage offsets in PreBNC!", v102);
            v14 = 0;
          }

          if (v80 >= self->_preBNCData._private.cellBufferSize)
          {
            v103 = MEMORY[0x277D81150];
            v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
            v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v106);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v108, v104, v107, 1716, 0, "%{public}@", @" Cell storage overflow in PreBNC!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111);
            objc_msgSend_appendString_(v178, v112, @" Cell storage overflow in PreBNC!", v113);
            v14 = 0;
          }

          if (++v175 > self->_cellCount)
          {
            v114 = MEMORY[0x277D81150];
            v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
            v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v117);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v119, v115, v118, 1724, 0, "%{public}@", @" Found an extra preBNC cell in this row!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122);
            objc_msgSend_appendString_(v178, v123, @" Found an extra preBNC cell in this row!", v124);
            v14 = 0;
          }

          v125 = v174;
          if (!v174)
          {
            v125 = self->_preBNCData._private.cellData;
          }

          v174 = v125;
          v126 = sub_221395B64(&v125[v80], a2, result, v3);
          if (v80 + v126 > self->_preBNCData._private.cellBufferSize)
          {
            v127 = MEMORY[0x277D81150];
            v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
            v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v130);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v132, v128, v131, 1738, 0, "%{public}@", @" Cell storage overflow in Pre BNC!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135);
            objc_msgSend_appendString_(v178, v136, @" Cell storage overflow in Pre BNC!", v137);
            v14 = 0;
          }

          v177 += v126;
          goto LABEL_55;
        }
      }

      v81 = MEMORY[0x277D81150];
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileRowInfo validateWithResult:]", v3);
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v84);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v86, v82, v85, 1703, 0, "%{public}@", @" Mismatched presence of cells.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89);
      objc_msgSend_appendString_(v178, v90, @" Mismatched presence of cells.", v91);
      if (v80 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

LABEL_55:
    ++v28;
  }

  while (v28 <= v12);
  if (v26 != self->_cellCount)
  {
    v138 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @" Incorrect cell count! Expected:%tu Found:%tu.", v3, self->_cellCount, v26);
    v139 = MEMORY[0x277D81150];
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "[TSTTableTileRowInfo validateWithResult:]", v141);
    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v144);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v139, v146, v142, v145, 1750, 0, "%{public}@", v138);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149);
    objc_msgSend_appendString_(v178, v150, v138, v151);

    v14 = 0;
  }

  if (v176 && v175 != self->_cellCount)
  {
    v152 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @" Incorrect PreBNC cell count! Expected:%tu Found:%tu.", v3, self->_cellCount, v175);
    v153 = MEMORY[0x277D81150];
    v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, "[TSTTableTileRowInfo validateWithResult:]", v155);
    v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v158);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v153, v160, v156, v159, 1757, 0, "%{public}@", v152);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163);
    objc_msgSend_appendString_(v178, v164, v152, v165);

    v14 = 0;
  }

  objc_msgSend_appendString_(v178, a2, @"\n", v3);
  if (result)
  {
    if (v14)
    {
      v169 = &stru_2834BADA0;
    }

    else
    {
      v169 = objc_msgSend_copy(v178, v166, v167, v168);
    }

    *result = v169;
  }

  return v14 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@:%p tileRowIndex %lu cellCount %lu>", v7, v5, self, self->_tileRowIndex, self->_cellCount);

  return v8;
}

- (TSTCellStorage)cellStorageRefAtIndex:(unsigned __int16)index
{
  if (index == 0x7FFF || self->_currentData._private.offsetBufferCount <= index)
  {
    return 0;
  }

  v4 = self->_currentData._private.offsets[index];
  if (v4 == 0xFFFF)
  {
    return 0;
  }

  if (self->_currentData._private.wideOffsets)
  {
    v4 *= 4;
  }

  return &self->_currentData._private.cellData[v4];
}

- (TSTCellStorage)p_preBNCStorageRefAtIndex:(unsigned __int16)index
{
  if (!self->_cellCount)
  {
    return 0;
  }

  if (index == 0x7FFF || self->_preBNCData._private.offsetBufferCount <= index)
  {
    return 0;
  }

  v4 = self->_preBNCData._private.offsets[index];
  if (v4 == 0xFFFF)
  {
    return 0;
  }

  if (self->_preBNCData._private.wideOffsets)
  {
    v4 *= 4;
  }

  return &self->_preBNCData._private.cellData[v4];
}

- (void)_removeCellAtIndex:(unsigned __int16)index
{
  indexCopy = index;
  v5 = sub_221138A3C(self);
  if (indexCopy != 0x7FFF && self->_currentData._private.offsetBufferCount > indexCopy)
  {
    v8 = self->_currentData._private.offsets[indexCopy];
    if (v8 != 0xFFFF)
    {
      v11 = v5;
      if (self->_currentData._private.wideOffsets)
      {
        v12 = 4 * v8;
      }

      else
      {
        v12 = self->_currentData._private.offsets[indexCopy];
      }

      v15 = sub_2216F6A80(&self->_currentData, indexCopy, v5, v6);
      if (indexCopy >= 0xFF && !self->_currentData._private.wideOffsets)
      {
        sub_22113A218(&self->_currentData);
      }

      if (self->_currentData._private.offsetBufferCount <= indexCopy)
      {
        sub_221139CC8(&self->_currentData._private.cellData, indexCopy);
      }

      self->_currentData._private.offsets[indexCopy] = -1;
      if (v11 > indexCopy)
      {
        sub_22113C758(&self->_currentData._private.cellData, (v12 + v15), -v15, v14);
        v16 = indexCopy + 1;
        do
        {
          if (v16 != 0x7FFF)
          {
            offsetBufferCount = self->_currentData._private.offsetBufferCount;
            if (offsetBufferCount > v16)
            {
              v18 = self->_currentData._private.offsets[v16];
              if (v18 != 0xFFFF)
              {
                wideOffsets = self->_currentData._private.wideOffsets;
                if (self->_currentData._private.wideOffsets)
                {
                  v20 = 4 * v18;
                }

                else
                {
                  v20 = self->_currentData._private.offsets[v16];
                }

                if (v16 >= 0xFFu && !wideOffsets)
                {
                  sub_22113A218(&self->_currentData);
                  offsetBufferCount = self->_currentData._private.offsetBufferCount;
                  wideOffsets = 1;
                }

                if (offsetBufferCount <= v16)
                {
                  sub_221139CC8(&self->_currentData._private.cellData, v16);
                }

                v21 = v20 - v15;
                if (v20 - v15 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  LOWORD(v21) = -1;
                }

                else if (wideOffsets)
                {
                  v21 >>= 2;
                }

                self->_currentData._private.offsets[v16] = v21;
              }
            }
          }

          ++v16;
        }

        while (v11 >= v16);
      }

      sub_221139394(&self->_currentData._private.cellData, self->_currentData._private.cellBufferSize - v15, v13, v14);
    }
  }

  sub_221138D14(&self->_preBNCData);
  --self->_cellCount;
  if (self->_maxColumnIndexIsValidPrivate)
  {
    maxColumnIndexPrivate = self->_maxColumnIndexPrivate;
    if (maxColumnIndexPrivate == 0x7FFF || maxColumnIndexPrivate <= indexCopy)
    {
      self->_maxColumnIndexPrivate = 0x7FFF;
      self->_maxColumnIndexIsValidPrivate = 0;
    }
  }
}

- (BOOL)_quickValidateBuffer:(TSTTableTileRowBuffer *)buffer
{
  offsetBufferCount = buffer->_private.offsetBufferCount;
  if (buffer->_private.offsetBufferCount)
  {
    v6 = (offsetBufferCount - 1) + 1;
    while (1)
    {
      v7 = v6--;
      if (v7 != 0x8000 && offsetBufferCount > v6 && buffer->_private.offsets[v6] != -1)
      {
        break;
      }

      if (v6 <= 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    LOWORD(v6) = 0x7FFF;
  }

  v8 = 0;
  cellBufferSize = buffer->_private.cellBufferSize;
  while (1)
  {
    if (v8 == 0x7FFF)
    {
      goto LABEL_22;
    }

    if (offsetBufferCount <= v8)
    {
      goto LABEL_22;
    }

    v10 = buffer->_private.offsets[v8];
    if (v10 == 0xFFFF)
    {
      goto LABEL_22;
    }

    if (buffer->_private.wideOffsets)
    {
      v10 *= 4;
    }

    if (v10 + 8 > cellBufferSize)
    {
      v14 = sub_22113CA14();
      objc_msgSend_stringWithUTF8String_(v14, v15, "[TSTTableTileRowInfo _quickValidateBuffer:]", v16);
      objc_claimAutoreleasedReturnValue();
      v17 = sub_22113CA24();
      objc_msgSend_stringWithUTF8String_(v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v19);
      objc_claimAutoreleasedReturnValue();
      sub_22113CA30();
      v20 = sub_22113CA04();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v21, v22, v23, 1545, 0);
      goto LABEL_27;
    }

    if (!buffer->_private.cellData)
    {
      v12 = 12;
      goto LABEL_21;
    }

    v11 = buffer->_private.cellData[v10];
    if ((v11 - 6) <= 0xFAu)
    {
      break;
    }

    if (buffer->_private.cellData[v10] == 1)
    {
      v12 = 8;
    }

    else
    {
      v12 = 12;
    }

LABEL_21:
    if (v12 + v10 > cellBufferSize)
    {
      v24 = sub_22113CA14();
      objc_msgSend_stringWithUTF8String_(v24, v25, "[TSTTableTileRowInfo _quickValidateBuffer:]", v26);
      objc_claimAutoreleasedReturnValue();
      v27 = sub_22113CA24();
      objc_msgSend_stringWithUTF8String_(v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v29);
      objc_claimAutoreleasedReturnValue();
      sub_22113CA30();
      v30 = sub_22113CA04();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v31, v32, v33, 1579, 0);
      goto LABEL_27;
    }

LABEL_22:
    if (++v8 > v6)
    {
      return 1;
    }
  }

  v34 = sub_22113CA14();
  objc_msgSend_stringWithUTF8String_(v34, v35, "[TSTTableTileRowInfo _quickValidateBuffer:]", v36);
  objc_claimAutoreleasedReturnValue();
  v37 = sub_22113CA24();
  v4 = objc_msgSend_stringWithUTF8String_(v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v39);
  v40 = sub_22113CA04();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v41, v42, v43, 1555, 0, v8, v11);
LABEL_27:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
  return 0;
}

@end