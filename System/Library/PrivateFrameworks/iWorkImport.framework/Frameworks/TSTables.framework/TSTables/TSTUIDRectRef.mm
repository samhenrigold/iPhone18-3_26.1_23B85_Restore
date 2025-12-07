@interface TSTUIDRectRef
- (BOOL)baseToViewPreserveFlagsAreInverted;
- (BOOL)isBaseRectangle;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidReference;
- (BOOL)isViewRectangle;
- (BOOL)spansAllColumns;
- (BOOL)spansAllRows;
- (RefTypeHolder<TSCERangeRef,)baseRangeRef;
- (RefTypeHolder<TSCERangeRef,)chromeRangeRef;
- (RefTypeHolder<TSCERangeRef,)viewRangeRef;
- (TSCECalculationEngine)calcEngine;
- (TSKUIDStruct)singleReferencedColumnUid;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructTract)uidRange;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseTractRef:(id)ref;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine tableUID:(const TSKUIDStruct *)d uidRange:(const void *)range preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewTractRef:(id)ref;
- (TSUModelCellCoord)baseBottomRightCoord;
- (TSUModelCellCoord)baseTopLeftCoord;
- (TSUViewCellCoord)viewBottomRightCoord;
- (TSUViewCellCoord)viewTopLeftCoord;
- (id).cxx_construct;
- (id)baseTractRef;
- (id)chromeTractRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)grabViewUidMapper;
- (id)tableInfo;
- (id)tableModel;
- (id)uidTractListWithPurpose:(unsigned __int8)purpose;
- (id)viewCellRegionWithRangeContext:(unsigned __int8)context;
- (id)viewTractRef;
- (id)viewTractRefIfFullyValid;
- (unint64_t)area;
- (unint64_t)numberOfColumns;
- (unint64_t)numberOfRows;
- (unsigned)viewPreserveFlags;
- (vector<RefTypeHolder<TSCERangeRef,)baseRangeRefs;
- (vector<RefTypeHolder<TSCERangeRef,)viewRangeRefs;
- (void)convertUIDRefToViewTractRef;
- (void)convertViewTractRefToUID;
- (void)excludeSummaryAndLabelRows;
- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setCalcEngine:(id)engine;
- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
- (void)setViewPreserveFlags:(unsigned __int8)flags;
- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags;
@end

@implementation TSTUIDRectRef

- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewTractRef:(id)ref
{
  engineCopy = engine;
  refCopy = ref;
  v26.receiver = self;
  v26.super_class = TSTUIDRectRef;
  v8 = [(TSTUIDRectRef *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_calcEngine, engineCopy);
    v13 = objc_msgSend_copy(refCopy, v10, v11, v12);
    lastKnownTractRef = v9->_lastKnownTractRef;
    v9->_lastKnownTractRef = v13;

    v9->_lastKnownTractRefIsBase = 0;
    v9->_basePreserveFlags = objc_msgSend_preserveFlags(v9->_lastKnownTractRef, v15, v16, v17);
    v9->_tableUID._lower = objc_msgSend_tableUID(refCopy, v18, v19, v20);
    v9->_tableUID._upper = v21;
    v24 = objc_msgSend_grabViewUidMapper(v9, v21, v22, v23);
  }

  return v9;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseTractRef:(id)ref
{
  engineCopy = engine;
  refCopy = ref;
  v26.receiver = self;
  v26.super_class = TSTUIDRectRef;
  v8 = [(TSTUIDRectRef *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_calcEngine, engineCopy);
    v13 = objc_msgSend_copy(refCopy, v10, v11, v12);
    lastKnownTractRef = v9->_lastKnownTractRef;
    v9->_lastKnownTractRef = v13;

    v9->_lastKnownTractRefIsBase = 1;
    v9->_basePreserveFlags = objc_msgSend_preserveFlags(v9->_lastKnownTractRef, v15, v16, v17);
    v9->_tableUID._lower = objc_msgSend_tableUID(refCopy, v18, v19, v20);
    v9->_tableUID._upper = v21;
    v24 = objc_msgSend_grabViewUidMapper(v9, v21, v22, v23);
  }

  return v9;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine viewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  engineCopy = engine;
  v13.receiver = self;
  v13.super_class = TSTUIDRectRef;
  v9 = [(TSTUIDRectRef *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_calcEngine, engineCopy);
    objc_msgSend_setViewRangeRef_preserveFlags_(v10, v11, ref, flagsCopy);
  }

  return v10;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine chromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  engineCopy = engine;
  v13.receiver = self;
  v13.super_class = TSTUIDRectRef;
  v9 = [(TSTUIDRectRef *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_calcEngine, engineCopy);
    objc_msgSend_setChromeRangeRef_preserveFlags_(v10, v11, ref, flagsCopy);
  }

  return v10;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine baseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  engineCopy = engine;
  v13.receiver = self;
  v13.super_class = TSTUIDRectRef;
  v9 = [(TSTUIDRectRef *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_calcEngine, engineCopy);
    objc_msgSend_setBaseRangeRef_preserveFlags_(v10, v11, ref, flagsCopy);
  }

  return v10;
}

- (TSTUIDRectRef)initWithCalcEngine:(id)engine tableUID:(const TSKUIDStruct *)d uidRange:(const void *)range preserveFlags:(unsigned __int8)flags
{
  engineCopy = engine;
  v18.receiver = self;
  v18.super_class = TSTUIDRectRef;
  v11 = [(TSTUIDRectRef *)&v18 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_calcEngine, engineCopy);
    v13->_tableUID = *d;
    if (&v12->_uidRange != range)
    {
      sub_2210BD068(&v12->_uidRange, *range, *(range + 1), (*(range + 1) - *range) >> 4);
      sub_2210BD068(&v12->_uidRange._rowIdList, *(range + 3), *(range + 4), (*(range + 4) - *(range + 3)) >> 4);
    }

    v13->_basePreserveFlags = flags;
    objc_msgSend_convertUIDRefToViewTractRef(v13, v14, v15, v16);
  }

  return v13;
}

- (id)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v5 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v4, &self->_tableUID, WeakRetained);

  return v5;
}

- (id)tableInfo
{
  v4 = objc_msgSend_tableModel(self, a2, v2, v3);
  v8 = objc_msgSend_tableInfo(v4, v5, v6, v7);

  return v8;
}

- (TSKUIDStructTract)uidRange
{
  begin = self->_uidRange._colIdList.__begin_;
  end = self->_uidRange._colIdList.__end_;
  v7 = end - begin;
  if (!((self->_uidRange._rowIdList.__end_ - self->_uidRange._rowIdList.__begin_) * v7))
  {
    objc_msgSend_convertViewTractRefToUID(self, begin, end, v7);
    begin = self->_uidRange._colIdList.__begin_;
    end = self->_uidRange._colIdList.__end_;
    v7 = end - begin;
  }

  retstr->_colIdList.__begin_ = 0;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  sub_221086EBC(retstr, begin, end, v7);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, self->_uidRange._rowIdList.__begin_, self->_uidRange._rowIdList.__end_, self->_uidRange._rowIdList.__end_ - self->_uidRange._rowIdList.__begin_);
}

- (id)grabViewUidMapper
{
  if (self->_tableUID._lower || self->_tableUID._upper)
  {
    v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
    v9 = objc_msgSend_columnRowUIDMap(v5, v6, v7, v8);

    v13 = objc_msgSend_copyOnWriteUIDMapper(v9, v10, v11, v12);
    viewUidMapper = self->_viewUidMapper;
    self->_viewUidMapper = v13;

    self->_viewMapVersionCounter = objc_msgSend_versionCounter(v9, v15, v16, v17);
  }

  v18 = self->_viewUidMapper;

  return v18;
}

- (void)setCalcEngine:(id)engine
{
  objc_storeWeak(&self->_calcEngine, engine);
  if (self->_needsUidRectUpgrade)
  {
    v10 = objc_msgSend_tableInfo(self, v4, v5, v6);
    if (v10)
    {
      v11 = objc_msgSend_viewTractRef(self, v7, v8, v9);
      v30 = objc_msgSend_topLeft(v11, v12, v13, v14);
      v29 = objc_msgSend_bottomRight(v11, v15, v16, v17);
      self->_needsUidRectUpgrade = 0;
      v18 = [TSCECellTractRef alloc];
      v28[0] = objc_msgSend_tableUID(v11, v19, v20, v21);
      v28[1] = v22;
      v23 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(v18, v22, &v30, &v29, v28);
      lastKnownTractRef = self->_lastKnownTractRef;
      self->_lastKnownTractRef = v23;

      self->_lastKnownTractRefIsBase = 0;
      objc_msgSend_convertViewTractRefToUID(self, v25, v26, v27);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    lastKnownTractRefIsBase = self->_lastKnownTractRefIsBase;
    v5 = [TSTUIDRectRef alloc];
    v10 = objc_msgSend_calcEngine(self, v6, v7, v8);
    lastKnownTractRef = self->_lastKnownTractRef;
    if (lastKnownTractRefIsBase)
    {
      v12 = objc_msgSend_initWithCalcEngine_baseTractRef_(v5, v9, v10, lastKnownTractRef);
    }

    else
    {
      v12 = objc_msgSend_initWithCalcEngine_viewTractRef_(v5, v9, v10, lastKnownTractRef);
    }

    v23 = v12;

    *(v23 + 90) = self->_basePreserveFlags;
  }

  else
  {
    v13 = [TSTUIDRectRef alloc];
    v17 = objc_msgSend_calcEngine(self, v14, v15, v16);
    v21 = objc_msgSend_basePreserveFlags(self, v18, v19, v20);
    v23 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v13, v22, v17, &self->_tableUID, &self->_uidRange, v21);

    objc_storeStrong((v23 + 64), self->_lastKnownTractRef);
    *(v23 + 89) = self->_lastKnownTractRefIsBase;
  }

  objc_storeStrong((v23 + 80), self->_viewUidMapper);
  *(v23 + 72) = self->_viewMapVersionCounter;
  *(v23 + 88) = self->_needsUidRectUpgrade;
  return v23;
}

- (void)convertViewTractRefToUID
{
  if (self->_lastKnownTractRef)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

    if (WeakRetained)
    {
      v10 = objc_msgSend_tableInfo(self, v4, v5, v6);
      if (!v10)
      {
LABEL_39:

        return;
      }

      v11 = objc_msgSend_columns(self->_lastKnownTractRef, v7, v8, v9);
      v12 = TSUIndexSet::asNSIndexSet(v11);
      v16 = objc_msgSend_rows(self->_lastKnownTractRef, v13, v14, v15);
      v20 = TSUIndexSet::asNSIndexSet(v16);
      v66 = 0uLL;
      v67 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v65 = 0;
      viewUidMapper = self->_viewUidMapper;
      if (viewUidMapper)
      {
        if (self->_lastKnownTractRefIsBase && (v22 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTUIDRectRef convertViewTractRefToUID]", v19), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v25), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 193, 0, "Not expecting base for _lastKnownTractRef here"), v26, v23, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30), (viewUidMapper = self->_viewUidMapper) == 0))
        {
          v61[0] = 0;
          v61[1] = 0;
          v62 = 0;
        }

        else
        {
          objc_msgSend_columnUIDsForColumnIndexes_(viewUidMapper, v17, v12, v19);
        }

        v66 = *v61;
        v67 = v62;
        v32 = self->_viewUidMapper;
        if (v32)
        {
          objc_msgSend_rowUIDsForRowIndexes_(v32, v17, v20, v19);
        }

        else
        {
          v61[0] = 0;
          v61[1] = 0;
          v62 = 0;
        }

        *__p = *v61;
        v65 = v62;
        v37 = objc_msgSend_translator(v10, v17, v31, v19);
        v41 = objc_msgSend_viewMap(v37, v38, v39, v40);
        self->_viewMapVersionCounter = objc_msgSend_versionCounter(v41, v42, v43, v44);
      }

      else
      {
        if (!self->_lastKnownTractRefIsBase)
        {
          objc_msgSend_columnUIDsForColumnIndexes_(v10, v17, v12, v19);
          v66 = *v61;
          v67 = v62;
          objc_msgSend_rowUIDsForRowIndexes_(v10, v45, v20, v46);
          *__p = *v61;
          v65 = v62;
LABEL_23:
          sub_2210BBBE8(v61, &v66, __p);
          if (objc_msgSend_spansAllColumns(self->_lastKnownTractRef, v53, v54, v55))
          {
            operator new();
          }

          if (objc_msgSend_spansAllRows(self->_lastKnownTractRef, v56, v57, v58))
          {
            operator new();
          }

          v59 = (v61[1] - v61[0]) >> 4;
          if (((v63[1] - v63[0]) >> 4) * v59 && &self->_uidRange != v61)
          {
            sub_2210BD068(&self->_uidRange, v61[0], v61[1], v59);
            sub_2210BD068(&self->_uidRange._rowIdList, v63[0], v63[1], (v63[1] - v63[0]) >> 4);
          }

          v60 = self->_viewUidMapper;
          self->_viewUidMapper = 0;

          if (v63[0])
          {
            v63[1] = v63[0];
            operator delete(v63[0]);
          }

          if (v61[0])
          {
            v61[1] = v61[0];
            operator delete(v61[0]);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v66)
          {
            *(&v66 + 1) = v66;
            operator delete(v66);
          }

          goto LABEL_39;
        }

        v33 = objc_msgSend_baseTableModel(v10, v17, v18, v19);
        v36 = v33;
        if (v33)
        {
          objc_msgSend_columnUIDsForColumnIndexes_(v33, v34, v12, v35);
        }

        else
        {
          v61[0] = 0;
          v61[1] = 0;
          v62 = 0;
        }

        v66 = *v61;
        v67 = v62;
        v61[1] = 0;
        v62 = 0;
        v61[0] = 0;

        v50 = objc_msgSend_baseTableModel(v10, v47, v48, v49);
        v37 = v50;
        if (v50)
        {
          objc_msgSend_rowUIDsForRowIndexes_(v50, v51, v20, v52);
        }

        else
        {
          v61[0] = 0;
          v61[1] = 0;
          v62 = 0;
        }

        *__p = *v61;
        v65 = v62;
        v61[1] = 0;
        v62 = 0;
        v61[0] = 0;
      }

      goto LABEL_23;
    }
  }
}

- (void)convertUIDRefToViewTractRef
{
  if ((self->_uidRange._rowIdList.__end_ - self->_uidRange._rowIdList.__begin_) * (self->_uidRange._colIdList.__end_ - self->_uidRange._colIdList.__begin_))
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

    if (WeakRetained)
    {
      if (self->_viewUidMapper)
      {
        v7 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTUIDRectRef convertUIDRefToViewTractRef]", v6);
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v9);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v21, v10, 233, 0, "If we're already uid-form, why do we have a mapper?");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
      }

      v22 = objc_msgSend_tableInfo(self, v4, v5, v6);
      if (v22)
      {
        v18 = objc_msgSend_viewTractRef(self, v15, v16, v17);
        lastKnownTractRef = self->_lastKnownTractRef;
        self->_lastKnownTractRef = v18;

        self->_lastKnownTractRefIsBase = 0;
      }

      viewUidMapper = self->_viewUidMapper;
      self->_viewUidMapper = 0;
    }
  }
}

- (void)excludeSummaryAndLabelRows
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (!WeakRetained)
  {
    v6 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTUIDRectRef excludeSummaryAndLabelRows]", v5);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v42, v9, 246, 0, "invalid nil value for '%{public}s'", "_calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v14 = objc_loadWeakRetained(&self->_calcEngine);

  if (v14)
  {
    v43 = objc_msgSend_viewTractRef(self, v15, v16, v17);
    v21 = objc_msgSend_baseTractRef(self, v18, v19, v20);
    v25 = objc_msgSend_tableInfo(self, v22, v23, v24);
    v29 = objc_msgSend_translator(v25, v26, v27, v28);
    v33 = objc_msgSend_coordinateMapper(v29, v30, v31, v32);

    v36 = objc_msgSend_viewTractRefForBaseTractRef_(v33, v34, v21, v35);
    if ((objc_msgSend_isEqual_(v36, v37, v43, v38) & 1) == 0)
    {
      objc_storeStrong(&self->_lastKnownTractRef, v36);
      self->_lastKnownTractRefIsBase = 0;
      objc_msgSend_convertViewTractRefToUID(self, v39, v40, v41);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_tableUID._lower != objc_msgSend_tableUID(v5, v6, v7, v8))
    {
      goto LABEL_13;
    }

    if (self->_tableUID._upper != v9)
    {
      goto LABEL_13;
    }

    basePreserveFlags = self->_basePreserveFlags;
    if (basePreserveFlags != objc_msgSend_basePreserveFlags(v5, v9, v10, v11))
    {
      goto LABEL_13;
    }

    if (self->_viewUidMapper != v5[10])
    {
      objc_msgSend_uidRange(self, v13, v14, v15);
      objc_msgSend_uidRange(v5, v16, v17, v18);
      v19 = __p;
      if (((v31 - v30) >> 4) * ((v29 - v28) >> 4) == ((v27 - __p) >> 4) * ((v25 - v24) >> 4))
      {
        sub_22112C58C(v35, v28, v29);
        for (i = v24; i != v25; i += 2)
        {
          sub_22112C87C(v35, i);
        }

        sub_22112C58C(v32, v30, v31);
        for (j = __p; j != v27; j += 2)
        {
          sub_22112C87C(v32, j);
        }

        v21 = (v37 | v34) == 0;
        sub_2210BC9F8(v32, v33);
        sub_2210BC9F8(v35, v36);
        v19 = __p;
      }

      else
      {
        v21 = 0;
      }

      if (v19)
      {
        operator delete(v19);
      }

      if (v24)
      {
        operator delete(v24);
      }

      if (v30)
      {
        operator delete(v30);
      }

      if (v28)
      {
        operator delete(v28);
      }

      goto LABEL_14;
    }

    if (objc_msgSend_isEqual_(self->_lastKnownTractRef, v13, v5[8], v15))
    {
      v21 = self->_lastKnownTractRefIsBase == *(v5 + 89);
    }

    else
    {
LABEL_13:
      v21 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (BOOL)isEmpty
{
  if (self->_viewUidMapper && (lastKnownTractRef = self->_lastKnownTractRef) != 0)
  {
    return (objc_msgSend_spansAllColumns(lastKnownTractRef, a2, v2, v3) & 1) == 0 && !objc_msgSend_numColumns(self->_lastKnownTractRef, v6, v7, v8) || (objc_msgSend_spansAllRows(self->_lastKnownTractRef, v6, v7, v8) & 1) == 0 && objc_msgSend_numRows(self->_lastKnownTractRef, v9, v10, v11) == 0;
  }

  else
  {
    v13 = objc_msgSend_tableInfo(self, a2, v2, v3);
    v17 = objc_msgSend_translator(v13, v14, v15, v16);
    objc_msgSend_uidRange(self, v18, v19, v20);
    v23 = objc_msgSend_viewColumnIndexesForUIDs_(v17, v21, v47, v22);
    if (objc_msgSend_count(v23, v24, v25, v26))
    {
      v12 = 0;
    }

    else
    {
      v30 = objc_msgSend_tableInfo(self, v27, v28, v29);
      v34 = objc_msgSend_translator(v30, v31, v32, v33);
      objc_msgSend_uidRange(self, v35, v36, v37);
      v40 = objc_msgSend_viewRowIndexesForUIDs_(v34, v38, __p, v39);
      v12 = objc_msgSend_count(v40, v41, v42, v43) == 0;

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v45)
      {
        operator delete(v45);
      }
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v47[0])
    {
      v47[1] = v47[0];
      operator delete(v47[0]);
    }
  }

  return v12;
}

- (BOOL)isViewRectangle
{
  objc_msgSend_viewRangeRefs(self, a2, v2, v3);
  if (v5)
  {
    operator delete(v5);
  }

  return v6 - v5 == 32;
}

- (BOOL)isBaseRectangle
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3);
  if (v5)
  {
    operator delete(v5);
  }

  return v6 - v5 == 32;
}

- (BOOL)baseToViewPreserveFlagsAreInverted
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  if (objc_msgSend_spansAllRows(self, v6, v7, v8))
  {
    v12 = 0;
    v13 = objc_msgSend_count(0, v9, v10, v11);
  }

  else
  {
    lastKnownTractRef = self->_lastKnownTractRef;
    if (lastKnownTractRef)
    {
      if (self->_lastKnownTractRefIsBase)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTUIDRectRef baseToViewPreserveFlagsAreInverted]", v11);
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v21);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 323, 0, "Not expecting base _lastKnownTractRef here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
        lastKnownTractRef = self->_lastKnownTractRef;
      }

      v27 = objc_msgSend_rows(lastKnownTractRef, v9, v10, v11);
      v12 = TSUIndexSet::asNSIndexSet(v27);
      v13 = objc_msgSend_count(v12, v28, v29, v30);
    }

    else
    {
      objc_msgSend_uidRange(self, v9, v10, v11);
      v12 = objc_msgSend_rowIndexesForUIDs_(v5, v31, __p, v32);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v60)
      {
        operator delete(v60);
      }

      v13 = objc_msgSend_count(v12, v33, v34, v35);
    }
  }

  if (v13)
  {
    v36 = objc_msgSend_indexesForSummaryAndLabelRows(v5, v14, v15, v16);
    v39 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v12, v37, v36, v38);

    Index = objc_msgSend_firstIndex(v39, v40, v41, v42);
    v47 = objc_msgSend_lastIndex(v39, v44, v45, v46);
    v51 = objc_msgSend_translator(v5, v48, v49, v50);
    v54 = v51;
    if (v51)
    {
      v55 = objc_msgSend_baseRowIndexForViewRowIndex_(v51, v52, Index, v53);
      v58 = v55 > objc_msgSend_baseRowIndexForViewRowIndex_(v54, v56, v47, v57);
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v39 = v12;
  }

  return v58;
}

- (unsigned)viewPreserveFlags
{
  basePreserveFlags = self->_basePreserveFlags;
  v6._flags = basePreserveFlags;
  if (objc_msgSend_baseToViewPreserveFlagsAreInverted(self, a2, v2, v3))
  {
    return TSUPreserveFlags::swapRowFlags(&v6);
  }

  return basePreserveFlags;
}

- (void)setViewPreserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  v8._flags = flags;
  if (objc_msgSend_baseToViewPreserveFlagsAreInverted(self, a2, flags, v3))
  {
    flagsCopy = TSUPreserveFlags::swapRowFlags(&v8);
    v8._flags = flagsCopy;
  }

  self->_basePreserveFlags = flagsCopy;
  objc_msgSend_setPreserveFlags_(self->_lastKnownTractRef, v6, flagsCopy, v7);
}

- (void)setViewRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  self->_tableUID = *(ref + 1);
  viewUidMapper = self->_viewUidMapper;
  self->_viewUidMapper = 0;

  v12 = *ref;
  v11 = *(ref + 1);
  v13 = *ref & 0xFFFF00000000;
  v14 = v11 & 0xFFFF00000000;
  v15 = *ref;
  if (v15 != 0x7FFFFFFF && v13 == 0x7FFF00000000 && v14 == 0x7FFF00000000)
  {
    if (v11 != 0x7FFFFFFF)
    {
      operator new();
    }
  }

  else if (v15 == 0x7FFFFFFF && v13 != 0x7FFF00000000 && v14 != 0x7FFF00000000 && v11 == 0x7FFFFFFFLL)
  {
    v22 = objc_msgSend_tableInfo(self, v8, v9, v10);
    if (WORD2(v11) == 0x7FFF || WORD2(v12) == 0x7FFF)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v21, WORD2(v12), 0);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v21, WORD2(v12), WORD2(v11) - WORD2(v12) + 1);
    }
    v26 = ;
    if (v22)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v22, v24, v26, v25);
    }

    operator new();
  }

  v27 = objc_msgSend_grabViewUidMapper(self, v8, v9, v10);
  v28 = [TSCECellTractRef alloc];
  v31 = objc_msgSend_initWithRangeRef_(v28, v29, ref, v30);
  lastKnownTractRef = self->_lastKnownTractRef;
  self->_lastKnownTractRef = v31;

  objc_msgSend_setPreserveFlags_(self->_lastKnownTractRef, v33, flagsCopy, v34);
  self->_lastKnownTractRefIsBase = 0;

  objc_msgSend_setViewPreserveFlags_(self, v35, flagsCopy, v36);
}

- (RefTypeHolder<TSCERangeRef,)chromeRangeRef
{
  v6 = objc_msgSend_chromeTractRef(self, a3, v3, v4);
  v10 = v6;
  if (v6)
  {
    objc_msgSend_boundingRangeRef(v6, v7, v8, v9);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  retstr->var0.range = v12;
  retstr->var0._tableUID = v13;

  return result;
}

- (void)setChromeRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  viewUidMapper = self->_viewUidMapper;
  self->_viewUidMapper = 0;

  self->_tableUID = *(ref + 1);
  v12 = *ref;
  v11 = *(ref + 1);
  v13 = *ref & 0xFFFF00000000;
  v14 = v11 & 0xFFFF00000000;
  v15 = *ref;
  if (v15 != 0x7FFFFFFF && v13 == 0x7FFF00000000 && v14 == 0x7FFF00000000)
  {
    if (v11 != 0x7FFFFFFF)
    {
      v62 = objc_msgSend_tableInfo(self, v8, v9, v10);
      v66 = objc_msgSend_translator(v62, v63, v64, v65);
      v68 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v67, v15, (v11 - v12 + 1));
      objc_msgSend_viewRowIndexesForChromeRowIndexes_(v66, v69, v68, v70);
      objc_claimAutoreleasedReturnValue();

      operator new();
    }
  }

  else if (v15 == 0x7FFFFFFF && v13 != 0x7FFF00000000 && v14 != 0x7FFF00000000 && v11 == 0x7FFFFFFFLL)
  {
    v21 = objc_msgSend_tableInfo(self, v8, v9, v10);
    v26 = objc_msgSend_translator(v21, v22, v23, v24);
    if (WORD2(v11) == 0x7FFF || WORD2(v12) == 0x7FFF)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v25, WORD2(v12), 0);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v25, WORD2(v12), WORD2(v11) - WORD2(v12) + 1);
    }
    v28 = ;
    v31 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(v26, v29, v28, v30);

    v35 = objc_msgSend_tableInfo(self, v32, v33, v34);
    if (v35)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v35, v36, v31, v37);
    }

    operator new();
  }

  v38 = objc_msgSend_grabViewUidMapper(self, v8, v9, v10);
  v42 = objc_msgSend_tableInfo(self, v39, v40, v41);
  v46 = objc_msgSend_translator(v42, v43, v44, v45);
  v71 = objc_msgSend_coordinateMapper(v46, v47, v48, v49);

  v50 = [TSCECellTractRef alloc];
  v53 = objc_msgSend_initWithRangeRef_(v50, v51, ref, v52);
  objc_msgSend_setPreserveFlags_(v53, v54, flagsCopy, v55);
  v58 = objc_msgSend_viewTractRefForChromeTractRef_(v71, v56, v53, v57);
  lastKnownTractRef = self->_lastKnownTractRef;
  self->_lastKnownTractRef = v58;

  self->_lastKnownTractRefIsBase = 0;
  objc_msgSend_setViewPreserveFlags_(self, v60, flagsCopy, v61);
}

- (void)setBaseRangeRef:(const void *)ref preserveFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  self->_basePreserveFlags = flags;
  self->_tableUID = *(ref + 1);
  viewUidMapper = self->_viewUidMapper;
  self->_viewUidMapper = 0;

  v11 = objc_msgSend_tableInfo(self, v8, v9, v10);
  v15 = objc_msgSend_baseTableModel(v11, v12, v13, v14);

  if (v15)
  {
    v19 = *(ref + 1);
    v20 = *ref & 0xFFFF00000000;
    v21 = v19 & 0xFFFF00000000;
    v22 = *ref;
    if (v22 != 0x7FFFFFFF && v20 == 0x7FFF00000000 && v21 == 0x7FFF00000000)
    {
      if (v19 != 0x7FFFFFFF)
      {
        operator new();
      }
    }

    else if (v22 == 0x7FFFFFFF && v20 != 0x7FFF00000000 && v21 != 0x7FFF00000000 && v19 == 0x7FFFFFFFLL)
    {
      operator new();
    }

    v32 = objc_msgSend_grabViewUidMapper(self, v16, v17, v18);
    v36 = objc_msgSend_tableInfo(self, v33, v34, v35);
    v40 = objc_msgSend_translator(v36, v37, v38, v39);
    v44 = objc_msgSend_coordinateMapper(v40, v41, v42, v43);

    v45 = [TSCECellTractRef alloc];
    v48 = objc_msgSend_initWithRangeRef_(v45, v46, ref, v47);
    objc_msgSend_setPreserveFlags_(v48, v49, flagsCopy, v50);
    v53 = objc_msgSend_viewTractRefForBaseTractRef_(v44, v51, v48, v52);
    lastKnownTractRef = self->_lastKnownTractRef;
    self->_lastKnownTractRef = v53;
  }

  else
  {
    v25 = [TSCECellTractRef alloc];
    v28 = objc_msgSend_initWithRangeRef_(v25, v26, ref, v27);
    objc_msgSend_setPreserveFlags_(v28, v29, flagsCopy, v30);
    v31 = self->_lastKnownTractRef;
    self->_lastKnownTractRef = v28;

    self->_lastKnownTractRefIsBase = 1;
  }
}

- (RefTypeHolder<TSCERangeRef,)baseRangeRef
{
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  objc_msgSend_baseRangeRefs(self, a3, v3, v4);
  result = v20;
  v9 = v21;
  if ((v21 - v20) >= 0x21)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTUIDRectRef baseRangeRef]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 488, 0, "This API can't support multiple base ranges, had %lu", v21 - v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    result = v20;
    v9 = v21;
  }

  if (v9 - result == 32)
  {
    tableUID = result->var0._tableUID;
    retstr->var0.range = result->var0.range;
    retstr->var0._tableUID = tableUID;
  }

  else if (!result)
  {
    return result;
  }

  v21 = result;
  operator delete(result);
  return result;
}

- (RefTypeHolder<TSCERangeRef,)viewRangeRef
{
  retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->var0._tableUID._lower = 0;
  retstr->var0._tableUID._upper = 0;
  objc_msgSend_viewRangeRefs(self, a3, v3, v4);
  result = v20;
  v9 = v21;
  if ((v21 - v20) >= 0x21)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTUIDRectRef viewRangeRef]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 502, 0, "This API can't support multiple view ranges, had %lu", v21 - v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    result = v20;
    v9 = v21;
  }

  if (v9 - result == 32)
  {
    tableUID = result->var0._tableUID;
    retstr->var0.range = result->var0.range;
    retstr->var0._tableUID = tableUID;
  }

  else if (!result)
  {
    return result;
  }

  v21 = result;
  operator delete(result);
  return result;
}

- (vector<RefTypeHolder<TSCERangeRef,)baseRangeRefs
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x4812000000;
  v58 = sub_22112A8C4;
  v59 = sub_22112A8E8;
  v60 = &unk_22188E88F;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v7 = objc_msgSend_tableInfo(self, a3, v3, v4);
  v11 = objc_msgSend_baseTableModel(v7, v8, v9, v10);

  if (objc_msgSend_spansAllRows(self, v12, v13, v14))
  {
    v18 = objc_msgSend_columnRowUIDMap(v11, v15, v16, v17);
    objc_msgSend_uidRange(self, v19, v20, v21);
    v24 = objc_msgSend_columnIndexesForUIDs_(v18, v22, &v51, v23);
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22112A900;
    v50[3] = &unk_27845F7B0;
    v50[4] = self;
    v50[5] = &v55;
    objc_msgSend_enumerateRangesUsingBlock_(v24, v25, v50, v26);
  }

  else if (objc_msgSend_spansAllColumns(self, v15, v16, v17))
  {
    v30 = objc_msgSend_columnRowUIDMap(v11, v27, v28, v29);
    objc_msgSend_uidRange(self, v31, v32, v33);
    v24 = objc_msgSend_rowIndexesForUIDs_(v30, v34, &__p, v35);
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22112AA5C;
    v49[3] = &unk_27845F7B0;
    v49[4] = self;
    v49[5] = &v55;
    objc_msgSend_enumerateRangesUsingBlock_(v24, v36, v49, v37);
  }

  else
  {
    v38 = objc_msgSend_columnRowUIDMap(v11, v27, v28, v29);
    objc_msgSend_uidRange(self, v39, v40, v41);
    v24 = objc_msgSend_cellRegionForUIDRange_(v38, v42, &v51, v43);
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_22112AAD8;
    v48[3] = &unk_27845F7D8;
    v48[4] = self;
    v48[5] = &v55;
    objc_msgSend_enumerateCellRangesUsingBlock_(v24, v44, v48, v45);
  }

  v46 = v56;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_22112CD44(retstr, v46[6], v46[7], (v46[7] - v46[6]) >> 5);

  _Block_object_dispose(&v55, 8);
  result = v61;
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return result;
}

- (vector<RefTypeHolder<TSCERangeRef,)viewRangeRefs
{
  v64 = 0;
  v65 = &v64;
  v66 = 0x4812000000;
  v67 = sub_22112AFB0;
  v68 = sub_22112AFD4;
  v69 = &unk_22188E88F;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  if (objc_msgSend_spansAllRows(self, a3, v3, v4))
  {
    v10 = objc_msgSend_tableInfo(self, v7, v8, v9);
    objc_msgSend_uidRange(self, v11, v12, v13);
    v16 = objc_msgSend_columnIndexesForUIDs_(v10, v14, &v60, v15);
    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22112AFEC;
    v59[3] = &unk_27845F7B0;
    v59[4] = self;
    v59[5] = &v64;
    objc_msgSend_enumerateRangesUsingBlock_(v16, v17, v59, v18);
  }

  else if (objc_msgSend_spansAllColumns(self, v7, v8, v9))
  {
    v22 = objc_msgSend_tableInfo(self, v19, v20, v21);
    objc_msgSend_uidRange(self, v23, v24, v25);
    v16 = objc_msgSend_rowIndexesForUIDs_(v22, v26, &__p, v27);
    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_22112B070;
    v58[3] = &unk_27845F7B0;
    v58[4] = self;
    v58[5] = &v64;
    objc_msgSend_enumerateRangesUsingBlock_(v16, v28, v58, v29);
  }

  else
  {
    if (self->_viewUidMapper && (lastKnownTractRef = self->_lastKnownTractRef) != 0)
    {
      if (self->_lastKnownTractRefIsBase)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTUIDRectRef viewRangeRefs]", v21);
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTUIDRectRef.mm", v34);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 584, 0, "Not expecting base _lastKnownTractRef here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
        lastKnownTractRef = self->_lastKnownTractRef;
      }

      v40 = objc_msgSend_columns(lastKnownTractRef, v19, v20, v21);
      v41 = TSUIndexSet::asNSIndexSet(v40);
      v45 = objc_msgSend_rows(self->_lastKnownTractRef, v42, v43, v44);
      v46 = TSUIndexSet::asNSIndexSet(v45);
      v16 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v47, v41, v46);
    }

    else
    {
      v41 = objc_msgSend_tableInfo(self, v19, v20, v21);
      objc_msgSend_uidRange(self, v48, v49, v50);
      v16 = objc_msgSend_cellRegionForUIDRange_(v41, v51, &v60, v52);
      if (__p)
      {
        v63 = __p;
        operator delete(__p);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }
    }

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_22112B0EC;
    v57[3] = &unk_27845F7D8;
    v57[4] = self;
    v57[5] = &v64;
    objc_msgSend_enumerateCellRangesUsingBlock_(v16, v53, v57, v54);
  }

  v55 = v65;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_22112CDC0(retstr, v55[6], v55[7], (v55[7] - v55[6]) >> 5);
  _Block_object_dispose(&v64, 8);
  result = v70;
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  return result;
}

- (id)baseTractRef
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_baseTableModel(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_viewTractRef(self, v10, v11, v12);
    v17 = objc_msgSend_tableInfo(self, v14, v15, v16);
    v21 = objc_msgSend_translator(v17, v18, v19, v20);
    v25 = objc_msgSend_coordinateMapper(v21, v22, v23, v24);

    v28 = objc_msgSend_baseTractRefForViewTractRef_(v25, v26, v13, v27);
  }

  else
  {
    v28 = self->_lastKnownTractRef;
  }

  return v28;
}

- (id)viewTractRef
{
  v8 = objc_msgSend_tableInfo(self, a2, v2, v3);
  lastKnownTractRef = self->_lastKnownTractRef;
  if (!v8)
  {
    v23 = lastKnownTractRef;
    goto LABEL_13;
  }

  if (objc_msgSend_isValid(lastKnownTractRef, v5, v6, v7))
  {
    v13 = objc_msgSend_translator(v8, v10, v11, v12);
    v17 = objc_msgSend_viewMap(v13, v14, v15, v16);
    v21 = objc_msgSend_versionCounter(v17, v18, v19, v20);
    viewMapVersionCounter = self->_viewMapVersionCounter;

    if (v21 == viewMapVersionCounter)
    {
      v23 = self->_lastKnownTractRef;
LABEL_13:
      v35 = v23;
      goto LABEL_45;
    }
  }

  if (objc_msgSend_spansAllRows(self, v10, v11, v12))
  {
    objc_msgSend_uidRange(self, v24, v25, v26);
    v32 = objc_msgSend_columnIndexesForUIDs_(v8, v27, &v88, v28);
    if (v88._multipleRanges)
    {
      multipleRanges = v88._multipleRanges;
      operator delete(v88._multipleRanges);
    }

    if (*&v88)
    {
      v88._singleRange._begin = v88;
      operator delete(*&v88);
    }

    if (objc_msgSend_count(v32, v29, v30, v31))
    {
      v33 = 0;
      v34 = 0;
      goto LABEL_35;
    }

    v34 = v32;
  }

  else if (objc_msgSend_spansAllColumns(self, v24, v25, v26))
  {
    objc_msgSend_uidRange(self, v36, v37, v38);
    v34 = objc_msgSend_rowIndexesForUIDs_(v8, v39, &v88._multipleRanges, v40);
    if (v88._multipleRanges)
    {
      multipleRanges = v88._multipleRanges;
      operator delete(v88._multipleRanges);
    }

    if (*&v88)
    {
      v88._singleRange._begin = v88;
      operator delete(*&v88);
    }

    if (objc_msgSend_count(v34, v41, v42, v43))
    {
      v33 = 0;
      v32 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    objc_msgSend_uidRange(self, v36, v37, v38);
    v32 = objc_msgSend_columnIndexesForUIDs_(v8, v44, &v88, v45);
    if (v88._multipleRanges)
    {
      multipleRanges = v88._multipleRanges;
      operator delete(v88._multipleRanges);
    }

    if (*&v88)
    {
      v88._singleRange._begin = v88;
      operator delete(*&v88);
    }

    objc_msgSend_uidRange(self, v46, v47, v48);
    v34 = objc_msgSend_rowIndexesForUIDs_(v8, v49, &v88._multipleRanges, v50);
    if (v88._multipleRanges)
    {
      multipleRanges = v88._multipleRanges;
      operator delete(v88._multipleRanges);
    }

    if (*&v88)
    {
      v88._singleRange._begin = v88;
      operator delete(*&v88);
    }

    if (objc_msgSend_count(v32, v51, v52, v53) && objc_msgSend_count(v34, v54, v55, v56))
    {
      v33 = 0;
      goto LABEL_35;
    }
  }

  v34 = 0;
  v32 = 0;
  v33 = 1;
LABEL_35:
  v57 = [TSCECellTractRef alloc];
  MEMORY[0x223D9F7A0](&v88, v32);
  MEMORY[0x223D9F7A0](&v87, v34);
  v86[0] = objc_msgSend_tableUID(self, v58, v59, v60);
  v86[1] = v61;
  v35 = objc_msgSend_initWithColumns_rows_tableUID_(v57, v61, &v88, &v87, v86);
  TSUIndexSet::~TSUIndexSet(&v87);
  TSUIndexSet::~TSUIndexSet(&v88);
  Index = objc_msgSend_firstIndex(v34, v62, v63, v64);
  v69 = objc_msgSend_lastIndex(v34, v66, v67, v68);
  v73 = objc_msgSend_translator(v8, v70, v71, v72);
  v76 = v73;
  if (v73 && (v77 = objc_msgSend_baseRowIndexForViewRowIndex_(v73, v74, Index, v75), v77 > objc_msgSend_baseRowIndexForViewRowIndex_(v76, v78, v69, v79)))
  {
    *&v88 = self->_basePreserveFlags;
    v80 = TSUPreserveFlags::swapRowFlags(&v88);
    objc_msgSend_setPreserveFlags_(v35, v81, v80, v82);
  }

  else
  {
    objc_msgSend_setPreserveFlags_(v35, v74, self->_basePreserveFlags, v75);
  }

  if ((v33 & 1) == 0)
  {
    if (v32)
    {
      if (!v34)
      {
        objc_msgSend_setSpansAllRows_(v35, v83, 1, v84);
      }
    }

    else
    {
      objc_msgSend_setSpansAllColumns_(v35, v83, 1, v84);
    }
  }

LABEL_45:

  return v35;
}

- (id)chromeTractRef
{
  v8 = objc_msgSend_tableInfo(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_viewTractRef(self, v5, v6, v7);
    v13 = objc_msgSend_tableInfo(self, v10, v11, v12);
    v17 = objc_msgSend_translator(v13, v14, v15, v16);
    v21 = objc_msgSend_coordinateMapper(v17, v18, v19, v20);

    v24 = objc_msgSend_chromeTractRefForViewTractRef_(v21, v22, v9, v23);
  }

  else
  {
    v24 = self->_lastKnownTractRef;
  }

  return v24;
}

- (id)viewTractRefIfFullyValid
{
  v5 = objc_msgSend_viewTractRef(self, a2, v2, v3);
  if (!objc_msgSend_isValid(v5, v6, v7, v8))
  {
    goto LABEL_22;
  }

  if (!self->_viewUidMapper)
  {
    v16 = objc_msgSend_spansAllColumns(v5, v9, v10, v11);
    if ((v16 & 1) != 0 || (v17 = objc_msgSend_numColumns(v5, v13, v14, v15), objc_msgSend_uidRange(self, v18, v19, v20), v17 == (v35 - v34) >> 4))
    {
      if (objc_msgSend_spansAllRows(v5, v13, v14, v15))
      {
        if (v16)
        {
          goto LABEL_3;
        }

        v24 = 1;
      }

      else
      {
        v25 = objc_msgSend_numRows(v5, v21, v22, v23);
        objc_msgSend_uidRange(self, v26, v27, v28);
        v24 = (v33 - v32) >> 4 == v25;
        if (v32)
        {
          operator delete(v32);
        }

        if (__p)
        {
          operator delete(__p);
        }

        if (v16)
        {
          if ((v33 - v32) >> 4 == v25)
          {
            goto LABEL_3;
          }

LABEL_22:
          v12 = 0;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    if (v36)
    {
      operator delete(v36);
    }

    if (v34)
    {
      operator delete(v34);
    }

    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_22;
  }

LABEL_3:
  v12 = v5;
LABEL_23:
  v29 = v12;

  return v12;
}

- (TSUViewCellCoord)viewTopLeftCoord
{
  objc_msgSend_viewRangeRefs(self, a2, v2, v3);
  v4 = 0x7FFFFFFFLL;
  if (v14 == v15)
  {
    v11 = 0;
    v12 = 0x7FFF00000000;
    if (!v14)
    {
      return (v11 | v12 | v4);
    }

    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0x7FFFLL;
  LODWORD(v7) = 0x7FFFFFFF;
  v8 = v14;
  do
  {
    v9 = *v8;
    if (v7 == 0x7FFFFFFF || v6 == 0x7FFF || v7 > v9 || (v7 == v9 ? (v10 = v6 > WORD2(*v8)) : (v10 = 0), v10))
    {
      v5 = HIWORD(v9);
      v7 = *v8;
      v6 = WORD2(*v8);
    }

    v8 += 4;
  }

  while (v8 != v15);
  v11 = v5 << 48;
  v12 = v6 << 32;
  v4 = v7;
  if (v14)
  {
LABEL_14:
    operator delete(v14);
  }

  return (v11 | v12 | v4);
}

- (TSUViewCellCoord)viewBottomRightCoord
{
  objc_msgSend_viewRangeRefs(self, a2, v2, v3);
  v4 = 0x7FFFFFFFLL;
  if (v16 == v17)
  {
    v13 = 0;
    v14 = 0x7FFF00000000;
    if (!v16)
    {
      return (v13 | v14 | v4);
    }

    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0x7FFFLL;
  v7 = v16;
  LODWORD(v8) = 0x7FFFFFFF;
  do
  {
    v9 = v7[1];
    v11 = v8 != 0x7FFFFFFF && v6 != 0x7FFF && v8 >= v9;
    if (!v11 || (v8 == v9 ? (v12 = v6 >= WORD2(v9)) : (v12 = 1), !v12))
    {
      v5 = HIWORD(v9);
      v8 = v7[1];
      v6 = WORD2(v9);
    }

    v7 += 4;
  }

  while (v7 != v17);
  v13 = v5 << 48;
  v14 = v6 << 32;
  v4 = v8;
  if (v16)
  {
LABEL_18:
    operator delete(v16);
  }

  return (v13 | v14 | v4);
}

- (TSUModelCellCoord)baseTopLeftCoord
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3);
  v4 = 0x7FFFFFFFLL;
  if (v14 == v15)
  {
    v11 = 0;
    v12 = 0x7FFF00000000;
    if (!v14)
    {
      return (v11 | v12 | v4);
    }

    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0x7FFFLL;
  LODWORD(v7) = 0x7FFFFFFF;
  v8 = v14;
  do
  {
    v9 = *v8;
    if (v7 == 0x7FFFFFFF || v6 == 0x7FFF || v7 > v9 || (v7 == v9 ? (v10 = v6 > WORD2(*v8)) : (v10 = 0), v10))
    {
      v5 = HIWORD(v9);
      v7 = *v8;
      v6 = WORD2(*v8);
    }

    v8 += 4;
  }

  while (v8 != v15);
  v11 = v5 << 48;
  v12 = v6 << 32;
  v4 = v7;
  if (v14)
  {
LABEL_14:
    operator delete(v14);
  }

  return (v11 | v12 | v4);
}

- (TSUModelCellCoord)baseBottomRightCoord
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3);
  v4 = 0x7FFFFFFFLL;
  if (v16 == v17)
  {
    v13 = 0;
    v14 = 0x7FFF00000000;
    if (!v16)
    {
      return (v13 | v14 | v4);
    }

    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0x7FFFLL;
  v7 = v16;
  LODWORD(v8) = 0x7FFFFFFF;
  do
  {
    v9 = v7[1];
    v11 = v8 != 0x7FFFFFFF && v6 != 0x7FFF && v8 >= v9;
    if (!v11 || (v8 == v9 ? (v12 = v6 >= WORD2(v9)) : (v12 = 1), !v12))
    {
      v5 = HIWORD(v9);
      v8 = v7[1];
      v6 = WORD2(v9);
    }

    v7 += 4;
  }

  while (v7 != v17);
  v13 = v5 << 48;
  v14 = v6 << 32;
  v4 = v8;
  if (v16)
  {
LABEL_18:
    operator delete(v16);
  }

  return (v13 | v14 | v4);
}

- (id)viewCellRegionWithRangeContext:(unsigned __int8)context
{
  contextCopy = context;
  v6 = objc_msgSend_tableInfo(self, a2, context, v3);
  v10 = objc_msgSend_baseTableModel(v6, v7, v8, v9);
  if ((objc_msgSend_spansAllRows(self, v11, v12, v13) & 1) != 0 || objc_msgSend_spansAllColumns(self, v14, v15, v16))
  {
    v17 = objc_msgSend_range(v10, v14, v15, v16);
    v19 = v18;
    v22 = objc_msgSend_bodyRange(v10, v18, v20, v21);
    v24 = v23;
    v27 = objc_msgSend_invalidRegion(TSTCellRegion, v23, v25, v26);
    objc_msgSend_baseRangeRefs(self, v28, v29, v30);
    v35 = __p;
    if (__p == v51)
    {
      v38 = v27;
    }

    else
    {
      do
      {
        v36 = sub_221387DDC(*v35, v35[1], contextCopy, v17, v19, v22, v24, v34);
        v38 = objc_msgSend_regionByAddingRange_(v27, v37, v36, v37);

        v35 += 4;
        v27 = v38;
      }

      while (v35 != v51);
      v35 = __p;
    }

    if (v35)
    {
      v51 = v35;
      operator delete(v35);
    }
  }

  else
  {
    v39 = objc_msgSend_columnRowUIDMap(v10, v14, v15, v16);
    objc_msgSend_uidRange(self, v40, v41, v42);
    v38 = objc_msgSend_cellRegionForUIDRange_(v39, v43, &__p, v44);
    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }
  }

  v45 = objc_msgSend_translator(v6, v31, v32, v33);
  v48 = objc_msgSend_viewCellRegionForBaseCellRegion_(v45, v46, v38, v47);

  return v48;
}

- (BOOL)isValidReference
{
  objc_msgSend_baseRangeRefs(self, a2, v2, v3);
  v8 = __p;
  if (__p == v16)
  {
    IsValidIncludingSheet = 1;
    if (!__p)
    {
      return IsValidIncludingSheet;
    }

    goto LABEL_7;
  }

  do
  {
    v9 = objc_msgSend_calcEngine(self, v5, v6, v7);
    IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v9, v10, v8, v11);

    v8 += 32;
    if (v8 == v16)
    {
      v13 = 0;
    }

    else
    {
      v13 = IsValidIncludingSheet;
    }
  }

  while ((v13 & 1) != 0);
  v8 = __p;
  if (__p)
  {
LABEL_7:
    operator delete(v8);
  }

  return IsValidIncludingSheet;
}

- (BOOL)spansAllColumns
{
  if (self->_lastKnownTractRef)
  {
    lastKnownTractRef = self->_lastKnownTractRef;

    return objc_msgSend_spansAllColumns(lastKnownTractRef, a2, v2, v3);
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3);
    v7 = v9;
    v8 = v10 - v9 == 16 && !*v9 && v9[1] == 0;
    if (__p)
    {
      operator delete(__p);
      v7 = v9;
    }

    if (v7)
    {
      operator delete(v7);
    }

    return v8;
  }
}

- (BOOL)spansAllRows
{
  if (self->_lastKnownTractRef)
  {
    lastKnownTractRef = self->_lastKnownTractRef;

    return objc_msgSend_spansAllRows(lastKnownTractRef, a2, v2, v3);
  }

  objc_msgSend_uidRange(self, a2, v2, v3);
  if (v10 - v9 == 16)
  {
    if (*v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9[1] == 0;
    }
  }

  else
  {
    v7 = 0;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  operator delete(v9);
LABEL_12:
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

- (id)uidTractListWithPurpose:(unsigned __int8)purpose
{
  purposeCopy = purpose;
  if (objc_msgSend_isValid(self, a2, purpose, v3))
  {
    objc_msgSend_uidRange(self, v6, v7, v8);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    v9 = objc_opt_new();
    v10 = [TSCEUndoTract alloc];
    objc_msgSend_uidRange(self, v11, v12, v13);
    objc_msgSend_uidRange(self, v14, v15, v16);
    v20 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v10, v17, v26, v25, purposeCopy);
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    if (v24)
    {
      operator delete(v24);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }

    objc_msgSend_appendUidTract_(v9, v18, v20, v19);
    objc_msgSend_setPreserveFlags_(v9, v21, self->_basePreserveFlags, v22);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)area
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    v5 = objc_msgSend_numberOfColumns(self, a2, v2, v3);
    return objc_msgSend_numberOfRows(self, v6, v7, v8) * v5;
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3);
    v10 = __p;
    v11 = (v15 - __p) >> 4;
    v12 = (v17 - v16) >> 4;
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
      v10 = __p;
    }

    v9 = v12 * v11;
    if (v10)
    {
      v15 = v10;
      operator delete(v10);
    }
  }

  return v9;
}

- (unint64_t)numberOfColumns
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    v4 = objc_msgSend_columns(self->_lastKnownTractRef, a2, v2, v3);

    return TSUIndexSet::count(v4);
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3);
    v6 = v8;
    v7 = (v9 - v8) >> 4;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
      v6 = v8;
    }

    if (v6)
    {
      v9 = v6;
      operator delete(v6);
    }

    return v7;
  }
}

- (unint64_t)numberOfRows
{
  if (self->_viewUidMapper && self->_lastKnownTractRef)
  {
    v4 = objc_msgSend_rows(self->_lastKnownTractRef, a2, v2, v3);

    return TSUIndexSet::count(v4);
  }

  else
  {
    objc_msgSend_uidRange(self, a2, v2, v3);
    if (v7)
    {
      operator delete(v7);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return (v8 - v7) >> 4;
  }
}

- (TSKUIDStruct)singleReferencedColumnUid
{
  if (objc_msgSend_numberOfColumns(self, a2, v2, v3) == 1)
  {
    objc_msgSend_uidRange(self, v5, v6, v7);
    v8 = v13;
    v10 = *v13;
    v9 = *(v13 + 1);
    if (!__p || (v16 = __p, operator delete(__p), (v8 = v13) != 0))
    {
      v14 = v8;
      operator delete(v8);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v10;
  v12 = v9;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@<%p> base:", v6, v4, self);
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end