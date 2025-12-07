@interface TSCEDateCellValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellValue:(id)value;
- (TSCEDateCellValue)initWithArchive:(const void *)archive locale:(id)locale;
- (TSCEDateCellValue)initWithDate:(id)date locale:(id)locale;
- (TSCEDateCellValue)initWithDateValue:(id)value locale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)value;
- (void)encodeToArchive:(void *)archive;
- (void)setPopulatedCustomFormat:(id)format;
@end

@implementation TSCEDateCellValue

- (TSCEDateCellValue)initWithDate:(id)date locale:(id)locale
{
  dateCopy = date;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = TSCEDateCellValue;
  v8 = [(TSCECellValue *)&v15 initWithLocale:localeCopy];
  v11 = v8;
  if (v8)
  {
    v8->super._valueType = 3;
    v12 = objc_msgSend_dateValue_(TSCEDateValue, v9, dateCopy, v10);
    dateValue = v11->_dateValue;
    v11->_dateValue = v12;
  }

  return v11;
}

- (TSCEDateCellValue)initWithDateValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v21.receiver = self;
  v21.super_class = TSCEDateCellValue;
  v8 = [(TSCECellValue *)&v21 initWithLocale:localeCopy];
  v12 = v8;
  if (v8)
  {
    v8->super._valueType = 3;
    v16 = objc_msgSend_date(valueCopy, v9, v10, v11);
    if (valueCopy)
    {
      objc_msgSend_format(valueCopy, v13, v14, v15);
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    v17 = objc_msgSend_dateValue_format_(TSCEDateValue, v13, v16, v20);
    dateValue = v12->_dateValue;
    v12->_dateValue = v17;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEDateCellValue alloc];
  dateValue = self->_dateValue;
  v9 = objc_msgSend_locale(self, v6, v7, v8);
  v11 = objc_msgSend_initWithDateValue_locale_(v4, v10, dateValue, v9);

  return v11;
}

- (id)tsceValue
{
  dateValue = self->_dateValue;
  if (dateValue)
  {
    v5 = dateValue;
  }

  else
  {
    v5 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3);
  }

  return v5;
}

- (id)format
{
  dateValue = self->_dateValue;
  if (dateValue)
  {
    objc_msgSend_format(dateValue, a2, v2, v3);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  v6 = TSCEFormat::tskFormat(&v16, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v12 = MEMORY[0x277D80680];
    v13 = objc_msgSend_locale(self, v7, v8, v9);
    v11 = objc_msgSend_defaultFormatWithFormatType_locale_(v12, v14, 261, v13);
  }

  return v11;
}

- (id)displayString
{
  dateValue = self->_dateValue;
  v5 = objc_msgSend_locale(self, a2, v2, v3);
  v8 = objc_msgSend_asStringWithLocale_(dateValue, v6, v5, v7);

  return v8;
}

- (BOOL)isEqualToCellValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_valueType(valueCopy, v5, v6, v7) != 3)
  {
    isEqualToDate = 0;
    goto LABEL_12;
  }

  v14 = objc_msgSend_dateValue(valueCopy, v8, v9, v10);
  dateValue = self->_dateValue;
  if (!dateValue)
  {
    memset(&v29, 0, sizeof(v29));
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(&v28, 0, sizeof(v28));
    goto LABEL_8;
  }

  objc_msgSend_format(dateValue, v11, v12, v13);
  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_4:
  objc_msgSend_format(v14, v11, v12, v13);
LABEL_8:
  if (TSCEFormat::isEqualNotCountingExplicitness(&v29, &v28, v12, v13))
  {
    v20 = objc_msgSend_asDate(self->_dateValue, v17, v18, v19);
    v24 = objc_msgSend_asDate(v14, v21, v22, v23);
    isEqualToDate = objc_msgSend_isEqualToDate_(v20, v25, v24, v26);
  }

  else
  {
    isEqualToDate = 0;
  }

LABEL_12:
  return isEqualToDate;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = TSCEDateCellValue;
  return [(TSCECellValue *)&v4 isEqual:equal];
}

- (int64_t)compareToCellValue:(id)value
{
  valueCopy = value;
  v8 = valueCopy[8];
  v9 = 1;
  if (v8 <= 2)
  {
    if (valueCopy[8])
    {
      v25 = v8 == 2;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v8 == 7)
    {
      v9 = -1;
      goto LABEL_12;
    }

    if (v8 != 5)
    {
      if (v8 == 3)
      {
        v10 = objc_msgSend_dateValue(self, v4, v5, v6);
        v14 = objc_msgSend_asDate(v10, v11, v12, v13);
        v18 = objc_msgSend_dateValue(valueCopy, v15, v16, v17);
        v22 = objc_msgSend_asDate(v18, v19, v20, v21);
        v9 = objc_msgSend_compare_(v14, v23, v22, v24);

        goto LABEL_12;
      }

LABEL_10:
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCEDateCellValue compareToCellValue:]", v6);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateCellValue.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 115, 0, "Unexpected value type found");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
      v9 = 1;
    }
  }

LABEL_12:

  return v9;
}

- (TSCEDateCellValue)initWithArchive:(const void *)archive locale:(id)locale
{
  v21.receiver = self;
  v21.super_class = TSCEDateCellValue;
  v5 = [(TSCECellValue *)&v21 initWithLocale:locale];
  v8 = v5;
  if (v5)
  {
    v5->super._valueType = 3;
    if (*(archive + 3))
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(archive + 3), v7);
    }

    else
    {
      objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, MEMORY[0x277D80740], v7);
    }
    v9 = ;
    v10 = *(archive + 4);
    if ((v10 & 8) != 0)
    {
      v11 = *(archive + 41);
    }

    else if ((v10 & 4) != 0)
    {
      v11 = *(archive + 40) ^ 1;
    }

    else
    {
      v11 = 0;
    }

    TSCEFormat::TSCEFormat(&v20, v9, v11 & 1);
    v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v12, v13, v14, *(archive + 4));
    v17 = objc_msgSend_dateValue_format_(TSCEDateValue, v16, v15, &v20);
    dateValue = v8->_dateValue;
    v8->_dateValue = v17;
  }

  return v8;
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
    v12 = objc_msgSend_defaultFormatWithFormatType_locale_(v13, v15, 261, v14);
  }

  v16 = objc_msgSend_format(self, v9, v10, v11);

  if (v12 != v16)
  {
    v20 = objc_msgSend_asDate(self->_dateValue, v17, v18, v19);
    TSCEFormat::TSCEFormat(&v24, v12, 0);
    v22 = objc_msgSend_dateValue_format_(TSCEDateValue, v21, v20, &v24);
    dateValue = self->_dateValue;
    self->_dateValue = v22;
  }
}

- (void)encodeToArchive:(void *)archive
{
  v6 = objc_msgSend_asDate(self->_dateValue, a2, archive, v3);
  objc_msgSend_timeIntervalSinceReferenceDate(v6, v7, v8, v9);
  *(archive + 4) |= 2u;
  *(archive + 4) = v10;

  v15 = objc_msgSend_format(self, v11, v12, v13);
  *(archive + 4) |= 1u;
  v16 = *(archive + 3);
  if (!v16)
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA02D0](v17);
    *(archive + 3) = v16;
  }

  objc_msgSend_encodeToArchive_archivingCustomFormats_(v15, v14, v16, 1);

  dateValue = self->_dateValue;
  if (dateValue)
  {
    objc_msgSend_format(dateValue, v18, v19, v20);
    v22 = v23 == 1;
  }

  else
  {
    v22 = 0;
  }

  *(archive + 4) |= 8u;
  *(archive + 41) = v22;
}

@end