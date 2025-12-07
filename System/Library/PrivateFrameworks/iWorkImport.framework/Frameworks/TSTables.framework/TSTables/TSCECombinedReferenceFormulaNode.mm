@interface TSCECombinedReferenceFormulaNode
- (BOOL)isCategoryRef;
- (BOOL)isCategorySummaryRef;
- (BOOL)isRangeExpression;
- (BOOL)isSingleColumnSpanningReference;
- (BOOL)isSingleRowSpanningReference;
- (TSCECombinedReferenceFormulaNode)initWithCategoryRef:(id)ref hostCellRef:(const TSCECellRef *)cellRef;
- (TSCECombinedReferenceFormulaNode)initWithReferenceStart:(id)start referenceEnd:(id)end calcEngine:(id)engine;
- (TSCECombinedReferenceFormulaNode)initWithUidRectRef:(id)ref hostCellRef:(const TSCECellRef *)cellRef;
- (TSCERangeCoordinate)baseBoundingBox;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)convertCategoryRefToRelativeForHostCell:(const TSCECellRef *)cell calcEngine:(id)engine;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array forCoord:(TSUCellCoord)coord preserveFlags:(unsigned __int8)flags hostCellRef:(const TSCECellRef *)ref calcEngine:(id)engine;
- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine;
- (void)setHostCellRef:(TSCECellRef *)ref;
@end

@implementation TSCECombinedReferenceFormulaNode

- (TSCECombinedReferenceFormulaNode)initWithUidRectRef:(id)ref hostCellRef:(const TSCECellRef *)cellRef
{
  refCopy = ref;
  v13.receiver = self;
  v13.super_class = TSCECombinedReferenceFormulaNode;
  v8 = [(TSCEFormulaNode *)&v13 initWithNodeType:16];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uidRectRef, ref);
    categoryRef = v9->_categoryRef;
    v9->_categoryRef = 0;

    upper = cellRef->_tableUID._upper;
    *&v9->_hostCellRef.coordinate.row = *&cellRef->coordinate.row;
    v9->_hostCellRef._tableUID._upper = upper;
  }

  return v9;
}

- (TSCECombinedReferenceFormulaNode)initWithCategoryRef:(id)ref hostCellRef:(const TSCECellRef *)cellRef
{
  refCopy = ref;
  v13.receiver = self;
  v13.super_class = TSCECombinedReferenceFormulaNode;
  v8 = [(TSCEFormulaNode *)&v13 initWithNodeType:16];
  v9 = v8;
  if (v8)
  {
    uidRectRef = v8->_uidRectRef;
    v8->_uidRectRef = 0;

    objc_storeStrong(&v9->_categoryRef, ref);
    upper = cellRef->_tableUID._upper;
    *&v9->_hostCellRef.coordinate.row = *&cellRef->coordinate.row;
    v9->_hostCellRef._tableUID._upper = upper;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = TSCECombinedReferenceFormulaNode;
  v4 = [(TSCECombinedReferenceFormulaNode *)&v17 copy];
  v8 = objc_msgSend_copy(self->_uidRectRef, v5, v6, v7);
  v9 = v4[6];
  v4[6] = v8;

  v13 = objc_msgSend_copy(self->_categoryRef, v10, v11, v12);
  v14 = v4[7];
  v4[7] = v13;

  upper = self->_hostCellRef._tableUID._upper;
  *(v4 + 4) = *&self->_hostCellRef.coordinate.row;
  v4[10] = upper;
  return v4;
}

- (TSKUIDStruct)tableUID
{
  uidRectRef = self->_uidRectRef;
  if (uidRectRef)
  {
    uidRectRef = objc_msgSend_tableUID(uidRectRef, a2, v2, v3);
  }

  else
  {
    v5 = 0;
  }

  result._upper = v5;
  result._lower = uidRectRef;
  return result;
}

- (TSCERangeCoordinate)baseBoundingBox
{
  v5 = objc_msgSend_baseTopLeftCoord(self, a2, v2, v3);
  v9 = objc_msgSend_baseBottomRightCoord(self, v6, v7, v8);
  v10 = v5;
  result._bottomRight = v9;
  result._topLeft = v10;
  return result;
}

- (BOOL)isSingleColumnSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3) & 1) != 0 || !objc_msgSend_spansAllRows(self, v5, v6, v7))
  {
    return 0;
  }

  v11 = objc_msgSend_uidRectRef(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfColumns(v11, v12, v13, v14) == 1;

  return v15;
}

- (BOOL)isSingleRowSpanningReference
{
  if ((objc_msgSend_isCategoryRef(self, a2, v2, v3) & 1) != 0 || !objc_msgSend_spansAllColumns(self, v5, v6, v7))
  {
    return 0;
  }

  v11 = objc_msgSend_uidRectRef(self, v8, v9, v10);
  v15 = objc_msgSend_numberOfRows(v11, v12, v13, v14) == 1;

  return v15;
}

- (BOOL)isCategoryRef
{
  categoryRef = self->_categoryRef;
  if (categoryRef)
  {
    LOBYTE(categoryRef) = objc_msgSend_isValid(categoryRef, a2, v2, v3);
  }

  return categoryRef;
}

- (BOOL)isCategorySummaryRef
{
  if (!objc_msgSend_isCategoryRef(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_categoryRef(self, v5, v6, v7);
  v12 = objc_msgSend_type(v8, v9, v10, v11) == 11;

  return v12;
}

- (BOOL)isRangeExpression
{
  v5 = objc_msgSend_area(self->_uidRectRef, a2, v2, v3);
  v9 = objc_msgSend_viewPreserveFlags(self, v6, v7, v8);
  v10 = (v9 ^ (v9 >> 2)) & 3;
  v11 = v10 != 0;
  if ((objc_msgSend_isSingleColumnSpanningReference(self, v12, v13, v14) & 1) == 0)
  {
    isSingleRowSpanningReference = objc_msgSend_isSingleRowSpanningReference(self, v15, v16, v17);
    if (v5 == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = isSingleRowSpanningReference;
    }

    if (v19)
    {
      return v10 != 0;
    }

    else
    {
      return v5 > 1;
    }
  }

  return v11;
}

- (TSCECombinedReferenceFormulaNode)initWithReferenceStart:(id)start referenceEnd:(id)end calcEngine:(id)engine
{
  startCopy = start;
  endCopy = end;
  engineCopy = engine;
  if (!startCopy)
  {
    v14 = 0;
    bottomRight = 0;
    v78 = 0;
    v79 = 0;
    if (endCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    v83 = 0;
    v84 = 0;
    goto LABEL_6;
  }

  objc_msgSend_hostCellRef(startCopy, v10, v11, v12);
  bottomRight = v78._bottomRight;
  v14 = v79;
  if (!endCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_msgSend_hostCellRef(endCopy, v10, v11, v12, *&v78._topLeft);
  v16 = v83._bottomRight;
LABEL_6:
  if (bottomRight != v16 || v14 != v84)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECombinedReferenceFormulaNode initWithReferenceStart:referenceEnd:calcEngine:]", v12, *&v78._topLeft);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNode.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1169, 0, "Creating a range reference with two references with different ownerUIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  v26 = objc_msgSend_uidRectRef(startCopy, v10, v11, v12, *&v78._topLeft);
  v30 = objc_msgSend_viewTopLeftCoord(v26, v27, v28, v29);

  v34 = objc_msgSend_uidRectRef(endCopy, v31, v32, v33);
  v38 = objc_msgSend_viewBottomRightCoord(v34, v35, v36, v37);

  v82._topLeft = v30;
  v82._bottomRight = v38;
  LOBYTE(v30) = objc_msgSend_viewPreserveFlags(startCopy, v39, v40, v41);
  v81._flags = objc_msgSend_viewPreserveFlags(endCopy, v42, v43, v44) & 0xFC | v30 & 3;
  TSCERangeCoordinate::fixInversions(&v82, &v81);
  flags = v81._flags;
  v49 = objc_msgSend_tableUID(startCopy, v46, v47, v48);
  v51 = v50;
  if ((objc_msgSend_isRangeExpression(startCopy, v50, v52, v53) & 1) == 0 && (objc_msgSend_isRangeExpression(endCopy, v54, v55, v56) & 1) == 0)
  {
    if (startCopy)
    {
      objc_msgSend_hostCellRef(startCopy, v57, v58, v59);
      v69 = v78._bottomRight;
      v68 = v79;
      if (endCopy)
      {
LABEL_18:
        objc_msgSend_hostCellRef(endCopy, v57, v58, v59, v78, v79);
        v71 = v83._bottomRight;
        v70 = v84;
LABEL_21:
        if (v69 == v71 && v68 == v70)
        {
          v72 = objc_msgSend_tableUID(startCopy, v57, v58, v59);
          v74 = v73;
          if (v72 == objc_msgSend_tableUID(endCopy, v73, v75, v76) && v74 == v77 && TSCERangeCoordinate::isValidOrSpanning(&v82))
          {
            goto LABEL_12;
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v78 = 0;
      v79 = 0;
      if (endCopy)
      {
        goto LABEL_18;
      }
    }

    v70 = 0;
    v71 = 0;
    v83 = 0;
    v84 = 0;
    goto LABEL_21;
  }

LABEL_11:
  v82 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
LABEL_12:
  v83 = v82;
  v60 = [TSTUIDRectRef alloc];
  v78 = v83;
  v79 = v49;
  v80 = v51;
  v65 = objc_msgSend_initWithCalcEngine_viewRangeRef_preserveFlags_(v60, v61, engineCopy, &v78, flags);
  if (startCopy)
  {
    objc_msgSend_hostCellRef(startCopy, v62, v63, v64);
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v66 = objc_msgSend_initWithUidRectRef_hostCellRef_(self, v62, v65, &v78);

  return v66;
}

- (id)convertCategoryRefToRelativeForHostCell:(const TSCECellRef *)cell calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = self->_categoryRef;
  if ((objc_msgSend_preserveFlags(self->_categoryRef, v8, v9, v10) & 2) == 0)
  {
    v14 = objc_msgSend_groupByUid(self->_categoryRef, v11, v12, v13);
    v16 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v15, v14, v15, engineCopy);
    v20 = v16;
    if (v16)
    {
      v21 = objc_msgSend_tableInfo(v16, v17, v18, v19);
      if (objc_msgSend_tableUID(v21, v22, v23, v24) == cell->_tableUID._lower)
      {
        v26 = v25;
        upper = cell->_tableUID._upper;

        if (v26 == upper)
        {
          v31 = objc_msgSend_tableInfo(v20, v28, v29, v30);
          v35 = objc_msgSend_translator(v31, v32, v33, v34);
          v44[0] = objc_msgSend_rowUIDForBaseRowIndex_(v35, v36, cell->coordinate.row, v37);
          v44[1] = v38;

          categoryRef = self->_categoryRef;
          tableUID = cell->_tableUID;
          v41 = objc_msgSend_convertCategoryRefToRelativeAncestorUid_atRowUid_inHostTable_(v20, v40, categoryRef, v44, &tableUID);

          v7 = v41;
        }
      }

      else
      {
      }
    }
  }

  return v7;
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array forCoord:(TSUCellCoord)coord preserveFlags:(unsigned __int8)flags hostCellRef:(const TSCECellRef *)ref calcEngine:(id)engine
{
  HIBYTE(v49.var2) = flags;
  lower = ref->_tableUID._lower;
  upper = ref->_tableUID._upper;
  if (lower == objc_msgSend_tableUID(self, a2, array, *&coord))
  {
    v49.var0 = 0;
    v49.var1 = 0;
    if (upper == v13)
    {
      v49.var0 = 0;
      v49.var1 = 0;
      v16 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v49.var0 = 0;
    v49.var1 = 0;
  }

  v16 = 0;
  v49.var0 = objc_msgSend_tableUID(self, v13, v14, v15);
  v49.var1 = v13;
LABEL_6:
  v17 = *&coord & 0xFFFF00000000;
  if (coord.row != 0x7FFFFFFF)
  {
    if (v17 != 0x7FFF00000000)
    {
      v42 = (&v49.var2 + 7);
      coordCopy = coord;
      v47.n128_u64[0] = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&ref->coordinate, coordCopy, v42, v15);
      goto LABEL_23;
    }

    row = ref->coordinate.row;
    if ((v49.var2 & 0x200000000000000) != 0)
    {
      row = 0;
    }

    v30 = coord.row - row;
    sub_2210899C8(v30, v13, v14, v15);
    sub_2210899C8(v30, v31, v32, v33);
    v35 = ((HIBYTE(v49.var2) & 2) << 47) | ((HIBYTE(v49.var2) & 1) << 56) | v30 | 0x7FFF00000000;
LABEL_21:
    v47.n128_u64[0] = v35;
LABEL_23:
    TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(array, &v49, &v47, (&v49.var2 + 7), 0, v34);
    return;
  }

  if (v17 != 0x7FFF00000000)
  {
    column = ref->coordinate.column;
    if ((v49.var2 & 0x100000000000000) != 0)
    {
      column = 0;
    }

    v37 = coord.column - column;
    if (coord.column == 0x7FFF)
    {
      v38 = coord.column;
    }

    else
    {
      v38 = v37;
    }

    sub_2210898C4(v38, v13, v14, v15);
    sub_2210898C4(v38, v39, v40, v41);
    v35 = ((HIBYTE(v49.var2) & 2) << 47) & 0xFEFFFFFFFFFFFFFFLL | ((HIBYTE(v49.var2) & 1) << 56) | (v38 << 32) | 0x7FFFFFFF;
    goto LABEL_21;
  }

  if (objc_msgSend_isValid(self->_uidRectRef, v13, v14, v15))
  {
    v23 = objc_msgSend_includeUidTractList(self->_uidRectRef, v18, v19, v20);
    v48._flags = 0;
    TSCEASTRefFlags::setPreserveFlags(&v48, &v49.var2 + 7);
    if (v16)
    {
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, v48._flags, v23, v26, v27, v28);
    }

    else
    {
      v47.n128_u64[0] = objc_msgSend_tableUID(self, v24, v25, v26);
      v47.n128_u64[1] = v44;
      TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, &v47, v48._flags, v23, v45, v46);
    }
  }

  else
  {

    TSCEASTRelativeCoordRefElement::appendReferenceError(array, v18, v19, v20, v21, v22);
  }
}

- (void)appendToNodeArray:(TSCEASTNodeArray *)array hostCellRef:(const TSCECellRef *)ref symbolTable:(void *)table calcEngine:(id)engine
{
  engineCopy = engine;
  if (!objc_msgSend_isCategoryRef(self, v10, v11, v12))
  {
    v22 = objc_msgSend_tableUID(self, v13, v14, v15);
    v24 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v23, v22, v23, engineCopy);
    if (objc_msgSend_isAPivotTable(v24, v25, v26, v27))
    {
      v31 = objc_msgSend_uidRectRef(self, v28, v29, v30);
      v35 = objc_msgSend_viewTractRef(v31, v32, v33, v34);

      if (objc_msgSend_isValid(v35, v36, v37, v38))
      {
        *&v124[0]._flags = 0;
        v44 = objc_msgSend_uidRectRef(self, v39, v40, v41);
        v47 = objc_msgSend_uidTractListWithPurpose_(v44, v45, 4, v46);

        v123.n128_u8[0] = objc_msgSend_preserveFlags(v47, v48, v49, v50);
        TSCEASTRefFlags::setPreserveFlags(&v124[1], &v123);
        v124[0]._flags = (4 * objc_msgSend_preserveFlags(v47, v51, v52, v53)) & 0x10;
        v124[0]._flags = v124[0]._flags & 0xDF | (32 * ((objc_msgSend_preserveFlags(v47, v54, v55, v56) & 8) != 0));
        v60 = objc_msgSend_uidRectRef(self, v57, v58, v59);
        v64 = objc_msgSend_area(v60, v61, v62, v63);

        if (v64 != 1 || (objc_msgSend_bottomRight(v35, v65, v66, v67) & 0x101FFFFFFFFFFFFLL) != 0 || (objc_msgSend_spansAllRows(v35, v65, v66, v67) & 1) != 0 || (objc_msgSend_spansAllColumns(v35, v65, v66, v67) & 1) != 0)
        {
          v123.n128_u64[0] = objc_msgSend_tableUID(self, v65, v66, v67);
          v123.n128_u64[1] = v68;
          TSCEASTViewTractRefElement::appendViewTractRefElement(array, &v123, &v124[1], v124, v47, 255, 255, 0xFFFF);
        }

        else
        {
          v113 = [TSCEViewTractRef alloc];
          v123.n128_u64[0] = objc_msgSend_tableUID(self, v114, v115, v116);
          v123.n128_u64[1] = v117;
          v119 = objc_msgSend_initWithTableUID_(v113, v117, &v123, v118);
          objc_msgSend_setPreserveFlags_(v119, v120, 15, v121);
          TSCEASTViewTractRefElement::appendViewTractRefElement(array, v119, v122);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v69 = objc_msgSend_uidRectRef(self, v28, v29, v30);
      v35 = objc_msgSend_baseTractRef(v69, v70, v71, v72);

      v76 = objc_msgSend_basePreserveFlags(self, v73, v74, v75);
      if (objc_msgSend_isSingleCellOrSpanningRange(v35, v77, v78, v79) && (v76 & 3) == v76 >> 2)
      {
        v83 = objc_msgSend_topLeft(v35, v80, v81, v82);
        objc_msgSend_appendToNodeArray_forCoord_preserveFlags_hostCellRef_calcEngine_(self, v84, array, v83, v76 & 3, ref, engineCopy);
LABEL_23:

        goto LABEL_24;
      }

      if (v35 && objc_msgSend_isValid(v35, v80, v81, v82))
      {
        v85 = [TSCERelativeTractRef alloc];
        v123.n128_u64[0] = ref->coordinate;
        v87 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v85, v86, v35, &v123);
        if (objc_msgSend_tableUID(v87, v88, v89, v90) == ref->_tableUID._lower && v91 == ref->_tableUID._upper)
        {
          objc_msgSend_setTableUID_(v87, v91, 0, 0);
        }

        TSCEASTColonTractElement::appendColonTractElement(array, v87, 0, v92);

        goto LABEL_23;
      }

      v93 = objc_msgSend_uidRectRef(self, v80, v81, v82);
      isValid = objc_msgSend_isValid(v93, v94, v95, v96);

      if (isValid)
      {
        v123.n128_u8[0] = 0;
        v124[1]._flags = v76;
        TSCEASTRefFlags::setPreserveFlags(&v123, &v124[1]);
        v101 = objc_msgSend_uidRectRef(self, v98, v99, v100);
        v47 = objc_msgSend_includeUidTractList(v101, v102, v103, v104);

        TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(array, v123.n128_u8[0], v47, v105, v106, v107);
LABEL_21:

        goto LABEL_23;
      }
    }

    TSCEASTRelativeCoordRefElement::appendReferenceError(array, v39, v40, v41, v42, v43);
    goto LABEL_23;
  }

  v16 = objc_msgSend_convertCategoryRefToRelativeForHostCell_calcEngine_(self, v13, ref, engineCopy);
  categoryRef = self->_categoryRef;
  self->_categoryRef = v16;

  TSCEASTCategoryRefElement::appendCategoryRefElement(array, self->_categoryRef, v18);
LABEL_24:
  v108 = objc_msgSend_whitespaceBefore(self, v19, v20, v21);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v108);

  v112 = objc_msgSend_whitespaceAfter(self, v109, v110, v111);
  TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v112);
}

- (void)setHostCellRef:(TSCECellRef *)ref
{
  upper = ref->_tableUID._upper;
  *&self->_hostCellRef.coordinate.row = *&ref->coordinate.row;
  self->_hostCellRef._tableUID._upper = upper;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0x7FFF7FFFFFFFLL;
  return self;
}

@end