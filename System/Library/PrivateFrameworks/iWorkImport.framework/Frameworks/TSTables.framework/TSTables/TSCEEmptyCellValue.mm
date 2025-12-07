@interface TSCEEmptyCellValue
+ (id)emptyCellValue;
+ (id)emptyCellValueWithFormat:(const TSCEFormat *)format;
- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (TSCEEmptyCellValue)init;
- (TSCEEmptyCellValue)initWithFormat:(const TSCEFormat *)format;
- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error;
@end

@implementation TSCEEmptyCellValue

+ (id)emptyCellValue
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)emptyCellValueWithFormat:(const TSCEFormat *)format
{
  v4 = [TSCEEmptyCellValue alloc];
  v7 = objc_msgSend_initWithFormat_(v4, v5, format, v6);

  return v7;
}

- (TSCEEmptyCellValue)init
{
  v3.receiver = self;
  v3.super_class = TSCEEmptyCellValue;
  return [(TSCEValue *)&v3 init];
}

- (TSCEEmptyCellValue)initWithFormat:(const TSCEFormat *)format
{
  v4.receiver = self;
  v4.super_class = TSCEEmptyCellValue;
  return [(TSCEValue *)&v4 initWithTSCEFormat:format];
}

- (id)asNumber:(id)number functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asNumber:functionSpec:argumentIndex:outError:]", spec, *&index);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 56, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  return objc_msgSend_unitlessZero(TSCENumberValue, a2, number, spec, *&index);
}

- (id)asDate:(id)date functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asDate:functionSpec:argumentIndex:outError:]", spec, *&index);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 67, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  return 0;
}

- (id)asString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 75, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_format(self, a2, string, spec, *&index);
  if (v37._formatType == 271)
  {
    objc_msgSend_format(self, v16, v17, v18);
    v22 = TSCEFormat::customFormat(&v37, v19, v20, v21);
    v26 = objc_msgSend_customFormat(v22, v23, v24, v25);
    v30 = objc_msgSend_defaultFormatData(v26, v27, v28, v29);
    v34 = objc_msgSend_formatString(v30, v31, v32, v33);
    v35 = TSUNumberFormatterStringFromStringWithCustomFormat();
  }

  else
  {
    v35 = &stru_2834BADA0;
  }

  return v35;
}

- (id)asRawString:(id)string functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asRawString:functionSpec:argumentIndex:outError:]", spec, *&index);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 90, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  return &stru_2834BADA0;
}

- (BOOL)asBoolean:(id)boolean functionSpec:(id)spec argumentIndex:(int)index outError:(id *)error
{
  if (!error)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEmptyCellValue asBoolean:functionSpec:argumentIndex:outError:]", spec, *&index);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEmptyCellValue.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 98, 0, "outError pointer is required for this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  return 0;
}

@end