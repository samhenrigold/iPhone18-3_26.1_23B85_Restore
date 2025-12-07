@interface TSCEAnyReference
- (BOOL)isEqual:(id)equal;
- (TSCEAnyRef)anyRef;
- (TSCEAnyReference)initWithCellRef:(const TSCECellRef *)ref;
- (TSCEAnyReference)initWithRangeRef:(const TSCERangeRef *)ref;
- (TSCERangeRef)rangeRef;
- (TSCEWrappedRangeRef)rangeReference;
- (TSKUIDStruct)tableUID;
- (id).cxx_construct;
- (id)p_stringByUnescapingQuotedStringWithPossibleDollarPrefix:(id)prefix partial:(BOOL)partial;
- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine contextSheetName:(id)name preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete;
- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete;
- (id)referenceTextWithCalculationEngine:(id)engine contextSheetName:(id)name;
- (id)referenceTextWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d;
@end

@implementation TSCEAnyReference

- (TSCEAnyReference)initWithRangeRef:(const TSCERangeRef *)ref
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = TSCEAnyReference;
  v4 = [(TSCEAnyReference *)&v11 init];
  v5 = v4;
  if (v4)
  {
    tableUID = ref->_tableUID;
    *&v13[6] = ref->range;
    *&v13[22] = tableUID;
    memset(&v12[7], 0, 18);
    *(v4 + 4) = 1;
    v7 = *&v13[16];
    *(v4 + 10) = *v13;
    *(v4 + 26) = v7;
    *(v4 + 5) = *&v13[30];
    v4[48] = 0;
    v8 = *v12;
    *(v4 + 58) = *&v12[9];
    *(v4 + 49) = v8;
    v9 = *(v4 + 10);
    *(v4 + 10) = 0;
  }

  return v5;
}

- (TSCEAnyReference)initWithCellRef:(const TSCECellRef *)ref
{
  v12 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TSCEAnyReference;
  v4 = [(TSCEAnyReference *)&v8 init];
  if (v4)
  {
    TSCERangeRef::TSCERangeRef(&v9, ref);
    *&v11[6] = v9;
    v5 = *(&v9.range._bottomRight.row + 2);
    *(v4 + 10) = *v11;
    memset(&v10[7], 0, 18);
    *(v4 + 4) = 0;
    *(v4 + 26) = v5;
    *(v4 + 5) = *&v11[30];
    v4[48] = 0;
    *(v4 + 49) = *v10;
    *(v4 + 58) = *&v10[9];
    v6 = *(v4 + 10);
    *(v4 + 10) = 0;
  }

  return v4;
}

- (TSCEAnyRef)anyRef
{
  v4 = *&self->_ref._spanningRef.rangeRef.range._bottomRight.row;
  uuidValue = self->_ref._uuidValue;
  *&retstr->_spanningRef.rangeRef._tableUID._upper = *&self->_ref._spanningRef.rangeRef._tableUID._upper;
  retstr->_uuidValue = uuidValue;
  *&retstr->_couldBeIntersection = *&self->_ref._couldBeIntersection;
  *&retstr->_refType = *&self->_ref._refType;
  *&retstr->_spanningRef.rangeRef.range._bottomRight.row = v4;
  result = self->_ref._refSet;
  retstr->_refSet = result;
  return result;
}

- (TSCERangeRef)rangeRef
{
  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (LOWORD(self->range._bottomRight.row) == 1)
  {
    range = self[1].range;
    retstr->range = self->_tableUID;
    retstr->_tableUID = range;
  }

  else if (!LOWORD(self->range._bottomRight.row))
  {
    v7 = v3;
    v8 = v4;
    v6.coordinate = self->_tableUID._lower;
    v6._tableUID = self[1].range;
    TSCERangeRef::TSCERangeRef(retstr, &v6);
  }

  return self;
}

- (TSCEWrappedRangeRef)rangeReference
{
  if (self->_ref._refType == 1)
  {
    v7 = TSCERangeRef::wrapped(&self->_ref._spanningRef.rangeRef);
    if (!v7)
    {
LABEL_4:
      v7 = objc_msgSend_invalidRangeRef(TSCEWrappedRangeRef, a2, v2, v3);
    }
  }

  else
  {
    if (self->_ref._refType)
    {
      goto LABEL_4;
    }

    v10.coordinate = self->_ref._spanningRef.rangeRef.range._topLeft;
    v10._tableUID = self->_ref._spanningRef.rangeRef._tableUID;
    v4 = [TSCEWrappedRangeRef alloc];
    TSCERangeRef::TSCERangeRef(&v9, &v10);
    v7 = objc_msgSend_initWithRangeRef_(v4, v5, &v9, v6);
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  return v7;
}

- (TSKUIDStruct)tableUID
{
  v4 = TSCEAnyRef::containedTableUID(&self->_ref, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (id)referenceTextWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  overrideText = self->_overrideText;
  if (overrideText)
  {
    v10 = overrideText;
    goto LABEL_10;
  }

  if (self->_ref._refType)
  {
    if (self->_ref._refType != 1)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEAnyReference referenceTextWithCalculationEngine:hostTableUID:]", v7);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAnyReference.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 274, 0, "referenceTextWithCalculationEngine currently only supports cell and range references");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
      v33 = 0;
      v30 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      goto LABEL_9;
    }

    range = self->_ref._spanningRef.rangeRef.range;
    tableUID = self->_ref._spanningRef.rangeRef._tableUID;
  }

  else
  {
    v31.coordinate = self->_ref._spanningRef.rangeRef.range._topLeft;
    v31._tableUID = self->_ref._spanningRef.rangeRef._tableUID;
    TSCERangeRef::TSCERangeRef(&v32, &v31);
    range = v32.range;
    tableUID = v32._tableUID;
  }

  v30 = range;
  v33 = tableUID;
LABEL_9:
  v22 = objc_opt_new();
  objc_msgSend_setHostTableUID_(v22, v23, d->_lower, d->_upper);
  v27 = objc_msgSend_namer(engineCopy, v24, v25, v26);
  v32.range = v30;
  v32._tableUID = v33;
  v10 = objc_msgSend_nameForChromeRangeRef_namingContext_(v27, v28, &v32, v22);

LABEL_10:

  return v10;
}

- (id)referenceTextWithCalculationEngine:(id)engine contextSheetName:(id)name
{
  engineCopy = engine;
  nameCopy = name;
  overrideText = self->_overrideText;
  if (overrideText)
  {
    v11 = overrideText;
    goto LABEL_10;
  }

  if (self->_ref._refType)
  {
    if (self->_ref._refType != 1)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEAnyReference referenceTextWithCalculationEngine:contextSheetName:]", v8);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEAnyReference.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 299, 0, "referenceTextWithCalculationEngine currently only supports cell and range references");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
      upper = 0;
      lower = 0;
      topLeft = 0x7FFF7FFFFFFFLL;
      bottomRight = 0x7FFF7FFFFFFFLL;
      goto LABEL_9;
    }

    topLeft = self->_ref._spanningRef.rangeRef.range._topLeft;
    bottomRight = self->_ref._spanningRef.rangeRef.range._bottomRight;
  }

  else
  {
    topLeft = self->_ref._spanningRef.rangeRef.range._topLeft;
    bottomRight = topLeft;
  }

  lower = self->_ref._spanningRef.rangeRef._tableUID._lower;
  upper = self->_ref._spanningRef.rangeRef._tableUID._upper;
LABEL_9:
  v25 = objc_opt_new();
  objc_msgSend_setContextSheetName_(v25, v26, nameCopy, v27);
  v31 = objc_msgSend_namer(engineCopy, v28, v29, v30);
  v34[0] = topLeft;
  v34[1] = bottomRight;
  v34[2] = lower;
  v34[3] = upper;
  v11 = objc_msgSend_nameForChromeRangeRef_namingContext_(v31, v32, v34, v25);

LABEL_10:

  return v11;
}

- (id)p_stringByUnescapingQuotedStringWithPossibleDollarPrefix:(id)prefix partial:(BOOL)partial
{
  partialCopy = partial;
  prefixCopy = prefix;
  if (objc_msgSend_hasPrefix_(prefixCopy, v6, @"$", v7))
  {
    v11 = objc_msgSend_length(@"$", v8, v9, v10);
    v14 = objc_msgSend_substringFromIndex_(prefixCopy, v12, v11, v13);
    v18 = v14;
    if (partialCopy)
    {
      objc_msgSend_tsce_stringByUnescapingPartialQuotedString(v14, v15, v16, v17);
    }

    else
    {
      objc_msgSend_tsce_stringByUnescapingSingleQuotes(v14, v15, v16, v17);
    }
    v20 = ;
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%@%@", v22, @"$", v20);
  }

  else
  {
    v19 = objc_msgSend_tsce_stringByUnescapingPartialQuotedString(prefixCopy, v8, v9, v10);
  }

  return v19;
}

- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine hostTableUID:(const TSKUIDStruct *)d preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete
{
  completeCopy = complete;
  v75._flags = flags._flags;
  engineCopy = engine;
  stringCopy = string;
  overrideTextAsTyped = self->_overrideTextAsTyped;
  if (overrideTextAsTyped)
  {
    v15 = overrideTextAsTyped;
  }

  else
  {
    if (self->_wasConstructedViaNames)
    {
      v16 = objc_msgSend_p_stringByUnescapingQuotedStringWithPossibleDollarPrefix_partial_(self, v12, stringCopy, !completeCopy);
      isEqualToString = objc_msgSend_isEqualToString_(stringCopy, v17, v16, v18);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_11;
      }

      if (!objc_msgSend_length(stringCopy, v20, v21, v22) || objc_msgSend_isEqualToString_(stringCopy, v23, @"$", v24))
      {
        v25 = objc_opt_new();
        objc_msgSend_setHostTableUID_(v25, v26, d->_lower, d->_upper);
        v30 = objc_msgSend_rangeReference(self, v27, v28, v29);
        v34 = v30;
        if (v30)
        {
          objc_msgSend_rangeRef(v30, v31, v32, v33);
        }

        else
        {
          memset(&v74, 0, sizeof(v74));
        }

        LOBYTE(v73) = 0;
        TSCERangeRef::setPreserveFlags(&v74, &v73);
        v38 = objc_msgSend_namer(engineCopy, v35, v36, v37, *&v74.range._topLeft, *&v74.range._bottomRight, v74._tableUID._lower, v74._tableUID._upper);
        v40 = objc_msgSend_nameForChromeRangeRef_namingContext_(v38, v39, &v73, v25);

        LOBYTE(v38) = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(v40, v41, v42, v43);
        if (v38)
        {
LABEL_11:
          v44 = objc_opt_new();
          objc_msgSend_setHostTableUID_(v44, v45, d->_lower, d->_upper);
          objc_msgSend_setQuoteComponents_(v44, v46, 1, v47);
          objc_msgSend_setForceEscaping_(v44, v48, 1, v49);
          v53 = objc_msgSend_rangeReference(self, v50, v51, v52);
          v57 = v53;
          if (v53)
          {
            objc_msgSend_rangeRef(v53, v54, v55, v56);
          }

          else
          {
            memset(&v74, 0, sizeof(v74));
          }

          TSCERangeRef::setPreserveFlags(&v74, &v75);
          v63 = objc_msgSend_namer(engineCopy, v60, v61, v62, *&v74.range._topLeft, *&v74.range._bottomRight, v74._tableUID._lower, v74._tableUID._upper);
          v65 = objc_msgSend_nameForChromeRangeRef_namingContext_(v63, v64, &v73, v44);
          v69 = objc_msgSend_tsce_referenceComponentsSeparatedByPathDelimiter(v65, v66, v67, v68);
          v58 = objc_msgSend_lastObject(v69, v70, v71, v72);

          goto LABEL_15;
        }
      }
    }

    v15 = objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(self, v12, engineCopy, d);
  }

  v58 = v15;
LABEL_15:

  return v58;
}

- (id)referenceTextForAutocompleteWithCalculationEngine:(id)engine contextSheetName:(id)name preserveFlags:(TSUPreserveFlags)flags inputString:(id)string inputStringIsComplete:(BOOL)complete
{
  completeCopy = complete;
  v78._flags = flags._flags;
  engineCopy = engine;
  nameCopy = name;
  stringCopy = string;
  overrideTextAsTyped = self->_overrideTextAsTyped;
  if (overrideTextAsTyped)
  {
    v16 = overrideTextAsTyped;
  }

  else
  {
    if (self->_wasConstructedViaNames)
    {
      v17 = objc_msgSend_p_stringByUnescapingQuotedStringWithPossibleDollarPrefix_partial_(self, v13, stringCopy, !completeCopy);
      isEqualToString = objc_msgSend_isEqualToString_(stringCopy, v18, v17, v19);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_11;
      }

      if (!objc_msgSend_length(stringCopy, v21, v22, v23) || objc_msgSend_isEqualToString_(stringCopy, v24, @"$", v25))
      {
        v26 = objc_opt_new();
        objc_msgSend_setContextSheetName_(v26, v27, nameCopy, v28);
        v32 = objc_msgSend_rangeReference(self, v29, v30, v31);
        v36 = v32;
        if (v32)
        {
          objc_msgSend_rangeRef(v32, v33, v34, v35);
        }

        else
        {
          memset(&v77, 0, sizeof(v77));
        }

        LOBYTE(v76) = 0;
        TSCERangeRef::setPreserveFlags(&v77, &v76);
        v40 = objc_msgSend_namer(engineCopy, v37, v38, v39, *&v77.range._topLeft, *&v77.range._bottomRight, v77._tableUID._lower, v77._tableUID._upper);
        v42 = objc_msgSend_nameForChromeRangeRef_namingContext_(v40, v41, &v76, v26);

        LOBYTE(v40) = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(v42, v43, v44, v45);
        if (v40)
        {
LABEL_11:
          v46 = objc_opt_new();
          objc_msgSend_setContextSheetName_(v46, v47, nameCopy, v48);
          objc_msgSend_setQuoteComponents_(v46, v49, 1, v50);
          objc_msgSend_setForceEscaping_(v46, v51, 1, v52);
          v56 = objc_msgSend_rangeReference(self, v53, v54, v55);
          v60 = v56;
          if (v56)
          {
            objc_msgSend_rangeRef(v56, v57, v58, v59);
          }

          else
          {
            memset(&v77, 0, sizeof(v77));
          }

          TSCERangeRef::setPreserveFlags(&v77, &v78);
          v66 = objc_msgSend_namer(engineCopy, v63, v64, v65, *&v77.range._topLeft, *&v77.range._bottomRight, v77._tableUID._lower, v77._tableUID._upper);
          v68 = objc_msgSend_nameForChromeRangeRef_namingContext_(v66, v67, &v76, v46);
          v72 = objc_msgSend_tsce_referenceComponentsSeparatedByPathDelimiter(v68, v69, v70, v71);
          v61 = objc_msgSend_lastObject(v72, v73, v74, v75);

          goto LABEL_15;
        }
      }
    }

    v16 = objc_msgSend_referenceTextWithCalculationEngine_contextSheetName_(self, v13, engineCopy, nameCopy);
  }

  v61 = v16;
LABEL_15:

  return v61;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v12 = TSCEAnyRef::operator==(&self->_ref._refType, v5 + 1) && ((overrideText = self->_overrideText, v9 = v5[11], overrideText == v9) || v9 && objc_msgSend_isEqualToString_(overrideText, v6, v9, v7)) && ((overrideTextAsTyped = self->_overrideTextAsTyped, v11 = v5[12], overrideTextAsTyped == v11) || v11 && objc_msgSend_isEqualToString_(overrideTextAsTyped, v6, v11, v7)) && self->_preserveFlags._flags == *(v5 + 104) && self->_wasConstructedViaNames == *(v5 + 105);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id).cxx_construct
{
  *(self + 4) = 16;
  *(self + 1) = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 48) = 0;
  *(self + 10) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 36) = 0;
  *(self + 104) = 0;
  return self;
}

@end