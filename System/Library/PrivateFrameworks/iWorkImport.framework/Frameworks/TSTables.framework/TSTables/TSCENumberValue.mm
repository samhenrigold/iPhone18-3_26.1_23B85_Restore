@interface TSCENumberValue
+ (id)makeDurationWithWeeks:(double)weeks days:(double)days hours:(double)hours minutes:(double)minutes seconds:(double)seconds milliseconds:(double)milliseconds;
+ (id)numberWithDecimal:(const TSUDecimal *)decimal;
+ (id)numberWithDecimal:(const TSUDecimal *)decimal baseUnit:(unsigned __int16)unit;
+ (id)numberWithDecimal:(const TSUDecimal *)decimal format:(const TSCEFormat *)format;
+ (id)numberWithDecimal:(const TSUDecimal *)decimal format:(const TSCEFormat *)format baseUnit:(unsigned __int16)unit;
+ (id)unitlessZero;
+ (id)zero;
- (BOOL)areCurrenciesMatched:(id)matched;
- (BOOL)asBoolean;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (BOOL)dimensionsMatchModuloCurrency:(id)currency;
- (BOOL)eq:(id)eq outError:(id *)error;
- (BOOL)ge:(id)ge;
- (BOOL)isDuration;
- (BOOL)isUnitlessZero;
- (BOOL)le:(id)le;
- (BOOL)ne:(id)ne outError:(id *)error;
- (TSCENumberValue)init;
- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)decimal baseUnit:(unsigned __int16)unit isUnitlessZero:(BOOL)zero;
- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)decimal format:(const TSCEFormat *)format baseUnit:(unsigned __int16)unit isUnitlessZero:(BOOL)zero;
- (TSUDecimal)decimalRepresentation;
- (TSUDecimal)p_transformDurationNumberWithDecimal:(const TSUDecimal *)decimal;
- (double)doubleRepresentation;
- (id)abs;
- (id)acos;
- (id)acosh;
- (id)add:(id)add functionSpec:(id)spec outError:(id *)error;
- (id)add_nothrow:(id)add_nothrow;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asStringWithLocale:(id)locale;
- (id)asin;
- (id)asinh;
- (id)atan;
- (id)atan2:(id)atan2 outError:(id *)error;
- (id)atanh;
- (id)besselj:(id)besselj;
- (id)bessely:(id)bessely;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)ceil;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cos;
- (id)cosh;
- (id)decrement;
- (id)description;
- (id)divide:(id)divide outError:(id *)error;
- (id)erf;
- (id)erfc;
- (id)errorForDuration:(id)duration argumentIndex:(int)index;
- (id)exp;
- (id)floor;
- (id)increment;
- (id)lgamma;
- (id)log;
- (id)log10;
- (id)max:(id)max;
- (id)min:(id)min;
- (id)mod:(id)mod;
- (id)multiply:(id)multiply context:(id)context;
- (id)negate;
- (id)numberWithDecimal:(const TSUDecimal *)decimal;
- (id)percent;
- (id)power:(id)power outError:(id *)error;
- (id)round;
- (id)sin;
- (id)sinh;
- (id)sqrt;
- (id)subtract:(id)subtract functionSpec:(id)spec outError:(id *)error;
- (id)tan;
- (id)tanh;
- (id)trunc;
- (id)variantWithDecimal:(const TSUDecimal *)decimal;
- (int64_t)compare:(id)compare outError:(id *)error;
- (int64_t)stringBasedCompare:(id)compare locale:(id)locale outError:(id *)error;
- (unint64_t)hash;
@end

@implementation TSCENumberValue

- (TSCENumberValue)init
{
  v4.receiver = self;
  v4.super_class = TSCENumberValue;
  v2 = [(TSCEValue *)&v4 init];
  if (v2)
  {
    TSUDecimal::operator=();
    v2->_baseUnit = 0;
    v2->_isUnitlessZero = 0;
  }

  return v2;
}

- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)decimal baseUnit:(unsigned __int16)unit isUnitlessZero:(BOOL)zero
{
  zeroCopy = zero;
  unitCopy = unit;
  if (zero)
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator==() & 1) == 0)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue initWithDecimal:baseUnit:isUnitlessZero:]", v9);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 55, 0, "can't make a unitless zero with a number other than zero!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    }

    if (unitCopy)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue initWithDecimal:baseUnit:isUnitlessZero:]", v9);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 56, 0, "can't make a unitless zero with a unit!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1057;
  v33 = 1;
  v34 = -50266102;
  v35 = 253;
  return objc_msgSend_initWithDecimal_format_baseUnit_isUnitlessZero_(self, a2, decimal, &v29, unitCopy, zeroCopy);
}

- (TSCENumberValue)initWithDecimal:(const TSUDecimal *)decimal format:(const TSCEFormat *)format baseUnit:(unsigned __int16)unit isUnitlessZero:(BOOL)zero
{
  v10.receiver = self;
  v10.super_class = TSCENumberValue;
  result = [(TSCEValue *)&v10 initWithTSCEFormat:format];
  if (result)
  {
    result->_decimal = *decimal;
    result->_baseUnit = unit;
    result->_isUnitlessZero = zero;
  }

  return result;
}

- (BOOL)isUnitlessZero
{
  isUnitlessZero = self->_isUnitlessZero;
  if (!isUnitlessZero)
  {
    if (self->_baseUnit)
    {
      return 0;
    }

    else if (TSUDecimal::isZero(&self->_decimal))
    {
      isUnitlessZero = 1;
      self->_isUnitlessZero = 1;
    }

    else
    {
      return self->_isUnitlessZero;
    }
  }

  return isUnitlessZero;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCENumberValue;
  result = [(TSCEValue *)&v5 copyWithZone:0];
  *(result + 4) = self->_decimal;
  *(result + 40) = self->_baseUnit;
  *(result + 82) = self->_isUnitlessZero;
  return result;
}

- (unint64_t)hash
{
  if (self->_isUnitlessZero)
  {
    return 0;
  }

  TSUDecimal::doubleValue(&self->_decimal);
  if (v3 == 0.0)
  {
    return 0;
  }

  else
  {
    return *&v3;
  }
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  if (objc_msgSend_isDuration(self, a2, locale, v3))
  {
    objc_msgSend_rawTimeIntervalValue(self, v6, v7, v8);
    v9 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v12 = objc_msgSend_initWithDecimal_(v9, v10, v30, v11);
    v15 = objc_msgSend_asStringWithLocale_(v12, v13, locale, v14);
    objc_msgSend_stringByAppendingString_(@"dur_", v16, v15, v17);
  }

  else
  {
    v18 = [TSCENumberValue alloc];
    v30[0] = objc_msgSend_decimalRepresentation(self, v19, v20, v21);
    v30[1] = v22;
    v12 = objc_msgSend_initWithDecimal_(v18, v22, v30, v23);
    v15 = objc_msgSend_asStringWithLocale_(v12, v24, locale, v25);
    objc_msgSend_stringByAppendingString_(@"num_", v26, v15, v27);
  }
  v28 = ;

  return v28;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asNumber:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 135, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  return self;
}

- (id)asStringWithLocale:(id)locale
{
  if (!locale)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asStringWithLocale:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 140, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  objc_msgSend_format(self, a2, locale, v3);
  v18 = 0.0;
  if ((TSUDecimal::isZero(&self->_decimal) & 1) == 0)
  {
    TSUDecimal::doubleValue(&self->_decimal);
    v18 = v19;
  }

  if ((v43._formatType & 0xFFFFFFFC) == 0x100)
  {
    if (!objc_msgSend_hasUnits(self, v15, v16, v17) || objc_msgSend_dimension(self, v15, v16, v17) == 4)
    {
LABEL_13:
      objc_msgSend_format(self, v15, v16, v17);
      v24 = TSCEFormat::tskFormat(&v43, v21, v22, v23);
      v27 = objc_msgSend_stringFromDouble_locale_(v24, v25, locale, v26, v18);
      goto LABEL_14;
    }
  }

  else if (v43._formatType - 262 <= 0xC && ((1 << (LOBYTE(v43._formatType) - 6)) & 0x11A1) != 0)
  {
    goto LABEL_13;
  }

  if (objc_msgSend_isDuration(self, v15, v16, v17))
  {
    objc_msgSend_rawTimeIntervalValue(self, v30, v31, v32);
    if (v43._formatType == 268)
    {
      objc_msgSend_format(self, v33, v34, v35);
      if (TSCEFormat::durationFormat(&v43, v37, v38, v39))
      {
        TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
        TSUDurationFormatterMaxDurationUnitInUnits();
        TSUDurationFormatterMinDurationUnitInUnits();
      }

      v24 = TSUDurationFormatterFormatFromDurationUnits();
      v27 = TSUDurationFormatterStringFromTimeIntervalWithFormat();
    }

    else
    {
      v42 = sub_221387C00(v36);
      sub_221387CBC(v42);
      TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
      v24 = TSUDurationFormatterFormatFromDurationUnits();
      v27 = TSUDurationFormatterStringFromTimeIntervalWithFormat();
    }
  }

  else
  {
    v24 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v30, 256, locale);
    v27 = objc_msgSend_stringFromDouble_locale_(v24, v40, locale, v41, v18);
  }

LABEL_14:
  v28 = v27;

  return v28;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 193, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v18 = objc_msgSend_locale(string, a2, string, spec, *&index);

  return objc_msgSend_asStringWithLocale_(self, v17, v18, v19);
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCENumberValue asBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 202, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (objc_msgSend_hasUnits(self, a2, boolean, spec) && objc_msgSend_dimension(self, v20, v21, v22) != 4)
  {
    *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v23, self, boolean, spec, v7);
  }

  return TSUDecimal::isZero(&self->_decimal) ^ 1;
}

- (BOOL)asBoolean
{
  if (objc_msgSend_hasUnits(self, a2, v2, v3) && objc_msgSend_dimension(self, v5, v6, v7) != 4)
  {
    return 0;
  }

  else
  {
    return TSUDecimal::isZero(&self->_decimal) ^ 1;
  }
}

- (BOOL)isDuration
{
  hasUnits = objc_msgSend_hasUnits(self, a2, v2, v3);
  if (hasUnits)
  {
    LOBYTE(hasUnits) = objc_msgSend_dimension(self, v6, v7, v8) == 0;
  }

  return hasUnits;
}

- (TSUDecimal)p_transformDurationNumberWithDecimal:(const TSUDecimal *)decimal
{
  v6 = *decimal;
  baseUnit = self->_baseUnit;
  if (baseUnit <= 3)
  {
    if (baseUnit != 2 && baseUnit != 3)
    {
      goto LABEL_9;
    }

LABEL_8:
    TSUDecimal::operator=();
    TSUDecimal::operator*=();
    goto LABEL_9;
  }

  if (baseUnit == 4 || baseUnit == 5)
  {
    goto LABEL_8;
  }

  if (baseUnit == 7)
  {
    TSUDecimal::operator=();
    TSUDecimal::operator/=();
  }

LABEL_9:
  v5 = v6._decimal.w[1];
  v4 = v6._decimal.w[0];
  result._decimal.w[1] = v5;
  result._decimal.w[0] = v4;
  return result;
}

- (id)variantWithDecimal:(const TSUDecimal *)decimal
{
  if (objc_msgSend_hasUnits(self, a2, decimal, v3))
  {
    v22[0] = objc_msgSend_p_transformDurationNumberWithDecimal_(self, v6, decimal, v7);
    v22[1] = v8;
    v9 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v10, v11, v12);
    v14 = objc_msgSend_initWithDecimal_format_baseUnit_(v9, v13, v22, v21, self->_baseUnit);
  }

  else
  {
    v15 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v16, v17, v18);
    v14 = objc_msgSend_initWithDecimal_format_(v15, v19, decimal, v21);
  }

  return v14;
}

- (id)numberWithDecimal:(const TSUDecimal *)decimal
{
  v5 = [TSCENumberValue alloc];
  objc_msgSend_format(self, v6, v7, v8);
  v10 = objc_msgSend_initWithDecimal_format_baseUnit_(v5, v9, decimal, &v12, self->_baseUnit);

  return v10;
}

- (BOOL)eq:(id)eq outError:(id *)error
{
  eqCopy = eq;
  if (!error)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue eq:outError:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 285, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (objc_msgSend_hasUnits(self, v6, v7, v8))
  {
    if (objc_msgSend_hasUnits(eqCopy, v19, v20, v21))
    {
      v25 = objc_msgSend_dimension(self, v22, v23, v24);
      if (v25 == objc_msgSend_dimension(eqCopy, v26, v27, v28))
      {
        if (v25 == 4)
        {
          v32 = objc_msgSend_unit(self, v29, v30, v31);
          if (v32 != objc_msgSend_unit(eqCopy, v33, v34, v35))
          {
            objc_msgSend_invalidCurrencyComparisonError(TSCEError, v36, v37, v38);
            *error = v51 = 0;
            goto LABEL_17;
          }
        }

        isZero = TSUDecimal::operator==();
        goto LABEL_13;
      }

LABEL_16:
      v51 = 0;
      goto LABEL_17;
    }

    isZero = objc_msgSend_eq_outError_(eqCopy, v22, self, error);
LABEL_13:
    v51 = isZero;
    goto LABEL_17;
  }

  if (objc_msgSend_hasUnits(eqCopy, v19, v20, v21) && objc_msgSend_dimension(eqCopy, v40, v41, v42) != 4)
  {
    if (!TSUDecimal::isZero(&self->_decimal))
    {
      goto LABEL_16;
    }

    v58._decimal.w[0] = objc_msgSend_decimalRepresentation(eqCopy, v52, v53, v54);
    v58._decimal.w[1] = v55;
    isZero = TSUDecimal::isZero(&v58);
    goto LABEL_13;
  }

  v58._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v40, v41, v42);
  v58._decimal.w[1] = v43;
  TSUDecimal::doubleValue(&v58);
  v45 = v44;
  v57._decimal.w[0] = objc_msgSend_decimalRepresentation(eqCopy, v46, v47, v48);
  v57._decimal.w[1] = v49;
  TSUDecimal::doubleValue(&v57);
  v51 = v45 == v50;
LABEL_17:

  return v51;
}

- (BOOL)ne:(id)ne outError:(id *)error
{
  neCopy = ne;
  if (!error)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue ne:outError:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 317, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (objc_msgSend_hasUnits(self, v6, v7, v8))
  {
    LODWORD(self) = objc_msgSend_eq_outError_(self, v19, neCopy, error) ^ 1;
  }

  else if (objc_msgSend_hasUnits(neCopy, v19, v20, v21))
  {
    LOBYTE(self) = 1;
  }

  else
  {
    v35._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v22, v23, v24);
    v35._decimal.w[1] = v25;
    TSUDecimal::doubleValue(&v35);
    v27 = v26;
    v34._decimal.w[0] = objc_msgSend_decimalRepresentation(neCopy, v28, v29, v30);
    v34._decimal.w[1] = v31;
    TSUDecimal::doubleValue(&v34);
    LOBYTE(self) = v27 != v32;
  }

  return self;
}

- (BOOL)ge:(id)ge
{
  geCopy = ge;
  objc_msgSend_decimalRepresentation(self, v5, v6, v7);
  objc_msgSend_decimalRepresentation(geCopy, v8, v9, v10);
  if (TSUDecimal::operator<=())
  {
    v11 = TSUDecimal::operator==();
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)le:(id)le
{
  leCopy = le;
  objc_msgSend_decimalRepresentation(self, v5, v6, v7);
  objc_msgSend_decimalRepresentation(leCopy, v8, v9, v10);
  LOBYTE(self) = TSUDecimal::operator<=();

  return self;
}

- (int64_t)stringBasedCompare:(id)compare locale:(id)locale outError:(id *)error
{
  compareCopy = compare;
  localeCopy = locale;
  if (!error)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCENumberValue stringBasedCompare:locale:outError:]", v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 360, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  if (!objc_msgSend_hasUnits(compareCopy, v9, v10, v11) || (objc_msgSend_hasUnits(self, v22, v23, v24) & 1) != 0)
  {
    selfCopy = self;
    if (!objc_msgSend_hasUnits(selfCopy, v27, v28, v29) || (objc_msgSend_isUnitlessZero(compareCopy, v30, v31, v32) & 1) != 0)
    {
      goto LABEL_7;
    }

    v40 = objc_msgSend_dimension(selfCopy, v33, v34, v35);
    hasUnits = objc_msgSend_hasUnits(compareCopy, v41, v42, v43);
    v48 = v40 == 4 ? hasUnits : 1;
    if ((v48 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (objc_msgSend_hasUnits(compareCopy, v45, v46, v47) && v40 == objc_msgSend_dimension(compareCopy, v49, v50, v51))
    {
      if (v40 != 4 || selfCopy->_baseUnit == LOWORD(compareCopy[5]._decimal.w[0]))
      {
LABEL_7:
        v36 = sub_2213EF280(&selfCopy->_decimal, compareCopy + 4, localeCopy);
LABEL_8:

        goto LABEL_14;
      }

      v52 = objc_msgSend_invalidCurrencyComparisonError(TSCEError, v49, v50, v51);
    }

    else
    {
      v52 = objc_msgSend_invalidComparisonError(TSCEError, v49, v50, v51);
    }

    v36 = 0;
    *error = v52;
    goto LABEL_8;
  }

  v37 = objc_msgSend_stringBasedCompare_locale_outError_(compareCopy, v25, self, localeCopy, error);
  v38 = -1;
  if (v37 != 1)
  {
    v38 = v37;
  }

  if (v37 == -1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v38;
  }

LABEL_14:

  return v36;
}

- (int64_t)compare:(id)compare outError:(id *)error
{
  compareCopy = compare;
  if (!error)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue compare:outError:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 417, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  selfCopy = self;
  v19 = compareCopy;
  if (objc_msgSend_hasUnits(v19, v20, v21, v22) && (objc_msgSend_hasUnits(selfCopy, v23, v24, v25) & 1) == 0)
  {

    v28 = selfCopy;
    v26 = 1;
    v27 = v19;
    hasUnits = objc_msgSend_hasUnits(v19, v33, v34, v35);
  }

  else
  {
    v26 = 0;
    v27 = selfCopy;
    v28 = v19;
    hasUnits = objc_msgSend_hasUnits(selfCopy, v23, v24, v25);
  }

  if (!hasUnits)
  {
    v65._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v30, v31, v32);
    v65._decimal.w[1] = v57;
    TSUDecimal::doubleValue(&v65);
    v59 = v58;
    TSUDecimal::doubleValue(v27 + 4);
    if (v60 == v59)
    {
      goto LABEL_27;
    }

    TSUDecimal::doubleValue(v27 + 4);
    if (v61 >= v59)
    {
      v62 = 1;
    }

    else
    {
      v62 = -1;
    }

    if (v26)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v36 = objc_msgSend_dimension(v27, v30, v31, v32);
  v40 = objc_msgSend_hasUnits(v28, v37, v38, v39);
  if (v36 == 4)
  {
    v44 = v40;
  }

  else
  {
    v44 = 1;
  }

  if (v44)
  {
    if ((objc_msgSend_hasUnits(v28, v41, v42, v43) & 1) != 0 && v36 == objc_msgSend_dimension(v28, v45, v46, v47))
    {
      if (v36 != 4)
      {
        if (v36)
        {
          v48 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSCENumberValue compare:outError:]", v47);
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v51);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 452, 0, "Support for non-duration, non-currency unit comparisons is not implemented.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
        }

        goto LABEL_26;
      }

      if (selfCopy->_baseUnit == v28[40])
      {
        goto LABEL_26;
      }

      v63 = objc_msgSend_invalidCurrencyComparisonError(TSCEError, v45, v46, v47);
    }

    else
    {
      v63 = objc_msgSend_invalidComparisonError(TSCEError, v45, v46, v47);
    }

    v62 = 0;
    *error = v63;
    goto LABEL_37;
  }

LABEL_26:
  if (TSUDecimal::operator==())
  {
LABEL_27:
    v62 = 0;
    if (!v26)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (TSUDecimal::operator<())
  {
    v62 = -1;
  }

  else
  {
    v62 = 1;
  }

  if (v26)
  {
LABEL_33:
    if (v62 == -1)
    {
      v62 = 1;
    }

    else if (v62 == 1)
    {
      v62 = -1;
    }
  }

LABEL_37:

  return v62;
}

- (id)add:(id)add functionSpec:(id)spec outError:(id *)error
{
  addCopy = add;
  if (!error)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCENumberValue add:functionSpec:outError:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 489, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (objc_msgSend_isUnitlessZero(addCopy, v8, v9, v10))
  {
    selfCopy = self;
LABEL_14:
    v55 = selfCopy;
    goto LABEL_15;
  }

  if (objc_msgSend_isUnitlessZero(self, v21, v22, v23))
  {
    selfCopy = addCopy;
    goto LABEL_14;
  }

  if (!objc_msgSend_hasUnits(self, v25, v26, v27) || !objc_msgSend_hasUnits(addCopy, v28, v29, v30) || (v31 = objc_msgSend_dimension(self, v28, v29, v30), v31 != objc_msgSend_dimension(addCopy, v32, v33, v34)))
  {
    v46 = objc_msgSend_decimalRepresentation(self, v28, v29, v30);
    v48 = v47;
    v74 = objc_msgSend_decimalRepresentation(addCopy, v47, v49, v50);
    v75 = v51;
    v77._decimal.w[0] = v46;
    v77._decimal.w[1] = v48;
    TSUDecimal::operator+=();
    v76[0] = v46;
    v76[1] = v48;
    v52 = [TSCENumberValue alloc];
    selfCopy = objc_msgSend_initWithDecimal_(v52, v53, v76, v54, v74, v75);
    goto LABEL_14;
  }

  if (objc_msgSend_dimension(self, v28, v29, v30) == 4 && (v38 = objc_msgSend_unit(self, v35, v36, v37), v38 != objc_msgSend_unit(addCopy, v39, v40, v41)))
  {
    v57 = objc_msgSend_functionName(spec, v42, v43, v44);
    v45 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v58, v57, v59);
  }

  else
  {
    v45 = 0;
  }

  TSUDecimal::operator=();
  v63 = objc_msgSend_rawDecimalValue(addCopy, v60, v61, v62);
  TSUDecimal::add(&self->_decimal, v63, &v77);
  LODWORD(self) = objc_msgSend_unit(self, v64, v65, v66);
  v70 = objc_msgSend_unit(addCopy, v67, v68, v69);
  if (self >= v70)
  {
    self = v70;
  }

  else
  {
    self = self;
  }

  if (v45)
  {
    v71 = v45;
    *error = v45;
  }

  v72 = [TSCENumberValue alloc];
  v55 = objc_msgSend_initWithDecimal_baseUnit_(v72, v73, &v77, self);

LABEL_15:

  return v55;
}

- (id)add_nothrow:(id)add_nothrow
{
  add_nothrowCopy = add_nothrow;
  if (objc_msgSend_isUnitlessZero(add_nothrowCopy, v5, v6, v7))
  {
    selfCopy = self;
  }

  else if (objc_msgSend_isUnitlessZero(self, v8, v9, v10))
  {
    selfCopy = add_nothrowCopy;
  }

  else if (objc_msgSend_hasUnits(self, v12, v13, v14) && objc_msgSend_hasUnits(add_nothrowCopy, v15, v16, v17) && (v18 = objc_msgSend_dimension(self, v15, v16, v17), v18 == objc_msgSend_dimension(add_nothrowCopy, v19, v20, v21)))
  {
    v28 = objc_msgSend_rawDecimalValue(self, v15, v16, v17);
    objc_msgSend_rawDecimalValue(add_nothrowCopy, v22, v23, v24);
    *&v59._tskFormat = *v28;
    TSUDecimal::operator+=();
    v60 = *&v59._tskFormat;
    LODWORD(v28) = objc_msgSend_unit(self, v25, v26, v27);
    v32 = objc_msgSend_unit(add_nothrowCopy, v29, v30, v31);
    if (v28 >= v32)
    {
      v28 = v32;
    }

    else
    {
      v28 = v28;
    }

    v33 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v34, v35, v36);
    if (add_nothrowCopy)
    {
      objc_msgSend_format(add_nothrowCopy, v37, v38, v39);
    }

    else
    {
      memset(&v57, 0, sizeof(v57));
    }

    TSCEFormat::formatByMergingWithFormat(&v59, &v58, &v57, v38, v39);
    selfCopy = objc_msgSend_initWithDecimal_format_baseUnit_(v33, v56, &v60, &v59, v28);
  }

  else
  {
    v40 = objc_msgSend_decimalRepresentation(self, v15, v16, v17);
    v42 = v41;
    v58._tskFormat = objc_msgSend_decimalRepresentation(add_nothrowCopy, v41, v43, v44);
    *&v58._formatType = v45;
    v59._tskFormat = v40;
    *&v59._formatType = v42;
    TSUDecimal::operator+=();
    v60 = *&v59._tskFormat;
    v46 = [TSCENumberValue alloc];
    objc_msgSend_format(self, v47, v48, v49);
    if (add_nothrowCopy)
    {
      objc_msgSend_format(add_nothrowCopy, v50, v51, v52);
    }

    else
    {
      memset(&v57, 0, sizeof(v57));
    }

    TSCEFormat::formatByMergingWithFormat(&v59, &v58, &v57, v51, v52);
    selfCopy = objc_msgSend_initWithDecimal_format_(v46, v53, &v60, &v59);
  }

  v54 = selfCopy;

  return v54;
}

- (id)subtract:(id)subtract functionSpec:(id)spec outError:(id *)error
{
  subtractCopy = subtract;
  if (!error)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCENumberValue subtract:functionSpec:outError:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 540, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (objc_msgSend_isUnitlessZero(subtractCopy, v8, v9, v10))
  {
    selfCopy = self;
LABEL_14:
    v52 = selfCopy;
    goto LABEL_15;
  }

  if (objc_msgSend_isUnitlessZero(self, v21, v22, v23))
  {
    selfCopy = objc_msgSend_negate(subtractCopy, v25, v26, v27);
    goto LABEL_14;
  }

  if (!objc_msgSend_hasUnits(self, v25, v26, v27) || !objc_msgSend_hasUnits(subtractCopy, v28, v29, v30) || (v31 = objc_msgSend_dimension(self, v28, v29, v30), v31 != objc_msgSend_dimension(subtractCopy, v32, v33, v34)))
  {
    v43 = objc_msgSend_decimalRepresentation(self, v28, v29, v30);
    v45 = v44;
    v71 = objc_msgSend_decimalRepresentation(subtractCopy, v44, v46, v47);
    v72 = v48;
    *&v74 = v43;
    *(&v74 + 1) = v45;
    TSUDecimal::operator-=();
    v73 = v74;
    v49 = [TSCENumberValue alloc];
    selfCopy = objc_msgSend_initWithDecimal_(v49, v50, &v73, v51, v71, v72);
    goto LABEL_14;
  }

  if (objc_msgSend_dimension(self, v28, v29, v30) == 4 && (v38 = objc_msgSend_unit(self, v35, v36, v37), v38 != objc_msgSend_unit(subtractCopy, v39, v40, v41)))
  {
    v54 = objc_msgSend_functionName(spec, v35, v36, v37);
    v42 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v55, v54, v56);
  }

  else
  {
    v42 = 0;
  }

  v57 = objc_msgSend_rawDecimalValue(self, v35, v36, v37);
  objc_msgSend_rawDecimalValue(subtractCopy, v58, v59, v60);
  v74 = *v57;
  TSUDecimal::operator-=();
  v73 = v74;
  LODWORD(self) = objc_msgSend_unit(self, v61, v62, v63);
  v67 = objc_msgSend_unit(subtractCopy, v64, v65, v66);
  if (self >= v67)
  {
    self = v67;
  }

  else
  {
    self = self;
  }

  if (v42)
  {
    v68 = v42;
    *error = v42;
  }

  v69 = [TSCENumberValue alloc];
  v52 = objc_msgSend_initWithDecimal_baseUnit_(v69, v70, &v73, self);

LABEL_15:

  return v52;
}

- (id)multiply:(id)multiply context:(id)context
{
  multiplyCopy = multiply;
  v65[0] = objc_msgSend_decimalRepresentation(multiplyCopy, v7, v8, v9);
  v65[1] = v10;
  if ((objc_msgSend_hasUnits(self, v10, v11, v12) & 1) == 0)
  {
    decimal._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v13, v14, v15);
    decimal._decimal.w[1] = v49;
    TSUDecimal::operator*=();
    v64 = decimal;
    v52 = objc_msgSend_variantWithDecimal_(multiplyCopy, v50, &v64, v51);
LABEL_16:
    v48 = v52;
    goto LABEL_17;
  }

  v16 = objc_msgSend_dimension(self, v13, v14, v15);
  hasUnits = objc_msgSend_hasUnits(multiplyCopy, v17, v18, v19);
  if (v16 == 4)
  {
    v24 = 0;
  }

  else
  {
    v24 = hasUnits;
  }

  if (v24 != 1 || objc_msgSend_dimension(multiplyCopy, v21, v22, v23) != v16)
  {
    if (objc_msgSend_hasUnits(multiplyCopy, v21, v22, v23))
    {
      decimal._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v53, v54, v55);
      decimal._decimal.w[1] = v56;
      TSUDecimal::operator*=();
      v64 = decimal;
      v57 = [TSCENumberValue alloc];
      v52 = objc_msgSend_initWithDecimal_(v57, v58, &v64, v59);
    }

    else
    {
      decimal = self->_decimal;
      TSUDecimal::operator*=();
      v64 = decimal;
      v60 = [TSCENumberValue alloc];
      v52 = objc_msgSend_initWithDecimal_baseUnit_(v60, v61, &v64, self->_baseUnit);
    }

    goto LABEL_16;
  }

  if (context)
  {
    objc_msgSend_reportAutomaticUnitConversionWarningInContext_(TSCEWarning, v21, context, v23);
  }

  v25 = objc_msgSend_unit(multiplyCopy, v21, v22, v23);
  v29 = objc_msgSend_unit(self, v26, v27, v28);
  TSUDecimal::operator=();
  v34 = objc_msgSend_convertInNumber_outNumber_fromUnit_toUnit_(TSCEUnitRegistry, v30, v65, &v64, (v25 << 16) | 9, (v29 << 16) | 9);
  if (v34)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSCENumberValue multiply:context:]", v33);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 593, 0, "Can't handle an error here, no easy way to return it: %@", v34);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
  }

  decimal._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v31, v32, v33);
  decimal._decimal.w[1] = v44;
  TSUDecimal::operator*=();
  v63 = decimal;
  v45 = [TSCENumberValue alloc];
  v48 = objc_msgSend_initWithDecimal_(v45, v46, &v63, v47);

LABEL_17:

  return v48;
}

- (id)divide:(id)divide outError:(id *)error
{
  divideCopy = divide;
  if (!error)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue divide:outError:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 610, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (!objc_msgSend_hasUnits(self, v6, v7, v8))
  {
    v59._decimal.w[0] = objc_msgSend_decimalRepresentation(divideCopy, v19, v20, v21);
    v59._decimal.w[1] = v36;
    if (TSUDecimal::isZero(&v59))
    {
LABEL_12:
      v35 = objc_msgSend_divideByZeroError(TSCEError, v37, v38, v39);
      v41 = 0;
      if (!v35)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v60._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v37, v38, v39);
    v60._decimal.w[1] = v44;
    TSUDecimal::operator/=();
    v58 = v60;
    v47 = objc_msgSend_variantWithDecimal_(self, v45, &v58, v46);
LABEL_19:
    v41 = v47;
    v35 = 0;
    goto LABEL_14;
  }

  if (!objc_msgSend_hasUnits(divideCopy, v19, v20, v21))
  {
    v59._decimal.w[0] = objc_msgSend_decimalRepresentation(divideCopy, v22, v23, v24);
    v59._decimal.w[1] = v40;
    if (TSUDecimal::isZero(&v59))
    {
      goto LABEL_12;
    }

    v60 = *objc_msgSend_rawDecimalValue(self, v37, v38, v39);
    TSUDecimal::operator/=();
    v58 = v60;
    v48 = [TSCENumberValue alloc];
    v52 = objc_msgSend_unit(self, v49, v50, v51, v58);
    v47 = objc_msgSend_initWithDecimal_baseUnit_(v48, v53, &v58, v52);
    goto LABEL_19;
  }

  TSUDecimal::operator=();
  if (objc_msgSend_dimension(self, v25, v26, v27) || objc_msgSend_dimension(divideCopy, v28, v29, v30))
  {
    v58._decimal.w[0] = objc_msgSend_decimalRepresentation(divideCopy, v28, v29, v30);
    v58._decimal.w[1] = v31;
    if (TSUDecimal::isZero(&v58))
    {
LABEL_8:
      v35 = objc_msgSend_divideByZeroError(TSCEError, v32, v33, v34);
      goto LABEL_22;
    }

    v60._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v32, v33, v34);
    v60._decimal.w[1] = v54;
    TSUDecimal::operator/=();
  }

  else
  {
    v58 = *objc_msgSend_rawDecimalValue(divideCopy, v28, v29, v30);
    if (TSUDecimal::isZero(&v58))
    {
      goto LABEL_8;
    }

    v60 = *objc_msgSend_rawDecimalValue(self, v32, v33, v34);
    TSUDecimal::operator/=();
  }

  v35 = 0;
  v59 = v60;
LABEL_22:
  v55 = [TSCENumberValue alloc];
  v41 = objc_msgSend_initWithDecimal_(v55, v56, &v59, v57);
  if (v35)
  {
LABEL_13:
    v42 = v35;
    *error = v35;
  }

LABEL_14:

  return v41;
}

- (id)power:(id)power outError:(id *)error
{
  powerCopy = power;
  if (!error)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue power:outError:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 663, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v40._decimal.w[0] = objc_msgSend_decimalRepresentation(powerCopy, v6, v7, v8);
  v40._decimal.w[1] = v19;
  TSUDecimal::doubleValue(&v40);
  v21 = v20;
  v40._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v22, v23, v24);
  v40._decimal.w[1] = v25;
  TSUDecimal::doubleValue(&v40);
  v27 = v26;
  v31 = pow(v26, v21);
  if (v27 != 0.0)
  {
    goto LABEL_10;
  }

  if (v21 == 0.0)
  {
    v32 = objc_msgSend_zeroToPowerOfZeroError(TSCEError, v28, v29, v30, v31);
  }

  else
  {
    if (v21 >= 0.0)
    {
      goto LABEL_10;
    }

    v32 = objc_msgSend_divideByZeroError(TSCEError, v28, v29, v30, v31);
  }

  if (v32)
  {
    v33 = v32;
    *error = v33;
    v34 = v33;
    goto LABEL_11;
  }

LABEL_10:
  v34 = 0;
LABEL_11:
  v35 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v38 = objc_msgSend_initWithDecimal_(v35, v36, &v40, v37);

  return v38;
}

- (id)percent
{
  if (objc_msgSend_hasUnits(self, a2, v2, v3))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCENumberValue percent]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 686, 0, "Should never call percent on a unit value!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_decimalRepresentation(self, v5, v6, v7);
  v19 = v18;
  TSUDecimal::operator=();
  v24[0] = v17;
  v24[1] = v19;
  TSUDecimal::operator/=();
  v22 = objc_msgSend_variantWithDecimal_(self, v20, v24, v21);

  return v22;
}

- (id)negate
{
  if (TSUDecimal::isZero(&self->_decimal))
  {
    selfCopy = self;
  }

  else
  {
    v11._decimal.w[0] = objc_msgSend_decimalRepresentation(self, v3, v4, v5);
    v11._decimal.w[1] = v7;
    TSUDecimal::negate(&v11);
    selfCopy = objc_msgSend_variantWithDecimal_(self, v8, &v11, v9);
  }

  return selfCopy;
}

- (id)increment
{
  v5 = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v7 = v6;
  TSUDecimal::operator=();
  v12[0] = v5;
  v12[1] = v7;
  TSUDecimal::operator+=();
  v10 = objc_msgSend_variantWithDecimal_(self, v8, v12, v9);

  return v10;
}

- (id)decrement
{
  v5 = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v7 = v6;
  TSUDecimal::operator=();
  v12[0] = v5;
  v12[1] = v7;
  TSUDecimal::operator-=();
  v10 = objc_msgSend_variantWithDecimal_(self, v8, v12, v9);

  return v10;
}

- (id)abs
{
  v10._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v10._decimal.w[1] = v5;
  TSUDecimal::abs(&v10);
  v8 = objc_msgSend_variantWithDecimal_(self, v6, &v10, v7);

  return v8;
}

- (id)acos
{
  TSUDecimal::doubleValue(&self->_decimal);
  acos(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)acosh
{
  TSUDecimal::doubleValue(&self->_decimal);
  acosh(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)asin
{
  TSUDecimal::doubleValue(&self->_decimal);
  asin(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)asinh
{
  TSUDecimal::doubleValue(&self->_decimal);
  asinh(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)atan
{
  TSUDecimal::doubleValue(&self->_decimal);
  atan(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)atan2:(id)atan2 outError:(id *)error
{
  atan2Copy = atan2;
  if (!error)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCENumberValue atan2:outError:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberValue.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 744, 0, "outError is required as non-nil to use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v35._decimal.w[0] = objc_msgSend_decimalRepresentation(atan2Copy, v6, v7, v8);
  v35._decimal.w[1] = v19;
  TSUDecimal::doubleValue(&v35);
  v21 = v20;
  isZero = TSUDecimal::isZero(&self->_decimal);
  if (v21 == 0.0)
  {
    v26 = isZero;
  }

  else
  {
    v26 = 0;
  }

  if (v26 == 1)
  {
    v27 = objc_msgSend_divideByZeroError(TSCEError, v23, v24, v25);
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      *error = v28;
    }
  }

  else
  {
    TSUDecimal::doubleValue(&self->_decimal);
    atan2(v30, v21);
    v28 = 0;
  }

  TSUDecimal::operator=();
  v33 = objc_msgSend_variantWithDecimal_(self, v31, &v35, v32);

  return v33;
}

- (id)atanh
{
  TSUDecimal::doubleValue(&self->_decimal);
  atanh(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)besselj:(id)besselj
{
  besseljCopy = besselj;
  v8 = objc_msgSend_integer(besseljCopy, v5, v6, v7);
  TSUDecimal::doubleValue(&self->_decimal);
  jn(v8, v9);
  TSUDecimal::operator=();
  v12 = objc_msgSend_variantWithDecimal_(self, v10, &v14, v11);

  return v12;
}

- (id)bessely:(id)bessely
{
  besselyCopy = bessely;
  v8 = objc_msgSend_integer(besselyCopy, v5, v6, v7);
  TSUDecimal::doubleValue(&self->_decimal);
  yn(v8, v9);
  TSUDecimal::operator=();
  v12 = objc_msgSend_variantWithDecimal_(self, v10, &v14, v11);

  return v12;
}

- (id)ceil
{
  v10._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v10._decimal.w[1] = v5;
  TSUDecimal::ceiling(&v10);
  v8 = objc_msgSend_variantWithDecimal_(self, v6, &v10, v7);

  return v8;
}

- (id)cos
{
  TSUDecimal::doubleValue(&self->_decimal);
  cos(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)cosh
{
  TSUDecimal::doubleValue(&self->_decimal);
  cosh(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)erf
{
  TSUDecimal::doubleValue(&self->_decimal);
  erf(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)erfc
{
  TSUDecimal::doubleValue(&self->_decimal);
  erfc(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)exp
{
  TSUDecimal::doubleValue(&self->_decimal);
  exp(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)floor
{
  v10._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v10._decimal.w[1] = v5;
  TSUDecimal::floor(&v10);
  v8 = objc_msgSend_variantWithDecimal_(self, v6, &v10, v7);

  return v8;
}

- (id)lgamma
{
  v11._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v11._decimal.w[1] = v5;
  TSUDecimal::doubleValue(&v11);
  lgamma(v6);
  TSUDecimal::operator=();
  v9 = objc_msgSend_variantWithDecimal_(self, v7, &v11, v8);

  return v9;
}

- (id)log
{
  TSUDecimal::doubleValue(&self->_decimal);
  log(v2);
  v3 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v6 = objc_msgSend_initWithDecimal_(v3, v4, &v8, v5);

  return v6;
}

- (id)log10
{
  TSUDecimal::doubleValue(&self->_decimal);
  log10(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)max:(id)max
{
  maxCopy = max;
  objc_msgSend_rawDecimalValue(self, v5, v6, v7);
  objc_msgSend_rawDecimalValue(maxCopy, v8, v9, v10);
  if (TSUDecimal::operator<=())
  {
    self = maxCopy;
  }

  selfCopy = self;

  return self;
}

- (id)min:(id)min
{
  minCopy = min;
  objc_msgSend_rawDecimalValue(self, v5, v6, v7);
  objc_msgSend_rawDecimalValue(minCopy, v8, v9, v10);
  if (!TSUDecimal::operator<())
  {
    self = minCopy;
  }

  selfCopy = self;

  return self;
}

- (id)mod:(id)mod
{
  modCopy = mod;
  TSUDecimal::operator=();
  TSUDecimal::mod(&self->_decimal, modCopy + 4, &v9);
  v7 = objc_msgSend_numberWithDecimal_(self, v5, &v9, v6);

  return v7;
}

- (id)round
{
  decimal = self->_decimal;
  TSUDecimal::round(&decimal);
  v5 = objc_msgSend_variantWithDecimal_(self, v3, &decimal, v4);

  return v5;
}

- (id)sin
{
  TSUDecimal::doubleValue(&self->_decimal);
  sin(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)sinh
{
  TSUDecimal::doubleValue(&self->_decimal);
  sinh(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)sqrt
{
  v10._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v10._decimal.w[1] = v4;
  TSUDecimal::doubleValue(&v10);
  v5 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v8 = objc_msgSend_initWithDecimal_(v5, v6, &v10, v7);

  return v8;
}

- (id)tan
{
  TSUDecimal::doubleValue(&self->_decimal);
  tan(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)tanh
{
  TSUDecimal::doubleValue(&self->_decimal);
  tanh(v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_variantWithDecimal_(self, v4, &v8, v5);

  return v6;
}

- (id)trunc
{
  v10._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v10._decimal.w[1] = v5;
  TSUDecimal::trunc(&v10);
  v8 = objc_msgSend_variantWithDecimal_(self, v6, &v10, v7);

  return v8;
}

- (BOOL)dimensionsMatchModuloCurrency:(id)currency
{
  currencyCopy = currency;
  if ((objc_msgSend_hasUnits(self, v5, v6, v7) & 1) == 0 && (objc_msgSend_hasUnits(currencyCopy, v8, v9, v10) & 1) == 0 || (objc_msgSend_hasUnits(self, v8, v9, v10) & 1) == 0 && objc_msgSend_dimension(currencyCopy, v11, v12, v13) == 4)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_hasUnits(self, v11, v12, v13))
  {
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v20 = objc_msgSend_dimension(self, v14, v15, v16);
  if (v20 == 4 && (objc_msgSend_hasUnits(currencyCopy, v17, v18, v19) & 1) == 0)
  {
LABEL_10:
    v24 = 1;
    goto LABEL_12;
  }

  if (!objc_msgSend_hasUnits(currencyCopy, v17, v18, v19))
  {
    goto LABEL_11;
  }

  v24 = v20 == objc_msgSend_dimension(currencyCopy, v21, v22, v23);
LABEL_12:

  return v24;
}

- (BOOL)areCurrenciesMatched:(id)matched
{
  matchedCopy = matched;
  v28 = 1;
  if (objc_msgSend_hasUnits(self, v5, v6, v7))
  {
    if (objc_msgSend_hasUnits(matchedCopy, v8, v9, v10))
    {
      v14 = objc_msgSend_dimension(self, v11, v12, v13);
      if (v14 == objc_msgSend_dimension(matchedCopy, v15, v16, v17) && objc_msgSend_dimension(self, v18, v19, v20) == 4)
      {
        v24 = objc_msgSend_unit(self, v21, v22, v23);
        if (v24 != objc_msgSend_unit(matchedCopy, v25, v26, v27))
        {
          v28 = 0;
        }
      }
    }
  }

  return v28;
}

- (id)errorForDuration:(id)duration argumentIndex:(int)index
{
  if (objc_msgSend_isDuration(self, a2, duration, *&index))
  {
    v9 = objc_msgSend_functionName(duration, v6, v7, v8);
    v11 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v10, v9, (index + 1));
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TSUDecimal)decimalRepresentation
{
  decimal = self->_decimal;
  baseUnit = self->_baseUnit;
  if (baseUnit <= 3)
  {
    if (baseUnit != 2 && baseUnit != 3)
    {
      goto LABEL_9;
    }

LABEL_8:
    TSUDecimal::operator=();
    TSUDecimal::operator/=();
    goto LABEL_9;
  }

  if (baseUnit == 4 || baseUnit == 5)
  {
    goto LABEL_8;
  }

  if (baseUnit == 7)
  {
    TSUDecimal::operator=();
    TSUDecimal::operator*=();
  }

LABEL_9:
  TSUDecimal::operator=();
  if (TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
  }

  v4 = decimal._decimal.w[1];
  v3 = decimal._decimal.w[0];
  result._decimal.w[1] = v4;
  result._decimal.w[0] = v3;
  return result;
}

- (double)doubleRepresentation
{
  v6._decimal.w[0] = objc_msgSend_decimalRepresentation(self, a2, v2, v3);
  v6._decimal.w[1] = v4;
  TSUDecimal::doubleValue(&v6);
  if (result == 0.0)
  {
    return 0.0;
  }

  return result;
}

- (id)description
{
  v5 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3);
  v8 = objc_msgSend_asStringWithLocale_(self, v6, v5, v7);

  return v8;
}

+ (id)makeDurationWithWeeks:(double)weeks days:(double)days hours:(double)hours minutes:(double)minutes seconds:(double)seconds milliseconds:(double)milliseconds
{
  if (milliseconds != 0.0 && seconds == 0.0)
  {
    v9 = 7;
  }

  else
  {
    v9 = 6;
  }

  if (minutes != 0.0)
  {
    v9 = 5;
  }

  if (hours != 0.0)
  {
    v9 = 4;
  }

  if (days != 0.0)
  {
    v9 = 3;
  }

  if (weeks == 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2;
  }

  v11 = sub_221387CBC(v10);
  TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
  v12 = objc_alloc(MEMORY[0x277D80678]);
  v13 = TSUDurationFormatterMinDurationUnitInUnits();
  v15 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v12, v14, 0, v13, v11, 1);
  v16 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  TSCEFormat::TSCEFormat(&v20, v15, 0);
  v18 = objc_msgSend_initWithDecimal_format_baseUnit_(v16, v17, v21, &v20, v10);

  return v18;
}

+ (id)zero
{
  v2 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v5 = objc_msgSend_initWithDecimal_(v2, v3, &v7, v4);

  return v5;
}

+ (id)numberWithDecimal:(const TSUDecimal *)decimal
{
  v4 = [TSCENumberValue alloc];
  v7 = objc_msgSend_initWithDecimal_(v4, v5, decimal, v6);

  return v7;
}

+ (id)numberWithDecimal:(const TSUDecimal *)decimal format:(const TSCEFormat *)format
{
  v6 = [TSCENumberValue alloc];
  v8 = objc_msgSend_initWithDecimal_format_(v6, v7, decimal, format);

  return v8;
}

+ (id)numberWithDecimal:(const TSUDecimal *)decimal baseUnit:(unsigned __int16)unit
{
  unitCopy = unit;
  v6 = [TSCENumberValue alloc];
  v8 = objc_msgSend_initWithDecimal_baseUnit_(v6, v7, decimal, unitCopy);

  return v8;
}

+ (id)numberWithDecimal:(const TSUDecimal *)decimal format:(const TSCEFormat *)format baseUnit:(unsigned __int16)unit
{
  unitCopy = unit;
  v8 = [TSCENumberValue alloc];
  v10 = objc_msgSend_initWithDecimal_format_baseUnit_(v8, v9, decimal, format, unitCopy);

  return v10;
}

+ (id)unitlessZero
{
  v2 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  isUnitlessZero = objc_msgSend_initWithDecimal_baseUnit_isUnitlessZero_(v2, v3, &v6, 0, 1);

  return isUnitlessZero;
}

@end