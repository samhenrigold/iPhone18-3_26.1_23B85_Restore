@interface TSCEDateValue
+ (TSCEDateValue)dateValueWithDays:(double)days;
+ (id)dateValue:(id)value;
+ (id)dateValue:(id)value format:(const TSCEFormat *)format;
- (TSCEDateValue)init;
- (TSCEDateValue)initWithDate:(id)date;
- (TSCEDateValue)initWithDate:(id)date format:(const TSCEFormat *)format;
- (TSCEDateValue)initWithDays:(double)days;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asStringWithLocale:(id)locale;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)array;
@end

@implementation TSCEDateValue

- (TSCEDateValue)init
{
  v3.receiver = self;
  v3.super_class = TSCEDateValue;
  return [(TSCEValue *)&v3 init];
}

- (TSCEDateValue)initWithDate:(id)date
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithDate_format_(self, a2, date, &v4);
}

- (TSCEDateValue)initWithDate:(id)date format:(const TSCEFormat *)format
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = TSCEDateValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, date);
  }

  return v9;
}

- (TSCEDateValue)initWithDays:(double)days
{
  v12.receiver = self;
  v12.super_class = TSCEDateValue;
  v4 = [(TSCEValue *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    v9 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, v8, days * 86400.0);
    date = v4->_date;
    v4->_date = v9;
  }

  return v4;
}

+ (id)dateValue:(id)value
{
  valueCopy = value;
  v4 = [TSCEDateValue alloc];
  v7 = objc_msgSend_initWithDate_(v4, v5, valueCopy, v6);

  return v7;
}

+ (id)dateValue:(id)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCEDateValue alloc];
  v8 = objc_msgSend_initWithDate_format_(v6, v7, valueCopy, format);

  return v8;
}

+ (TSCEDateValue)dateValueWithDays:(double)days
{
  v4 = [TSCEDateValue alloc];
  v8 = objc_msgSend_initWithDays_(v4, v5, v6, v7, days);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSCEDateValue;
  v4 = [(TSCEValue *)&v11 copyWithZone:zone];
  v8 = objc_msgSend_copy(self->_date, v5, v6, v7);
  v9 = v4[7];
  v4[7] = v8;

  return v4;
}

- (id)description
{
  v5 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3);
  v8 = objc_msgSend_asStringWithLocale_(self, v6, v5, v7);

  return v8;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  v5 = objc_msgSend_date(self, a2, locale, v3);
  v8 = objc_msgSend_dateValue_(TSCEDateValue, v6, v5, v7);

  v11 = objc_msgSend_asStringWithLocale_(v8, v9, locale, v10);
  v14 = objc_msgSend_stringByAppendingString_(@"dat_", v12, v11, v13);

  return v14;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDateValue asDate:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 101, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  date = self->_date;

  return date;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDateValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 109, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v18 = objc_msgSend_locale(string, a2, string, spec, *&index);

  return objc_msgSend_asStringWithLocale_(self, v17, v18, v19);
}

- (id)asStringWithLocale:(id)locale
{
  if (!locale)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDateValue asStringWithLocale:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 117, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  objc_msgSend_format(self, a2, locale, v3);
  if (v71._formatType == 261)
  {
    objc_msgSend_format(self, v15, v16, v17);
    v21 = TSCEFormat::dateTimeFormat(&v71, v18, v19, v20);
    v25 = objc_msgSend_formatString(v21, v22, v23, v24);
    v26 = TSUDateFormatterStringFromDateWithFormat();
    goto LABEL_5;
  }

  objc_msgSend_format(self, v15, v16, v17);
  if (v71._formatType == 272)
  {
    objc_msgSend_format(self, v28, v29, v30);
    v21 = TSCEFormat::customFormat(&v71, v31, v32, v33);
    v37 = objc_msgSend_customFormat(v21, v34, v35, v36);
    v41 = objc_msgSend_defaultFormatData(v37, v38, v39, v40);

    if (!v41)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSCEDateValue asStringWithLocale:]", v44);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateValue.mm", v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 128, 0, "invalid nil value for '%{public}s'", "dateFormat.customFormat.defaultFormatData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    }

    v54 = objc_msgSend_customFormat(v21, v42, v43, v44);
    v58 = objc_msgSend_defaultFormatData(v54, v55, v56, v57);

    if (v58)
    {
      v25 = objc_msgSend_customFormat(v21, v59, v60, v61);
      v65 = objc_msgSend_defaultFormatData(v25, v62, v63, v64);
      v69 = objc_msgSend_formatString(v65, v66, v67, v68);
      v27 = TSUDateFormatterStringFromDateWithFormat();

      goto LABEL_11;
    }

    v25 = objc_msgSend_defaultDateTimeFormatForLocale_(MEMORY[0x277D811A0], v59, locale, v61);
    v26 = TSUDateFormatterStringFromDateWithFormat();
LABEL_5:
    v27 = v26;
LABEL_11:

    goto LABEL_13;
  }

  v21 = objc_msgSend_defaultDateTimeFormatForLocale_(MEMORY[0x277D811A0], v28, locale, v30);
  v27 = TSUDateFormatterStringFromDateWithFormat();
LABEL_13:

  return v27;
}

- (void)appendASTForConstantToNodeArray:(TSCEASTNodeArray *)array
{
  objc_msgSend_format(self, a2, array, v3);
  if (v18._formatType == 261)
  {
    objc_msgSend_format(self, v6, v7, v8);
    v12 = TSCEFormat::dateTimeFormat(&v18, v9, v10, v11);
    date = self->_date;
    v17 = objc_msgSend_formatString(v12, v14, v15, v16);
    TSCEASTDateElement::appendDateElement(array, date, v17, 0, 0);
  }

  else
  {
    TSCEASTDateElement::appendDateElement(array, self->_date, 0, 0, 0);
  }
}

@end