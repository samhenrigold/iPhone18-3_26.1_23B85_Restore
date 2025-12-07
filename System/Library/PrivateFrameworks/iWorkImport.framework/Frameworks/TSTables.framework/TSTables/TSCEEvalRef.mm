@interface TSCEEvalRef
+ (id)mergeLeftRef:(id)ref rightRef:(id)rightRef outError:(int *)error;
- (TSCECalculationEngine)calcEngine;
- (TSCEEvalRef)init;
- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver topLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags;
- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver tractRefCore:(const TSCECellTractRefCore *)core;
- (TSCEFormat)format:(SEL)format;
- (TSCERangeCoordinate)bodyRangeOfTable;
- (TSCERangeCoordinate)rangeCoord;
- (TSCERangeCoordinate)tableRangeOfTable;
- (TSCERangeRef)rangeRef;
- (TSKUIDStruct)getResolverUID;
- (TSKUIDStruct)tableUID;
- (id)canonicalCellReferenceForReference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intersectionWithHostCellRef:(const TSCECellRef *)ref rangeContext:(unsigned __int8)context evaluationContext:(id)evaluationContext;
- (id)makeCellReferenceForOffset:(const TSCEGridCoord *)offset apparentTractRef:(const TSCECellTractRefCore *)ref;
- (id)makeCellReferenceInSameTable:(const TSUCellCoord *)table;
- (id)scalarValueFromCoord:(const TSUCellCoord *)coord readOptions:(unsigned __int16)options;
- (id)valueForEvalContext:(id)context readOptions:(unsigned __int16)options;
- (unsigned)getHidingActionForRows:(BOOL)rows;
- (void)resetResolver:(id)resolver;
@end

@implementation TSCEEvalRef

- (TSCEEvalRef)init
{
  v6.receiver = self;
  v6.super_class = TSCEEvalRef;
  v2 = [(TSCEEvalRef *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_tableResolver = 0;
    cachedValue = v2->_cachedValue;
    v2->_cachedValue = 0;

    v3->_rangeContextOverride = 3;
  }

  return v3;
}

- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver topLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags
{
  v20.receiver = self;
  v20.super_class = TSCEEvalRef;
  v10 = [(TSCEEvalRef *)&v20 init];
  v14 = v10;
  if (v10)
  {
    v10->_tableResolver = resolver;
    v18._lower = TSCETableResolverWrapper::tableUID(resolver, v11, v12, v13);
    v18._upper = v15;
    TSCECellTractRefCore::TSCECellTractRefCore(&v19, left, right, &v18);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v16 = *(&v19._tableUID._upper + 5);
    v14->_tractRef._tableUID = v19._tableUID;
    *(&v14->_tractRef._tableUID._upper + 5) = v16;
    TSUIndexSet::~TSUIndexSet(&v19._rows);
    TSUIndexSet::~TSUIndexSet(&v19._columns);
    v14->_tractRef._preserveFlags = flags->_flags;
    v14->_rangeContextOverride = 3;
  }

  return v14;
}

- (TSCEEvalRef)initWithTableResolver:(TSCETableResolverWrapper *)resolver tractRefCore:(const TSCECellTractRefCore *)core
{
  v14.receiver = self;
  v14.super_class = TSCEEvalRef;
  v6 = [(TSCEEvalRef *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_tableResolver = resolver;
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v11 = *(&core->_tableUID._upper + 5);
    v7->_tractRef._tableUID = core->_tableUID;
    *(&v7->_tractRef._tableUID._upper + 5) = v11;
    v7->_rangeContextOverride = 3;
    if (!v7->_tractRef._tableUID._lower && resolver && !v7->_tractRef._tableUID._upper)
    {
      v7->_tractRef._tableUID._lower = TSCETableResolverWrapper::tableUID(resolver, v8, v9, v10);
      v7->_tractRef._tableUID._upper = v12;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEEvalRef alloc];
  v6 = objc_msgSend_initWithTableResolver_tractRefCore_(v4, v5, self->_tableResolver, &self->_tractRef);
  *(v6 + 104) = self->_rangeContextOverride;
  objc_storeStrong((v6 + 112), self->_cachedValue);
  *(v6 + 120) = self->_cachedValueWasFetchedWithRichTextAttributes;
  return v6;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tractRef._tableUID._upper;
  lower = self->_tractRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSCECalculationEngine)calcEngine
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    tableResolver = TSCETableResolverWrapper::calcEngine(tableResolver, a2, v2, v3);
    v4 = vars8;
  }

  return tableResolver;
}

- (void)resetResolver:(id)resolver
{
  resolverCopy = resolver;
  v11[0] = objc_msgSend_getResolverUID(self, v5, v6, v7);
  v11[1] = v8;
  if (resolverCopy)
  {
    v10 = objc_msgSend_tableResolverWrapperForTableUID_(resolverCopy, v8, v11, v9);
  }

  else
  {
    v10 = 0;
  }

  self->_tableResolver = v10;
}

- (TSCERangeCoordinate)rangeCoord
{
  v3 = TSCECellTractRefCore::topLeft(&self->_tractRef);
  v4 = TSCECellTractRefCore::bottomRight(&self->_tractRef);
  v5 = v3;
  result._bottomRight = v4;
  result._topLeft = v5;
  return result;
}

- (TSCERangeRef)rangeRef
{
  v7 = objc_msgSend_rangeCoord(self, a3, v3, v4);
  v9 = v8;
  result = objc_msgSend_tableUID(self, v8, v10, v11);
  retstr->range._topLeft = v7;
  retstr->range._bottomRight = v9;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v13;
  return result;
}

- (TSCERangeCoordinate)bodyRangeOfTable
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    v5 = TSCETableResolverWrapper::bodyRangeCoordinate(tableResolver, a2, v2, v3);
  }

  else
  {
    v5 = 0x7FFF7FFFFFFFLL;
    v6 = 0x7FFF7FFFFFFFLL;
  }

  result._bottomRight = v6;
  result._topLeft = v5;
  return result;
}

- (TSCERangeCoordinate)tableRangeOfTable
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    v5 = TSCETableResolverWrapper::tableRangeCoordinate(tableResolver, a2, v2, v3);
  }

  else
  {
    v5 = 0x7FFF7FFFFFFFLL;
    v6 = 0x7FFF7FFFFFFFLL;
  }

  result._bottomRight = v6;
  result._topLeft = v5;
  return result;
}

- (id)makeCellReferenceForOffset:(const TSCEGridCoord *)offset apparentTractRef:(const TSCECellTractRefCore *)ref
{
  v14 = TSCECellTractRefCore::coordAtColumnOffset(ref, offset->column, offset->row, ref);
  v6 = [TSCEEvalRef alloc];
  tableResolver = self->_tableResolver;
  flags = ref->_preserveFlags._flags;
  v9 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v6, v8, tableResolver, &v14, &v14, &flags);
  objc_msgSend_setRangeContextOverride_(v9, v10, self->_rangeContextOverride, v11);

  return v9;
}

- (id)makeCellReferenceInSameTable:(const TSUCellCoord *)table
{
  if (table->_preserveRow)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | table->_preserveColumn;
  v7 = [TSCEEvalRef alloc];
  tableResolver = self->_tableResolver;
  v12 = 5 * v6;
  v10 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v7, v9, tableResolver, table, table, &v12);

  return v10;
}

- (id)intersectionWithHostCellRef:(const TSCECellRef *)ref rangeContext:(unsigned __int8)context evaluationContext:(id)evaluationContext
{
  contextCopy = context;
  evaluationContextCopy = evaluationContext;
  coordinate = ref->coordinate;
  if (contextCopy != 1)
  {
    tableResolver = self->_tableResolver;
    if (tableResolver && ((lower = ref->_tableUID._lower, upper = ref->_tableUID._upper, lower == TSCETableResolverWrapper::tableUID(tableResolver, v8, v9, v10)) ? (v15 = upper == v8) : (v15 = 0), v15))
    {
      v19 = self->_tableResolver;
      if (!v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = objc_msgSend_calcEngine(self, v8, v9, v10);
      *&v57._columns = ref->_tableUID;
      v19 = objc_msgSend_tableResolverWrapperForTableUID_(v16, v17, &v57, v18);

      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (self->_tableResolver)
    {
      if (*(objc_msgSend_tractRef(self, v8, v9, v10) + 80) == 1 || *(objc_msgSend_tractRef(self, v20, v21, v22) + 80) == 2)
      {
        *&v54 = TSCETableResolverWrapper::tableUID(self->_tableResolver, v20, v21, v22);
        v54._singleRange._begin = v23;
        objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v23, &v54, v24);
        *&v57._columns = 0;
        TSCERangeRef::TSCERangeRef(&v56, &v55);
        v57._columns._singleRange = v56._columns;
        *&v57._columns._multipleRanges = *&v56._columns._singleRange._end;
        LOBYTE(v57._rows._singleRange._begin) = 0;
        v57._tableUID._upper = 0;
        memset(&v57._rows._singleRange._end, 0, 18);
        objc_msgSend_addCalculatedPrecedent_(evaluationContextCopy, v25, &v57, v26);
      }

      if ((TSCETableResolverWrapper::isHeaderCell(v19, &coordinate, v21, v22) & 1) != 0 || TSCETableResolverWrapper::isFooterCell(v19, &coordinate, v28, v29))
      {
        v30 = TSCETableResolverWrapper::bodyRangeCoordinate(self->_tableResolver, v27, v28, v29);
        v32 = v31;
        if ((*(objc_msgSend_tractRef(self, v31, v33, v34) + 80) != 1 || WORD2(v32) != WORD2(v30)) && (*(objc_msgSend_tractRef(self, v35, v36, v37) + 80) != 2 || v32 != v30))
        {
          contextCopy = 1;
        }
      }
    }
  }

LABEL_21:
  sub_2210F0C3C(&v57);
  v41 = self->_tableResolver;
  if (v41)
  {
    v42 = objc_msgSend_tractRef(self, v38, v39, v40);
    TSCETableResolverWrapper::apparentTractRefForTractRef(v41, v42, contextCopy, &v56);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v57._tableUID = v56._tableUID;
    *(&v57._tableUID._upper + 5) = *(&v56._tableUID._upper + 5);
    TSUIndexSet::~TSUIndexSet(&v56._rows);
    TSUIndexSet::~TSUIndexSet(&v56._columns);
  }

  if (!sub_2210EE8F8(&v57._columns))
  {
    v45 = 0;
    goto LABEL_36;
  }

  if (TSCECellTractRefCore::isSingleCell(&v57))
  {
    v43 = [TSCEEvalRef alloc];
    v45 = objc_msgSend_initWithTableResolver_tractRefCore_(v43, v44, self->_tableResolver, &v57);
    goto LABEL_36;
  }

  *&v55 = -1;
  *&v46.f64[0] = 0x8000000080000000;
  *&v46.f64[1] = 0x8000000080000000;
  v52 = vnegq_f64(v46);
  v55._singleRange = v52;
  v55._multipleRanges = 0;
  TSUIndexSet::operator=();
  *&v54 = -1;
  v54._singleRange = v52;
  v54._multipleRanges = 0;
  TSUIndexSet::operator=();
  spanType = v57._spanType;
  if (v57._spanType == 1 || TSUIndexSet::containsIndex(&v55))
  {
    v53._begin = coordinate.column;
    v53._end = coordinate.column;
    TSUIndexSet::TSUIndexSet(&v56._columns, &v53);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v56._columns);
    v48 = 1;
  }

  else
  {
    v48 = 0;
  }

  if (spanType == 2 || TSUIndexSet::containsIndex(&v54))
  {
    v53._begin = coordinate.row;
    v53._end = coordinate.row;
    TSUIndexSet::TSUIndexSet(&v56._columns, &v53);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v56._columns);
  }

  else if (!v48)
  {
    v45 = 0;
    goto LABEL_35;
  }

  TSCECellTractRefCore::TSCECellTractRefCore(&v56, &v55, &v54, &v57._tableUID);
  *&v56._preserveFlags._flags = *&v57._preserveFlags._flags;
  v49 = [TSCEEvalRef alloc];
  v45 = objc_msgSend_initWithTableResolver_tractRefCore_(v49, v50, self->_tableResolver, &v56);
  TSUIndexSet::~TSUIndexSet(&v56._rows);
  TSUIndexSet::~TSUIndexSet(&v56._columns);
LABEL_35:
  TSUIndexSet::~TSUIndexSet(&v54);
  TSUIndexSet::~TSUIndexSet(&v55);
LABEL_36:
  TSUIndexSet::~TSUIndexSet(&v57._rows);
  TSUIndexSet::~TSUIndexSet(&v57._columns);

  return v45;
}

- (TSCEFormat)format:(SEL)format
{
  v6 = a4;
  result = self->_tableResolver;
  if (result)
  {
    TSCETableResolverWrapper::formatFromCell(result, self, &v6, retstr);
  }

  else
  {
    retstr->_tskFormat = 0;
    retstr->_formatType = 0;
    retstr->_formatState = 0;
    *&retstr->_durationFormat = *&retstr->_durationFormat & 0xC080 | 0x421;
    *(&retstr->_durationFormat + 2) = *(&retstr->_durationFormat + 2) & 0xF8 | 1;
    *&retstr->_baseFormat.base = -50266102;
    retstr->_numberFormat.decimalPlaces = -3;
    *(&retstr->_numberFormat + 1) &= 0xE0u;
    retstr->_numberFormat.currencyCodeIndex = 0;
  }

  return result;
}

- (TSKUIDStruct)getResolverUID
{
  upper = self->_tractRef._tableUID._upper;
  lower = self->_tractRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (unsigned)getHidingActionForRows:(BOOL)rows
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    LOBYTE(tableResolver) = TSCETableResolverWrapper::getHidingActionForRow(tableResolver, self, rows);
  }

  return tableResolver;
}

- (id)canonicalCellReferenceForReference
{
  tableResolver = self->_tableResolver;
  if (tableResolver)
  {
    tableResolver = TSCETableResolverWrapper::canonicalCellReferenceForReference(tableResolver, self, v2, v3);
    v4 = vars8;
  }

  return tableResolver;
}

- (id)valueForEvalContext:(id)context readOptions:(unsigned __int16)options
{
  optionsCopy = options;
  contextCopy = context;
  if (!contextCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEEvalRef valueForEvalContext:readOptions:]", v8);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvalRef.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 294, 0, "invalid nil value for '%{public}s'", "evaluationContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    goto LABEL_7;
  }

  p_var0 = &self->_tableResolver->var0;
  if (p_var0)
  {
    goto LABEL_9;
  }

  v11 = objc_msgSend_tableUID(self, v6, v7, v8);
  if (!(v11 | v12))
  {
    p_var0 = objc_msgSend_containingTableResolverWrapper(contextCopy, v12, v13, v14);
    if (p_var0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v30 = objc_msgSend_nilValue(TSCENilValue, v6, v7, v8);
    goto LABEL_11;
  }

  v15 = objc_msgSend_calcEngine(contextCopy, v12, v13, v14);
  v38[0] = objc_msgSend_tableUID(self, v16, v17, v18);
  v38[1] = v19;
  p_var0 = objc_msgSend_tableResolverWrapperForTableUID_(v15, v19, v38, v20);

  if (!p_var0)
  {
    goto LABEL_7;
  }

LABEL_9:
  objc_msgSend_containingCellRef(contextCopy, v6, v7, v8);
  v37 = 0;
  v31 = TSCETableResolverWrapper::readValueForReference(p_var0, self, v38, &v37, optionsCopy);
  v30 = v37;
  if (!v30)
  {
    v30 = objc_msgSend_nilValue(TSCENilValue, v32, v33, v34);
  }

LABEL_11:
  v35 = v30;

  return v35;
}

- (id)scalarValueFromCoord:(const TSUCellCoord *)coord readOptions:(unsigned __int16)options
{
  p_var0 = &self->_tableResolver->var0;
  if (p_var0)
  {
    v7 = *coord;
    var18[1] = 0;
    var18[2] = 0;
    v13 = 0;
    var18[0] = v7;
    v8 = TSCETableResolverWrapper::readValueForReference(p_var0, self, var18, &v13, options);
    p_var0 = v13;
    if (!p_var0)
    {
      p_var0 = objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
    }

    v4 = var18[4];
  }

  return p_var0;
}

+ (id)mergeLeftRef:(id)ref rightRef:(id)rightRef outError:(int *)error
{
  refCopy = ref;
  rightRefCopy = rightRef;
  if ((objc_msgSend_topLeft(refCopy, v9, v10, v11) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (objc_msgSend_bottomRight(refCopy, v12, v13, v14) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (objc_msgSend_topLeft(rightRefCopy, v12, v13, v14) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (objc_msgSend_bottomRight(rightRefCopy, v12, v13, v14) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v69 = objc_msgSend_tableUID(refCopy, v12, v13, v14);
    v71 = v70;
    v74 = objc_msgSend_tableUID(rightRefCopy, v70, v72, v73);
    v15 = 0;
    v16 = 1;
    if (v69 == v74 && v71 == v12)
    {
      v75 = objc_msgSend_topLeft(refCopy, v12, v13, v14);
      v79 = objc_msgSend_topLeft(rightRefCopy, v76, v77, v78);
      v15 = 0;
      v16 = 1;
      if ((v75 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v79 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
      {
        v81 = (v75 & 0xFFFF00000000) == 0x7FFF00000000 && v75 != 0x7FFFFFFFLL;
        v83 = (v79 & 0xFFFF00000000) == 0x7FFF00000000 && v79 != 0x7FFFFFFFLL;
        v16 = 1;
        if (v81 == v83)
        {
          v85 = v75 == 0x7FFFFFFFLL && (v75 & 0xFFFF00000000) != 0x7FFF00000000;
          v87 = v79 != 0x7FFFFFFFLL || (v79 & 0xFFFF00000000) == 0x7FFF00000000;
          v15 = v85 ^ v87;
          v16 = (v15 & 1) == 0;
        }

        else
        {
          v15 = 0;
        }
      }
    }
  }

  if (error)
  {
    *error = v16;
  }

  if (v15)
  {
    v17 = *(objc_msgSend_tractRef(refCopy, v12, v13, v14) + 81);
    v21 = *(objc_msgSend_tractRef(rightRefCopy, v18, v19, v20) + 81);
    v25 = objc_msgSend_topLeft(refCopy, v22, v23, v24);
    v29 = objc_msgSend_bottomRight(refCopy, v26, v27, v28);
    v33 = objc_msgSend_topLeft(refCopy, v30, v31, v32);
    v37 = objc_msgSend_bottomRight(refCopy, v34, v35, v36);
    v44 = HIDWORD(v25);
    if ((objc_msgSend_topLeft(rightRefCopy, v38, v39, v40) >> 32) >= WORD2(v25))
    {
      v45 = v17 & 3;
    }

    else
    {
      v44 = objc_msgSend_topLeft(rightRefCopy, v41, v42, v43) >> 32;
      v45 = v17 & 2 | v21 & 1;
    }

    if (objc_msgSend_topLeft(rightRefCopy, v41, v42, v43) < v33)
    {
      v33 = objc_msgSend_topLeft(rightRefCopy, v47, v48, v49);
      v45 = v21 & 2 | v45 & 1;
    }

    v53 = HIDWORD(v29);
    if ((objc_msgSend_bottomRight(rightRefCopy, v47, v48, v49) >> 32) >= v53)
    {
      v53 = objc_msgSend_bottomRight(rightRefCopy, v50, v51, v52) >> 32;
      v54 = (v17 >> 2) & 2 | (v21 >> 2) & 1;
    }

    else
    {
      v54 = (v17 >> 2) & 3;
    }

    if (objc_msgSend_bottomRight(rightRefCopy, v50, v51, v52) >= v37)
    {
      v37 = objc_msgSend_bottomRight(rightRefCopy, v55, v56, v57);
      v54 = v54 & 1 | (2 * ((v21 >> 3) & 1));
    }

    v91._topLeft = (((v45 & 1) << 56) | ((v45 >> 1) << 48) | v33 | (v44 << 32));
    v91._bottomRight = (((v54 & 1) << 56) | ((v54 >> 1) << 48) | v37 | (v53 << 32));
    v90._flags = v45 | (4 * v54);
    TSCERangeCoordinate::fixInversions(&v91, &v90);
    v61 = objc_msgSend_tableResolver(refCopy, v58, v59, v60);
    v88._lower = objc_msgSend_tableUID(refCopy, v62, v63, v64);
    v88._upper = v65;
    TSCECellTractRefCore::TSCECellTractRefCore(&v89, &v91._topLeft, &v91._bottomRight, &v88);
    v89._preserveFlags = v90;
    v66 = [TSCEEvalRef alloc];
    v46 = objc_msgSend_initWithTableResolver_tractRefCore_(v66, v67, v61, &v89);
    TSUIndexSet::~TSUIndexSet(&v89._rows);
    TSUIndexSet::~TSUIndexSet(&v89._columns);
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

@end