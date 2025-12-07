@interface TSCEStringValue
+ (id)stringValue:(id)value;
+ (id)stringValue:(id)value format:(const TSCEFormat *)format;
+ (id)stringValue:(id)value format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)string;
- (BOOL)asBoolean:(id)boolean;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCERichTextStorage)rawRichTextStorage;
- (TSCEStringValue)initWithString:(id)string;
- (TSCEStringValue)initWithString:(id)string format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)literalString;
- (id)asDate:(id)date;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumberWithLocale:(id)locale;
- (id)asNumberWithLocale:(id)locale outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSCEStringValue

+ (id)stringValue:(id)value
{
  valueCopy = value;
  v4 = [TSCEStringValue alloc];
  v7 = objc_msgSend_initWithString_(v4, v5, valueCopy, v6);

  return v7;
}

+ (id)stringValue:(id)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEStringValue alloc];
  v8 = objc_msgSend_initWithString_format_(v6, v7, valueCopy, format);

  return v8;
}

+ (id)stringValue:(id)value format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)string
{
  stringCopy = string;
  sensitiveRegexCopy = sensitiveRegex;
  regexCopy = regex;
  valueCopy = value;
  v12 = [TSCEStringValue alloc];
  isLiteralString = objc_msgSend_initWithString_format_isRegex_isCaseSensitiveRegex_isLiteralString_(v12, v13, valueCopy, format, regexCopy, sensitiveRegexCopy, stringCopy);

  return isLiteralString;
}

- (TSCEStringValue)initWithString:(id)string
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithString_format_isRegex_isCaseSensitiveRegex_isLiteralString_(self, a2, string, &v4, 0, 0, 0);
}

- (TSCEStringValue)initWithString:(id)string format:(const TSCEFormat *)format isRegex:(BOOL)regex isCaseSensitiveRegex:(BOOL)sensitiveRegex isLiteralString:(BOOL)literalString
{
  stringCopy = string;
  v20.receiver = self;
  v20.super_class = TSCEStringValue;
  v16 = [(TSCEValue *)&v20 initWithTSCEFormat:format];
  if (v16)
  {
    v17 = objc_msgSend_copy(stringCopy, v13, v14, v15);
    string = v16->_string;
    v16->_string = v17;

    v16->_isRegex = regex;
    v16->_isCaseSensitiveRegex = sensitiveRegex;
    v16->_isLiteralString = literalString;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEStringValue;
  v7 = [(TSCEValue *)&v11 copyWithZone:zone];
  if (v7)
  {
    v8 = objc_msgSend_copy(self->_string, v4, v5, v6);
    v9 = v7[7];
    v7[7] = v8;

    *(v7 + 64) = self->_isRegex;
    *(v7 + 65) = self->_isCaseSensitiveRegex;
    *(v7 + 66) = self->_isLiteralString;
  }

  return v7;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  v5 = objc_msgSend_asRawString(self, a2, locale, v3);
  v9 = objc_msgSend_locale(locale, v6, v7, v8);
  v12 = objc_msgSend_lowercaseStringWithLocale_(v5, v10, v9, v11);

  v15 = objc_msgSend_stringByAppendingString_(@"str_", v13, v12, v14);

  return v15;
}

- (id)asNumberWithLocale:(id)locale outError:(id *)error
{
  v33 = -999;
  TSUDecimal::operator=();
  if (objc_msgSend_length(self->_string, v7, v8, v9))
  {
    string = self->_string;
    v31 = 0;
    v13 = objc_msgSend_numberValueFromString_locale_outDecimalValue_outValueType_outCurrencyCode_(MEMORY[0x277D81290], v10, string, locale, v32, &v33, &v31);
    v14 = v31;
    if ((v13 & 1) == 0)
    {
      v30 = 0;
      v29 = 0;
      if (TSUDurationFormatterTimeIntervalFromString())
      {
        v29 = TSUDurationFormatterMaxDurationUnitInUnits();
        v16 = sub_221387C78(v29);
        v17 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v19 = objc_msgSend_initWithDecimal_baseUnit_(v17, v18, &v28, v16);
        goto LABEL_11;
      }

      if (error)
      {
        *error = objc_msgSend_numberError(TSCEError, v10, v15, v11);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (v33 == 1)
  {
    v20 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v10, v14, v11);
    v21 = [TSCENumberValue alloc];
    v19 = objc_msgSend_initWithDecimal_baseUnit_(v21, v22, v32, v20);
  }

  else
  {
    v23 = [TSCENumberValue alloc];
    v19 = objc_msgSend_initWithDecimal_(v23, v24, v32, v25);
  }

LABEL_11:
  v26 = v19;

  return v26;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asNumber:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 136, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v47 = -999;
  TSUDecimal::operator=();
  v23 = objc_msgSend_locale(number, v20, v21, v22);
  string = self->_string;
  v45 = 0;
  v26 = objc_msgSend_numberValueFromString_locale_outDecimalValue_outValueType_outCurrencyCode_(MEMORY[0x277D81290], v25, string, v23, v46, &v47, &v45);
  v29 = v45;
  if ((v26 & 1) == 0)
  {
    v44 = 0;
    v43 = 0;
    if (TSUDurationFormatterTimeIntervalFromString())
    {
      v43 = TSUDurationFormatterMaxDurationUnitInUnits();
      v30 = sub_221387C78(v43);
      v31 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v33 = objc_msgSend_initWithDecimal_baseUnit_(v31, v32, &v42, v30);
      goto LABEL_11;
    }

    if (error)
    {
      *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v27, self, number, spec, v7);
    }
  }

  if (v47 == 1)
  {
    v34 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v27, v29, v28);
    v35 = [TSCENumberValue alloc];
    v33 = objc_msgSend_initWithDecimal_baseUnit_(v35, v36, v46, v34);
  }

  else
  {
    v37 = [TSCENumberValue alloc];
    v33 = objc_msgSend_initWithDecimal_(v37, v38, v46, v39);
  }

LABEL_11:
  v40 = v33;

  return v40;
}

- (id)asDate:(id)date
{
  v3 = TSUCreateDateFromString();

  return v3;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asDate:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 174, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_locale(date, a2, date, spec);
  v24 = objc_msgSend_asDate_(self, v21, v20, v22);
  if (!v24)
  {
    *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v23, self, date, spec, v7);
  }

  return v24;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 190, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  return objc_msgSend_asString(self, a2, string, spec, *&index);
}

- (id)asString
{
  objc_msgSend_format(self, a2, v2, v3);
  if (v51._formatType == 271)
  {
    objc_msgSend_format(self, v5, v6, v7);
    v11 = TSCEFormat::customFormat(&v51, v8, v9, v10);
    v15 = objc_msgSend_customFormat(v11, v12, v13, v14);
    v19 = objc_msgSend_defaultFormatData(v15, v16, v17, v18);

    if (!v19)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSCEStringValue asString]", v22);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 199, 0, "invalid nil value for '%{public}s'", "customFormat.customFormat.defaultFormatData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    }

    v32 = objc_msgSend_customFormat(v11, v20, v21, v22);
    v36 = objc_msgSend_defaultFormatData(v32, v33, v34, v35);

    if (v36)
    {
      v40 = objc_msgSend_customFormat(v11, v37, v38, v39);
      v44 = objc_msgSend_defaultFormatData(v40, v41, v42, v43);
      v48 = objc_msgSend_formatString(v44, v45, v46, v47);
      v49 = TSUNumberFormatterStringFromStringWithCustomFormat();
    }

    else
    {
      v49 = self->_string;
    }
  }

  else
  {
    v49 = self->_string;
  }

  return v49;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asRawString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 224, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  return objc_msgSend_asRawString(self, a2, string, spec, *&index);
}

- (BOOL)asBoolean:(id)boolean
{
  string = self->_string;
  v5 = objc_msgSend_falseString(boolean, a2, boolean, v3);
  LOBYTE(string) = objc_msgSend_compare_options_(string, v6, v5, 1) != 0;

  return string;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asBoolean:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 244, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v18 = objc_msgSend_locale(boolean, a2, boolean, spec, *&index);

  return objc_msgSend_asBoolean_(self, v17, v18, v19);
}

- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStringValue asStrictBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 254, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_locale(boolean, a2, boolean, spec);
  string = self->_string;
  v25 = objc_msgSend_falseString(v20, v22, v23, v24);
  v27 = objc_msgSend_compare_options_(string, v26, v25, 1);

  if (!v27)
  {
    return 0;
  }

  v31 = self->_string;
  v32 = objc_msgSend_trueString(v20, v28, v29, v30);
  v34 = objc_msgSend_compare_options_(v31, v33, v32, 1);

  if (!v34)
  {
    return 1;
  }

  v36 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v35, self, boolean, spec, v7);
  v37 = v36;
  result = 0;
  *error = v36;
  return result;
}

- (id)asNumberWithLocale:(id)locale
{
  v5 = 0;
  v3 = objc_msgSend_asNumberWithLocale_outError_(self, a2, locale, &v5);

  return v3;
}

- (TSCERichTextStorage)rawRichTextStorage
{
  v7 = objc_msgSend_asRawString(self, a3, v3, v4);
  sub_221077074(retstr, v7);

  return result;
}

@end