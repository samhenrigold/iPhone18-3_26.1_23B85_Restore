@interface TSTHeaderNameMgr
- (BOOL)p_updateWithWordFragments:(const void *)fragments atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs;
- (BOOL)referenceNameIsUnique:(id)unique forReference:(const void *)reference contextTable:(const TSKUIDStruct *)table;
- (BOOL)updateTrackedHeaders:(const TSKUIDStruct *)headers checkForEmptyHeaders:(BOOL)emptyHeaders;
- (BOOL)updateWithIndexingChunks:(id)chunks;
- (TSCECalculationEngine)calcEngine;
- (TSCECellRefSet)allHeaderCellRefsLimitedToTable:(SEL)table;
- (TSCECellRefSet)headerCellsMatching:(SEL)matching limitToTable:(id)table includePrefixes:(const TSKUIDStruct *)prefixes;
- (TSCECellRefSet)nameFragmentPrecedentsForReferenceString:(SEL)string;
- (TSCERangeRef)baseHeaderColumnsForCell:(SEL)cell;
- (TSCERangeRef)baseHeaderRowsForCell:(SEL)cell;
- (TSCERangeRef)spanningRangeForHeaderCell:(SEL)cell;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)NRM_formulaOwnerUID;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)ownerUID;
- (TSTHeaderNameMgr)initWithContext:(id)context;
- (TSTHeaderNameMgr)initWithContext:(id)context calcEngine:(id)engine;
- (TSTHeaderPerTable)perTableEntryForTable:(const TSKUIDStruct *)table createIfMissing:(BOOL)missing;
- (TSUCellCoord)getNextPrecedentCoord:(BOOL)coord;
- (TSUCellCoord)reservePrecedent:(const TSUCellCoord *)precedent forNameFragment:(id)fragment;
- (TSUCellCoord)reservedPrecedentForNameFragment:(id)fragment;
- (id).cxx_construct;
- (id)anyRefForRangeForHeaderCell:(const TSCECellRef *)cell usePreserveFlags:(BOOL)flags;
- (id)findTileForString:(id)string findClosest:(BOOL)closest;
- (id)findTileForString:(id)string findClosest:(BOOL)closest foundAtOffset:(unint64_t *)offset;
- (id)stringInHeaderCell:(const TSCECellRef *)cell;
- (id)subsetForReferenceName:(id)name limitToTable:(const TSKUIDStruct *)table includePrefixes:(BOOL)prefixes;
- (id)tileForEntry:(void *)entry;
- (int)registerWithCalcEngine:(id)engine;
- (vector<NSString)wordFragmentsFromString:(TSTHeaderNameMgr *)self savePreserveFlags:(SEL)flags;
- (void)addChangedTile:(id)tile;
- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)createFragmentEntryForString:(id)string toDirtyCellRefs:(void *)refs createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)coord;
- (void)dealloc;
- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table;
- (void)fragmentEntryForNameFragmentPrecedent:(const TSUCellCoord *)precedent;
- (void)fragmentEntryForString:(id)string;
- (void)handleFullTile:(id)tile toDirtyCellRefs:(void *)refs;
- (void)integrateReservedPrecedents;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_processWorkForTable:(const TSKUIDStruct *)table;
- (void)p_updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs;
- (void)p_willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs;
- (void)saveToArchiver:(id)archiver;
- (void)setCalcEngine:(id)engine;
- (void)setup;
- (void)unpackEntryAfterUnarchive:(void *)unarchive;
- (void)updateTableUIDFrom:(const TSKUIDStruct *)from toTableUID:(const TSKUIDStruct *)d;
- (void)updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d;
- (void)updateTrackedHeadersForDocumentLocaleChange:(const TSKUIDStruct *)change;
- (void)usedPrecedentCoord:(const TSUCellCoord *)coord;
- (void)waitForQueueToDrain;
- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d;
- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willClose;
- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSTHeaderNameMgr

- (TSTHeaderNameMgr)initWithContext:(id)context calcEngine:(id)engine
{
  contextCopy = context;
  engineCopy = engine;
  v10 = objc_msgSend_initWithContext_(self, v8, contextCopy, v9);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setCalcEngine_(v10, v11, engineCopy, v12);
  }

  return v13;
}

- (TSTHeaderNameMgr)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TSTHeaderNameMgr;
  v5 = [(TSTHeaderNameMgr *)&v11 initWithContext:contextCopy];
  v9 = v5;
  if (v5)
  {
    objc_msgSend_setup(v5, v6, v7, v8);
  }

  return v9;
}

- (void)setup
{
  self->_ownerUID = xmmword_2217E1BD0;
  self->_nextPrecedentCoordLock._os_unfair_lock_opaque = 0;
  self->_reservedFragmentPrecedentsLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  pthread_rwlock_init(&self->_headerNameMgrReadWriteLock, 0);
  self->_allHeaderPerTablesPrecedent = 0;
  self->_needsTileSplittingPrecedent = 1;
  objc_msgSend_usedPrecedentCoord_(self, v3, &self->_needsTileSplittingPrecedent, v4);
  objc_msgSend_usedPrecedentCoord_(self, v5, &self->_allHeaderPerTablesPrecedent, v6);
  v7 = [TSCENameTrie alloc];
  v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v8, v9, v10);
  v14 = objc_msgSend_initWithLocale_(v7, v12, v11, v13);
  namePrefixIndex = self->_namePrefixIndex;
  self->_namePrefixIndex = v14;

  v16 = objc_opt_new();
  tilesToConsiderSplitting = self->_tilesToConsiderSplitting;
  self->_tilesToConsiderSplitting = v16;

  v21 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v18, v19, v20);
  whitespaceToBreakAt = self->_whitespaceToBreakAt;
  self->_whitespaceToBreakAt = v21;
}

- (void)dealloc
{
  objc_msgSend_waitForQueueToDrain(self, a2, v2, v3);
  begin = self->_nameFragmentTiles.__begin_;
  for (i = self->_nameFragmentTiles.var0; i != begin; --i)
  {
    v7 = *(i - 1);
  }

  self->_nameFragmentTiles.var0 = begin;
  for (j = self->_perTableInfo.__table_.__first_node_.__next_; j; j = *j)
  {
    v9 = j[4];
    if (v9)
    {

      MEMORY[0x223DA1450](v9, 0x1080C405E821AB0);
    }
  }

  sub_2210BE918(&self->_perTableInfo.__table_.__bucket_list_.__ptr_);
  pthread_rwlock_destroy(&self->_headerNameMgrReadWriteLock);
  v10.receiver = self;
  v10.super_class = TSTHeaderNameMgr;
  [(TSTHeaderNameMgr *)&v10 dealloc];
}

- (void)waitForQueueToDrain
{
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
}

- (void)addChangedTile:(id)tile
{
  tileCopy = tile;
  if (tileCopy)
  {
    isRecalculationRunning = objc_msgSend_isRecalculationRunning(self->_calcEngine, v4, v5, v6);
    objc_msgSend_willModifyWithOptions_(tileCopy, v8, isRecalculationRunning, v9);
  }
}

- (void)willClose
{
  if (self->_calcEngine)
  {
    self->_isClosing = 1;
    objc_msgSend_waitForQueueToDrain(self, a2, v2, v3);
    objc_storeWeak(&self->_weakCalcEngine, self->_calcEngine);
    calcEngine = self->_calcEngine;
    self->_calcEngine = 0;
  }
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = self->_calcEngine;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakCalcEngine);
  }

  return WeakRetained;
}

- (void)setCalcEngine:(id)engine
{
  engineCopy = engine;
  if (!self->_calcEngine)
  {
    objc_storeStrong(&self->_calcEngine, engine);
    namePrefixIndex = self->_namePrefixIndex;
    v10 = objc_msgSend_documentLocale(self->_calcEngine, v7, v8, v9);
    objc_msgSend_setLocale_(namePrefixIndex, v11, v10, v12);

    objc_msgSend_registerWithCalcEngine_(self, v13, self->_calcEngine, v14);
    v18 = objc_msgSend_emptyReferenceSetWrapper(self->_calcEngine, v15, v16, v17);
    *&v32.var0 = self->_allHeaderPerTablesPrecedent;
    v32.var6 = self->_ownerUID;
    objc_msgSend_insertCellRef_(v18, v19, &v32, v20);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v32, 0, 1);
    v32.var2 = 1;
    calcEngine = self->_calcEngine;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v31, &v32);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(calcEngine, v22, &self->_needsTileSplittingPrecedent, &self->_ownerUID, v18, &v31);

    if (objc_msgSend_count(self->_tilesToConsiderSplitting, v23, v24, v25))
    {
      v28 = self->_calcEngine;
      needsTileSplittingPrecedent = self->_needsTileSplittingPrecedent;
      ownerUID = self->_ownerUID;
      objc_msgSend_markCellRefAsDirty_(v28, v26, &needsTileSplittingPrecedent, v27);
    }
  }
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)formulaOwnerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)NRM_formulaOwnerUID
{
  p_nrm_ownerUID = &self->_nrm_ownerUID;
  lower = self->_nrm_ownerUID._lower;
  upper = p_nrm_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSUCellCoord)getNextPrecedentCoord:(BOOL)coord
{
  if (coord)
  {
    objc_msgSend_willModify(self, a2, coord, v3);
  }

  os_unfair_lock_lock(&self->_nextPrecedentCoordLock);
  nextPrecedentCoord = self->_nextPrecedentCoord;
  TSUCellCoord::addOffset(&self->_nextPrecedentCoord);
  if (self->_nextPrecedentCoord.column >= 0x3DEu)
  {
    self->_nextPrecedentCoord = (self->_nextPrecedentCoord.row + 1);
  }

  os_unfair_lock_unlock(&self->_nextPrecedentCoordLock);
  return nextPrecedentCoord;
}

- (void)usedPrecedentCoord:(const TSUCellCoord *)coord
{
  v5 = *coord;
  TSUCellCoord::addOffset(&v5);
  row = self->_nextPrecedentCoord.row;
  if (row < v5.row || row == v5.row && self->_nextPrecedentCoord.column < v5.column)
  {
    self->_nextPrecedentCoord = v5;
  }
}

- (TSUCellCoord)reservedPrecedentForNameFragment:(id)fragment
{
  fragmentCopy = fragment;
  os_unfair_lock_lock(&self->_reservedFragmentPrecedentsLock);
  v6 = sub_221412054(&self->_reservedFragmentPrecedents.__table_.__bucket_list_.__ptr_, &fragmentCopy, v4, v5);
  if (v6)
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0x7FFF7FFFFFFFLL;
  }

  os_unfair_lock_unlock(&self->_reservedFragmentPrecedentsLock);

  return v7;
}

- (TSUCellCoord)reservePrecedent:(const TSUCellCoord *)precedent forNameFragment:(id)fragment
{
  fragmentCopy = fragment;
  v6 = *precedent;
  os_unfair_lock_lock(&self->_reservedFragmentPrecedentsLock);
  v9 = sub_221412054(&self->_reservedFragmentPrecedents.__table_.__bucket_list_.__ptr_, &fragmentCopy, v7, v8);
  if (v9)
  {
    v6 = v9[3];
  }

  else
  {
    NextPrecedentCoord = *precedent;
    if (NextPrecedentCoord == 0x7FFFFFFF || (NextPrecedentCoord & 0xFFFF00000000) == 0x7FFF00000000)
    {
      NextPrecedentCoord = objc_msgSend_getNextPrecedentCoord_(self, v10, 0, v11);
      v6 = NextPrecedentCoord;
    }

    v16 = &fragmentCopy;
    sub_221412164(&self->_reservedFragmentPrecedents.__table_.__bucket_list_.__ptr_, &fragmentCopy, &unk_2217E1BE8, &v16)[3] = NextPrecedentCoord;
  }

  os_unfair_lock_unlock(&self->_reservedFragmentPrecedentsLock);

  return v6;
}

- (void)integrateReservedPrecedents
{
  v15 = 0u;
  v16 = 0u;
  max_load_factor = 1.0;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  os_unfair_lock_lock(&self->_reservedFragmentPrecedentsLock);
  if (&v15 != &self->_reservedFragmentPrecedents)
  {
    max_load_factor = self->_reservedFragmentPrecedents.__table_.__max_load_factor_;
    sub_2214123FC(&v15, self->_reservedFragmentPrecedents.__table_.__first_node_.__next_, 0);
  }

  sub_221412A74(&self->_reservedFragmentPrecedents);
  os_unfair_lock_unlock(&self->_reservedFragmentPrecedentsLock);
  for (i = v16; i; i = *i)
  {
    v5 = i[2];
    v6 = objc_msgSend_findTileForString_findClosest_(self, v3, v5, 0, i[3], v13);
    objc_msgSend_addChangedTile_(self, v7, v6, v8);
    objc_msgSend_createFragmentEntryForString_toDirtyCellRefs_createIfMissingUsingPrecedentCoord_(self, v9, v5, &v13, &v12);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v10, &v13, v11);
  sub_22107C800(&v13, v14[0]);
  sub_2210C82EC(&v15);
}

- (vector<NSString)wordFragmentsFromString:(TSTHeaderNameMgr *)self savePreserveFlags:(SEL)flags
{
  v46 = a5;
  v56 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  if (objc_msgSend_length(v6, v7, v8, v9))
  {
    v44 = objc_msgSend_foldName_(self->_namePrefixIndex, v10, v6, v11);

    v45 = objc_opt_new();
    objc_msgSend_setForceSplitting_(v45, v12, 1, v13);
    objc_msgSend_splitRefPath_(v45, v14, v44, v15);
    v21 = objc_msgSend_numComponents(v45, v16, v17, v18);
    if (v21)
    {
      v22 = 0;
      do
      {
        v49 = objc_msgSend_componentAtIndex_(v45, v19, v22, v20, v44);
        v28 = objc_msgSend_numWords(v49, v23, v24, v25);
        if (v28)
        {
          v29 = 0;
          v48 = v22;
          do
          {
            v30 = objc_msgSend_wordAtIndex_(v49, v26, v29, v27);
            v33 = objc_msgSend_trimmedStringWithPreserveFlag_(v30, v31, v46, v32);
            v36 = objc_msgSend_componentsSeparatedByCharactersInSet_(v33, v34, self->_whitespaceToBreakAt, v35);
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v37 = v36;
            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v50, v55, 16);
            if (v39)
            {
              v40 = *v51;
              do
              {
                v41 = 0;
                do
                {
                  if (*v51 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v54 = *(*(&v50 + 1) + 8 * v41);
                  sub_2210C4258(retstr, &v54);
                  ++v41;
                }

                while (v39 != v41);
                v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v42, &v50, v55, 16);
              }

              while (v39);
            }

            v22 = v48;
            ++v29;
          }

          while (v29 != v28);
        }

        ++v22;
      }

      while (v22 != v21);
    }

    v6 = v44;
  }

  return result;
}

- (TSTHeaderPerTable)perTableEntryForTable:(const TSKUIDStruct *)table createIfMissing:(BOOL)missing
{
  if (*table == 0)
  {
    return 0;
  }

  missingCopy = missing;
  v6 = sub_2210875C4(&self->_perTableInfo.__table_.__bucket_list_.__ptr_, table);
  if (!v6)
  {
    if (missingCopy)
    {
      objc_msgSend_willModifyForUpgradeWithOptions_(self, v7, 2, v8);
      NextPrecedentCoord = objc_msgSend_getNextPrecedentCoord_(self, v10, 1, v11);
      operator new();
    }

    return 0;
  }

  return v6[4];
}

- (BOOL)updateTrackedHeaders:(const TSKUIDStruct *)headers checkForEmptyHeaders:(BOOL)emptyHeaders
{
  if (*headers == 0)
  {
    LOBYTE(v20) = 0;
  }

  else
  {
    if (emptyHeaders)
    {
      v120 = 0;
      v121 = &v120;
      v122 = 0x2020000000;
      v123 = 0;
      v6 = objc_msgSend_calcEngine(self, a2, headers, emptyHeaders);
      v8 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v7, headers, v6);

      if (v8)
      {
        v12 = objc_msgSend_numberOfHeaderRows(v8, v9, v10, v11);
        if (v12 + objc_msgSend_numberOfHeaderColumns(v8, v13, v14, v15))
        {
          v21 = objc_msgSend_tableInfo(v8, v16, v17, v18);
          v25 = v21;
          if (v21 && (objc_msgSend_isCategorized(v21, v22, v23, v24) & 1) == 0)
          {
            if (objc_msgSend_numberOfHeaderColumns(v8, v26, v27, v28))
            {
              v32 = objc_msgSend_headerColumnRange(v25, v29, v30, v31);
              v34 = objc_msgSend_region_addingRange_(TSTCellRegion, v33, 0, v32, v33);
            }

            else
            {
              v34 = 0;
            }

            if (objc_msgSend_numberOfHeaderRows(v8, v29, v30, v31))
            {
              v38 = objc_msgSend_headerRowRange(v25, v35, v36, v37);
              v40 = objc_msgSend_region_addingRange_(TSTCellRegion, v39, v34, v38, v39);

              v34 = v40;
            }

            if (v34 && (objc_msgSend_isEmpty(v34, v35, v36, v37) & 1) == 0)
            {
              v119[0] = MEMORY[0x277D85DD0];
              v119[1] = 3221225472;
              v119[2] = sub_22140ABD4;
              v119[3] = &unk_27845DD70;
              v119[4] = &v120;
              objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v25, v41, v34, 10, 0x400000, v119);
            }

            v19 = *(v121 + 24) ^ 1;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        v19 = 0;
      }

      _Block_object_dispose(&v120, 8);
    }

    else
    {
      v19 = 0;
    }

    v118._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v118._coordsForOwnerUid.__tree_.__size_ = 0;
    v118._coordsForOwnerUid.__tree_.__begin_node_ = &v118._coordsForOwnerUid.__tree_.__end_node_;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v42, headers, 0);
    objc_msgSend_willModify(self, v44, v45, v46);
    if (IfMissing && (*(IfMissing + 56) & 1) == 0)
    {
      if (v19)
      {
        v50 = objc_msgSend_copy(*(IfMissing + 32), v47, v48, v49);
        v54 = objc_msgSend_count(v50, v51, v52, v53);
        v58 = objc_msgSend_copy(*(IfMissing + 24), v55, v56, v57);
        v62 = v54 + objc_msgSend_count(v58, v59, v60, v61) == 0;
      }

      else
      {
        v62 = 0;
      }

      v63 = objc_msgSend_calcEngine(self, v47, v48, v49);
      v65 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v64, headers, v63);

      v120 = 0;
      v121 = &v120;
      v122 = 0x2020000000;
      v123 = 0;
      v69 = objc_msgSend_numberOfHeaderRows(v65, v66, v67, v68);
      if (v65)
      {
        objc_msgSend_rowUIDsForRowRange_(v65, v70, 0, v69);
      }

      else
      {
        v115 = 0;
        v116 = 0;
        v117 = 0;
      }

      v73 = objc_msgSend_numberOfHeaderColumns(v65, v70, v71, v72);
      if (v65)
      {
        objc_msgSend_columnUIDsForColumnRange_(v65, v74, 0, v73);
      }

      else
      {
        __p = 0;
        v113 = 0;
        v114 = 0;
      }

      v77 = v115;
      v78 = v116;
      if (v115 != v116)
      {
        do
        {
          if ((objc_msgSend_containsUuid_(*(IfMissing + 24), v74, *v77, *(v77 + 1)) & 1) == 0)
          {
            sub_221407314(IfMissing, v77, 1, v76);
            if (!v62)
            {
              objc_msgSend_addUUID_(*(IfMissing + 40), v74, *v77, *(v77 + 1));
              *(v121 + 24) = 1;
            }
          }

          v77 += 16;
        }

        while (v77 != v78);
      }

      v79 = __p;
      v80 = v113;
      if (__p != v113)
      {
        do
        {
          if ((objc_msgSend_containsUuid_(*(IfMissing + 32), v74, *v79, v79[1]) & 1) == 0)
          {
            objc_msgSend_addUUID_(*(IfMissing + 32), v74, *v79, v79[1]);
            if (!v62)
            {
              objc_msgSend_addUUID_(*(IfMissing + 48), v74, *v79, v79[1]);
              *(v121 + 24) = 1;
            }
          }

          v79 += 2;
        }

        while (v79 != v80);
      }

      v81 = objc_msgSend_copy(*(IfMissing + 24), v74, v75, v76);
      if (objc_msgSend_count(v81, v82, v83, v84) > ((v116 - v115) >> 4))
      {
        v88 = objc_msgSend_mutableCopy(v81, v85, v86, v87);
        objc_msgSend_removeUuidsFromVector_(v88, v89, &v115, v90);
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = sub_22140ABEC;
        v111[3] = &unk_278464A90;
        v111[4] = &v120;
        v111[5] = IfMissing;
        objc_msgSend_foreachUuid_(v88, v91, v111, v92);
      }

      v93 = objc_msgSend_copy(*(IfMissing + 32), v85, v86, v87);
      v97 = objc_msgSend_count(v93, v94, v95, v96);
      if (v97 > (v113 - __p) >> 4)
      {
        v101 = objc_msgSend_mutableCopy(v93, v98, v99, v100);
        objc_msgSend_removeUuidsFromVector_(v101, v102, &__p, v103);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = sub_22140AC54;
        v110[3] = &unk_278464A90;
        v110[4] = &v120;
        v110[5] = IfMissing;
        objc_msgSend_foreachUuid_(v101, v104, v110, v105);
      }

      v20 = *(v121 + 24);
      if (v20 == 1)
      {
        v109.coordinate = *(IfMissing + 16);
        v109._tableUID = self->_ownerUID;
        TSCECellRefSet::addCellRef(&v118, &v109);
      }

      if (__p)
      {
        v113 = __p;
        operator delete(__p);
      }

      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      _Block_object_dispose(&v120, 8);
    }

    else
    {
      LOBYTE(v20) = 0;
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v106, &v118, v107);
    sub_22107C800(&v118, v118._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }

  return v20;
}

- (void)updateTrackedHeadersForDocumentLocaleChange:(const TSKUIDStruct *)change
{
  if (*change != 0)
  {
    v38._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v38._coordsForOwnerUid.__tree_.__size_ = 0;
    v38._coordsForOwnerUid.__tree_.__begin_node_ = &v38._coordsForOwnerUid.__tree_.__end_node_;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v5, change, 0);
    v10 = IfMissing;
    if (IfMissing && (*(IfMissing + 56) & 1) == 0)
    {
      objc_msgSend_willModify(self, v7, v8, v9);
      v14 = objc_msgSend_calcEngine(self, v11, v12, v13);
      v16 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v15, change, v14);

      v20 = objc_msgSend_numberOfHeaderRows(v16, v17, v18, v19);
      if (v16)
      {
        objc_msgSend_rowUIDsForRowRange_(v16, v21, 0, v20);
      }

      else
      {
        __p = 0;
        v36 = 0;
        v37 = 0;
      }

      v24 = objc_msgSend_numberOfHeaderColumns(v16, v21, v22, v23);
      if (v16)
      {
        objc_msgSend_columnUIDsForColumnRange_(v16, v25, 0, v24);
        v26 = v32;
        v27 = v33;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
      }

      v28 = __p;
      if (((v36 - __p) >> 4) + ((v27 - v26) >> 4))
      {
        if (__p != v36)
        {
          do
          {
            objc_msgSend_addUUID_(*(v10 + 40), v25, *v28, v28[1]);
            v28 += 2;
          }

          while (v28 != v36);
          v26 = v32;
          v27 = v33;
        }

        while (v26 != v27)
        {
          objc_msgSend_addUUID_(*(v10 + 48), v25, *v26, v26[1]);
          v26 += 2;
        }

        v31.coordinate = *(v10 + 16);
        v31._tableUID = self->_ownerUID;
        TSCECellRefSet::addCellRef(&v38, &v31);
        v26 = v32;
      }

      if (v26)
      {
        v33 = v26;
        operator delete(v26);
      }

      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v29, &v38, v30);
    sub_22107C800(&v38, v38._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }
}

- (void)beginTrackingNamesInTable:(const TSKUIDStruct *)table
{
  if (*table != 0 && (objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self->_calcEngine, a2, table, v3) & 1) == 0)
  {
    objc_msgSend_willModify(self, v6, v7, v8);
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v9, table, 1);
    if (IfMissing && *(IfMissing + 56) == 1)
    {
      *(IfMissing + 56) = 0;
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    v26 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v11, table, self->_calcEngine);
    v15 = objc_msgSend_cellWillChangeDistributor(v26, v12, v13, v14);
    objc_msgSend_addReceiverIfMissing_(v15, v16, self, v17);

    if (objc_msgSend_updateTrackedHeaders_checkForEmptyHeaders_(self, v18, table, 1))
    {
      v22 = objc_msgSend_hauntedOwner(v26, v19, v20, v21);
      objc_msgSend_dirtySheetTableNameVolatileCells(v22, v23, v24, v25);
    }
  }
}

- (void)endTrackingNamesInTable:(const TSKUIDStruct *)table
{
  if ((objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self->_calcEngine, a2, table, v3) & 1) == 0)
  {
    v7 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v6, table, self->_calcEngine);
    v11 = objc_msgSend_cellWillChangeDistributor(v7, v8, v9, v10);
    objc_msgSend_removeReceiver_(v11, v12, self, v13);

    objc_msgSend_willModify(self, v14, v15, v16);
    v24._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v24._coordsForOwnerUid.__tree_.__size_ = 0;
    v24._coordsForOwnerUid.__tree_.__begin_node_ = &v24._coordsForOwnerUid.__tree_.__end_node_;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v17, table, 0);
    if (IfMissing)
    {
      *(IfMissing + 56) = 1;
      v23.coordinate = *(IfMissing + 16);
      v23._tableUID = self->_ownerUID;
      TSCECellRefSet::addCellRef(&v24, &v23);
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v19, &v24, v20);
    objc_msgSend_endTrackingNamesInTableForLegacyNRM_(self->_calcEngine, v21, table, v22);
    sub_22107C800(&v24, v24._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }
}

- (void)updateTableUIDFrom:(const TSKUIDStruct *)from toTableUID:(const TSKUIDStruct *)d
{
  if (*from != *d)
  {
    v18._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
    v18._rowsPerColumn.__tree_.__size_ = 0;
    v18._rectRepresentation.origin = 0;
    v18._rectRepresentation.size = 0;
    v18._rowsPerColumn.__tree_.__begin_node_ = &v18._rowsPerColumn.__tree_.__end_node_;
    v15 = 0u;
    v16 = 0u;
    v17 = 1065353216;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    next = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        if (*(next + 6) == from->_lower && *(next + 7) == from->_upper)
        {
          TSCECellCoordSet::addCellCoords(&v18, (next + 64));
          v8 = *(next + 2);
          v14[0] = *(next + 1);
          v9 = *d;
          v14[1] = v8;
          v14[2] = v9;
          v19 = v14;
          v10 = sub_221412FE4(&v15, v14, &unk_2217E1BE8, &v19);
          TSCECellCoordSet::operator=(v10 + 4, (next + 64));
        }

        next = *next;
      }

      while (next);
      for (i = v16; i; i = *i)
      {
        *&v14[0] = i + 2;
        v12 = sub_221412FE4(&self->_fragPrecedentsUsedByCellRef.__table_.__bucket_list_.__ptr_, i + 2, &unk_2217E1BE8, v14);
        TSCECellCoordSet::operator=(v12 + 4, (i + 8));
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22140B3EC;
    v13[3] = &unk_278462DA0;
    v13[4] = self;
    v13[5] = from;
    v13[6] = d;
    TSCECellCoordSet::enumerateCoordsUsingBlock(&v18, v13);
    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    sub_221412F60(&v15);
    sub_22107C860(&v18._rowsPerColumn, v18._rowsPerColumn.__tree_.__end_node_.__left_);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22141334C, off_2812E4498[314]);

  *(v6 + 16) |= 1u;
  v7 = *(v6 + 72);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0360](v8);
    *(v6 + 72) = v7;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v7);
  *(v6 + 16) |= 2u;
  v9 = *(v6 + 80);
  if (!v9)
  {
    v10 = *(v6 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0360](v10);
    *(v6 + 80) = v9;
  }

  TSKUIDStruct::saveToMessage(&self->_nrm_ownerUID, v9);
  v26 = 0u;
  v27 = 0u;
  max_load_factor = 1.0;
  pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
  if (&v26 != &self->_perTableInfo)
  {
    max_load_factor = self->_perTableInfo.__table_.__max_load_factor_;
    sub_2214133B8(&v26, self->_perTableInfo.__table_.__first_node_.__next_, 0);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  v25._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v25._rowsPerColumn.__tree_.__size_ = 0;
  v25._rectRepresentation.origin = 0;
  v25._rectRepresentation.size = 0;
  v25._rowsPerColumn.__tree_.__begin_node_ = &v25._rowsPerColumn.__tree_.__end_node_;
  for (i = v27; i; i = *i)
  {
    v12 = i[4];
    if (v12)
    {
      TSCECellCoordSet::addCellCoord(&v25, v12 + 2);
    }
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22140B740;
  v24[3] = &unk_278460EB8;
  v24[4] = self;
  v24[5] = v6;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v25, v24);
  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  p_nameFragmentTiles = &self->_nameFragmentTiles;
  v18 = objc_msgSend_initWithCapacity_(v13, v15, self->_nameFragmentTiles.var0 - self->_nameFragmentTiles.__begin_, v16);
  begin = p_nameFragmentTiles->__begin_;
  var0 = p_nameFragmentTiles->var0;
  while (begin != var0)
  {
    v21 = *begin;
    objc_msgSend_addObject_(v18, v22, v21, v23);

    ++begin;
  }

  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v17, v18, v6 + 48);

  sub_22107C860(&v25._rowsPerColumn, v25._rowsPerColumn.__tree_.__end_node_.__left_);
  sub_2210BDEC0(&v26);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[314], v6);

  objc_msgSend_setup(self, v8, v9, v10);
  if (*(v7 + 72))
  {
    v12 = *(v7 + 72);
  }

  else
  {
    v12 = MEMORY[0x277D809E0];
  }

  self->_ownerUID._lower = TSKUIDStruct::loadFromMessage(v12, v11);
  self->_ownerUID._upper = v13;
  if ((*(v7 + 16) & 2) != 0)
  {
    self->_nrm_ownerUID._lower = TSKUIDStruct::loadFromMessage(*(v7 + 80), v13);
    self->_nrm_ownerUID._upper = v13;
  }

  if (*(v7 + 32) >= 1)
  {
    v14 = *(*(v7 + 40) + 8);
    v25 = 0uLL;
    if (*(v14 + 120))
    {
      v15 = *(v14 + 120);
    }

    else
    {
      v15 = MEMORY[0x277D809E0];
    }

    *&v25 = TSKUIDStruct::loadFromMessage(v15, v13);
    *(&v25 + 1) = v16;
    v24 = 0;
    if (*(v14 + 128))
    {
      v17 = *(v14 + 128);
    }

    else
    {
      v17 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    v24 = sub_2212697C0(v17);
    objc_msgSend_usedPrecedentCoord_(self, v18, &v24, v19);
    operator new();
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22140C0FC;
  v23[3] = &unk_27845D8D8;
  v23[4] = self;
  v20 = unarchiverCopy;
  v21 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v20, v22, v7 + 48, v21, 0, v23);
}

- (void)unpackEntryAfterUnarchive:(void *)unarchive
{
  v12 = *(unarchive + 4);
  v8 = &v12;
  sub_221411E04(&self->_fragPrecedentToEntry.__table_.__bucket_list_.__ptr_, &v12, &unk_2217E1BE8, &v8)[3] = unarchive;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22140C514;
  v7[3] = &unk_278464AB8;
  v7[5] = &v8;
  v7[6] = v12;
  v7[4] = self;
  sub_22140C4B0(unarchive, v7);
  if (v9[3])
  {
    objc_msgSend_insertName_(self->_namePrefixIndex, v5, *(unarchive + 5), v6);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)fragmentEntryForNameFragmentPrecedent:(const TSUCellCoord *)precedent
{
  result = sub_221087F14(&self->_fragPrecedentToEntry.__table_.__bucket_list_.__ptr_, precedent);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (id)tileForEntry:(void *)entry
{
  if (entry)
  {
    v4 = objc_msgSend_findTileForString_findClosest_(self, a2, *(entry + 5), 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)findTileForString:(id)string findClosest:(BOOL)closest
{
  v6 = 0;
  v4 = objc_msgSend_findTileForString_findClosest_foundAtOffset_(self, a2, string, closest, &v6);

  return v4;
}

- (id)findTileForString:(id)string findClosest:(BOOL)closest foundAtOffset:(unint64_t *)offset
{
  closestCopy = closest;
  stringCopy = string;
  location = 0;
  p_nameFragmentTiles = &self->_nameFragmentTiles;
  v10 = self->_nameFragmentTiles.var0 - self->_nameFragmentTiles.__begin_;
  if (!v10)
  {
    v13 = 0;
    v19 = 1;
    goto LABEL_15;
  }

  v65 = closestCopy;
  offsetCopy = offset;
  v11 = 0;
  v12 = v10 >> 3;
  while (1)
  {
    v13 = v11 + ((v12 - v11) >> 1);
    v14 = p_nameFragmentTiles->__begin_[v13];
    v18 = v14;
    v19 = v14 == 0;
    if (!v14)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTHeaderNameMgr findTileForString:findClosest:foundAtOffset:]", v17);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 1614, 0, "invalid nil value for '%{public}s'", "midTile");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
      goto LABEL_13;
    }

    v20 = objc_msgSend_firstFragment(v14, v15, v16, v17);
    v23 = objc_msgSend_compare_(stringCopy, v21, v20, v22);

    v27 = v11 + ((v12 - v11) >> 1);
    if (v23 != -1)
    {
      break;
    }

LABEL_8:

    v12 = v27;
    if (v11 >= v27)
    {
      v19 = 1;
      goto LABEL_14;
    }
  }

  if (v23 == 1)
  {
    v28 = objc_msgSend_lastFragment(v18, v24, v25, v26);
    v31 = objc_msgSend_compare_(stringCopy, v29, v28, v30);

    if (v31 == 1)
    {
      v11 = v13 + 1;
      v27 = v12;
      goto LABEL_8;
    }
  }

  location = v18;
LABEL_13:

LABEL_14:
  offset = offsetCopy;
  closestCopy = v65;
LABEL_15:
  *offset = v13;
  if (v19 && closestCopy)
  {
    begin = p_nameFragmentTiles->__begin_;
    var0 = self->_nameFragmentTiles.var0;
    if (var0 == p_nameFragmentTiles->__begin_)
    {
      v43 = [TSTHeaderNameMgrTile alloc];
      v47 = objc_msgSend_context(self, v44, v45, v46);
      location = objc_msgSend_initWithHeaderNameMgr_context_(v43, v48, self, v47);

      sub_22140C294(&self->_nameFragmentTiles.__begin_, &location);
      v13 = 0;
      *offset = 0;
      begin = p_nameFragmentTiles->__begin_;
      var0 = self->_nameFragmentTiles.var0;
    }

    v49 = var0 - begin;
    if (v13 + 1 >= v49 >> 3)
    {
      if (v13 >= v49 >> 3)
      {
        *offset = v13 - 1;
        v61 = begin[v13 - 2];
      }

      else
      {
        v61 = begin[v13];
      }

      v62 = v61;
      v51 = location;
      location = v62;
    }

    else
    {
      v50 = begin[v13];
      v51 = v50;
      v52 = p_nameFragmentTiles->__begin_[*offset + 1];
      v53 = v52;
      v57 = objc_msgSend_count(v51, v54, v55, v56);
      if (v57 <= objc_msgSend_count(v53, v58, v59, v60))
      {
        objc_storeStrong(&location, v50);
      }

      else
      {
        objc_storeStrong(&location, v52);
        ++*offset;
      }
    }
  }

  v63 = location;

  return v63;
}

- (void)handleFullTile:(id)tile toDirtyCellRefs:(void *)refs
{
  tileCopy = tile;
  if (objc_msgSend_count(tileCopy, v7, v8, v9) >= 0xC351)
  {
    v55 = 0;
    if (objc_msgSend_count(tileCopy, v10, v11, v12) >= 0x30D41)
    {
      objc_msgSend_willModify(tileCopy, v13, v14, v15);
      v54.coordinate = 0;
      v19 = objc_msgSend_firstFragment(tileCopy, v16, v17, v18);
      v21 = objc_msgSend_findTileForString_findClosest_foundAtOffset_(self, v20, v19, 0, &v54);

      v55 = objc_msgSend_splitTile(tileCopy, v22, v23, v24);
      if (v55)
      {
        sub_22140CC6C(&self->_nameFragmentTiles, &self->_nameFragmentTiles.__begin_[*&v54.coordinate + 1], &v55);
      }

      else
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTHeaderNameMgr handleFullTile:toDirtyCellRefs:]", v26);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v30);
        v35 = objc_msgSend_count(tileCopy, v32, v33, v34);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v36, v28, v31, 1699, 0, "Could NOT split tile of %lu size for some reason", v35);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
      }
    }

    if (objc_msgSend_count(tileCopy, v13, v14, v15) >= 0xC351)
    {
      tilesToConsiderSplitting = self->_tilesToConsiderSplitting;
      v44 = objc_msgSend_firstFragment(tileCopy, v40, v41, v42);
      objc_msgSend_addObject_(tilesToConsiderSplitting, v45, v44, v46);

      v54.coordinate = self->_needsTileSplittingPrecedent;
      v54._tableUID = self->_ownerUID;
      TSCECellRefSet::addCellRef(refs, &v54);
    }

    if (objc_msgSend_count(v55, v40, v41, v42) >= 0xC351)
    {
      v50 = self->_tilesToConsiderSplitting;
      v51 = objc_msgSend_firstFragment(v55, v47, v48, v49);
      objc_msgSend_addObject_(v50, v52, v51, v53);

      v54.coordinate = self->_needsTileSplittingPrecedent;
      v54._tableUID = self->_ownerUID;
      TSCECellRefSet::addCellRef(refs, &v54);
    }
  }
}

- (void)fragmentEntryForString:(id)string
{
  stringCopy = string;
  if (objc_msgSend_length(stringCopy, v5, v6, v7))
  {
    v9 = objc_msgSend_findTileForString_findClosest_(self, v8, stringCopy, 0);
    v12 = v9;
    if (v9)
    {
      v13 = objc_msgSend_fragmentEntryForString_(v9, v10, stringCopy, v11);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)createFragmentEntryForString:(id)string toDirtyCellRefs:(void *)refs createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)coord
{
  stringCopy = string;
  if (objc_msgSend_length(stringCopy, v9, v10, v11))
  {
    v27 = 0;
    if (self->_nameFragmentTiles.var0 == self->_nameFragmentTiles.__begin_)
    {
      v20 = [TSTHeaderNameMgrTile alloc];
      v24 = objc_msgSend_context(self, v21, v22, v23);
      v27 = objc_msgSend_initWithHeaderNameMgr_context_(v20, v25, self, v24);

      objc_msgSend_createFragmentEntryForString_createIfMissingUsingPrecedentCoord_(v27, v26, stringCopy, coord);
      sub_22140C294(&self->_nameFragmentTiles.__begin_, &v27);
      v15 = v27;
    }

    else
    {
      v13 = objc_msgSend_findTileForString_findClosest_(self, v12, stringCopy, 1);
      v15 = v13;
      v27 = v13;
      if (v13)
      {
        objc_msgSend_createFragmentEntryForString_createIfMissingUsingPrecedentCoord_(v13, v14, stringCopy, coord);
        if (objc_msgSend_count(v15, v16, v17, v18) >= 0xC351)
        {
          objc_msgSend_handleFullTile_toDirtyCellRefs_(self, v19, v15, refs);
        }
      }
    }
  }
}

- (BOOL)updateWithIndexingChunks:(id)chunks
{
  v34 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v8 = chunksCopy;
  if (self->_isClosing || !objc_msgSend_count(chunksCopy, v5, v6, v7))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v32[0] = 0;
    v32[1] = 0;
    v31 = v32;
    v9 = 80;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    if (self->_isClosing)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v8;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v27, v33, 16);
      v24 = v11;
      v25 = 80;
      v10 = 0;
      if (v15)
      {
        v16 = *v28;
        do
        {
          v17 = 0;
          do
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v27 + 1) + 8 * v17);
            if (v18)
            {
              v19 = *(v18 + 48);
              if (*(v18 + 56) != v19)
              {
                v20 = *(v18 + 24);
                v26 = 0uLL;
                v26 = *(v18 + 8);
                do
                {
                  v10 |= objc_msgSend_p_updateWithWordFragments_atCellCoord_tableUID_toDirtyCellRefs_(self, v14, v20, v19, &v26, &v31, v24, v25);
                  v19 += 32;
                  v20 += 24;
                }

                while (v19 != *(v18 + 56));
              }
            }

            ++v17;
          }

          while (v17 != v15);
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v27, v33, 16);
        }

        while (v15);
      }

      v9 = v25;
      objc_autoreleasePoolPop(v24);
    }

    pthread_rwlock_unlock((self + v9));
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v21, &v31, v22);
    sub_22107C800(&v31, v32[0]);
  }

  return v10 & 1;
}

- (void)updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d
{
  textCopy = text;
  row = coord->_row;
  v19[0] = coord->_column;
  v19[1] = row;
  v18 = *d;
  objc_msgSend_willModify(self, v10, v11, v12);
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_p_updateText_atCellCoord_tableUID_toDirtyCellRefs_(self, v13, textCopy, v19, &v18, &v16);
  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v14, &v16, v15);
  sub_22107C800(&v16, v17[0]);
}

- (void)p_updateText:(id)text atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs
{
  textCopy = text;
  v11 = objc_autoreleasePoolPush();
  memset(&v19, 0, sizeof(v19));
  if (objc_msgSend_length(textCopy, v12, v13, v14))
  {
    objc_msgSend_wordFragmentsFromString_savePreserveFlags_(self, v15, textCopy, 1);
    sub_2210BC2A8(&v19);
    v19 = v18;
    v20 = &v18;
    memset(&v18, 0, sizeof(v18));
    sub_22107C2C0(&v20);
  }

  objc_msgSend_p_updateWithWordFragments_atCellCoord_tableUID_toDirtyCellRefs_(self, v15, &v19, coord, d, refs);
  objc_msgSend_anyHeaderNameChangedPrecedentForTableUID_(TSCEHauntedOwner, v16, d, v17);
  TSCECellRefSet::addCellRef(refs, &v18);
  v18.coordinate = &v19;
  sub_22107C2C0(&v18);
  objc_autoreleasePoolPop(v11);
}

- (BOOL)p_updateWithWordFragments:(const void *)fragments atCellCoord:(const TSKUIDStructCoord *)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs
{
  selfCopy = self;
  v51._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v51._rowsPerColumn.__tree_.__size_ = 0;
  v51._rectRepresentation.origin = 0;
  v51._rectRepresentation.size = 0;
  v51._rowsPerColumn.__tree_.__begin_node_ = &v51._rowsPerColumn.__tree_.__end_node_;
  row = coord->_row;
  v50[0] = coord->_column;
  v50[1] = row;
  v50[2] = *d;
  v11 = sub_22141356C(&self->_fragPrecedentsUsedByCellRef.__table_.__bucket_list_.__ptr_, v50);
  if (v11)
  {
    TSCECellCoordSet::operator=(&v51, (v11 + 8));
  }

  TSCECellCoordSet::TSCECellCoordSet(&v49, &v51);
  v39 = 0;
  v40 = &v39;
  v41 = 0x5812000000;
  v42 = sub_22140D808;
  v43 = sub_22140D814;
  v44 = &unk_22188E88F;
  v48[0] = 0;
  v48[1] = 0;
  v45 = 0;
  v46 = 0;
  v47 = v48;
  v38._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v38._rowsPerColumn.__tree_.__size_ = 0;
  v38._rectRepresentation.origin = 0;
  v38._rectRepresentation.size = 0;
  v38._rowsPerColumn.__tree_.__begin_node_ = &v38._rowsPerColumn.__tree_.__end_node_;
  v12 = *fragments;
  v13 = *(fragments + 1);
  if (*fragments != v13)
  {
    do
    {
      v14 = *v12;
      if (objc_msgSend_length(v14, v15, v16, v17))
      {
        v19 = objc_msgSend_findTileForString_findClosest_(selfCopy, v18, v14, 1);
        IfMissingUsingPrecedentCoord = objc_msgSend_createFragmentEntryForString_createIfMissingUsingPrecedentCoord_(v19, v20, v14, &unk_2217E1BE0);
        if (IfMissingUsingPrecedentCoord)
        {
          objc_msgSend_addChangedTile_(selfCopy, v21, v19, v22);
          os_unfair_lock_lock(IfMissingUsingPrecedentCoord);
          sub_221278A44((IfMissingUsingPrecedentCoord + 16), coord, d);
          os_unfair_lock_unlock(IfMissingUsingPrecedentCoord);
          v52 = *(IfMissingUsingPrecedentCoord + 4);
          TSCECellCoordSet::addCellCoord(&v38, &v52);
          v52 = *(IfMissingUsingPrecedentCoord + 4);
          if (TSCECellCoordSet::containsCellCoord(&v51, &v52))
          {
            v52 = *(IfMissingUsingPrecedentCoord + 4);
            TSCECellCoordSet::removeCellCoord(&v49, &v52);
          }

          else
          {
            v24 = selfCopy;
            namePrefixIndex = selfCopy->_namePrefixIndex;
            v25 = *(IfMissingUsingPrecedentCoord + 40);
            objc_msgSend_insertFoldedName_(namePrefixIndex, v26, v25, v27);

            v52 = *(IfMissingUsingPrecedentCoord + 4);
            TSCECellCoordSet::addCellCoord((v40 + 6), &v52);
            selfCopy = v24;
            if (objc_msgSend_count(v19, v28, v29, v30) >= 0xC351)
            {
              objc_msgSend_handleFullTile_toDirtyCellRefs_(v24, v31, v19, refs);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v13);
  }

  v52 = v50;
  v32 = sub_221412FE4(&selfCopy->_fragPrecedentsUsedByCellRef.__table_.__bucket_list_.__ptr_, v50, &unk_2217E1BE8, &v52);
  TSCECellCoordSet::operator=(v32 + 4, &v38);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22140D820;
  v37[3] = &unk_278464AE0;
  v37[6] = coord;
  v37[7] = d;
  v37[4] = selfCopy;
  v37[5] = &v39;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v49, v37);
  TSCECellRefSet::addCellRefs(refs, &selfCopy->_ownerUID, (v40 + 6));
  isEmpty = TSCECellCoordSet::isEmpty((v40 + 6));
  sub_22107C860(&v38._rowsPerColumn, v38._rowsPerColumn.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v39, 8);
  sub_22107C860(&v47, v48[0]);
  sub_22107C860(&v49._rowsPerColumn, v49._rowsPerColumn.__tree_.__end_node_.__left_);
  sub_22107C860(&v51._rowsPerColumn, v51._rowsPerColumn.__tree_.__end_node_.__left_);
  return !isEmpty;
}

- (TSCECellRefSet)nameFragmentPrecedentsForReferenceString:(SEL)string
{
  v6 = a4;
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = &retstr->_coordsForOwnerUid.__tree_.__end_node_;
  if (objc_msgSend_length(v6, v7, v8, v9))
  {
    objc_msgSend_wordFragmentsFromString_savePreserveFlags_(self, v10, v6, 0);
    if (v23 != v24)
    {
      pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
      v13 = v23;
      v14 = v24;
      do
      {
        v15 = *v13;
        v16 = objc_msgSend_fragmentEntryForString_(self, v11, *v13, v12);
        if (v16)
        {
          v22.coordinate = *(v16 + 4);
          v22._tableUID = self->_ownerUID;
          TSCECellRefSet::addCellRef(retstr, &v22);
        }

        else if (objc_msgSend_length(v15, v17, v18, v19))
        {
          v20 = objc_msgSend_reservePrecedent_forNameFragment_(self, v11, &unk_2217E1BE0, v15);
          if (v20 != 0x7FFFFFFF && (v20 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v22.coordinate = v20;
            v22._tableUID = self->_ownerUID;
            TSCECellRefSet::addCellRef(retstr, &v22);
          }
        }

        ++v13;
      }

      while (v13 != v14);
      pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    }

    v22.coordinate = &v23;
    sub_22107C2C0(&v22);
  }

  return result;
}

- (TSCERangeRef)spanningRangeForHeaderCell:(SEL)cell
{
  calcEngine = self->_calcEngine;
  tableUID = a4->_tableUID;
  v8 = objc_msgSend_tableResolverForTableUID_(calcEngine, cell, &tableUID, v4);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_bodyRangeCoordinate(v8, v9, v10, v11);
    tableUID._lower = a4->coordinate;
    tableUID._upper = tableUID._lower;
    coordinate = objc_msgSend_expandCellRangeToCoverMergedCells_(v12, v14, &tableUID, v15);
    v18 = WORD2(v13);
  }

  else
  {
    coordinate = a4->coordinate;
    v18 = 0x7FFF;
    LODWORD(v13) = 0x7FFFFFFF;
    v17 = a4->coordinate;
  }

  if (v13 <= coordinate)
  {
    if (v18 <= WORD2(coordinate))
    {
      retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      retstr->_tableUID._lower = 0;
      retstr->_tableUID._upper = 0;
      goto LABEL_10;
    }

    v20 = 0x7FFF00000000;
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v19 = 0xFFFF00000000;
    v20 = 0x7FFFFFFFLL;
  }

  retstr->range._topLeft = (coordinate & v19 | v20);
  retstr->range._bottomRight = (*&v17 & v19 | v20);
  retstr->_tableUID = a4->_tableUID;
LABEL_10:

  return result;
}

- (id)stringInHeaderCell:(const TSCECellRef *)cell
{
  calcEngine = self->_calcEngine;
  tableUID = cell->_tableUID;
  v7 = objc_msgSend_tableResolverForTableUID_(calcEngine, a2, &tableUID, v3);
  v9 = v7;
  if (v7)
  {
    coordinate = cell->coordinate;
    tableUID._lower = coordinate;
    v21 = 0;
    v10 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v7, v8, &tableUID, &coordinate, &v21);
    tableUID._lower = cell->coordinate;
    v12 = objc_msgSend_scalarValueFromCoord_readOptions_(v10, v11, &tableUID, 1);
    v16 = objc_msgSend_documentLocale(self->_calcEngine, v13, v14, v15);
    v19 = objc_msgSend_asStringWithLocale_(v12, v17, v16, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)referenceNameIsUnique:(id)unique forReference:(const void *)reference contextTable:(const TSKUIDStruct *)table
{
  uniqueCopy = unique;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v11 = objc_msgSend_tableResolverForTableUID_(self->_calcEngine, v9, table, v10);
  v15 = v11;
  if (!v11 || !objc_msgSend_isPivotDataModel(v11, v12, v13, v14))
  {
    v30 = [TSCEReferenceParsingContext alloc];
    v28 = objc_msgSend_initWithContextTableResolver_(v30, v31, v15, v32);
    objc_msgSend_setReferenceIsComplete_(v28, v33, 1, v34);
    v38 = objc_msgSend_refParser(self->_calcEngine, v35, v36, v37);
    v40 = v38;
    if (v38)
    {
      objc_msgSend_parseStringAsChromeReference_withParsingContext_(v38, v39, uniqueCopy, v28);
    }

    else
    {
      memset(&v43, 0, sizeof(v43));
    }

    if (TSCERangeRef::isValid(&v43) && TSCERangeRef::operator==(&v43, reference))
    {
      *(v54 + 24) = 1;
    }

    goto LABEL_13;
  }

  if (TSCERangeCoordinate::spansAllRows(reference) && *(reference + 2) == table->_lower && *(reference + 3) == table->_upper)
  {
    *(v54 + 24) = 1;
    v19 = objc_msgSend_tableModel(v15, v16, v17, v18);
    v43.range._topLeft = objc_msgSend_headerRowRange(v19, v20, v21, v22);
    v43.range._bottomRight = v23;
    v24 = *(reference + 2);
    v27 = objc_msgSend_newCell(v19, v23, v25, v26, *&v43.range._topLeft, v23);
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = sub_22140DF94;
    v47 = &unk_278464B08;
    v52 = v24;
    v28 = v19;
    v48 = v28;
    v49 = v27;
    v50 = uniqueCopy;
    v51 = &v53;
    v29 = v27;
    TSUCellRect::enumerateCoordinatesUsingBlock();

LABEL_13:
  }

  v41 = *(v54 + 24);

  _Block_object_dispose(&v53, 8);
  return v41;
}

- (id)anyRefForRangeForHeaderCell:(const TSCECellRef *)cell usePreserveFlags:(BOOL)flags
{
  flagsCopy = flags;
  objc_msgSend_spanningRangeForHeaderCell_(self, a2, cell, flags);
  v9 = objc_msgSend_stringInHeaderCell_(self, v7, cell, v8);
  v10 = [TSCEAnyReference alloc];
  v13 = objc_msgSend_initWithRangeRef_(v10, v11, v28, v12);
  objc_msgSend_setWasConstructedViaNames_(v13, v14, 1, v15);
  if (flagsCopy)
  {
    v27 = v28[0];
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"$%@", v17, v9);
    v19.i64[0] = 0xFFFFFFFFLL;
    v19.i64[1] = 0xFFFFFFFFLL;
    v20 = vandq_s8(v27, v19);
    v21.i64[0] = 0xFFFF00000000;
    v21.i64[1] = 0xFFFF00000000;
    v21.i32[0] = vuzp1_s16(vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v27, v21), vdupq_n_s64(0x7FFF00000000uLL)))), *v20.i8).u32[0];
    *v20.i8 = vmovn_s64(vceqq_s64(v20, vdupq_n_s64(0x7FFFFFFFuLL)));
    v21.i32[1] = vuzp1_s16(*&v20, *&v20).i32[1];
    v22 = vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(*v21.i8, 0xFuLL)), 0x8000400020001));

    if (v22 == 15)
    {
      v23 = 5;
    }

    else
    {
      v23 = 10;
    }

    v9 = v18;
  }

  else
  {
    v23 = 0;
  }

  objc_msgSend_setPreserveFlags_(v13, v16, v23, v17);
  objc_msgSend_setOverrideText_(v13, v24, v9, v25);

  return v13;
}

- (void)p_willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d toDirtyCellRefs:(void *)refs
{
  column = coord._coord.column;
  cellCopy = cell;
  if (coord._coord.row < 5 || column <= 4u)
  {
    IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v11, d, 0);
    v17 = IfMissing;
    if (IfMissing)
    {
      if ((*(IfMissing + 56) & 1) == 0)
      {
        v18 = objc_msgSend_calcEngine(self, v14, v15, v16);
        v20 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v19, d, v18);

        if (v20 && (objc_msgSend_numberOfHeaderColumns(v20, v21, v22, v23) > column || objc_msgSend_numberOfHeaderRows(v20, v24, v25, v26) > coord._coord.row))
        {
          v27 = objc_msgSend_columnRowUIDMap(v20, v24, v25, v26);
          v47 = objc_msgSend_columnUIDForColumnIndex_(v27, v28, column, v29);
          v31 = v30;

          v35 = objc_msgSend_columnRowUIDMap(v20, v32, v33, v34);
          v38 = objc_msgSend_rowUIDForRowIndex_(v35, v36, *&coord, v37);
          v40 = v39;

          if ((objc_msgSend_containsUuid_(*(v17 + 32), v41, v47, v31) & 1) != 0 || objc_msgSend_containsUuid_(*(v17 + 24), v42, v38, v40))
          {
            v45 = objc_msgSend_formattedValue(cellCopy, v42, v43, v44);
            TSKMakeUIDStructCoord();
            objc_msgSend_p_updateText_atCellCoord_tableUID_toDirtyCellRefs_(self, v46, v45, v48, d, refs);
          }
        }
      }
    }
  }
}

- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d
{
  cellCopy = cell;
  if (coord._coord.row < 5 || coord._coord.column <= 4u)
  {
    v14 = *d;
    v13[0] = 0;
    v13[1] = 0;
    v12 = v13;
    pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_p_willApplyCell_baseCellCoord_tableUID_toDirtyCellRefs_(self, v9, cellCopy, *&coord, &v14, &v12);
    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v10, &v12, v11);
    sub_22107C800(&v12, v13[0]);
  }
}

- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  v23 = *d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4812000000;
  v18 = sub_221408BA8;
  v19 = sub_221408BB4;
  v20 = &unk_22188E88F;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v7, &v23, 0);
  if (IfMissing && (*(IfMissing + 56) & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22140E654;
    v13[3] = &unk_278464B30;
    v14 = v23;
    v13[4] = self;
    v13[5] = &v15;
    objc_msgSend_enumerateCellsWithIDsUsingBlock_(mapCopy, v9, v13, v10);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v11, (v16 + 6), v12);
  _Block_object_dispose(&v15, 8);
  sub_22107C800(&v21, v22[0]);
}

- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  mapCopy = map;
  v23 = *d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4812000000;
  v18 = sub_221408BA8;
  v19 = sub_221408BB4;
  v20 = &unk_22188E88F;
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v7, &v23, 0);
  if (IfMissing && (*(IfMissing + 56) & 1) == 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22140E808;
    v13[3] = &unk_278464B58;
    v14 = v23;
    v13[4] = self;
    v13[5] = &v15;
    objc_msgSend_enumerateSeriallyUsingBlock_(mapCopy, v9, v13, v10);
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v11, (v16 + 6), v12);
  _Block_object_dispose(&v15, 8);
  sub_22107C800(&v21, v22[0]);
}

- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d
{
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  IfMissing = objc_msgSend_perTableEntryForTable_createIfMissing_(self, v7, d, 0);
  if (IfMissing)
  {
    v10 = IfMissing;
    if ((*(IfMissing + 56) & 1) == 0)
    {
      v11 = *rows;
      v12 = *(rows + 1);
      while (v11 != v12)
      {
        if (objc_msgSend_containsUuid_(*(v10 + 24), v9, *v11, *(v11 + 8)))
        {
          sub_221407314(v10, v11, 1, v13);
          objc_msgSend_removeUUID_(*(v10 + 24), v14, *v11, *(v11 + 8));
        }

        v11 += 16;
      }
    }
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
}

- (void)p_processWorkForTable:(const TSKUIDStruct *)table
{
  v221 = *table;
  objc_msgSend_willModify(self, a2, table, v3);
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  if (!self->_isClosing)
  {
    v5 = sub_2210875C4(&self->_perTableInfo.__table_.__bucket_list_.__ptr_, &v221);
    if (v5)
    {
      v6 = v5;
      v7 = v5[4];
      v220._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v220._coordsForOwnerUid.__tree_.__size_ = 0;
      v220._coordsForOwnerUid.__tree_.__begin_node_ = &v220._coordsForOwnerUid.__tree_.__end_node_;
      if (v7 && *(v7 + 56) == 1)
      {
        v170 = v7;
        v10 = *(v7 + 16);
        v9 = (v7 + 16);
        v8 = v10;
        ownerUID = self->_ownerUID;
        p_removeFormulasDuringWritePhase = &self->_removeFormulasDuringWritePhase;
        end = self->_removeFormulasDuringWritePhase.__end_;
        cap = self->_removeFormulasDuringWritePhase.__cap_;
        if (end >= cap)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((end - p_removeFormulasDuringWritePhase->__begin_) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_22107C148();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_removeFormulasDuringWritePhase->__begin_) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_2210CDBC0(&self->_removeFormulasDuringWritePhase, v18);
          }

          v19 = 24 * v15;
          *v19 = v8;
          *(v19 + 8) = ownerUID;
          v14 = (24 * v15 + 24);
          v20 = (self->_removeFormulasDuringWritePhase.__end_ - p_removeFormulasDuringWritePhase->__begin_);
          v21 = (v19 - v20);
          memcpy((v19 - v20), p_removeFormulasDuringWritePhase->__begin_, v20);
          begin = p_removeFormulasDuringWritePhase->__begin_;
          p_removeFormulasDuringWritePhase->__begin_ = v21;
          self->_removeFormulasDuringWritePhase.__end_ = v14;
          self->_removeFormulasDuringWritePhase.__cap_ = 0;
          if (begin)
          {
            operator delete(begin);
          }
        }

        else
        {
          end->coordinate = v8;
          end->_tableUID = ownerUID;
          v14 = end + 1;
        }

        self->_removeFormulasDuringWritePhase.__end_ = v14;
        sub_2210CDD3C(&self->_perTableInfo.__table_.__bucket_list_.__ptr_, v6);
        v197 = 0;
        *(&__p + 1) = 0;
        *&__p = &__p + 8;
        for (i = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_; i; i = *i)
        {
          v205 = i[3];
          if (v205 == v221)
          {
            TSKMakeUIDStructCoord();
            sub_221278A44(&__p, &ownerUID, &v205);
            v218[0] = MEMORY[0x277D85DD0];
            v218[1] = 3221225472;
            v218[2] = sub_22140F93C;
            v218[3] = &unk_278462DA0;
            v218[4] = self;
            v219 = v221;
            TSCECellCoordSet::enumerateCoordsUsingBlock(i + 8, v218);
          }
        }

        ownerUID._lower = 0;
        ownerUID._upper = &ownerUID;
        v209 = 0x5812000000;
        v210 = sub_22140D808;
        v211 = sub_22140D814;
        v212 = &unk_22188E88F;
        v217 = 0;
        v214 = 0;
        v213 = 0;
        v216 = 0;
        v215 = &v216;
        v207[0] = MEMORY[0x277D85DD0];
        v207[1] = 3221225472;
        v207[2] = sub_22140F9E8;
        v207[3] = &unk_278464B80;
        v207[4] = self;
        v207[5] = &ownerUID;
        sub_221278D98(&__p, v207);
        TSCECellRefSet::addCellRefs(&v220, &self->_ownerUID, (ownerUID._upper + 48));
        sub_2214136D8(&self->_headerPerTablePrecedentToTableUID.__table_.__bucket_list_.__ptr_, v9);

        MEMORY[0x223DA1450](v170, 0x1080C405E821AB0);
        _Block_object_dispose(&ownerUID, 8);
        sub_22107C860(&v215, v216);
        sub_2212796F0(&__p, *(&__p + 1));
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v220._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v220._coordsForOwnerUid.__tree_.__size_ = 0;
      v220._coordsForOwnerUid.__tree_.__begin_node_ = &v220._coordsForOwnerUid.__tree_.__end_node_;
    }

    pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    objc_msgSend_markCellRefSetAsDirty_(self->_calcEngine, v24, &v220, v25);
    if (v7 && !self->_isClosing)
    {
      v173 = objc_msgSend_copy(*(v7 + 40), v26, v27, v28);
      v172 = objc_msgSend_copy(*(v7 + 48), v29, v30, v31);
      if (objc_msgSend_count(v173, v32, v33, v34) || objc_msgSend_count(v172, v35, v36, v37))
      {
        pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
        v206 = 0;
        *(&v205 + 1) = 0;
        *&v205 = &v205 + 8;
        v169 = objc_msgSend_copy(*(v7 + 24), v38, v39, v40);
        v171 = v7;
        v168 = objc_msgSend_copy(*(v7 + 32), v41, v42, v43);
        for (j = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_; j; j = *j)
        {
          __p = *(j + 3);
          if (__p != v221)
          {
            continue;
          }

          v46 = *(j + 2);
          v47 = *(j + 3);
          v48 = *(j + 4);
          v49 = *(j + 5);
          v50 = objc_msgSend_containsUuid_(v172, v44, v46, v47);
          v52 = objc_msgSend_containsUuid_(v173, v51, v48, v49);
          v53 = v52;
          if (((v50 | v52) & 1) == 0)
          {
            continue;
          }

          if (v50)
          {
            v54 = objc_msgSend_containsUuid_(v169, v44, v48, v49);
            if ((v53 & 1) == 0)
            {
              goto LABEL_39;
            }

            if (v54)
            {
              continue;
            }
          }

          else if ((v52 & 1) == 0)
          {
            goto LABEL_40;
          }

          v54 = objc_msgSend_containsUuid_(v168, v44, v46, v47);
LABEL_39:
          if ((v54 & 1) == 0)
          {
LABEL_40:
            TSKMakeUIDStructCoord();
            sub_221278A44(&v205, &ownerUID, &__p);
            v201[0] = MEMORY[0x277D85DD0];
            v201[1] = 3221225472;
            v201[2] = sub_22140FA6C;
            v201[3] = &unk_278464BA8;
            v201[4] = self;
            v204 = v221;
            v202 = v172;
            v203 = v173;
            TSCECellCoordSet::enumerateCoordsUsingBlock(j + 8, v201);
          }
        }

        ownerUID._lower = 0;
        ownerUID._upper = &ownerUID;
        v209 = 0x5812000000;
        v210 = sub_22140D808;
        v211 = sub_22140D814;
        v212 = &unk_22188E88F;
        v217 = 0;
        v214 = 0;
        v213 = 0;
        v216 = 0;
        v215 = &v216;
        v200[0] = MEMORY[0x277D85DD0];
        v200[1] = 3221225472;
        v200[2] = sub_22140FB0C;
        v200[3] = &unk_278464B80;
        v200[4] = self;
        v200[5] = &ownerUID;
        sub_221278D98(&v205, v200);
        pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
        objc_msgSend_markCoordsDirty_inOwner_(self->_calcEngine, v55, ownerUID._upper + 48, &self->_ownerUID);
        v56 = v221;
        v60 = objc_msgSend_calcEngine(self, v57, v58, v59);
        v62 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v61, v56._lower, v56._upper, v60);

        if (v62)
        {
          v166 = objc_msgSend_mutableCopy(v173, v63, v64, v65);
          v69 = objc_msgSend_mutableCopy(v172, v66, v67, v68);
          v73 = objc_msgSend_copy(*(v171 + 24), v70, v71, v72);
          objc_msgSend_intersectsSet_(v166, v74, v73, v75);

          v79 = objc_msgSend_copy(*(v171 + 32), v76, v77, v78);
          objc_msgSend_intersectsSet_(v69, v80, v79, v81);

          v167 = objc_msgSend_translator(v62, v82, v83, v84);
          v199.size = 0;
          v199.origin = 0;
          v199.origin = objc_msgSend_headerRowRange(v62, v85, v86, v87);
          v199.size = v88;
          if (v166)
          {
            objc_msgSend_uuidsAsVector(v166, v88, v89, v90);
          }

          else
          {
            __p = 0uLL;
            v197 = 0;
          }

          v164 = objc_msgSend_viewRowIndexesForUIDs_(v167, v88, &__p, v90);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          *&__p = 0;
          *(&__p + 1) = &__p;
          v197 = 0x2020000000;
          v198 = 0;
          if (objc_msgSend_count(v164, v91, v92, v93, v164) && TSUCellRect::isValid(&v199))
          {
            v97 = TSUCellRect::rows(&v199);
            Index = objc_msgSend_firstIndex(v165, v98, v99, v100);
            if (v97 <= Index)
            {
              v97 = Index;
            }

            v102 = TSUCellRect::rows(&v199);
            TSUCellRect::rows(&v199);
            v104 = v103;
            v107 = objc_msgSend_lastIndex(v165, v103, v105, v106);
            v108 = TSUCellRect::columns(&v199);
            if (v107 + 1 < &v104[v102])
            {
              v110 = v107 + 1;
            }

            else
            {
              v110 = &v104[v102];
            }

            v199.origin = sub_22140FB90(v108, v109, v97, v110 - v97);
            v199.size = v111;
            if (TSUCellRect::isValid(&v199) && (TSUCellRect::isEmpty(&v199) & 1) == 0)
            {
              v112 = objc_msgSend_regionFromRange_(TSTCellRegion, v94, *&v199.origin, *&v199.size);
              v113 = [TSTConcurrentCellIterator alloc];
              v115 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v113, v114, v62, v112, 10, 0x400000);
              v194[0] = MEMORY[0x277D85DD0];
              v194[1] = 3221225472;
              v194[2] = sub_2216F7AC8;
              v194[3] = &unk_278464BC8;
              v195 = v221;
              v190[0] = MEMORY[0x277D85DD0];
              v190[1] = 3221225472;
              v190[2] = sub_22140FD48;
              v190[3] = &unk_278464BF0;
              v191 = v165;
              v192 = v167;
              selfCopy = self;
              v189[0] = MEMORY[0x277D85DD0];
              v189[1] = 3221225472;
              v189[2] = sub_22140FF1C;
              v189[3] = &unk_278464040;
              v189[4] = self;
              v189[5] = &__p;
              objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v115, v116, v194, v190, v189);
            }
          }

          v188.origin = objc_msgSend_headerColumnRange(v62, v94, v95, v96);
          v188.size = v117;
          if (v69)
          {
            objc_msgSend_uuidsAsVector(v69, v117, v118, v119);
          }

          else
          {
            v185 = 0;
            v186 = 0;
            v187 = 0;
          }

          v123 = objc_msgSend_viewColumnIndexesForUIDs_(v167, v117, &v185, v119);
          if (v185)
          {
            v186 = v185;
            operator delete(v185);
          }

          if (objc_msgSend_count(v123, v120, v121, v122) && TSUCellRect::isValid(&v188))
          {
            v127 = TSUCellRect::columns(&v188);
            v131 = objc_msgSend_firstIndex(v123, v128, v129, v130);
            if (v127 <= v131)
            {
              v127 = v131;
            }

            v132 = TSUCellRect::columns(&v188);
            TSUCellRect::columns(&v188);
            v134 = v133;
            v137 = objc_msgSend_lastIndex(v123, v133, v135, v136);
            v139 = TSUCellRect::rows(&v188);
            if (v137 + 1 < &v134[v132])
            {
              v140 = v137 + 1;
            }

            else
            {
              v140 = &v134[v132];
            }

            v188.origin = sub_22140FB90(v127, (v140 - v127), v139, v138);
            v188.size = v141;
            if (TSUCellRect::isValid(&v188) && (TSUCellRect::isEmpty(&v188) & 1) == 0)
            {
              v142 = objc_autoreleasePoolPush();
              v144 = objc_msgSend_regionFromRange_(TSTCellRegion, v143, *&v188.origin, *&v188.size);
              v145 = [TSTConcurrentCellIterator alloc];
              v147 = objc_msgSend_initWithTableInfo_region_flags_searchFlags_(v145, v146, v62, v144, 10, 0x400000);
              v183[0] = MEMORY[0x277D85DD0];
              v183[1] = 3221225472;
              v183[2] = sub_2216F7B38;
              v183[3] = &unk_278464BC8;
              v184 = v221;
              v179[0] = MEMORY[0x277D85DD0];
              v179[1] = 3221225472;
              v179[2] = sub_22140FF68;
              v179[3] = &unk_278464BF0;
              v180 = v123;
              v181 = v167;
              selfCopy2 = self;
              v178[0] = MEMORY[0x277D85DD0];
              v178[1] = 3221225472;
              v178[2] = sub_22141013C;
              v178[3] = &unk_278464040;
              v178[4] = self;
              v178[5] = &__p;
              objc_msgSend_enumerateConcurrentlyUsingChunkBeginBlock_concurrentBlock_finalBlock_(v147, v148, v183, v179, v178);

              objc_autoreleasePoolPop(v142);
            }
          }

          if (*(*(&__p + 1) + 24) == 1)
          {
            calcEngine = self->_calcEngine;
            v176 = objc_msgSend_tableUID(v62, v124, v125, v126);
            v177 = v150;
            objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v150, &v176, v151);
            objc_msgSend_markCellRefAsDirty_(calcEngine, v152, &v185, v153);
            v154 = self->_calcEngine;
            v176 = objc_msgSend_tableUID(v62, v155, v156, v157);
            v177 = v158;
            objc_msgSend_anyHeaderNameChangedPrecedentForTableUID_(TSCEHauntedOwner, v158, &v176, v159);
            objc_msgSend_markCellRefAsDirty_(v154, v160, &v185, v161);
          }

          _Block_object_dispose(&__p, 8);
        }

        v175[0] = MEMORY[0x277D85DD0];
        v175[1] = 3221225472;
        v175[2] = sub_221410188;
        v175[3] = &unk_27845D920;
        v175[4] = v171;
        objc_msgSend_foreachUuid_(v173, v63, v175, v65);
        v174[0] = MEMORY[0x277D85DD0];
        v174[1] = 3221225472;
        v174[2] = sub_22141019C;
        v174[3] = &unk_27845D920;
        v174[4] = v171;
        objc_msgSend_foreachUuid_(v172, v162, v174, v163);

        _Block_object_dispose(&ownerUID, 8);
        sub_22107C860(&v215, v216);

        sub_2212796F0(&v205, *(&v205 + 1));
      }
    }

    sub_22107C800(&v220, v220._coordsForOwnerUid.__tree_.__end_node_.__left_);
    return;
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
}

- (id)subsetForReferenceName:(id)name limitToTable:(const TSKUIDStruct *)table includePrefixes:(BOOL)prefixes
{
  prefixesCopy = prefixes;
  nameCopy = name;
  v9 = [TSTHeaderNameSubset alloc];
  v11 = objc_msgSend_initWithHeaderNameMgr_limitToTableUID_(v9, v10, self, table);
  objc_msgSend_setIncludesPrefixes_(v11, v12, prefixesCopy, v13);
  if (objc_msgSend_length(nameCopy, v14, v15, v16))
  {
    memset(v42, 0, sizeof(v42));
    v43 = 1065353216;
    v34 = 0;
    v35 = &v34;
    v36 = 0x5812000000;
    v37 = sub_2214104C8;
    v38 = sub_2214104D4;
    v39 = &unk_22188E88F;
    memset(v40, 0, sizeof(v40));
    v41 = 1065353216;
    objc_msgSend_wordFragmentsFromString_savePreserveFlags_(self, v17, nameCopy, 0);
    if (v32 != v33)
    {
      v29 = 80;
      pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
      v21 = v32;
      v22 = v33;
      do
      {
        v23 = objc_msgSend_fragmentEntryForString_(self, v19, *v21, v20, v29);
        v24 = v23;
        if (v23)
        {
          v31 = *(v23 + 40);
          v44 = &v31;
          v25 = sub_22141379C(v42, &v31, &unk_2217E1BE8, &v44);
          os_unfair_lock_lock(v24);
          sub_221278B40(v25 + 3, (v24 + 16), &table->_lower);
          os_unfair_lock_unlock(v24);
        }

        ++v21;
      }

      while (v21 != v22);
      if (prefixesCopy)
      {
        v26 = *(v33 - 1);
        if (v26)
        {
          namePrefixIndex = self->_namePrefixIndex;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = sub_2214104DC;
          v30[3] = &unk_278464C18;
          v30[4] = self;
          v30[5] = &v34;
          v30[6] = table;
          objc_msgSend_enumerateNamesMatchingPrefix_block_(namePrefixIndex, v19, v26, v30);
        }
      }

      pthread_rwlock_unlock((self + v29));
    }

    objc_msgSend_loadSubsetWithExactMatches_prefixMatches_(v11, v18, v42, (v35 + 6), v29);
    v45 = &v32;
    sub_22107C2C0(&v45);
    _Block_object_dispose(&v34, 8);
    sub_221413710(v40);
    sub_221413710(v42);
  }

  return v11;
}

- (TSCECellRefSet)headerCellsMatching:(SEL)matching limitToTable:(id)table includePrefixes:(const TSKUIDStruct *)prefixes
{
  v6 = a6;
  tableCopy = table;
  v11 = objc_msgSend_subsetForReferenceName_limitToTable_includePrefixes_(self, v10, tableCopy, prefixes, v6);
  v13 = v11;
  if (v6)
  {
    if (v11)
    {
      objc_msgSend_headerCellsMatchingPrefix_(v11, tableCopy, tableCopy, v12);
      goto LABEL_7;
    }
  }

  else if (v11)
  {
    objc_msgSend_headerCellsExactlyMatching_(v11, tableCopy, tableCopy, v12);
    goto LABEL_7;
  }

  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
LABEL_7:

  return result;
}

- (TSCECellRefSet)allHeaderCellRefsLimitedToTable:(SEL)table
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = sub_2214071F4;
  v15 = sub_221407200;
  v16 = &unk_22188E88F;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v10._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  v10._rowsPerColumn.__tree_.__size_ = 0;
  v10._rectRepresentation.origin = 0;
  v10._rectRepresentation.size = 0;
  v10._rowsPerColumn.__tree_.__begin_node_ = &v10._rowsPerColumn.__tree_.__end_node_;
  pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
  for (i = self->_fragPrecedentsUsedByCellRef.__table_.__first_node_.__next_; i; i = *i)
  {
    if (a4->_lower == *(i + 6) && a4->_upper == *(i + 7) || *a4 == 0)
    {
      TSCECellCoordSet::addCellCoords(&v10, (i + 64));
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221410874;
  v9[3] = &unk_278464C40;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = a4;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v10, v9);
  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  sub_221279358(v12 + 6, self->_calcEngine, retstr);
  sub_22107C860(&v10._rowsPerColumn, v10._rowsPerColumn.__tree_.__end_node_.__left_);
  _Block_object_dispose(&v11, 8);
  sub_2212796F0(&v17, v18[0]);
  return result;
}

- (int)registerWithCalcEngine:(id)engine
{
  selfCopy = self;
  objc_storeStrong(&self->_calcEngine, engine);
  engineCopy = engine;
  v8 = 200;
  LODWORD(selfCopy) = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(selfCopy->_calcEngine, v6, selfCopy->_ownerUID._lower, selfCopy->_ownerUID._upper, selfCopy, 0, 0, 0, v8);

  return selfCopy;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  atCopy = at;
  engineCopy = engine;
  if (objc_msgSend_isClosing(self, v9, v10, v11))
  {
    v15 = options.var0 & 0x5F | 0x20;
LABEL_15:
    v27 = 0x80;
    goto LABEL_16;
  }

  needsTileSplittingPrecedent = self->_needsTileSplittingPrecedent;
  v18 = at.row == needsTileSplittingPrecedent.row;
  v17 = (*&needsTileSplittingPrecedent ^ *&at) & 0x101FFFF00000000;
  v18 = v18 && v17 == 0;
  if (!v18)
  {
    pthread_rwlock_rdlock(&self->_headerNameMgrReadWriteLock);
    v19 = sub_221087F14(&self->_headerPerTablePrecedentToTableUID.__table_.__bucket_list_.__ptr_, &atCopy);
    if (v19)
    {
      v67 = *(v19 + 3);
      pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
      objc_msgSend_p_processWorkForTable_(self, v20, &v67, v21);
    }

    else
    {
      pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
    }

    goto LABEL_10;
  }

  if (!objc_msgSend_count(self->_tilesToConsiderSplitting, v12, v13, v14))
  {
LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  objc_msgSend_willModify(self, v22, v23, v24);
  pthread_rwlock_wrlock(&self->_headerNameMgrReadWriteLock);
  *&v67 = 0;
  if (objc_msgSend_count(self->_tilesToConsiderSplitting, v30, v31, v32))
  {
    v36 = objc_msgSend_anyObject(self->_tilesToConsiderSplitting, v33, v34, v35);
    objc_msgSend_removeObject_(self->_tilesToConsiderSplitting, v37, v36, v38);
    v40 = objc_msgSend_findTileForString_findClosest_foundAtOffset_(self, v39, v36, 0, &v67);
    v44 = v40;
    if (v40)
    {
      v45 = objc_msgSend_splitTile(v40, v41, v42, v43);
      v68 = v45;
      if (v45)
      {
        sub_22140CC6C(&self->_nameFragmentTiles, &self->_nameFragmentTiles.__begin_[v67 + 1], &v68);
        if (objc_msgSend_count(v44, v46, v47, v48) >= 0xC351)
        {
          tilesToConsiderSplitting = self->_tilesToConsiderSplitting;
          v53 = objc_msgSend_firstFragment(v44, v49, v50, v51);
          objc_msgSend_addObject_(tilesToConsiderSplitting, v54, v53, v55);
        }

        v59 = objc_msgSend_count(v68, v49, v50, v51);
        v45 = v68;
        if (v59 >= 0xC351)
        {
          v60 = self->_tilesToConsiderSplitting;
          v61 = objc_msgSend_firstFragment(v68, v56, v57, v58);
          objc_msgSend_addObject_(v60, v62, v61, v63);

          v45 = v68;
        }
      }
    }
  }

  else
  {
    v44 = 0;
    v36 = 0;
  }

  pthread_rwlock_unlock(&self->_headerNameMgrReadWriteLock);
  v25 = objc_msgSend_count(self->_tilesToConsiderSplitting, v64, v65, v66) != 0;

LABEL_11:
  isClosing = objc_msgSend_isClosing(self, v22, v23, v24, v67);
  v27 = 0;
  if ((v25 | isClosing))
  {
    v28 = 32;
  }

  else
  {
    v28 = 0;
  }

  v15 = v28 | options.var0 & 0x5F;
  if (isClosing)
  {
    goto LABEL_15;
  }

LABEL_16:

  return (v27 | v15);
}

- (void)writeResultsForCalcEngine:(id)engine
{
  engineCopy = engine;
  objc_msgSend_waitForQueueToDrain(self, v5, v6, v7);
  objc_msgSend_willModify(self, v8, v9, v10);
  begin = self->_removeFormulasDuringWritePhase.__begin_;
  end = self->_removeFormulasDuringWritePhase.__end_;
  if (begin != end)
  {
    do
    {
      calcEngine = self->_calcEngine;
      coordinate = begin->coordinate;
      tableUID = begin->_tableUID;
      objc_msgSend_removeFormulaAt_inOwner_(calcEngine, v11, &coordinate, &tableUID);
      ++begin;
    }

    while (begin != end);
    begin = self->_removeFormulasDuringWritePhase.__begin_;
  }

  self->_removeFormulasDuringWritePhase.__end_ = begin;
}

- (TSCERangeRef)baseHeaderColumnsForCell:(SEL)cell
{
  *&v18.coordinate.row = a4->_tableUID;
  v7 = objc_msgSend_calcEngine(self, cell, a4, v4);
  v9 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v8, &v18, v7);

  v13 = objc_msgSend_numberOfHeaderColumns(v9, v10, v11, v12);
  if (v13)
  {
    lower = a4->_tableUID._lower;
    upper = a4->_tableUID._upper;
    v18.coordinate = a4->coordinate.row;
    v18._tableUID._lower = lower;
    v18._tableUID._upper = upper;
    v17.coordinate = (*&v18.coordinate | ((v13 - 1) << 32));
    v17._tableUID._lower = lower;
    v17._tableUID._upper = upper;
    TSCERangeRef::TSCERangeRef(retstr, &v18, &v17);
  }

  else
  {
    retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
  }

  return result;
}

- (TSCERangeRef)baseHeaderRowsForCell:(SEL)cell
{
  *&v19.coordinate.row = a4->_tableUID;
  v7 = objc_msgSend_calcEngine(self, cell, a4, v4);
  v9 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v8, &v19, v7);

  v13 = objc_msgSend_numberOfHeaderRows(v9, v10, v11, v12);
  if (v13)
  {
    column = a4->coordinate.column;
    lower = a4->_tableUID._lower;
    upper = a4->_tableUID._upper;
    v19.coordinate = (column << 32);
    v19._tableUID._lower = lower;
    v19._tableUID._upper = upper;
    v18.coordinate.row = v13 - 1;
    v18.coordinate.column = column;
    v18._tableUID._lower = lower;
    v18._tableUID._upper = upper;
    TSCERangeRef::TSCERangeRef(retstr, &v19, &v18);
  }

  else
  {
    retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 42) = 0;
  *(self + 43) = 0;
  *(self + 41) = 0;
  *(self + 22) = 0u;
  *(self + 23) = 0u;
  *(self + 96) = 1065353216;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 106) = 1065353216;
  *(self + 27) = 0u;
  *(self + 28) = 0u;
  *(self + 116) = 1065353216;
  *(self + 472) = 0u;
  *(self + 488) = 0u;
  *(self + 126) = 1065353216;
  *(self + 33) = 0u;
  *(self + 34) = 0u;
  *(self + 140) = 1065353216;
  *(self + 77) = 0;
  *(self + 78) = 0;
  *(self + 76) = 0;
  return self;
}

@end