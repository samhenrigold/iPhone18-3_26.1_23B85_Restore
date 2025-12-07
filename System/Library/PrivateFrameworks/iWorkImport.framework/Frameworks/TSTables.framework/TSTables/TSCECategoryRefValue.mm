@interface TSCECategoryRefValue
+ (id)categoryRefValue:(id)value;
+ (id)emptyCategoryRefValue;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCECategoryRefValue)init;
- (TSCECategoryRefValue)initWithCategoryRef:(id)ref;
- (TSCECategoryRefValue)initWithCategoryRef:(id)ref format:(const TSCEFormat *)format;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (char)deepType:(id)type outError:(id *)error;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)referredToValue:(id)value;
@end

@implementation TSCECategoryRefValue

+ (id)emptyCategoryRefValue
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)categoryRefValue:(id)value
{
  valueCopy = value;
  v4 = [TSCECategoryRefValue alloc];
  v7 = objc_msgSend_initWithCategoryRef_(v4, v5, valueCopy, v6);

  return v7;
}

- (TSCECategoryRefValue)init
{
  v8 = 0;
  v9 = 0;
  v10 = 1057;
  v11 = 1;
  v12 = -50266102;
  v13 = 253;
  v6.receiver = self;
  v6.super_class = TSCECategoryRefValue;
  v7 = 0;
  v2 = [(TSCEValue *)&v6 initWithTSCEFormat:&v7];
  v3 = v2;
  if (v2)
  {
    categoryRef = v2->_categoryRef;
    v2->_categoryRef = 0;
  }

  return v3;
}

- (TSCECategoryRefValue)initWithCategoryRef:(id)ref
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithCategoryRef_format_(self, a2, ref, &v4);
}

- (TSCECategoryRefValue)initWithCategoryRef:(id)ref format:(const TSCEFormat *)format
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TSCECategoryRefValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_categoryRef, ref);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCECategoryRefValue;
  v4 = [(TSCEValue *)&v11 copyWithZone:zone];
  v8 = objc_msgSend_copy(self->_categoryRef, v5, v6, v7);
  v9 = v4[7];
  v4[7] = v8;

  return v4;
}

- (char)deepType:(id)type outError:(id *)error
{
  v6 = objc_msgSend_referredToValue_(self, a2, type, error);
  v12 = 0;
  v8 = objc_msgSend_deepType_outError_(v6, v7, type, &v12);
  v9 = v12;

  if (v9)
  {
    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    v8 = 9;
  }

  return v8;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asNumber:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 88, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, number, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 14)
  {
    objc_msgSend_zero(TSCENumberValue, v24, v25, v26);
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asDate:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 103, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, date, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 14)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSCECategoryRefValue asDate:functionSpec:argumentIndex:outError:]", v25);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 112, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    v35 = 0;
  }

  else
  {
    v35 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v20, v24, date, spec, v7, error);
  }

  return v35;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 120, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, string, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 14)
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v20, v24, string, spec, v7, error);
  }

  return v25;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asRawString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 136, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, string, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 14)
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v20, v24, string, spec, v7, error);
  }

  return v25;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 152, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, boolean, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 14)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSCECategoryRefValue asBoolean:functionSpec:argumentIndex:outError:]", v25);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 161, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    v35 = 0;
  }

  else
  {
    v35 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v20, v24, boolean, spec, v7, error);
  }

  return v35;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], storage, "[TSCECategoryRefValue asRichTextStorage:functionSpec:argumentIndex:outError:]", index);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 169, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  indexCopy = index;
  v23 = objc_msgSend_referredToValue_(self, storage, spec, index);
  if (objc_msgSend_nativeType(v23, v24, v25, v26) == 14)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCECategoryRefValue asRichTextStorage:functionSpec:argumentIndex:outError:]", v28);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 178, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
    v39.receiver = self;
    v39.super_class = TSCECategoryRefValue;
    [(TSCERichTextStorage *)&v39 asRichTextStorage:spec functionSpec:indexCopy argumentIndex:v8 outError:a7];
  }

  else if (v23)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v23, v27, spec, index, v8, a7);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
  }

  return result;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  formatCopy = format;
  v9 = *&index;
  if (!error)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECategoryRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", spec);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 187, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, grid, spec);
  if (objc_msgSend_nativeType(v22, v23, v24, v25) == 14)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSCECategoryRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", v27);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECategoryRefValue.mm", v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 196, 0, "Error: couldn't resolve TSCECategoryRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    v40.receiver = self;
    v40.super_class = TSCECategoryRefValue;
    v37 = [(TSCEValue *)&v40 asGrid:grid functionSpec:spec argumentIndex:v9 applyPreferredFormat:formatCopy outError:error];
  }

  else
  {
    v37 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v26, grid, spec, v9, formatCopy, error);
  }

  v38 = v37;

  return v38;
}

- (id)referredToValue:(id)value
{
  v35 = 0;
  v36 = 0;
  v6 = objc_msgSend_relativeGroupUid(self->_categoryRef, a2, value, v3);
  if (v6 | v7)
  {
    v35 = objc_msgSend_containingRowUid(value, v7, v8, v9);
    v36 = v7;
  }

  v10 = objc_msgSend_calcEngine(value, v7, v8, v9);
  categoryRef = self->_categoryRef;
  v15 = objc_msgSend_hidingActionMask(value, v12, v13, v14);
  v31 = 0;
  if (v10)
  {
    objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_error_(v10, v16, categoryRef, &v35, v15, &v31);
    v19 = v31;

    if (v19)
    {
      v20 = objc_msgSend_errorValue_(TSCEErrorValue, v16, v19, v18);

      goto LABEL_14;
    }

    v21 = v32;
    v22 = v33;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  v23 = (v22 - v21) >> 3;
  if (!v23)
  {
    v24 = objc_msgSend_nilValue(TSCENilValue, v16, v17, v18);
    goto LABEL_12;
  }

  if (v23 == 1)
  {
    v24 = *v21;
LABEL_12:
    v20 = v24;
    goto LABEL_14;
  }

  v25 = [TSCEDenseGrid alloc];
  v27 = objc_msgSend_initWithValues_gridKind_(v25, v26, &v32, 1);
  v20 = objc_msgSend_gridValue_(TSCEGridValue, v28, v27, v29);

LABEL_14:
  v37 = &v32;
  sub_22107C2C0(&v37);

  return v20;
}

@end