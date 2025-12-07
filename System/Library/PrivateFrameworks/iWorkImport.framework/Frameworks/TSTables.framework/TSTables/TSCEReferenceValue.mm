@interface TSCEReferenceValue
+ (id)emptyReferenceValue;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (BOOL)isRange;
- (TSCEAnyRef)anyRef;
- (TSCEFormat)format;
- (TSCEFormat)formatWithContext:(SEL)context;
- (TSCERangeCoordinate)range;
- (TSCERangeRef)rangeRef;
- (TSCEReferenceValue)init;
- (TSCEReferenceValue)initWithContext:(id)context rangeRef:(const TSCERangeRef *)ref preserveFlags:(const TSUPreserveFlags *)flags cacheValue:(id)value wasFetchedWithRichTextAttributes:(BOOL)attributes;
- (TSCEReferenceValue)initWithContext:(id)context tableUID:(const TSKUIDStruct *)d rangeCoord:(const TSCERangeCoordinate *)coord preserveFlags:(const TSUPreserveFlags *)flags isOutputOfAFunction:(BOOL)function;
- (TSCEReferenceValue)initWithContext:(id)context tableUID:(const TSKUIDStruct *)d relativeCellCoord:(const TSCERelativeCellCoordinate *)coord preserveFlags:(const TSUPreserveFlags *)flags;
- (TSCEReferenceValue)initWithContext:(id)context tableUID:(const TSKUIDStruct *)d relativeRangeCoord:(const TSCERelativeRangeCoordinate *)coord preserveFlags:(const TSUPreserveFlags *)flags;
- (TSCEReferenceValue)initWithEvalRef:(id)ref hostCell:(const TSUCellCoord *)cell preserveFlags:(const TSUPreserveFlags *)flags permitsAccessInsideMergeRegions:(BOOL)regions isOutputOfAFunction:(BOOL)function;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSKUIDStruct)tableUID;
- (char)deepType:(id)type outError:(id *)error;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asReference:(id)reference functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)errorWithContext:(id)context;
- (id)intersectionWithHostCellRef:(TSCECellRef *)ref rangeContext:(unsigned __int8)context evaluationContext:(id)evaluationContext;
- (id)referredToValue:(id)value fetchRichTextAttributesIfPlainText:(BOOL)text;
@end

@implementation TSCEReferenceValue

+ (id)emptyReferenceValue
{
  v2 = objc_opt_new();

  return v2;
}

- (TSCEReferenceValue)init
{
  v6.receiver = self;
  v6.super_class = TSCEReferenceValue;
  v2 = [(TSCEValue *)&v6 init];
  v3 = v2;
  if (v2)
  {
    evalRef = v2->_evalRef;
    v2->_evalRef = 0;

    v3->_isOutputOfAFunction = 0;
    v3->_permitsAccessInsideMergeRegions = 0;
  }

  return v3;
}

- (TSCEReferenceValue)initWithContext:(id)context tableUID:(const TSKUIDStruct *)d rangeCoord:(const TSCERangeCoordinate *)coord preserveFlags:(const TSUPreserveFlags *)flags isOutputOfAFunction:(BOOL)function
{
  v38.receiver = self;
  v38.super_class = TSCEReferenceValue;
  v12 = [(TSCEValue *)&v38 init];
  v13 = v12;
  if (v12)
  {
    evalRef = v12->_evalRef;
    v12->_evalRef = 0;

    v13->_hostCell = *objc_msgSend_containingCell(context, v15, v16, v17);
    v13->_preserveFlags = flags->_flags;
    v13->_isOutputOfAFunction = function;
    v13->_permitsAccessInsideMergeRegions = 0;
    if (*d == 0)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEReferenceValue initWithContext:tableUID:rangeCoord:preserveFlags:isOutputOfAFunction:]", v20);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 70, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    }

    v30 = objc_msgSend_calcEngine(context, v18, v19, v20);
    v33 = objc_msgSend_tableResolverForTableUID_(v30, v31, d, v32);

    if (v33)
    {
      v35 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v33, v34, coord, &coord->_bottomRight, flags);
      v36 = v13->_evalRef;
      v13->_evalRef = v35;
    }
  }

  return v13;
}

- (TSCEReferenceValue)initWithContext:(id)context rangeRef:(const TSCERangeRef *)ref preserveFlags:(const TSUPreserveFlags *)flags cacheValue:(id)value wasFetchedWithRichTextAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  valueCopy = value;
  v43.receiver = self;
  v43.super_class = TSCEReferenceValue;
  v11 = [(TSCEValue *)&v43 init];
  v12 = v11;
  if (v11)
  {
    evalRef = v11->_evalRef;
    v11->_evalRef = 0;

    v12->_hostCell = *objc_msgSend_containingCell(context, v14, v15, v16);
    v12->_preserveFlags = flags->_flags;
    v12->_isOutputOfAFunction = 0;
    v12->_permitsAccessInsideMergeRegions = 0;
    if (*&ref->_tableUID == 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCEReferenceValue initWithContext:rangeRef:preserveFlags:cacheValue:wasFetchedWithRichTextAttributes:]", v19);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 116, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    v29 = objc_msgSend_calcEngine(context, v17, v18, v19);
    v32 = objc_msgSend_tableResolverForTableUID_(v29, v30, &ref->_tableUID, v31);

    if (v32)
    {
      range = ref->range;
      v35 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v32, v33, &range, &range._bottomRight, flags);
      v36 = v12->_evalRef;
      v12->_evalRef = v35;
    }

    objc_msgSend_setCachedValue_(v12->_evalRef, v33, valueCopy, v34);
    objc_msgSend_setCachedValueWasFetchedWithRichTextAttributes_(v12->_evalRef, v37, attributesCopy, v38);
  }

  return v12;
}

- (TSCEReferenceValue)initWithContext:(id)context tableUID:(const TSKUIDStruct *)d relativeRangeCoord:(const TSCERelativeRangeCoordinate *)coord preserveFlags:(const TSUPreserveFlags *)flags
{
  v51.receiver = self;
  v51.super_class = TSCEReferenceValue;
  v10 = [(TSCEValue *)&v51 init];
  v11 = v10;
  if (v10)
  {
    evalRef = v10->_evalRef;
    v10->_evalRef = 0;

    v11->_hostCell = *objc_msgSend_containingCell(context, v13, v14, v15);
    v11->_preserveFlags = flags->_flags;
    v11->_isOutputOfAFunction = 0;
    v11->_permitsAccessInsideMergeRegions = 0;
    if (*d == 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEReferenceValue initWithContext:tableUID:relativeRangeCoord:preserveFlags:]", v18);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 144, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }

    v28 = objc_msgSend_calcEngine(context, v16, v17, v18);
    v31 = objc_msgSend_tableResolverForTableUID_(v28, v29, d, v30);

    if (v31)
    {
      v35 = *objc_msgSend_containingCell(context, v32, v33, v34);
      var0 = coord->var0;
      v49[0]._flags = flags->_flags & 3;
      v50 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v35, var0, v49, v37);
      v41 = *objc_msgSend_containingCell(context, v38, v39, v40);
      var1 = coord->var1;
      v48._flags = (flags->_flags >> 2) & 3;
      *&v49[0]._flags = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v41, var1, &v48, v43);
      v45 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v31, v44, &v50, v49, flags);
      v46 = v11->_evalRef;
      v11->_evalRef = v45;
    }
  }

  return v11;
}

- (TSCEReferenceValue)initWithContext:(id)context tableUID:(const TSKUIDStruct *)d relativeCellCoord:(const TSCERelativeCellCoordinate *)coord preserveFlags:(const TSUPreserveFlags *)flags
{
  v44.receiver = self;
  v44.super_class = TSCEReferenceValue;
  v10 = [(TSCEValue *)&v44 init];
  v11 = v10;
  if (v10)
  {
    evalRef = v10->_evalRef;
    v10->_evalRef = 0;

    v11->_hostCell = *objc_msgSend_containingCell(context, v13, v14, v15);
    v11->_preserveFlags = flags->_flags;
    v11->_isOutputOfAFunction = 0;
    v11->_permitsAccessInsideMergeRegions = 0;
    if (*d == 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEReferenceValue initWithContext:tableUID:relativeCellCoord:preserveFlags:]", v18);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 171, 0, "Invalid attempt to create a reference value with an invalid tableUID.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }

    v28 = objc_msgSend_calcEngine(context, v16, v17, v18);
    v31 = objc_msgSend_tableResolverForTableUID_(v28, v29, d, v30);

    if (v31)
    {
      v35 = *coord;
      flags = flags->_flags;
      v37 = *objc_msgSend_containingCell(context, v32, v33, v34);
      v43 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v37, (((flags & 1) << 56) | (((flags >> 1) & 1) << 48) | *&v35 & 0xFFFFFFFFFFFFLL), flags, v38);
      v40 = objc_msgSend_makeReferenceWithTopLeft_bottomRight_preserveFlags_(v31, v39, &v43, &v43, flags);
      v41 = v11->_evalRef;
      v11->_evalRef = v40;
    }
  }

  return v11;
}

- (TSCEReferenceValue)initWithEvalRef:(id)ref hostCell:(const TSUCellCoord *)cell preserveFlags:(const TSUPreserveFlags *)flags permitsAccessInsideMergeRegions:(BOOL)regions isOutputOfAFunction:(BOOL)function
{
  refCopy = ref;
  v17.receiver = self;
  v17.super_class = TSCEReferenceValue;
  v14 = [(TSCEValue *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_evalRef, ref);
    v15->_hostCell = *cell;
    v15->_preserveFlags = flags->_flags;
    v15->_isOutputOfAFunction = function;
    v15->_permitsAccessInsideMergeRegions = regions;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TSCEReferenceValue;
  v4 = [(TSCEValue *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 7, self->_evalRef);
  v4[8] = self->_hostCell;
  *(v4 + 72) = self->_preserveFlags._flags;
  *(v4 + 73) = self->_isOutputOfAFunction;
  *(v4 + 74) = self->_permitsAccessInsideMergeRegions;
  return v4;
}

- (char)deepType:(id)type outError:(id *)error
{
  if (!type)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue deepType:outError:]", error);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 243, 0, "TSCEReferenceType requires an EvaluationContext to perform deepType()");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v9 = 0;
LABEL_6:
    v8 = 9;
    goto LABEL_7;
  }

  v6 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, type, 0);
  v21 = 0;
  v8 = objc_msgSend_deepType_outError_(v6, v7, type, &v21);
  v9 = v21;

  if (v9)
  {
    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

- (id)referredToValue:(id)value fetchRichTextAttributesIfPlainText:(BOOL)text
{
  textCopy = text;
  hasCachedValue = objc_msgSend_hasCachedValue(self->_evalRef, a2, value, text);
  v11 = objc_msgSend_cachedValueWasFetchedWithRichTextAttributes(self->_evalRef, v8, v9, v10);
  if (!hasCachedValue || !(!textCopy | v11))
  {
    evalRef = self->_evalRef;
    if (!evalRef)
    {
      goto LABEL_25;
    }

    v16 = objc_msgSend_cachedValue(evalRef, v12, v13, v14);
    v20 = v16;
    if (!hasCachedValue)
    {
      goto LABEL_10;
    }

    if (objc_msgSend_nativeType(v16, v17, v18, v19) == 7)
    {
      if (v20)
      {
        objc_msgSend_rawRichTextStorage(v20, v17, v18, v19);
      }

      else
      {
        v38 = 0;
        v39 = 0uLL;
      }

      v21 = sub_221077388(&v38);

      if ((v21 & 1) == 0)
      {
LABEL_10:
        permitsAccessInsideMergeRegions = self->_permitsAccessInsideMergeRegions;
        v23 = objc_msgSend_inArrayMode(value, v17, v18, v19);
        if (textCopy)
        {
          v25 = 2;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25 | permitsAccessInsideMergeRegions;
        if (v23)
        {
          objc_msgSend_valueForEvalContext_readOptions_(self->_evalRef, v24, value, v26 | 4);
        }

        else
        {
          objc_msgSend_valueForEvalContext_readOptions_(self->_evalRef, v24, value, v26);
        }
        v27 = ;
        objc_msgSend_setCachedValue_(self->_evalRef, v28, v27, v29);

        objc_msgSend_setCachedValueWasFetchedWithRichTextAttributes_(self->_evalRef, v30, textCopy, v31);
      }
    }

    if (self->_isOutputOfAFunction)
    {
      v32 = self->_evalRef;
      if (v32)
      {
        objc_msgSend_rangeRef(v32, v17, v18, v19);
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      LOWORD(v38) = 1;
      v39 = v36;
      v40 = v37;
      v41 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      objc_msgSend_addCalculatedPrecedent_(value, v17, &v38, v19, v36, v37);
    }
  }

  v33 = self->_evalRef;
  if (v33)
  {
    v34 = objc_msgSend_cachedValue(v33, v12, v13, v14);
    goto LABEL_28;
  }

LABEL_25:
  if (qword_27CFB5640 != -1)
  {
    sub_2216F7ECC();
  }

  v34 = qword_27CFB5638;
LABEL_28:

  return v34;
}

- (id)intersectionWithHostCellRef:(TSCECellRef *)ref rangeContext:(unsigned __int8)context evaluationContext:(id)evaluationContext
{
  contextCopy = context;
  evaluationContextCopy = evaluationContext;
  v9 = self->_evalRef;
  if (v9)
  {
    v11 = v9;
    v12 = objc_msgSend_intersectionWithHostCellRef_rangeContext_evaluationContext_(v9, v10, ref, contextCopy, evaluationContextCopy);

    if (v12)
    {
      v16 = [TSCEReferenceValue alloc];
      v28[0] = ref->coordinate;
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v16, v17, v12, v28, &self->_preserveFlags, self->_permitsAccessInsideMergeRegions, self->_isOutputOfAFunction);
    }

    else
    {
      v28[0] = objc_msgSend_rangeCoord(0, v13, v14, v15);
      v28[1] = v22;
      v28[2] = objc_msgSend_tableUID(0, v22, v20, v21);
      v28[3] = v23;
      v12 = objc_msgSend_invalidRangeUsageErrorForReference_(TSCEError, v23, v28, v24);
      isOutputOfAFunction = objc_msgSend_errorValue_(TSCEErrorValue, v25, v12, v26);
    }

    selfCopy = isOutputOfAFunction;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (TSKUIDStruct)tableUID
{
  ResolverUID = objc_msgSend_getResolverUID(self->_evalRef, a2, v2, v3);
  result._upper = v5;
  result._lower = ResolverUID;
  return result;
}

- (TSCERangeCoordinate)range
{
  v4 = objc_msgSend_rangeCoord(self->_evalRef, a2, v2, v3);
  result._bottomRight = v5;
  result._topLeft = v4;
  return result;
}

- (TSCERangeRef)rangeRef
{
  v7 = objc_msgSend_range(self, a3, v3, v4);
  v9 = v8;
  v12 = objc_msgSend_tableUID(self, v8, v10, v11);
  retstr->range._topLeft = v7;
  retstr->range._bottomRight = v9;
  retstr->_tableUID._lower = v12;
  retstr->_tableUID._upper = v13;
  v17._flags = objc_msgSend_preserveFlags(self, v13, v14, v15);
  return TSCERangeRef::setPreserveFlags(retstr, &v17);
}

- (TSCEAnyRef)anyRef
{
  if (objc_msgSend_isRange(self, a3, v3, v4))
  {
    result = objc_msgSend_rangeRef(self, v7, v8, v9);
    retstr->_refType = 1;
  }

  else
  {
    v15.coordinate = objc_msgSend_range(self, v7, v8, v9);
    v15._tableUID._lower = objc_msgSend_tableUID(self, v11, v12, v13);
    v15._tableUID._upper = v14;
    retstr->_refType = 0;
    TSCERangeRef::TSCERangeRef(&retstr->_spanningRef.rangeRef, &v15);
  }

  retstr->_uuidValue._lower = 0;
  retstr->_uuidValue._upper = 0;
  *&retstr->_couldBeIntersection = 0;
  retstr->_spanningRef.rangeContext = 0;
  retstr->_refSet = 0;
  return result;
}

- (BOOL)isRange
{
  v4 = objc_msgSend_range(self, a2, v2, v3);
  v6 = v4 & 0xFFFF00000000;
  v7 = v5 & 0xFFFF00000000;
  if (v4 == 0x7FFFFFFFLL && v6 != 0x7FFF00000000 && v7 != 0x7FFF00000000)
  {
    return 1;
  }

  v11 = v5 == 0x7FFFFFFF || v7 != 0x7FFF00000000 || v6 != 0x7FFF00000000 || v4 == 0x7FFFFFFFLL;
  v8 = 1;
  if (v11)
  {
    v12 = ((v5 ^ v4) >> 56) & 1;
    if (((v5 ^ v4) & 0x1FFFF00000000) != 0)
    {
      LOBYTE(v12) = 1;
    }

    return v4 != v5 || v12;
  }

  return v8;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v19._lower = objc_msgSend_tableUID(self, a2, v2, v3);
  v19._upper = v6;
  v7 = TSKUIDStruct::description(&v19);
  v18._topLeft = objc_msgSend_range(self, v8, v9, v10);
  v18._bottomRight = v11;
  v12 = TSCERangeCoordinate::description(&v18);
  v15 = v12;
  if (self->_isOutputOfAFunction)
  {
    objc_msgSend_stringWithFormat_(v5, v13, @"%@::%@%@", v14, v7, v12, @" (_isOutputOfAFunction)");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v5, v13, @"%@::%@%@", v14, v7, v12, &stru_2834BADA0);
  }
  v16 = ;

  return v16;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue canonicalKeyStringForLocale:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 373, 0, "TSCEReferenceValue type does NOT support canonicalKeyString() - needs to be evaluated down to POD type first.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return @"<ref>";
}

- (TSCEFormat)format
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEReferenceValue format]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 378, 0, "TSCEReferenceValue type does NOT support format() - needs to be evaluated down to POD type first.");

  result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  retstr->_tskFormat = 0;
  retstr->_formatType = 0;
  retstr->_formatState = 0;
  *&retstr->_durationFormat = *&retstr->_durationFormat & 0xC080 | 0x421;
  *(&retstr->_durationFormat + 2) = *(&retstr->_durationFormat + 2) & 0xF8 | 1;
  *&retstr->_baseFormat.base = -50266102;
  retstr->_numberFormat.decimalPlaces = -3;
  *(&retstr->_numberFormat + 1) &= 0xE0u;
  retstr->_numberFormat.currencyCodeIndex = 0;
  return result;
}

- (TSCEFormat)formatWithContext:(SEL)context
{
  v6 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, context, a4, 0);
  v10 = v6;
  if (v6)
  {
    objc_msgSend_formatWithContext_(v6, v7, a4, v8);
  }

  else
  {
    *&retstr->_tskFormat = 0u;
    *&retstr->_durationFormat = 0u;
  }

  return result;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asNumber:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 390, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, number, 0);
  if (objc_msgSend_isNil(v20, v21, v22, v23))
  {
    objc_msgSend_unitlessZero(TSCENumberValue, v24, v25, v26);
  }

  else
  {
    objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v24, number, spec, v7, error);
  }
  v27 = ;

  return v27;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asDate:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 404, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, date, 0);
  v22 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v20, v21, date, spec, v7, error);

  return v22;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 414, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, string, 0);
  v22 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v20, v21, string, spec, v7, error);

  return v22;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asRawString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 424, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, string, 0);
  v22 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v20, v21, string, spec, v7, error);

  return v22;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], storage, "[TSCEReferenceValue asRichTextStorage:functionSpec:argumentIndex:outError:]", index);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v24, v16, 434, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, storage, spec, 1);
  v25 = v21;
  if (v21)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v21, v22, spec, index, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 444, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, boolean, 0);
  if (objc_msgSend_isNil(v20, v21, v22, v23))
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v20, v24, boolean, spec, v7, error);
  }

  return v25;
}

- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asStrictBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 458, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, boolean, 0);
  if (objc_msgSend_isNil(v20, v21, v22, v23))
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_asStrictBoolean_functionSpec_argumentIndex_outError_(v20, v24, boolean, spec, v7, error);
  }

  return v25;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  formatCopy = format;
  v9 = *&index;
  if (!error)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", spec);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 473, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_argumentSpecForIndex_(spec, a2, v9, spec);
  if (v22)
  {
    v26 = objc_msgSend_rangeContext(v22, v23, v24, v25);
  }

  else
  {
    v26 = 0;
  }

  if (objc_msgSend_hasCachedValue(self->_evalRef, v23, v24, v25) && objc_msgSend_cachedValueWasFetchedWithRichTextAttributes(self->_evalRef, v27, v28, v29))
  {
    v33 = objc_msgSend_cachedValue(self->_evalRef, v30, v31, v32);
    if (objc_msgSend_nativeType(v33, v34, v35, v36) == 16)
    {
      if (v26 == 1)
      {
        v40 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v33, v37, grid, spec, v9, formatCopy, error);
      }

      else
      {
        v73 = objc_msgSend_asValueGridValue(v33, v37, v38, v39);
        v57 = objc_msgSend_tableUID(self, v54, v55, v56);
        v71 = v58;
        v72 = v57;
        v61 = objc_msgSend_topLeft(self->_evalRef, v58, v59, v60);
        v65 = objc_msgSend_topLeft(self->_evalRef, v62, v63, v64);
        v68 = (v61 & 0xFFFF00000000) == 0x7FFF00000000 && v61 != 0x7FFFFFFF;
        if (v65 != 0x7FFFFFFF || (v65 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          objc_msgSend_apparentGridForRangeContext_tableUID_context_spansAllColumns_spansAllRows_(v73, v66, v26, v72, v71, grid, v68, 0);
        }

        else
        {
          objc_msgSend_apparentGridForRangeContext_tableUID_context_spansAllColumns_spansAllRows_(v73, v66, v26, v72, v71, grid, v68, 1);
        }

        v40 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v73, v70, grid, spec, v9, formatCopy, error);
      }

      goto LABEL_19;
    }
  }

  v75[0] = grid;
  v75[1] = spec;
  v76 = 0;
  v77 = v9;
  v78[0] = 0;
  *(v78 + 3) = 0;
  v79 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v80 = 0;
  v81 = 0;
  v41 = [TSCEReferenceBackedGrid alloc];
  inited = objc_msgSend_initWitRefValue_rangeContext_(v41, v42, self, v26);
  v47 = objc_msgSend_permitsAccessInsideMergeRegions(self, v44, v45, v46);
  objc_msgSend_setPermitsAccessInsideMergeRegions_(inited, v48, v47, v49);
  if (formatCopy)
  {
    if (inited)
    {
      objc_msgSend_preferredFormatOptions_(inited, v50, v75, v51);
    }

    else
    {
      memset(v74, 0, sizeof(v74));
    }

    v52 = objc_msgSend_gridValue_format_(TSCEGridValue, v50, inited, v74);
  }

  else
  {
    v52 = objc_msgSend_gridValue_(TSCEGridValue, v50, inited, v51);
  }

  v40 = v52;

LABEL_19:

  return v40;
}

- (id)asReference:(id)reference functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEReferenceValue asReference:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 515, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  return self;
}

- (id)errorWithContext:(id)context
{
  v4 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(self, a2, context, 0);
  v7 = objc_msgSend_errorWithContext_(v4, v5, context, v6);

  return v7;
}

@end