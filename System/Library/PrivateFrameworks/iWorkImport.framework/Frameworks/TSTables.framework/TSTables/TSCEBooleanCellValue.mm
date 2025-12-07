@interface TSCEBooleanCellValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellValue:(id)value;
- (TSCEBooleanCellValue)initWithArchive:(const void *)archive locale:(id)locale;
- (TSCEBooleanCellValue)initWithBoolean:(BOOL)boolean locale:(id)locale;
- (TSCEBooleanCellValue)initWithBooleanValue:(id)value locale:(id)locale;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)value;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSCEBooleanCellValue

- (TSCEBooleanCellValue)initWithBoolean:(BOOL)boolean locale:(id)locale
{
  booleanCopy = boolean;
  localeCopy = locale;
  v14.receiver = self;
  v14.super_class = TSCEBooleanCellValue;
  v7 = [(TSCECellValue *)&v14 initWithLocale:localeCopy];
  v10 = v7;
  if (v7)
  {
    v7->super._valueType = 2;
    v11 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v8, booleanCopy, v9);
    BOOLeanValue = v10->_BOOLeanValue;
    v10->_BOOLeanValue = v11;
  }

  return v10;
}

- (TSCEBooleanCellValue)initWithBooleanValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v21.receiver = self;
  v21.super_class = TSCEBooleanCellValue;
  v8 = [(TSCECellValue *)&v21 initWithLocale:localeCopy];
  v12 = v8;
  if (v8)
  {
    v8->super._valueType = 2;
    v16 = objc_msgSend_asBool(valueCopy, v9, v10, v11);
    if (valueCopy)
    {
      objc_msgSend_format(valueCopy, v13, v14, v15);
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    v17 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v13, v16, v20);
    BOOLeanValue = v12->_BOOLeanValue;
    v12->_BOOLeanValue = v17;
  }

  return v12;
}

- (id)format
{
  BOOLeanValue = self->_BOOLeanValue;
  if (BOOLeanValue)
  {
    objc_msgSend_format(BOOLeanValue, a2, v2, v3);
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  v5 = TSCEFormat::tskFormat(&v11, a2, v2, v3);
  v7 = v5;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v6, 1, 0);
  }

  v9 = v8;

  return v9;
}

- (id)displayString
{
  BOOLeanValue = self->_BOOLeanValue;
  v5 = objc_msgSend_locale(self, a2, v2, v3);
  v8 = objc_msgSend_asStringWithLocale_(BOOLeanValue, v6, v5, v7);

  return v8;
}

- (id)tsceValue
{
  BOOLeanValue = self->_BOOLeanValue;
  if (BOOLeanValue)
  {
    v5 = BOOLeanValue;
  }

  else
  {
    v5 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3);
  }

  return v5;
}

- (BOOL)isEqualToCellValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_valueType(valueCopy, v5, v6, v7) == 2)
  {
    v11 = objc_msgSend_BOOLeanValue(valueCopy, v8, v9, v10);
    v15 = objc_msgSend_asBool(self->_BOOLeanValue, v12, v13, v14);
    if (v15 != objc_msgSend_asBool(v11, v16, v17, v18))
    {
      isEqualNotCountingExplicitness = 0;
LABEL_11:

      goto LABEL_12;
    }

    BOOLeanValue = self->_BOOLeanValue;
    if (BOOLeanValue)
    {
      objc_msgSend_format(BOOLeanValue, v19, v20, v21);
      if (v11)
      {
LABEL_7:
        objc_msgSend_format(v11, v19, v20, v21);
LABEL_10:
        isEqualNotCountingExplicitness = TSCEFormat::isEqualNotCountingExplicitness(&v26, &v25, v20, v21);
        goto LABEL_11;
      }
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
      if (v11)
      {
        goto LABEL_7;
      }
    }

    memset(&v25, 0, sizeof(v25));
    goto LABEL_10;
  }

  isEqualNotCountingExplicitness = 0;
LABEL_12:

  return isEqualNotCountingExplicitness;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = TSCEBooleanCellValue;
  return [(TSCECellValue *)&v4 isEqual:equal];
}

- (int64_t)compareToCellValue:(id)value
{
  valueCopy = value;
  v8 = valueCopy[8];
  if (v8 <= 2)
  {
    if (!valueCopy[8])
    {
LABEL_19:
      v11 = 1;
      goto LABEL_20;
    }

    if (v8 != 2)
    {
LABEL_18:
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEBooleanCellValue compareToCellValue:]", v6);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEBooleanCellValue.mm", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 121, 0, "Unexpected value type found");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      goto LABEL_19;
    }

    v12 = objc_msgSend_asBool(self->_BOOLeanValue, v4, v5, v6);
    v16 = objc_msgSend_BOOLeanValue(valueCopy, v13, v14, v15);
    v20 = objc_msgSend_asBool(v16, v17, v18, v19);

    v21 = 1;
    if (!v12)
    {
      v21 = -1;
    }

    if (v12 != v20)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (v8 != 3 && v8 != 5 && v8 != 7)
    {
      goto LABEL_18;
    }

    v11 = -1;
  }

LABEL_20:

  return v11;
}

- (TSCEBooleanCellValue)initWithArchive:(const void *)archive locale:(id)locale
{
  v16.receiver = self;
  v16.super_class = TSCEBooleanCellValue;
  v5 = [(TSCECellValue *)&v16 initWithLocale:locale];
  v9 = v5;
  if (v5)
  {
    v5->super._valueType = 2;
    if (*(archive + 16))
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(archive + 3), v8);
    }

    else
    {
      objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v6, v7, v8);
    }
    v10 = ;
    TSCEFormat::TSCEFormat(&v15, v10, *(archive + 33) & ((*(archive + 4) & 4u) >> 2));
    v12 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v11, *(archive + 32), &v15);
    BOOLeanValue = v9->_BOOLeanValue;
    v9->_BOOLeanValue = v12;
  }

  return v9;
}

- (void)encodeToArchive:(void *)archive
{
  v6 = objc_msgSend_asBool(self->_BOOLeanValue, a2, archive, v3);
  *(archive + 4) |= 2u;
  *(archive + 32) = v6;
  v12 = objc_msgSend_format(self, v7, v8, v9);
  *(archive + 4) |= 1u;
  v13 = *(archive + 3);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA02D0](v14);
    *(archive + 3) = v13;
  }

  objc_msgSend_encodeToArchive_(v12, v10, v13, v11);

  BOOLeanValue = self->_BOOLeanValue;
  if (BOOLeanValue)
  {
    objc_msgSend_format(BOOLeanValue, v15, v16, v17);
    v19 = v20 == 1;
  }

  else
  {
    v19 = 0;
  }

  *(archive + 4) |= 4u;
  *(archive + 33) = v19;
}

@end