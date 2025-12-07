@interface TSTTableTileStorage
+ (id)_sharedQueue;
- (BOOL)auditRowInfoCellCountsReturningResult:(id *)result;
- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)bounds withDataStore:(id)store result:(id *)result;
- (BOOL)needToUpgradeCellStorage;
- (NSIndexSet)populatedRows;
- (NSIndexSet)populatedTiles;
- (TSTTableTileStorage)initWithOwner:(id)owner;
- (TSTTableTileStorage)initWithStorageArchive:(const void *)archive treeArchive:(const void *)treeArchive nextTileID:(unint64_t)d unarchiver:(id)unarchiver owner:(id)owner;
- (id)_createTileWithID:(unint64_t)d;
- (id)_groupForTileID:(unint64_t)d;
- (id)_tileForID:(unint64_t)d createIfMissing:(BOOL)missing;
- (id)_tileFromGroupForTileID:(unint64_t)d;
- (id)_yankRowRange:(_NSRange)range;
- (id)columnCellCountsOfRowsInRange:(_NSRange)range;
- (id)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (id)rowInfoAtIndex:(unsigned int)index;
- (id)tileForWritingAtRowIndex:(unsigned int)index outTileRange:(_NSRange *)range;
- (id)tileStartingAtOrAfterRowIndex:(unsigned int)index outTileRange:(_NSRange *)range;
- (id)tileStartingAtOrBeforeRowIndex:(unsigned int)index outTileRange:(_NSRange *)range;
- (multimap<TSUCellCoord,)makeStorageMap;
- (unint64_t)archivingCompatibilityVersion;
- (unsigned)lastPopulatedRowIndex;
- (void)_clearContentAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_enumerateGroups:(id)groups;
- (void)_enumerateLoadedTiles:(id)tiles;
- (void)_enumerateTiles:(id)tiles;
- (void)_insertRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_removeRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_removeTileForID:(unint64_t)d;
- (void)_setTile:(id)tile forID:(unint64_t)d;
- (void)_shiftRowsDownAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_shiftRowsUpAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)_spliceRows:(id)rows atIndex:(unsigned int)index;
- (void)_upgradeFromTileIDMap:(void *)map referenceMap:(void *)referenceMap;
- (void)enumerateRowByRowInRange:(_NSRange)range withBlock:(id)block;
- (void)enumerateRowsInRange:(_NSRange)range withBlock:(id)block;
- (void)enumerateRowsWithBlock:(id)block;
- (void)enumerateTilesConcurrentlyUsingBlock:(id)block;
- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count;
- (void)insertRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)prepareToApplyConcurrentCellMap:(id)map;
- (void)pruneTileForRowIndex:(unsigned int)index;
- (void)pruneTilesForRows:(id)rows;
- (void)removeRowsAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)reset;
- (void)saveToStorageArchive:(void *)archive treeArchive:(void *)treeArchive archiver:(id)archiver;
- (void)setShouldUseWideRows:(BOOL)rows;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)widenTilesForUpgrade;
@end

@implementation TSTTableTileStorage

- (TSTTableTileStorage)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v15.receiver = self;
  v15.super_class = TSTTableTileStorage;
  v8 = [(TSTTableTileStorage *)&v15 initWithOwner:ownerCopy];
  if (v8)
  {
    v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
    tileIDSet = v8->_tileIDSet;
    v8->_tileIDSet = v9;

    v13 = objc_msgSend__createTileWithID_(v8, v11, 0, v12);
    v8->_archivingCompatibilityVersion = 0x300020000000ALL;
  }

  return v8;
}

- (TSTTableTileStorage)initWithStorageArchive:(const void *)archive treeArchive:(const void *)treeArchive nextTileID:(unint64_t)d unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v99.receiver = self;
  v99.super_class = TSTTableTileStorage;
  v15 = [(TSTTableTileStorage *)&v99 initWithOwner:ownerCopy];
  if (v15)
  {
    v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14);
    v74 = ownerCopy;
    tileIDSet = v15->_tileIDSet;
    v15->_tileIDSet = v16;

    v18 = *(archive + 4);
    v19 = *(archive + 12);
    p_isa = &v15->super.super.isa;
    v15->_shouldUseWideRows = *(archive + 52) & (v18 << 30 >> 31);
    v15->_archivingCompatibilityVersion = objc_msgSend_messageVersion(unarchiverCopy, v20, v21, v22);
    if ((v18 & 1) == 0 || v19 != 256)
    {
      v85 = 0;
      v86 = &v85;
      v87 = 0x4812000000;
      v88 = sub_2211A0DA8;
      v89 = sub_2211A0DCC;
      v90 = &unk_22188E88F;
      v92 = 0;
      v93 = 0;
      __p = 0;
      v39 = *(treeArchive + 4);
      if (v39)
      {
        v40 = v39 + 8;
      }

      else
      {
        v40 = 0;
      }

      v41 = *(treeArchive + 6);
      if (v41)
      {
        v42 = 8 * v41;
        do
        {
          v43 = *(*v40 + 24);
          v44 = v86;
          *&v45 = v43;
          *(&v45 + 1) = HIDWORD(v43);
          v46 = v45;
          v48 = v86[7];
          v47 = v86[8];
          if (v48 >= v47)
          {
            v50 = v86[6];
            v51 = (v48 - v50) >> 4;
            if ((v51 + 1) >> 60)
            {
              sub_22107C148();
            }

            v52 = v47 - v50;
            v53 = v52 >> 3;
            if (v52 >> 3 <= (v51 + 1))
            {
              v53 = v51 + 1;
            }

            if (v52 >= 0x7FFFFFFFFFFFFFF0)
            {
              v54 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v53;
            }

            if (v54)
            {
              sub_2211A6C88((v86 + 6), v54);
            }

            v55 = (16 * v51);
            *v55 = v46;
            v49 = 16 * v51 + 16;
            v56 = v44[6];
            v57 = v44[7] - v56;
            v58 = v55 - v57;
            memcpy(v55 - v57, v56, v57);
            v59 = v44[6];
            v44[6] = v58;
            v44[7] = v49;
            v44[8] = 0;
            if (v59)
            {
              operator delete(v59);
            }
          }

          else
          {
            *v48 = v46;
            v49 = (v48 + 1);
          }

          v44[7] = v49;
          v40 += 8;
          v42 -= 8;
        }

        while (v42);
      }

      v82[0] = 0;
      v82[1] = v82;
      v82[2] = 0x5812000000;
      v82[3] = sub_2211A0DE4;
      v82[4] = sub_2211A0DF0;
      v82[5] = &unk_22188E88F;
      memset(v83, 0, sizeof(v83));
      v84 = 1065353216;
      v60 = *(archive + 5);
      if (v60)
      {
        v61 = v60 + 8;
      }

      else
      {
        v61 = 0;
      }

      v62 = *(archive + 8);
      if (v62)
      {
        v63 = MEMORY[0x277D85DD0];
        v64 = 8 * v62;
        v65 = MEMORY[0x277D80A18];
        do
        {
          v66 = *(*v61 + 32);
          v67 = *(*v61 + 24);
          v81[0] = v63;
          v81[1] = 3221225472;
          v81[2] = sub_2211A0DF8;
          v81[3] = &unk_2784604A8;
          v81[4] = v82;
          v81[5] = v66;
          v68 = unarchiverCopy;
          v70 = objc_opt_class();
          if (v67)
          {
            objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v68, v69, v67, v70, 0, v81);
          }

          else
          {
            objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v68, v69, v65, v70, 0, v81);
          }

          v61 += 8;
          v64 -= 8;
        }

        while (v64);
      }

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = sub_2211A0E74;
      v77[3] = &unk_2784604D0;
      v78 = p_isa;
      v79 = &v85;
      v80 = v82;
      objc_msgSend_addFinalizeHandler_(unarchiverCopy, v71, v77, v72);

      _Block_object_dispose(v82, 8);
      sub_221087B80(v83);
      _Block_object_dispose(&v85, 8);
      ownerCopy = v74;
      if (__p)
      {
        v92 = __p;
        operator delete(__p);
      }

      goto LABEL_44;
    }

    v26 = *(archive + 5);
    if (v26)
    {
      v27 = (v26 + 8);
    }

    else
    {
      v27 = 0;
    }

    v28 = *(archive + 8);
    if (v28)
    {
      v29 = 8 * v28;
      v30 = MEMORY[0x277D80A18];
      do
      {
        v31 = *v27;
        v32 = *(*v27 + 32);
        objc_msgSend_addIndex_(p_isa[2], v23, v32, v25);
        v33 = *(v31 + 24);
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = sub_2211A0C90;
        v96[3] = &unk_278460480;
        v97 = p_isa;
        v98 = v32;
        v34 = unarchiverCopy;
        v36 = objc_opt_class();
        if (v33)
        {
          objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v34, v35, v33, v36, 0, v96);
        }

        else
        {
          objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v34, v35, v30, v36, 0, v96);
        }

        ++v27;
        v29 -= 8;
      }

      while (v29);
    }

    ownerCopy = v74;
    v15 = p_isa;
    if (objc_msgSend_fileFormatVersion(unarchiverCopy, v23, v24, v25) <= 0xB000000000000)
    {
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = sub_2211A0D20;
      v94[3] = &unk_27845E3F8;
      v95 = p_isa;
      objc_msgSend_addFinalizeHandler_(unarchiverCopy, v37, v94, v38);

LABEL_44:
      v15 = p_isa;
    }
  }

  return v15;
}

- (void)_upgradeFromTileIDMap:(void *)map referenceMap:(void *)referenceMap
{
  v7 = *map;
  v8 = *(map + 1);
  v9 = 126 - 2 * __clz((v8 - *map) >> 4);
  v28 = v8 == *map;
  v112[0] = &unk_2834A2910;
  if (v28)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_2211A6F2C(v7, v8, v112, v10, 1);

  v107 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13);
  v17 = *map;
  v18 = *(map + 1);
  if (*map != v18)
  {
    do
    {
      v19 = *v17;
      v112[0] = *(v17 + 8);
      v20 = sub_2210BE30C(referenceMap, v112);
      if (v20)
      {
        v23 = v20[3];
        v111 = 0;
        v24 = objc_msgSend_objectAndReturnError_(v23, v21, &v111, v22);
        v25 = v111;
        if (v24)
        {
          v28 = v25 == 0;
        }

        else
        {
          v28 = 0;
        }

        if (!v28)
        {
          v106 = v25;
          if (!v25)
          {
            v96 = MEMORY[0x277D81150];
            v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", v27);
            v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v99);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v101, v97, v100, 230, 0, "invalid nil value for '%{public}s'", "error");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104);
          }

          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v55 = objc_msgSend_domain(v106, v52, v53, v54);
          v59 = objc_msgSend_code(v106, v56, v57, v58);
          isRecoverable = objc_msgSend_tsp_isRecoverable(v106, v60, v61, v62);
          v67 = objc_msgSend_tsp_hintsDescription(v106, v64, v65, v66);
          v68 = v67;
          if (isRecoverable)
          {
            v69 = @"recoverable=YES, ";
          }

          else
          {
            v69 = &stru_2834BADA0;
          }

          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Failed to load a table tile during upgrade: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 231, v51, v55, v59, v69, v67, v106);

          v70 = MEMORY[0x277D81150];
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", v72);
          v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v75);
          v77 = objc_opt_class();
          v78 = NSStringFromClass(v77);
          v82 = objc_msgSend_domain(v106, v79, v80, v81);
          v86 = objc_msgSend_code(v106, v83, v84, v85);
          v90 = objc_msgSend_tsp_isRecoverable(v106, v87, v88, v89);
          v105 = objc_msgSend_tsp_hintsDescription(v106, v91, v92, v93);
          if (v90)
          {
            v95 = @"recoverable=YES, ";
          }

          else
          {
            v95 = &stru_2834BADA0;
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v94, v73, v76, 231, 1, "Failed to load a table tile during upgrade: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v78, v82, v86, v95, v105, v106);

          TSUCrashBreakpoint();
          abort();
        }

        objc_opt_class();
        v29 = TSUCheckedDynamicCast();
        if ((objc_msgSend_isEmpty(v29, v30, v31, v32) & 1) == 0)
        {
          v35 = objc_msgSend_yankRowsAtTileRowIndex_(v29, v33, 0, v34);
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = sub_2211A14AC;
          v108[3] = &unk_278460518;
          v110 = v19;
          v108[4] = self;
          v109 = v107;
          objc_msgSend_tsu_enumerateNonNullObjectUsingBlock_(v35, v36, v108, v37);
        }
      }

      else
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableTileStorage _upgradeFromTileIDMap:referenceMap:]", v22);
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v41);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 223, 0, "Tile upgrade can't find tile for ID %tu!", v112[0]);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
      }

      v17 += 16;
    }

    while (v17 != v18);
  }

  if (self->_upgradeRepairedTiles && *MEMORY[0x277D81408] != -1)
  {
    sub_2216F6CE4();
  }

  if (objc_msgSend_firstIndex(self->_tileIDSet, v14, v15, v16))
  {
    v49 = objc_msgSend__createTileWithID_(self, v47, 0, v48);
  }

  *(map + 1) = *map;
  sub_2211A89A4(referenceMap);
}

- (void)saveToStorageArchive:(void *)archive treeArchive:(void *)treeArchive archiver:(id)archiver
{
  archiverCopy = archiver;
  for (i = 0; i != 16; ++i)
  {
    v10 = self->_tileGroups[i];
    if (v10)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = sub_2211A1988;
      v32[3] = &unk_278460540;
      archiveCopy = archive;
      v33 = archiverCopy;
      treeArchiveCopy = treeArchive;
      objc_msgSend_enumerateReferencesWithBlock_(v10, v11, v32, v12);
    }
  }

  v16 = *(archive + 4);
  *(archive + 4) = v16 | 1;
  *(archive + 12) = 256;
  if (self->_shouldUseWideRows)
  {
    *(archive + 4) = v16 | 3;
    *(archive + 52) = 1;
  }

  v17 = objc_msgSend_archivingCompatibilityVersion(self, v13, v14, v15);
  objc_msgSend_setMessageVersion_(archiverCopy, v18, v17, v19);
  if (v17 == 0x300020000000ALL || v17 == 0x4000100000000)
  {
    goto LABEL_26;
  }

  if (v17 != 0xA000000000003)
  {
    if (*MEMORY[0x277D808F0] == v17)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v20, v17, @"TSTFutureProofCell");
      goto LABEL_27;
    }

    if (v17 <= 0xD000000000000)
    {
      if (v17 == 0xB000200000006)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v20, 0xB000200000006, @"TSTPivotTables");
        goto LABEL_27;
      }

      if (v17 == 0xC000000000007)
      {
        objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v20, 0xC000000000007, @"TSTPivotTables v2");
        goto LABEL_27;
      }
    }

    else
    {
      switch(v17)
      {
        case 0xD000000000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v20, 0xD000000000001, @"TSTDropPreBNCData");
          goto LABEL_27;
        case 0xD000000000002:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v20, 0xD000000000002, @"TSTPivotTables MoreAggregates");
          goto LABEL_27;
        case 0xE000400000001:
          objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v20, 0xE000400000001, @"TSTArrayFormulas");
          goto LABEL_27;
      }
    }

    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "NSString *TSTFeatureIdentifierForCompatibilityVersion(TSPVersion)", v21);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCompatibility.h", v25);
    v27 = NSStringFromTSPVersion();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v26, 99, 0, "Unimplemented version for TSTCompatibility: %@", v27);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
LABEL_26:
    objc_msgSend_requiresDocumentVersion_(archiverCopy, v20, v17, v21);
    goto LABEL_27;
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v20, 0xA000000000003, @"TSTExpandedTables");
LABEL_27:
}

- (unint64_t)archivingCompatibilityVersion
{
  archivingCompatibilityVersion = self->_archivingCompatibilityVersion;
  if (archivingCompatibilityVersion >= 0x300020000000ALL)
  {
    if (archivingCompatibilityVersion > 0xA000000000002)
    {
      return archivingCompatibilityVersion;
    }
  }

  else
  {
    self->_archivingCompatibilityVersion = 0x300020000000ALL;
    archivingCompatibilityVersion = 0x300020000000ALL;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = archivingCompatibilityVersion;
  if (objc_msgSend_isEmbiggened(self, a2, v2, v3))
  {
    archivingCompatibilityVersion = 0xA000000000003;
    v8 = v12;
    v12[3] = 0xA000000000003;
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2211A1CEC;
    v10[3] = &unk_278460568;
    v10[4] = &v11;
    objc_msgSend__enumerateLoadedTiles_(self, v6, v10, v7);
    v8 = v12;
    archivingCompatibilityVersion = v12[3];
  }

  if (archivingCompatibilityVersion > self->_archivingCompatibilityVersion)
  {
    self->_archivingCompatibilityVersion = archivingCompatibilityVersion;
    archivingCompatibilityVersion = v8[3];
  }

  _Block_object_dispose(&v11, 8);
  return archivingCompatibilityVersion;
}

- (void)setShouldUseWideRows:(BOOL)rows
{
  if (self->_shouldUseWideRows != rows)
  {
    if (self->_shouldUseWideRows)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Table embiggening is a one-way process", a2, "[TSTTableTileStorage setShouldUseWideRows:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 392);
      v8 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTileStorage setShouldUseWideRows:]", v10);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v11, v14, 392, 1, "Table embiggening is a one-way process");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_willModify(self, a2, rows, v3);
    self->_shouldUseWideRows = rows;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2211A1ECC;
    v16[3] = &unk_278460588;
    rowsCopy = rows;
    objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v6, v16, v7);
  }
}

+ (id)_sharedQueue
{
  if (qword_27CFB5290 != -1)
  {
    sub_2216F6D20();
  }

  v3 = qword_27CFB5298;

  return v3;
}

- (id)_groupForTileID:(unint64_t)d
{
  if (d >= 0x1000)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Bad tile group index!", a2, "[TSTTableTileStorage _groupForTileID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 426);
    v10 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableTileStorage _groupForTileID:]", v12);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v13, v16, 426, 1, "Bad tile group index!");

    TSUCrashBreakpoint();
    abort();
  }

  v4 = d >> 8;
  tileGroups = self->_tileGroups;
  v6 = self->_tileGroups[d >> 8];
  if (!v6)
  {
    v7 = objc_msgSend_groupWithStartingTileID_(TSTTableTileGroup, a2, d & 0xF00, v3);
    v8 = tileGroups[v4];
    tileGroups[v4] = v7;

    v6 = tileGroups[v4];
  }

  return v6;
}

- (id)_tileFromGroupForTileID:(unint64_t)d
{
  if (d >= 0x1000)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Bad tile group index!", a2, "[TSTTableTileStorage _tileFromGroupForTileID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 438);
    v12 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableTileStorage _tileFromGroupForTileID:]", v14);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v15, v18, 438, 1, "Bad tile group index!");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = d >> 8;
  tileGroups = self->_tileGroups;
  v7 = self->_tileGroups[d >> 8];
  if (!v7)
  {
    v8 = objc_msgSend_groupWithStartingTileID_(TSTTableTileGroup, a2, d & 0xF00, v3);
    v9 = tileGroups[v5];
    tileGroups[v5] = v8;

    v7 = tileGroups[v5];
  }

  v10 = objc_msgSend_objectAtIndexedSubscript_(v7, a2, d, v3);

  return v10;
}

- (id)_tileForID:(unint64_t)d createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  if (objc_msgSend_containsIndex_(self->_tileIDSet, a2, d, missing))
  {
    v9 = objc_msgSend__tileFromGroupForTileID_(self, v7, d, v8);
    if (v9)
    {
      goto LABEL_7;
    }

    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableTileStorage _tileForID:createIfMissing:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 458, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (missingCopy)
  {
    v9 = objc_msgSend__createTileWithID_(self, v7, d, v8);
  }

  else
  {
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (void)_setTile:(id)tile forID:(unint64_t)d
{
  tileCopy = tile;
  objc_msgSend_willModify(self, v6, v7, v8);
  objc_msgSend_addIndex_(self->_tileIDSet, v9, d, v10);
  v13 = objc_msgSend__groupForTileID_(self, v11, d, v12);
  objc_msgSend_setObject_atIndexedSubscript_(v13, v14, tileCopy, d);
}

- (id)_createTileWithID:(unint64_t)d
{
  objc_msgSend_willModify(self, a2, d, v3);
  v6 = [TSTTableTile alloc];
  shouldUseWideRows = self->_shouldUseWideRows;
  v11 = objc_msgSend_owner(self, v8, v9, v10);
  v15 = objc_msgSend_context(v11, v12, v13, v14);
  shouldUseWideRows_context = objc_msgSend_initWithRows_shouldUseWideRows_context_(v6, v16, 0, shouldUseWideRows, v15);

  objc_msgSend__setTile_forID_(self, v18, shouldUseWideRows_context, d);

  return shouldUseWideRows_context;
}

- (void)_removeTileForID:(unint64_t)d
{
  objc_msgSend_willModify(self, a2, d, v3);
  objc_msgSend_removeIndex_(self->_tileIDSet, v6, d, v7);
  v11 = objc_msgSend__groupForTileID_(self, v8, d, v9);
  objc_msgSend_setObject_atIndexedSubscript_(v11, v10, 0, d);
}

- (void)_enumerateGroups:(id)groups
{
  groupsCopy = groups;
  v5 = 0;
  tileGroups = self->_tileGroups;
  while (1)
  {
    v7 = tileGroups[v5];
    if (v7)
    {
      v8 = 0;
      groupsCopy[2](groupsCopy, v7, &v8);
      if (v8)
      {
        break;
      }
    }

    if (++v5 == 16)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
}

- (void)_enumerateTiles:(id)tiles
{
  tilesCopy = tiles;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211A268C;
  v8[3] = &unk_2784605D8;
  v9 = tilesCopy;
  v5 = tilesCopy;
  objc_msgSend__enumerateGroups_(self, v6, v8, v7);
}

- (void)_enumerateLoadedTiles:(id)tiles
{
  tilesCopy = tiles;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211A282C;
  v8[3] = &unk_2784605D8;
  v9 = tilesCopy;
  v5 = tilesCopy;
  objc_msgSend__enumerateGroups_(self, v6, v8, v7);
}

- (void)_clearContentAtIndex:(unsigned int)index count:(unsigned int)count
{
  countCopy = count;
  v51 = index + count;
  v52 = index + count - 1;
  v7 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, *&count);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 <= v52 >> 8)
  {
    v11 = v7;
    v50 = countCopy;
    while (1)
    {
      v12 = v11 << 8;
      v13 = (v11 << 8) | 0xFF;
      if (index >= v11 << 8)
      {
        break;
      }

      if (v13 <= v52)
      {
        objc_msgSend__removeTileForID_(self, v8, v11, v9);
        goto LABEL_21;
      }

      v16 = objc_msgSend__tileForID_createIfMissing_(self, v8, v11, 0);
      if (!v16)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableTileStorage _clearContentAtIndex:count:]", v15);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v20);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 571, 0, "Corrupt tile map during clear!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
        countCopy = v50;
      }

      objc_msgSend_clearRowsAtTileRowIndex_numberOfRows_(v16, v14, 0, v51 - v12);
      if (objc_msgSend_isEmpty(v16, v26, v27, v28))
      {
        goto LABEL_18;
      }

LABEL_19:

LABEL_21:
      v48 = objc_msgSend_indexGreaterThanIndex_(self->_tileIDSet, v46, v11, v47);
      v11 = v48;
      if (v48 == 0x7FFFFFFFFFFFFFFFLL || v48 > v52 >> 8)
      {
        return;
      }
    }

    v16 = objc_msgSend__tileForID_createIfMissing_(self, v8, v11, 0);
    if (!v16)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTTableTileStorage _clearContentAtIndex:count:]", v32);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 558, 0, "Corrupt tile map during clear!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
      countCopy = v50;
    }

    v42 = index - v12;
    if (v13 - index + 1 < countCopy)
    {
      objc_msgSend_clearRowsAtTileRowIndex_numberOfRows_(v16, v31, v42, v13 - index + 1);
    }

    else
    {
      objc_msgSend_clearRowsAtTileRowIndex_numberOfRows_(v16, v31, v42, countCopy);
    }

    if (!objc_msgSend_isEmpty(v16, v43, v44, v45))
    {
      goto LABEL_19;
    }

LABEL_18:
    objc_msgSend__removeTileForID_(self, v29, v11, v30);
    goto LABEL_19;
  }
}

- (void)_shiftRowsUpAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v7 = objc_opt_class();
  v11 = objc_msgSend_tileSize(v7, v8, v9, v10);
  v41 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v12, v13, v14);
  Index = objc_msgSend_lastIndex(self->_tileIDSet, v15, v16, v17);
  v20 = index >> 8;
  v21 = (v11 - v4);
  do
  {
    v25 = objc_msgSend__tileForID_createIfMissing_(self, v18, Index, 0);
    if (!v25)
    {
      if (!objc_msgSend_count(v41, v22, v23, v24))
      {
        v25 = 0;
LABEL_15:
        v38 = v41;
        goto LABEL_16;
      }

      v25 = objc_msgSend__createTileWithID_(self, v22, Index, v24);
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    if (Index <= v20)
    {
      objc_msgSend_shiftUpAtTileRowIndex_count_(v25, v22, index - (Index << 8), v4);
      v29 = 0;
    }

    else
    {
      v29 = objc_msgSend_shiftUpAndYankBy_(v25, v22, v4, v24);
    }

    if (objc_msgSend_count(v41, v26, v27, v28))
    {
      objc_msgSend_spliceRows_atTileRowIndex_(v25, v30, v41, v21);
    }

    v31 = v29;

    if (objc_msgSend_isEmpty(v25, v32, v33, v34))
    {
      objc_msgSend__removeTileForID_(self, v35, Index, v36);
    }

    v38 = v31;
LABEL_16:
    v41 = v38;
    if (objc_msgSend_count(v38, v22, v37, v24))
    {
      --Index;
    }

    else
    {
      Index = objc_msgSend_indexLessThanIndex_(self->_tileIDSet, v39, Index, v40);
    }
  }

  while (Index != 0x7FFFFFFFFFFFFFFFLL && Index >= v20);
}

- (void)_shiftRowsDownAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v8 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, *&count);
  v33 = 0;
  v9 = 0x277D81000uLL;
  do
  {
    v13 = objc_msgSend__tileForID_createIfMissing_(self, v7, v8, 0);
    if (v33 && !v13)
    {
      if (!objc_msgSend_count(v33, v10, v11, v12))
      {
        v13 = 0;
        v32 = v33;
        goto LABEL_22;
      }

      v13 = objc_msgSend__createTileWithID_(self, v10, v8, v12);
    }

    if (v13)
    {
      if (index >= v8 << 8)
      {
        objc_msgSend_insertRowsAtTileRowIndex_numberOfRows_(v13, v10, index - (v8 << 8), v4);
      }

      else
      {
        objc_msgSend_insertRowsAtTileRowIndex_numberOfRows_(v13, v10, 0, v4);
      }

      if (v33 && objc_msgSend_count(v33, v14, v15, v16))
      {
        if (v8 << 8 < index)
        {
          v17 = *(v9 + 336);
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableTileStorage _shiftRowsDownAtIndex:count:]", v16);
          v19 = v4;
          v20 = v9;
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v22);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v18, v23, 665, 0, "Tile insertion got confused!");

          v9 = v20;
          objc_msgSend_logBacktraceThrottled(*(v20 + 336), v25, v26, v27);
          v4 = v19;
        }

        objc_msgSend_spliceRows_atTileRowIndex_(v13, v14, v33, 0);
      }

      v28 = objc_msgSend_yankRowsAtTileRowIndex_(v13, v14, 256, v16);

      if (objc_msgSend_isEmpty(v13, v29, v30, v31))
      {
        objc_msgSend__removeTileForID_(self, v10, v8, v12);
      }

      if (!v28)
      {
LABEL_20:
        v33 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v28 = v33;
      if (!v33)
      {
        goto LABEL_20;
      }
    }

    v32 = v28;
LABEL_22:
    v33 = v32;
    if (objc_msgSend_count(v32, v10, v11, v12))
    {
      ++v8;
      goto LABEL_25;
    }

LABEL_24:
    v8 = objc_msgSend_indexGreaterThanIndex_(self->_tileIDSet, v10, v8, v12);
LABEL_25:
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL);
}

- (void)_insertRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v5 = *&index;
  PopulatedRowIndex = objc_msgSend_lastPopulatedRowIndex(self, a2, *&index, *&count);
  if (count)
  {
    if (PopulatedRowIndex != 0x7FFFFFFF && PopulatedRowIndex >= v5)
    {
      v8 = objc_opt_class();
      v12 = objc_msgSend_tileSize(v8, v9, v10, v11);
      v13 = count / v12;
      v14 = count % v12;
      objc_msgSend__shiftRowsDownAtIndex_count_(self, v15, v5, count % v12);
      if (v13 * v12)
      {
        if ((count - v14) % v12)
        {
          v18 = MEMORY[0x277D81150];
          v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableTileStorage _insertRowsAtIndex:count:]", v17);
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v20);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v51, v21, 713, 0, "Should only have whole-tile moves left in insert!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
        }

        v26 = v14 + v5;
        v27 = v26 >> 8;
        v50 = v14 + v5;
        if (v27 == v5 >> 8)
        {
          v52 = objc_msgSend__yankRowRange_(self, v16, v26, v12 * ((v5 >> 8) + 1) - v26);
          ++v27;
        }

        else
        {
          v52 = 0;
        }

        Index = objc_msgSend_lastIndex(self->_tileIDSet, v16, v26, v17);
        v32 = Index;
        if (Index >= v27 && Index != 0x7FFFFFFFFFFFFFFFLL)
        {
          do
          {
            v36 = objc_msgSend__tileForID_createIfMissing_(self, v29, v32, 0);
            if (!v36)
            {
              v37 = MEMORY[0x277D81150];
              v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableTileStorage _insertRowsAtIndex:count:]", v35);
              v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v40);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 732, 0, "Corrupt tile map during insert!");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
            }

            objc_msgSend__removeTileForID_(self, v34, v32, v35);
            objc_msgSend__setTile_forID_(self, v46, v36, v32 + v13);
            v32 = objc_msgSend_indexLessThanIndex_(self->_tileIDSet, v47, v32, v48);
          }

          while (v32 != 0x7FFFFFFFFFFFFFFFLL && v32 >= v27);
        }

        if (v52 && objc_msgSend_count(v52, v29, v30, v31))
        {
          objc_msgSend__spliceRows_atIndex_(self, v49, v52, v50 + v13 * v12);
        }
      }
    }
  }
}

- (void)_removeRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v5 = *&index;
  PopulatedRowIndex = objc_msgSend_lastPopulatedRowIndex(self, a2, *&index, *&count);
  if (!v4)
  {
    return;
  }

  if (PopulatedRowIndex == 0x7FFFFFFF)
  {
    return;
  }

  if (PopulatedRowIndex < v5)
  {
    return;
  }

  v8 = objc_opt_class();
  v12 = objc_msgSend_tileSize(v8, v9, v10, v11);
  objc_msgSend__clearContentAtIndex_count_(self, v13, v5, v4);
  v17 = objc_msgSend_lastPopulatedRowIndex(self, v14, v15, v16);
  if (v17 == 0x7FFFFFFF || v17 < v5)
  {
    return;
  }

  v20 = (v4 + v5);
  v21 = v5 >> 8;
  v22 = v20 >> 8;
  LODWORD(v23) = v5 & 0xFFFFFF00;
  if ((v5 & 0xFFFFFF00) != v5 && v21 != v22)
  {
    v23 = (v23 + 256);
    v24 = objc_msgSend__yankRowRange_(self, v18, v20, (v23 - v5));
    objc_msgSend__spliceRows_atIndex_(self, v25, v24, v5);
    v21 = v23 >> 8;
    v22 = (v23 + v4) >> 8;

    v5 = v23;
  }

  if (v12 <= v4)
  {
    if (v5 == v23)
    {
      v96 = v5;
      v97 = v4;
      v98 = v12;
      v26 = v21;
      v27 = v22;
      if (v21 == v22)
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Lost track of tiles during delete!", "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 813);
        v84 = MEMORY[0x277D81150];
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v86);
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v88);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v89, v79, v82, 813, 1, "Lost track of tiles during delete!");
      }

      else
      {
        v99 = v22 - v21;
        v28 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, v18, v21, v19);
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = v28;
          v30 = 0x277CCA000uLL;
          do
          {
            v34 = objc_msgSend__tileForID_createIfMissing_(self, v18, v29, 0);
            if (!v34)
            {
              v35 = MEMORY[0x277D81150];
              v36 = objc_msgSend_stringWithUTF8String_(*(v30 + 3240), v31, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v33);
              v37 = v26;
              v38 = v30;
              v41 = objc_msgSend_stringWithUTF8String_(*(v30 + 3240), v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v40);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v36, v41, 822, 0, "Corrupt tile map during delete!");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
              v30 = v38;
              v26 = v37;
            }

            if (v29 >= v27)
            {
              if (v29 - v99 < v26)
              {
                TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Shifting tiles too far during delete!", "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 831);
                v68 = MEMORY[0x277D81150];
                v71 = objc_msgSend_stringWithUTF8String_(*(v30 + 3240), v69, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v70);
                v74 = objc_msgSend_stringWithUTF8String_(*(v30 + 3240), v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v73);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v71, v74, 831, 1, "Shifting tiles too far during delete!");

                TSUCrashBreakpoint();
LABEL_32:
                abort();
              }

              objc_msgSend__removeTileForID_(self, v31, v29, v33);
              objc_msgSend__setTile_forID_(self, v50, v34, v29 - v99);
            }

            else
            {
              if ((objc_msgSend_isEmpty(v34, v31, v32, v33) & 1) == 0)
              {
                TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Tile should be empty during delete!", "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 826);
                v60 = MEMORY[0x277D81150];
                v63 = objc_msgSend_stringWithUTF8String_(*(v30 + 3240), v61, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v62);
                v66 = objc_msgSend_stringWithUTF8String_(*(v30 + 3240), v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v65);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v63, v66, 826, 1, "Tile should be empty during delete!");

                TSUCrashBreakpoint();
                goto LABEL_32;
              }

              objc_msgSend__removeTileForID_(self, v46, v29, v47);
            }

            v29 = objc_msgSend_indexGreaterThanIndex_(self->_tileIDSet, v48, v29, v49);
          }

          while (v29 != 0x7FFFFFFFFFFFFFFFLL);
        }

        v12 = v98;
        v4 = v97 - v98 * v99;
        if (v97 >= v98 * v99)
        {
          v5 = v96;
          goto LABEL_24;
        }

        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d We removed too many rows during delete!", "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 840);
        v90 = MEMORY[0x277D81150];
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v92);
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v94);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v95, v79, v82, 840, 1, "We removed too many rows during delete!");
      }
    }

    else
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Lost track of deletion start point!", "[TSTTableTileStorage _removeRowsAtIndex:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 812);
      v76 = MEMORY[0x277D81150];
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v78);
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v81);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v83, v79, v82, 812, 1, "Lost track of deletion start point!");
    }

    TSUCrashBreakpoint();
    abort();
  }

LABEL_24:
  if (v4 >= v12)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTTableTileStorage _removeRowsAtIndex:count:]", v19);
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 847, 0, "Shift too big during delete!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
  }

  MEMORY[0x2821F9670](self, sel__shiftRowsUpAtIndex_count_, v5, v4);
}

- (id)_yankRowRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v50 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], a2, range.location, range.length);
  objc_msgSend_willModify(self, v6, v7, v8);
  v9 = length + location - 1;
  v10 = location >> 8;
  v49 = v9;
  v11 = v9 >> 8;
  if (v10 <= v11)
  {
    v48 = v11 + 1;
    v12 = location & 0xFFFFFF00;
    v13 = 1 - (location + (location & 0xFFFFFF00));
    v14 = (location & 0xFFFFFF00) - 1;
    do
    {
      if (v12 >= location)
      {
        v15 = location;
      }

      else
      {
        v15 = v12;
      }

      v16 = objc_opt_class();
      v20 = objc_msgSend_tileSize(v16, v17, v18, v19);
      if (location >= v12)
      {
        v22 = location - v12;
      }

      else
      {
        v22 = 0;
      }

      if (v49 >= v20 + v14)
      {
        v23 = v20 + v14;
      }

      else
      {
        v23 = v49;
      }

      v24 = objc_msgSend__tileForID_createIfMissing_(self, v21, v10, 0);
      v28 = v24;
      v29 = v23 + v15 + v13;
      if (v24)
      {
        if (objc_msgSend_isEmpty(v24, v25, v26, v27))
        {
          v33 = objc_msgSend_count(v50, v30, v31, v32);
          objc_msgSend_setCount_(v50, v34, v33 + v29, v35);
        }

        else
        {
          v42 = objc_msgSend_yankRowsAtTileRowIndex_count_(v28, v30, v22, v29);
          objc_msgSend_tsu_addPointersFromPointerArray_(v50, v43, v42, v44);
        }

        if (objc_msgSend_isEmpty(v28, v36, v37, v38))
        {
          objc_msgSend__removeTileForID_(self, v45, v10, v46);
        }
      }

      else
      {
        v39 = objc_msgSend_count(v50, v25, v26, v27);
        objc_msgSend_setCount_(v50, v40, v39 + v29, v41);
      }

      ++v10;
      v12 += 256;
      v13 -= 256;
      v14 += 256;
    }

    while (v48 != v10);
  }

  return v50;
}

- (void)_spliceRows:(id)rows atIndex:(unsigned int)index
{
  rowsCopy = rows;
  v5 = objc_opt_class();
  v9 = objc_msgSend_tileSize(v5, v6, v7, v8);
  v13 = objc_msgSend_count(rowsCopy, v10, v11, v12);
  v17 = v13;
  v18 = v9 - index;
  if (v13 >= v18)
  {
    v19 = v9 - index;
  }

  else
  {
    v19 = v13;
  }

  v20 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v14, v15, v16);
  objc_msgSend_setCount_(v20, v21, v19, v22);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_2211A3EB0;
  v57[3] = &unk_278460600;
  v60 = 0;
  v61 = v19;
  v59 = &v62;
  v23 = v20;
  v58 = v23;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(rowsCopy, v24, v57, v25);
  if (*(v63 + 24) == 1)
  {
    v29 = objc_msgSend__tileForID_createIfMissing_(self, v26, index >> 8, 1);
    objc_msgSend_spliceRows_atTileRowIndex_(v29, v30, v23, index);
    if (objc_msgSend_isEmpty(v29, v31, v32, v33))
    {
      objc_msgSend__removeTileForID_(self, v26, index >> 8, v28);
    }
  }

  else
  {
    v29 = 0;
  }

  if (v17 <= v18)
  {
    v43 = v29;
  }

  else
  {
    v34 = v9;
    v35 = (index >> 8) + 1;
    do
    {
      if (v17 - v19 >= v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = v17 - v19;
      }

      v37 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v26, v27, v28);

      objc_msgSend_setCount_(v37, v38, v36, v39);
      *(v63 + 24) = 0;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_2211A3EF8;
      v52[3] = &unk_278460600;
      v55 = v19;
      v56 = v36;
      v54 = &v62;
      v23 = v37;
      v53 = v23;
      objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(rowsCopy, v40, v52, v41);
      if (*(v63 + 24) == 1)
      {
        v43 = objc_msgSend__tileForID_createIfMissing_(self, v42, v35, 1);

        objc_msgSend_spliceRows_atTileRowIndex_(v43, v44, v23, 0);
        if (objc_msgSend_isEmpty(v43, v45, v46, v47))
        {
          objc_msgSend__removeTileForID_(self, v48, v35, v49);
        }
      }

      else
      {
        v43 = v29;
      }

      v19 += v36;

      ++v35;
      v29 = v43;
    }

    while (v19 < v17);
  }

  _Block_object_dispose(&v62, 8);
}

- (void)enumerateTilesConcurrentlyUsingBlock:(id)block
{
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2211A40A8;
  v24 = sub_2211A40B8;
  v5 = objc_opt_class();
  v25 = objc_msgSend__sharedQueue(v5, v6, v7, v8);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_2211A40C0;
  v17 = &unk_278460670;
  v19 = &v20;
  v9 = blockCopy;
  v18 = v9;
  objc_msgSend__enumerateTiles_(self, v10, &v14, v11);
  objc_msgSend_performSync_(v21[5], v12, &unk_2834A29B0, v13, v14, v15, v16, v17);

  _Block_object_dispose(&v20, 8);
}

- (void)enumerateRowsWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211A426C;
  v8[3] = &unk_2784606C0;
  v9 = blockCopy;
  v5 = blockCopy;
  objc_msgSend__enumerateTiles_(self, v6, v8, v7);
}

- (void)enumerateRowsInRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (length)
  {
    v8 = length + location - 1;
    v9 = location >> 8;
    v10 = v8 >> 8;
    if (v9 <= v10)
    {
      v11 = v10 + 1;
      v12 = location & 0xFFFFFF00;
      while (1)
      {
        v13 = objc_msgSend__tileForID_createIfMissing_(self, v7, v9, 0);
        if (v13)
        {
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = sub_2211A4500;
          v18[3] = &unk_2784606E8;
          v21 = v12;
          v22 = location;
          v23 = v8;
          v19 = blockCopy;
          v20 = &v24;
          objc_msgSend_enumerateRowsAndIndexesWithBlock_(v13, v14, v18, v15);
          v16 = *(v25 + 24);

          _Block_object_dispose(&v24, 8);
          if (v16)
          {
            break;
          }
        }

        ++v9;
        v12 += 256;
        if (v11 == v9)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
}

- (void)enumerateRowByRowInRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (length)
  {
    v9 = length - 1 + location;
    if (!__CFADD__(length - 1, location))
    {
      do
      {
        while (1)
        {
          v10 = objc_msgSend__tileForID_createIfMissing_(self, v7, location >> 8, 0);
          if (v10)
          {
            v12 = objc_msgSend_rowInfoForTileRowIndex_(v10, v7, location, v11);

            if (v12)
            {
              break;
            }
          }

          location = (location + 1);
          if (location > v9)
          {
            goto LABEL_9;
          }
        }

        v13 = 0;
        blockCopy[2](blockCopy, v12, location, &v13);
        location = (location + 1);
      }

      while (location <= v9 && (v13 & 1) == 0);
    }
  }

LABEL_9:
}

- (id)rowInfoAtIndex:(unsigned int)index
{
  v6 = index >> 8;
  if (objc_msgSend_containsIndex_(self->_tileIDSet, a2, v6, v3))
  {
    if (index >= 0x100000)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Bad tile group index!", "[TSTTableTileStorage rowInfoAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", 1106);
      v28 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTTableTileStorage rowInfoAtIndex:]", v30);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v31, v34, 1106, 1, "Bad tile group index!");

      TSUCrashBreakpoint();
      abort();
    }

    v9 = v6 >> 8;
    tileGroups = self->_tileGroups;
    v11 = tileGroups[v6 >> 8];
    if (!v11)
    {
      v12 = objc_msgSend_groupWithStartingTileID_(TSTTableTileGroup, v7, v6 & 0xF00, v8);
      v13 = tileGroups[v9];
      tileGroups[v9] = v12;

      v11 = tileGroups[v9];
    }

    v14 = objc_msgSend_objectAtIndexedSubscript_(v11, v7, v6, v8);
    if (v14)
    {
      v17 = objc_msgSend_rowInfoForTileRowIndex_(v14, v15, index, v16);
      goto LABEL_9;
    }

    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableTileStorage rowInfoAtIndex:]", v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1121, 0, "invalid nil value for '%{public}s'", "tile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (id)tileForWritingAtRowIndex:(unsigned int)index outTileRange:(_NSRange *)range
{
  v6 = objc_msgSend__tileForID_createIfMissing_(self, a2, index >> 8, 1);
  if (range)
  {
    v7 = objc_opt_class();
    v11 = objc_msgSend_tileSize(v7, v8, v9, v10);
    range->location = index & 0xFFFFFF00;
    range->length = v11;
  }

  return v6;
}

- (id)tileStartingAtOrBeforeRowIndex:(unsigned int)index outTileRange:(_NSRange *)range
{
  v6 = objc_msgSend_indexLessThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, range);
  v8 = objc_msgSend__tileForID_createIfMissing_(self, v7, v6, 0);
  if (range)
  {
    v9 = objc_opt_class();
    v13 = objc_msgSend_tileSize(v9, v10, v11, v12);
    range->location = (v6 & 0xFFFFFF) << 8;
    range->length = v13;
  }

  return v8;
}

- (id)tileStartingAtOrAfterRowIndex:(unsigned int)index outTileRange:(_NSRange *)range
{
  v6 = objc_msgSend_indexGreaterThanOrEqualToIndex_(self->_tileIDSet, a2, index >> 8, range);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v6;
    v8 = objc_msgSend__tileForID_createIfMissing_(self, v7, v6, 0);

    v9 = (*&v10 & 0xFFFFFFLL) << 8;
    if (!range)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = 0x7FFFFFFFLL;
  if (range)
  {
LABEL_5:
    v11 = objc_opt_class();
    v15 = objc_msgSend_tileSize(v11, v12, v13, v14);
    range->location = v9;
    range->length = v15;
  }

LABEL_6:

  return v8;
}

- (void)insertRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v5 = *&index;
  objc_msgSend_willModify(self, a2, *&index, *&count);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D34();
  }

  objc_msgSend__insertRowsAtIndex_count_(self, v7, v5, v4);
  if (objc_msgSend_firstIndex(self->_tileIDSet, v8, v9, v10))
  {
    v13 = objc_msgSend__createTileWithID_(self, v11, 0, v12);
  }
}

- (void)removeRowsAtIndex:(unsigned int)index count:(unsigned int)count
{
  v4 = *&count;
  v5 = *&index;
  objc_msgSend_willModify(self, a2, *&index, *&count);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D48();
  }

  objc_msgSend__removeRowsAtIndex_count_(self, v7, v5, v4);
  if (objc_msgSend_firstIndex(self->_tileIDSet, v8, v9, v10))
  {
    v13 = objc_msgSend__createTileWithID_(self, v11, 0, v12);
  }
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  objc_msgSend_willModify(self, a2, *&index, *&atIndex);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D5C();
  }

  v8 = objc_msgSend__tileForID_createIfMissing_(self, v7, index >> 8, 0);
  v10 = v8;
  if (index >> 8 != atIndex >> 8)
  {
    v30 = atIndex >> 8;
    v11 = objc_msgSend__tileForID_createIfMissing_(self, v9, v30, 0);
    v14 = v11;
    if (v10)
    {
      v15 = objc_msgSend_yankRowInfoAtTileRowIndex_(v10, v12, index, v13);
      v17 = v15;
      if (!v14)
      {
        v18 = 0;
        if (!v15)
        {
          v19 = 0;
          goto LABEL_19;
        }

        v14 = objc_msgSend__createTileWithID_(self, v12, v30, v13);
        goto LABEL_12;
      }
    }

    else
    {
      v17 = 0;
      v19 = 0;
      v18 = 0;
      v20 = 0;
      if (!v11)
      {
LABEL_25:

        v10 = v20;
        goto LABEL_26;
      }
    }

    v21 = objc_msgSend_yankRowInfoAtTileRowIndex_(v14, v12, atIndex, v13);
    v18 = v21;
    if (!v17)
    {
      v19 = v14;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_15:
      if (!v10)
      {
        v10 = objc_msgSend__createTileWithID_(self, v12, index >> 8, v13);
      }

      objc_msgSend_spliceRowInfo_atTileRowIndex_overwrite_(v10, v12, v18, index, 0);
LABEL_18:
      if (!v10)
      {
LABEL_21:
        if (v19 && objc_msgSend_isEmpty(v19, v12, v16, v13))
        {
          objc_msgSend__removeTileForID_(self, v22, v30, v23);
          v20 = v10;
        }

        else
        {
          v20 = v10;
        }

        goto LABEL_25;
      }

LABEL_19:
      if (objc_msgSend_isEmpty(v10, v12, v16, v13))
      {
        objc_msgSend__removeTileForID_(self, v12, index >> 8, v13);
      }

      goto LABEL_21;
    }

LABEL_12:
    v19 = v14;
    objc_msgSend_spliceRowInfo_atTileRowIndex_overwrite_(v14, v12, v17, atIndex, 0);
    if (!v18)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v8)
  {
    objc_msgSend_swapRowAtTileRowIndex_withRowAtTileRowIndex_(v8, v9, index, atIndex);
  }

LABEL_26:

  if (objc_msgSend_firstIndex(self->_tileIDSet, v24, v25, v26))
  {
    v29 = objc_msgSend__createTileWithID_(self, v27, 0, v28);
  }
}

- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  LODWORD(v4) = index;
  length = range.length;
  location = range.location;
  PopulatedRowIndex = objc_msgSend_lastPopulatedRowIndex(self, a2, range.location, range.length);
  if (TSTTilesCat_init_token != -1)
  {
    sub_2216F6D70();
  }

  if (location < v4)
  {
    if (location + length > v4)
    {
      v12 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableTileStorage moveRowIndexRange:toIndex:]", v10);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileStorage.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v38, v15, 1288, 0, "Move row ranges cannot overlap!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    LODWORD(v4) = v4 - length;
  }

  v20 = (v4 - location);
  if (v4 != location && length && PopulatedRowIndex != 0x7FFFFFFF && (PopulatedRowIndex >= location || v4 <= PopulatedRowIndex))
  {
    objc_msgSend_willModify(self, v8, v9, v10);
    v22 = v4;
    v23 = (location - v4);
    v24 = v4 > location;
    if (v4 > location)
    {
      v25 = location;
    }

    else
    {
      v25 = v4;
    }

    if (v4 > location)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + length);
    }

    if (v24)
    {
      v26 = location;
    }

    else
    {
      v26 = v22;
    }

    if (v24)
    {
      v27 = length;
    }

    else
    {
      v27 = v23;
    }

    if (v24)
    {
      location = (location + length);
    }

    if (v24)
    {
      length = v20;
    }

    v39 = objc_msgSend__yankRowRange_(self, v21, v26, v27);
    v29 = objc_msgSend__yankRowRange_(self, v28, location, length);
    objc_msgSend__spliceRows_atIndex_(self, v30, v29, v25);
    objc_msgSend__spliceRows_atIndex_(self, v31, v39, v4);
    if (objc_msgSend_firstIndex(self->_tileIDSet, v32, v33, v34))
    {
      v37 = objc_msgSend__createTileWithID_(self, v35, 0, v36);
    }
  }
}

- (id)columnCellCountsOfRowsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2211A40A8;
  v14 = sub_2211A40B8;
  v15 = objc_msgSend_dictionary(MEMORY[0x277D81208], a2, range.location, range.length);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211A520C;
  v9[3] = &unk_27845E8E0;
  v9[4] = &v10;
  objc_msgSend_enumerateRowsInRange_withBlock_(self, v6, location, length, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)insertColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  objc_msgSend_willModify(self, a2, index, *&count);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211A5350;
  v9[3] = &unk_278460708;
  indexCopy = index;
  countCopy = count;
  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v7, v9, v8);
}

- (id)removeColumnsAtIndex:(unsigned __int16)index count:(unsigned int)count
{
  objc_msgSend_willModify(self, a2, index, *&count);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3812000000;
  v17[3] = sub_2211A54AC;
  v17[4] = nullsub_17;
  v17[5] = &unk_22188E88F;
  v18 = 0;
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211A54BC;
  v12[3] = &unk_278460758;
  indexCopy = index;
  countCopy = count;
  v14 = v17;
  v8 = v7;
  v13 = v8;
  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v9, v12, v10);

  _Block_object_dispose(v17, 8);

  return v8;
}

- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211A5668;
  v10[3] = &unk_278460778;
  v12 = location;
  v11 = length;
  indexCopy = index;
  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v8, v10, v9);
}

- (NSIndexSet)populatedTiles
{
  v3 = objc_alloc(MEMORY[0x277CCAA78]);
  v6 = objc_msgSend_initWithIndexSet_(v3, v4, self->_tileIDSet, v5);

  return v6;
}

- (NSIndexSet)populatedRows
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2211A40A8;
  v14 = sub_2211A40B8;
  v15 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211A57EC;
  v9[3] = &unk_27845E8E0;
  v9[4] = &v10;
  objc_msgSend_enumerateRowsWithBlock_(self, v5, v9, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (unsigned)lastPopulatedRowIndex
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFF;
  Index = objc_msgSend_lastIndex(self->_tileIDSet, a2, v2, v3);
  v7 = objc_msgSend__tileForID_createIfMissing_(self, v6, Index, 0);
  if (objc_msgSend_isEmpty(v7, v8, v9, v10))
  {
    tileIDSet = self->_tileIDSet;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2211A5A3C;
    v17[3] = &unk_27845F0D8;
    v17[4] = self;
    v17[5] = &v18;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(tileIDSet, v11, 2, v17);
    v15 = *(v19 + 6);
  }

  else
  {
    v15 = objc_msgSend_maxRow(v7, v11, v12, v13) + (Index << 8);
    *(v19 + 6) = v15;
  }

  _Block_object_dispose(&v18, 8);
  return v15;
}

- (void)pruneTileForRowIndex:(unsigned int)index
{
  if (index >= 0x100)
  {
    v4 = index >> 8;
    v10 = objc_msgSend__tileForID_createIfMissing_(self, a2, v4, 0);
    if (v10 && objc_msgSend_isEmpty(v10, v5, v6, v7))
    {
      objc_msgSend__removeTileForID_(self, v8, v4, v9);
    }
  }
}

- (void)pruneTilesForRows:(id)rows
{
  rowsCopy = rows;
  if (objc_msgSend_count(rowsCopy, v4, v5, v6))
  {
    v13 = objc_msgSend_firstIndex(rowsCopy, v7, v8, v9) >> 8;
    v15 = objc_msgSend_lastIndex(rowsCopy, v10, v11, v12) >> 8;
    if (v13 <= v15)
    {
      do
      {
        if (v13)
        {
          v16 = objc_msgSend__tileForID_createIfMissing_(self, v14, v13, 0);
          v20 = v16;
          if (v16 && objc_msgSend_isEmpty(v16, v17, v18, v19))
          {
            objc_msgSend__removeTileForID_(self, v21, v13, v22);
          }
        }
      }

      while (v13++ < v15);
    }
  }
}

- (BOOL)needToUpgradeCellStorage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self->_upgradeRepairedTiles)
  {
    v3 = 1;
    v9 = 1;
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_2211A5E70;
    v5[3] = &unk_278460568;
    v5[4] = &v6;
    objc_msgSend__enumerateTiles_(self, a2, v5, v2);
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (BOOL)auditRowInfoCellCountsReturningResult:(id *)result
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2211A40A8;
  v15 = sub_2211A40B8;
  v16 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"RowInfo Cell Count Audit\n", v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211A6024;
  v10[3] = &unk_2784607E8;
  v10[4] = &v17;
  v10[5] = &v11;
  objc_msgSend__enumerateTiles_(self, v6, v10, v7);
  if (result)
  {
    *result = v12[5];
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (BOOL)auditTilesForRowOverlapAndExtensionPastTableBounds:(TSUCellCoord)bounds withDataStore:(id)store result:(id *)result
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_2211A40A8;
  v23[4] = sub_2211A40B8;
  v24 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&bounds, store);
  v10 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v8, @"Tile Overlap Audit\n", v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2211A645C;
  v17[3] = &unk_278460810;
  v19 = v23;
  v11 = v10;
  v18 = v11;
  v20 = &v29;
  v21 = &v25;
  boundsCopy = bounds;
  objc_msgSend__enumerateTiles_(self, v12, v17, v13);
  if (result)
  {
    v14 = v11;
    *result = v11;
  }

  if (*(v30 + 24) == 1)
  {
    v15 = *(v26 + 24);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v15 & 1;
}

- (void)reset
{
  objc_msgSend_removeAllIndexes(self->_tileIDSet, a2, v2, v3);
  v5 = 0;
  tileGroups = self->_tileGroups;
  do
  {
    v7 = tileGroups[v5];
    tileGroups[v5] = 0;

    ++v5;
  }

  while (v5 != 16);
  self->_upgradeRepairedTiles = 0;
}

- (void)widenTilesForUpgrade
{
  objc_msgSend_willModifyForUpgrade(self, a2, v2, v3);
  self->_shouldUseWideRows = 1;

  objc_msgSend_enumerateTilesConcurrentlyUsingBlock_(self, v5, &unk_2834A2A90, v6);
}

- (multimap<TSUCellCoord,)makeStorageMap
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4812000000;
  v10 = sub_2211A6800;
  v11 = sub_2211A683C;
  v12 = &unk_22188E88F;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2211A6848;
  v6[3] = &unk_278460568;
  v6[4] = &v7;
  objc_msgSend__enumerateTiles_(self, a3, v6, v3);
  sub_2211A8B04(retstr, (v8 + 6));
  _Block_object_dispose(&v7, 8);
  sub_2210BC9F8(&v13, v14[0]);
  return result;
}

- (void)prepareToApplyConcurrentCellMap:(id)map
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2211A6A08;
  v4[3] = &unk_2784608A8;
  v4[4] = self;
  objc_msgSend_gatherRowState_(map, a2, v4, v3);
}

@end