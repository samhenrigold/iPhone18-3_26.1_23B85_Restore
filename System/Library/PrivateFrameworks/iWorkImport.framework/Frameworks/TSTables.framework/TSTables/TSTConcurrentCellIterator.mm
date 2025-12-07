@interface TSTConcurrentCellIterator
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region forcingRegion:(id)forcingRegion flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableInfo:(id)info tableModel:(id)model region:(id)region forcingRegion:(id)forcingRegion clampingRect:(TSUCellRect)rect flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTConcurrentCellIterator)initWithTableModel:(id)model baseRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSUCellRect)clampingRect;
- (void)enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock;
- (void)enumerateModelConcurrentlyUsingChunkBeginBlock:(id)block concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock;
- (void)p_enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock;
@end

@implementation TSTConcurrentCellIterator

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  v12 = objc_msgSend_range(infoCopy, v9, v10, v11);
  v14 = objc_msgSend_regionFromRange_(TSTCellRegion, v13, v12, v13);
  v18 = objc_msgSend_range(infoCopy, v15, v16, v17);
  v20 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v19, infoCopy, 0, v14, 0, v18, v19, flags, searchFlags);

  return v20;
}

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  regionCopy = region;
  v15 = objc_msgSend_range(infoCopy, v12, v13, v14);
  v17 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v16, infoCopy, 0, regionCopy, 0, v15, v16, flags, searchFlags);

  return v17;
}

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info region:(id)region forcingRegion:(id)forcingRegion flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  regionCopy = region;
  forcingRegionCopy = forcingRegion;
  v18 = objc_msgSend_range(infoCopy, v15, v16, v17);
  v20 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v19, infoCopy, 0, regionCopy, forcingRegionCopy, v18, v19, flags, searchFlags);

  return v20;
}

- (TSTConcurrentCellIterator)initWithTableModel:(id)model baseRegion:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  modelCopy = model;
  regionCopy = region;
  v15 = objc_msgSend_range(modelCopy, v12, v13, v14);
  v17 = objc_msgSend_initWithTableInfo_tableModel_region_forcingRegion_clampingRect_flags_searchFlags_(self, v16, 0, modelCopy, regionCopy, 0, v15, v16, flags, searchFlags);

  return v17;
}

- (TSTConcurrentCellIterator)initWithTableInfo:(id)info tableModel:(id)model region:(id)region forcingRegion:(id)forcingRegion clampingRect:(TSUCellRect)rect flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = rect.size;
  origin = rect.origin;
  infoCopy = info;
  modelCopy = model;
  regionCopy = region;
  forcingRegionCopy = forcingRegion;
  v60.receiver = self;
  v60.super_class = TSTConcurrentCellIterator;
  v20 = [(TSTConcurrentCellIterator *)&v60 init];
  if (v20)
  {
    if ((infoCopy == 0) != (modelCopy != 0))
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTConcurrentCellIterator initWithTableInfo:tableModel:region:forcingRegion:clampingRect:flags:searchFlags:]", v19);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellIterator.mm", v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 126, 0, "XOR expectation on getting a tableInfo or tableModel.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    }

    objc_storeStrong(v20 + 2, info);
    v33 = *(v20 + 2);
    if (v33)
    {
      v34 = objc_msgSend_baseTableModel(v33, v30, v31, v32);
    }

    else
    {
      v34 = modelCopy;
    }

    v35 = *(v20 + 3);
    *(v20 + 3) = v34;

    *(v20 + 9) = origin;
    *(v20 + 10) = size;
    v37 = objc_msgSend_regionByIntersectingRange_(regionCopy, v36, origin, size);
    v38 = *(v20 + 4);
    *(v20 + 4) = v37;

    v40 = objc_msgSend_regionByIntersectingRange_(forcingRegionCopy, v39, *(v20 + 9), *(v20 + 10));
    v41 = *(v20 + 5);
    *(v20 + 5) = v40;

    if (!objc_msgSend_cellCount(*(v20 + 5), v42, v43, v44))
    {
      v47 = *(v20 + 5);
      *(v20 + 5) = 0;
    }

    v48 = *(v20 + 5);
    if (v48)
    {
      v49 = objc_msgSend_regionBySubtractingRegion_(*(v20 + 4), v45, v48, v46);
      v50 = *(v20 + 4);
      *(v20 + 4) = v49;
    }

    flagsCopy = flags;
    if ((flags & 0x40) != 0)
    {
      v52 = objc_msgSend_mergeOwner(*(v20 + 3), v45, v48, v46);
      hasMergeRanges = objc_msgSend_hasMergeRanges(v52, v53, v54, v55);

      if (!hasMergeRanges)
      {
        flagsCopy = flags & 0xFFFFFFFFFFFFFFBFLL;
      }
    }

    *(v20 + 7) = flagsCopy;
    *(v20 + 8) = searchFlags;
    *(v20 + 1) = 0;
  }

  return v20;
}

- (void)enumerateModelConcurrentlyUsingChunkBeginBlock:(id)block concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock
{
  blockCopy = block;
  concurrentBlockCopy = concurrentBlock;
  neededBlockCopy = neededBlock;
  passConcurrentBlockCopy = passConcurrentBlock;
  finalBlockCopy = finalBlock;
  if (self->_tableInfo)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellIterator enumerateModelConcurrentlyUsingChunkBeginBlock:concurrentBlock:furtherPassNeededBlock:furtherPassConcurrentBlock:finalBlock:]", v17);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellIterator.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 198, 0, "You must initialize the iterator with a TSTTableModel to use this enumeration method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2213C10A0;
  v30[3] = &unk_278464250;
  v28 = blockCopy;
  v31 = v28;
  objc_msgSend_p_enumerateConcurrentlyUsingChunkBeginBlock_perDispatchThreadBlock_concurrentBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_finalBlock_(self, v29, v30, 0, concurrentBlockCopy, neededBlockCopy, passConcurrentBlockCopy, finalBlockCopy);
}

- (void)enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock
{
  blockCopy = block;
  threadBlockCopy = threadBlock;
  concurrentBlockCopy = concurrentBlock;
  neededBlockCopy = neededBlock;
  passConcurrentBlockCopy = passConcurrentBlock;
  finalBlockCopy = finalBlock;
  if (!self->_tableInfo)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTConcurrentCellIterator enumerateConcurrentlyUsingChunkBeginBlock:perDispatchThreadBlock:concurrentBlock:furtherPassNeededBlock:furtherPassConcurrentBlock:finalBlock:]", v20);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellIterator.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 220, 0, "You may not initialize this iterator with a TSTTableModel to use this enumeration method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2213C12BC;
  v33[3] = &unk_278464250;
  v31 = blockCopy;
  v34 = v31;
  objc_msgSend_p_enumerateConcurrentlyUsingChunkBeginBlock_perDispatchThreadBlock_concurrentBlock_furtherPassNeededBlock_furtherPassConcurrentBlock_finalBlock_(self, v32, v33, threadBlockCopy, concurrentBlockCopy, neededBlockCopy, passConcurrentBlockCopy, finalBlockCopy);
}

- (void)p_enumerateConcurrentlyUsingChunkBeginBlock:(id)block perDispatchThreadBlock:(id)threadBlock concurrentBlock:(id)concurrentBlock furtherPassNeededBlock:(id)neededBlock furtherPassConcurrentBlock:(id)passConcurrentBlock finalBlock:(id)finalBlock
{
  blockCopy = block;
  threadBlockCopy = threadBlock;
  concurrentBlockCopy = concurrentBlock;
  neededBlockCopy = neededBlock;
  passConcurrentBlockCopy = passConcurrentBlock;
  finalBlockCopy = finalBlock;
  v71 = 0;
  v72 = 0uLL;
  searchFlags = self->_searchFlags;
  forcingRegion = self->_forcingRegion;
  if (forcingRegion)
  {
    objc_msgSend_rowBasedSubRangesOfCellCount_(forcingRegion, v15, self->_cellsPerSubRegion, v17);
    searchFlags = searchFlags & 0xFFFFFFFFDC1007FFLL | 0x20000000;
    v20 = v69;
    v55 = v70;
  }

  else
  {
    v20 = 0;
    v55 = 0;
  }

  region = self->_region;
  v56 = v20;
  if (region)
  {
    objc_msgSend_rowBasedSubRangesOfCellCount_(region, v15, self->_cellsPerSubRegion, v17);
  }

  else
  {
    v69 = 0;
    v70 = 0uLL;
  }

  v48 = searchFlags;
  v22 = v69;
  tableInfo = self->_tableInfo;
  v71 = v69;
  v72 = v70;
  if (tableInfo)
  {
    objc_msgSend_loadAllLazyReferences(tableInfo, v15, v16, v17);
  }

  else
  {
    objc_msgSend_loadAllLazyReferences(self->_tableModel, v15, v16, v17);
  }

  v27 = (v70 - v69) >> 4;
  v49 = v55 - v20;
  v28 = v27 + ((v55 - v20) >> 4);
  if (blockCopy)
  {
    v29 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v24, v25, v26);
    arrayOfChunkRocks = self->_arrayOfChunkRocks;
    self->_arrayOfChunkRocks = v29;

    objc_msgSend_setCount_(self->_arrayOfChunkRocks, v31, v28, v32);
    if (v28)
    {
      v33 = 0;
      v34 = &v56[-16 * v27];
      do
      {
        if (v33 >= v27)
        {
          v35 = v34;
        }

        else
        {
          v35 = v22;
        }

        v37 = (*(blockCopy + 2))(blockCopy, *v35, *(v35 + 1));
        if (v37)
        {
          objc_msgSend_replacePointerAtIndex_withPointer_(self->_arrayOfChunkRocks, v36, v33, v37);
        }

        ++v33;
        v34 += 16;
        v22 += 16;
      }

      while (v28 != v33);
    }
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_2213C17D4;
  v67[3] = &unk_2784642A0;
  v67[4] = self;
  v38 = concurrentBlockCopy;
  v68 = v38;
  v39 = MEMORY[0x223DA1C10](v67);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_2213C1C0C;
  block[3] = &unk_2834A7138;
  block[4] = self;
  v62 = &v71;
  v40 = threadBlockCopy;
  v60 = v40;
  v41 = v39;
  v61 = v41;
  __p = 0;
  v64 = 0;
  v65 = 0;
  sub_22116C9DC(&__p, v56, v55, v49 >> 4);
  v66 = v48;
  dispatch_apply(v28, 0, block);
  if (neededBlockCopy)
  {
    if (passConcurrentBlockCopy)
    {
      v45 = objc_msgSend_allObjects(self->_arrayOfChunkRocks, v42, v43, v44);
      v46 = neededBlockCopy[2](neededBlockCopy, v45);

      if (v46)
      {
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = sub_2213C1F24;
        v57[3] = &unk_27845FD10;
        v57[4] = self;
        v58 = passConcurrentBlockCopy;
        dispatch_apply(v28, 0, v57);
      }
    }
  }

  if (finalBlockCopy)
  {
    v47 = objc_msgSend_allObjects(self->_arrayOfChunkRocks, v42, v43, v44);
    finalBlockCopy[2](finalBlockCopy, v47);
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    *&v72 = v71;
    operator delete(v71);
  }

  if (v56)
  {
    operator delete(v56);
  }
}

- (TSUCellRect)clampingRect
{
  size = self->_clampingRect.size;
  origin = self->_clampingRect.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

@end