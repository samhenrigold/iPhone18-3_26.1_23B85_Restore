@interface TSCERichTextValue
+ (id)richTextValue:(id)value;
+ (id)richTextValue:(id)value format:(const TSCEFormat *)format;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (BOOL)asBooleanWithLocale:(id)locale;
- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCERichTextStorage)asRawRichTextStorage;
- (TSCERichTextStorage)asRichTextStorage;
- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error;
- (TSCERichTextValue)initWithStorage:(id)storage;
- (TSCERichTextValue)initWithStorage:(id)storage firstParagraphHadStylesDemoted:(BOOL)demoted lastParagraphHadStylesDemoted:(BOOL)stylesDemoted;
- (TSCERichTextValue)initWithStorage:(id)storage format:(const TSCEFormat *)format;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asDateWithLocale:(id)locale;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumberWithLocale:(id)locale;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asStringWithLocale:(id)locale;
- (id)canonicalKeyStringForLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TSCERichTextValue

+ (id)richTextValue:(id)value
{
  valueCopy = value;
  v4 = [TSCERichTextValue alloc];
  v7 = objc_msgSend_initWithStorage_(v4, v5, valueCopy, v6);

  return v7;
}

+ (id)richTextValue:(id)value format:(const TSCEFormat *)format
{
  valueCopy = value;
  v6 = [TSCERichTextValue alloc];
  v8 = objc_msgSend_initWithStorage_format_(v6, v7, valueCopy, format);

  return v8;
}

- (TSCERichTextValue)initWithStorage:(id)storage
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1057;
  v8 = 1;
  v9 = -50266102;
  v10 = 253;
  return objc_msgSend_initWithStorage_format_(self, a2, storage, &v4);
}

- (TSCERichTextValue)initWithStorage:(id)storage format:(const TSCEFormat *)format
{
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = TSCERichTextValue;
  v8 = [(TSCEValue *)&v11 initWithTSCEFormat:format];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storage, storage);
    v9->_firstParagraphHadStylesDemoted = 0;
    v9->_lastParagraphHadStylesDemoted = 0;
  }

  return v9;
}

- (TSCERichTextValue)initWithStorage:(id)storage firstParagraphHadStylesDemoted:(BOOL)demoted lastParagraphHadStylesDemoted:(BOOL)stylesDemoted
{
  storageCopy = storage;
  v15 = 0;
  v16 = 0;
  v17 = 1057;
  v18 = 1;
  v19 = -50266102;
  v20 = 253;
  v13.receiver = self;
  v13.super_class = TSCERichTextValue;
  v14 = 0;
  v10 = [(TSCEValue *)&v13 initWithTSCEFormat:&v14];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_storage, storage);
    v11->_firstParagraphHadStylesDemoted = demoted;
    v11->_lastParagraphHadStylesDemoted = stylesDemoted;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TSCERichTextValue;
  v4 = [(TSCEValue *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 7, self->_storage);
    *(v5 + 64) = self->_firstParagraphHadStylesDemoted;
    *(v5 + 65) = self->_lastParagraphHadStylesDemoted;
  }

  return v5;
}

- (id)canonicalKeyStringForLocale:(id)locale
{
  v6 = objc_msgSend_string(self->_storage, a2, locale, v3);
  objc_msgSend_format(self, v7, v8, v9);
  v11 = objc_msgSend_stringValue_format_(TSCEStringValue, v10, v6, &v16);

  v14 = objc_msgSend_canonicalKeyStringForLocale_(v11, v12, locale, v13);

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_string(self->_storage, a2, v2, v3);
  v8 = objc_msgSend_hash(v4, v5, v6, v7);

  return v8;
}

- (TSCERichTextStorage)asRichTextStorage
{
  objc_msgSend_format(self, a3, v3, v4);
  if (v34._formatType == 271)
  {
    objc_msgSend_format(self, v7, v8, v9);
    v13 = TSCEFormat::customFormat(&v34, v10, v11, v12);
    storage = self->_storage;
    v18 = objc_msgSend_customFormat(v13, v15, v16, v17);
    v22 = objc_msgSend_defaultFormatData(v18, v19, v20, v21);
    v26 = objc_msgSend_formatString(v22, v23, v24, v25);
    v29 = objc_msgSend_storageByApplyingCustomFormat_(storage, v27, v26, v28);

    retstr->var0 = 0;
    retstr->var1 = v29;
    *&retstr->var2 = 1;
    retstr->var4 = 0;
  }

  else
  {
    v31 = self->_storage;
    firstParagraphHadStylesDemoted = self->_firstParagraphHadStylesDemoted;
    lastParagraphHadStylesDemoted = self->_lastParagraphHadStylesDemoted;
    result = v31;
    retstr->var0 = 0;
    retstr->var1 = result;
    retstr->var2 = 1;
    retstr->var3 = firstParagraphHadStylesDemoted;
    retstr->var4 = lastParagraphHadStylesDemoted;
  }

  return result;
}

- (TSCERichTextStorage)asRawRichTextStorage
{
  firstParagraphHadStylesDemoted = self->_firstParagraphHadStylesDemoted;
  lastParagraphHadStylesDemoted = self->_lastParagraphHadStylesDemoted;
  result = self->_storage;
  retstr->var0 = 0;
  retstr->var1 = result;
  retstr->var2 = 1;
  retstr->var3 = firstParagraphHadStylesDemoted;
  retstr->var4 = lastParagraphHadStylesDemoted;
  return result;
}

- (id)asString
{
  v5 = objc_msgSend_string(self->_storage, a2, v2, v3);
  objc_msgSend_format(self, v6, v7, v8);
  v10 = objc_msgSend_stringValue_format_(TSCEStringValue, v9, v5, &v16);

  v14 = objc_msgSend_asString(v10, v11, v12, v13);

  return v14;
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERichTextValue asNumber:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 117, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_string(self->_storage, a2, number, spec);
  objc_msgSend_format(self, v21, v22, v23);
  v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v24, v20, &v29);

  v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v26, number, spec, v7, error);

  return v27;
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERichTextValue asDate:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 127, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_string(self->_storage, a2, date, spec);
  objc_msgSend_format(self, v21, v22, v23);
  v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v24, v20, &v29);

  v27 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v25, v26, date, spec, v7, error);

  return v27;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERichTextValue asString:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 137, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_string(self->_storage, a2, string, spec);
  objc_msgSend_format(self, v21, v22, v23);
  v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v24, v20, &v29);

  v27 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v25, v26, string, spec, v7, error);

  return v27;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERichTextValue asRawString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 148, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  storage = self->_storage;

  return objc_msgSend_string(storage, a2, string, spec, *&index);
}

- (TSCERichTextStorage)asRichTextStorage:(SEL)storage functionSpec:(id)spec argumentIndex:(id)index outError:(int)error
{
  if (!a7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], storage, "[TSCERichTextValue asRichTextStorage:functionSpec:argumentIndex:outError:]", index, *&error);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextValue.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 156, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  return MEMORY[0x2821F9670](self, sel_asRichTextStorage, spec, index);
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERichTextValue asBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 171, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_string(self->_storage, a2, boolean, spec);
  objc_msgSend_format(self, v21, v22, v23);
  v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v24, v20, &v29);

  v27 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v25, v26, boolean, spec, v7, error);
  return v27;
}

- (BOOL)asStrictBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  v7 = *&index;
  if (!error)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERichTextValue asStrictBoolean:functionSpec:argumentIndex:outError:]", spec);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERichTextValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 180, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_string(self->_storage, a2, boolean, spec);
  objc_msgSend_format(self, v21, v22, v23);
  v25 = objc_msgSend_stringValue_format_(TSCEStringValue, v24, v20, &v29);

  v27 = objc_msgSend_asStrictBoolean_functionSpec_argumentIndex_outError_(v25, v26, boolean, spec, v7, error);
  return v27;
}

- (BOOL)asBooleanWithLocale:(id)locale
{
  v6 = objc_msgSend_asRawString(self, a2, locale, v3);
  objc_msgSend_format(self, v7, v8, v9);
  v11 = objc_msgSend_stringValue_format_(TSCEStringValue, v10, v6, &v15);

  LOBYTE(v6) = objc_msgSend_asBoolean_(v11, v12, locale, v13);
  return v6;
}

- (id)asNumberWithLocale:(id)locale
{
  v6 = objc_msgSend_asRawString(self, a2, locale, v3);
  objc_msgSend_format(self, v7, v8, v9);
  v11 = objc_msgSend_stringValue_format_(TSCEStringValue, v10, v6, v16);

  v15 = 0;
  v13 = objc_msgSend_asNumberWithLocale_outError_(v11, v12, locale, &v15);

  return v13;
}

- (id)asDateWithLocale:(id)locale
{
  v6 = objc_msgSend_asRawString(self, a2, locale, v3);
  objc_msgSend_format(self, v7, v8, v9);
  v11 = objc_msgSend_stringValue_format_(TSCEStringValue, v10, v6, &v16);

  v14 = objc_msgSend_asDate_(v11, v12, locale, v13);

  return v14;
}

- (id)asStringWithLocale:(id)locale
{
  v5 = objc_msgSend_asRawString(self, a2, locale, v3);
  objc_msgSend_format(self, v6, v7, v8);
  v10 = objc_msgSend_stringValue_format_(TSCEStringValue, v9, v5, &v16);

  v14 = objc_msgSend_asString(v10, v11, v12, v13);

  return v14;
}

@end