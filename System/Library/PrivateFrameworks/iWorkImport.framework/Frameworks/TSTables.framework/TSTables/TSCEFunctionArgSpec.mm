@interface TSCEFunctionArgSpec
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1 modeValues:(const void *)self2 defaultModeIndex:(unsigned __int16)self3;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext unwrapThunk:(BOOL)thunk;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive typeOptions:(unsigned int)self0;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context unwrapThunk:(BOOL)thunk;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode typeOptions:(unsigned int)options;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive;
+ (TSCEFunctionArgSpec)argSpecWithType:(char)type typeOptions:(unsigned int)options;
+ (id)argSpecForFunctorWithNumLambdaIdentifiers:(unsigned __int16)identifiers;
+ (id)coerceValueToNumberOrDate:(id)date valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error;
- (BOOL)isModeEnabled:(unsigned __int16)enabled;
- (BOOL)isOptional;
- (BOOL)typeIsDisallowed:(char)disallowed value:(id)value;
- (TSCEFunctionArgSpec)init;
- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode;
- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode argumentContext:(int)context;
- (id).cxx_construct;
- (id)boundsCheckAndCoerce:(id)coerce valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error;
- (id)checkBoundsAndUnits:(id)units valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedArgumentNameForLocale:(id)locale;
- (id)localizedLambdaIdentifierForLambdaIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedModeMenuItemStringForModeIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedModeNameForModeIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedModeToolTipStringForModeIndex:(unsigned __int16)index locale:(id)locale;
- (id)localizedToolTipStringForLocale:(id)locale;
- (id)nativeSyntaxString;
- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error;
- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error fullRangeBeingAccessed:(const TSCERangeRef *)accessed;
- (id)valueForModeIndex:(unsigned __int16)index;
- (int64_t)indexForModeBool:(BOOL)bool locale:(id)locale;
- (int64_t)indexForModeNumber:(double)number locale:(id)locale;
- (int64_t)indexForModeString:(id)string locale:(id)locale;
- (int64_t)indexForModeValue:(id)value locale:(id)locale;
- (void)setArgumentContext:(int)context;
- (void)setDisallowArrayModeFanout:(BOOL)fanout;
- (void)setModeValues:(const void *)values;
- (void)setModeValues:(const void *)values defaultModeIndex:(unsigned __int16)index;
- (void)setupArgAccessor;
@end

@implementation TSCEFunctionArgSpec

- (TSCEFunctionArgSpec)init
{
  v8.receiver = self;
  v8.super_class = TSCEFunctionArgSpec;
  v2 = [(TSCEFunctionArgSpec *)&v8 init];
  v6 = v2;
  if (v2)
  {
    v2->_argumentType = 0;
    v2->_accessorMode = 1;
    v2->_rangeContext = 0;
    v2->_argumentContext = 0;
    v2->_typeOptions = 0;
    v2->_defaultModeIndex = -1;
    v2->_functionSpec = 0;
    v2->_argumentAccessor = 0;
    v2->_minValue = INFINITY;
    v2->_maxValue = INFINITY;
    v2->_index = 0;
    v2->_minInclusive = 0;
    v2->_maxInclusive = 0;
    v2->_unwrapThunk = 1;
    objc_msgSend_markAsPermanent(v2, v3, v4, v5);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEFunctionArgSpec alloc];
  v6 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v4, v5, self->_argumentType, self->_accessorMode, self->_argumentContext);
  objc_msgSend_setFunctionSpec_(v6, v7, self->_functionSpec, v8);
  objc_msgSend_setArgumentAccessor_(v6, v9, self->_argumentAccessor, v10);
  objc_msgSend_setIndex_(v6, v11, self->_index, v12);
  objc_msgSend_setRangeContext_(v6, v13, self->_rangeContext, v14);
  objc_msgSend_setMinValue_minInclusive_(v6, v15, self->_minInclusive, v16, self->_minValue);
  objc_msgSend_setMaxValue_maxInclusive_(v6, v17, self->_maxInclusive, v18, self->_maxValue);
  objc_msgSend_setTypeOptions_(v6, v19, self->_typeOptions, v20);
  objc_msgSend_setUnwrapThunk_(v6, v21, self->_unwrapThunk, v22);
  objc_msgSend_setModeValues_defaultModeIndex_(v6, v23, &self->_modeValues, self->_defaultModeIndex);
  v6[41] = self->_numLambdaIdentifiers;
  objc_msgSend_markAsPermanent(v6, v24, v25, v26);
  return v6;
}

- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode
{
  v6 = objc_msgSend_init(self, a2, type, *&mode);
  v9 = v6;
  if (v6)
  {
    *(v6 + 32) = type;
    *(v6 + 36) = mode;
    objc_msgSend_setDisallowArrayModeFanout_(v6, v7, mode == 4, v8);
    objc_msgSend_markAsPermanent(v9, v10, v11, v12);
  }

  return v9;
}

- (TSCEFunctionArgSpec)initWithArgumentType:(char)type accessorMode:(int)mode argumentContext:(int)context
{
  v8 = objc_msgSend_init(self, a2, type, *&mode);
  v11 = v8;
  if (v8)
  {
    *(v8 + 32) = type;
    *(v8 + 36) = mode;
    *(v8 + 44) = context;
    objc_msgSend_setDisallowArrayModeFanout_(v8, v9, mode == 4, v10);
    objc_msgSend_markAsPermanent(v11, v12, v13, v14);
  }

  return v11;
}

- (void)setDisallowArrayModeFanout:(BOOL)fanout
{
  if (fanout)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_typeOptions = self->_typeOptions & 0xFFFFF7FF | v3;
}

- (BOOL)typeIsDisallowed:(char)disallowed value:(id)value
{
  typeOptions = self->_typeOptions;
  if (typeOptions)
  {
    LOBYTE(v5) = 0;
    if (disallowed <= 3)
    {
      if (disallowed == 2)
      {
        v5 = (typeOptions >> 1) & 1;
      }

      else if (disallowed == 3)
      {
        v5 = (typeOptions >> 5) & 1;
      }
    }

    else
    {
      switch(disallowed)
      {
        case 4:
          v5 = (typeOptions >> 3) & 1;
          break;
        case 5:
          v5 = (typeOptions >> 2) & 1;
          break;
        case 10:
          v5 = self->_typeOptions;
          break;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)setArgumentContext:(int)context
{
  self->_argumentContext = context;
  if (self->_argumentAccessor)
  {
    objc_msgSend_setupArgAccessor(self, a2, *&context, v3);
  }
}

- (void)setupArgAccessor
{
  self->_argumentAccessor = TSCEArgumentAccessor::argAccessorForContext(self->_argumentContext, a2, v2, v3);
  if (objc_msgSend_accessorMode(self, v5, v6, v7) == 4)
  {
    if ((objc_msgSend_disallowArrayModeFanout(self, v8, v9, v10) & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEFunctionArgSpec setupArgAccessor]", v12);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 220, 0, "I'm pretty sure allow array mode-fanout cannot work with TSCERepeatingAccessorMode, they are incompatible.");

      v22 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v22, v19, v20, v21);
    }
  }

  else if (objc_msgSend_accessorMode(self, v8, v9, v10) == 3 && (objc_msgSend_disallowArrayModeFanout(self, v23, v24, v25) & 1) == 0)
  {
    functionSpec = self->_functionSpec;

    objc_msgSend_disallowArrayModeFanout(functionSpec, v26, v27, v28);
  }
}

- (void)setModeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  p_modeValues = &self->_modeValues;
  if (p_modeValues != values)
  {
    sub_22116CF34(p_modeValues, *values, *(values + 1), (*(values + 1) - *values) >> 3);
  }

  self->_defaultModeIndex = index;
}

- (BOOL)isOptional
{
  index = self->_index;
  v6 = objc_msgSend_nonRepeatingArgsAtEnd(self->_functionSpec, a2, v2, v3);
  v10 = objc_msgSend_repeatingGroupSize(self->_functionSpec, v7, v8, v9);
  v14 = objc_msgSend_numArguments(self->_functionSpec, v11, v12, v13);
  return (objc_msgSend_minArguments(self->_functionSpec, v15, v16, v17) - v6) <= index && v10 - v6 + v14 > index;
}

- (id)valueForModeIndex:(unsigned __int16)index
{
  indexCopy = index;
  if ((objc_msgSend_isMode(self, a2, index, v3) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFunctionArgSpec valueForModeIndex:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 251, 0, "Requesting value for non-mode argument.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (objc_msgSend_numModes(self, v6, v7, v8) <= indexCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEFunctionArgSpec valueForModeIndex:]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 252, 0, "Requesting value for out of bounds index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  begin = self->_modeValues.__begin_;
  if (indexCopy >= (self->_modeValues.var0 - begin))
  {
    sub_2211E631C();
  }

  v30 = begin[indexCopy];

  return v30;
}

- (int64_t)indexForModeValue:(id)value locale:(id)locale
{
  valueCopy = value;
  v10 = objc_msgSend_nativeType(valueCopy, v7, v8, v9);
  v14 = v10;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 <= 7 && ((1 << v10) & 0xA4) != 0)
  {
    v16 = objc_msgSend_numModes(self, v11, v12, v13);
    if (v16)
    {
      v15 = 0;
      v17 = v16;
      p_modeValues = &self->_modeValues;
      while (1)
      {
        if (v15 >= p_modeValues->var0 - p_modeValues->__begin_)
        {
          sub_2211E631C();
        }

        v19 = p_modeValues->__begin_[v15];
        v22 = v19;
        if (v14 == 7)
        {
          v23 = objc_msgSend_asStringWithLocale_(v19, v20, locale, v21);
          v26 = objc_msgSend_asStringWithLocale_(valueCopy, v24, locale, v25);
          v29 = objc_msgSend_caseInsensitiveCompare_(v26, v27, v23, v28);

          if (!v29)
          {
            break;
          }
        }

        isNativelyEqual = objc_msgSend_isNativelyEqual_(valueCopy, v20, v22, v21);

        if (isNativelyEqual)
        {
          goto LABEL_12;
        }

        if (v17 == ++v15)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_12:

  return v15;
}

- (int64_t)indexForModeString:(id)string locale:(id)locale
{
  v6 = objc_msgSend_stringValue_(TSCEStringValue, a2, string, locale);
  v8 = objc_msgSend_indexForModeValue_locale_(self, v7, v6, locale);

  return v8;
}

- (int64_t)indexForModeNumber:(double)number locale:(id)locale
{
  TSUDecimal::operator=();
  v8 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v6, &v12, v7);
  v10 = objc_msgSend_indexForModeValue_locale_(self, v9, v8, locale);

  return v10;
}

- (int64_t)indexForModeBool:(BOOL)bool locale:(id)locale
{
  v6 = objc_msgSend_BOOLValue_(TSCEBooleanValue, a2, bool, locale);
  v8 = objc_msgSend_indexForModeValue_locale_(self, v7, v6, locale);

  return v8;
}

- (BOOL)isModeEnabled:(unsigned __int16)enabled
{
  enabledCopy = enabled;
  v5 = objc_msgSend_functionIndex(self->_functionSpec, a2, enabled, v3);

  return MEMORY[0x2821F9670](TSCEFunctionSpec, sel_isModeEnabled_functionIndex_, enabledCopy, v5);
}

- (id)localizedArgumentNameForLocale:(id)locale
{
  index = self->_index;
  v6 = objc_msgSend_functionName(self->_functionSpec, a2, locale, v3);
  v8 = objc_msgSend_localizedNameForArgument_ofFunction_(locale, v7, index, v6);

  return v8;
}

- (id)localizedToolTipStringForLocale:(id)locale
{
  index = self->_index;
  v6 = objc_msgSend_functionName(self->_functionSpec, a2, locale, v3);
  v8 = objc_msgSend_localizedToolTipForArgument_ofFunction_(locale, v7, index, v6);

  return v8;
}

- (id)nativeSyntaxString
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_functionName(self->_functionSpec, a2, v2, v3);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"%C%@_ARGUMENT_%d%C", v8, 57344, v6, self->_index, 57344);

  return v9;
}

- (id)localizedModeNameForModeIndex:(unsigned __int16)index locale:(id)locale
{
  index = self->_index;
  v7 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale);
  v9 = objc_msgSend_localizedModeNameForArgument_modeIndex_ofFunction_(locale, v8, index, index, v7);

  return v9;
}

- (id)localizedModeToolTipStringForModeIndex:(unsigned __int16)index locale:(id)locale
{
  index = self->_index;
  v7 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale);
  v9 = objc_msgSend_localizedModeToolTipForArgument_modeIndex_ofFunction_(locale, v8, index, index, v7);

  return v9;
}

- (id)localizedModeMenuItemStringForModeIndex:(unsigned __int16)index locale:(id)locale
{
  indexCopy = index;
  index = self->_index;
  v8 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale);
  v10 = objc_msgSend_localizedModeNameForArgument_modeIndex_ofFunction_(locale, v9, index, indexCopy, v8);

  v13 = objc_msgSend_valueForModeIndex_(self, v11, indexCopy, v12);
  v16 = objc_msgSend_asStringWithLocale_(v13, v14, locale, v15);
  if (objc_msgSend_nativeType(v13, v17, v18, v19) == 7)
  {
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@", v21, v16);

    v16 = v22;
  }

  if (self->_defaultModeIndex == indexCopy)
  {
    v23 = qword_27CFB53C0;
    if (!qword_27CFB53C0)
    {
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = sub_2212F6DF8(v24);
      v27 = objc_msgSend_localizedStringForKey_value_table_(v25, v26, @"or omitted", &stru_2834BADA0, @"TSCalculationEngine");
      v30 = objc_msgSend_initWithFormat_(v24, v28, @" %@", v29, v27);
      v31 = qword_27CFB53C0;
      qword_27CFB53C0 = v30;

      v23 = qword_27CFB53C0;
    }

    v32 = objc_msgSend_stringByAppendingString_(v16, v20, v23, v21);

    v16 = v32;
  }

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@ (%@)", v21, v10, v16);

  return v33;
}

- (id)localizedLambdaIdentifierForLambdaIndex:(unsigned __int16)index locale:(id)locale
{
  index = self->_index;
  v7 = objc_msgSend_functionName(self->_functionSpec, a2, index, locale);
  v9 = objc_msgSend_localizedLambdaIdentifierForArgument_identifierIndex_ofFunction_(locale, v8, index, index, v7);

  return v9;
}

- (id)checkBoundsAndUnits:(id)units valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index
{
  typeCopy = type;
  unitsCopy = units;
  objc_msgSend_minValue(self, v13, v14, v15);
  v17 = v16;
  objc_msgSend_maxValue(self, v18, v19, v20);
  v22 = v21;
  v26 = objc_msgSend_disallowCurrency(self, v23, v24, v25);
  v30 = objc_msgSend_disallowDuration(self, v27, v28, v29);
  v34 = v30;
  v35 = v17 != INFINITY;
  if (v22 != INFINITY)
  {
    v35 = 1;
  }

  if (((v35 | v26 | v30) & 1) == 0)
  {
    v43 = objc_msgSend_argumentType(self, v31, v32, v33);
    v44 = 0;
    if (typeCopy != 5 && v43 != 15)
    {
      v92 = 0;
      v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(unitsCopy, v42, context, spec, index, &v92);
      v44 = v92;
    }

    v46 = v44;
    goto LABEL_78;
  }

  v94 = 0;
  v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(unitsCopy, v31, context, spec, index, &v94);
  v37 = v94;
  if (v37)
  {
    v41 = v37;

    goto LABEL_79;
  }

  hasUnits = objc_msgSend_hasUnits(v36, v38, v39, v40);
  if (hasUnits)
  {
    v51 = objc_msgSend_dimension(v36, v47, v48, v49);
    if (v51 != 4)
    {

      goto LABEL_64;
    }
  }

  v93._decimal.w[0] = objc_msgSend_decimalRepresentation(v36, v47, v48, v49);
  v93._decimal.w[1] = v52;
  TSUDecimal::doubleValue(&v93);
  v54 = v53;

  if (!objc_msgSend_integerOnly(self, v55, v56, v57))
  {
LABEL_28:
    if (v17 == INFINITY || v22 == INFINITY)
    {
      if (v17 == INFINITY || v22 != INFINITY)
      {
        v51 = 4;
        if (v17 != INFINITY || v22 == INFINITY)
        {
LABEL_64:
          if ((v26 | v34) & hasUnits)
          {
            if (v51 == 4)
            {
              v85 = v26;
            }

            else
            {
              v85 = 0;
            }

            if (v85 == 1)
            {
              v86 = objc_msgSend_functionName(spec, v58, v59, v60);
              v88 = objc_msgSend_currencyNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v87, v86, (index + 1));
LABEL_75:
              v84 = v88;

              goto LABEL_77;
            }

            if (v51)
            {
              v89 = 0;
            }

            else
            {
              v89 = v34;
            }

            if (v89 == 1)
            {
              v86 = objc_msgSend_functionName(spec, v58, v59, v60);
              v88 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v90, v86, (index + 1));
              goto LABEL_75;
            }
          }

          v84 = 0;
          goto LABEL_77;
        }

        if (objc_msgSend_maxInclusive(self, v58, v59, v60))
        {
          if (v54 <= v22)
          {
            goto LABEL_64;
          }

          v74 = objc_msgSend_functionName(spec, v58, v59, v60);
          v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v79, (index + 1), v74, 1, v22);
        }

        else
        {
          if (v54 < v22)
          {
            goto LABEL_64;
          }

          v74 = objc_msgSend_functionName(spec, v58, v59, v60);
          v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v83, (index + 1), v74, 0, v22);
        }

        goto LABEL_62;
      }

      if (objc_msgSend_minInclusive(self, v58, v59, v60))
      {
        if (v54 >= v17)
        {
          goto LABEL_63;
        }

        v74 = objc_msgSend_functionName(spec, v58, v59, v60);
        v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v77, (index + 1), v74, 1, v17);
      }

      else
      {
        if (v54 > v17)
        {
          goto LABEL_63;
        }

        v74 = objc_msgSend_functionName(spec, v58, v59, v60);
        v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v81, (index + 1), v74, 0, v17);
      }
    }

    else
    {
      if (objc_msgSend_minInclusive(self, v58, v59, v60) && objc_msgSend_maxInclusive(self, v58, v59, v60))
      {
        if (v54 < v17 || v54 > v22)
        {
          v74 = objc_msgSend_functionName(spec, v58, v59, v60);
          v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v75, (index + 1), v74, 1, 1, v17, v22);
          goto LABEL_62;
        }

LABEL_63:
        v51 = 4;
        goto LABEL_64;
      }

      if (objc_msgSend_minInclusive(self, v58, v59, v60) && (objc_msgSend_maxInclusive(self, v58, v59, v60) & 1) == 0)
      {
        if (v54 >= v17 && v54 < v22)
        {
          goto LABEL_63;
        }

        v74 = objc_msgSend_functionName(spec, v58, v59, v60);
        v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v82, (index + 1), v74, 1, 0, v17, v22);
      }

      else if ((objc_msgSend_minInclusive(self, v58, v59, v60) & 1) != 0 || !objc_msgSend_maxInclusive(self, v58, v59, v60))
      {
        if (v54 > v17 && v54 < v22)
        {
          goto LABEL_63;
        }

        v74 = objc_msgSend_functionName(spec, v58, v59, v60);
        v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v80, (index + 1), v74, 0, 0, v17, v22);
      }

      else
      {
        if (v54 > v17 && v54 <= v22)
        {
          goto LABEL_63;
        }

        v74 = objc_msgSend_functionName(spec, v58, v59, v60);
        v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v78, (index + 1), v74, 0, 1, v17, v22);
      }
    }

LABEL_62:
    v84 = v76;

    if (v84)
    {
LABEL_77:
      v46 = v84;
      goto LABEL_78;
    }

    goto LABEL_63;
  }

  if (v17 == INFINITY)
  {
    goto LABEL_27;
  }

  if (objc_msgSend_minInclusive(self, v58, v59, v60))
  {
    if (v54 < v17)
    {
      v64 = objc_msgSend_functionName(spec, v58, v59, v60);
      if (v22 == INFINITY)
      {
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v61, (index + 1), v64, 1, v17);
      }

      else
      {
        v65 = objc_msgSend_maxInclusive(self, v61, v62, v63);
        objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v66, (index + 1), v64, 1, v65, v17, v22);
      }

      goto LABEL_18;
    }

LABEL_27:
    v54 = trunc(v54);
    goto LABEL_28;
  }

  if (v54 > v17)
  {
    goto LABEL_27;
  }

  v64 = objc_msgSend_functionName(spec, v58, v59, v60);
  if (v22 == INFINITY)
  {
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v68, (index + 1), v64, 0, v17);
  }

  else
  {
    v71 = objc_msgSend_maxInclusive(self, v68, v69, v70);
    objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v72, (index + 1), v64, 0, v71, v17, v22);
  }

  v67 = LABEL_18:;
  v73 = v67;

  if (!v73)
  {
    goto LABEL_27;
  }

  v46 = v73;
LABEL_78:
  v41 = v46;
LABEL_79:

  return v41;
}

+ (id)coerceValueToNumberOrDate:(id)date valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error
{
  typeCopy = type;
  dateCopy = date;
  v16 = dateCopy;
  if (typeCopy > 0x10 || (v17 = dateCopy, ((1 << typeCopy) & 0x1002B) == 0))
  {
    v20 = objc_msgSend_argumentSpecForIndex_(spec, v14, index, v15);
    if (!objc_msgSend_isOptional(v20, v21, v22, v23) || (v17 = v16, (objc_msgSend_isTokenOrEmptyArg(v16, v24, v25, v26) & 1) == 0))
    {
      v35 = 0;
      v27 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v16, v24, context, spec, index, &v35);
      v29 = TSCEArgumentAccessor::TSUFormattedDateValueFromDateString(v27, context, v28);
      if (objc_msgSend_isNil(v29, v30, v31, v32))
      {
        v34 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v33, context, spec, index, error);
      }

      else
      {
        v34 = v29;
      }

      v17 = v34;
    }
  }

  v18 = v17;

  return v17;
}

- (id)boundsCheckAndCoerce:(id)coerce valueDeepType:(char)type context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index outError:(id *)error
{
  typeCopy = type;
  coerceCopy = coerce;
  v18 = coerceCopy;
  if (coerceCopy && (objc_msgSend_isNil(coerceCopy, v15, v16, v17) & 1) == 0)
  {
    v22 = objc_msgSend_argumentType(self, v19, v20, v21);
    if (v22 == 8)
    {
      v24 = objc_msgSend_coerceValueToNumberOrDate_valueDeepType_context_functionSpec_argIndex_outError_(TSCEFunctionArgSpec, v23, v18, typeCopy, context, spec, index, error);

      v18 = v24;
    }

    else if (v22 == 5)
    {
      *error = objc_msgSend_checkBoundsAndUnits_valueDeepType_context_functionSpec_argIndex_(self, v23, v18, typeCopy, context, spec, index);
    }
  }

  return v18;
}

- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error
{
  v10 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v11 = 0;
  v12 = 0;
  v8 = objc_msgSend_typeCheckAndCoerce_context_functionSpec_argIndex_fromInsideArray_outError_fullRangeBeingAccessed_(self, a2, coerce, context, spec, index, array, error, &v10);

  return v8;
}

- (id)typeCheckAndCoerce:(id)coerce context:(id)context functionSpec:(id)spec argIndex:(unint64_t)index fromInsideArray:(BOOL)array outError:(id *)error fullRangeBeingAccessed:(const TSCERangeRef *)accessed
{
  arrayCopy = array;
  argumentContext = self->_argumentContext;
  if ((argumentContext & 0xFFFFFFFE) != 4)
  {
    if (sub_2216F754C(self, coerce, context, context))
    {
LABEL_8:
      v17 = objc_msgSend_nilValue(TSCENilValue, a2, coerce, context);
      goto LABEL_17;
    }

    argumentContext = self->_argumentContext;
  }

  switch(argumentContext)
  {
    case 0:
    case 14:
    case 15:
      v17 = sub_22125B3AC(self, coerce, context, spec, index, 0, error);
      break;
    case 1:
      v17 = sub_22125B498(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 2:
      v17 = sub_22125B6D4(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 3:
      v17 = sub_22125BA08(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 4:
      v17 = sub_22125C0A8(self, coerce, context, spec, index, arrayCopy, error, accessed);
      break;
    case 5:
      v17 = sub_22125BCF8(self, coerce, context, spec, index, arrayCopy, error, accessed);
      break;
    case 6:
    case 7:
      v17 = sub_22125C434(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 8:
    case 9:
      v17 = sub_22125C95C(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 10:
    case 11:
      v17 = sub_22125CCD0(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 12:
      v17 = sub_22125D204(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 13:
      v17 = sub_22125D324(self, coerce, context, spec, index, arrayCopy, error);
      break;
    case 16:
      v17 = sub_22125D468(self, coerce, context, spec, index, 0, error);
      break;
    default:
      goto LABEL_8;
  }

LABEL_17:

  return v17;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type
{
  typeCopy = type;
  v4 = [TSCEFunctionArgSpec alloc];
  v6 = objc_msgSend_initWithArgumentType_accessorMode_(v4, v5, typeCopy, 1);

  return v6;
}

+ (id)argSpecForFunctorWithNumLambdaIdentifiers:(unsigned __int16)identifiers
{
  result = objc_msgSend_argSpecWithType_(TSCEFunctionArgSpec, a2, 19, v3);
  *(result + 41) = identifiers;
  return result;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode
{
  v4 = *&mode;
  typeCopy = type;
  v6 = [TSCEFunctionArgSpec alloc];
  v8 = objc_msgSend_initWithArgumentType_accessorMode_(v6, v7, typeCopy, v4);

  return v8;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type typeOptions:(unsigned int)options
{
  v4 = *&options;
  typeCopy = type;
  v6 = [TSCEFunctionArgSpec alloc];
  v8 = objc_msgSend_initWithArgumentType_accessorMode_(v6, v7, typeCopy, 1);
  objc_msgSend_setTypeOptions_(v8, v9, v4, v10);

  return v8;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context
{
  v5 = *&context;
  v6 = *&mode;
  typeCopy = type;
  v8 = [TSCEFunctionArgSpec alloc];
  v10 = objc_msgSend_initWithArgumentType_accessorMode_(v8, v9, typeCopy, v6);
  objc_msgSend_setArgumentContext_(v10, v11, v5, v12);

  return v10;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive
{
  inclusiveCopy = inclusive;
  v7 = objc_msgSend_argSpecWithType_(self, a2, type, inclusive);
  objc_msgSend_setMinValue_minInclusive_(v7, v8, inclusiveCopy, v9, value);

  return v7;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  v11 = objc_msgSend_argSpecWithType_(self, a2, type, inclusive);
  objc_msgSend_setMinValue_minInclusive_(v11, v12, inclusiveCopy, v13, value);
  objc_msgSend_setMaxValue_maxInclusive_(v11, v14, maxInclusiveCopy, v15, maxValue);

  return v11;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  v6 = *&mode;
  typeCopy = type;
  v8 = [TSCEFunctionArgSpec alloc];
  v10 = objc_msgSend_initWithArgumentType_accessorMode_(v8, v9, typeCopy, v6);
  objc_msgSend_setRangeContext_(v10, v11, contextCopy, v12);

  return v10;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context unwrapThunk:(BOOL)thunk
{
  thunkCopy = thunk;
  contextCopy = context;
  v8 = *&mode;
  typeCopy = type;
  v10 = [TSCEFunctionArgSpec alloc];
  v12 = objc_msgSend_initWithArgumentType_accessorMode_(v10, v11, typeCopy, v8);
  objc_msgSend_setRangeContext_(v12, v13, contextCopy, v14);
  objc_msgSend_setUnwrapThunk_(v12, v15, thunkCopy, v16);
  if (!thunkCopy)
  {
    v20 = objc_msgSend_typeOptions(v12, v17, v18, v19);
    objc_msgSend_setTypeOptions_(v12, v21, v20 | 0x40u, v22);
  }

  return v12;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext
{
  v6 = *&argumentContext;
  contextCopy = context;
  v8 = *&mode;
  typeCopy = type;
  v10 = [TSCEFunctionArgSpec alloc];
  v12 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v10, v11, typeCopy, v8, v6);
  objc_msgSend_setRangeContext_(v12, v13, contextCopy, v14);

  return v12;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext unwrapThunk:(BOOL)thunk
{
  thunkCopy = thunk;
  v8 = *&argumentContext;
  contextCopy = context;
  v10 = *&mode;
  typeCopy = type;
  v12 = [TSCEFunctionArgSpec alloc];
  v14 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v12, v13, typeCopy, v10, v8);
  objc_msgSend_setRangeContext_(v14, v15, contextCopy, v16);
  objc_msgSend_setUnwrapThunk_(v14, v17, thunkCopy, v18);
  if (!thunkCopy)
  {
    v22 = objc_msgSend_typeOptions(v14, v19, v20, v21);
    objc_msgSend_setTypeOptions_(v14, v23, v22 | 0x40u, v24);
  }

  return v14;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode typeOptions:(unsigned int)options
{
  v5 = *&options;
  v6 = *&mode;
  typeCopy = type;
  v8 = [TSCEFunctionArgSpec alloc];
  v10 = objc_msgSend_initWithArgumentType_accessorMode_(v8, v9, typeCopy, v6);
  objc_msgSend_setTypeOptions_(v10, v11, v5, v12);

  return v10;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode argumentContext:(int)context typeOptions:(unsigned int)options
{
  v6 = *&context;
  v7 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v7, v8, v6, v9);

  return v7;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context typeOptions:(unsigned int)options
{
  contextCopy = context;
  v7 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setRangeContext_(v7, v8, contextCopy, v9);

  return v7;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  indexCopy = index;
  contextCopy = context;
  v10 = *&mode;
  typeCopy = type;
  v12 = [TSCEFunctionArgSpec alloc];
  v14 = objc_msgSend_initWithArgumentType_accessorMode_(v12, v13, typeCopy, v10);
  objc_msgSend_setRangeContext_(v14, v15, contextCopy, v16);
  objc_msgSend_setModeValues_defaultModeIndex_(v14, v17, values, indexCopy);

  return v14;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  indexCopy = index;
  v10 = *&argumentContext;
  contextCopy = context;
  v12 = *&mode;
  typeCopy = type;
  v14 = [TSCEFunctionArgSpec alloc];
  v16 = objc_msgSend_initWithArgumentType_accessorMode_argumentContext_(v14, v15, typeCopy, v12, v10);
  objc_msgSend_setRangeContext_(v16, v17, contextCopy, v18);
  objc_msgSend_setModeValues_defaultModeIndex_(v16, v19, values, indexCopy);

  return v16;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options
{
  v7 = *&argumentContext;
  contextCopy = context;
  v9 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v9, v10, v7, v11);
  objc_msgSend_setRangeContext_(v9, v12, contextCopy, v13);

  return v9;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)maxInclusive typeOptions:(unsigned int)self0
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  contextCopy = context;
  v15 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setRangeContext_(v15, v16, contextCopy, v17);
  objc_msgSend_setMinValue_minInclusive_(v15, v18, inclusiveCopy, v19, value);
  objc_msgSend_setMaxValue_maxInclusive_(v15, v20, maxInclusiveCopy, v21, maxValue);

  return v15;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options
{
  inclusiveCopy = inclusive;
  contextCopy = context;
  v11 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setRangeContext_(v11, v12, contextCopy, v13);
  objc_msgSend_setMinValue_minInclusive_(v11, v14, inclusiveCopy, v15, value);

  return v11;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  v15 = *&argumentContext;
  contextCopy = context;
  v17 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, options);
  objc_msgSend_setArgumentContext_(v17, v18, v15, v19);
  objc_msgSend_setRangeContext_(v17, v20, contextCopy, v21);
  objc_msgSend_setMinValue_minInclusive_(v17, v22, inclusiveCopy, v23, value);
  objc_msgSend_setMaxValue_maxInclusive_(v17, v24, maxInclusiveCopy, v25, maxValue);

  return v17;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive typeOptions:(unsigned int)options
{
  inclusiveCopy = inclusive;
  v11 = *&argumentContext;
  contextCopy = context;
  v13 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v13, v14, v11, v15);
  objc_msgSend_setRangeContext_(v13, v16, contextCopy, v17);
  objc_msgSend_setMinValue_minInclusive_(v13, v18, inclusiveCopy, v19, value);

  return v13;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext typeOptions:(unsigned int)options modeValues:(const void *)values defaultModeIndex:(unsigned __int16)index
{
  v10 = *&argumentContext;
  contextCopy = context;
  v12 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, *&options);
  objc_msgSend_setArgumentContext_(v12, v13, v10, v14);
  objc_msgSend_setRangeContext_(v12, v15, contextCopy, v16);
  objc_msgSend_setModeValues_defaultModeIndex_(v12, v17, values, index);

  return v12;
}

+ (TSCEFunctionArgSpec)argSpecWithType:(char)type accessorMode:(int)mode rangeContext:(unsigned __int8)context argumentContext:(int)argumentContext minValue:(double)value minInclusive:(BOOL)inclusive maxValue:(double)maxValue maxInclusive:(BOOL)self0 typeOptions:(unsigned int)self1 modeValues:(const void *)self2 defaultModeIndex:(unsigned __int16)self3
{
  maxInclusiveCopy = maxInclusive;
  inclusiveCopy = inclusive;
  v17 = *&argumentContext;
  contextCopy = context;
  v19 = objc_msgSend_argSpecWithType_accessorMode_typeOptions_(TSCEFunctionArgSpec, a2, type, *&mode, options);
  objc_msgSend_setArgumentContext_(v19, v20, v17, v21);
  objc_msgSend_setRangeContext_(v19, v22, contextCopy, v23);
  objc_msgSend_setMinValue_minInclusive_(v19, v24, inclusiveCopy, v25, value);
  objc_msgSend_setMaxValue_maxInclusive_(v19, v26, maxInclusiveCopy, v27, maxValue);
  objc_msgSend_setModeValues_defaultModeIndex_(v19, v28, values, index);

  return v19;
}

- (void)setModeValues:(const void *)values
{
  p_modeValues = &self->_modeValues;
  if (p_modeValues != values)
  {
    sub_22116CF34(p_modeValues, *values, *(values + 1), (*(values + 1) - *values) >> 3);
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

@end