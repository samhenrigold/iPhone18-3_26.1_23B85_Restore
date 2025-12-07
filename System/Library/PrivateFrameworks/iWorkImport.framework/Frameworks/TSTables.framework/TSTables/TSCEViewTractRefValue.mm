@interface TSCEViewTractRefValue
+ (id)viewTractRefValue:(id)value;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCEViewTractRefValue)init;
- (TSCEViewTractRefValue)initWithViewTractRef:(id)ref;
- (TSCEViewTractRefValue)initWithViewTractRef:(id)ref format:(const TSCEFormat *)format;
- (char)deepType:(id)type outError:(id *)error;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)referredToValue:(id)value;
@end

@implementation TSCEViewTractRefValue

+ (id)viewTractRefValue:(id)value
{
  valueCopy = value;
  v4 = [TSCEViewTractRefValue alloc];
  v7 = objc_msgSend_initWithViewTractRef_(v4, v5, valueCopy, v6);

  return v7;
}

- (TSCEViewTractRefValue)init
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 1057;
  v7 = 1;
  v8 = -50266102;
  v9 = 253;
  return objc_msgSend_initWithViewTractRef_format_(self, a2, 0, &v3);
}

- (TSCEViewTractRefValue)initWithViewTractRef:(id)ref
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithViewTractRef_format_(self, a2, ref, &v4);
}

- (TSCEViewTractRefValue)initWithViewTractRef:(id)ref format:(const TSCEFormat *)format
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = TSCEViewTractRefValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewTractRef, ref);
  }

  return v9;
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asNumber:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 75, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, number, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 17)
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asDate:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 90, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, date, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 17)
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v20, v24, date, spec, v7, error);
  }

  return v25;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 105, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, string, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 17)
  {
    v28.receiver = self;
    v28.super_class = TSCEViewTractRefValue;
    v25 = [(TSCEValue *)&v28 asString:string functionSpec:spec argumentIndex:v7 outError:error];
  }

  else
  {
    v25 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v20, v24, string, spec, v7, error);
  }

  v26 = v25;

  return v26;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asRawString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 121, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, string, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 17)
  {
    v28.receiver = self;
    v28.super_class = TSCEViewTractRefValue;
    v25 = [(TSCEValue *)&v28 asRawString:string functionSpec:spec argumentIndex:v7 outError:error];
  }

  else
  {
    v25 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v20, v24, string, spec, v7, error);
  }

  v26 = v25;

  return v26;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], storage, "[TSCEViewTractRefValue asRichTextStorage:functionSpec:argumentIndex:outError:]", index);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 137, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, storage, spec, index);
  if (objc_msgSend_nativeType(v22, v23, v24, v25) == 17)
  {
    v28.receiver = self;
    v28.super_class = TSCEViewTractRefValue;
    [(TSCERichTextStorage *)&v28 asRichTextStorage:spec functionSpec:index argumentIndex:v8 outError:a7];
  }

  else if (v22)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v22, v26, spec, index, v8, a7);
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
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 153, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_referredToValue_(self, a2, boolean, spec);
  if (objc_msgSend_nativeType(v20, v21, v22, v23) == 17)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSCEViewTractRefValue asBoolean:functionSpec:argumentIndex:outError:]", v25);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 162, 0, "Error: couldn't resolve TSCEViewTractRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    v35 = 0;
  }

  else
  {
    v35 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v20, v24, boolean, spec, v7, error);
  }

  return v35;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  formatCopy = format;
  v9 = *&index;
  if (!error)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEViewTractRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", spec);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 171, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_referredToValue_(self, a2, grid, spec);
  if (objc_msgSend_nativeType(v22, v23, v24, v25) == 17)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSCEViewTractRefValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", v27);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEViewTractRefValue.mm", v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 180, 0, "Error: couldn't resolve TSCEViewTractRefValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    v40.receiver = self;
    v40.super_class = TSCEViewTractRefValue;
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
  v32 = objc_msgSend_tableUID(self->_viewTractRef, a2, value, v3);
  v33 = v6;
  v9 = objc_msgSend_calcEngine(value, v6, v7, v8);
  v12 = objc_msgSend_tableResolverForTableUID_(v9, v10, &v32, v11);

  if (v12)
  {
    viewTractRef = self->_viewTractRef;
    v17 = objc_msgSend_hidingActionMask(value, v13, v14, v15);
    v31 = 0;
    v21 = objc_msgSend_isForChartFormulas(value, v18, v19, v20);
    v23 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(v12, v22, viewTractRef, v17, &v31, 0, v21 ^ 1u);
    v24 = v31;
    if (v24)
    {
      v28 = v24;
      objc_msgSend_errorValue_(TSCEErrorValue, v25, v24, v27);
      v29 = LABEL_6:;

LABEL_7:
      goto LABEL_11;
    }

    if (v23)
    {
      v29 = objc_msgSend_valueGridValue_(TSCEValueGridValue, v25, v23, v27);
      v28 = v23;
      goto LABEL_7;
    }
  }

  else
  {
    v28 = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v13, v32, v33);
    if (v28)
    {
      v23 = 0;
      objc_msgSend_errorValue_(TSCEErrorValue, v25, v28, v27);
      goto LABEL_6;
    }
  }

  v29 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27);
LABEL_11:

  return v29;
}

@end