@interface TSTPivotRowColumnOrder
+ (void)initialGroupOrderForGroupBy:(id)by baseLevel:(unsigned __int8)level outAllUids:(void *)uids outBaseUids:(void *)baseUids outSummaryUids:(void *)summaryUids;
- (BOOL)hasValidInfo;
- (BOOL)hasValidUidMap;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenUids:(SEL)uids selectedLevels:(const void *)levels forDimension:(const void *)dimension;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsForDimension:(SEL)dimension;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsFromUids:(SEL)uids forDimension:(const void *)dimension;
- (TSTPivotRowColumnOrder)initWithContext:(id)context;
- (TSTPivotRowColumnOrder)initWithContext:(id)context tableInfo:(id)info rowUids:(const void *)uids columnUids:(const void *)columnUids;
- (TSTPivotRowColumnOrder)initWithTableInfo:(id)info;
- (TSTPivotRowColumnOrder)initWithTableInfo:(id)info rowUids:(const void *)uids columnUids:(const void *)columnUids;
- (TSTTableInfo)tableInfo;
- (const)orderForDimension:(int64_t)dimension;
- (const)setOrderUsingViewOrderForDimension:(int64_t)dimension;
- (id)_groupBy:(BOOL)by;
- (id)copyWithContext:(id)context tableInfo:(id)info;
- (id)sortedArrayFromArray:(id)array forDimension:(int64_t)dimension;
- (id)targetGroupFromIndex:(unsigned int)index minSourceLevel:(unsigned __int8)level templateUID:(TSKUIDStruct *)d forDimension:(int64_t)dimension;
- (unint64_t)_numberOfLevels:(BOOL)levels;
- (unsigned)_maxLevel:(BOOL)level;
- (unsigned)minimumCategoryLevelInRange:(_NSRange)range forDimension:(int64_t)dimension;
- (void)insertUids:(const void *)uids beforeUid:(const TSKUIDStruct *)uid forDimension:(int64_t)dimension;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeUids:(const void *)uids forDimension:(int64_t)dimension;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setOrder:(const void *)order forDimension:(int64_t)dimension;
- (void)setTemporaryOrder:(const void *)order forDimension:(int64_t)dimension;
@end

@implementation TSTPivotRowColumnOrder

- (TSTPivotRowColumnOrder)initWithContext:(id)context tableInfo:(id)info rowUids:(const void *)uids columnUids:(const void *)columnUids
{
  contextCopy = context;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = TSTPivotRowColumnOrder;
  v12 = [(TSTPivotRowColumnOrder *)&v19 initWithContext:contextCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_tableInfo, infoCopy);
    if (infoCopy)
    {
      v14 = [TSTColumnRowUIDMap alloc];
      v16 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v14, v15, contextCopy, columnUids, uids);
      uidMap = v13->_uidMap;
      v13->_uidMap = v16;
    }

    v13->_isRowOrderTemporary = 0;
    v13->_isColumnOrderTemporary = 0;
  }

  return v13;
}

- (TSTPivotRowColumnOrder)initWithTableInfo:(id)info rowUids:(const void *)uids columnUids:(const void *)columnUids
{
  infoCopy = info;
  v12 = objc_msgSend_context(infoCopy, v9, v10, v11);
  v14 = objc_msgSend_initWithContext_tableInfo_rowUids_columnUids_(self, v13, v12, infoCopy, uids, columnUids);

  return v14;
}

- (TSTPivotRowColumnOrder)initWithTableInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_context(infoCopy, v5, v6, v7);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v10 = objc_msgSend_initWithContext_tableInfo_rowUids_columnUids_(self, v9, v8, infoCopy, &v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v10;
}

- (TSTPivotRowColumnOrder)initWithContext:(id)context
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = objc_msgSend_initWithContext_tableInfo_rowUids_columnUids_(self, a2, context, 0, &v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  return v3;
}

- (id)copyWithContext:(id)context tableInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  v8 = [TSTPivotRowColumnOrder alloc];
  v11 = objc_msgSend_initWithContext_(v8, v9, contextCopy, v10);
  objc_storeWeak((v11 + 72), infoCopy);
  v14 = objc_msgSend_copyWithContext_(self->_uidMap, v12, contextCopy, v13);
  v15 = *(v11 + 80);
  *(v11 + 80) = v14;

  return v11;
}

- (id)_groupBy:(BOOL)by
{
  byCopy = by;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v8 = WeakRetained;
  if (byCopy)
  {
    objc_msgSend_groupByForRows(WeakRetained, v5, v6, v7);
  }

  else
  {
    objc_msgSend_groupByForColumns(WeakRetained, v5, v6, v7);
  }
  v9 = ;

  return v9;
}

- (unint64_t)_numberOfLevels:(BOOL)levels
{
  levelsCopy = levels;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v8 = WeakRetained;
  if (levelsCopy)
  {
    v9 = objc_msgSend_numberOfRowLevels(WeakRetained, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_numberOfColumnLevels(WeakRetained, v5, v6, v7);
  }

  v10 = v9;

  return v10;
}

- (unsigned)_maxLevel:(BOOL)level
{
  levelCopy = level;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v8 = WeakRetained;
  if (levelCopy)
  {
    v9 = objc_msgSend_maxRowLevel(WeakRetained, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_maxColumnLevel(WeakRetained, v5, v6, v7);
  }

  v10 = v9;

  return v10;
}

+ (void)initialGroupOrderForGroupBy:(id)by baseLevel:(unsigned __int8)level outAllUids:(void *)uids outBaseUids:(void *)baseUids outSummaryUids:(void *)summaryUids
{
  byCopy = by;
  v15 = objc_msgSend_tableModel(byCopy, v12, v13, v14);
  v19 = objc_msgSend_columnRowUIDMap(v15, v16, v17, v18);
  v20 = [TSTColumnRowUIDMap alloc];
  v24 = objc_msgSend_context(v15, v21, v22, v23);
  v27 = objc_msgSend_initWithContext_(v20, v25, v24, v26);

  sub_2213FB64C(v28, byCopy, 1, level);
  sub_22149C92C(v28, v31, v32, 0, v33, v27, v19, 1u);
  sub_22149C6EC(v28, uids, baseUids, summaryUids, 0, 0, v33, 0, 1u);

  v28[0] = &unk_2834A7E10;
  sub_2210BDEC0(&v30);
  v34 = &v29;
  sub_2213FB81C(&v34);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsFromUids:(SEL)uids forDimension:(const void *)dimension
{
  v8 = *(dimension + 1);
  v9 = *dimension;
  v10 = (v8 - *dimension) >> 4;
  if (v10 > 1)
  {
    result = objc_msgSend_orderedUidsForDimension_(self, v9, a5, v10);
    dimensionCopy = dimension;
    v12 = *dimension;
    v13 = dimensionCopy[1];
    if (v13 != v12)
    {
      memset(v20, 0, sizeof(v20));
      v21 = 1065353216;
      do
      {
        sub_2210C2B00(v20, v12, v12);
        v12 += 16;
      }

      while (v12 != v13);
      begin = retstr->__begin_;
      end = retstr->__end_;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3321888768;
      v18[2] = sub_2213F9F54;
      v18[3] = &unk_2834A7D88;
      sub_2213FB8DC(v19, v20);
      v17 = sub_2213F9E8C(begin, end, v18);
      if (v17 != retstr->__end_)
      {
        retstr->__end_ = v17;
      }

      sub_2210BDEC0(v19);
      return sub_2210BDEC0(v20);
    }
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;

    return sub_221086EBC(retstr, v9, v8, v10);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedUidsForDimension:(SEL)dimension
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v11 = objc_msgSend_baseTableModel(WeakRetained, v8, v9, v10);
  v15 = objc_msgSend_columnRowUIDMap(v11, v12, v13, v14);

  v16 = objc_loadWeakRetained(&self->_tableInfo);
  v20 = objc_msgSend_pivotDataModel(v16, v17, v18, v19);
  v24 = objc_msgSend_columnRowUIDMap(v20, v21, v22, v23);

  v27 = objc_msgSend__groupBy_(self, v25, a4 == 0, v26);
  v30 = objc_msgSend__numberOfLevels_(self, v28, a4 == 0, v29);
  sub_2213FB64C(v64, v27, a4 == 0, v30);
  v31 = &OBJC_IVAR___TSTPivotRowColumnOrder__isColumnOrderTemporary;
  if (!a4)
  {
    v31 = &OBJC_IVAR___TSTPivotRowColumnOrder__isRowOrderTemporary;
  }

  sub_22149C92C(v64, v67, v68, 0, v69, self->_uidMap, v24, (*(&self->super.super.isa + *v31) & 1) == 0);
  v32 = objc_loadWeakRetained(&self->_tableInfo);
  v36 = v32;
  if (a4)
  {
    v37 = objc_msgSend_baseTableModel(v32, v33, v34, v35);
    v63.origin = objc_msgSend_headerColumnRange(v37, v38, v39, v40);
    v63.size = v41;
    v42 = TSUCellRect::columns(&v63);
    if (v15)
    {
      objc_msgSend_columnUIDsForColumnRange_(v15, v43, v42, v43);
      goto LABEL_9;
    }
  }

  else
  {
    v37 = objc_msgSend_baseTableModel(v32, v33, v34, v35);
    __p[0] = objc_msgSend_headerRowRange(v37, v44, v45, v46);
    __p[1] = v47;
    v48 = TSUCellRect::rows(__p);
    if (v15)
    {
      objc_msgSend_rowUIDsForRowRange_(v15, v49, v48, v49);
      goto LABEL_9;
    }
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
LABEL_9:

  sub_22149C6EC(v64, &retstr->__begin_, 0, 0, 0, 0, v69, 0, 1u);
  if (a4)
  {
    v62 = 0;
    v50 = 0uLL;
    *__p = 0u;
  }

  else
  {
    v36 = objc_loadWeakRetained(&self->_tableInfo);
    v37 = objc_msgSend_baseTableModel(v36, v51, v52, v53);
    v63.origin = objc_msgSend_footerRowRange(v37, v54, v55, v56);
    v63.size = v57;
    v58 = TSUCellRect::rows(&v63);
    if (v15)
    {
      objc_msgSend_rowUIDsForRowRange_(v15, v59, v58, v59);
      v50 = *__p;
    }

    else
    {
      v62 = 0;
      v50 = 0uLL;
      *__p = 0u;
    }
  }

  sub_2210F0C88(retstr, retstr->__end_, v50, *(&v50 + 1), (*(&v50 + 1) - v50) >> 4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (!a4)
  {
  }

  v64[0] = &unk_2834A7E10;
  sub_2210BDEC0(&v66);
  __p[0] = &v65;
  sub_2213FB81C(__p);

  return result;
}

- (id)targetGroupFromIndex:(unsigned int)index minSourceLevel:(unsigned __int8)level templateUID:(TSKUIDStruct *)d forDimension:(int64_t)dimension
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Not implemented.", a2, *&index, level, d, dimension, "[TSTPivotRowColumnOrder targetGroupFromIndex:minSourceLevel:templateUID:forDimension:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", 224);
  v6 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTPivotRowColumnOrder targetGroupFromIndex:minSourceLevel:templateUID:forDimension:]", v8);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 224, 1, "Not implemented.");

  TSUCrashBreakpoint();
  abort();
}

- (unsigned)minimumCategoryLevelInRange:(_NSRange)range forDimension:(int64_t)dimension
{
  v4 = dimension == 0;
  if (dimension)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Not implemented for columns.", a2, range.location, range.length, "[TSTPivotRowColumnOrder minimumCategoryLevelInRange:forDimension:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", 290);
    v22 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTPivotRowColumnOrder minimumCategoryLevelInRange:forDimension:]", v24);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotRowColumnOrder.mm", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v25, v28, 290, 1, "Not implemented for columns.");

    TSUCrashBreakpoint();
    abort();
  }

  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v11 = objc_msgSend_indexesForSummaryRows(WeakRetained, v8, v9, v10);
  v14 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v6, v12, v11, v13);

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = -3;
  if (objc_msgSend_count(v14, v15, v16, v17))
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2213FA620;
    v30[3] = &unk_2784649A8;
    v31 = v4;
    v30[4] = self;
    v30[5] = &v32;
    objc_msgSend_enumerateIndexesUsingBlock_(v14, v18, v30, v19);
  }

  v20 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v20;
}

- (id)sortedArrayFromArray:(id)array forDimension:(int64_t)dimension
{
  v59 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v7 = MEMORY[0x277CBEB18];
  v11 = objc_msgSend_count(arrayCopy, v8, v9, v10);
  v14 = objc_msgSend_arrayWithCapacity_(v7, v12, v11, v13);
  if (objc_msgSend_count(arrayCopy, v15, v16, v17))
  {
    if (objc_msgSend_count(arrayCopy, v18, v19, v20) == 1)
    {
      objc_msgSend_addObjectsFromArray_(v14, v21, arrayCopy, v22);
    }

    else
    {
      selfCopy = self;
      dimensionCopy = dimension;
      __p = 0;
      v55 = 0;
      v56 = 0;
      memset(v52, 0, sizeof(v52));
      v53 = 1065353216;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v23 = arrayCopy;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v48, v58, 16);
      if (v28)
      {
        v29 = 0;
        v30 = *v49;
        do
        {
          v31 = 0;
          v32 = v29;
          do
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v23);
            }

            v33 = *(*(&v48 + 1) + 8 * v31);
            v47 = 0uLL;
            *&v47 = objc_msgSend_uidReturn(v33, v25, v26, v27);
            *(&v47 + 1) = v34;
            sub_221083454(&__p, &v47);
            v57 = &v47;
            v29 = v32 + 1;
            *(sub_221287990(v52, &v47, &unk_2217E1B68, &v57) + 8) = v32;
            ++v31;
            ++v32;
          }

          while (v28 != v31);
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v48, v58, 16);
        }

        while (v28);
      }

      objc_msgSend_orderedUidsFromUids_forDimension_(selfCopy, v35, &__p, dimensionCopy);
      v37 = *(&v47 + 1);
      v36 = v47;
      if (v47 != *(&v47 + 1))
      {
        do
        {
          v57 = v36;
          v38 = sub_221287990(v52, v36, &unk_2217E1B68, &v57);
          v41 = objc_msgSend_objectAtIndex_(v23, v39, *(v38 + 8), v40);
          objc_msgSend_addObject_(v14, v42, v41, v43);

          ++v36;
        }

        while (v36 != v37);
        v36 = v47;
      }

      if (v36)
      {
        *(&v47 + 1) = v36;
        operator delete(v36);
      }

      sub_2210BDEC0(v52);
      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }
    }
  }

  return v14;
}

- (BOOL)hasValidInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)hasValidUidMap
{
  v5 = objc_msgSend_numberOfRows(self->_uidMap, a2, v2, v3);
  if (v5)
  {
    LOBYTE(v5) = objc_msgSend_numberOfColumns(self->_uidMap, v6, v7, v8) != 0;
  }

  return v5;
}

- (const)orderForDimension:(int64_t)dimension
{
  uidMap = self->_uidMap;
  if (dimension)
  {
    return objc_msgSend_columnUIDs(uidMap, a2, dimension, v3);
  }

  else
  {
    return objc_msgSend_rowUIDs(uidMap, a2, 0, v3);
  }
}

- (void)setOrder:(const void *)order forDimension:(int64_t)dimension
{
  uidMap = self->_uidMap;
  if (dimension)
  {
    objc_msgSend_replaceColumnsWithUids_(uidMap, a2, order, dimension);
    v6 = &OBJC_IVAR___TSTPivotRowColumnOrder__isColumnOrderTemporary;
  }

  else
  {
    objc_msgSend_replaceRowsWithUids_(uidMap, a2, order, 0);
    v6 = &OBJC_IVAR___TSTPivotRowColumnOrder__isRowOrderTemporary;
  }

  *(&self->super.super.isa + *v6) = 0;
}

- (void)setTemporaryOrder:(const void *)order forDimension:(int64_t)dimension
{
  uidMap = self->_uidMap;
  if (dimension)
  {
    objc_msgSend_replaceColumnsWithUids_(uidMap, a2, order, dimension);
    v6 = &OBJC_IVAR___TSTPivotRowColumnOrder__isColumnOrderTemporary;
  }

  else
  {
    objc_msgSend_replaceRowsWithUids_(uidMap, a2, order, 0);
    v6 = &OBJC_IVAR___TSTPivotRowColumnOrder__isRowOrderTemporary;
  }

  *(&self->super.super.isa + *v6) = 1;
}

- (const)setOrderUsingViewOrderForDimension:(int64_t)dimension
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__groupBy_(self, a2, dimension == 0, v3);
  v7 = -1;
  v41[0] = 0;
  v40[0] = -1;
  for (i = 1; i != 6; ++i)
  {
    v9 = 1 << (i - 1);
    v41[i] = v9;
    v7 &= ~v9;
    v40[i] = v7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v14 = WeakRetained;
  if (dimension)
  {
    v15 = objc_msgSend_columnUIDs(WeakRetained, v11, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_rowUIDs(WeakRetained, v11, v12, v13);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_221086EBC(&v37, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 4);

  v17 = v37;
  v18 = v38;
  v19 = v38 - v37;
  if (v38 == v37)
  {
    goto LABEL_22;
  }

  v20 = v19 >> 4;
  v21 = v19 - 16;
  v22 = -1;
  do
  {
    LOBYTE(__p) = 0;
    v36 = 0;
    isError = objc_msgSend_groupLevelForGroupUid_isBlank_isError_(v6, v16, v37 + v21, &__p, &v36);
    if (__p == 1)
    {
      v24 = isError;
      if ((v41[isError] & v22) != 0)
      {
        v25 = v37 + v21;
        *v25 = 0;
        v25[1] = 0;
      }

      goto LABEL_18;
    }

    if (v36 == 1)
    {
      v26 = v41[isError];
      if ((v26 & v22) != 0)
      {
        v27 = v37 + v21;
        *v27 = 0;
        v27[1] = 0;
      }

      v24 = isError;
      goto LABEL_17;
    }

    if (isError != 255)
    {
      v24 = isError;
      v26 = v41[isError];
LABEL_17:
      v22 &= ~v26;
LABEL_18:
      v22 |= v40[v24];
      goto LABEL_19;
    }

    v28 = v37 + v21;
    *v28 = 0;
    v28[1] = 0;
LABEL_19:
    v21 -= 16;
    --v20;
  }

  while (v20);
  v17 = v37;
  v18 = v38;
LABEL_22:
  __p = 0;
  v34 = 0;
  v35 = 0;
  while (v17 != v18)
  {
    if (*v17 != 0)
    {
      sub_221083454(&__p, v17);
    }

    ++v17;
  }

  objc_msgSend_setOrder_forDimension_(self, v16, &__p, dimension);
  v31 = objc_msgSend_orderForDimension_(self, v29, dimension, v30);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v31;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[306], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = unarchiverCopy;
  if (*(archive + 16))
  {
    v8 = *(archive + 3);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2213FAFB4;
    v12[3] = &unk_27845E0B8;
    v12[4] = self;
    v9 = unarchiverCopy;
    v10 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v11, v8, v10, 0, v12);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, 0xB000200000006, v6);
  v10 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v7, sub_2213FB954, off_2812E4498[306]);

  objc_msgSend_saveToArchive_archiver_(self, v9, v8, v10);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  uidMap = self->_uidMap;
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  v11 = archiverCopy;
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0390](v10);
    *(archive + 3) = v9;
    archiverCopy = v11;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v7, uidMap, v9);
}

- (void)insertUids:(const void *)uids beforeUid:(const TSKUIDStruct *)uid forDimension:(int64_t)dimension
{
  objc_msgSend_willModify(self, a2, uids, uid);
  lower = uid->_lower;
  upper = uid->_upper;
  if (dimension)
  {
    if (*uid == 0 || (upper = objc_msgSend_columnIndexForColumnUID_(self->_uidMap, v9, lower, upper), upper == 0x7FFF))
    {
      upper = objc_msgSend_numberOfColumns(self->_uidMap, v9, lower, upper);
    }

    uidMap = self->_uidMap;

    objc_msgSend_insertColumnsWithUIDs_atIndex_(uidMap, v9, uids, upper);
  }

  else
  {
    if (*uid == 0 || (upper = objc_msgSend_rowIndexForRowUID_(self->_uidMap, v9, lower, upper), upper == 0x7FFFFFFF))
    {
      upper = objc_msgSend_numberOfRows(self->_uidMap, v9, lower, upper);
    }

    v13 = self->_uidMap;

    objc_msgSend_insertRowsWithUIDs_atIndex_(v13, v9, uids, upper);
  }
}

- (void)removeUids:(const void *)uids forDimension:(int64_t)dimension
{
  objc_msgSend_willModify(self, a2, uids, dimension);
  uidMap = self->_uidMap;
  if (dimension)
  {
    v20 = objc_msgSend_columnIndexesForUIDs_(uidMap, v7, uids, v8);
    if (objc_msgSend_count(v20, v10, v11, v12) == (*(uids + 1) - *uids) >> 4)
    {
      objc_msgSend_removeColumnsAtIndexes_(self->_uidMap, v13, v20, v14);
    }
  }

  else
  {
    v20 = objc_msgSend_rowIndexesForUIDs_(uidMap, v7, uids, v8);
    if (objc_msgSend_count(v20, v15, v16, v17) == (*(uids + 1) - *uids) >> 4)
    {
      objc_msgSend_removeRowsAtIndexes_(self->_uidMap, v18, v20, v19);
    }
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenUids:(SEL)uids selectedLevels:(const void *)levels forDimension:(const void *)dimension
{
  selfCopy = self;
  v11 = a6 == 0;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v12 = objc_msgSend__groupBy_(self, uids, v11, dimension);
  LOBYTE(v11) = objc_msgSend__numberOfLevels_(selfCopy, v13, v11, v14);
  LODWORD(selfCopy) = objc_msgSend__maxLevel_(selfCopy, v15, a6 == 0, v16);
  sub_2213FB64C(v28, v12, a6 == 0, v11);
  v17 = [TSCEUIDSet alloc];
  v20 = objc_msgSend_initWithUUIDVector_(v17, v18, levels, v19);
  sub_22149CC78(v28, v20);
  sub_22149CD08(v28);
  for (i = selfCopy; i; --i)
  {
    v21 = sub_22122DECC(dimension, &i);
    v22 = v21;
    if (!v21 || *(v21 + 5) < 1)
    {
      break;
    }

    sub_22149CD0C(v28, i, &__p);
    v23 = (v26 - __p) >> 4;
    if (v23 != *(v22 + 5))
    {
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      break;
    }

    sub_22133594C(retstr, retstr->__end_, __p, v26, v23);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }

  v28[0] = &unk_2834A7E10;
  sub_2210BDEC0(v30);
  __p = &v29;
  sub_2213FB81C(&__p);

  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end