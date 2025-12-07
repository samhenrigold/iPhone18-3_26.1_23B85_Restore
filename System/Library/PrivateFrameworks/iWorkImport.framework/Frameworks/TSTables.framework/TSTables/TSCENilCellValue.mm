@interface TSCENilCellValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellValue:(id)value;
- (TSCENilCellValue)init;
- (TSCENilCellValue)initWithLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareToCellValue:(id)value;
@end

@implementation TSCENilCellValue

- (TSCENilCellValue)init
{
  v5 = objc_msgSend_currentLocale(MEMORY[0x277D81228], a2, v2, v3);
  v8 = objc_msgSend_initWithLocale_(self, v6, v5, v7);

  return v8;
}

- (TSCENilCellValue)initWithLocale:(id)locale
{
  v4.receiver = self;
  v4.super_class = TSCENilCellValue;
  result = [(TSCECellValue *)&v4 initWithLocale:locale];
  if (result)
  {
    result->super._valueType = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCENilCellValue alloc];
  v8 = objc_msgSend_locale(self, v5, v6, v7);
  v11 = objc_msgSend_initWithLocale_(v4, v9, v8, v10);

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = TSCENilCellValue;
  return [(TSCECellValue *)&v4 isEqual:equal];
}

- (BOOL)isEqualToCellValue:(id)value
{
  valueCopy = value;
  v7 = valueCopy;
  if (valueCopy)
  {
    v8 = objc_msgSend_valueType(valueCopy, v4, v5, v6) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compareToCellValue:(id)value
{
  valueCopy = value;
  v6 = valueCopy[8];
  if (v6 < 8 && ((0xADu >> v6) & 1) != 0)
  {
    v7 = qword_2217E05C8[v6];
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCENilCellValue compareToCellValue:]", v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENilCellValue.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 83, 0, "Unexpected value type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    v7 = -1;
  }

  return v7;
}

@end