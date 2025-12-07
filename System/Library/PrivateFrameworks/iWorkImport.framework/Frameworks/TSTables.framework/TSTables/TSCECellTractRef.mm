@interface TSCECellTractRef
+ (id)cellTractRefWithUidTractList:(id)list onTable:(const TSKUIDStruct *)table preserveFlags:(TSUPreserveFlags)flags rewriteContext:(TSCEFormulaRewriteContext *)context;
- (BOOL)edgeExpandTractUsingIncludeUidTract:(id)tract resolver:(id)resolver forRows:(BOOL)rows isInverse:(BOOL)inverse;
- (BOOL)edgeExpandUsingMovingUids:(id)uids tractList:(id)list;
- (BOOL)isEqual:(id)equal;
- (TSCECellTractRef)initWithCellRefVector:(const void *)vector;
- (TSCECellTractRef)initWithColumns:(const TSUIndexSet *)columns rows:(const TSUIndexSet *)rows tableUID:(const TSKUIDStruct *)d;
- (TSCECellTractRef)initWithCppCellTractRef:(const TSCECellTractRefCore *)ref;
- (TSCECellTractRef)initWithRangeRef:(const TSCERangeRef *)ref;
- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right;
- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right tableUID:(const TSKUIDStruct *)d;
- (TSCECellTractRef)initWithUidTract:(const void *)tract calcEngine:(id)engine tableUID:(const TSKUIDStruct *)d;
- (TSCECellTractRefCore)cppCellTractRef;
- (TSCERangeCoordinate)boundingRange;
- (TSCERangeRef)boundingRangeRef;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructTract)uidTractWithCalcEngine:(SEL)engine hostTableUID:(id)d;
- (id)collapseOutColumnIndexes:(id)indexes;
- (id)collapseOutRowIndexes:(id)indexes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)edgeExpandUsingIndexes:(id)indexes forRows:(BOOL)rows;
- (id)expandUsingIndexes:(id)indexes forRows:(BOOL)rows;
- (id)fillInColumnGapsUsingIndexes:(id)indexes;
- (id)fillInRowGapsUsingIndexes:(id)indexes;
- (void)foreachAnyRef:(id)ref;
- (void)foreachRangeRef:(id)ref;
- (void)setCppCellTractRef:(TSCECellTractRefCore *)ref;
- (void)setPreserveFlagsOnSubrange:(TSCERangeRef *)subrange;
@end

@implementation TSCECellTractRef

- (TSCECellTractRef)initWithColumns:(const TSUIndexSet *)columns rows:(const TSUIndexSet *)rows tableUID:(const TSKUIDStruct *)d
{
  v12.receiver = self;
  v12.super_class = TSCECellTractRef;
  v8 = [(TSCECellTractRef *)&v12 init];
  if (v8)
  {
    TSCECellTractRefCore::TSCECellTractRefCore(&v11, columns, rows, d);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = v11._tableUID;
    *(v8 + 85) = *(&v11._tableUID._upper + 5);
    *(v8 + 72) = tableUID;
    TSUIndexSet::~TSUIndexSet(&v11._rows);
    TSUIndexSet::~TSUIndexSet(&v11._columns);
  }

  return v8;
}

- (TSCECellTractRef)initWithCppCellTractRef:(const TSCECellTractRefCore *)ref
{
  v7.receiver = self;
  v7.super_class = TSCECellTractRef;
  v4 = [(TSCECellTractRef *)&v7 init];
  if (v4)
  {
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = ref->_tableUID;
    *(v4 + 85) = *(&ref->_tableUID._upper + 5);
    *(v4 + 72) = tableUID;
  }

  return v4;
}

- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right
{
  v11.receiver = self;
  v11.super_class = TSCECellTractRef;
  v6 = [(TSCECellTractRef *)&v11 init];
  if (v6)
  {
    v10._lower = 0;
    v10._upper = 0;
    TSCECellTractRefCore::TSCECellTractRefCore(&v9, left, right, &v10);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = v9._tableUID;
    *(v6 + 85) = *(&v9._tableUID._upper + 5);
    *(v6 + 72) = tableUID;
    TSUIndexSet::~TSUIndexSet(&v9._rows);
    TSUIndexSet::~TSUIndexSet(&v9._columns);
  }

  return v6;
}

- (TSCECellTractRef)initWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right tableUID:(const TSKUIDStruct *)d
{
  v12.receiver = self;
  v12.super_class = TSCECellTractRef;
  v8 = [(TSCECellTractRef *)&v12 init];
  if (v8)
  {
    TSCECellTractRefCore::TSCECellTractRefCore(&v11, left, right, d);
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    tableUID = v11._tableUID;
    *(v8 + 85) = *(&v11._tableUID._upper + 5);
    *(v8 + 72) = tableUID;
    TSUIndexSet::~TSUIndexSet(&v11._rows);
    TSUIndexSet::~TSUIndexSet(&v11._columns);
  }

  return v8;
}

- (TSCECellTractRef)initWithRangeRef:(const TSCERangeRef *)ref
{
  if (TSCERangeCoordinate::isValidOrSpanning(&ref->range))
  {
    topLeft = ref->range._topLeft;
    bottomRight = ref->range._bottomRight;
    v13 = topLeft;
    v7 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(self, v5, &v13, &bottomRight, &ref->_tableUID);
    v8 = TSCERangeRef::preserveFlags(ref);
    self = v7;
    objc_msgSend_setPreserveFlags_(v7, v9, v8, v10);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TSCECellTractRef)initWithCellRefVector:(const void *)vector
{
  v18 = 0;
  v19 = 0;
  TSUIndexSet::TSUIndexSet(&v17);
  TSUIndexSet::TSUIndexSet(&v16);
  v5 = *vector;
  v6 = *(vector + 1);
  if (*vector != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8 | v7)
      {
        v9 = *(v5 + 8) == v8 && *(v5 + 16) == v7;
      }

      else
      {
        v9 = !TSUIndexSet::count(&v17) && TSUIndexSet::count(&v16) == 0;
        v8 = *(v5 + 8);
        v7 = *(v5 + 16);
        v18 = v8;
        v19 = v7;
      }

      TSUIndexSet::addIndex(&v17);
      TSUIndexSet::addIndex(&v16);
      if (!v9)
      {
        goto LABEL_17;
      }

      v5 += 24;
    }

    while (v5 != v6);
  }

  v10 = TSUIndexSet::count(&v17);
  v11 = TSUIndexSet::count(&v16);
  if (!TSUIndexSet::count(&v17) || !TSUIndexSet::count(&v16) || v11 * v10 != 0xAAAAAAAAAAAAAAABLL * ((*(vector + 1) - *vector) >> 3))
  {
LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  self = objc_msgSend_initWithColumns_rows_tableUID_(self, v12, &v17, &v16, &v18);
  selfCopy = self;
LABEL_18:
  v14 = selfCopy;
  TSUIndexSet::~TSUIndexSet(&v16);
  TSUIndexSet::~TSUIndexSet(&v17);

  return v14;
}

- (TSCECellTractRef)initWithUidTract:(const void *)tract calcEngine:(id)engine tableUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  TSUIndexSet::TSUIndexSet(&v38);
  TSUIndexSet::TSUIndexSet(&v37);
  if (!engineCopy)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECellTractRef initWithUidTract:calcEngine:tableUID:]", v10);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRef.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 109, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
    goto LABEL_13;
  }

  v11 = objc_msgSend_resolverForTableUID_(engineCopy, v9, d->_lower, d->_upper);
  v14 = v11;
  if (!v11)
  {
LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v15 = *tract;
  if (*(tract + 1) - *tract != 16 || *v15 || v15[1])
  {
    v16 = objc_msgSend_mutableColumnIndexesForUIDs_(v11, v12, tract, v13);
    MEMORY[0x223D9F7A0](&v36, v16);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v36);
  }

  else
  {
    TSUIndexSet::addIndex(&v38);
  }

  v19 = *(tract + 3);
  v20 = *(tract + 4);
  v21 = tract + 24;
  if (v20 - v19 != 16 || *v19 || v19[1])
  {
    v22 = objc_msgSend_mutableRowIndexesForUIDs_(v14, v17, v21, v18);
    MEMORY[0x223D9F7A0](&v36, v22);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v36);
  }

  else
  {
    TSUIndexSet::addIndex(&v37);
  }

  v24 = objc_msgSend_initWithColumns_rows_tableUID_(self, v23, &v38, &v37, d);
  self = v24;
LABEL_14:
  v34 = v24;
  TSUIndexSet::~TSUIndexSet(&v37);
  TSUIndexSet::~TSUIndexSet(&v38);

  return v34;
}

+ (id)cellTractRefWithUidTractList:(id)list onTable:(const TSKUIDStruct *)table preserveFlags:(TSUPreserveFlags)flags rewriteContext:(TSCEFormulaRewriteContext *)context
{
  listCopy = list;
  v136 = listCopy;
  v137 = context->var0;
  v153[0] = TSCEFormulaRewriteContext::containingTableUID(context);
  v153[1] = v9;
  tableCopy = v153;
  if (*table != 0)
  {
    tableCopy = table;
  }

  v152 = *tableCopy;
  v13 = objc_msgSend_activeUidTract(listCopy, v9, v10, v11);
  v17 = v13;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v134 = v13;
  if (v13)
  {
    v18 = objc_msgSend_columnUids(v13, v14, v15, v16);
    if (&v149 != v18)
    {
      sub_2210BD068(&v149, *v18, v18[1], (v18[1] - *v18) >> 4);
    }

    v22 = objc_msgSend_rowUids(v17, v19, v20, v21);
    if (&v146 != v22)
    {
      sub_2210BD068(&v146, *v22, v22[1], (v22[1] - *v22) >> 4);
    }
  }

  isRangeRef = objc_msgSend_isRangeRef(v17, v14, v15, v16);
  TSCEFormulaRewriteContext::setIsRangeRef(context, isRangeRef);
  objc_msgSend_dropTract_(listCopy, v24, v17, v25);
  v26 = [TSCEMutableUIDSet alloc];
  v139 = objc_msgSend_initWithUUIDVector_(v26, v27, &v149, v28);
  v29 = [TSCEMutableUIDSet alloc];
  v138 = objc_msgSend_initWithUUIDVector_(v29, v30, &v146, v31);
  v38 = objc_msgSend_preserveRectangularRange(v17, v32, v33, v34);
  if (v17)
  {
    v133 = 1;
  }

  else
  {
    v39 = objc_msgSend_includedUidsTract(listCopy, v35, v36, v37);
    v43 = v39;
    v133 = v39 == 0;
    if (v39)
    {
      v44 = objc_msgSend_columnUids(v39, v40, v41, v42);
      objc_msgSend_addUuidsFromVector_(v139, v45, v44, v46);
      v50 = objc_msgSend_rowUids(v43, v47, v48, v49);
      objc_msgSend_addUuidsFromVector_(v138, v51, v50, v52);
      v38 = objc_msgSend_preserveRectangularRange(v43, v53, v54, v55);
      objc_msgSend_dropTract_(listCopy, v56, v43, v57);
    }
  }

  isAllInvalid = objc_msgSend_isAllInvalid(v139, v35, v36, v37);
  v62 = objc_msgSend_isAllInvalid(v138, v59, v60, v61);
  v65 = v62;
  v66 = isAllInvalid & v62;
  if ((isAllInvalid & v62) == 1)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "+[TSCECellTractRef cellTractRefWithUidTractList:onTable:preserveFlags:rewriteContext:]", v64);
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRef.mm", v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v72, v68, v71, 171, 0, "Can't be spanning on both row and column, tractList: %{public}@", listCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
  }

  v76 = objc_opt_new();
  v77 = objc_opt_new();
  v135 = objc_msgSend_tableOrLinkedResolverForTableUID_(v137, v78, &v152, v79);
  TSUIndexSet::TSUIndexSet(&v145);
  TSUIndexSet::TSUIndexSet(&v144);
  if (v65)
  {
    TSUIndexSet::addIndex(&v144);
    if (isAllInvalid)
    {
LABEL_17:
      TSUIndexSet::addIndex(&v145);
      goto LABEL_26;
    }
  }

  else
  {
    if (v135)
    {
      v82 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v135, v80, v138, 1, v77);
    }

    else
    {
      v82 = 0;
    }

    MEMORY[0x223D9F7A0](&v143, v82);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v143);

    if (isAllInvalid)
    {
      goto LABEL_17;
    }
  }

  if (v135)
  {
    v83 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v135, v81, v139, 0, v76);
  }

  else
  {
    v83 = 0;
  }

  MEMORY[0x223D9F7A0](&v143, v83);
  TSUIndexSet::operator=();
  TSUIndexSet::~TSUIndexSet(&v143);

LABEL_26:
  v84 = [TSCECellTractRef alloc];
  v86 = objc_msgSend_initWithColumns_rows_tableUID_(v84, v85, &v145, &v144, &v152);
  objc_msgSend_setPreserveRectangular_(v86, v87, v38, v88);
  if (objc_msgSend_count(v76, v89, v90, v91))
  {
    v95 = objc_msgSend_isAllInvalid(v76, v92, v93, v94);
  }

  else
  {
    v95 = 1;
  }

  if (objc_msgSend_count(v77, v92, v93, v94))
  {
    v99 = objc_msgSend_isAllInvalid(v77, v96, v97, v98);
  }

  else
  {
    v99 = 1;
  }

  v100 = TSCEFormulaRewriteContext::restoreBadRefs(context);
  if (TSCEFormulaRewriteContext::useOnlyActiveTract(context))
  {
    v104 = 1;
  }

  else
  {
    v104 = objc_msgSend_duringRollback(v137, v101, v102, v103);
  }

  if (TSUIndexSet::count(&v145) && TSUIndexSet::count(&v144))
  {
    v108 = (v133 || v100) | v95 & v99;
    if (!v66)
    {
      goto LABEL_38;
    }

LABEL_45:
    objc_msgSend_removeAllUuids(v139, v105, v106, v107);
    objc_msgSend_removeAllUuids(v138, v117, v118, v119);
    goto LABEL_46;
  }

  v108 = 0;
  if (v66)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (v108)
  {
    if (!(v104 & 1 | !v133))
    {
      if (objc_msgSend_isInCollaborationMode(v137, v105, v106, v107))
      {
        v112 = objc_msgSend_includedUidsTract(v136, v109, v110, v111);

        if (v112)
        {
          if (v135)
          {
            v116 = objc_msgSend_referenceResolverObject(v135, v113, v114, v115);
          }

          else
          {
            v116 = 0;
          }

          objc_msgSend_edgeExpandTractUsingIncludeUidTract_resolver_forRows_isInverse_(v86, v113, v136, v116, 1, 1);
          objc_msgSend_edgeExpandTractUsingIncludeUidTract_resolver_forRows_isInverse_(v86, v126, v136, v116, 0, 1);
        }
      }
    }

    if (TSCEFormulaRewriteContext::isRangeRef(context))
    {
      v130 = 1;
    }

    else
    {
      v130 = objc_msgSend_isSingleCellOrSpanningRange(v86, v127, v128, v129) ^ 1;
    }

    TSCEFormulaRewriteContext::setIsRangeRef(context, v130);
    v125 = v86;
    goto LABEL_62;
  }

LABEL_46:
  objc_msgSend_addUuidsFromSet_(v76, v105, v139, v107);
  objc_msgSend_addUuidsFromSet_(v77, v120, v138, v121);
  if (!v76)
  {
    memset(&v143, 0, 24);
    if (v77)
    {
      goto LABEL_48;
    }

LABEL_50:
    __p = 0;
    v141 = 0;
    v142 = 0;
    goto LABEL_51;
  }

  objc_msgSend_uuidsAsVector(v76, v122, v123, v124);
  if (!v77)
  {
    goto LABEL_50;
  }

LABEL_48:
  objc_msgSend_uuidsAsVector(v77, v122, v123, v124);
LABEL_51:
  objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(v136, v122, &v143, &__p);
  if (__p)
  {
    v141 = __p;
    operator delete(__p);
  }

  if (*&v143)
  {
    v143._singleRange._begin = v143;
    operator delete(*&v143);
  }

  v125 = 0;
LABEL_62:
  v131 = v125;

  TSUIndexSet::~TSUIndexSet(&v144);
  TSUIndexSet::~TSUIndexSet(&v145);

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  return v131;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7))
  {
    v8 = equalCopy;
    v12 = v8;
    if (v8)
    {
      objc_msgSend_cppCellTractRef(v8, v9, v10, v11);
    }

    else
    {
      v18 = 0;
      v17 = 0u;
      memset(&v16, 0, sizeof(v16));
      memset(&v15, 0, sizeof(v15));
    }

    v13 = TSCECellTractRefCore::operator==(&self->_cppCellTractRef, &v15);
    TSUIndexSet::~TSUIndexSet(&v16);
    TSUIndexSet::~TSUIndexSet(&v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  tableUID = self->_cppCellTractRef._tableUID;
  *(v4 + 85) = *(&self->_cppCellTractRef._tableUID._upper + 5);
  *(v4 + 72) = tableUID;
  return v4;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_cppCellTractRef._tableUID._upper;
  lower = self->_cppCellTractRef._tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setPreserveFlagsOnSubrange:(TSCERangeRef *)subrange
{
  topLeft = subrange->range._topLeft;
  bottomRight = subrange->range._bottomRight;
  v8 = objc_msgSend_preserveFlags(self, a2, subrange, v3);
  if (objc_msgSend_spansAllColumns(self, v9, v10, v11))
  {
    goto LABEL_2;
  }

  if (v8)
  {
    if ((v8 & 4) != 0)
    {
      v16 = 1;
      v15 = 4;
    }

    else
    {
      v25 = objc_msgSend_columns(self, v12, v13, v14);
      v15 = 0;
      v16 = TSUIndexSet::firstIndex(v25) == topLeft.column;
    }
  }

  else
  {
    if ((v8 & 4) == 0)
    {
LABEL_2:
      v15 = 0;
      v16 = 0;
      goto LABEL_3;
    }

    v22 = objc_msgSend_columns(self, v12, v13, v14);
    v16 = 0;
    v15 = 4 * (TSUIndexSet::lastIndex(v22) == bottomRight.column);
  }

LABEL_3:
  if (objc_msgSend_spansAllRows(self, v12, v13, v14))
  {
LABEL_4:
    v20 = 0;
    v21 = v15 | v16;
    goto LABEL_21;
  }

  if ((v8 & 2) == 0)
  {
    if ((v8 & 8) == 0)
    {
      goto LABEL_4;
    }

    v23 = objc_msgSend_rows(self, v17, v18, v19);
    Index = TSUIndexSet::lastIndex(v23);
    v21 = v15 | v16;
    if (bottomRight.row != Index)
    {
      v20 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v20 = 8;
    goto LABEL_21;
  }

  if ((v8 & 8) != 0)
  {
    v21 = v15 | v16 | 2;
    goto LABEL_20;
  }

  v26 = objc_msgSend_rows(self, v17, v18, v19);
  v27 = TSUIndexSet::firstIndex(v26);
  v20 = 0;
  v21 = v15 | v16;
  if (topLeft.row == v27)
  {
    v21 = v15 | v16 | 2;
  }

LABEL_21:
  v28._flags = v20 | v21;
  TSCERangeRef::setPreserveFlags(subrange, &v28);
}

- (TSCERangeCoordinate)boundingRange
{
  v5 = objc_msgSend_topLeft(self, a2, v2, v3);
  v9 = objc_msgSend_bottomRight(self, v6, v7, v8);
  v10 = v5;
  result._bottomRight = v9;
  result._topLeft = v10;
  return result;
}

- (TSCERangeRef)boundingRangeRef
{
  v7 = objc_msgSend_boundingRange(self, a3, v3, v4);
  v9 = v8;
  v12 = objc_msgSend_tableUID(self, v8, v10, v11);
  retstr->range._topLeft = v7;
  retstr->range._bottomRight = v9;
  retstr->_tableUID._lower = v12;
  retstr->_tableUID._upper = v13;
  v17._flags = objc_msgSend_preserveFlags(self, v13, v14, v15);
  return TSCERangeRef::setPreserveFlags(retstr, &v17);
}

- (TSKUIDStructTract)uidTractWithCalcEngine:(SEL)engine hostTableUID:(id)d
{
  dCopy = d;
  __p[0] = 0;
  __p[1] = 0;
  v50 = 0;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if (!dCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCECellTractRef uidTractWithCalcEngine:hostTableUID:]", v10);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellTractRef.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 495, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    goto LABEL_18;
  }

  lower = objc_msgSend_tableUID(self, v8, v9, v10);
  if (lower)
  {
    goto LABEL_7;
  }

  if (!upper)
  {
    lower = a5->_lower;
    upper = a5->_upper;
LABEL_7:
    objc_msgSend_resolverForTableUID_(dCopy, upper, lower, upper);
    goto LABEL_8;
  }

  objc_msgSend_resolverForTableUID_(dCopy, upper, 0, upper);
  v26 = LABEL_8:;
  if (v26)
  {
    if (objc_msgSend_spansAllColumns(self, v23, v24, v25))
    {
      v45 = 0uLL;
      sub_221083454(__p, &v45);
    }

    else
    {
      v33 = objc_msgSend_columns(self, v27, v28, v29);
      v34 = TSUIndexSet::asNSIndexSet(v33);
      objc_msgSend_columnUIDsForColumnIndexes_(v26, v35, v34, v36);
      *__p = v45;
      v50 = v46;
      v46 = 0;
      v45 = 0uLL;
    }

    if (objc_msgSend_spansAllRows(self, v30, v31, v32))
    {
      v45 = 0uLL;
      sub_221083454(v47, &v45);
    }

    else
    {
      v40 = objc_msgSend_rows(self, v37, v38, v39);
      v41 = TSUIndexSet::asNSIndexSet(v40);
      objc_msgSend_rowUIDsForRowIndexes_(v26, v42, v41, v43);
      if (v47[0])
      {
        v47[1] = v47[0];
        operator delete(v47[0]);
      }

      *v47 = v45;
      v48 = v46;
      v46 = 0;
      v45 = 0uLL;
    }
  }

LABEL_18:
  sub_2210BBBE8(retstr, __p, v47);
  if (v47[0])
  {
    v47[1] = v47[0];
    operator delete(v47[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2210EF00C;
  v10[3] = &unk_27845EAB0;
  v10[4] = self;
  v12 = v13;
  v4 = v3;
  v11 = v4;
  objc_msgSend_foreachCellRect_(self, v5, v10, v6);
  v7 = v11;
  v8 = v4;

  _Block_object_dispose(v13, 8);

  return v8;
}

- (void)foreachAnyRef:(id)ref
{
  refCopy = ref;
  if (objc_msgSend_spansAllColumns(self, v5, v6, v7))
  {
    objc_msgSend_rows(self, v8, v9, v10);
    v11 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2210EF2D8;
    v17[3] = &unk_27845EAD8;
    v17[4] = self;
    v17[5] = refCopy;
    TSUIndexSet::enumerateRangesUsingBlock();
  }

  else if (objc_msgSend_spansAllRows(self, v8, v9, v10))
  {
    objc_msgSend_columns(self, v12, v13, v14);
    v11 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2210EF384;
    v16[3] = &unk_27845EAD8;
    v16[4] = self;
    v16[5] = refCopy;
    TSUIndexSet::enumerateRangesUsingBlock();
  }

  else
  {
    objc_msgSend_rows(self, v12, v13, v14);
    v11 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2210EF434;
    v15[3] = &unk_27845EAD8;
    v15[4] = self;
    v15[5] = refCopy;
    TSUIndexSet::enumerateRangesUsingBlock();
  }
}

- (void)foreachRangeRef:(id)ref
{
  refCopy = ref;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2210EF6F0;
  v8[3] = &unk_27845EB28;
  v8[4] = self;
  v9 = refCopy;
  v5 = refCopy;
  objc_msgSend_foreachCellRect_(self, v6, v8, v7);
}

- (id)collapseOutColumnIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::collapseOutColumnIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (id)collapseOutRowIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::collapseOutRowIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (id)fillInColumnGapsUsingIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::fillInColumnGapsUsingIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (id)fillInRowGapsUsingIndexes:(id)indexes
{
  v3 = TSCECellTractRefCore::fillInRowGapsUsingIndexes(&self->_cppCellTractRef, indexes);

  return v3;
}

- (BOOL)edgeExpandTractUsingIncludeUidTract:(id)tract resolver:(id)resolver forRows:(BOOL)rows isInverse:(BOOL)inverse
{
  inverseCopy = inverse;
  rowsCopy = rows;
  tractCopy = tract;
  resolverCopy = resolver;
  v15 = resolverCopy;
  v16 = 0;
  if (tractCopy && resolverCopy)
  {
    v17 = objc_msgSend_includedUidsTract(tractCopy, v12, v13, v14);
    v21 = v17;
    if (v17)
    {
      v22 = objc_msgSend_rowUids(v17, v18, v19, v20);
      __p[0] = 0;
      __p[1] = 0;
      v65 = 0;
      sub_221086EBC(__p, *v22, *(v22 + 8), (*(v22 + 8) - *v22) >> 4);
      v26 = objc_msgSend_columnUids(v21, v23, v24, v25);
      v62[0] = 0;
      v62[1] = 0;
      v63 = 0;
      sub_221086EBC(v62, *v26, *(v26 + 8), (*(v26 + 8) - *v26) >> 4);
      if (rowsCopy)
      {
        objc_msgSend_mutableIndexesForUIDs_isRows_(v15, v27, __p, rowsCopy);
      }

      else
      {
        objc_msgSend_mutableIndexesForUIDs_isRows_(v15, v27, v62, rowsCopy);
      }
      v29 = ;
      if (inverseCopy)
      {
        objc_msgSend_expandUsingIndexes_forRows_(self, v28, v29, rowsCopy);
      }

      else
      {
        objc_msgSend_edgeExpandUsingIndexes_forRows_(self, v28, v29, rowsCopy);
      }
      v30 = ;
      v34 = objc_msgSend_count(v30, v31, v32, v33);
      v16 = v34 != 0;
      if (v34)
      {
        v36 = objc_msgSend_UIDSetForIndexes_isRows_(v15, v35, v30, rowsCopy);
        v37 = [TSCEUIDSet alloc];
        v43 = objc_msgSend_initWithUUIDVector_(v37, v38, __p, v39);
        if (rowsCopy)
        {
          if (v36)
          {
            objc_msgSend_uuidsAsVector(v36, v40, v41, v42);
          }

          else
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
          }

          v44 = objc_msgSend_reducedSetMinusUuidsFromVector_(v43, v40, &v57, v42);
          v48 = v44;
          if (v44)
          {
            objc_msgSend_uuidsAsVector(v44, v45, v46, v47);
          }

          else
          {
            v60 = 0uLL;
            v61 = 0;
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v60;
          v65 = v61;
        }

        else
        {
          if (v36)
          {
            objc_msgSend_uuidsAsVector(v36, v40, v41, v42);
          }

          else
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
          }

          v49 = objc_msgSend_reducedSetMinusUuidsFromVector_(v43, v40, &v57, v42);
          v48 = v49;
          if (v49)
          {
            objc_msgSend_uuidsAsVector(v49, v50, v51, v52);
          }

          else
          {
            v60 = 0uLL;
            v61 = 0;
          }

          if (v62[0])
          {
            v62[1] = v62[0];
            operator delete(v62[0]);
          }

          *v62 = v60;
          v63 = v61;
        }

        v61 = 0;
        v60 = 0uLL;

        if (v57)
        {
          v58 = v57;
          operator delete(v57);
        }

        objc_msgSend_dropTract_(tractCopy, v53, v21, v54);
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(tractCopy, v55, v62, __p, 1, 1);
      }

      if (v62[0])
      {
        v62[1] = v62[0];
        operator delete(v62[0]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)edgeExpandUsingMovingUids:(id)uids tractList:(id)list
{
  uidsCopy = uids;
  listCopy = list;
  v11 = objc_msgSend_includedUidsTract(listCopy, v8, v9, v10);
  v15 = objc_msgSend_removedByMoveUidTract(listCopy, v12, v13, v14);
  v19 = v15;
  v20 = 0;
  if (uidsCopy && v11 && v15)
  {
    v21 = objc_msgSend_rowUids(v11, v16, v17, v18);
    v99 = 0uLL;
    v100 = 0;
    sub_221086EBC(&v99, *v21, *(v21 + 8), (*(v21 + 8) - *v21) >> 4);
    v25 = objc_msgSend_columnUids(v11, v22, v23, v24);
    __p[0] = 0;
    __p[1] = 0;
    v98 = 0;
    sub_221086EBC(__p, *v25, *(v25 + 8), (*(v25 + 8) - *v25) >> 4);
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v29 = objc_msgSend_rowUids(v19, v26, v27, v28);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    sub_221086EBC(&v91, *v29, *(v29 + 8), (*(v29 + 8) - *v29) >> 4);
    v33 = objc_msgSend_columnUids(v19, v30, v31, v32);
    v88 = 0;
    v89 = 0;
    v90 = 0;
    sub_221086EBC(&v88, *v33, *(v33 + 8), (*(v33 + 8) - *v33) >> 4);
    v34 = [TSCEUIDSet alloc];
    if (objc_msgSend_isRows(uidsCopy, v35, v36, v37))
    {
      v40 = objc_msgSend_initWithUUIDVector_(v34, v38, &v91, v39);
    }

    else
    {
      v40 = objc_msgSend_initWithUUIDVector_(v34, v38, &v88, v39);
    }

    v44 = v40;
    if (objc_msgSend_isRows(uidsCopy, v41, v42, v43))
    {
      v49 = *(&v99 + 1);
      for (i = v99; i != v49; i += 16)
      {
        if ((objc_msgSend_containsUuid_(v44, v45, *i, *(i + 8)) & 1) == 0)
        {
          sub_221083454(&v94, i);
        }
      }
    }

    else
    {
      v50 = __p[0];
      v51 = __p[1];
      while (v50 != v51)
      {
        if ((objc_msgSend_containsUuid_(v44, v45, *v50, v50[1]) & 1) == 0)
        {
          sub_221083454(&v94, v50);
        }

        v50 += 2;
      }
    }

    v52 = objc_msgSend_rowOrColumnUids(uidsCopy, v45, v46, v47);
    v56 = objc_msgSend_indexes(v52, v53, v54, v55);
    v60 = objc_msgSend_mutableCopy(v56, v57, v58, v59);

    isRows = objc_msgSend_isRows(uidsCopy, v61, v62, v63);
    v66 = objc_msgSend_edgeExpandUsingIndexes_forRows_(self, v65, v60, isRows);
    v70 = objc_msgSend_count(v66, v67, v68, v69);
    v20 = v70 != 0;
    if (v70)
    {
      objc_msgSend_removeIndexes_(v60, v71, v66, v72);
      if (objc_msgSend_isRows(uidsCopy, v73, v74, v75))
      {
        objc_msgSend_uuidsForIndexes_(uidsCopy, v76, v60, v77);
        if (v99)
        {
          *(&v99 + 1) = v99;
          operator delete(v99);
        }

        v99 = v86;
        v100 = v87;
      }

      else
      {
        objc_msgSend_uuidsForIndexes_(uidsCopy, v76, v60, v77);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v86;
        v98 = v87;
      }

      objc_msgSend_dropTract_(listCopy, v78, v11, v79);
      if (objc_msgSend_isRows(uidsCopy, v80, v81, v82))
      {
        v83 = &v99;
      }

      else
      {
        v83 = __p;
      }

      sub_2210F0C88(v83, v83[1], v94, v95, (v95 - v94) >> 4);
      objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(listCopy, v84, __p, &v99, 1, 1);
    }

    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v91)
    {
      v92 = v91;
      operator delete(v91);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v99)
    {
      *(&v99 + 1) = v99;
      operator delete(v99);
    }
  }

  return v20;
}

- (id)edgeExpandUsingIndexes:(id)indexes forRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  if (objc_msgSend_isValid(self, v7, v8, v9) && objc_msgSend_count(indexesCopy, v10, v11, v12))
  {
    v16 = objc_opt_new();
    if (rowsCopy)
    {
      v17 = objc_msgSend_rows(self, v13, v14, v15);
      Index = TSUIndexSet::firstIndex(v17);
      v22 = objc_msgSend_rows(self, v19, v20, v21);
    }

    else
    {
      v25 = objc_msgSend_columns(self, v13, v14, v15);
      Index = TSUIndexSet::firstIndex(v25);
      v22 = objc_msgSend_columns(self, v26, v27, v28);
    }

    v29 = TSUIndexSet::lastIndex(v22);
    v34 = objc_msgSend_indexLessThanIndex_(indexesCopy, v30, Index, v31);
    while (v34 != 0x7FFFFFFFFFFFFFFFLL && Index - 1 == v34)
    {
      v35 = v34;
      objc_msgSend_addIndex_(v16, v32, v34, v33);
      v34 = objc_msgSend_indexLessThanIndex_(indexesCopy, v36, v34, v37);
      Index = v35;
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_2210F02CC;
    v56[3] = &unk_27845E1D0;
    v38 = v16;
    v57 = v38;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(indexesCopy, v39, Index, v29 - Index + 1, 0, v56);
    for (i = objc_msgSend_indexGreaterThanIndex_(indexesCopy, v40, v29, v41); i != 0x7FFFFFFFFFFFFFFFLL && v29 + 1 == i; i = objc_msgSend_indexGreaterThanIndex_(indexesCopy, v46, i, v47))
    {
      objc_msgSend_addIndex_(v38, v42, i, v43);
      v29 = i;
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_2210F02DC;
    v54[3] = &unk_27845EB50;
    v55 = rowsCopy;
    v54[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(v38, v42, v54, v43);

    v23 = v38;
    v24 = objc_msgSend_count(v38, v48, v49, v50);
  }

  else
  {
    v23 = 0;
    v24 = objc_msgSend_count(0, v10, v11, v12);
  }

  if (v24)
  {
    v51 = v23;
  }

  else
  {
    v51 = 0;
  }

  v52 = v51;

  return v51;
}

- (id)expandUsingIndexes:(id)indexes forRows:(BOOL)rows
{
  indexesCopy = indexes;
  if (objc_msgSend_isValid(self, v7, v8, v9) && objc_msgSend_count(indexesCopy, v10, v11, v12))
  {
    v13 = objc_msgSend_mutableCopy(indexesCopy, v10, v11, v12);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2210F0444;
    v24[3] = &unk_27845EB50;
    rowsCopy = rows;
    v24[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(v13, v14, v24, v15);
    v16 = v13;
    v20 = objc_msgSend_count(v13, v17, v18, v19);
  }

  else
  {
    v16 = 0;
    v20 = objc_msgSend_count(0, v10, v11, v12);
  }

  if (v20)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

- (TSCECellTractRefCore)cppCellTractRef
{
  *&retstr->_columns |= 3u;
  *&v5.f64[0] = 0x8000000080000000;
  *&v5.f64[1] = 0x8000000080000000;
  v7 = vnegq_f64(v5);
  retstr->_columns._singleRange = v7;
  retstr->_columns._multipleRanges = 0;
  TSUIndexSet::operator=();
  *&retstr->_rows |= 3u;
  retstr->_rows._singleRange = v7;
  retstr->_rows._multipleRanges = 0;
  result = TSUIndexSet::operator=();
  retstr->_tableUID = self->_cppCellTractRef._tableUID;
  *(&retstr->_tableUID._upper + 5) = *(&self->_cppCellTractRef._tableUID._upper + 5);
  return result;
}

- (void)setCppCellTractRef:(TSCECellTractRefCore *)ref
{
  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  v5 = *(&ref->_tableUID._upper + 5);
  self->_cppCellTractRef._tableUID = ref->_tableUID;
  *(&self->_cppCellTractRef._tableUID._upper + 5) = v5;
}

@end