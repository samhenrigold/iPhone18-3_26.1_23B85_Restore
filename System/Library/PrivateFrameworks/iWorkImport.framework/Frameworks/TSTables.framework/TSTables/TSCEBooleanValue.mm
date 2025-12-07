@interface TSCEBooleanValue
+ (id)BOOLValue:(BOOL)value;
+ (id)BOOLValue:(BOOL)value format:(const TSCEFormat *)format;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCEBooleanValue)initWithBool:(BOOL)bool;
- (TSCEBooleanValue)initWithBool:(BOOL)bool format:(const TSCEFormat *)format;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumberWithLocale:(id)locale;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asStringWithLocale:(id)locale;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSCEBooleanValue

- (TSCEBooleanValue)initWithBool:(BOOL)bool
{
  boolCopy = bool;
  TSCEFormat::TSCEFormat(v7, 1);
  return objc_msgSend_initWithBool_format_(self, v5, boolCopy, v7);
}

- (TSCEBooleanValue)initWithBool:(BOOL)bool format:(const TSCEFormat *)format
{
  v6.receiver = self;
  v6.super_class = TSCEBooleanValue;
  result = [(TSCEValue *)&v6 initWithTSCEFormat:format];
  if (result)
  {
    *(&result->super._rangeContextOverride + 1) = bool;
  }

  return result;
}

+ (id)BOOLValue:(BOOL)value
{
  valueCopy = value;
  v4 = [TSCEBooleanValue alloc];
  TSCEFormat::TSCEFormat(v8, 1);
  v6 = objc_msgSend_initWithBool_format_(v4, v5, valueCopy, v8);

  return v6;
}

+ (id)BOOLValue:(BOOL)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEBooleanValue alloc];
  v8 = objc_msgSend_initWithBool_format_(v6, v7, valueCopy, format);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TSCEBooleanValue;
  result = [(TSCEValue *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 49) = *(&self->super._rangeContextOverride + 1);
  }

  return result;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  if (objc_msgSend_asBool(self, a2, locale, v3))
  {
    v4 = @"boo_TRUE";
  }

  else
  {
    v4 = @"boo_FALSE";
  }

  return v4;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (error)
  {
    if (!spec)
    {
      goto LABEL_6;
    }

LABEL_5:
    v18 = objc_msgSend_argumentSpecForIndex_(spec, a2, index, spec);
    v22 = objc_msgSend_argumentType(v18, v19, v20, v21);

    if (v22 == 21)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asNumber:functionSpec:argumentIndex:outError:]", spec);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 84, 0, "outError pointer is required for this API");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  if (spec)
  {
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_reportBoolToNumberConversionWarningInContext_(TSCEWarning, a2, number, spec);
LABEL_7:
  TSUDecimal::operator=();
  v25 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v23, &v27, v24);

  return v25;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 109, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v18 = objc_msgSend_locale(string, a2, string, spec, *&index);

  return objc_msgSend_asStringWithLocale_(self, v17, v18, v19);
}

- (id)description
{
  v5 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3);
  v8 = objc_msgSend_asStringWithLocale_(self, v6, v5, v7);

  return v8;
}

- (id)asStringWithLocale:(id)locale
{
  if (!locale)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asStringWithLocale:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 119, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  objc_msgSend_format(self, a2, locale, v3);
  if (v30._formatType == 1 && (objc_msgSend_format(self, v15, v16, v17), TSCEFormat::BOOLeanFormat(&v29, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    objc_msgSend_format(self, v15, v16, v17);
    v25 = TSCEFormat::BOOLeanFormat(&v30, v22, v23, v24);
    v27 = objc_msgSend_stringFromBool_locale_(v25, v26, *(&self->super._rangeContextOverride + 1), locale);
  }

  else
  {
    if (*(&self->super._rangeContextOverride + 1) == 1)
    {
      objc_msgSend_localizedTrueString(locale, v15, v16, v17);
    }

    else
    {
      objc_msgSend_localizedFalseString(locale, v15, v16, v17);
    }
    v27 = ;
  }

  return v27;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asRawString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 137, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  return objc_msgSend_asString_functionSpec_argumentIndex_outError_(self, a2, string, spec, v7, error);
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEBooleanValue asBoolean:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 147, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  return *(&self->super._rangeContextOverride + 1);
}

- (id)asNumberWithLocale:(id)locale
{
  v4 = [TSCENumberValue alloc];
  objc_msgSend_asBool(self, v5, v6, v7);
  TSUDecimal::operator=();
  v10 = objc_msgSend_initWithDecimal_(v4, v8, &v12, v9);

  return v10;
}

@end