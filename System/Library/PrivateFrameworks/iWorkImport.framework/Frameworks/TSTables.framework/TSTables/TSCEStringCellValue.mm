@interface TSCEStringCellValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellValue:(id)value;
- (TSCEStringCellValue)initWithArchive:(const void *)archive locale:(id)locale;
- (TSCEStringCellValue)initWithString:(id)string locale:(id)locale;
- (TSCEStringCellValue)initWithStringValue:(id)value locale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)value;
- (void)encodeToArchive:(void *)archive;
- (void)setPopulatedCustomFormat:(id)format;
@end

@implementation TSCEStringCellValue

- (TSCEStringCellValue)initWithString:(id)string locale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v25.receiver = self;
  v25.super_class = TSCEStringCellValue;
  v10 = [(TSCECellValue *)&v25 initWithLocale:localeCopy];
  if (v10)
  {
    if (!stringCopy)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEStringCellValue initWithString:locale:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringCellValue.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 28, 0, "Creating a TSCEStringCellValue with a nil string.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    v10->super._valueType = 7;
    TSCEFormat::TSCEFormat(v24, 260);
    v21 = objc_msgSend_stringValue_format_(TSCEStringValue, v20, stringCopy, v24);
    stringValue = v10->_stringValue;
    v10->_stringValue = v21;
  }

  return v10;
}

- (TSCEStringCellValue)initWithStringValue:(id)value locale:(id)locale
{
  valueCopy = value;
  v30.receiver = self;
  v30.super_class = TSCEStringCellValue;
  v7 = [(TSCECellValue *)&v30 initWithLocale:locale];
  v11 = v7;
  if (v7)
  {
    v7->super._valueType = 7;
    if (valueCopy)
    {
      objc_msgSend_format(valueCopy, v8, v9, v10);
      if (LODWORD(v29[0].super_class))
      {
LABEL_7:
        v15 = objc_msgSend_asRawString(valueCopy, v12, v13, v14);
        isRegex = objc_msgSend_isRegex(valueCopy, v16, v17, v18);
        isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(valueCopy, v20, v21, v22);
        v25 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v24, v15, v29, isRegex, isCaseSensitiveRegex, 0);
        stringValue = v11->_stringValue;
        v11->_stringValue = v25;

        goto LABEL_8;
      }
    }

    else
    {
      memset(v29, 0, sizeof(v29));
    }

    TSCEFormat::TSCEFormat(v28, 260);
    TSCEFormat::operator=(v29, v28);
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (id)tsceValue
{
  stringValue = self->_stringValue;
  if (stringValue)
  {
    v5 = stringValue;
  }

  else
  {
    v5 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3);
  }

  return v5;
}

- (id)format
{
  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_format(stringValue, a2, v2, v3);
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
    v8 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v6, 260, 0);
  }

  v9 = v8;

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEStringCellValue alloc];
  stringValue = self->_stringValue;
  v9 = objc_msgSend_locale(self, v6, v7, v8);
  v11 = objc_msgSend_initWithStringValue_locale_(v4, v10, stringValue, v9);

  return v11;
}

- (BOOL)isEqualToCellValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_valueType(valueCopy, v5, v6, v7) != 7)
  {
    LOBYTE(v16) = 0;
    goto LABEL_16;
  }

  v14 = objc_msgSend_stringValue(valueCopy, v8, v9, v10);
  stringValue = self->_stringValue;
  if (!stringValue)
  {
    memset(&v43, 0, sizeof(v43));
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(&v42, 0, sizeof(v42));
    goto LABEL_8;
  }

  objc_msgSend_format(stringValue, v11, v12, v13);
  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_4:
  objc_msgSend_format(v14, v11, v12, v13);
LABEL_8:
  if (TSCEFormat::isEqualNotCountingExplicitness(&v43, &v42, v12, v13))
  {
    v20 = objc_msgSend_asRawString(self->_stringValue, v17, v18, v19);
    v24 = objc_msgSend_asRawString(v14, v21, v22, v23);
    if ((objc_msgSend_isEqualToString_(v20, v25, v24, v26) & 1) != 0 && (isRegex = objc_msgSend_isRegex(self->_stringValue, v27, v28, v29), isRegex == objc_msgSend_isRegex(v14, v31, v32, v33)))
    {
      isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(self->_stringValue, v34, v35, v36);
      v16 = isCaseSensitiveRegex ^ objc_msgSend_isCaseSensitiveRegex(v14, v38, v39, v40) ^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

LABEL_16:
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = TSCEStringCellValue;
  return [(TSCECellValue *)&v4 isEqual:equal];
}

- (int64_t)compareToCellValue:(id)value
{
  valueCopy = value;
  v8 = valueCopy[8];
  if (v8 > 7)
  {
    goto LABEL_6;
  }

  v9 = 1;
  if (((1 << v8) & 0x2D) == 0)
  {
    if (v8 == 7)
    {
      v11 = objc_msgSend_stringValue(self, v4, v5, v6);
      v15 = objc_msgSend_asRawString(v11, v12, v13, v14);
      v19 = objc_msgSend_stringValue(valueCopy, v16, v17, v18);
      v23 = objc_msgSend_asRawString(v19, v20, v21, v22);
      v9 = objc_msgSend_compare_(v15, v24, v23, v25);

      goto LABEL_3;
    }

LABEL_6:
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEStringCellValue compareToCellValue:]", v6);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringCellValue.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 117, 0, "Unexpected value type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    v9 = 1;
  }

LABEL_3:

  return v9;
}

- (TSCEStringCellValue)initWithArchive:(const void *)archive locale:(id)locale
{
  localeCopy = locale;
  v24.receiver = self;
  v24.super_class = TSCEStringCellValue;
  v7 = [(TSCECellValue *)&v24 initWithLocale:localeCopy];
  v10 = v7;
  if (v7)
  {
    v7->super._valueType = 7;
    if (*(archive + 4))
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, *(archive + 4), v9);
    }

    else
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v8, MEMORY[0x277D80740], v9);
    }
    v11 = ;
    v12 = *(archive + 4);
    if ((v12 & 8) != 0)
    {
      v13 = *(archive + 41);
    }

    else if ((v12 & 4) != 0)
    {
      v13 = *(archive + 40) ^ 1;
    }

    else
    {
      v13 = 0;
    }

    TSCEFormat::TSCEFormat(&v23, v11, v13 & 1);
    v14 = *(archive + 42);
    v15 = *(archive + 43);
    v18 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v16, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v17);
    v20 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v19, v18, &v23, v14, v15, 0);
    stringValue = v10->_stringValue;
    v10->_stringValue = v20;
  }

  return v10;
}

- (void)encodeToArchive:(void *)archive
{
  v6 = objc_msgSend_asRawString(self->_stringValue, a2, archive, v3);
  v10 = objc_msgSend_tsp_protobufString(v6, v7, v8, v9);
  if (v10)
  {
    sub_221184204(archive, v10);
  }

  else
  {
    sub_221184204(archive, "");
    v14 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEStringCellValue encodeToArchive:]", v16);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringCellValue.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v17, v20, 164, 0, "Avoid using nil to mean empty string in a TSCEStringValue, string is: %@", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v26 = objc_msgSend_format(self, v11, v12, v13);
  *(archive + 4) |= 2u;
  v27 = *(archive + 4);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x223DA02D0](v28);
    *(archive + 4) = v27;
  }

  objc_msgSend_encodeToArchive_archivingCustomFormats_(v26, v25, v27, 1);

  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_format(stringValue, v29, v30, v31);
    v33 = v39 == 1;
  }

  else
  {
    v33 = 0;
  }

  *(archive + 4) |= 8u;
  *(archive + 41) = v33;
  isRegex = objc_msgSend_isRegex(self->_stringValue, v29, v30, v31);
  *(archive + 4) |= 0x10u;
  *(archive + 42) = isRegex;
  isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(self->_stringValue, v35, v36, v37);
  *(archive + 4) |= 0x20u;
  *(archive + 43) = isCaseSensitiveRegex;
}

- (void)setPopulatedCustomFormat:(id)format
{
  formatCopy = format;
  v8 = formatCopy;
  if (formatCopy)
  {
    v12 = formatCopy;
  }

  else
  {
    v13 = MEMORY[0x277D80680];
    v14 = objc_msgSend_locale(self, v5, v6, v7);
    v12 = objc_msgSend_defaultFormatWithFormatType_locale_(v13, v15, 260, v14);
  }

  v16 = objc_msgSend_format(self, v9, v10, v11);

  if (v12 != v16)
  {
    v20 = objc_msgSend_asRawString(self->_stringValue, v17, v18, v19);
    TSCEFormat::TSCEFormat(&v32, v12, 0);
    isRegex = objc_msgSend_isRegex(self->_stringValue, v21, v22, v23);
    isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(self->_stringValue, v25, v26, v27);
    v30 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v29, v20, &v32, isRegex, isCaseSensitiveRegex, 0);
    stringValue = self->_stringValue;
    self->_stringValue = v30;
  }
}

@end