@interface TSTColumnRowUIDMap
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (BOOL)writeCellIDsInCellUIDList:(id)list toVector:(void *)vector prunedCellUIDs:(void *)ds;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index;
- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index;
- (TSKUIDStructCoord)cellUIDForCellID:(SEL)d;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range;
- (TSTColumnRowUIDMap)initWithContext:(id)context;
- (TSTColumnRowUIDMap)initWithContext:(id)context columnUIDs:(const void *)ds rowUIDs:(const void *)iDs;
- (TSTColumnRowUIDMap)initWithContext:(id)context tableUUID:(id)d numberOfRows:(unsigned int)rows numberOfColumns:(unsigned int)columns;
- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)d;
- (TSUCellRect)cellRangeForUIDRange:(const void *)range;
- (TSUCellRect)range;
- (_NSRange)columnRangeForUIDs:(const void *)ds;
- (_NSRange)rowRangeForUIDs:(const void *)ds;
- (id).cxx_construct;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)cellRegionForUIDRange:(const void *)range;
- (id)cellTractRefForUIDRectRef:(id)ref;
- (id)columnIndexesForUIDs:(const void *)ds;
- (id)copyOnWriteUIDMapper;
- (id)copyWithContext:(id)context;
- (id)mutableColumnIndexesForUIDs:(const void *)ds;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
- (id)mutableRowIndexesForUIDs:(const void *)ds;
- (id)p_mutableColumnIndexesForUIDSet:(id)set notFoundUIDs:(id)ds;
- (id)p_mutableRowIndexesForUIDSet:(id)set notFoundUIDs:(id)ds;
- (id)rowIndexesForUIDs:(const void *)ds;
- (id)uidRectRefForCellTractRef:(id)ref;
- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d;
- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d;
- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (void)applyMap:(const void *)map toRows:(BOOL)rows;
- (void)convertCellUIDLookupList:(id)list toCellRangeVector:(void *)vector prunedSummaryCellUIDs:(void *)ds;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index;
- (void)incrementVersionCounter;
- (void)insertColumnsWithUIDs:(const void *)ds atIndex:(unsigned __int16)index;
- (void)insertNewColumnsInIndexRange:(_NSRange)range;
- (void)insertNewRowsInIndexRange:(_NSRange)range;
- (void)insertRowsWithUIDs:(const void *)ds atIndex:(unsigned int)index;
- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)removeColumnsAtIndexes:(id)indexes;
- (void)removeRowsAtIndexes:(id)indexes;
- (void)replaceColumnsWithUids:(const void *)uids;
- (void)replaceRowsWithUids:(const void *)uids;
- (void)reset;
- (void)saveToArchiver:(id)archiver;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
@end

@implementation TSTColumnRowUIDMap

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  __p = 0;
  v85 = 0;
  v86 = 0;
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[90], v6);

  sub_22123EA84(&v82, v7 + 16);
  v8 = v82;
  v9 = v83;
  sub_2212876FC(&v93, *(v7 + 64), (*(v7 + 64) + 4 * *(v7 + 56)), *(v7 + 56));
  sub_2212876FC(&v87, *(v7 + 48), (*(v7 + 48) + 4 * *(v7 + 40)), *(v7 + 40));
  v10 = (v9 - v8) >> 4;
  if (v10 != v94 - v93 || v10 != (v88 - v87) >> 1)
  {
    v11 = 0;
LABEL_25:
    v57 = 0;
    goto LABEL_26;
  }

  sub_22123EA84(&v82, v7 + 72);
  v11 = v82;
  v12 = v83;
  sub_221287820(&v90, *(v7 + 120), (*(v7 + 120) + 4 * *(v7 + 112)), *(v7 + 112));
  sub_221287820(&__p, *(v7 + 104), (*(v7 + 104) + 4 * *(v7 + 96)), *(v7 + 96));
  v16 = (v12 - v11) >> 4;
  if (v16 != (v91 - v90) >> 2 || v16 != (v85 - __p) >> 2)
  {
    goto LABEL_25;
  }

  v77 = (v12 - v11) >> 4;
  v78 = unarchiverCopy;
  v18 = v93;
  v17 = v94;
  selfCopy = self;
  v79 = v11;
  if (v94 == v93)
  {
    goto LABEL_14;
  }

  v19 = v10 - 1;
  if (HIDWORD(v19))
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v15);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 107, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
    v19 = 0xFFFFFFFFLL;
    v18 = v93;
    v17 = v94;
  }

  if (v18 == v17)
  {
LABEL_14:
    v38 = v90;
    v37 = v91;
    if (v91 == v90 || ((v77 - 1) >> 32 ? (v68 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v15), v69 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v71), v72 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 122, 0, "Out-of-bounds type assignment was clamped to max"), v72, v69, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76), v39 = 0xFFFFFFFFLL, v38 = v90, v37 = v91, self = selfCopy) : (v39 = v77 - 1), v38 == v37))
    {
LABEL_23:
      self->_versionCounter = 1;
      unarchiverCopy = v78;
      v57 = objc_msgSend__checkStructure(self, v13, v14, v15);
      goto LABEL_26;
    }

    v40 = 0;
    v41 = &OBJC_IVAR___TSCECalculationEngine__rewriteSpecStack;
    while (1)
    {
      v42 = *v38;
      if (*v38 > v39)
      {
        v43 = v39;
        selfCopy2 = self;
        v45 = v41;
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v15);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v49);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 125, 0, "Row index out of bounds: %u > %u", *v38, v43);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
        v42 = *v38;
        v41 = v45;
        self = selfCopy2;
        v11 = v79;
        v39 = v43;
      }

      if (v42 > v39)
      {
        break;
      }

      v55 = &v11[v42];
      v56 = v41;
      sub_221083454(self + v41[222], v55);
      v82 = v55;
      *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v55, &unk_2217E0EFE, &v82) + 8) = v40++;
      ++v38;
      v41 = v56;
      if (v38 == v37)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = &OBJC_IVAR___TSCECalculationEngine__rewriteSpecStack;
    v22 = &OBJC_IVAR___TSCECalculationEngine__rewriteSpecStack;
    v80 = v8;
    while (1)
    {
      v23 = *v18;
      if (v19 < v23)
      {
        v24 = v22;
        v25 = v21;
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTColumnRowUIDMap validatedLoadFromUnarchiver:]", v15);
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v29);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 110, 0, "Column index out of bounds: %u > %u", *v18, v19);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
        v23 = *v18;
        v21 = v25;
        v22 = v24;
        v8 = v80;
        self = selfCopy;
      }

      if (v19 < v23)
      {
        break;
      }

      v35 = &v8[v23];
      sub_221083454(self + v21[220], v35);
      v36 = v22[221];
      v82 = v35;
      *(sub_221260850((&self->super.super.isa + v36), v35, &unk_2217E0EFE, &v82) + 16) = v20++;
      if (++v18 == v17)
      {
        goto LABEL_14;
      }
    }
  }

  v57 = 0;
  unarchiverCopy = v78;
LABEL_26:
  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v11)
  {
    operator delete(v11);
  }

  if (v8)
  {
    operator delete(v8);
  }

  return v57;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_221287BCC, off_2812E4498[90]);

  v49 = 0;
  v50 = 0;
  v48 = 0;
  sub_221086EBC(&v48, self->_columnUidForIndex.__begin_, self->_columnUidForIndex.__end_, self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_);
  v8 = 126 - 2 * __clz((v49 - v48) >> 4);
  if (v49 == v48)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_221287C38(v48, v49, &v46, v9, 1, v7);
  v40 = archiverCopy;
  sub_2212894D0(&v46, self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_);
  v10 = v48;
  v11 = v49;
  if (v48 != v49)
  {
    v12 = 0;
    while (1)
    {
      v43 = v10;
      v13 = *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, v10, &unk_2217E0EFE, &v43) + 16);
      *(v46 + v13) = v12;
      v14 = *(v6 + 32);
      if (!v14)
      {
        goto LABEL_11;
      }

      v15 = *(v6 + 24);
      v16 = *v14;
      if (v15 >= *v14)
      {
        break;
      }

      *(v6 + 24) = v15 + 1;
      v17 = *&v14[2 * v15 + 2];
LABEL_13:
      TSKUIDStruct::saveToMessage(v10, v17);
      v20 = *(v6 + 40);
      if (v20 == *(v6 + 44))
      {
        v21 = v20 + 1;
        sub_2210BBC64((v6 + 40), v20 + 1);
        *(*(v6 + 48) + 4 * v20) = v13;
      }

      else
      {
        *(*(v6 + 48) + 4 * v20) = v13;
        v21 = v20 + 1;
      }

      *(v6 + 40) = v21;
      ++v10;
      ++v12;
      if (v10 == v11)
      {
        goto LABEL_17;
      }
    }

    if (v16 == *(v6 + 28))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 16));
      v14 = *(v6 + 32);
      v16 = *v14;
    }

    *v14 = v16 + 1;
    v17 = MEMORY[0x223DA0360](*(v6 + 16));
    v18 = *(v6 + 24);
    v19 = *(v6 + 32) + 8 * v18;
    *(v6 + 24) = v18 + 1;
    *(v19 + 8) = v17;
    goto LABEL_13;
  }

LABEL_17:
  sub_221289548(&v43, v46, v47, (v6 + 56));
  v44 = 0;
  v45 = 0;
  v43 = 0;
  sub_221086EBC(&v43, self->_rowUidForIndex.__begin_, self->_rowUidForIndex.__end_, self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_);
  v23 = 126 - 2 * __clz((v44 - v43) >> 4);
  if (v44 == v43)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  sub_221287C38(v43, v44, &__p, v24, 1, v22);
  sub_221289624(&__p, self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_);
  v25 = v43;
  v26 = v44;
  if (v43 != v44)
  {
    v27 = 0;
    while (1)
    {
      v51 = v25;
      v28 = *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v25, &unk_2217E0EFE, &v51) + 8);
      *(__p + v28) = v27;
      v29 = *(v6 + 88);
      if (!v29)
      {
        goto LABEL_27;
      }

      v30 = *(v6 + 80);
      v31 = *v29;
      if (v30 >= *v29)
      {
        break;
      }

      *(v6 + 80) = v30 + 1;
      v32 = *&v29[2 * v30 + 2];
LABEL_29:
      TSKUIDStruct::saveToMessage(v25, v32);
      v35 = *(v6 + 96);
      if (v35 == *(v6 + 100))
      {
        v36 = v35 + 1;
        sub_2210BBC64((v6 + 96), v35 + 1);
        *(*(v6 + 104) + 4 * v35) = v28;
      }

      else
      {
        *(*(v6 + 104) + 4 * v35) = v28;
        v36 = v35 + 1;
      }

      *(v6 + 96) = v36;
      v25 += 4;
      ++v27;
      if (v25 == v26)
      {
        goto LABEL_33;
      }
    }

    if (v31 == *(v6 + 84))
    {
LABEL_27:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 72));
      v29 = *(v6 + 88);
      v31 = *v29;
    }

    *v29 = v31 + 1;
    v32 = MEMORY[0x223DA0360](*(v6 + 72));
    v33 = *(v6 + 80);
    v34 = *(v6 + 88) + 8 * v33;
    *(v6 + 80) = v33 + 1;
    *(v34 + 8) = v32;
    goto LABEL_29;
  }

LABEL_33:
  v38 = __p;
  v37 = v42;
  v51 = (v6 + 112);
  if (__p == v42)
  {
    v39 = v40;
    if (__p)
    {
LABEL_37:
      v42 = v38;
      operator delete(v38);
    }
  }

  else
  {
    v39 = v40;
    do
    {
      sub_2212895B0(&v51, v38);
      v38 += 4;
    }

    while (v38 != v37);
    v38 = __p;
    if (__p)
    {
      goto LABEL_37;
    }
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

- (TSTColumnRowUIDMap)initWithContext:(id)context tableUUID:(id)d numberOfRows:(unsigned int)rows numberOfColumns:(unsigned int)columns
{
  columnsCopy = columns;
  contextCopy = context;
  dCopy = d;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  __p = 0;
  v34 = 0;
  v35 = 0;
  if (!dCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTColumnRowUIDMap initWithContext:tableUUID:numberOfRows:numberOfColumns:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 185, 0, "invalid nil value for '%{public}s'", "tableUUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  *&v32 = TSKMakeUIDStructFromNSUUID();
  *(&v32 + 1) = v23;
  v25 = sub_2211A92C8(v31, &v32);
  if (columnsCopy)
  {
    for (i = 0; i < columnsCopy; ++i)
    {
      *&v32 = sub_2211A92FC(v31);
      *(&v32 + 1) = v27;
      sub_221083454(&v36, &v32);
    }
  }

  for (; rows; --rows)
  {
    *&v32 = sub_2211A92FC(v31);
    *(&v32 + 1) = v28;
    sub_221083454(&__p, &v32);
  }

  v29 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(self, v24, contextCopy, &v36, &__p, v25);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  return v29;
}

- (TSTColumnRowUIDMap)initWithContext:(id)context columnUIDs:(const void *)ds rowUIDs:(const void *)iDs
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TSTColumnRowUIDMap;
  v9 = [(TSTColumnRowUIDMap *)&v17 initWithContext:contextCopy];
  if (v9)
  {
    v10 = *ds;
    v11 = *(ds + 1);
    if (*ds != v11)
    {
      v12 = 0;
      do
      {
        sub_221083454(&v9->_columnUidForIndex, v10);
        v18 = v10;
        *(sub_221260850(&v9->_columnIndexForUid.__table_.__bucket_list_.__ptr_, v10++, &unk_2217E0EFE, &v18) + 16) = v12++;
      }

      while (v10 != v11);
    }

    v13 = *iDs;
    v14 = *(iDs + 1);
    if (*iDs != v14)
    {
      v15 = 0;
      do
      {
        sub_221083454(&v9->_rowUidForIndex, v13);
        v18 = v13;
        *(sub_221287990(&v9->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v13++, &unk_2217E0EFE, &v18) + 8) = v15++;
      }

      while (v13 != v14);
    }

    v9->_versionCounter = 1;
  }

  return v9;
}

- (TSTColumnRowUIDMap)initWithContext:(id)context
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(self, a2, context, &v8, &__p);
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

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_columnUIDs(self, v6, v7, v8);
  v13 = objc_msgSend_rowUIDs(self, v10, v11, v12);
  v15 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v5, v14, contextCopy, v9, v13);
  v15[24] = objc_msgSend_versionCounter(self, v16, v17, v18);

  return v15;
}

- (void)incrementVersionCounter
{
  WeakRetained = objc_loadWeakRetained(&self->_copyOnWriteUIDMapper);
  if (WeakRetained)
  {
    objc_msgSend_disconnect(WeakRetained, v3, v4, v5);
  }

  objc_storeWeak(&self->_copyOnWriteUIDMapper, 0);
  versionCounter = self->_versionCounter;
  if (versionCounter + 1 > 1)
  {
    v7 = versionCounter + 1;
  }

  else
  {
    v7 = 1;
  }

  self->_versionCounter = v7;
}

- (id)copyOnWriteUIDMapper
{
  WeakRetained = objc_loadWeakRetained(&self->_copyOnWriteUIDMapper);
  if (!WeakRetained)
  {
    v4 = [TSTColumnRowUIDMapper alloc];
    WeakRetained = objc_msgSend_initWithColumnRowUIDMap_(v4, v5, self, v6);
    objc_storeWeak(&self->_copyOnWriteUIDMapper, WeakRetained);
  }

  return WeakRetained;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  begin = self->_columnUidForIndex.__begin_;
  if (index >= (self->_columnUidForIndex.__end_ - begin))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    p_lower = &begin[index]._lower;
    v5 = *p_lower;
    v6 = p_lower[1];
  }

  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  begin = self->_rowUidForIndex.__begin_;
  if (index >= (self->_rowUidForIndex.__end_ - begin))
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    p_lower = &begin[index]._lower;
    v5 = *p_lower;
    v6 = p_lower[1];
  }

  result._upper = v6;
  result._lower = v5;
  return result;
}

- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d
{
  dCopy = d;
  v3 = sub_2210875C4(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v3)
  {
    return *(v3 + 16);
  }

  else
  {
    return 0x7FFF;
  }
}

- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d
{
  dCopy = d;
  v3 = sub_2210875C4(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v3)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index
{
  if (bytes)
  {
    v6[0] = objc_msgSend_rowUIDForRowIndex_(self, a2, *&index, *&index);
    v6[1] = v5;
    uuid_copy(bytes, v6);
  }
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index
{
  if (bytes)
  {
    v6[0] = objc_msgSend_columnUIDForColumnIndex_(self, a2, index, index);
    v6[1] = v5;
    uuid_copy(bytes, v6);
  }
}

- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  if (!bytes)
  {
    return 0x7FFFFFFF;
  }

  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_rowIndexForRowUID_(self, v4, v5, v4);
}

- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  if (!bytes)
  {
    return 0x7FFF;
  }

  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_columnIndexForColumnUID_(self, v4, v5, v4);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
{
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_2212834C8;
  v26 = sub_2212834EC;
  *__p = 0u;
  v28 = 0u;
  p_columnUidForIndex = &self->_columnUidForIndex;
  v14 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
  if (!objc_msgSend_firstIndex(v6, v8, v9, v10) && objc_msgSend_count(v6, v11, v12, v13) == v14 && objc_msgSend_lastIndex(v6, v11, v12, v13) == v14 - 1)
  {
    if (v23 + 6 != p_columnUidForIndex)
    {
      sub_2210BD068(v23 + 6, *p_columnUidForIndex, self->_columnUidForIndex.__end_, (self->_columnUidForIndex.__end_ - *p_columnUidForIndex) >> 4);
    }
  }

  else
  {
    v15 = objc_msgSend_count(v6, v11, v12, v13);
    if (v15 >= 0x7D0)
    {
      v16 = 2000;
    }

    else
    {
      v16 = v15;
    }

    sub_221083368(v23 + 6, v16);
    if (v14 >= 0x7D0)
    {
      v18 = 2000;
    }

    else
    {
      v18 = v14;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_221283504;
    v21[3] = &unk_2784623E0;
    v21[4] = self;
    v21[5] = &v22;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(v6, v17, 0, v18, 0, v21);
  }

  v19 = v23;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v19[6], v19[7], (v19[7] - v19[6]) >> 4);
  _Block_object_dispose(&v22, 8);
  if (__p[1])
  {
    *&v28 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes
{
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4812000000;
  v25 = sub_2212834C8;
  v26 = sub_2212834EC;
  *__p = 0u;
  v28 = 0u;
  p_rowUidForIndex = &self->_rowUidForIndex;
  v14 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
  if (!objc_msgSend_firstIndex(v6, v8, v9, v10) && objc_msgSend_count(v6, v11, v12, v13) == v14 && objc_msgSend_lastIndex(v6, v11, v12, v13) == v14 - 1)
  {
    if (v23 + 6 != p_rowUidForIndex)
    {
      sub_2210BD068(v23 + 6, *p_rowUidForIndex, self->_rowUidForIndex.__end_, (self->_rowUidForIndex.__end_ - *p_rowUidForIndex) >> 4);
    }
  }

  else
  {
    v15 = objc_msgSend_count(v6, v11, v12, v13);
    if (v15 >= 0x7A1200)
    {
      v16 = 8000000;
    }

    else
    {
      v16 = v15;
    }

    sub_221083368(v23 + 6, v16);
    if (v14 >= 0x7A1200)
    {
      v18 = 8000000;
    }

    else
    {
      v18 = v14;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_221283774;
    v21[3] = &unk_2784623E0;
    v21[4] = self;
    v21[5] = &v22;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(v6, v17, 0, v18, 0, v21);
  }

  v19 = v23;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v19[6], v19[7], (v19[7] - v19[6]) >> 4);
  _Block_object_dispose(&v22, 8);
  if (__p[1])
  {
    *&v28 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSUCellRect)range
{
  v2 = ((self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_) << 28) & 0xFFFFFFFF00000000 | ((self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_) >> 4);
  v3 = 0;
  result.size = v2;
  result.origin = v3;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], range, a4.location, a4.length);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v5, v8, v6);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], range, a4.location, a4.length);
  objc_msgSend_rowUIDsForRowIndexes_(self, v5, v8, v6);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids
{
  v9 = objc_msgSend_mutableColumnIndexesForUIDs_(self, uids, a4, v4);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v6, v9, v7);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids
{
  v9 = objc_msgSend_mutableRowIndexesForUIDs_(self, uids, a4, v4);
  objc_msgSend_rowUIDsForRowIndexes_(self, v6, v9, v7);

  return result;
}

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  v7 = objc_opt_new();
  v8 = v7;
  if (rowsCopy)
  {
    v9 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221283BF0;
    v17[3] = &unk_27845DE60;
    v10 = v18;
    v18[0] = v7;
    v18[1] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(indexesCopy, v11, 0, v9, 0, v17);
  }

  else
  {
    v12 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_221283C10;
    v15[3] = &unk_27845DE60;
    v10 = v16;
    v16[0] = v7;
    v16[1] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(indexesCopy, v13, 0, v12, 0, v15);
  }

  return v8;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  rowsCopy = rows;
  setCopy = set;
  dsCopy = ds;
  if (rowsCopy)
  {
    objc_msgSend_p_mutableRowIndexesForUIDSet_notFoundUIDs_(self, v9, setCopy, dsCopy);
  }

  else
  {
    objc_msgSend_p_mutableColumnIndexesForUIDSet_notFoundUIDs_(self, v9, setCopy, dsCopy);
  }
  v11 = ;

  return v11;
}

- (id)p_mutableColumnIndexesForUIDSet:(id)set notFoundUIDs:(id)ds
{
  setCopy = set;
  dsCopy = ds;
  v16 = 0;
  v17 = &v16;
  v18 = 0x5012000000;
  v19 = sub_221283E58;
  v20 = sub_221283E7C;
  v21 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v22);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221283E84;
  v13[3] = &unk_278462408;
  v13[4] = self;
  v15 = &v16;
  v8 = dsCopy;
  v14 = v8;
  objc_msgSend_foreachUuid_(setCopy, v9, v13, v10);
  v11 = TSUIndexSet::asNSIndexSet((v17 + 6));

  _Block_object_dispose(&v16, 8);
  TSUIndexSet::~TSUIndexSet(&v22);

  return v11;
}

- (id)p_mutableRowIndexesForUIDSet:(id)set notFoundUIDs:(id)ds
{
  setCopy = set;
  dsCopy = ds;
  v16 = 0;
  v17 = &v16;
  v18 = 0x5012000000;
  v19 = sub_221283E58;
  v20 = sub_221283E7C;
  v21 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v22);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221284078;
  v13[3] = &unk_278462408;
  v13[4] = self;
  v15 = &v16;
  v8 = dsCopy;
  v14 = v8;
  objc_msgSend_foreachUuid_(setCopy, v9, v13, v10);
  v11 = TSUIndexSet::asNSIndexSet((v17 + 6));

  _Block_object_dispose(&v16, 8);
  TSUIndexSet::~TSUIndexSet(&v22);

  return v11;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows
{
  v4 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self, a2, set, rows, 0);

  return v4;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  rowsCopy = rows;
  setCopy = set;
  v9 = setCopy;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  if (rowsCopy)
  {
    v25 = 0x7FFFFFFF;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2212842A0;
    v21[3] = &unk_2784613D0;
    v21[4] = self;
    v21[5] = &v22;
    objc_msgSend_foreachUuid_(setCopy, v7, v21, v8);
    v12 = objc_msgSend_rowUIDForRowIndex_(self, v10, *(v23 + 6), v11);
  }

  else
  {
    LOWORD(v25) = 0x7FFF;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_221284304;
    v20[3] = &unk_2784613D0;
    v20[4] = self;
    v20[5] = &v22;
    objc_msgSend_foreachUuid_(setCopy, v7, v20, v8);
    v12 = objc_msgSend_columnUIDForColumnIndex_(self, v14, *(v23 + 12), v15);
  }

  v16 = v12;
  v17 = v13;
  _Block_object_dispose(&v22, 8);

  v18 = v16;
  v19 = v17;
  result._upper = v19;
  result._lower = v18;
  return result;
}

- (id)mutableColumnIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, ds, v3);
  v7 = *(ds + 1) - *ds;
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 4;
    do
    {
      v10 = sub_2210875C4(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, (*ds + 16 * v8));
      if (v10)
      {
        if (v9 <= v8 + 1)
        {
          v12 = v8 + 1;
        }

        else
        {
          v12 = v9;
        }

        v13 = v12 - 1;
        v14 = (*ds + 16 * v8 + 24);
        v15 = *(v10 + 16);
        while (1)
        {
          ++v15;
          if (v8 + 1 >= v9)
          {
            break;
          }

          v16 = v8;
          v17 = v15;
          begin = self->_columnUidForIndex.__begin_;
          if (v15 < (self->_columnUidForIndex.__end_ - begin))
          {
            v19 = &begin[v15];
            if (v19->_lower == *(v14 - 1))
            {
              v20 = *v14;
              v14 += 2;
              ++v8;
              if (v19->_upper == v20)
              {
                continue;
              }
            }
          }

          goto LABEL_14;
        }

        v17 = v15;
        v16 = v13;
LABEL_14:
        objc_msgSend_addIndexesInRange_(v6, v11, *(v10 + 16), v17 - *(v10 + 16));
        v8 = v16;
      }

      ++v8;
    }

    while (v8 < v9);
  }

  return v6;
}

- (id)columnIndexesForUIDs:(const void *)ds
{
  v4 = objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, ds, v3);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_copy(v4, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)mutableRowIndexesForUIDs:(const void *)ds
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, ds, v3);
  v7 = *(ds + 1) - *ds;
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 4;
    do
    {
      v10 = sub_2210875C4(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, (*ds + 16 * v8));
      if (v10)
      {
        v12 = *(v10 + 8);
        if (v9 <= v8 + 1)
        {
          v13 = v8 + 1;
        }

        else
        {
          v13 = v9;
        }

        v14 = v13 - 1;
        v15 = (*ds + 16 * v8 + 24);
        v16 = 1;
        while (1)
        {
          v17 = v16;
          if (v8 + 1 >= v9)
          {
            break;
          }

          v18 = v8;
          v19 = (v12 + v16);
          begin = self->_rowUidForIndex.__begin_;
          if (v19 < self->_rowUidForIndex.__end_ - begin)
          {
            v21 = &begin[v19];
            if (v21->_lower == *(v15 - 1))
            {
              upper = v21->_upper;
              v23 = *v15;
              v15 += 2;
              v16 = v17 + 1;
              ++v8;
              if (upper == v23)
              {
                continue;
              }
            }
          }

          goto LABEL_14;
        }

        v18 = v14;
LABEL_14:
        objc_msgSend_addIndexesInRange_(v6, v11, v12, v17);
        v8 = v18;
      }

      ++v8;
    }

    while (v8 < v9);
  }

  return v6;
}

- (id)rowIndexesForUIDs:(const void *)ds
{
  v4 = objc_msgSend_mutableRowIndexesForUIDs_(self, a2, ds, v3);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_copy(v4, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (_NSRange)columnRangeForUIDs:(const void *)ds
{
  v5 = MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  v7 = objc_msgSend_columnIndexForColumnUID_(self, a2, **ds, *(*ds + 8));
  if (v7 != 0x7FFF)
  {
    v9 = v7;
    v11 = *ds;
    v10 = *(ds + 1);
    if (v11 == v10)
    {
      goto LABEL_8;
    }

    v12 = -v6;
    v13 = v6 + v7;
    while (v13 == objc_msgSend_columnIndexForColumnUID_(self, v8, *v11, v11[1]))
    {
      v11 += 2;
      --v12;
      ++v13;
      if (v11 == v10)
      {
        v6 = -v12;
        goto LABEL_8;
      }
    }
  }

  v9 = *v5;
  v6 = v5[1];
LABEL_8:
  v14 = v9;
  v15 = v6;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)ds
{
  v5 = MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  v7 = objc_msgSend_rowIndexForRowUID_(self, a2, **ds, *(*ds + 8));
  if (v7 != 0x7FFFFFFF)
  {
    v9 = v7;
    v11 = *ds;
    v10 = *(ds + 1);
    if (v11 == v10)
    {
      goto LABEL_8;
    }

    v12 = -v6;
    v13 = v6 + v7;
    while (v13 == objc_msgSend_rowIndexForRowUID_(self, v8, *v11, v11[1]))
    {
      v11 += 2;
      --v12;
      ++v13;
      if (v11 == v10)
      {
        v6 = -v12;
        goto LABEL_8;
      }
    }
  }

  v9 = *v5;
  v6 = v5[1];
LABEL_8:
  v14 = v9;
  v15 = v6;
  result.length = v15;
  result.location = v14;
  return result;
}

- (TSKUIDStructCoord)cellUIDForCellID:(SEL)d
{
  objc_msgSend_columnUIDForColumnIndex_(self, d, a4.column, v4);
  objc_msgSend_rowUIDForRowIndex_(self, v8, *&a4, v9);

  return TSTMakeCellUID(retstr);
}

- (TSUCellCoord)cellIDForCellUID:(TSKUIDStructCoord *)d
{
  lower = d->_column._lower;
  upper = d->_column._upper;
  if (!(lower | upper))
  {
    if (!d->_row._lower && !d->_row._upper)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    upper = 0;
  }

  v7 = objc_msgSend_columnIndexForColumnUID_(self, a2, lower, upper);
  v9 = objc_msgSend_rowIndexForRowUID_(self, v8, d->_row._lower, d->_row._upper);
  if (v7 == 0x7FFF && (d->_column._lower || d->_column._upper))
  {
LABEL_11:
    v7 = 0x7FFFLL;
LABEL_12:
    v9 = 0x7FFFFFFF;
    return (v9 | (v7 << 32));
  }

  if (v9 == 0x7FFFFFFF)
  {
    if (!d->_row._lower && !d->_row._upper)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return (v9 | (v7 << 32));
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 != v5)
  {
    selfCopy = self;
    do
    {
      self = objc_msgSend_columnIndexForColumnUID_(selfCopy, ds, *v4, v4[1]);
      if (self != 0x7FFF)
      {
        sub_221083454(retstr, v4);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return self;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 != v5)
  {
    selfCopy = self;
    do
    {
      self = objc_msgSend_rowIndexForRowUID_(selfCopy, ds, *v4, v4[1]);
      if (self != 0x7FFFFFFF)
      {
        sub_221083454(retstr, v4);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return self;
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)range
{
  v6 = 0x7FFF7FFFFFFFLL;
  v7 = objc_msgSend_columnRangeForUIDs_(self, a2, range, v3);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v7, v11 = v8, v12 = objc_msgSend_rowRangeForUIDs_(self, v8, range + 24, v9), v12 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = 0;
  }

  else
  {
    v6 = sub_221284BC0(v10, v11, v12, v13);
  }

  v15 = v6;
  result.size = v14;
  result.origin = v15;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range
{
  size = a4.size;
  row = a4.origin.row;
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], range, a4.origin.column, a4.size.numberOfColumns);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v9, v8, v10);
  v12 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v11, row, HIDWORD(*&size));
  objc_msgSend_rowUIDsForRowIndexes_(self, v13, v12, v14);
  sub_2210BBBE8(retstr, v17, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  return result;
}

- (id)cellRegionForUIDRange:(const void *)range
{
  v6 = objc_msgSend_columnIndexesForUIDs_(self, a2, range, v3);
  v9 = objc_msgSend_rowIndexesForUIDs_(self, v7, range + 24, v8);
  v11 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v10, v6, v9);

  return v11;
}

- (id)cellTractRefForUIDRectRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (refCopy)
  {
    objc_msgSend_uidRange(refCopy, v5, v6, v7);
  }

  else
  {
    *__p = 0u;
    v31 = 0u;
    *v29 = 0u;
  }

  v9 = objc_msgSend_columnIndexesForUIDs_(self, v5, v29, v7);
  v12 = objc_msgSend_rowIndexesForUIDs_(self, v10, &__p[1], v11);
  v13 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v28, v9);
  MEMORY[0x223D9F7A0](&v27, v12);
  v26[0] = objc_msgSend_tableUID(v8, v14, v15, v16);
  v26[1] = v17;
  v18 = objc_msgSend_initWithColumns_rows_tableUID_(v13, v17, &v28, &v27, v26);
  TSUIndexSet::~TSUIndexSet(&v27);
  TSUIndexSet::~TSUIndexSet(&v28);
  v22 = objc_msgSend_basePreserveFlags(v8, v19, v20, v21);
  objc_msgSend_setPreserveFlags_(v18, v23, v22, v24);

  if (__p[1])
  {
    *&v31 = __p[1];
    operator delete(__p[1]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  return v18;
}

- (id)uidRectRefForCellTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_columns(refCopy, v5, v6, v7);
  v9 = TSUIndexSet::asNSIndexSet(v8);
  v13 = objc_msgSend_rows(refCopy, v10, v11, v12);
  v14 = TSUIndexSet::asNSIndexSet(v13);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v15, v9, v16);
  objc_msgSend_rowUIDsForRowIndexes_(self, v17, v14, v18);
  sub_2210BBBE8(v32, v36, v35);
  v19 = [TSTUIDRectRef alloc];
  v23 = objc_msgSend_tableUID(refCopy, v20, v21, v22);
  v27 = objc_msgSend_preserveFlags(refCopy, v24, v25, v26, v23, v24);
  v29 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v19, v28, 0, &v31, v32, v27);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  return v29;
}

- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  if (range.location != index)
  {
    v28[9] = v4;
    v28[10] = v5;
    length = range.length;
    location = range.location;
    indexCopy = index;
    objc_msgSend_willModify(self, a2, range.location, range.length);
    objc_msgSend_incrementVersionCounter(self, v10, v11, v12);
    if (location <= indexCopy)
    {
      v13 = indexCopy;
    }

    else
    {
      v13 = location + length;
    }

    if (location <= indexCopy)
    {
      v14 = length;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 + location;
    if (location >= indexCopy)
    {
      v16 = indexCopy;
    }

    else
    {
      v16 = location;
    }

    begin = self->_rowUidForIndex.__begin_;
    v18 = self->_rowUidForIndex.__end_ - begin;
    if (v16 < v18)
    {
      end = &begin[v16];
    }

    else
    {
      end = self->_rowUidForIndex.__end_;
    }

    v20 = v15 >= v18;
    v21 = &begin[v15];
    if (v20)
    {
      v22 = self->_rowUidForIndex.__end_;
    }

    else
    {
      v22 = v21;
    }

    if (v13 < v18)
    {
      v23 = &begin[v13];
    }

    else
    {
      v23 = self->_rowUidForIndex.__end_;
    }

    sub_22128969C(end, v22, v23);
    if (v16 < v13)
    {
      v27 = v16;
      do
      {
        v28[0] = &self->_rowUidForIndex.__begin_[v27]._lower;
        *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v28[0], &unk_2217E0EFE, v28) + 8) = v16++;
        ++v27;
      }

      while (v13 != v16);
    }

    objc_msgSend__checkStructure(self, v24, v25, v26);
  }
}

- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  if (range.location != index)
  {
    v28[9] = v4;
    v28[10] = v5;
    length = range.length;
    location = range.location;
    indexCopy = index;
    objc_msgSend_willModify(self, a2, range.location, range.length);
    objc_msgSend_incrementVersionCounter(self, v10, v11, v12);
    if (location <= indexCopy)
    {
      v13 = indexCopy;
    }

    else
    {
      v13 = location + length;
    }

    if (location <= indexCopy)
    {
      v14 = length;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 + location;
    if (location >= indexCopy)
    {
      v16 = indexCopy;
    }

    else
    {
      v16 = location;
    }

    begin = self->_columnUidForIndex.__begin_;
    v18 = self->_columnUidForIndex.__end_ - begin;
    if (v16 < v18)
    {
      end = &begin[v16];
    }

    else
    {
      end = self->_columnUidForIndex.__end_;
    }

    v20 = v15 >= v18;
    v21 = &begin[v15];
    if (v20)
    {
      v22 = self->_columnUidForIndex.__end_;
    }

    else
    {
      v22 = v21;
    }

    if (v13 < v18)
    {
      v23 = &begin[v13];
    }

    else
    {
      v23 = self->_columnUidForIndex.__end_;
    }

    sub_22128969C(end, v22, v23);
    if (v16 < v13)
    {
      v27 = v16;
      do
      {
        v28[0] = &self->_columnUidForIndex.__begin_[v27]._lower;
        *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, v28[0], &unk_2217E0EFE, v28) + 16) = v16++;
        ++v27;
      }

      while (v13 != v16);
    }

    objc_msgSend__checkStructure(self, v24, v25, v26);
  }
}

- (void)removeRowsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_msgSend_incrementVersionCounter(self, v8, v9, v10);
  v11 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_221285664;
  v26[3] = &unk_27845E958;
  v26[4] = self;
  objc_msgSend_enumerateIndexesInRange_options_usingBlock_(indexesCopy, v12, 0, v11, 0, v26);
  v13 = self->_rowUidForIndex.__end_ - self->_rowUidForIndex.__begin_;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_221285688;
  v25[3] = &unk_27845E1D0;
  v25[4] = self;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(indexesCopy, v14, 0, v13, 2, v25);
  Index = objc_msgSend_firstIndex(indexesCopy, v15, v16, v17);
  v22 = Index;
  begin = self->_rowUidForIndex.__begin_;
  if (Index < self->_rowUidForIndex.__end_ - begin)
  {
    v24 = Index;
    do
    {
      v27 = &begin[v24];
      *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, &begin[v24]._lower, &unk_2217E0EFE, &v27) + 8) = v22++;
      begin = self->_rowUidForIndex.__begin_;
      ++v24;
    }

    while (v22 < self->_rowUidForIndex.__end_ - begin);
  }

  objc_msgSend__checkStructure(self, v19, v20, v21);
}

- (void)removeColumnsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_msgSend_incrementVersionCounter(self, v8, v9, v10);
  v11 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2212858B8;
  v26[3] = &unk_27845E958;
  v26[4] = self;
  objc_msgSend_enumerateIndexesInRange_options_usingBlock_(indexesCopy, v12, 0, v11, 0, v26);
  v13 = self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2212858DC;
  v25[3] = &unk_27845E1D0;
  v25[4] = self;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(indexesCopy, v14, 0, v13, 2, v25);
  Index = objc_msgSend_firstIndex(indexesCopy, v15, v16, v17);
  v22 = Index;
  begin = self->_columnUidForIndex.__begin_;
  if (Index < self->_columnUidForIndex.__end_ - begin)
  {
    v24 = Index;
    do
    {
      v27 = &begin[v24];
      *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, &begin[v24]._lower, &unk_2217E0EFE, &v27) + 16) = v22++;
      begin = self->_columnUidForIndex.__begin_;
      ++v24;
    }

    while (v22 < self->_columnUidForIndex.__end_ - begin);
  }

  objc_msgSend__checkStructure(self, v19, v20, v21);
}

- (void)replaceRowsWithUids:(const void *)uids
{
  objc_msgSend_willModify(self, a2, uids, v3);
  objc_msgSend_incrementVersionCounter(self, v6, v7, v8);
  self->_rowUidForIndex.__end_ = self->_rowUidForIndex.__begin_;
  sub_2210BE918(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_);
  objc_msgSend_insertRowsWithUIDs_atIndex_(self, v9, uids, 0);

  objc_msgSend__checkStructure(self, v10, v11, v12);
}

- (void)replaceColumnsWithUids:(const void *)uids
{
  objc_msgSend_willModify(self, a2, uids, v3);
  objc_msgSend_incrementVersionCounter(self, v6, v7, v8);
  self->_columnUidForIndex.__end_ = self->_columnUidForIndex.__begin_;
  sub_2210BE918(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_);
  objc_msgSend_insertColumnsWithUIDs_atIndex_(self, v9, uids, 0);

  objc_msgSend__checkStructure(self, v10, v11, v12);
}

- (void)insertNewRowsInIndexRange:(_NSRange)range
{
  location = range.location;
  sub_2211A9184(range.length, __p);
  objc_msgSend_insertRowsWithUIDs_atIndex_(self, v5, __p, location);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)insertNewColumnsInIndexRange:(_NSRange)range
{
  location = range.location;
  sub_2211A9184(range.length, __p);
  objc_msgSend_insertColumnsWithUIDs_atIndex_(self, v5, __p, location);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)insertColumnsWithUIDs:(const void *)ds atIndex:(unsigned __int16)index
{
  if (index == 0x7FFF)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTColumnRowUIDMap insertColumnsWithUIDs:atIndex:]", index);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 936, 0, "cannot insert columns at invalid columnIndex");

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
  }

  else
  {
    indexCopy = index;
    objc_msgSend_willModify(self, a2, ds, index);
    objc_msgSend_incrementVersionCounter(self, v17, v18, v19);
    sub_221083368(&self->_columnUidForIndex.__begin_, ((*(ds + 1) - *ds) >> 4) + self->_columnUidForIndex.__end_ - self->_columnUidForIndex.__begin_);
    sub_2210F0C88(&self->_columnUidForIndex.__begin_, &self->_columnUidForIndex.__begin_[indexCopy], *ds, *(ds + 1), (*(ds + 1) - *ds) >> 4);
    begin = self->_columnUidForIndex.__begin_;
    if (indexCopy < ((LODWORD(self->_columnUidForIndex.__end_) - begin) >> 4))
    {
      v24 = indexCopy;
      v25 = indexCopy;
      do
      {
        v26 = &begin[v25];
        *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, &begin[v25]._lower, &unk_2217E0EFE, &v26) + 16) = v24++;
        begin = self->_columnUidForIndex.__begin_;
        ++v25;
      }

      while (v24 < ((LODWORD(self->_columnUidForIndex.__end_) - begin) >> 4));
    }

    objc_msgSend__checkStructure(self, v20, v21, v22);
  }
}

- (void)insertRowsWithUIDs:(const void *)ds atIndex:(unsigned int)index
{
  if (index == 0x7FFFFFFF)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTColumnRowUIDMap insertRowsWithUIDs:atIndex:]", *&index);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMap.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 956, 0, "cannot insert rows at invalid rowIndex");

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
  }

  else
  {
    indexCopy = index;
    objc_msgSend_willModify(self, a2, ds, *&index);
    objc_msgSend_incrementVersionCounter(self, v17, v18, v19);
    sub_221083368(&self->_rowUidForIndex.__begin_, self->_rowIndexForUid.__table_.__size_ + ((*(ds + 1) - *ds) >> 4));
    v20 = indexCopy;
    sub_2210F0C88(&self->_rowUidForIndex.__begin_, &self->_rowUidForIndex.__begin_[indexCopy], *ds, *(ds + 1), (*(ds + 1) - *ds) >> 4);
    for (i = self->_rowUidForIndex.__begin_; indexCopy < (self->_rowUidForIndex.__end_ - i); v20 = indexCopy)
    {
      v25 = &i[v20];
      *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v25, &unk_2217E0EFE, &v25) + 8) = indexCopy;
      i = self->_rowUidForIndex.__begin_;
      ++indexCopy;
    }

    objc_msgSend__checkStructure(self, v21, v22, v23);
  }
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  objc_msgSend_willModify(self, a2, *&index, *&atIndex);
  objc_msgSend_incrementVersionCounter(self, v7, v8, v9);
  begin = self->_rowUidForIndex.__begin_;
  v11 = begin[index];
  begin[index] = begin[atIndex];
  begin[atIndex] = v11;
  v15 = &self->_rowUidForIndex.__begin_[index];
  *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v15, &unk_2217E0EFE, &v15) + 8) = index;
  v15 = &self->_rowUidForIndex.__begin_[atIndex];
  *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v15, &unk_2217E0EFE, &v15) + 8) = atIndex;
  objc_msgSend__checkStructure(self, v12, v13, v14);
}

- (void)reset
{
  objc_msgSend_willModify(self, a2, v2, v3);
  objc_msgSend_incrementVersionCounter(self, v5, v6, v7);
  sub_2210BE918(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_);
  sub_2210BE918(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_);
  self->_columnUidForIndex.__end_ = self->_columnUidForIndex.__begin_;
  self->_rowUidForIndex.__end_ = self->_rowUidForIndex.__begin_;

  objc_msgSend__checkStructure(self, v8, v9, v10);
}

- (void)applyMap:(const void *)map toRows:(BOOL)rows
{
  rowsCopy = rows;
  objc_msgSend_willModify(self, a2, map, rows);
  objc_msgSend_incrementVersionCounter(self, v7, v8, v9);
  v13 = *(map + 2);
  if (rowsCopy)
  {
    for (; v13; v13 = *v13)
    {
      v14 = objc_msgSend_rowIndexForRowUID_(self, v10, v13[2], v13[3]);
      v16 = objc_msgSend_rowIndexForRowUID_(self, v15, v13[4], v13[5]);
      if (v14 != 0x7FFFFFFF && v16 == 0x7FFFFFFF)
      {
        self->_rowUidForIndex.__begin_[v14] = *(v13 + 2);
        v22 = v13 + 4;
        *(sub_221287990(&self->_rowIndexForUid.__table_.__bucket_list_.__ptr_, v13 + 4, &unk_2217E0EFE, &v22) + 8) = v14;
      }
    }
  }

  else
  {
    for (; v13; v13 = *v13)
    {
      v18 = objc_msgSend_columnIndexForColumnUID_(self, v10, v13[2], v13[3]);
      v20 = objc_msgSend_columnIndexForColumnUID_(self, v19, v13[4], v13[5]);
      if (v18 != 0x7FFF && v20 == 0x7FFF)
      {
        self->_columnUidForIndex.__begin_[v18] = *(v13 + 2);
        v22 = v13 + 4;
        *(sub_221260850(&self->_columnIndexForUid.__table_.__bucket_list_.__ptr_, v13 + 4, &unk_2217E0EFE, &v22) + 16) = v18;
      }
    }
  }

  objc_msgSend__checkStructure(self, v10, v11, v12);
}

- (BOOL)writeCellIDsInCellUIDList:(id)list toVector:(void *)vector prunedCellUIDs:(void *)ds
{
  listCopy = list;
  *(vector + 1) = *vector;
  *(ds + 1) = *ds;
  v49 = listCopy;
  v12 = objc_msgSend_count(listCopy, v9, v10, v11);
  sub_2211687C4(vector, v12);
  v50 = objc_msgSend_iterator(v49, v13, v14, v15);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sub_221286598(&v62, 0x3E8uLL);
  __p = 0;
  v60 = 0;
  v61 = 0;
  sub_22127D034(&__p, 0x1388uLL);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v54 = 0;
  v55 = 0;
  dsCopy = ds;
  v53 = 0x7FFF7FFFFFFFLL;
  v20 = 0x7FFFFFFF;
  selfCopy = self;
LABEL_2:
  if (objc_msgSend_nextCellUIDsBatch_batchSize_(v50, v16, &__p, 5000))
  {
    v22 = __p;
    v21 = v60;
    for (i = v60; ; v21 = i)
    {
      if (v22 == v21)
      {
        goto LABEL_2;
      }

      v23 = v22[2];
      v24 = v22[3];
      if (v18 != v23 || v17 != v24)
      {
        v20 = objc_msgSend_rowIndexForRowUID_(self, v16, v23, v24);
        v19 = 0;
        v18 = v22[2];
        v17 = v22[3];
      }

      if (v19 >= 0xAAAAAAAAAAAAAAABLL * ((v63 - v62) >> 3))
      {
        v28 = objc_msgSend_columnIndexForColumnUID_(self, v16, *v22, v22[1]);
        v57 = v28;
        v58 = *v22;
        sub_221286658(&v62, &v57);
        goto LABEL_22;
      }

      v26 = &v62[24 * v19];
      if (*(v26 + 1) == *v22)
      {
        v27 = v22[1];
        if (*(v26 + 2) == v27)
        {
          v28 = *v26;
          goto LABEL_22;
        }
      }

      else
      {
        v27 = v22[1];
      }

      v29 = objc_msgSend_columnIndexForColumnUID_(self, v16, *v22, v27);
      v28 = v29;
      v30 = v63;
      v31 = &v62[24 * v19];
      if (v31 != v63)
      {
        v32 = &v62[24 * v19];
        for (j = &v32[v63 - v31]; j != v30; j += 24)
        {
          *v32 = *j;
          *(v32 + 8) = *(j + 8);
          v32 += 24;
        }

        v63 = v32;
      }

      v57 = v29;
      v58 = *v22;
      sub_221286658(&v62, &v57);
LABEL_22:
      if (v20 == 0x7FFFFFFF || v28 == 0x7FFF)
      {
        sub_22112A984(ds, v22);
      }

      else
      {
        v34 = v20 | (v28 << 32);
        v36 = *(vector + 1);
        v35 = *(vector + 2);
        if (v36 >= v35)
        {
          v38 = (v36 - *vector) >> 3;
          if ((v38 + 1) >> 61)
          {
            sub_22107C148();
          }

          v39 = v35 - *vector;
          v40 = v39 >> 2;
          if (v39 >> 2 <= (v38 + 1))
          {
            v40 = v38 + 1;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFF8)
          {
            v41 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v40;
          }

          if (v41)
          {
            sub_2210874C4(vector, v41);
          }

          *(8 * v38) = v34;
          v37 = 8 * v38 + 8;
          v42 = *(vector + 1) - *vector;
          v43 = (8 * v38 - v42);
          memcpy(v43, *vector, v42);
          v44 = *vector;
          *vector = v43;
          *(vector + 1) = v37;
          *(vector + 2) = 0;
          if (v44)
          {
            operator delete(v44);
          }

          self = selfCopy;
          ds = dsCopy;
        }

        else
        {
          *v36 = v34;
          v37 = (v36 + 1);
        }

        *(vector + 1) = v37;
        ++v55;
        v53 = sub_221286760(v53, v54, v34);
        v54 = v16;
      }

      ++v19;
      v22 += 4;
    }
  }

  v47 = v55 && v55 == HIDWORD(v54) * v54 && (v45 = sub_221286760(**vector, 0x100000001uLL, *(*(vector + 1) - 8)), v45 == v53) && ((v45 ^ v53) & 0x101FFFF00000000) == 0 && v46 == v54;
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  return v47;
}

- (void)convertCellUIDLookupList:(id)list toCellRangeVector:(void *)vector prunedSummaryCellUIDs:(void *)ds
{
  listCopy = list;
  v12 = listCopy;
  if (listCopy)
  {
    v13 = objc_msgSend_UIDLookupList(listCopy, v9, v10, v11);
    v17 = objc_msgSend_UIDLookupList(v12, v14, v15, v16);
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x5812000000;
    v39[3] = sub_221286C4C;
    v39[4] = sub_221286C58;
    v39[5] = &unk_22188E88F;
    memset(v40, 0, sizeof(v40));
    v41 = 1065353216;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x5812000000;
    v36[3] = sub_221286C60;
    v36[4] = sub_221286C6C;
    v36[5] = &unk_22188E88F;
    memset(v37, 0, sizeof(v37));
    v38 = 1065353216;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_221286C74;
    v35[3] = &unk_278462430;
    v35[4] = self;
    v35[5] = v39;
    sub_2210BCE04(v13, v35);
    v17 += 13;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_221286D00;
    v34[3] = &unk_278462430;
    v34[4] = self;
    v34[5] = v36;
    sub_2210BCE04(v17, v34);
    v24 = 0;
    v25 = &v24;
    v26 = 0x5812000000;
    v27 = sub_221286D8C;
    v28 = sub_221286D98;
    v29 = &unk_22188E88F;
    v33[0] = 0;
    v33[1] = 0;
    v30 = 0;
    v31 = 0;
    v32 = v33;
    v21 = objc_msgSend_UIDLookupList(v12, v18, v19, v20);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_221286DA4;
    v23[3] = &unk_278462458;
    v23[4] = v39;
    v23[5] = v36;
    v23[8] = v17;
    v23[9] = ds;
    v23[6] = &v24;
    v23[7] = v13;
    sub_22137AA18(v21, v23);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_221286EE8;
    v22[3] = &unk_278462498;
    v22[4] = vector;
    TSCECellCoordSet::enumerateColumnsUsingBlock((v25 + 6), v22);
    _Block_object_dispose(&v24, 8);
    sub_22107C860(&v32, v33[0]);
    _Block_object_dispose(v36, 8);
    sub_2210BDEC0(v37);
    _Block_object_dispose(v39, 8);
    sub_2210BDEC0(v40);
  }
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v5 = objc_msgSend_numberOfColumns(self, a2, v2, v3);
  v9 = v5 | (objc_msgSend_numberOfRows(self, v6, v7, v8) << 32);

  v10 = TSUCellRectToTSCERangeCoordinate(0, v9);
  result._bottomRight = v11;
  result._topLeft = v10;
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 46) = 1065353216;
  return self;
}

@end