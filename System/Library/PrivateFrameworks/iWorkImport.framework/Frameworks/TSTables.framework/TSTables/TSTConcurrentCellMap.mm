@interface TSTConcurrentCellMap
+ (id)concurrentCellMapWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range repeatCellVectorPattern:(const void *)pattern patternDirection:(int64_t)direction uidBased:(BOOL)based affectsCellBorders:(BOOL)borders;
- (BOOL)hasCells;
- (BOOL)hasMultipleCells;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedColumnUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedRowUIDs;
- (TSTConcurrentCellMap)initWithContext:(id)context uidBased:(BOOL)based affectsCellBorders:(BOOL)borders;
- (id).cxx_construct;
- (id)affectedBaseColumnAndRowIndexes;
- (id)cellRegionWithTableInfo:(id)info;
- (id)cellRegionWithTableInfo:(id)info passingTest:(id)test;
- (id)changeDescriptorsForTable:(id)table;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)cellCount;
- (vector<TSKUIDStructTract,)cellUIDRanges;
- (vector<TSUViewCellRect,)viewCellRects;
- (void)accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock;
- (void)addHeadMergeAction:(id)action;
- (void)addMergeAction:(id)action;
- (void)addMergeActions:(id)actions;
- (void)appendCellList:(id)list;
- (void)appendCellLists:(id)lists;
- (void)clearDataListIDs;
- (void)clearMerges;
- (void)convertToInverseCellMap;
- (void)convertToUuidBasedCellMapUsingTableInfo:(id)info pruneCategorizedCells:(BOOL)cells;
- (void)enumerateCellsAddedAndRemovedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateCellsAddedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateColumnCellCountDiffUsingBlock:(id)block;
- (void)enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)block;
- (void)enumerateRowCellCountDiffUsingBlock:(id)block;
- (void)enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block;
- (void)enumerateSeriallyUsingBlock:(id)block;
- (void)gatherRowState:(id)state;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_cacheRowColumnUIDs;
- (void)p_enumerateCellsAddedAndRemovedForFormatsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)block;
- (void)pushInverseMergeAction:(id)action;
- (void)saveToArchiver:(id)archiver;
- (void)setCachedColumnUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds;
- (void)setCachedRowUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds;
- (void)updateDataListsConcurrentlyUsingCommentStorageBlock:(id)block conditionalStyleSetBlock:(id)setBlock controlCellSpecBlock:(id)specBlock formulaBlock:(id)formulaBlock formulaErrorBlock:(id)errorBlock importWarningSetBlock:(id)warningSetBlock richTextBlock:(id)textBlock stringBlock:(id)self0 styleBlock:(id)self1 customFormatBlock:(id)self2 formatBlock:(id)self3;
- (void)willApplyToTable:(id)table;
- (void)willApplyToTableModel:(id)model;
@end

@implementation TSTConcurrentCellMap

- (TSTConcurrentCellMap)initWithContext:(id)context uidBased:(BOOL)based affectsCellBorders:(BOOL)borders
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = TSTConcurrentCellMap;
  v12 = [(TSTConcurrentCellMap *)&v16 initWithContext:contextCopy];
  if (v12)
  {
    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11);
    cellLists = v12->_cellLists;
    v12->_cellLists = v13;

    v12->_uidBased = based;
    v12->_mayModifyFormulasInCells = 1;
    v12->_mayModifyValuesReferencedByFormulas = 1;
    v12->_skipDirtyingRanges = 0;
    v12->_affectsCellBorders = borders;
    v12->_shouldResetSpillFormulas = 1;
  }

  return v12;
}

+ (id)concurrentCellMapWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range repeatCellVectorPattern:(const void *)pattern patternDirection:(int64_t)direction uidBased:(BOOL)based affectsCellBorders:(BOOL)borders
{
  bordersCopy = borders;
  basedCopy = based;
  contextCopy = context;
  v14 = [TSTCellUIDRegion alloc];
  v17 = objc_msgSend_initWithCellUIDRange_(v14, v15, range, v16);
  v43 = v17;
  v21 = objc_msgSend_cellCount(v17, v18, v19, v20);
  if (v17)
  {
    objc_msgSend_rowBasedSubRangesOfCellCount_(v17, v22, v21 >> 7, v23);
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
  }

  v24 = [TSTConcurrentCellMap alloc];
  v26 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v24, v25, contextCopy, basedCopy, bordersCopy);
  v27 = v57;
  v28 = v58;
  if (direction)
  {
    if (v57 != v58)
    {
      v29 = 0;
      do
      {
        v30 = (*pattern + 8 * v29);
        v31 = *(v27 + 32) - *(v27 + 24);
        memset(v50, 0, sizeof(v50));
        sub_22116C7FC(v50, v30, (v30 + (v31 >> 1)), v31 >> 4);
        v32 = *(v27 + 24);
        v33 = *(v27 + 32);
        v45 = 0;
        v46 = 0;
        v44 = 0;
        sub_221086EBC(&v44, *v27, *(v27 + 8), (*(v27 + 8) - *v27) >> 4);
        __p = 0;
        v48 = 0;
        v49 = 0;
        sub_221086EBC(&__p, *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 4);
        v37 = objc_msgSend_cellListWithContext_cellUIDRange_repeatCellVectorPattern_patternDirection_(TSTConcurrentCellList, v34, contextCopy, &v44, v50, 1);
        if (__p)
        {
          v48 = __p;
          operator delete(__p);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        objc_msgSend_appendCellList_(v26, v35, v37, v36);
        v29 += (v33 - v32) >> 4;

        v60 = v50;
        sub_22107C2C0(&v60);
        v27 += 48;
      }

      while (v27 != v28);
    }
  }

  else if (v57 != v58)
  {
    do
    {
      v52 = 0;
      v53 = 0;
      v51 = 0;
      sub_221086EBC(&v51, *v27, *(v27 + 8), (*(v27 + 8) - *v27) >> 4);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      sub_221086EBC(&v54, *(v27 + 24), *(v27 + 32), (*(v27 + 32) - *(v27 + 24)) >> 4);
      v41 = objc_msgSend_cellListWithContext_cellUIDRange_repeatCellVectorPattern_patternDirection_(TSTConcurrentCellList, v38, contextCopy, &v51, pattern, 0);
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      objc_msgSend_appendCellList_(v26, v39, v41, v40);

      v27 += 48;
    }

    while (v27 != v28);
  }

  v50[0] = &v57;
  sub_2210BC30C(v50);

  return v26;
}

- (void)convertToUuidBasedCellMapUsingTableInfo:(id)info pruneCategorizedCells:(BOOL)cells
{
  infoCopy = info;
  if (!self->_uidBased)
  {
    v10 = objc_msgSend_count(self->_cellLists, v6, v7, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22115E36C;
    block[3] = &unk_27845FC00;
    block[4] = self;
    v12 = infoCopy;
    cellsCopy = cells;
    dispatch_apply(v10, 0, block);
  }

  self->_uidBased = 1;
}

- (BOOL)hasCells
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_cellLists;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_hasCells(*(*(&v11 + 1) + 8 * i), v4, v5, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
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

- (BOOL)hasMultipleCells
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_cellLists;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v7)
  {
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v8 += objc_msgSend_cellCount(*(*(&v12 + 1) + 8 * i), v4, v5, v6, v12);
        if (v8 > 1)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
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

- (unint64_t)cellCount
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_cellLists;
  v4 = 0;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v4 += objc_msgSend_cellCount(*(*(&v12 + 1) + 8 * v10++), v5, v6, v7, v12);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v12, v16, 16);
    }

    while (v8);
  }

  return v4;
}

- (vector<TSUViewCellRect,)viewCellRects
{
  v44 = *MEMORY[0x277D85DE8];
  if (self->_uidBased)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTConcurrentCellMap viewCellRects]", v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 261, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v16 = objc_msgSend_count(self->_cellLists, a3, v3, v4);
  sub_221083368(retstr, v16);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = self->_cellLists;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v39, v43, 16);
  if (v22)
  {
    v23 = *v40;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = objc_msgSend_viewCellRect(*(*(&v39 + 1) + 8 * i), v19, v20, v21, v39);
        v26 = v19;
        var1 = retstr->var1;
        var2 = retstr->var2;
        if (var1 >= var2)
        {
          v30 = var1 - retstr->var0;
          v31 = v30 + 1;
          if ((v30 + 1) >> 60)
          {
            sub_22107C148();
          }

          v32 = var2 - retstr->var0;
          if (v32 >> 3 > v31)
          {
            v31 = v32 >> 3;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF0)
          {
            v33 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_221086F74(retstr, v33);
          }

          v34 = (16 * v30);
          *v34 = v25;
          v34[1] = v26;
          v29 = (16 * v30 + 16);
          v35 = retstr->var1 - retstr->var0;
          v36 = (16 * v30 - v35);
          memcpy(v36, retstr->var0, v35);
          var0 = retstr->var0;
          retstr->var0 = v36;
          retstr->var1 = v29;
          retstr->var2 = 0;
          if (var0)
          {
            operator delete(var0);
          }
        }

        else
        {
          var1->_rect.origin = v25;
          var1->_rect.size = v19;
          v29 = var1 + 1;
        }

        retstr->var1 = v29;
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v39, v43, 16);
    }

    while (v22);
  }

  return result;
}

- (vector<TSKUIDStructTract,)cellUIDRanges
{
  v37 = *MEMORY[0x277D85DE8];
  if (!self->_uidBased)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTConcurrentCellMap cellUIDRanges]", v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 272, 0, "can't use celluid interface with cellid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v16 = objc_msgSend_count(self->_cellLists, a3, v3, v4);
  sub_22115ECD8(&retstr->__begin_, v16);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->_cellLists;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v32, v36, 16);
  if (v22)
  {
    v23 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v32 + 1) + 8 * i);
        if (v25)
        {
          objc_msgSend_cellUIDRange(v25, v19, v20, v21);
        }

        else
        {
          memset(__p, 0, sizeof(__p));
          *v30 = 0u;
        }

        end = retstr->__end_;
        if (end >= retstr->__cap_)
        {
          v27 = sub_22116C87C(retstr, v30);
          v28 = __p[1];
          retstr->__end_ = v27;
          if (v28)
          {
            __p[2] = v28;
            operator delete(v28);
          }
        }

        else
        {
          end->_colIdList.__cap_ = 0;
          end->_rowIdList.__begin_ = 0;
          end->_colIdList.__begin_ = 0;
          end->_colIdList.__end_ = 0;
          *&end->_colIdList.__begin_ = *v30;
          end->_colIdList.__cap_ = __p[0];
          v30[0] = 0;
          v30[1] = 0;
          __p[0] = 0;
          end->_rowIdList.__end_ = 0;
          end->_rowIdList.__cap_ = 0;
          *&end->_rowIdList.__begin_ = *&__p[1];
          end->_rowIdList.__cap_ = __p[3];
          memset(&__p[1], 0, 24);
          retstr->__end_ = end + 1;
        }

        if (v30[0])
        {
          v30[1] = v30[0];
          operator delete(v30[0]);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v32, v36, 16);
    }

    while (v22);
  }

  return result;
}

- (void)p_cacheRowColumnUIDs
{
  selfCopy2 = self;
  v53 = *MEMORY[0x277D85DE8];
  if (!self->_uidBased)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellMap p_cacheRowColumnUIDs]", v2);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 283, 0, "can't use celluid interface with cellid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    selfCopy2 = self;
  }

  p_cachedRowUIDs = &selfCopy2->_cachedRowUIDs;
  if (selfCopy2->_cachedRowUIDs.__begin_ == selfCopy2->_cachedRowUIDs.__end_ || selfCopy2->_cachedColumnUIDs.__begin_ == selfCopy2->_cachedColumnUIDs.__end_)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = selfCopy2->_cellLists;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v48, v52, 16);
    v43 = selfCopy2;
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = *v49;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(*(&v48 + 1) + 8 * i);
          if (v20)
          {
            if (v24)
            {
              objc_msgSend_cellUIDRange(*(*(&v48 + 1) + 8 * i), v16, v17, v18);
            }

            else
            {
              *__p = 0u;
              v47 = 0u;
              *v45 = 0u;
            }

            objc_msgSend_addUuidsFromVector_(v20, v16, &__p[1], v18, v43);
            if (__p[1])
            {
              *&v47 = __p[1];
              operator delete(__p[1]);
            }

            if (v45[0])
            {
              v45[1] = v45[0];
              operator delete(v45[0]);
            }

            if (v24)
            {
              objc_msgSend_cellUIDRange(v24, v29, v30, v31);
            }

            else
            {
              *__p = 0u;
              v47 = 0u;
              *v45 = 0u;
            }

            objc_msgSend_addUuidsFromVector_(v21, v29, v45, v31);
            if (__p[1])
            {
              *&v47 = __p[1];
              operator delete(__p[1]);
            }

            if (v45[0])
            {
              v45[1] = v45[0];
              operator delete(v45[0]);
            }
          }

          else
          {
            v28 = [TSCEMutableUIDSet alloc];
            if (v24)
            {
              objc_msgSend_cellUIDRange(v24, v25, v26, v27);
            }

            else
            {
              *__p = 0u;
              v47 = 0u;
              *v45 = 0u;
            }

            v20 = objc_msgSend_initWithUUIDVector_(v28, v25, &__p[1], v27, v43);
            if (__p[1])
            {
              *&v47 = __p[1];
              operator delete(__p[1]);
            }

            if (v45[0])
            {
              v45[1] = v45[0];
              operator delete(v45[0]);
            }

            v35 = [TSCEMutableUIDSet alloc];
            if (v24)
            {
              objc_msgSend_cellUIDRange(v24, v32, v33, v34);
            }

            else
            {
              *__p = 0u;
              v47 = 0u;
              *v45 = 0u;
            }

            v36 = objc_msgSend_initWithUUIDVector_(v35, v32, v45, v34);

            if (__p[1])
            {
              *&v47 = __p[1];
              operator delete(__p[1]);
            }

            if (v45[0])
            {
              v45[1] = v45[0];
              operator delete(v45[0]);
            }

            v21 = v36;
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v48, v52, 16);
      }

      while (v19);

      if (v20)
      {
        objc_msgSend_uuidsAsVector(v20, v37, v38, v39);
LABEL_46:
        begin = p_cachedRowUIDs->__begin_;
        if (p_cachedRowUIDs->__begin_)
        {
          p_cachedRowUIDs->__end_ = begin;
          operator delete(begin);
          p_cachedRowUIDs->__begin_ = 0;
          p_cachedRowUIDs->__end_ = 0;
          p_cachedRowUIDs->__cap_ = 0;
        }

        *&p_cachedRowUIDs->__begin_ = *v45;
        p_cachedRowUIDs->__cap_ = __p[0];
        if (v21)
        {
          objc_msgSend_uuidsAsVector(v21, v37, v38, v39);
        }

        else
        {
          v45[0] = 0;
          v45[1] = 0;
          __p[0] = 0;
        }

        p_cachedColumnUIDs = &v43->_cachedColumnUIDs;
        v42 = v43->_cachedColumnUIDs.__begin_;
        if (v42)
        {
          v43->_cachedColumnUIDs.__end_ = v42;
          operator delete(v42);
          p_cachedColumnUIDs->__begin_ = 0;
          v43->_cachedColumnUIDs.__end_ = 0;
          v43->_cachedColumnUIDs.__cap_ = 0;
        }

        *&p_cachedColumnUIDs->__begin_ = *v45;
        v43->_cachedColumnUIDs.__cap_ = __p[0];

        return;
      }
    }

    else
    {

      v21 = 0;
    }

    v20 = 0;
    v45[0] = 0;
    v45[1] = 0;
    __p[0] = 0;
    goto LABEL_46;
  }
}

- (void)accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock
{
  cellLists = self->_cellLists;
  v7 = objc_msgSend_count(cellLists, a2, block, usingBlock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22115F32C;
  block[3] = &unk_27845FC28;
  block[5] = usingBlock;
  block[6] = cellLists;
  block[4] = block;
  dispatch_apply(v7, 0, block);
}

- (void)appendCellList:(id)list
{
  listCopy = list;
  isUIDBased = objc_msgSend_isUIDBased(listCopy, v4, v5, v6);
  if (isUIDBased != objc_msgSend_isUIDBased(self, v8, v9, v10))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTConcurrentCellMap appendCellList:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 324, 0, "cell list uid state doesn't match cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  cellLists = self->_cellLists;
  if (cellLists)
  {
    objc_msgSend_addObject_(cellLists, v11, listCopy, v12);
  }

  else
  {
    v23 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v11, listCopy, v12);
    v24 = self->_cellLists;
    self->_cellLists = v23;
  }
}

- (void)appendCellLists:(id)lists
{
  listsCopy = lists;
  if (objc_msgSend_count(listsCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_firstObject(listsCopy, v7, v8, v9);
    isUIDBased = objc_msgSend_isUIDBased(v10, v11, v12, v13);
    v18 = objc_msgSend_isUIDBased(self, v15, v16, v17);

    if (isUIDBased != v18)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTConcurrentCellMap appendCellLists:]", v9);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 333, 0, "cell list uid state doesn't match cell map");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }
  }

  cellLists = self->_cellLists;
  if (cellLists)
  {
    objc_msgSend_addObjectsFromArray_(cellLists, v7, listsCopy, v9);
  }

  else
  {
    v29 = objc_msgSend_mutableCopy(listsCopy, v7, v8, v9);
    v30 = self->_cellLists;
    self->_cellLists = v29;
  }
}

- (id)changeDescriptorsForTable:(id)table
{
  v73 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7);
  v61 = objc_msgSend_cellRegionWithTableInfo_(self, v8, tableCopy, v9);
  v11 = objc_msgSend_changeDescriptorWithType_cellRegion_(TSTChangeDescriptor, v10, 37, v61);
  objc_msgSend_addObject_(v63, v12, v11, v13);

  v14 = v61;
  v18 = objc_msgSend_affectsCellBorders(self, v15, v16, v17);
  v21 = v14;
  if (v18)
  {
    v22 = objc_msgSend_gatherer(TSTCellRegionGatherer, v19, v20, v14);
    v23 = v14;
    v27 = objc_msgSend_cellRanges(v23, v24, v25, v26);
    __p = 0;
    v70 = 0;
    v71 = 0;
    sub_22116C9DC(&__p, *v27, *(v27 + 8), (*(v27 + 8) - *v27) >> 4);
    v31 = __p;
    v32 = v70;
    if (__p != v70)
    {
      do
      {
        v68 = *v31;
        TSUCellRect::inset();
        objc_msgSend_addRange_(v22, v33, v68, *(&v68 + 1));
        ++v31;
      }

      while (v31 != v32);
    }

    v34 = objc_msgSend_gatheredCellRegion(v22, v28, v29, v30);

    if (__p)
    {
      v70 = __p;
      operator delete(__p);
    }

    v21 = v34;
  }

  v62 = v21;
  v35 = objc_msgSend_changeDescriptorWithType_strokeRegion_(TSTChangeDescriptor, v19, 32, v21);
  objc_msgSend_addObject_(v63, v36, v35, v37);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v41 = objc_msgSend_mergeActions(self, v38, v39, v40);
  v43 = 0;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v64, v72, 16);
  if (v46)
  {
    v47 = *v65;
    do
    {
      v48 = 0;
      v49 = v43;
      do
      {
        if (*v65 != v47)
        {
          objc_enumerationMutation(v41);
        }

        v50 = objc_msgSend_cellRegionForTable_(*(*(&v64 + 1) + 8 * v48), v44, tableCopy, v45);
        v43 = objc_msgSend_region_addingRegion_(TSTCellRegion, v51, v49, v50);

        ++v48;
        v49 = v43;
      }

      while (v46 != v48);
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v64, v72, 16);
    }

    while (v46);
  }

  if (objc_msgSend_cellCount(v43, v52, v53, v54))
  {
    v56 = objc_msgSend_changeDescriptorWithType_cellRegion_strokeRegion_(TSTChangeDescriptor, v55, 17, v43, v43);
    objc_msgSend_addObject_(v63, v57, v56, v58);
  }

  v59 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v55, v63, v14);

  return v59;
}

- (void)clearDataListIDs
{
  cellLists = self->_cellLists;
  v5 = objc_msgSend_count(cellLists, a2, v2, v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22115FACC;
  block[3] = &unk_27845FC48;
  block[4] = cellLists;
  dispatch_apply(v5, 0, block);
}

- (id)affectedBaseColumnAndRowIndexes
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3);
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v7, v8);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = self->_cellLists;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v35, 16);
  if (v15)
  {
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = objc_msgSend_p_baseColumnIndexes(v18, v12, v13, v14, v31);
        objc_msgSend_addIndexes_(v5, v20, v19, v21);

        v25 = objc_msgSend_p_baseRowIndexes(v18, v22, v23, v24);
        objc_msgSend_addIndexes_(v9, v26, v25, v27);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v31, v35, 16);
    }

    while (v15);
  }

  v29 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v28, v5, v9);

  return v29;
}

- (id)cellRegionWithTableInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_isUIDBased(self, v5, v6, v7))
  {
    v11 = [TSTCellUIDRegion alloc];
    objc_msgSend_cellUIDRanges(self, v12, v13, v14);
    v17 = objc_msgSend_initWithCellUIDRangeVector_(v11, v15, __p, v16);
    v25 = __p;
    sub_2210BC30C(&v25);
    v20 = objc_msgSend_cellRegionFromCellUIDRegion_(infoCopy, v18, v17, v19);
  }

  else
  {
    objc_msgSend_viewCellRects(self, v8, v9, v10);
    v20 = objc_msgSend_regionFromViewCellRectVector_(TSTCellRegion, v21, __p, v22);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return v20;
}

- (id)cellRegionWithTableInfo:(id)info passingTest:(id)test
{
  infoCopy = info;
  testCopy = test;
  if (testCopy)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x4812000000;
    v41 = sub_2211600C4;
    v42 = sub_2211600E8;
    v43 = &unk_22188E88F;
    memset(v44, 0, sizeof(v44));
    v11 = objc_msgSend_count(self->_cellLists, v7, v8, v9);
    sub_221160114(v44, v11);
    v15 = objc_msgSend_count(self->_cellLists, v12, v13, v14);
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = sub_22116019C;
    v33 = &unk_27845FC98;
    selfCopy = self;
    v36 = testCopy;
    v35 = infoCopy;
    v37 = &v38;
    dispatch_apply(v15, 0, &v30);
    v22 = objc_msgSend_gatherer(TSTCellRegionGatherer, v16, v17, v18, v30, v31, v32, v33, selfCopy);
    v23 = v39[6];
    v24 = v39[7];
    while (v23 != v24)
    {
      v25 = *v23;
      objc_msgSend_addRegion_(v22, v26, v25, v27);

      ++v23;
    }

    v28 = objc_msgSend_gatheredCellRegion(v22, v19, v20, v21);

    _Block_object_dispose(&v38, 8);
    v45 = v44;
    sub_22107C2C0(&v45);
  }

  else
  {
    v28 = objc_msgSend_cellRegionWithTableInfo_(self, v7, infoCopy, v9);
  }

  return v28;
}

- (void)enumerateSeriallyUsingBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!self->_uidBased)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap enumerateSeriallyUsingBlock:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 485, 0, "need a celluid based map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (!self->_applyingToTable)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap enumerateSeriallyUsingBlock:]", v5);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 488, 0, "check that willApplyToTable was called already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = self->_cellLists;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v36, v40, 16);
  if (v27)
  {
    v28 = *v37;
    do
    {
      v29 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v36 + 1) + 8 * v29);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_2211607F4;
        v34[3] = &unk_27845FCC0;
        v35 = blockCopy;
        objc_msgSend_p_invokeBlock_(v30, v31, v34, v32);

        ++v29;
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v33, &v36, v40, 16);
    }

    while (v27);
  }
}

- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!self->_applyingToTable)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap p_enumerateNewAndOldCellsSeriallyUsingBlock:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 499, 0, "check that willApplyToTable was called already");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_cellLists;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v23, v27, 16);
  if (v20)
  {
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_p_enumerateNewAndOldCellsSeriallyUsingBlock_(*(*(&v23 + 1) + 8 * v22++), v18, blockCopy, v19, v23);
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v23, v27, 16);
    }

    while (v20);
  }
}

- (void)enumerateCellsAddedAndRemovedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (optionsCopy)
  {
    v18 = objc_msgSend_count(self->_cellLists, v8, v9, v10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221160BA4;
    block[3] = &unk_27845FCE8;
    block[4] = self;
    typeCopy = type;
    v24 = blockCopy;
    dispatch_apply(v18, 0, block);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = self->_cellLists;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v19, v26, 16);
    if (v15)
    {
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v12);
          }

          objc_msgSend_p_enumerateCellsAddedAndRemovedOfType_usingBlock_(*(*(&v19 + 1) + 8 * v17++), v14, type, blockCopy, v19);
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v19, v26, 16);
      }

      while (v15);
    }
  }
}

- (void)enumerateCellsAddedOfType:(unint64_t)type withOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (optionsCopy)
  {
    v18 = objc_msgSend_count(self->_cellLists, v8, v9, v10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221160DEC;
    block[3] = &unk_27845FCE8;
    block[4] = self;
    typeCopy = type;
    v24 = blockCopy;
    dispatch_apply(v18, 0, block);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = self->_cellLists;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v19, v26, 16);
    if (v15)
    {
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v12);
          }

          objc_msgSend_p_enumerateCellsAddedOfType_usingBlock_(*(*(&v19 + 1) + 8 * v17++), v14, type, blockCopy, v19);
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v19, v26, 16);
      }

      while (v15);
    }
  }
}

- (void)p_enumerateCellsAddedAndRemovedForFormatsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (optionsCopy)
  {
    v17 = objc_msgSend_count(self->_cellLists, v6, v7, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221161020;
    block[3] = &unk_27845FD10;
    block[4] = self;
    v23 = blockCopy;
    dispatch_apply(v17, 0, block);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->_cellLists;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v24, 16);
    if (v14)
    {
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_p_enumerateCellsAddedAndRemovedForFormatsUsingBlock_(*(*(&v18 + 1) + 8 * v16++), v12, blockCopy, v13, v18);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v18, v24, 16);
      }

      while (v14);
    }
  }
}

- (void)gatherRowState:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cellLists;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_gatherRowState_(*(*(&v12 + 1) + 8 * v11++), v7, stateCopy, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block
{
  blockCopy = block;
  if (!self->_applyingToTable)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap enumerateRowsOfCellsConcurrentlyUsingBlock:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 559, 0, "willApplyToTable should be called first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  cellLists = self->_cellLists;
  v18 = objc_msgSend_count(cellLists, v4, v5, v6);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_221161330;
  v20[3] = &unk_27845FD38;
  v21 = blockCopy;
  v22 = cellLists;
  v19 = blockCopy;
  dispatch_apply(v18, 0, v20);
}

- (void)updateDataListsConcurrentlyUsingCommentStorageBlock:(id)block conditionalStyleSetBlock:(id)setBlock controlCellSpecBlock:(id)specBlock formulaBlock:(id)formulaBlock formulaErrorBlock:(id)errorBlock importWarningSetBlock:(id)warningSetBlock richTextBlock:(id)textBlock stringBlock:(id)self0 styleBlock:(id)self1 customFormatBlock:(id)self2 formatBlock:(id)self3
{
  blockCopy = block;
  setBlockCopy = setBlock;
  specBlockCopy = specBlock;
  formulaBlockCopy = formulaBlock;
  errorBlockCopy = errorBlock;
  warningSetBlockCopy = warningSetBlock;
  textBlockCopy = textBlock;
  stringBlockCopy = stringBlock;
  styleBlockCopy = styleBlock;
  formatBlockCopy = formatBlock;
  v24 = a13;
  if (!self->_applyingToTable)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]", v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 580, 0, "willApplyToTable should be called first");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2211616C0;
  block[3] = &unk_27845FD88;
  block[4] = self;
  v56 = stringBlockCopy;
  v57 = v24;
  v58 = formulaBlockCopy;
  v59 = styleBlockCopy;
  v60 = errorBlockCopy;
  v34 = styleBlockCopy;
  v35 = textBlockCopy;
  v61 = textBlockCopy;
  v62 = setBlockCopy;
  v63 = blockCopy;
  v64 = warningSetBlockCopy;
  v65 = specBlockCopy;
  v66 = formatBlockCopy;
  v46 = formatBlockCopy;
  v50 = specBlockCopy;
  v48 = warningSetBlockCopy;
  v36 = stringBlockCopy;
  v37 = blockCopy;
  v38 = setBlockCopy;
  v39 = v35;
  v40 = errorBlockCopy;
  v41 = v34;
  v42 = formulaBlockCopy;
  v43 = v24;
  v44 = v36;
  dispatch_apply(0xCuLL, 0, block);
}

- (void)enumerateColumnCellCountDiffUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cellLists;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_enumerateColumnCellCountDiffUsingBlock_(*(*(&v12 + 1) + 8 * v11++), v7, blockCopy, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)enumerateRowCellCountDiffUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cellLists;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_enumerateRowCellCountDiffUsingBlock_(*(*(&v12 + 1) + 8 * v11++), v7, blockCopy, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cellLists;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_enumerateCustomFormatsBeingAddedUsingReplacementBlock_(*(*(&v12 + 1) + 8 * v11++), v7, blockCopy, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)willApplyToTable:(id)table
{
  tableCopy = table;
  if (self->_applyingToTable)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTable:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 667, 0, "applyingToTable already called");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  self->_applyingToTable = 1;
  if (!self->_uidBased)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTable:]", v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 670, 0, "need a uidBased cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  cellLists = self->_cellLists;
  v27 = objc_msgSend_translator(tableCopy, v4, v5, v6);
  if (objc_msgSend_isCategorized(tableCopy, v28, v29, v30))
  {
    isAPivotTable = 1;
  }

  else
  {
    isAPivotTable = objc_msgSend_isAPivotTable(tableCopy, v31, v32, v33);
  }

  v38 = objc_msgSend_baseMap(v27, v31, v32, v33);
  if (isAPivotTable)
  {
    v39 = objc_msgSend_viewMap(v27, v35, v36, v37);
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_msgSend_count(cellLists, v35, v36, v37);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221162C98;
  block[3] = &unk_27845FDB0;
  block[4] = cellLists;
  block[5] = v38;
  block[6] = v39;
  dispatch_apply(v40, 0, block);
}

- (void)willApplyToTableModel:(id)model
{
  modelCopy = model;
  if (self->_applyingToTable)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTableModel:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 687, 0, "applyingToTable already called");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  self->_applyingToTable = 1;
  if (!self->_uidBased)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap willApplyToTableModel:]", v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 690, 0, "need a uidBased cell map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  cellLists = self->_cellLists;
  v27 = objc_msgSend_columnRowUIDMap(modelCopy, v4, v5, v6);
  v31 = objc_msgSend_count(self->_cellLists, v28, v29, v30);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_221162EE0;
  v32[3] = &unk_27845FB10;
  v32[4] = cellLists;
  v32[5] = v27;
  dispatch_apply(v31, 0, v32);
}

- (void)convertToInverseCellMap
{
  if (!self->_applyingToTable)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellMap convertToInverseCellMap]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 702, 0, "willApplyToTable was not called or didApplyToTable called twice");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  cellLists = self->_cellLists;
  v15 = objc_msgSend_count(cellLists, a2, v2, v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_221163090;
  block[3] = &unk_27845FC48;
  block[4] = cellLists;
  dispatch_apply(v15, 0, block);
  objc_storeStrong(&self->_mergeActions, self->_inverseMergeActions);
  inverseMergeActions = self->_inverseMergeActions;
  self->_inverseMergeActions = 0;

  self->_applyingToTable = 0;
}

- (void)addMergeAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    if (!self->_mergeActions)
    {
      v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
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
      v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
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
      objc_msgSend_addObjectsFromArray_(mergeActions, v7, actionsCopy, v9);
    }

    else
    {
      v11 = objc_msgSend_mutableCopy(actionsCopy, v7, v8, v9);
      v12 = self->_mergeActions;
      self->_mergeActions = v11;
    }
  }
}

- (void)pushInverseMergeAction:(id)action
{
  actionCopy = action;
  if (!self->_applyingToTable)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellMap pushInverseMergeAction:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 759, 0, "willApplyToTable should have been called");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (actionCopy)
  {
    if (!self->_inverseMergeActions)
    {
      v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
      inverseMergeActions = self->_inverseMergeActions;
      self->_inverseMergeActions = v16;
    }

    objc_msgSend_verify(actionCopy, v4, v5, v6);
    objc_msgSend_insertObject_atIndex_(self->_inverseMergeActions, v18, actionCopy, 0);
  }
}

- (void)clearMerges
{
  mergeActions = self->_mergeActions;
  self->_mergeActions = 0;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[110], v6);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2211636A8;
  v24[3] = &unk_27845D8D8;
  v24[4] = self;
  v8 = unarchiverCopy;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v8, v10, v7 + 24, v9, 0, v24);

  self->_uidBased = *(v7 + 72);
  v13 = *(v7 + 64);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v7 + 56);
  if (v15)
  {
    v16 = 8 * v15;
    do
    {
      TST::MergeOperationArchive::MergeOperationArchive(v23, *v14);
      v17 = [TSTMergeAction alloc];
      v19 = objc_msgSend_initWithArchive_unarchiver_(v17, v18, v23, v8);
      objc_msgSend_addMergeAction_(self, v20, v19, v21);

      TST::MergeOperationArchive::~MergeOperationArchive(v23);
      ++v14;
      v16 -= 8;
    }

    while (v16);
  }

  self->_mayModifyFormulasInCells = *(v7 + 74);
  self->_mayModifyValuesReferencedByFormulas = *(v7 + 75);
  self->_affectsCellBorders = *(v7 + 76);
  self->_skipDirtyingRanges = *(v7 + 73);
  self->_shouldResetSpillFormulas = *(v7 + 77);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2211636BC;
  v22[3] = &unk_27845E3F8;
  v22[4] = self;
  objc_msgSend_addFinalizeHandler_(v8, v11, v22, v12);
}

- (void)saveToArchiver:(id)archiver
{
  v34 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22116CB58, off_2812E4498[110]);

  v10 = objc_msgSend_cellLists(self, v7, v8, v9);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v11, v10, v6 + 24);

  uidBased = self->_uidBased;
  *(v6 + 16) |= 1u;
  *(v6 + 72) = uidBased;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = self->_mergeActions;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v29, v33, 16);
  if (v16)
  {
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = *(v6 + 64);
        if (!v20)
        {
          goto LABEL_11;
        }

        v21 = *(v6 + 56);
        v22 = *v20;
        if (v21 < *v20)
        {
          *(v6 + 56) = v21 + 1;
          objc_msgSend_saveToArchive_archiver_(v19, v15, *&v20[2 * v21 + 2], archiverCopy, v29);
          goto LABEL_13;
        }

        if (v22 == *(v6 + 60))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 48));
          v20 = *(v6 + 64);
          v22 = *v20;
        }

        *v20 = v22 + 1;
        v23 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(*(v6 + 48));
        v24 = *(v6 + 56);
        v25 = *(v6 + 64) + 8 * v24;
        *(v6 + 56) = v24 + 1;
        *(v25 + 8) = v23;
        objc_msgSend_saveToArchive_archiver_(v19, v26, v23, archiverCopy, v29);
LABEL_13:
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v29, v33, 16);
    }

    while (v16);
  }

  v27 = *(v6 + 16);
  *(v6 + 74) = self->_mayModifyFormulasInCells;
  *(v6 + 75) = self->_mayModifyValuesReferencedByFormulas;
  *(v6 + 76) = self->_affectsCellBorders;
  *(v6 + 73) = self->_skipDirtyingRanges;
  shouldResetSpillFormulas = self->_shouldResetSpillFormulas;
  *(v6 + 16) = v27 | 0x3E;
  *(v6 + 77) = shouldResetSpillFormulas;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_context(self, v9, v10, v11);
  v16 = objc_msgSend_affectsCellBorders(self, v13, v14, v15);
  v18 = objc_msgSend_initWithContext_affectsCellBorders_(v8, v17, v12, v16);

  if (objc_msgSend_count(self->_cellLists, v19, v20, v21))
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x4812000000;
    v59 = sub_221163D44;
    v60 = sub_221163D68;
    v61 = &unk_22188E88F;
    memset(v62, 0, sizeof(v62));
    v25 = objc_msgSend_count(self->_cellLists, v22, v23, v24);
    sub_221163D94(v62, v25);
    cellLists = self->_cellLists;
    v30 = objc_msgSend_count(cellLists, v27, v28, v29);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221163E1C;
    block[3] = &unk_27845FDD8;
    block[4] = &v56;
    block[5] = cellLists;
    block[6] = zone;
    dispatch_apply(v30, 0, block);
    v31 = MEMORY[0x277CBEB18];
    v32 = v57[6];
    v36 = objc_msgSend_cellLists(self, v33, v34, v35);
    v40 = objc_msgSend_count(v36, v37, v38, v39);
    v42 = objc_msgSend_arrayWithObjects_count_(v31, v41, v32, v40);
    objc_msgSend_setCellLists_(v18, v43, v42, v44);

    _Block_object_dispose(&v56, 8);
    v63 = v62;
    sub_22107C2C0(&v63);
  }

  isUIDBased = objc_msgSend_isUIDBased(self, v22, v23, v24);
  objc_msgSend_setUidBased_(v18, v46, isUIDBased, v47);
  if (self->_mergeActions)
  {
    v48 = objc_alloc(MEMORY[0x277CBEB18]);
    v51 = objc_msgSend_initWithArray_(v48, v49, self->_mergeActions, v50);
    objc_msgSend_setMergeActions_(v18, v52, v51, v53);
  }

  return v18;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedRowUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_cachedRowUIDs.__begin_, self->_cachedRowUIDs.__end_, self->_cachedRowUIDs.__end_ - self->_cachedRowUIDs.__begin_);
}

- (void)setCachedRowUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds
{
  p_cachedRowUIDs = &self->_cachedRowUIDs;
  if (p_cachedRowUIDs != ds)
  {
    sub_2210BD068(p_cachedRowUIDs, ds->__begin_, ds->__end_, ds->__end_ - ds->__begin_);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)cachedColumnUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_cachedColumnUIDs.__begin_, self->_cachedColumnUIDs.__end_, self->_cachedColumnUIDs.__end_ - self->_cachedColumnUIDs.__begin_);
}

- (void)setCachedColumnUIDs:(TSKUIDStructVectorTemplate<TSKUIDStruct> *)ds
{
  p_cachedColumnUIDs = &self->_cachedColumnUIDs;
  if (p_cachedColumnUIDs != ds)
  {
    sub_2210BD068(p_cachedColumnUIDs, ds->__begin_, ds->__end_, ds->__end_ - ds->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  return self;
}

@end