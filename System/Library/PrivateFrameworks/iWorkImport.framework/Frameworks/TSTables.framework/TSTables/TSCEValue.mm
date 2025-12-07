@interface TSCEValue
+ (BOOL)valuesAreEqualLeft:(id)left right:(id)right context:(id)context outError:(id *)error;
+ (int64_t)compareValuesForLookupLeft:(id)left right:(id)right context:(id)context outError:(id *)error;
+ (int64_t)compareValuesLeft:(id)left right:(id)right context:(id)context outError:(id *)error;
+ (int64_t)compareValuesWithContextLeft:(id)left right:(id)right context:(id)context functionSpec:(id)spec outError:(id *)error;
- (BOOL)BOOLean;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (BOOL)asBoolean:(id)boolean outError:(id *)error;
- (BOOL)isNativelyEqual:(id)equal;
- (BOOL)isTokenOrEmptyArg;
- (BOOL)valueHasError:(int)error context:(id)context outError:(id *)outError;
- (BOOL)valueIsEmptyWithContext:(id)context;
- (TSCERichTextStorage)asRawRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCERichTextStorage)rawRichTextStorage;
- (TSCEValue)init;
- (TSCEValue)initWithTSCEFormat:(const TSCEFormat *)format;
- (TSCEValue)initWithTSKFormat:(id)format;
- (TSKFormat)tskFormat;
- (char)nativeType;
- (double)coercedDouble;
- (id).cxx_construct;
- (id)asCategoryRef;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asDate:(id)date outError:(id *)error;
- (id)asFunctorValue:(id)value functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error;
- (id)asGridValue;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asReference:(id)reference functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string outError:(id *)error;
- (id)asStringWithLocale:(id)locale;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)coercedDate;
- (id)coercedErrorWithContext:(id)context;
- (id)coercedStringWithContext:(id)context;
- (id)coercedStringWithLocale:(id)locale;
- (id)convertArrayToText:(id)text maximumStringLength:(unint64_t)length formatMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)date;
- (id)deepResolveInPlace:(id)place;
- (id)description;
- (id)evaluateThunk:(id)thunk;
- (id)maxValue:(id)value locale:(id)locale;
- (id)minValue:(id)value locale:(id)locale;
- (id)number;
- (id)referenceValue;
- (id)reorganizeValueForSorting:(id)sorting;
- (id)resolveToSingleValueOrError:(id)error;
- (unint64_t)hash;
- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)array;
- (void)attachWarning:(id)warning;
- (void)attachWarnings:(id)warnings;
- (void)setTskFormat:(id)format;
@end

@implementation TSCEValue

- (TSCEValue)init
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithTSCEFormat_(self, a2, &v4, v2);
}

- (TSCEValue)initWithTSKFormat:(id)format
{
  formatCopy = format;
  if (formatCopy)
  {
    TSCEFormat::TSCEFormat(&v13, formatCopy, 0);
    v10 = objc_msgSend_initWithTSCEFormat_(self, v8, &v13, v9);
  }

  else
  {
    v10 = objc_msgSend_init(self, v4, v5, v6);
  }

  v11 = v10;

  return v11;
}

- (TSCEValue)initWithTSCEFormat:(const TSCEFormat *)format
{
  TSCEFormat::operator=(&self->_format, format);
  warnings = self->_warnings;
  self->_warnings = 0;

  self->_rangeContextOverride = 3;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithTSCEFormat_(v4, v5, &self->_format, v6);
  v11 = objc_msgSend_mutableCopy(self->_warnings, v8, v9, v10);
  v12 = *(v7 + 40);
  *(v7 + 40) = v11;

  *(v7 + 48) = self->_rangeContextOverride;
  return v7;
}

- (TSKFormat)tskFormat
{
  objc_msgSend_format(self, a2, v2, v3);
  v7 = TSCEFormat::tskFormat(&v9, v4, v5, v6);

  return v7;
}

- (void)setTskFormat:(id)format
{
  formatCopy = format;
  TSCEFormat::TSCEFormat(&v7, formatCopy, 0);
  TSCEFormat::TSCEFormat(&v8, &v7);
  objc_msgSend_setFormat_(self, v5, &v8, v6);
}

- (char)nativeType
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue nativeType]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 93, 0, "Subclasses must override nativeType");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asNumber:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 121, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, number, spec, v7);

  return objc_msgSend_zero(TSCENumberValue, v20, v21, v22);
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asDate:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 131, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, date, spec, v7);
  return 0;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 140, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, string, spec, v7);
  return 0;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asRawString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 149, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, string, spec, v7);
  return 0;
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v8 = *&error;
  if (!a7)
  {
    v13 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], storage, "[TSCEValue asRichTextStorage:functionSpec:argumentIndex:outError:]", index);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v22, v16, 158, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v23 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(self, storage, spec, index, v8, a7);
  sub_221077074(retstr, v23);

  return result;
}

- (TSCERichTextStorage)asRawRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  v9 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(self, storage, spec, index, *&error, a7);
  sub_221077074(retstr, v9);

  return result;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 178, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, boolean, spec, v7);
  return 0;
}

- (id)asGrid:(id)grid functionSpec:(id)spec argumentIndex:(int)index applyPreferredFormat:(BOOL)format outError:(id *)error
{
  selfCopy = self;
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asGrid:functionSpec:argumentIndex:applyPreferredFormat:outError:]", spec, *&index, format);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 196, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  memset(v22, 0, sizeof(v22));
  sub_221179A54(v22, &selfCopy);
  v16 = [TSCEDenseGrid alloc];
  v18 = objc_msgSend_initWithValues_gridKind_(v16, v17, v22, 1);
  v20 = objc_msgSend_gridValue_format_(TSCEGridValue, v19, v18, &selfCopy->_format);

  v24 = v22;
  sub_22107C2C0(&v24);

  return v20;
}

- (id)asReference:(id)reference functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asReference:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 210, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, a2, self, reference, spec, v7);

  return objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v20, v21, v22);
}

- (id)asFunctorValue:(id)value functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asFunctorValue:functionSpec:argumentIndex:outError:]", spec);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 223, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_functionName(spec, a2, value, spec);
  *error = objc_msgSend_requiresLambdaArgumentError_argIndex_(TSCEError, v19, v18, (index + 1));

  TSCEFunctor::TSCEFunctor(&v24);
  v22 = objc_msgSend_functorValue_(TSCEFunctorValue, v20, &v24, v21);

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue description]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 233, 0, "subclasses should override TSCEValue -description");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue canonicalKeyStringForLocale:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v7);
  v9 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v8, 246, 0, "type %@ does NOT support -canonicalKeyString", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue hash]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 256, 0, "subclasses must override TSCEValue::hash()");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  return 0;
}

- (void)attachWarning:(id)warning
{
  warningCopy = warning;
  if (warningCopy)
  {
    warnings = self->_warnings;
    if (!warnings)
    {
      v7 = objc_opt_new();
      v8 = self->_warnings;
      self->_warnings = v7;

      warnings = self->_warnings;
    }

    objc_msgSend_addObject_(warnings, v4, warningCopy, v5);
  }
}

- (void)attachWarnings:(id)warnings
{
  v18 = *MEMORY[0x277D85DE8];
  warningsCopy = warnings;
  v5 = warningsCopy;
  if (warningsCopy && self->_warnings != warningsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = warningsCopy;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v13, v17, 16);
    if (v10)
    {
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v6);
          }

          objc_msgSend_attachWarning_(self, v8, *(*(&v13 + 1) + 8 * v12++), v9, v13);
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v13, v17, 16);
      }

      while (v10);
    }
  }
}

- (BOOL)isTokenOrEmptyArg
{
  if (objc_msgSend_isToken(self, a2, v2, v3))
  {
    return 1;
  }

  return objc_msgSend_isEmptyArg(self, v5, v6, v7);
}

- (id)deepResolveInPlace:(id)place
{
  selfCopy = self;
  v11 = objc_msgSend_nativeType(selfCopy, v5, v6, v7);
  if (v11 > 0xD)
  {
    if (v11 > 16)
    {
      if (v11 != 17 && v11 != 19)
      {
        goto LABEL_13;
      }
    }

    else if (v11 != 14)
    {
      if (v11 == 16)
      {
        v12 = objc_msgSend_valueGrid(selfCopy, v8, v9, v10);
        objc_msgSend_deepResolveInPlace_(v12, v13, place, v14);
      }

      goto LABEL_13;
    }

    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEValue deepResolveInPlace:]", v10);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 332, 0, "Needs deepResolveInPlace, but not implemented.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
LABEL_13:
    v28 = selfCopy;
    selfCopy = v28;
LABEL_14:
    v18 = v28;
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    v28 = objc_msgSend_deepResolveInPlace_(selfCopy, v8, place, v10);
    goto LABEL_14;
  }

  if (v11 != 6)
  {
    if (v11 == 13)
    {
      v15 = objc_msgSend_unwrapThunk_(place, v8, selfCopy, v10);

      v18 = objc_msgSend_deepResolveInPlace_(v15, v16, place, v17);
      selfCopy = v15;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v30 = selfCopy;
  selfCopy = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v30, v31, place, 1);

  v18 = objc_msgSend_deepResolveInPlace_(selfCopy, v32, place, v33);

LABEL_15:

  return v18;
}

- (id)resolveToSingleValueOrError:(id)error
{
  selfCopy = self;
  v11 = objc_msgSend_nativeType(selfCopy, v5, v6, v7);
  if (v11 > 0xD)
  {
    switch(v11)
    {
      case 0xEu:
        goto LABEL_9;
      case 0x10u:
        v66 = objc_msgSend_valueGrid(selfCopy, v8, v9, v10);
        v70 = objc_msgSend_dimensions(v66, v67, v68, v69);
        if (HIDWORD(v70) * v70 != 1)
        {
          v86 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v71, v72, v73);
          v89 = objc_msgSend_errorValue_(TSCEErrorValue, v87, v86, v88);
LABEL_30:
          errorCopy = v89;

          goto LABEL_31;
        }

        v74 = objc_msgSend_firstValue(v66, v71, v72, v73);
        v77 = objc_msgSend_resolveToSingleValueOrError_(v74, v75, error, v76);

        selfCopy = v77;
        v19 = objc_msgSend_nativeType(v77, v78, v79, v80);
        goto LABEL_24;
      case 0x11u:
LABEL_9:
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEValue resolveToSingleValueOrError:]", v10);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 402, 0, "Needs resolveToSingleValueOrError, but not implemented.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
        break;
    }

LABEL_23:
    v19 = objc_msgSend_nativeType(selfCopy, v8, v9, v10);
    goto LABEL_24;
  }

  if (v11 != 1)
  {
    if (v11 == 6)
    {
      errorCopy = error;
      v105._decimal.w[0] = errorCopy;
      v105._decimal.w[1] = 0;
      v106 = 0;
      v107[0] = 0xFFFFFFFFLL;
      *(v107 + 7) = 0;
      v108 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v109 = 0;
      v110 = 0;
      v104 = 0;
      v47 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(selfCopy, v46, errorCopy, 0, 0, 0, &v104);
      v48 = v104;
      v52 = objc_msgSend_dimensions(v47, v49, v50, v51);
      v56 = (HIDWORD(v52) * v52);
      if (v56 == 1)
      {
        v57 = objc_msgSend_valueAtIndex_accessContext_(v47, v53, 0, &v105);
        if (objc_msgSend_isReferenceValue(v57, v58, v59, v60))
        {
          v64 = objc_msgSend_asReferenceValue(v57, v61, v62, v63);
          errorCopy = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v64, v65, errorCopy, 0);

          selfCopy = errorCopy;
        }

        else
        {
          v64 = selfCopy;
          selfCopy = v57;
        }
      }

      else
      {
        v57 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v53, v54, v55);
        errorCopy = objc_msgSend_errorValue_(TSCEErrorValue, v84, v57, v85);
      }

      if (v56 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v11 == 13)
    {
      v12 = objc_msgSend_unwrapThunk_(error, v8, selfCopy, v10);
      v15 = objc_msgSend_resolveToSingleValueOrError_(v12, v13, error, v14);

      selfCopy = v15;
      v19 = objc_msgSend_nativeType(v15, v16, v17, v18);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  selfCopy = selfCopy;
  if (objc_msgSend_count(selfCopy, v30, v31, v32) != 1)
  {
    v81 = objc_msgSend_nestedArrayResultSpillError(TSCEError, v33, v34, v35);
    errorCopy = objc_msgSend_errorValue_(TSCEErrorValue, v82, v81, v83);

    goto LABEL_33;
  }

  errorCopy2 = error;
  v105._decimal.w[0] = errorCopy2;
  v105._decimal.w[1] = 0;
  v106 = 0;
  v107[0] = 0xFFFFFFFFLL;
  *(v107 + 7) = 0;
  v108 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v109 = 0;
  v110 = 0;
  v38 = objc_msgSend_valueAtGridCoord_accessContext_(selfCopy, v37, 0, &v105);
  v41 = objc_msgSend_resolveToSingleValueOrError_(v38, v39, errorCopy2, v40);

  selfCopy = v41;
  v19 = objc_msgSend_nativeType(v41, v42, v43, v44);
LABEL_24:
  if (v19 == 5)
  {
    v103 = 0;
    v90 = objc_msgSend_asNumber_outError_(selfCopy, v20, error, &v103);
    v66 = v103;
    v105._decimal.w[0] = objc_msgSend_decimalRepresentation(v90, v91, v92, v93);
    v105._decimal.w[1] = v94;

    if (v66)
    {
      errorCopy = objc_msgSend_errorValue_(TSCEErrorValue, v95, v66, v96);
LABEL_31:

      goto LABEL_33;
    }

    if ((TSUDecimal::isNaN(&v105) & 1) != 0 || TSUDecimal::isInf(&v105))
    {
      v86 = objc_msgSend_numberError(TSCEError, v97, v98, v99);
      v89 = objc_msgSend_errorValue_(TSCEErrorValue, v100, v86, v101);
      goto LABEL_30;
    }
  }

  selfCopy = selfCopy;
  errorCopy = selfCopy;
LABEL_33:

  return errorCopy;
}

- (id)asNumber:(id)number outError:(id *)error
{
  v14 = 0;
  v5 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(self, a2, number, 0, 0xFFFFFFFFLL, &v14);
  v6 = v14;
  v10 = v6;
  if (v6)
  {
    if (error)
    {
      v11 = v6;
      *error = v10;
    }

    v12 = objc_msgSend_zero(TSCENumberValue, v7, v8, v9);

    v5 = v12;
  }

  return v5;
}

- (id)asDate:(id)date outError:(id *)error
{
  v10 = 0;
  v5 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(self, a2, date, 0, 0xFFFFFFFFLL, &v10);
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    if (error)
    {
      v8 = v6;
      *error = v7;
    }

    v5 = 0;
  }

  return v5;
}

- (id)asString:(id)string outError:(id *)error
{
  v10 = 0;
  v5 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(self, a2, string, 0, 0xFFFFFFFFLL, &v10);
  v6 = v10;
  v7 = v6;
  if (v6)
  {
    if (error)
    {
      v8 = v6;
      *error = v7;
    }

    v5 = 0;
  }

  return v5;
}

- (id)asString:(id)string
{
  v5 = 0;
  v3 = objc_msgSend_asString_outError_(self, a2, string, &v5);

  return v3;
}

- (BOOL)asBoolean:(id)boolean outError:(id *)error
{
  v8 = 0;
  v5 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(self, a2, boolean, 0, 0xFFFFFFFFLL, &v8);
  v6 = v8;
  if (v6)
  {
    if (error)
    {
      v6 = v6;
      v5 = 0;
      *error = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)number
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3);

  return objc_msgSend_asNumberWithLocale_(self, v5, v6, v7);
}

- (id)date
{
  v6 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3);

  return objc_msgSend_asDateWithLocale_(self, v5, v6, v7);
}

- (id)asStringWithLocale:(id)locale
{
  v4 = objc_msgSend_nativeType(self, a2, locale, v3);
  if (v4 == 10 || v4 == 0)
  {
    return &stru_2834BADA0;
  }

  else
  {
    return 0;
  }
}

- (TSCERichTextStorage)rawRichTextStorage
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  *(&retstr->var1 + 7) = 0;
  return self;
}

- (BOOL)BOOLean
{
  v5 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3);
  LOBYTE(self) = objc_msgSend_asBooleanWithLocale_(self, v6, v5, v7);

  return self;
}

- (id)asGridValue
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asGridValue]", v2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v7);
  v12 = objc_msgSend_nativeType(self, v9, v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v5, v8, 547, 0, "This TSCEValue was not of type GridValue, its type %d", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  return 0;
}

- (id)asCategoryRef
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue asCategoryRef]", v2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v7);
  v12 = objc_msgSend_nativeType(self, v9, v10, v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v5, v8, 552, 0, "This TSCEValue was not of type CategoryRef, its type %d", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  return 0;
}

- (id)referenceValue
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue referenceValue]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 593, 0, "Using referenceValue() on the wrong type - not a native reference, upgrade to asReferenceValue()");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);

  return objc_msgSend_emptyReferenceValue(TSCEReferenceValue, v12, v13, v14);
}

- (double)coercedDouble
{
  v15 = 0;
  v3 = objc_msgSend_deepType_outError_(self, a2, 0, &v15);
  v7 = v15;
  v8 = 0.0;
  if (v3 == 5)
  {
    v9 = objc_msgSend_number(self, v4, v5, v6);
    objc_msgSend_rawDoubleValue(v9, v10, v11, v12);
    v8 = v13;
  }

  return v8;
}

- (id)coercedDate
{
  v10 = 0;
  v3 = objc_msgSend_deepType_outError_(self, a2, 0, &v10);
  v7 = v10;
  if (v3 == 3)
  {
    v8 = objc_msgSend_date(self, v4, v5, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)coercedStringWithContext:(id)context
{
  if (context)
  {
    v23 = 0;
    v6 = objc_msgSend_deepType_outError_(self, a2, context, &v23);
    v7 = v23;
    v9 = v7;
    if (v6 == 9)
    {
      v10 = &stru_2834BADA0;
    }

    else
    {
      v22 = v7;
      v10 = objc_msgSend_asString_outError_(self, v8, context, &v22);
      v20 = v22;

      if (v20)
      {

        v10 = &stru_2834BADA0;
        v9 = v20;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValue coercedStringWithContext:]", v3);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 698, 0, "A context is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v10 = &stru_2834BADA0;
  }

  return v10;
}

- (id)coercedStringWithLocale:(id)locale
{
  v11 = 0;
  v5 = objc_msgSend_deepType_outError_(self, a2, 0, &v11);
  v8 = v11;
  if (v5 == 9)
  {
    v9 = &stru_2834BADA0;
  }

  else
  {
    v9 = objc_msgSend_asStringWithLocale_(self, v6, locale, v7);
  }

  return v9;
}

- (id)coercedErrorWithContext:(id)context
{
  v11 = 0;
  v5 = objc_msgSend_deepType_outError_(self, a2, context, &v11);
  v8 = v11;
  if (v5 == 9)
  {
    v9 = objc_msgSend_errorWithContext_(self, v6, context, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)evaluateThunk:(id)thunk
{
  v5 = objc_msgSend_nilValue(TSCENilValue, a2, thunk, v3);
  v6 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEValue evaluateThunk:]", v8);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v9, v12, 733, 0, "evaluateThunk: called on non-thunk");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v20 = objc_msgSend_warnings(self, v17, v18, v19);
  objc_msgSend_attachWarnings_(v5, v21, v20, v22);

  return v5;
}

- (BOOL)isNativelyEqual:(id)equal
{
  equalCopy = equal;
  v8 = objc_msgSend_nativeType(self, v5, v6, v7);
  if (v8 != objc_msgSend_nativeType(equalCopy, v9, v10, v11))
  {
    goto LABEL_16;
  }

  v18 = objc_msgSend_nativeType(self, v12, v13, v14);
  LOBYTE(v19) = 1;
  if (v18 > 4)
  {
    if (v18 == 5)
    {
      v20 = objc_msgSend_asNumberValue(self, v15, v16, v17);
      v24 = objc_msgSend_asNumberValue(equalCopy, v49, v50, v51);
      hasUnits = objc_msgSend_hasUnits(v20, v52, v53, v54);
      if (hasUnits == objc_msgSend_hasUnits(v24, v56, v57, v58) && (!objc_msgSend_hasUnits(v20, v59, v60, v61) || (v104 = objc_msgSend_unit(v20, v101, v102, v103), v104 == objc_msgSend_unit(v24, v105, v106, v107))))
      {
        objc_msgSend_decimalRepresentation(v20, v101, v102, v103);
        objc_msgSend_decimalRepresentation(v24, v108, v109, v110);
        LOBYTE(v19) = TSUDecimal::operator==();
      }

      else
      {
        LOBYTE(v19) = 0;
      }

      goto LABEL_19;
    }

    if (v18 == 7)
    {
      isRichTextValue = objc_msgSend_isRichTextValue(self, v15, v16, v17);
      if (((isRichTextValue | objc_msgSend_isRichTextValue(equalCopy, v74, v75, v76)) & 1) == 0)
      {
        v20 = objc_msgSend_asStringValue(self, v77, v78, v79);
        v24 = objc_msgSend_asStringValue(equalCopy, v89, v90, v91);
        v28 = objc_msgSend_asString(v20, v92, v93, v94);
        v32 = objc_msgSend_asString(v24, v95, v96, v97);
        isEqualToString = objc_msgSend_isEqualToString_(v28, v98, v32, v99);
        goto LABEL_18;
      }

      v80 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSCEValue isNativelyEqual:]", v79);
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v83);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v85, v81, v84, 767, 0, "isNativelyEqual() not implemented for type: TSCERichTextValue");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88);
      goto LABEL_16;
    }

    if (v18 != 10)
    {
      goto LABEL_10;
    }
  }

  else if (v18)
  {
    if (v18 == 2)
    {
      v20 = objc_msgSend_asBooleanValue(self, v15, v16, v17);
      v62 = objc_opt_self();
      v24 = objc_msgSend_asBooleanValue(v62, v63, v64, v65);

      v69 = objc_msgSend_asBool(v20, v66, v67, v68);
      v19 = v69 ^ objc_msgSend_asBool(v24, v70, v71, v72) ^ 1;
LABEL_19:

      goto LABEL_20;
    }

    if (v18 == 3)
    {
      v20 = objc_msgSend_asDateValue(self, v15, v16, v17);
      v24 = objc_msgSend_asDateValue(equalCopy, v21, v22, v23);
      v28 = objc_msgSend_asDate(v20, v25, v26, v27);
      v32 = objc_msgSend_asDate(v24, v29, v30, v31);
      isEqualToString = objc_msgSend_isEqualToDate_(v28, v33, v32, v34);
LABEL_18:
      LOBYTE(v19) = isEqualToString;

      goto LABEL_19;
    }

LABEL_10:
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEValue isNativelyEqual:]", v17);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v39);
    v44 = objc_msgSend_nativeType(self, v41, v42, v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v45, v37, v40, 791, 0, "isNativelyEqual() not implemented for type: %d", v44);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
LABEL_16:
    LOBYTE(v19) = 0;
  }

LABEL_20:

  return v19;
}

- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)array
{
  v9 = objc_msgSend_nativeType(self, a2, array, v3);
  if (v9 <= 6)
  {
    if (v9 <= 2)
    {
      if (!v9)
      {
        TSUDecimal::operator=();
        TSCEASTNumberElement::appendNumberElement(array, &v60, v30, v31);
        return;
      }

      if (v9 == 2)
      {
        v59 = objc_msgSend_asBooleanValue(self, v6, v7, v8);
        if (v59)
        {
          v13 = objc_msgSend_asBool(v59, v10, v11, v12);
          TSCEASTBooleanElement::appendBooleanElement(array, v13, v14, v15);
        }

        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if (v9 != 3)
    {
      if (v9 == 5)
      {
        v16 = objc_msgSend_asNumberValue(self, v6, v7, v8);
        v20 = v16;
        if (v16)
        {
          v60.var0 = objc_msgSend_decimalRepresentation(v16, v17, v18, v19);
          v60.var1 = v21;
          TSCEASTNumberElement::appendNumberElement(array, &v60, v22, v23);
        }

        return;
      }

LABEL_29:
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEValue appendASTForConstantToNodeArray:]", v8);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v47);
      v52 = objc_msgSend_nativeType(self, v49, v50, v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v53, v45, v48, 856, 0, "appendASTForConstantToNodeArray not supported for valueType: %d", v52);

      v57 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v57, v54, v55, v56);
      return;
    }

    v59 = objc_msgSend_asDateValue(self, v6, v7, v8);
    objc_msgSend_appendASTForConstantToNodeArray_(v59, v38, array, v39);
LABEL_35:
    v24 = v59;
    goto LABEL_36;
  }

  if (v9 > 13)
  {
    if (v9 == 14)
    {
      v24 = objc_msgSend_asCategoryRefValue(self, v6, v7, v8);
      if (!v24)
      {
        goto LABEL_36;
      }

      v59 = v24;
      v28 = objc_msgSend_categoryRef(v24, v40, v41, v42);
      TSCEASTCategoryRefElement::appendCategoryRefElement(array, v28, v43);
    }

    else
    {
      if (v9 != 17)
      {
        goto LABEL_29;
      }

      v24 = objc_msgSend_asViewTractRefValue(self, v6, v7, v8);
      if (!v24)
      {
        goto LABEL_36;
      }

      v59 = v24;
      v28 = objc_msgSend_viewTractRef(v24, v25, v26, v27);
      TSCEASTViewTractRefElement::appendViewTractRefElement(array, v28, v29);
    }

LABEL_34:

    goto LABEL_35;
  }

  if (v9 == 7)
  {
    if (objc_msgSend_isRichTextValue(self, v6, v7, v8))
    {
      v24 = objc_msgSend_asRichTextValue(self, v32, v33, v34);
      if (v24)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = objc_msgSend_asStringValue(self, v32, v33, v34);
      if (v24)
      {
LABEL_33:
        v59 = v24;
        v28 = objc_msgSend_asString(v24, v35, v36, v37);
        TSCEASTStringElement::appendStringElement(array, v28, v58);
        goto LABEL_34;
      }
    }

LABEL_36:

    return;
  }

  if (v9 != 10)
  {
    goto LABEL_29;
  }

  TSCEASTTagOnlyElement::appendTagOnlyElement(array, 23, v7, v8);
}

- (id)reorganizeValueForSorting:(id)sorting
{
  v5 = objc_alloc_init(TSTCellReorganizeValue);
  v9 = objc_msgSend_locale(sorting, v6, v7, v8);
  v16 = objc_msgSend_nativeType(self, v10, v11, v12);
  if (v16 > 6)
  {
    if (v16 > 13)
    {
      switch(v16)
      {
        case 14:
          v29 = objc_msgSend_asCategoryRefValue(self, v13, v14, v15);
          v31 = objc_msgSend_referredToValue_(v29, v61, sorting, v62);
          v34 = objc_msgSend_reorganizeValueForSorting_(v31, v63, sorting, v64);
          goto LABEL_27;
        case 16:
          v66 = objc_msgSend_asValueGridValue(self, v13, v14, v15);
          v96 = objc_msgSend_valueGrid(v66, v93, v94, v95);
          v100 = objc_msgSend_area(v96, v97, v98, v99);

          if (v100 == 1)
          {
            v104 = objc_msgSend_valueGrid(v66, v101, v102, v103);
            v108 = objc_msgSend_firstValue(v104, v105, v106, v107);

            v77 = objc_msgSend_reorganizeValueForSorting_(v108, v109, sorting, v110);

            goto LABEL_35;
          }

          v151 = MEMORY[0x277D81150];
          v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSCEValue reorganizeValueForSorting:]", v103);
          v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v154);
          v159 = objc_msgSend_nativeType(self, v156, v157, v158);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v160, v152, v155, 933, 0, "Unexpected valueType in reorganizeValueForSorting: %d", v159);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163);
LABEL_49:

          goto LABEL_44;
        case 17:
          v29 = objc_msgSend_asViewTractRefValue(self, v13, v14, v15);
          v31 = objc_msgSend_referredToValue_(v29, v35, sorting, v36);
          v34 = objc_msgSend_reorganizeValueForSorting_(v31, v37, sorting, v38);
          goto LABEL_27;
      }
    }

    else
    {
      switch(v16)
      {
        case 7:
          if (objc_msgSend_isRichTextValue(self, v13, v14, v15))
          {
            objc_msgSend_setValueType_(v5, v39, 9, v40);
          }

          else
          {
            objc_msgSend_setValueType_(v5, v39, 3, v40);
          }

          objc_msgSend_setRank_(v5, v41, 2, v42);
          v22 = objc_msgSend_asStringWithLocale_(self, v43, v9, v44);
          objc_msgSend_setString_(v5, v45, v22, v46);
          goto LABEL_43;
        case 9:
          objc_msgSend_setValueType_(v5, v13, 8, v15);
          goto LABEL_44;
        case 10:
LABEL_37:
          objc_msgSend_setValueType_(v5, v13, 0, v15);
          objc_msgSend_setRank_(v5, v124, 0, v125);
          goto LABEL_44;
      }
    }

LABEL_36:
    v111 = MEMORY[0x277D81150];
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEValue reorganizeValueForSorting:]", v15);
    v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v114);
    v119 = objc_msgSend_nativeType(self, v116, v117, v118);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v120, v112, v115, 953, 0, "Unexpected valueType in reorganizeValueForSorting: %d", v119);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v122, v123);
    goto LABEL_37;
  }

  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 != 1)
      {
        objc_msgSend_setValueType_(v5, v13, 6, v15);
        objc_msgSend_setRank_(v5, v17, 1, v18);
        v22 = objc_msgSend_asBooleanValue(self, v19, v20, v21);
        if (objc_msgSend_asBool(v22, v23, v24, v25))
        {
          objc_msgSend_setDoubleValue_(v5, v26, v27, v28, 1.0);
        }

        else
        {
          objc_msgSend_setDoubleValue_(v5, v26, v27, v28, 0.0);
        }

        goto LABEL_43;
      }

      v66 = objc_msgSend_asGridValue(self, v13, v14, v15);
      if (objc_msgSend_count(v66, v67, v68, v69) == 1)
      {
        sortingCopy = sorting;
        v164._decimal.w[0] = sortingCopy;
        v164._decimal.w[1] = 0;
        v165 = 0;
        v166[0] = 0xFFFFFFFFLL;
        *(v166 + 7) = 0;
        v167 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v168 = 0;
        v169 = 0;
        v74 = objc_msgSend_valueAtIndex_accessContext_(v66, v73, 0, &v164);
        v77 = objc_msgSend_reorganizeValueForSorting_(v74, v75, sortingCopy, v76);

LABEL_35:
        goto LABEL_45;
      }

      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSCEValue reorganizeValueForSorting:]", v71);
      v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v129);
      v134 = objc_msgSend_nativeType(self, v131, v132, v133);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v135, v127, v130, 946, 0, "Unexpected valueType in reorganizeValueForSorting: %d", v134);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v137, v138);
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v16 == 3)
  {
    v22 = objc_msgSend_asDateValue(self, v13, v14, v15);
    objc_msgSend_setValueType_(v5, v47, 5, v48);
    objc_msgSend_setRank_(v5, v49, 3, v50);
    v54 = objc_msgSend_asDate(v22, v51, v52, v53);
    objc_msgSend_timeIntervalSinceReferenceDate(v54, v55, v56, v57);
    objc_msgSend_setDoubleValue_(v5, v58, v59, v60);

LABEL_43:
    goto LABEL_44;
  }

  if (v16 == 5)
  {
    v22 = objc_msgSend_asNumberValue(self, v13, v14, v15);
    if (objc_msgSend_isDuration(v22, v78, v79, v80))
    {
      objc_msgSend_setValueType_(v5, v81, 7, v83);
      objc_msgSend_setRank_(v5, v84, 4, v85);
      v164._decimal.w[0] = objc_msgSend_decimalRepresentation(v22, v86, v87, v88);
      v164._decimal.w[1] = v89;
      TSUDecimal::doubleValue(&v164);
      objc_msgSend_setDoubleValue_(v5, v90, v91, v92);
    }

    else
    {
      if (objc_msgSend_hasUnits(v22, v81, v82, v83))
      {
        objc_msgSend_setValueType_(v5, v139, 10, v140);
      }

      else
      {
        objc_msgSend_setValueType_(v5, v139, 2, v140);
      }

      objc_msgSend_setRank_(v5, v141, 5, v142);
      v164._decimal.w[0] = objc_msgSend_decimalRepresentation(v22, v143, v144, v145);
      v164._decimal.w[1] = v146;
      TSUDecimal::doubleValue(&v164);
      objc_msgSend_setDoubleValue_(v5, v147, v148, v149);
    }

    goto LABEL_43;
  }

  if (v16 != 6)
  {
    goto LABEL_36;
  }

  v29 = objc_msgSend_asReferenceValue(self, v13, v14, v15);
  v31 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v29, v30, sorting, 0);
  v34 = objc_msgSend_reorganizeValueForSorting_(v31, v32, sorting, v33);
LABEL_27:
  v65 = v34;

  v5 = v65;
LABEL_44:
  v5 = v5;
  v77 = v5;
LABEL_45:

  return v77;
}

- (id)minValue:(id)value locale:(id)locale
{
  valueCopy = value;
  v10 = objc_msgSend_nativeType(self, v7, v8, v9);
  v17 = objc_msgSend_nativeType(valueCopy, v11, v12, v13);
  if (v10 == 5)
  {
    v18 = objc_msgSend_number(self, v14, v15, v16);
    isDuration = objc_msgSend_isDuration(v18, v19, v20, v21);

    if (isDuration)
    {
      v10 = 99;
    }

    else
    {
      v10 = 5;
    }
  }

  if (v17 == 5)
  {
    v23 = objc_msgSend_number(valueCopy, v14, v15, v16);
    v27 = objc_msgSend_isDuration(v23, v24, v25, v26);

    if (v27)
    {
      v17 = 99;
    }

    else
    {
      v17 = 5;
    }
  }

  if (v10 != v17)
  {
    if (v10 <= 4u)
    {
      if (v10 == 2)
      {
        if ((v17 > 7 || ((1 << v17) & 0xA8) == 0) && v17 != 99)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v10 != 3 || v17 == 99)
      {
        goto LABEL_40;
      }

      v40 = v17;
    }

    else
    {
      if (v10 == 99)
      {
        if (v17 != 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v10 != 7)
      {
        if (v10 == 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v17 == 3)
      {
        goto LABEL_40;
      }

      v40 = v17;
      if (v17 == 99)
      {
        goto LABEL_40;
      }
    }

    if (v40 != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  v31 = objc_msgSend_nativeType(self, v14, v15, v16);
  if (v31 > 4)
  {
    switch(v31)
    {
      case 0x63u:
        goto LABEL_14;
      case 7u:
        v49 = objc_msgSend_asRawString(self, v28, v29, v30);
        v53 = objc_msgSend_asRawString(valueCopy, v50, v51, v52);
        if (objc_msgSend_localizedCaseInsensitiveCompare_toString_(locale, v54, v49, v53) == 1)
        {
          selfCopy = valueCopy;
        }

        else
        {
          selfCopy = self;
        }

        v47 = selfCopy;

        goto LABEL_48;
      case 5u:
LABEL_14:
        v32 = objc_msgSend_number(self, v28, v29, v30);
        v36 = objc_msgSend_number(valueCopy, v33, v34, v35);
        v39 = objc_msgSend_min_(v32, v37, v36, v38);
LABEL_30:
        v47 = v39;

        goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (v31 != 2)
  {
    if (v31 == 3)
    {
      v32 = objc_msgSend_date(self, v28, v29, v30);
      v36 = objc_msgSend_date(valueCopy, v41, v42, v43);
      if (objc_msgSend_compare_(v32, v44, v36, v45) == 1)
      {
        selfCopy2 = valueCopy;
      }

      else
      {
        selfCopy2 = self;
      }

      v39 = selfCopy2;
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  if ((objc_msgSend_BOOLean(self, v28, v29, v30) & 1) == 0)
  {
LABEL_46:
    selfCopy3 = self;
    goto LABEL_47;
  }

LABEL_40:
  selfCopy3 = valueCopy;
LABEL_47:
  v47 = selfCopy3;
LABEL_48:

  return v47;
}

- (id)maxValue:(id)value locale:(id)locale
{
  valueCopy = value;
  v10 = objc_msgSend_nativeType(self, v7, v8, v9);
  v17 = objc_msgSend_nativeType(valueCopy, v11, v12, v13);
  if (v10 == 5)
  {
    v18 = objc_msgSend_number(self, v14, v15, v16);
    isDuration = objc_msgSend_isDuration(v18, v19, v20, v21);

    if (isDuration)
    {
      v10 = 99;
    }

    else
    {
      v10 = 5;
    }
  }

  if (v17 == 5)
  {
    v23 = objc_msgSend_number(valueCopy, v14, v15, v16);
    v27 = objc_msgSend_isDuration(v23, v24, v25, v26);

    if (v27)
    {
      v17 = 99;
    }

    else
    {
      v17 = 5;
    }
  }

  if (v10 != v17)
  {
    if (v10 <= 4u)
    {
      if (v10 == 2)
      {
        if ((v17 > 7 || ((1 << v17) & 0xA8) == 0) && v17 != 99)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v10 != 3 || v17 == 99)
      {
        goto LABEL_40;
      }

      v40 = v17;
    }

    else
    {
      if (v10 == 99)
      {
        if (v17 != 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v10 != 7)
      {
        if (v10 == 5)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      if (v17 == 3)
      {
        goto LABEL_40;
      }

      v40 = v17;
      if (v17 == 99)
      {
        goto LABEL_40;
      }
    }

    if (v40 != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  v31 = objc_msgSend_nativeType(self, v14, v15, v16);
  if (v31 > 4)
  {
    switch(v31)
    {
      case 0x63u:
        goto LABEL_14;
      case 7u:
        v49 = objc_msgSend_asRawString(self, v28, v29, v30);
        v53 = objc_msgSend_asRawString(valueCopy, v50, v51, v52);
        if (objc_msgSend_localizedCaseInsensitiveCompare_toString_(locale, v54, v49, v53) == -1)
        {
          selfCopy = valueCopy;
        }

        else
        {
          selfCopy = self;
        }

        v47 = selfCopy;

        goto LABEL_48;
      case 5u:
LABEL_14:
        v32 = objc_msgSend_number(self, v28, v29, v30);
        v36 = objc_msgSend_number(valueCopy, v33, v34, v35);
        v39 = objc_msgSend_max_(v32, v37, v36, v38);
LABEL_30:
        v47 = v39;

        goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (v31 != 2)
  {
    if (v31 == 3)
    {
      v32 = objc_msgSend_date(self, v28, v29, v30);
      v36 = objc_msgSend_date(valueCopy, v41, v42, v43);
      if (objc_msgSend_compare_(v32, v44, v36, v45) == -1)
      {
        selfCopy2 = valueCopy;
      }

      else
      {
        selfCopy2 = self;
      }

      v39 = selfCopy2;
      goto LABEL_30;
    }

    goto LABEL_46;
  }

  if (objc_msgSend_BOOLean(self, v28, v29, v30))
  {
LABEL_46:
    selfCopy3 = self;
    goto LABEL_47;
  }

LABEL_40:
  selfCopy3 = valueCopy;
LABEL_47:
  v47 = selfCopy3;
LABEL_48:

  return v47;
}

- (BOOL)valueHasError:(int)error context:(id)context outError:(id *)outError
{
  v7 = *&error;
  selfCopy = self;
  v12 = 0;
  v13 = 0;
  v17 = objc_msgSend_nativeType(selfCopy, v9, v10, v11);
  if (v17 > 8)
  {
    if (v17 <= 14)
    {
      if (v17 == 9)
      {
        v13 = 0;
LABEL_38:
        v12 = 1;
        goto LABEL_43;
      }

      if (v17 != 14)
      {
        goto LABEL_43;
      }

      v31 = objc_msgSend_asCategoryRefValue(selfCopy, v14, v15, v16);
      v34 = objc_msgSend_referredToValue_(v31, v32, context, v33);
      HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v34, v35, v7, context, outError);
      goto LABEL_41;
    }

    if ((v17 - 15) < 2)
    {
      v41 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEValue valueHasError:context:outError:]", v16);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v44, v24, v27, 1254, 0, "actual values shouldn't have TSCENoCoerceScalarArgumentType");
    }

    else
    {
      if (v17 == 17)
      {
        v31 = objc_msgSend_asViewTractRefValue(selfCopy, v14, v15, v16);
        v34 = objc_msgSend_referredToValue_(v31, v59, context, v60);
        HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v34, v61, v7, context, outError);
        goto LABEL_41;
      }

      if (v17 != 255)
      {
        goto LABEL_43;
      }

      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEValue valueHasError:context:outError:]", v16);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 1228, 0, "actual values shouldn't have TSCEAnyArgumentType");
    }

LABEL_27:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
    goto LABEL_28;
  }

  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 != 4)
      {
        v66 = 0;
        v18 = objc_msgSend_asNumber_outError_(selfCopy, v14, context, &v66);
        v13 = v66;
        v67._decimal.w[0] = objc_msgSend_decimalRepresentation(v18, v19, v20, v21);
        v67._decimal.w[1] = v22;

        if (!v13 && (TSUDecimal::isNaN(&v67) & 1) == 0 && !TSUDecimal::isInf(&v67))
        {
          v12 = 0;
          goto LABEL_43;
        }

        v12 = 1;
        if (!v13)
        {
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      v45 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSCEValue valueHasError:context:outError:]", v16);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v48, v24, v27, 1240, 0, "actual values shouldn't have TSCEDurationArgumentType");
      goto LABEL_27;
    }

    if (v17 != 6)
    {
      if (v17 == 7)
      {
        v37 = objc_msgSend_locale(context, v14, v15, v16);
        v40 = objc_msgSend_asStringWithLocale_(selfCopy, v38, v37, v39);

LABEL_28:
        v13 = 0;
        v12 = 0;
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v52 = objc_msgSend_asReferenceValue(selfCopy, v14, v15, v16);
    v31 = v52;
    if (!v52 || (objc_msgSend_isNil(v52, v53, v54, v55) & 1) != 0)
    {
      v12 = 1;
LABEL_42:

      v13 = 0;
      goto LABEL_43;
    }

    v34 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v31, v56, context, 0);
    HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v34, v62, v7, context, outError);
LABEL_41:
    v12 = HasError_context_outError;

    goto LABEL_42;
  }

  switch(v17)
  {
    case 1:
      v31 = objc_msgSend_gridValue(selfCopy, v14, v15, v16);
      v12 = objc_msgSend_containsError_argumentIndex_outError_(v31, v57, context, v7, outError);
      goto LABEL_42;
    case 2:
      v65 = 0;
      objc_msgSend_asBoolean_outError_(selfCopy, v14, context, &v65);
      v30 = v65;
      break;
    case 3:
      v64 = 0;
      v29 = objc_msgSend_asDate_outError_(selfCopy, v14, context, &v64);
      v30 = v64;
      break;
    default:
      goto LABEL_43;
  }

  v13 = v30;
  v12 = v13 != 0;
  if (v13)
  {
LABEL_35:
    if (outError)
    {
      v58 = v13;
      *outError = v13;
    }

    goto LABEL_38;
  }

LABEL_43:

  return v12;
}

- (BOOL)valueIsEmptyWithContext:(id)context
{
  if (objc_msgSend_isNil(self, a2, context, v3))
  {
    return 1;
  }

  v11 = objc_msgSend_nativeType(self, v6, v7, v8);
  v9 = 1;
  if (v11 && v11 != 10)
  {
    if (v11 == 6)
    {
      v15 = objc_msgSend_asReferenceValue(self, v12, v13, v14);
      v17 = v15;
      if (v15)
      {
        v21 = 0;
        v18 = objc_msgSend_deepType_outError_(v15, v16, context, &v21);
        v19 = v21;

        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19 == 0;
        }

        v9 = v20;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

- (id)convertArrayToText:(id)text maximumStringLength:(unint64_t)length formatMode:(int64_t)mode
{
  if (!text || (objc_msgSend_calcEngine(text, a2, text, length), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    selfCopy = objc_msgSend_stringValue_(TSCEStringValue, a2, &stru_2834BADA0, length, mode);
    goto LABEL_60;
  }

  v129[0] = 0;
  v120 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(self, a2, text, 0, 0, 0, v129);
  v10 = v129[0];
  if (v10)
  {
    selfCopy = self;
    goto LABEL_59;
  }

  v12 = objc_opt_new();
  v16 = v12;
  if (mode == 10 || mode == 1)
  {
    objc_msgSend_appendString_(v12, v13, @"{", v15);
  }

  v127 = 0;
  v128 = objc_msgSend_dimensions(v120, v13, v14, v15);
  v121[0] = text;
  v121[1] = 0;
  v122 = 0;
  v123[0] = 0xFFFFFFFFLL;
  *(v123 + 7) = 0;
  v124 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v125 = 0;
  v126 = 0;
  v117 = v121[0];
  v20 = objc_msgSend_locale(v121[0], v17, v18, v19);
  v116 = objc_msgSend_arrayColumnSeparator(v20, v21, v22, v23);
  v24 = MEMORY[0x277CCACA8];
  v30 = objc_msgSend_arrayColumnSeparator(v20, v25, v26, v27);
  if (mode == 1)
  {
    v119 = objc_msgSend_stringWithFormat_(v24, v28, @"%@", v29, v30);

    v31 = MEMORY[0x277CCACA8];
    v35 = objc_msgSend_arrayRowSeparator(v20, v32, v33, v34);
    objc_msgSend_stringWithFormat_(v31, v36, @"%@", v37, v35);
  }

  else
  {
    v119 = objc_msgSend_stringWithFormat_(v24, v28, @"%@ ", v29, v30);

    v38 = MEMORY[0x277CCACA8];
    v35 = objc_msgSend_arrayRowSeparator(v20, v39, v40, v41);
    objc_msgSend_stringWithFormat_(v38, v42, @"%@ ", v43, v35);
  }
  v118 = ;

  if (v128.height * v128.width == 1)
  {
    v45 = objc_msgSend_valueAtGridCoord_accessContext_(v120, v44, *&v127, v121);
    if (objc_msgSend_isReferenceValue(v45, v46, v47, v48))
    {
      v52 = objc_msgSend_asReferenceValue(v45, v49, v50, v51);
      v54 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v52, v53, v117, 0);

      v45 = v54;
    }

    if (objc_msgSend_isError(v45, v49, v50, v51))
    {
      if (mode == 10)
      {
        v58 = @"<error>";
        v59 = objc_msgSend_length(@"<error>", v55, v56, v57);
      }

      else
      {
        v58 = 0;
        v59 = objc_msgSend_length(0, v55, v56, v57);
      }
    }

    else
    {
      v58 = objc_msgSend_asStringWithLocale_(v45, v55, v20, v57);
      v59 = objc_msgSend_length(v58, v62, v63, v64);
    }

    if (!v59)
    {
      v113 = objc_msgSend_nonEmptyStringRequiredErrorForFunctionName_(TSCEError, v60, @"ARRAYTOTEXT", v61);
      selfCopy = objc_msgSend_errorValue_(TSCEErrorValue, v114, v113, v115);

      goto LABEL_58;
    }
  }

  if (mode == 10)
  {
    v65 = @"<error>";
  }

  else
  {
    v65 = 0;
  }

  while (1)
  {
    v66 = objc_msgSend_valueAtGridCoord_accessContext_(v120, v44, *&v127, v121);
    if (objc_msgSend_isReferenceValue(v66, v67, v68, v69))
    {
      v73 = objc_msgSend_asReferenceValue(v66, v70, v71, v72);
      v75 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v73, v74, v117, 0);

      v66 = v75;
    }

    v79 = v65;
    if ((objc_msgSend_isError(v66, v70, v71, v72) & 1) == 0)
    {
      v79 = objc_msgSend_asStringWithLocale_(v66, v76, v20, v78);
    }

    if (objc_msgSend_length(v79, v76, v77, v78))
    {
      if (mode != 1)
      {
        goto LABEL_37;
      }

      v83 = objc_msgSend_nativeType(v66, v80, v81, v82);
      if (v83 == 2)
      {
        goto LABEL_37;
      }

      if (v83 == 5)
      {
        v85 = objc_msgSend_asNumberValue(v66, v80, v84, v82);
        if (objc_msgSend_isDuration(v85, v86, v87, v88) & 1) != 0 || (objc_msgSend_hasUnits(v85, v89, v90, v91))
        {
        }

        else
        {
          v106 = objc_msgSend_containsString_(v79, v92, v116, v93);

          if (!v106)
          {
            goto LABEL_37;
          }
        }
      }

      v94 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(v79, v80, v84, v82);
      v97 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v95, @"%@", v96, v94);

      v79 = v97;
LABEL_37:
      objc_msgSend_appendString_(v16, v80, v79, v82);
    }

    row = v127.row;
    v99 = TSCEGridDimensions::nextCoordRowMajorOrder(&v128, &v127);
    v127 = v99;
    if (v99 != 0x7FFFFFFF && HIDWORD(v99) != 0x7FFFFFFF)
    {
      if (HIDWORD(v99) == row || mode == 0)
      {
        objc_msgSend_appendString_(v16, v100, v119, v102);
      }

      else
      {
        objc_msgSend_appendString_(v16, v100, v118, v102);
      }
    }

    if (length != 0x7FFFFFFFFFFFFFFFLL)
    {
      v104 = objc_msgSend_length(v16, v100, v101, v102);
      if (v104 > length)
      {
        break;
      }
    }

    if (v127.column == 0x7FFFFFFF || v127.row == 0x7FFFFFFF)
    {
      goto LABEL_54;
    }
  }

  v107 = sub_2212F6DF8(v104);
  v109 = objc_msgSend_localizedStringForKey_value_table_(v107, v108, @"…", &stru_2834BADA0, @"TSCalculationEngine");
  objc_msgSend_appendString_(v16, v110, v109, v111);

LABEL_54:
  if (mode == 10 || mode == 1)
  {
    objc_msgSend_appendString_(v16, v44, @"}", v105);
  }

  selfCopy = objc_msgSend_stringValue_(TSCEStringValue, v44, v16, v105);
  v10 = 0;
LABEL_58:

LABEL_59:
LABEL_60:

  return selfCopy;
}

+ (int64_t)compareValuesWithContextLeft:(id)left right:(id)right context:(id)context functionSpec:(id)spec outError:(id *)error
{
  leftCopy = left;
  rightCopy = right;
  specCopy = spec;
  v15 = objc_msgSend_deepType_outError_(leftCopy, v14, context, error);
  v17 = objc_msgSend_deepType_outError_(rightCopy, v16, context, error);
  if ((!objc_msgSend_valueIsEmptyWithContext_(leftCopy, v18, context, v19) || (objc_msgSend_valueIsEmptyWithContext_(rightCopy, v20, context, v22) & 1) == 0) && !*error)
  {
    v27 = objc_msgSend_locale(context, v20, v21, v22);
    if (v15 == 9)
    {
      v28 = objc_msgSend_errorWithContext_(leftCopy, v24, context, v26);
LABEL_9:
      v23 = 0;
      *error = v28;
LABEL_10:

      goto LABEL_11;
    }

    if (v17 == 9)
    {
      v28 = objc_msgSend_errorWithContext_(rightCopy, v24, context, v26);
      goto LABEL_9;
    }

    if (v15 == 2 && v17 == 2)
    {
      v30 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(leftCopy, v24, context, specCopy, 0, error);
      v32 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(rightCopy, v31, context, specCopy, 1, error);
      if (*error)
      {
LABEL_15:
        v23 = 0;
        goto LABEL_10;
      }

      if ((v30 ^ 1 | v32))
      {
        v23 = (((v30 ^ 1) & v32) << 63) >> 63;
        goto LABEL_10;
      }

LABEL_92:
      v23 = 1;
      goto LABEL_10;
    }

    if (v15 == 3 && v17 == 3)
    {
      v33 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(leftCopy, v24, context, specCopy, 0, error);
      v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(rightCopy, v34, context, specCopy, 1, error);
      if (*error)
      {
LABEL_19:
        v23 = 0;
LABEL_39:

        goto LABEL_10;
      }

      v57 = objc_msgSend_compare_(v33, v35, v37, v36);
LABEL_38:
      v23 = v57;
      goto LABEL_39;
    }

    if (v17 == 3)
    {
      v23 = -1;
      if (!v15 || v15 == 5)
      {
        goto LABEL_10;
      }
    }

    if (v15 == 3)
    {
      v23 = 1;
      if (!v17 || v17 == 5)
      {
        goto LABEL_10;
      }
    }

    if (v17 == 3 && (v15 == 7 || v15 == 2))
    {
      if (!objc_msgSend_isRegexString(leftCopy, v24, v25, v26))
      {
        goto LABEL_92;
      }

      v41 = objc_msgSend_asStringValue(leftCopy, v38, v39, v40);
      v46 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(rightCopy, v42, context, specCopy, 1, error);
      if (*error)
      {
        goto LABEL_47;
      }

      v47 = objc_msgSend_asString(v41, v43, v44, v45);
      isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v41, v48, v49, v50);
      v53 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v52, v47, isCaseSensitiveRegex, 1, error);

      if (!*error)
      {
        v56 = objc_msgSend_containsMatchInString_(v53, v54, v46, v55);

        goto LABEL_33;
      }

      goto LABEL_46;
    }

    if (v15 == 3 && (v17 == 7 || v17 == 2))
    {
      if (!objc_msgSend_isRegexString(rightCopy, v24, v25, v26))
      {
        goto LABEL_84;
      }

      v41 = objc_msgSend_asStringValue(rightCopy, v58, v59, v60);
      v46 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(leftCopy, v61, context, specCopy, 0, error);
      if (*error)
      {
LABEL_47:

LABEL_48:
        goto LABEL_15;
      }

      v65 = objc_msgSend_asString(v41, v62, v63, v64);
      v69 = objc_msgSend_isCaseSensitiveRegex(v41, v66, v67, v68);
      v53 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v70, v65, v69, 1, error);

      if (*error)
      {
LABEL_46:

        goto LABEL_47;
      }

      v123 = objc_msgSend_containsMatchInString_(v53, v71, v46, v72);

LABEL_83:
      if (v123)
      {
        goto LABEL_15;
      }

LABEL_84:
      v23 = -1;
      goto LABEL_10;
    }

    IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(leftCopy, v24, context, v26);
    v76 = objc_msgSend_valueIsEmptyWithContext_(rightCopy, v74, context, v75);
    if (v17 == 5)
    {
      v80 = IsEmptyWithContext;
    }

    else
    {
      v80 = 0;
    }

    if (v80 == 1)
    {
      v81 = objc_msgSend_zero(TSCENumberValue, v77, v78, v79);
      v83 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(rightCopy, v82, context, specCopy, 1, error);
      v85 = objc_msgSend_compare_outError_(v81, v84, v83, error);

      if (*error)
      {
        v23 = 0;
      }

      else
      {
        v23 = v85;
      }

      goto LABEL_10;
    }

    v86 = v76;
    v87 = objc_msgSend_valueIsEmptyWithContext_(rightCopy, v77, context, v79);
    if (v15 == 5)
    {
      v91 = v87;
    }

    else
    {
      v91 = 0;
    }

    if (v91 == 1)
    {
      v92 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(leftCopy, v88, context, specCopy, 0, error);
      v96 = objc_msgSend_zero(TSCENumberValue, v93, v94, v95);
      v98 = objc_msgSend_compare_outError_(v92, v97, v96, error);

      if (*error)
      {
        v23 = 0;
      }

      else
      {
        v23 = v98;
      }

      goto LABEL_10;
    }

    if (v17 == 7)
    {
      v99 = IsEmptyWithContext;
    }

    else
    {
      v99 = 0;
    }

    v149 = v99;
    if (v99 == 1)
    {
      v148 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(rightCopy, v88, context, specCopy, 1, error);
      if (!objc_msgSend_length(v148, v100, v101, v102))
      {

        goto LABEL_15;
      }

      v147 = v15 == 7;
      if ((v86 & v147) == 0)
      {

        goto LABEL_75;
      }
    }

    else
    {
      v147 = v15 == 7;
      if ((v86 & v147) != 1)
      {
        goto LABEL_75;
      }
    }

    v146 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(leftCopy, v88, context, specCopy, 0, error);
    v145 = objc_msgSend_length(v146, v103, v104, v105);

    if (v149)
    {
    }

    if (!v145)
    {
      goto LABEL_15;
    }

LABEL_75:
    if (*error)
    {
      goto LABEL_15;
    }

    if (v15 == 5 && v17 == 7)
    {
      if (!objc_msgSend_isRegexString(rightCopy, v88, v89, v90))
      {
        goto LABEL_84;
      }

      v41 = objc_msgSend_asStringValue(rightCopy, v106, v107, v108);
      v112 = objc_msgSend_asString(v41, v109, v110, v111);
      v116 = objc_msgSend_isCaseSensitiveRegex(v41, v113, v114, v115);
      v118 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v117, v112, v116, 1, error);

      if (!*error)
      {
        v120 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(leftCopy, v119, context, specCopy, 0, error);
        v123 = objc_msgSend_containsMatchInString_(v118, v121, v120, v122);

        goto LABEL_83;
      }
    }

    else
    {
      if (v17 != 5 || !v147)
      {
        if (((v147 | IsEmptyWithContext) & 1) != 0 && (v17 == 7) | v86 & 1)
        {
          v33 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(leftCopy, v88, context, specCopy, 0, error);
          v37 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(rightCopy, v138, context, specCopy, 1, error);
          v57 = objc_msgSend_localizedCompare_toString_(v27, v139, v33, v37);
        }

        else
        {
          v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(leftCopy, v88, context, specCopy, 0, error);
          v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(rightCopy, v140, context, specCopy, 1, error);
          if (*error)
          {
            goto LABEL_19;
          }

          v57 = objc_msgSend_stringBasedCompare_locale_outError_(v33, v141, v37, v27, error);
        }

        goto LABEL_38;
      }

      if (!objc_msgSend_isRegexString(leftCopy, v88, v89, v90))
      {
        goto LABEL_92;
      }

      v41 = objc_msgSend_asStringValue(leftCopy, v125, v126, v127);
      v131 = objc_msgSend_asString(v41, v128, v129, v130);
      v135 = objc_msgSend_isCaseSensitiveRegex(v41, v132, v133, v134);
      v118 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v136, v131, v135, 1, error);

      if (!*error)
      {
        v142 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(rightCopy, v137, context, specCopy, 1, error);
        v56 = objc_msgSend_containsMatchInString_(v118, v143, v142, v144);

LABEL_33:
        if (v56)
        {
          goto LABEL_15;
        }

        goto LABEL_92;
      }
    }

    goto LABEL_48;
  }

  v23 = 0;
LABEL_11:

  return v23;
}

+ (int64_t)compareValuesLeft:(id)left right:(id)right context:(id)context outError:(id *)error
{
  leftCopy = left;
  rightCopy = right;
  if (error)
  {
    *error = 0;
  }

  v12 = objc_msgSend_compareValuesWithContextLeft_right_context_functionSpec_outError_(TSCEValue, v10, leftCopy, rightCopy, context, 0, error);

  return v12;
}

+ (int64_t)compareValuesForLookupLeft:(id)left right:(id)right context:(id)context outError:(id *)error
{
  leftCopy = left;
  rightCopy = right;
  v13 = objc_msgSend_deepType_(leftCopy, v11, context, v12);
  v16 = objc_msgSend_deepType_(rightCopy, v14, context, v15);
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(leftCopy, v17, context, v18);
  if (v13)
  {
    v22 = IsEmptyWithContext;
  }

  else
  {
    v22 = 1;
  }

  v23 = objc_msgSend_valueIsEmptyWithContext_(rightCopy, v20, context, v21);
  if (v16)
  {
    v26 = v23;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26 ^ 1;
  if (((v22 ^ 1) & 1) == 0 && (v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (((v22 ^ 1 | v26) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (((v22 | v27) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v13 == 5 && v16 != 5)
  {
    goto LABEL_14;
  }

  if (v13 != 5 && v16 == 5)
  {
LABEL_17:
    v28 = 1;
    goto LABEL_18;
  }

  if (v13 == 5 && v16 == 5)
  {
    v133 = 0;
    v30 = objc_msgSend_asNumber_outError_(leftCopy, v24, context, &v133);
    v31 = v133;
    v132 = v31;
    v130 = objc_msgSend_asNumber_outError_(rightCopy, v32, context, &v132);
    v33 = v132;

    if (v33)
    {
      v28 = 0;
      v37 = v33;
      goto LABEL_23;
    }

    v44 = objc_msgSend_locale(context, v34, v35, v36);
    v131 = 0;
    v28 = objc_msgSend_stringBasedCompare_locale_outError_(v30, v45, v130, v44, &v131);
    v37 = v131;

    if (!v37)
    {
      goto LABEL_24;
    }

    if (objc_msgSend_errorType(v37, v46, v47, v48) != 68)
    {
LABEL_23:
      v38 = v37;
      *error = v37;

LABEL_24:
LABEL_25:

      goto LABEL_18;
    }

    if (objc_msgSend_hasUnits(v30, v49, v50, v51) && objc_msgSend_hasUnits(v130, v52, v53, v54))
    {
      v55 = objc_msgSend_dimension(v30, v52, v53, v54);
      v59 = objc_msgSend_dimension(v130, v56, v57, v58);
      if (!(v55 | v59))
      {
        v62 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v61);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v63, v66, 1701, 0, "TSCEInvalidComparisonError should not be returned when both numbers are durations");
LABEL_39:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
LABEL_52:

        v72 = 0;
        v71 = 0;
        goto LABEL_53;
      }

      if (!v55 && v59 == 4)
      {
LABEL_66:
        v28 = 1;
        goto LABEL_24;
      }

      if (v55 != 4 || v59)
      {
        v125 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v61);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v127);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v128, v63, v66, 1707, 0, "TSCEInvalidComparisonError should not be returned when both numbers are currencies");
        goto LABEL_39;
      }
    }

    else
    {
      if (objc_msgSend_hasUnits(v30, v52, v53, v54) && (objc_msgSend_hasUnits(v130, v73, v74, v75) & 1) == 0)
      {
        if (objc_msgSend_dimension(v30, v73, v74, v75))
        {
          v116 = MEMORY[0x277D81150];
          v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v115);
          v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v119);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v116, v121, v117, v120, 1710, 0, "Dimension here should be duration, TSCEInvalidComparisonError should not be returned if it's a currency");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124);
        }

        goto LABEL_66;
      }

      if ((objc_msgSend_hasUnits(v30, v73, v74, v75) & 1) != 0 || !objc_msgSend_hasUnits(v130, v76, v77, v78))
      {
        v129 = MEMORY[0x277D81150];
        v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v78);
        v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v93);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v95, v91, v94, 1716, 0, "TSCEInvalidComparisonError should not be returned when both numbers have no units");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98);
        goto LABEL_52;
      }

      if (objc_msgSend_dimension(v130, v76, v79, v78))
      {
        v82 = MEMORY[0x277D81150];
        v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v81);
        v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v85);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v87, v83, v86, 1713, 0, "Dimension here should be duration, TSCEInvalidComparisonError should not be returned if it's a currency");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90);
      }
    }

    v28 = -1;
    goto LABEL_24;
  }

  if (v13 == 3 && v16 != 3)
  {
    goto LABEL_14;
  }

  if (v13 != 3 && v16 == 3)
  {
    goto LABEL_17;
  }

  if (v13 == 3 && v16 == 3)
  {
    v30 = objc_msgSend_asDate_outError_(leftCopy, v24, context, error);
    v40 = objc_msgSend_asDate_outError_(rightCopy, v39, context, error);
    v43 = objc_msgSend_compare_(v30, v41, v40, v42);
LABEL_56:
    v28 = v43;

    goto LABEL_25;
  }

  v71 = v13 == 7;
  if (v13 == 7 && v16 != 7)
  {
LABEL_14:
    v28 = -1;
    goto LABEL_18;
  }

  v72 = v16 == 7;
  if (v13 != 7 && v16 == 7)
  {
    goto LABEL_17;
  }

LABEL_53:
  if (v71 && v72)
  {
    v30 = objc_msgSend_asString_outError_(leftCopy, v24, context, error);
    v40 = objc_msgSend_asString_outError_(rightCopy, v99, context, error);
    v43 = objc_msgSend_caseInsensitiveCompare_(v30, v100, v40, v101);
    goto LABEL_56;
  }

  if (v13 == 2 && v16 == 2)
  {
    v102 = objc_msgSend_asBoolean_outError_(leftCopy, v24, context, error);
    v104 = objc_msgSend_asBoolean_outError_(rightCopy, v103, context, error);
    if ((v102 ^ 1 | v104))
    {
      v28 = (((v102 ^ 1) & v104) << 63) >> 63;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v105 = MEMORY[0x277D81150];
  v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "+[TSCEValue compareValuesForLookupLeft:right:context:outError:]", v25);
  v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValue.mm", v108);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v110, v106, v109, 1753, 0, "We should never reach here unless you pass in nodes with unsupported types, leftType: %d rightType: %d", v13, v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113);
LABEL_9:
  v28 = 0;
LABEL_18:

  return v28;
}

+ (BOOL)valuesAreEqualLeft:(id)left right:(id)right context:(id)context outError:(id *)error
{
  leftCopy = left;
  rightCopy = right;
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(leftCopy, v11, context, v12);
  v18 = objc_msgSend_valueIsEmptyWithContext_(rightCopy, v14, context, v15);
  if (IsEmptyWithContext & v18)
  {
    isEqualToString = 1;
    goto LABEL_69;
  }

  v20 = objc_msgSend_deepType_(rightCopy, v16, context, v17);
  v23 = v20;
  if (IsEmptyWithContext)
  {
    isEqualToString = 0;
    v24 = 0;
    if (v20 <= 6u)
    {
      if (v20 == 2)
      {
        v122 = 0;
        v44 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(rightCopy, v21, context, 0, 0, &v122);
        v24 = v122;
        isEqualToString = v44 ^ 1;
        goto LABEL_39;
      }

      if (v20 == 5)
      {
        v124 = 0;
        v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(rightCopy, v21, context, 0, 0, &v124);
        v26 = v124;
        v30 = objc_msgSend_zero(TSCENumberValue, v27, v28, v29);
        v123 = v26;
        isEqualToString = objc_msgSend_eq_outError_(v25, v31, v30, &v123);
        v24 = v123;

LABEL_38:
LABEL_39:
        if (v24)
        {
          if (error)
          {
            v47 = v24;
            isEqualToString = 0;
            *error = v24;
          }

          else
          {
            isEqualToString = 0;
          }
        }

        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (v20 == 7)
    {
      v121 = 0;
      v25 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(rightCopy, v21, context, 0, 0, &v121);
      v24 = v121;
      isEqualToString = objc_msgSend_isEqualToString_(v25, v45, &stru_2834BADA0, v46);
      goto LABEL_38;
    }

    if (v20 != 9)
    {
LABEL_53:

      goto LABEL_69;
    }

    if (error)
    {
      goto LABEL_34;
    }

    goto LABEL_51;
  }

  v32 = objc_msgSend_deepType_(leftCopy, v21, context, v22);
  v34 = v32;
  if (v18)
  {
    isEqualToString = 0;
    v35 = 0;
    if (v32 <= 6u)
    {
      if (v32 == 2)
      {
        v118 = 0;
        v74 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(leftCopy, v21, context, 0, 0, &v118);
        v35 = v118;
        isEqualToString = v74 ^ 1;
        goto LABEL_57;
      }

      if (v32 == 5)
      {
        v120 = 0;
        v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(leftCopy, v21, context, 0, 0, &v120);
        v37 = v120;
        v41 = objc_msgSend_zero(TSCENumberValue, v38, v39, v40);
        v119 = v37;
        isEqualToString = objc_msgSend_eq_outError_(v36, v42, v41, &v119);
        v35 = v119;

LABEL_56:
LABEL_57:
        if (v35)
        {
          if (error)
          {
            v77 = v35;
            isEqualToString = 0;
            *error = v35;
          }

          else
          {
            isEqualToString = 0;
          }
        }

        goto LABEL_68;
      }

      goto LABEL_68;
    }

    if (v32 == 7)
    {
      v117 = 0;
      v36 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(leftCopy, v21, context, 0, 0, &v117);
      v35 = v117;
      isEqualToString = objc_msgSend_isEqualToString_(v36, v75, &stru_2834BADA0, v76);
      goto LABEL_56;
    }

    if (v32 != 9)
    {
LABEL_68:

      goto LABEL_69;
    }

    if (!error)
    {
      goto LABEL_51;
    }

    goto LABEL_26;
  }

  if (v32 == 9 && (objc_msgSend_isGridValue(leftCopy, v21, v33, v22) & 1) != 0 || v23 == 9 && objc_msgSend_isGridValue(rightCopy, v21, v33, v22))
  {
    if (!error)
    {
      goto LABEL_51;
    }

    v43 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v21, v33, v22);
LABEL_35:
    isEqualToString = 0;
    *error = v43;
    goto LABEL_69;
  }

  if (v34 == 9 && objc_msgSend_isReferenceValue(leftCopy, v21, v33, v22))
  {
    if (!error)
    {
      goto LABEL_51;
    }

LABEL_26:
    v43 = objc_msgSend_errorWithContext_(leftCopy, v21, context, v22);
    goto LABEL_35;
  }

  if (v23 == 9 && objc_msgSend_isReferenceValue(rightCopy, v21, v33, v22))
  {
    if (error)
    {
LABEL_34:
      v43 = objc_msgSend_errorWithContext_(rightCopy, v21, context, v22);
      goto LABEL_35;
    }

LABEL_51:
    isEqualToString = 0;
    goto LABEL_69;
  }

  if ((objc_msgSend_isRegexString(leftCopy, v21, v33, v22) & 1) == 0)
  {
    isRegexString = objc_msgSend_isRegexString(rightCopy, v48, v49, v50);
    v52 = v34 == v23 ? 1 : isRegexString;
    if ((v52 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (v34 == 7 && v23 == 7)
  {
    v53 = objc_msgSend_isRegexString(leftCopy, v48, v49, v50);
    v60 = objc_msgSend_isRegexString(rightCopy, v54, v55, v56);
    if ((v53 & v60) == 1)
    {
      v61 = objc_msgSend_asStringValue(leftCopy, v57, v58, v59);
      v65 = objc_msgSend_asStringValue(rightCopy, v62, v63, v64);
      isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v61, v66, v67, v68);
      v73 = objc_msgSend_isCaseSensitiveRegex(v65, v70, v71, v72);

      if (isCaseSensitiveRegex != v73)
      {
        goto LABEL_51;
      }
    }

    if (v53 == v60)
    {
      v35 = objc_msgSend_asString_outError_(leftCopy, v57, context, error);
      v84 = objc_msgSend_asString_outError_(rightCopy, v83, context, error);
      isEqualToString = objc_msgSend_caseInsensitiveCompare_(v35, v85, v84, v86) == 0;

      goto LABEL_68;
    }

    if (objc_msgSend_isRegexString(leftCopy, v57, v58, v59))
    {
      v116 = 0;
      v81 = &v116;
      v82 = objc_msgSend_asString_outError_(leftCopy, v80, context, &v116);
    }

    else
    {
      v115 = 0;
      v81 = &v115;
      v82 = objc_msgSend_asString_outError_(rightCopy, v80, context, &v115);
    }

    v88 = v82;
    v89 = *v81;
    if (objc_msgSend_isRegexString(leftCopy, v90, v91, v92))
    {
      v113 = v89;
      v94 = &v113;
      v95 = objc_msgSend_asString_outError_(rightCopy, v93, context, &v113);
    }

    else
    {
      v114 = v89;
      v94 = &v114;
      v95 = objc_msgSend_asString_outError_(leftCopy, v93, context, &v114);
    }

    v96 = v95;
    v97 = *v94;

    if (objc_msgSend_isRegexString(leftCopy, v98, v99, v100))
    {
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(leftCopy, v101, v102, v103);
    }

    else
    {
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(rightCopy, v101, v102, v103);
    }

    v112 = v97;
    v106 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_entireMatch_outError_(TSCERegexMatcher, v105, v88, isCaseSensitiveRegexString, 1, &v112);
    v107 = v112;

    if (v107)
    {
      if (error)
      {
        v110 = v107;
        isEqualToString = 0;
        *error = v107;
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = objc_msgSend_containsMatchInString_(v106, v108, v96, v109);
    }
  }

  else
  {
    v111 = 0;
    v78 = objc_msgSend_compareValuesLeft_right_context_outError_(TSCEValue, v48, leftCopy, rightCopy, context, &v111);
    v79 = v111;
    isEqualToString = v78 == 0;
    if (v79)
    {
      if (error)
      {
        v79 = v79;
        isEqualToString = 0;
        *error = v79;
      }

      else
      {
        isEqualToString = 0;
      }
    }
  }

LABEL_69:

  return isEqualToString;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 20) = 0;
  *(self + 12) = *(self + 12) & 0xC080 | 0x421;
  *(self + 26) = *(self + 26) & 0xF8 | 1;
  *(self + 7) = -50266102;
  *(self + 32) = -3;
  *(self + 33) &= 0xE0u;
  *(self + 17) = 0;
  return self;
}

@end