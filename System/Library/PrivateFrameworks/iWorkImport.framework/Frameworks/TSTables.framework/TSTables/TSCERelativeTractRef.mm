@interface TSCERelativeTractRef
- (BOOL)isEqual:(id)equal;
- (BOOL)isRectangularRange;
- (BOOL)isSingleCellOrSpanningRange;
- (BOOL)verifySpanningSettings;
- (TSCERelativeCellCoordinate)relativeBottomRight;
- (TSCERelativeCellCoordinate)relativeTopLeft;
- (TSCERelativeRangeCoordinate)relativeBoundingRangeWithContainingCell:(const TSUCellCoord *)cell;
- (TSCERelativeTractRef)init;
- (TSCERelativeTractRef)initWithAbsoluteTractRef:(id)ref hostCell:(const TSUCellCoord *)cell;
- (TSCERelativeTractRef)initWithRangeRef:(const TSCERangeRef *)ref hostCell:(const TSUCellCoord *)cell;
- (TSCERelativeTractRef)initWithTableUID:(const TSKUIDStruct *)d preserveFlags:(const TSUPreserveFlags *)flags;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)absoluteCellTractRefForHostCell:(const TSUCellCoord *)cell offTable:(BOOL *)table;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addRelativeColumn:(signed __int16)column;
- (void)addRelativeColumnRange:(const TSUIndexRange *)range;
- (void)addRelativeRow:(int)row;
- (void)addRelativeRowRange:(const TSUIndexRange *)range;
- (void)adjustRelativeIndexesBy:(const TSUColumnRowOffset *)by;
- (void)normalizeSpanningSettings;
- (void)preserveFlagsFixingInversionsForTract:(id)tract absFromRelColumns:(const TSUIndexSet *)columns absFromRelRows:(const TSUIndexSet *)rows;
- (void)removeRelativeColumnRange:(const TSUIndexRange *)range;
- (void)removeRelativeRowRange:(const TSUIndexRange *)range;
- (void)setSpansAllColumns:(BOOL)columns;
- (void)setSpansAllRows:(BOOL)rows;
@end

@implementation TSCERelativeTractRef

- (TSCERelativeTractRef)init
{
  v10.receiver = self;
  v10.super_class = TSCERelativeTractRef;
  v2 = [(TSCERelativeTractRef *)&v10 init];
  if (v2)
  {
    TSUIndexSet::TSUIndexSet(&v9);
    v3 = [TSCECellTractRef alloc];
    v8[0] = 0;
    v8[1] = 0;
    v5 = objc_msgSend_initWithColumns_rows_tableUID_(v3, v4, &v9, &v9, v8);
    absTractRef = v2->_absTractRef;
    v2->_absTractRef = v5;

    TSUIndexSet::~TSUIndexSet(&v9);
  }

  return v2;
}

- (TSCERelativeTractRef)initWithTableUID:(const TSKUIDStruct *)d preserveFlags:(const TSUPreserveFlags *)flags
{
  v15.receiver = self;
  v15.super_class = TSCERelativeTractRef;
  v6 = [(TSCERelativeTractRef *)&v15 init];
  if (v6)
  {
    TSUIndexSet::TSUIndexSet(&v14);
    v7 = [TSCECellTractRef alloc];
    v9 = objc_msgSend_initWithColumns_rows_tableUID_(v7, v8, &v14, &v14, d);
    absTractRef = v6->_absTractRef;
    v6->_absTractRef = v9;

    objc_msgSend_setPreserveFlags_(v6->_absTractRef, v11, flags->_flags, v12);
    TSUIndexSet::~TSUIndexSet(&v14);
  }

  return v6;
}

- (TSCERelativeTractRef)initWithAbsoluteTractRef:(id)ref hostCell:(const TSUCellCoord *)cell
{
  refCopy = ref;
  TSUIndexSet::TSUIndexSet(&v101);
  TSUIndexSet::TSUIndexSet(&v100);
  TSUIndexSet::TSUIndexSet(&v99);
  TSUIndexSet::TSUIndexSet(&v98);
  if (!objc_msgSend_isValid(refCopy, v7, v8, v9))
  {
    goto LABEL_6;
  }

  if ((objc_msgSend_spansAllColumns(refCopy, v10, v11, v12) & 1) != 0 || (objc_msgSend_preserveFlags(refCopy, v13, v14, v15) & 1) != 0 && (objc_msgSend_preserveFlags(refCopy, v13, v14, v15) & 4) != 0)
  {
    goto LABEL_3;
  }

  if (objc_msgSend_preserveFlags(refCopy, v13, v14, v15))
  {
    v60 = objc_msgSend_columns(refCopy, v51, v52, v53);
    if (TSUIndexSet::count(v60))
    {
      v61 = objc_msgSend_columns(refCopy, v16, v17, v18);
      TSUIndexSet::firstIndex(v61);
      TSUIndexSet::addIndex(&v101);
      objc_msgSend_columns(refCopy, v62, v63, v64);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v99) >= 2)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    if ((objc_msgSend_preserveFlags(refCopy, v51, v52, v53) & 4) == 0)
    {
LABEL_3:
      objc_msgSend_columns(refCopy, v13, v14, v15);
      TSUIndexSet::operator=();
      goto LABEL_4;
    }

    v73 = objc_msgSend_columns(refCopy, v13, v14, v15);
    if (TSUIndexSet::count(v73))
    {
      v74 = objc_msgSend_columns(refCopy, v16, v17, v18);
      TSUIndexSet::lastIndex(v74);
      TSUIndexSet::addIndex(&v101);
      objc_msgSend_columns(refCopy, v75, v76, v77);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v99) >= 2)
      {
LABEL_27:
        TSUIndexSet::removeIndex(&v99);
      }
    }
  }

LABEL_4:
  if ((objc_msgSend_spansAllRows(refCopy, v16, v17, v18) & 1) != 0 || (objc_msgSend_preserveFlags(refCopy, v19, v20, v21) & 2) != 0 && (objc_msgSend_preserveFlags(refCopy, v19, v20, v21) & 8) != 0)
  {
    goto LABEL_5;
  }

  if ((objc_msgSend_preserveFlags(refCopy, v19, v20, v21) & 2) != 0)
  {
    v65 = objc_msgSend_rows(refCopy, v54, v55, v56);
    if (TSUIndexSet::count(v65))
    {
      v69 = objc_msgSend_rows(refCopy, v66, v67, v68);
      TSUIndexSet::firstIndex(v69);
      TSUIndexSet::addIndex(&v100);
      objc_msgSend_rows(refCopy, v70, v71, v72);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v98) >= 2)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    if ((objc_msgSend_preserveFlags(refCopy, v54, v55, v56) & 8) == 0)
    {
LABEL_5:
      objc_msgSend_rows(refCopy, v19, v20, v21);
      TSUIndexSet::operator=();
      goto LABEL_6;
    }

    v78 = objc_msgSend_rows(refCopy, v19, v20, v21);
    if (TSUIndexSet::count(v78))
    {
      v82 = objc_msgSend_rows(refCopy, v79, v80, v81);
      TSUIndexSet::lastIndex(v82);
      TSUIndexSet::addIndex(&v100);
      objc_msgSend_rows(refCopy, v83, v84, v85);
      TSUIndexSet::operator=();
      if (TSUIndexSet::count(&v98) >= 2)
      {
LABEL_30:
        TSUIndexSet::removeIndex(&v98);
      }
    }
  }

LABEL_6:
  v97.receiver = self;
  v97.super_class = TSCERelativeTractRef;
  v25 = [(TSCERelativeTractRef *)&v97 init];
  if (v25 && objc_msgSend_isValid(refCopy, v22, v23, v24))
  {
    v26 = [TSCECellTractRef alloc];
    v90 = objc_msgSend_tableUID(refCopy, v27, v28, v29);
    v91 = v30;
    v31 = objc_msgSend_initWithColumns_rows_tableUID_(v26, v30, &v101, &v100, &v90);
    absTractRef = v25->_absTractRef;
    v25->_absTractRef = v31;

    v36 = objc_msgSend_preserveFlags(refCopy, v33, v34, v35);
    objc_msgSend_setPreserveFlags_(v25->_absTractRef, v37, v36, v38);
    v90 = 0;
    v91 = &v90;
    v92 = 0x5012000000;
    v93 = sub_22121A2E4;
    v94 = sub_22121A308;
    v95 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v96);
    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x5012000000;
    v88[3] = sub_22121A2E4;
    v88[4] = sub_22121A308;
    v88[5] = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v89);
    v87 = MEMORY[0x277D85DD0];
    TSUIndexSet::enumerateRangesUsingBlock();
    v86 = MEMORY[0x277D85DD0];
    TSUIndexSet::enumerateRangesUsingBlock();
    TSUIndexSet::operator=();
    TSUIndexSet::operator=();
    v42 = objc_msgSend_preserveRectangular(refCopy, v39, v40, v41, v86, 3221225472, sub_22121A354, &unk_2784618D0, v88, cell, v87, 3221225472, sub_22121A310, &unk_2784618D0, &v90, cell);
    objc_msgSend_setPreserveRectangular_(v25, v43, v42, v44);
    if (objc_msgSend_spansAllColumns(refCopy, v45, v46, v47))
    {
      objc_msgSend_setSpansAllColumns_(v25, v48, 1, v50);
    }

    else if (objc_msgSend_spansAllRows(refCopy, v48, v49, v50))
    {
      objc_msgSend_setSpansAllRows_(v25, v57, 1, v58);
    }

    _Block_object_dispose(v88, 8);
    TSUIndexSet::~TSUIndexSet(&v89);
    _Block_object_dispose(&v90, 8);
    TSUIndexSet::~TSUIndexSet(&v96);
  }

  else
  {

    v25 = 0;
  }

  TSUIndexSet::~TSUIndexSet(&v98);
  TSUIndexSet::~TSUIndexSet(&v99);
  TSUIndexSet::~TSUIndexSet(&v100);
  TSUIndexSet::~TSUIndexSet(&v101);

  return v25;
}

- (TSCERelativeTractRef)initWithRangeRef:(const TSCERangeRef *)ref hostCell:(const TSUCellCoord *)cell
{
  v7 = [TSCECellTractRef alloc];
  v10 = objc_msgSend_initWithRangeRef_(v7, v8, ref, v9);
  v12 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(self, v11, v10, cell);

  return v12;
}

- (void)setSpansAllColumns:(BOOL)columns
{
  columnsCopy = columns;
  objc_msgSend_setSpansAllColumns_(self->_absTractRef, a2, columns, v3);
  if (columnsCopy)
  {

    TSUIndexSet::removeAllIndexes(&self->_relativeColumns);
  }
}

- (void)setSpansAllRows:(BOOL)rows
{
  rowsCopy = rows;
  objc_msgSend_setSpansAllRows_(self->_absTractRef, a2, rows, v3);
  if (rowsCopy)
  {

    TSUIndexSet::removeAllIndexes(&self->_relativeRows);
  }
}

- (TSKUIDStruct)tableUID
{
  v4 = objc_msgSend_tableUID(self->_absTractRef, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCERelativeTractRef alloc];
  v20[0] = objc_msgSend_tableUID(self, v5, v6, v7);
  v20[1] = v8;
  v19 = objc_msgSend_preserveFlags(self, v8, v9, v10);
  v12 = objc_msgSend_initWithTableUID_preserveFlags_(v4, v11, v20, &v19);
  v16 = objc_msgSend_copy(self->_absTractRef, v13, v14, v15);
  v17 = v12[1];
  v12[1] = v16;

  TSUIndexSet::operator=();
  TSUIndexSet::operator=();
  return v12;
}

- (void)addRelativeColumn:(signed __int16)column
{
  if (column == 0x7FFF)
  {

    objc_msgSend_setSpansAllColumns_(self, a2, 1, v3);
  }

  else if (objc_msgSend_spansAllColumns(self, a2, column, v3))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERelativeTractRef addRelativeColumn:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 266, 0, "Cannot mix spanning and non-spanning column");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
  }

  else
  {

    TSUIndexSet::addIndex(&self->_relativeColumns);
  }
}

- (void)addRelativeRow:(int)row
{
  if (row == 0x7FFFFFFF)
  {

    objc_msgSend_setSpansAllRows_(self, a2, 1, v3);
  }

  else if (objc_msgSend_spansAllRows(self, a2, *&row, v3))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERelativeTractRef addRelativeRow:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 276, 0, "Cannot mix spanning and non-spanning row");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
  }

  else
  {

    TSUIndexSet::addIndex(&self->_relativeRows);
  }
}

- (void)addRelativeColumnRange:(const TSUIndexRange *)range
{
  begin = range->_begin;
  if (range->_begin <= 0x7FFFFFFF && range->_end == begin)
  {
    if (begin == 0x7FFF)
    {
      objc_msgSend_setSpansAllColumns_(self, 0x7FFF, 1, v3);
    }

    else
    {
      TSUIndexSet::addIndex(&self->_relativeColumns);
    }
  }

  else
  {
    TSUIndexSet::addIndexesInRange(&self->_relativeColumns, range);
  }
}

- (void)addRelativeRowRange:(const TSUIndexRange *)range
{
  begin = range->_begin;
  if (range->_begin <= 0x7FFFFFFF && range->_end == begin)
  {
    if (begin == 0x7FFFFFFF)
    {
      objc_msgSend_setSpansAllRows_(self, 0x7FFFFFFF, 1, v3);
    }

    else
    {
      TSUIndexSet::addIndex(&self->_relativeRows);
    }
  }

  else
  {
    TSUIndexSet::addIndexesInRange(&self->_relativeRows, range);
  }
}

- (void)removeRelativeColumnRange:(const TSUIndexRange *)range
{
  TSUIndexSet::removeIndexesInRange(&self->_relativeColumns, range);

  objc_msgSend_normalizeSpanningSettings(self, v4, v5, v6);
}

- (void)removeRelativeRowRange:(const TSUIndexRange *)range
{
  TSUIndexSet::removeIndexesInRange(&self->_relativeRows, range);

  objc_msgSend_normalizeSpanningSettings(self, v4, v5, v6);
}

- (BOOL)isRectangularRange
{
  isRectangularRange = objc_msgSend_isRectangularRange(self->_absTractRef, a2, v2, v3);
  if (isRectangularRange)
  {
    if ((objc_msgSend_spansAllColumns(self, v6, v7, v8) & 1) != 0 || ((*&self->_relativeColumns & 2) != 0 || (*&self->_relativeColumns & 1) != 0 || *(self->_relativeColumns._multipleRanges + 1) <= 1uLL) && ((v15 = objc_msgSend_columns(self->_absTractRef, v9, v10, v11), (*v15 & 2) != 0) || (*v15 & 1) != 0 || *(*(v15 + 24) + 8) <= 1uLL) && (!TSUIndexSet::count(&self->_relativeColumns) || (v16 = objc_msgSend_columns(self->_absTractRef, v9, v10, v11), !TSUIndexSet::count(v16))))
    {
      if (objc_msgSend_spansAllRows(self, v9, v10, v11))
      {
LABEL_4:
        LOBYTE(isRectangularRange) = 1;
        return isRectangularRange;
      }

      if ((*&self->_relativeRows & 2) != 0 || (*&self->_relativeRows & 1) != 0 || *(self->_relativeRows._multipleRanges + 1) <= 1uLL)
      {
        v17 = objc_msgSend_rows(self->_absTractRef, v12, v13, v14);
        if ((*v17 & 2) != 0 || (*v17 & 1) != 0 || *(*(v17 + 24) + 8) <= 1uLL)
        {
          if (TSUIndexSet::count(&self->_relativeRows))
          {
            v21 = objc_msgSend_rows(self->_absTractRef, v18, v19, v20);
            LOBYTE(isRectangularRange) = TSUIndexSet::count(v21) == 0;
            return isRectangularRange;
          }

          goto LABEL_4;
        }
      }
    }

    LOBYTE(isRectangularRange) = 0;
  }

  return isRectangularRange;
}

- (BOOL)isSingleCellOrSpanningRange
{
  if (objc_msgSend_spansAllRows(self, a2, v2, v3) || ((v8 = objc_msgSend_spansAllColumns(self, v5, v6, v7), v12 = objc_msgSend_numRows(self->_absTractRef, v9, v10, v11), v13 = TSUIndexSet::count(&self->_relativeRows) + v12, v13 == 1) ? (result = v8) : (result = 0), (v8 & 1) == 0 && v13 == 1))
  {
    v15 = objc_msgSend_numColumns(self->_absTractRef, v5, v6, v7);
    return TSUIndexSet::count(&self->_relativeColumns) + v15 == 1;
  }

  return result;
}

- (void)normalizeSpanningSettings
{
  if ((objc_msgSend_spansAllColumns(self, a2, v2, v3) & 1) == 0 && !TSUIndexSet::count(&self->_relativeColumns))
  {
    v8 = objc_msgSend_columns(self->_absTractRef, v5, v6, v7);
    v9 = TSUIndexSet::count(v8);
    if (!v9 || v9 == 1 && (v10 = objc_msgSend_columns(self->_absTractRef, v5, v6, v7), TSUIndexSet::firstIndex(v10) == 0x7FFF))
    {
      objc_msgSend_setSpansAllColumns_(self, v5, 1, v7);
    }
  }

  if ((objc_msgSend_spansAllRows(self, v5, v6, v7) & 1) == 0 && !TSUIndexSet::count(&self->_relativeRows))
  {
    v14 = objc_msgSend_rows(self->_absTractRef, v11, v12, v13);
    v15 = TSUIndexSet::count(v14);
    if (!v15 || v15 == 1 && (v19 = objc_msgSend_rows(self->_absTractRef, v16, v17, v18), TSUIndexSet::firstIndex(v19) == 0x7FFFFFFF))
    {

      objc_msgSend_setSpansAllRows_(self, v16, 1, v18);
    }
  }
}

- (BOOL)verifySpanningSettings
{
  if (objc_msgSend_spansAllColumns(self, a2, v2, v3) & 1) != 0 || (objc_msgSend_spansAllRows(self, v5, v6, v7))
  {
    v8 = 1;
  }

  else
  {
    v21 = objc_msgSend_relativeColumns(self, v5, v6, v7);
    v25 = TSUIndexSet::containsIndex(v21);
    if (v25)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCERelativeTractRef verifySpanningSettings]", v24);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 452, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    }

    v35 = objc_msgSend_relativeRows(self, v22, v23, v24);
    if (TSUIndexSet::containsIndex(v35))
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSCERelativeTractRef verifySpanningSettings]", v38);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 457, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
      v8 = 0;
    }

    else
    {
      v8 = v25 ^ 1;
    }

    v81 = objc_msgSend_columns(self, v36, v37, v38);
    if (TSUIndexSet::containsIndex(v81))
    {
      v85 = MEMORY[0x277D81150];
      v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSCERelativeTractRef verifySpanningSettings]", v84);
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v88);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v90, v86, v89, 462, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93);
      v8 = 0;
    }

    v94 = objc_msgSend_rows(self, v82, v83, v84);
    if (TSUIndexSet::containsIndex(v94))
    {
      v95 = MEMORY[0x277D81150];
      v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERelativeTractRef verifySpanningSettings]", v7);
      v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v98);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v100, v96, v99, 467, 0, "Invalid seen in non-spanning");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103);
      v8 = 0;
    }
  }

  if ((objc_msgSend_spansAllColumns(self, v5, v6, v7) & 1) == 0)
  {
    if (objc_msgSend_preserveFlags(self, v9, v10, v11))
    {
      v48 = objc_msgSend_columns(self->_absTractRef, v12, v13, v14);
      if (TSUIndexSet::count(v48))
      {
        goto LABEL_15;
      }

      v49 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCERelativeTractRef verifySpanningSettings]", v11);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v52, v16, v19, 476, 0, "No absolute column found, but not marked as spanning");
    }

    else
    {
      if (TSUIndexSet::count(&self->_relativeColumns))
      {
        goto LABEL_15;
      }

      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCERelativeTractRef verifySpanningSettings]", v11);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 481, 0, "No relative column found, but not marked as spanning");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
    v8 = 0;
  }

LABEL_15:
  if ((objc_msgSend_spansAllRows(self, v9, v10, v11) & 1) == 0)
  {
    if ((objc_msgSend_preserveFlags(self, v56, v57, v58) & 2) != 0)
    {
      v70 = objc_msgSend_rows(self->_absTractRef, v59, v60, v61);
      if (!TSUIndexSet::count(v70))
      {
        v73 = MEMORY[0x277D81150];
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSCERelativeTractRef verifySpanningSettings]", v72);
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v75);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v76, v65, v68, 490, 0, "No absolute row found, but not marked as spanning");
        goto LABEL_21;
      }
    }

    else if (!TSUIndexSet::count(&self->_relativeRows))
    {
      v64 = MEMORY[0x277D81150];
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSCERelativeTractRef verifySpanningSettings]", v63);
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v67);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 495, 0, "No relative row found, but not marked as spanning");
LABEL_21:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79);
      return 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_relativeColumns(self, a2, v2, v3);
  v6 = TSUIndexSet::hash(v5);
  v10 = objc_msgSend_relativeRows(self, v7, v8, v9);
  v11 = TSUIndexSet::hash(v10);
  v13.receiver = self;
  v13.super_class = TSCERelativeTractRef;
  return [(TSCERelativeTractRef *)&v13 hash]+ 3 * v6 + v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (objc_msgSend_isEqual_(self->_absTractRef, v6, v5[1], v7) && (objc_msgSend_relativeColumns(self, v8, v9, v10), objc_msgSend_relativeColumns(v5, v11, v12, v13), TSUIndexSet::operator==()))
    {
      objc_msgSend_relativeRows(self, v14, v15, v16);
      objc_msgSend_relativeRows(v5, v17, v18, v19);
      v20 = TSUIndexSet::operator==();
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (TSCERelativeCellCoordinate)relativeTopLeft
{
  if ((objc_msgSend_spansAllColumns(self, a2, v2, v3) & 1) == 0)
  {
    if (objc_msgSend_preserveFlags(self, v5, v6, v7))
    {
      v14 = objc_msgSend_columns(self->_absTractRef, v8, v9, v10);
      if (TSUIndexSet::count(v14))
      {
        v18 = objc_msgSend_columns(self->_absTractRef, v15, v16, v17);
        Index = TSUIndexSet::firstIndex(v18);
        goto LABEL_11;
      }

      v25 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCERelativeTractRef relativeTopLeft]", v17);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v28, v20, v23, 533, 0, "No absolute column found, but not marked as spanning");
    }

    else
    {
      if (TSUIndexSet::count(&self->_relativeColumns))
      {
        Index = TSUIndexSet::firstIndex(&self->_relativeColumns);
        goto LABEL_11;
      }

      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCERelativeTractRef relativeTopLeft]", v12);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 539, 0, "No relative column found, but not marked as spanning");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  Index = 0x7FFF;
LABEL_11:
  if (objc_msgSend_spansAllRows(self, v5, v6, v7))
  {
LABEL_20:
    v40 = 0x7FFFFFFFLL;
    goto LABEL_21;
  }

  if ((objc_msgSend_preserveFlags(self, v32, v33, v34) & 2) != 0)
  {
    v41 = objc_msgSend_rows(self->_absTractRef, v35, v36, v37);
    if (TSUIndexSet::count(v41))
    {
      v45 = objc_msgSend_rows(self->_absTractRef, v42, v43, v44);
      v40 = TSUIndexSet::firstIndex(v45);
      goto LABEL_21;
    }

    v52 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSCERelativeTractRef relativeTopLeft]", v44);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v55, v47, v50, 549, 0, "No absolute row found, but not marked as spanning");
    goto LABEL_19;
  }

  if (!TSUIndexSet::count(&self->_relativeRows))
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSCERelativeTractRef relativeTopLeft]", v39);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 555, 0, "No relative row found, but not marked as spanning");
LABEL_19:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58);
    goto LABEL_20;
  }

  v40 = TSUIndexSet::firstIndex(&self->_relativeRows);
LABEL_21:
  v59 = objc_msgSend_preserveFlags(self, v32, v33, v34) & 1;
  v63 = objc_msgSend_preserveFlags(self, v60, v61, v62);
  sub_2210898C4(Index, v64, v65, v66);
  sub_2210899C8(v40, v67, v68, v69);
  sub_2210898C4(Index, v70, v71, v72);
  sub_2210899C8(v40, v73, v74, v75);
  return (((v63 & 2) << 47) | (v59 << 56) | (Index << 32) | v40);
}

- (TSCERelativeCellCoordinate)relativeBottomRight
{
  if (objc_msgSend_spansAllColumns(self, a2, v2, v3))
  {
    goto LABEL_2;
  }

  if ((objc_msgSend_preserveFlags(self, v5, v6, v7) & 4) == 0)
  {
    if (TSUIndexSet::count(&self->_relativeColumns))
    {
      Index = TSUIndexSet::lastIndex(&self->_relativeColumns);
      goto LABEL_3;
    }

    v53 = objc_msgSend_columns(self->_absTractRef, v34, v35, v36);
    if (TSUIndexSet::count(v53))
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSCERelativeTractRef relativeBottomRight]", v56);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v60);
      v65 = objc_msgSend_columns(self->_absTractRef, v62, v63, v64);
      v66 = TSUIndexSet::count(v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v67, v58, v61, 579, 0, "Non-spanning ref has %d absolute columns", v66);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
    }

    v71 = objc_msgSend_columns(self->_absTractRef, v54, v55, v56);
    if (TSUIndexSet::count(v71))
    {
      goto LABEL_2;
    }

    v72 = MEMORY[0x277D81150];
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERelativeTractRef relativeBottomRight]", v7);
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v75);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v77, v73, v76, 580, 0, "No absolute columns found, but not marked as spanning");
LABEL_24:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96);
LABEL_2:
    Index = 0x7FFF;
    goto LABEL_3;
  }

  v43 = objc_msgSend_columns(self->_absTractRef, v31, v32, v33);
  if (!TSUIndexSet::count(v43))
  {
    if (TSUIndexSet::count(&self->_relativeColumns))
    {
      v80 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSCERelativeTractRef relativeBottomRight]", v79);
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v83);
      v85 = TSUIndexSet::count(&self->_relativeColumns);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v86, v81, v84, 572, 0, "Non-spanning ref has %d relative columns", v85);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89);
    }

    if (TSUIndexSet::count(&self->_relativeColumns))
    {
      goto LABEL_2;
    }

    v90 = MEMORY[0x277D81150];
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERelativeTractRef relativeBottomRight]", v7);
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v92);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v93, v73, v76, 573, 0, "No relative columns found, but not marked as spanning");
    goto LABEL_24;
  }

  v47 = objc_msgSend_columns(self->_absTractRef, v44, v45, v46);
  Index = TSUIndexSet::lastIndex(v47);
LABEL_3:
  if (objc_msgSend_spansAllRows(self, v5, v6, v7))
  {
    goto LABEL_4;
  }

  if ((objc_msgSend_preserveFlags(self, v9, v10, v11) & 8) != 0)
  {
    v48 = objc_msgSend_rows(self->_absTractRef, v37, v38, v39);
    if (TSUIndexSet::count(v48))
    {
      v52 = objc_msgSend_rows(self->_absTractRef, v49, v50, v51);
      v12 = TSUIndexSet::lastIndex(v52);
      goto LABEL_5;
    }

    if (TSUIndexSet::count(&self->_relativeRows))
    {
      v124 = MEMORY[0x277D81150];
      v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "[TSCERelativeTractRef relativeBottomRight]", v123);
      v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v127);
      v129 = TSUIndexSet::count(&self->_relativeRows);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v130, v125, v128, 590, 0, "Non-spanning ref has %d relative rows", v129);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v131, v132, v133);
    }

    if (TSUIndexSet::count(&self->_relativeRows))
    {
      goto LABEL_4;
    }

    v134 = MEMORY[0x277D81150];
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCERelativeTractRef relativeBottomRight]", v11);
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v136);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v134, v137, v117, v120, 591, 0, "No relative rows found, but not marked as spanning");
    goto LABEL_33;
  }

  if (TSUIndexSet::count(&self->_relativeRows))
  {
    v12 = TSUIndexSet::lastIndex(&self->_relativeRows);
    goto LABEL_5;
  }

  v97 = objc_msgSend_rows(self->_absTractRef, v40, v41, v42);
  if (TSUIndexSet::count(v97))
  {
    v101 = MEMORY[0x277D81150];
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "[TSCERelativeTractRef relativeBottomRight]", v100);
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v104);
    v109 = objc_msgSend_rows(self->_absTractRef, v106, v107, v108);
    v110 = TSUIndexSet::count(v109);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v111, v102, v105, 597, 0, "Non-spanning ref has %d absolute rows", v110);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v112, v113, v114);
  }

  v115 = objc_msgSend_rows(self->_absTractRef, v98, v99, v100);
  if (!TSUIndexSet::count(v115))
  {
    v116 = MEMORY[0x277D81150];
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCERelativeTractRef relativeBottomRight]", v11);
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTractRef.mm", v119);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v121, v117, v120, 598, 0, "No absolute rows found, but not marked as spanning");
LABEL_33:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v138, v139, v140);
  }

LABEL_4:
  v12 = 0x7FFFFFFFLL;
LABEL_5:
  v13 = objc_msgSend_preserveFlags(self, v9, v10, v11);
  v17 = objc_msgSend_preserveFlags(self, v14, v15, v16);
  sub_2210898C4(Index, v18, v19, v20);
  sub_2210899C8(v12, v21, v22, v23);
  sub_2210898C4(Index, v24, v25, v26);
  sub_2210899C8(v12, v27, v28, v29);
  return (((v13 & 4) << 54) | ((((v17 & 8) >> 3) & 1) << 48) | (Index << 32) | v12);
}

- (TSCERelativeRangeCoordinate)relativeBoundingRangeWithContainingCell:(const TSUCellCoord *)cell
{
  RelativeCellCoordinateFromAbsoluteCoordinates = objc_msgSend_relativeTopLeft(self, a2, cell, v3);
  v10 = objc_msgSend_relativeBottomRight(self, v7, v8, v9);
  v14 = objc_msgSend_preserveFlags(self, v11, v12, v13);
  if (v14)
  {
    v16 = v14;
    v17 = *cell;
    v32._flags = v16 & 3;
    v18 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v17, RelativeCellCoordinateFromAbsoluteCoordinates, &v32, v15);
    v19 = *cell;
    v31._flags = (v16 >> 2) & 3;
    v21 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v19, v10, &v31, v20);
    v30 = 0;
    v22 = &v30;
    v23 = v18;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*cell, v23, v22, v24);
    v25 = &v30;
    v26 = v21;
    v10 = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*cell, v26, v25, v27);
  }

  v28 = RelativeCellCoordinateFromAbsoluteCoordinates;
  v29 = v10;
  result.var1 = v29;
  result.var0 = v28;
  return result;
}

- (void)preserveFlagsFixingInversionsForTract:(id)tract absFromRelColumns:(const TSUIndexSet *)columns absFromRelRows:(const TSUIndexSet *)rows
{
  tractCopy = tract;
  v14 = objc_msgSend_preserveFlags(self->_absTractRef, v8, v9, v10);
  if (((v14 ^ (v14 >> 2)) & 3) != 0)
  {
    v15 = objc_msgSend_topLeft(tractCopy, v11, v12, v13);
    v20 = objc_msgSend_bottomRight(tractCopy, v16, v17, v18);
    if ((v14 & 1) == (v14 & 4) >> 2 || objc_msgSend_spansAllColumns(self, v11, v19, v13))
    {
      v21 = v14 & 5;
LABEL_5:
      if (((v14 >> 1) & 1) == (v14 & 8) >> 3 || objc_msgSend_spansAllRows(self, v11, v19, v13))
      {
        LOBYTE(v14) = v14 & 0xA | v21;
        goto LABEL_8;
      }

      absTractRef = self->_absTractRef;
      if (v20 == v15)
      {
        v26 = objc_msgSend_rows(absTractRef, v11, v22, v13);
        if (TSUIndexSet::containsIndex(v26) != (v14 & 2) >> 1)
        {
LABEL_27:
          objc_msgSend_setMixedRowStartedWithPreserve_(tractCopy, v31, 0, v33);
          LOBYTE(v14) = v21 | 8;
          goto LABEL_8;
        }
      }

      else
      {
        v29 = objc_msgSend_rows(absTractRef, v11, v22, v13);
        v30 = TSUIndexSet::containsIndex(v29);
        if ((v30 & 1) == 0)
        {
          v35 = objc_msgSend_rows(self->_absTractRef, v31, v32, v33);
          if (TSUIndexSet::containsIndex(v35) & 1) != 0 || (TSUIndexSet::containsIndex(rows))
          {
            goto LABEL_27;
          }
        }
      }

      objc_msgSend_setMixedRowStartedWithPreserve_(tractCopy, v31, 1, v33);
      LOBYTE(v14) = v21 | 2;
      goto LABEL_8;
    }

    if (WORD2(v20) == WORD2(v15))
    {
      if ((v14 ^ TSUIndexSet::containsIndex(columns)))
      {
LABEL_24:
        objc_msgSend_setMixedColumnStartedWithPreserve_(tractCopy, v23, 0, v24);
        v21 = 4;
        goto LABEL_5;
      }
    }

    else
    {
      v27 = objc_msgSend_columns(self->_absTractRef, v11, v19, v13);
      if ((TSUIndexSet::containsIndex(v27) & 1) == 0)
      {
        v34 = objc_msgSend_columns(self->_absTractRef, v23, v28, v24);
        if (TSUIndexSet::containsIndex(v34) & 1) != 0 || (TSUIndexSet::containsIndex(columns))
        {
          goto LABEL_24;
        }
      }
    }

    v21 = 1;
    objc_msgSend_setMixedColumnStartedWithPreserve_(tractCopy, v23, 1, v24);
    goto LABEL_5;
  }

LABEL_8:
  objc_msgSend_setPreserveFlags_(tractCopy, v11, v14, v13);
}

- (id)absoluteCellTractRefForHostCell:(const TSUCellCoord *)cell offTable:(BOOL *)table
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x5012000000;
  v71 = sub_22121A2E4;
  v72 = sub_22121A308;
  v73 = &unk_22188E88F;
  objc_msgSend_columns(self->_absTractRef, a2, cell, table);
  *&v74 |= 3u;
  *&v7.f64[0] = 0x8000000080000000;
  *&v7.f64[1] = 0x8000000080000000;
  v41 = vnegq_f64(v7);
  v74._singleRange = v41;
  v74._multipleRanges = 0;
  TSUIndexSet::operator=();
  v61 = 0;
  v62 = &v61;
  v63 = 0x5012000000;
  v64 = sub_22121A2E4;
  v65 = sub_22121A308;
  v66 = &unk_22188E88F;
  objc_msgSend_rows(self->_absTractRef, v8, v9, v10);
  *&v67 |= 3u;
  v67._singleRange = v41;
  v67._multipleRanges = 0;
  TSUIndexSet::operator=();
  v54 = 0;
  v55 = &v54;
  v56 = 0x5012000000;
  v57 = sub_22121A2E4;
  v58 = sub_22121A308;
  v59 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v60);
  v47 = 0;
  v48 = &v47;
  v49 = 0x5012000000;
  v50 = sub_22121A2E4;
  v51 = sub_22121A308;
  v52 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v53);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (cell->row != 0x7FFFFFFF && (*cell & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if ((objc_msgSend_spansAllColumns(self, v11, v12, v13) & 1) == 0 && TSUIndexSet::count(&self->_relativeColumns))
    {
      v42[10] = MEMORY[0x277D85DD0];
      v42[11] = 3221225472;
      v42[12] = sub_22121C2B4;
      v42[13] = &unk_2784618F8;
      v42[14] = &v43;
      v42[15] = &v68;
      v42[16] = &v54;
      v42[17] = cell;
      TSUIndexSet::enumerateRangesUsingBlock();
    }

    if ((objc_msgSend_spansAllRows(self, v14, v15, v16, v41) & 1) == 0 && TSUIndexSet::count(&self->_relativeRows))
    {
      v42[2] = MEMORY[0x277D85DD0];
      v42[3] = 3221225472;
      v42[4] = sub_22121C370;
      v42[5] = &unk_2784618F8;
      v42[6] = &v43;
      v42[7] = &v61;
      v42[8] = &v47;
      v42[9] = cell;
      TSUIndexSet::enumerateRangesUsingBlock();
    }
  }

  v17 = [TSCECellTractRef alloc];
  v18 = v69;
  v19 = v62;
  v42[0] = objc_msgSend_tableUID(self, v20, v21, v22);
  v42[1] = v23;
  v24 = objc_msgSend_initWithColumns_rows_tableUID_(v17, v23, (v18 + 6), (v19 + 6), v42);
  objc_msgSend_preserveFlagsFixingInversionsForTract_absFromRelColumns_absFromRelRows_(self, v25, v24, (v55 + 6), v48 + 6);
  v29 = objc_msgSend_preserveRectangular(self, v26, v27, v28);
  objc_msgSend_setPreserveRectangular_(v24, v30, v29, v31);
  if (objc_msgSend_spansAllColumns(self, v32, v33, v34))
  {
    objc_msgSend_setSpansAllColumns_(v24, v35, 1, v37);
  }

  else if (objc_msgSend_spansAllRows(self, v35, v36, v37))
  {
    objc_msgSend_setSpansAllRows_(v24, v38, 1, v39);
  }

  if (table)
  {
    *table = *(v44 + 24);
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  TSUIndexSet::~TSUIndexSet(&v53);
  _Block_object_dispose(&v54, 8);
  TSUIndexSet::~TSUIndexSet(&v60);
  _Block_object_dispose(&v61, 8);
  TSUIndexSet::~TSUIndexSet(&v67);
  _Block_object_dispose(&v68, 8);
  TSUIndexSet::~TSUIndexSet(&v74);

  return v24;
}

- (void)adjustRelativeIndexesBy:(const TSUColumnRowOffset *)by
{
  if (by->var0 && (objc_msgSend_spansAllColumns(self, a2, by, v3) & 1) == 0)
  {
    TSUIndexSet::shiftAllIndexesBy(&self->_relativeColumns);
  }

  if (by->var1 && (objc_msgSend_spansAllRows(self, a2, by, v3) & 1) == 0)
  {

    TSUIndexSet::shiftAllIndexesBy(&self->_relativeRows);
  }
}

- (id).cxx_construct
{
  TSUIndexSet::TSUIndexSet(&self->_relativeColumns);
  TSUIndexSet::TSUIndexSet(&self->_relativeRows);
  return self;
}

@end