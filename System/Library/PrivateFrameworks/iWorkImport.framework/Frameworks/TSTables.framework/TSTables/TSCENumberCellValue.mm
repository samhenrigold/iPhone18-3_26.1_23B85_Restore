@interface TSCENumberCellValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellValue:(id)value;
- (TSCENumberCellValue)initWithArchive:(const void *)archive locale:(id)locale;
- (TSCENumberCellValue)initWithDecimal:(const TSUDecimal *)decimal locale:(id)locale;
- (TSCENumberCellValue)initWithDouble:(double)double locale:(id)locale;
- (TSCENumberCellValue)initWithNumberValue:(id)value locale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)value;
- (void)encodeToArchive:(void *)archive;
- (void)setPopulatedCustomFormat:(id)format;
@end

@implementation TSCENumberCellValue

- (TSCENumberCellValue)initWithDouble:(double)double locale:(id)locale
{
  localeCopy = locale;
  v17.receiver = self;
  v17.super_class = TSCENumberCellValue;
  v6 = [(TSCECellValue *)&v17 initWithLocale:localeCopy];
  v7 = v6;
  if (v6)
  {
    v6->super._valueType = 5;
    v8 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v10 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v9, 256, localeCopy);
    TSCEFormat::TSCEFormat(&v15, v10, 0);
    v12 = objc_msgSend_initWithDecimal_format_(v8, v11, v16, &v15);
    numberValue = v7->_numberValue;
    v7->_numberValue = v12;
  }

  return v7;
}

- (TSCENumberCellValue)initWithDecimal:(const TSUDecimal *)decimal locale:(id)locale
{
  localeCopy = locale;
  v17.receiver = self;
  v17.super_class = TSCENumberCellValue;
  v7 = [(TSCECellValue *)&v17 initWithLocale:localeCopy];
  v8 = v7;
  if (v7)
  {
    v7->super._valueType = 5;
    v9 = [TSCENumberValue alloc];
    v11 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v10, 256, localeCopy);
    TSCEFormat::TSCEFormat(&v16, v11, 0);
    v13 = objc_msgSend_initWithDecimal_format_(v9, v12, decimal, &v16);
    numberValue = v8->_numberValue;
    v8->_numberValue = v13;
  }

  return v8;
}

- (TSCENumberCellValue)initWithNumberValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v28.receiver = self;
  v28.super_class = TSCENumberCellValue;
  v8 = [(TSCECellValue *)&v28 initWithLocale:localeCopy];
  v12 = v8;
  if (v8)
  {
    v8->super._valueType = 5;
    if (!valueCopy)
    {
      valueCopy = objc_msgSend_zero(TSCENumberValue, v9, v10, v11);
    }

    v13 = [TSCENumberValue alloc];
    v20 = objc_msgSend_rawDecimalValue(valueCopy, v14, v15, v16);
    if (valueCopy)
    {
      objc_msgSend_format(valueCopy, v17, v18, v19);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v21 = objc_msgSend_unit(valueCopy, v17, v18, v19, v26, v27);
    v23 = objc_msgSend_initWithDecimal_format_baseUnit_(v13, v22, v20, &v26, v21);
    numberValue = v12->_numberValue;
    v12->_numberValue = v23;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCENumberCellValue alloc];
  numberValue = self->_numberValue;
  v9 = objc_msgSend_locale(self, v6, v7, v8);
  v11 = objc_msgSend_initWithNumberValue_locale_(v4, v10, numberValue, v9);

  return v11;
}

- (id)tsceValue
{
  numberValue = self->_numberValue;
  if (numberValue)
  {
    v5 = numberValue;
  }

  else
  {
    v5 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3);
  }

  return v5;
}

- (id)format
{
  numberValue = self->_numberValue;
  if (numberValue)
  {
    objc_msgSend_format(numberValue, a2, v2, v3);
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
    v11 = objc_msgSend_defaultFormatWithFormatType_locale_(v12, v14, 256, v13);
  }

  return v11;
}

- (id)displayString
{
  numberValue = self->_numberValue;
  v5 = objc_msgSend_locale(self, a2, v2, v3);
  v8 = objc_msgSend_asStringWithLocale_(numberValue, v6, v5, v7);

  return v8;
}

- (BOOL)isEqualToCellValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_valueType(valueCopy, v5, v6, v7) == 5)
  {
    v11 = objc_msgSend_numberValue(valueCopy, v8, v9, v10);
    v15 = objc_msgSend_unit(self->_numberValue, v12, v13, v14);
    if (v15 != objc_msgSend_unit(v11, v16, v17, v18) || (v22 = objc_msgSend_rawDecimalValue(self->_numberValue, v19, v20, v21), v26 = objc_msgSend_rawDecimalValue(v11, v23, v24, v25), objc_msgSend_locale(self, v27, v28, v29), v30 = objc_claimAutoreleasedReturnValue(), LOBYTE(v22) = TSUDecimal::floatingPointEqual(v22, v26, v30, v31), v30, (v22 & 1) == 0))
    {
      isEqualNotCountingExplicitness = 0;
LABEL_12:

      goto LABEL_13;
    }

    numberValue = self->_numberValue;
    if (numberValue)
    {
      objc_msgSend_format(numberValue, v32, v33, v34);
      if (v11)
      {
LABEL_6:
        objc_msgSend_format(v11, v32, v33, v34);
LABEL_11:
        isEqualNotCountingExplicitness = TSCEFormat::isEqualNotCountingExplicitness(&v39, &v38, v33, v34);
        goto LABEL_12;
      }
    }

    else
    {
      memset(&v39, 0, sizeof(v39));
      if (v11)
      {
        goto LABEL_6;
      }
    }

    memset(&v38, 0, sizeof(v38));
    goto LABEL_11;
  }

  isEqualNotCountingExplicitness = 0;
LABEL_13:

  return isEqualNotCountingExplicitness;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = TSCENumberCellValue;
  return [(TSCECellValue *)&v4 isEqual:equal];
}

- (int64_t)compareToCellValue:(id)value
{
  valueCopy = value;
  v8 = valueCopy[8];
  if (v8 <= 2)
  {
    if (valueCopy[8])
    {
      v11 = v8 == 2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v8 == 3 || v8 == 7)
  {
    v10 = -1;
    goto LABEL_19;
  }

  if (v8 != 5)
  {
LABEL_17:
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCENumberCellValue compareToCellValue:]", v6);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 138, 0, "Unexpected value type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
LABEL_18:
    v10 = 1;
    goto LABEL_19;
  }

  v12 = objc_msgSend_numberValue(self, v4, v5, v6);
  v16 = objc_msgSend_numberValue(valueCopy, v13, v14, v15);
  v40 = 0;
  v10 = objc_msgSend_compare_outError_(v12, v17, v16, &v40);
  v18 = v40;

  if (v18)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCENumberCellValue compareToCellValue:]", v20);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 127, 0, "Unhandled error here, BUT, this code is apparently dead-code");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

LABEL_19:
  return v10;
}

- (TSCENumberCellValue)initWithArchive:(const void *)archive locale:(id)locale
{
  localeCopy = locale;
  v51.receiver = self;
  v51.super_class = TSCENumberCellValue;
  v7 = [(TSCECellValue *)&v51 initWithLocale:localeCopy];
  v10 = v7;
  if (v7)
  {
    v7->super._valueType = 5;
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
    if ((v12 & 0x20) != 0)
    {
      v13 = *(archive + 53);
    }

    else if ((v12 & 0x10) != 0)
    {
      v13 = *(archive + 52) ^ 1;
    }

    else
    {
      v13 = 0;
    }

    TSCEFormat::TSCEFormat(&v50, v11, v13 & 1);
    TSUDecimal::operator=();
    if ((*(archive + 16) & 0x40) != 0)
    {
      TSUDecimal::TSUDecimal(&v48);
      v49 = v48;
    }

    else
    {
      TSUDecimal::operator=();
      v49 = v48;
      TSUDecimal::reinterpretDoubleAsDecimal(&v49);
    }

    v17 = *(archive + 4);
    if (v17)
    {
      v21 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v14, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v16);
      v24 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v22, v21, v23);
      v25 = [TSCENumberValue alloc];
      v27 = objc_msgSend_initWithDecimal_format_baseUnit_(v25, v26, &v49, &v50, v24);
      numberValue = v10->_numberValue;
      v10->_numberValue = v27;
    }

    else
    {
      if ((v17 & 8) != 0)
      {
        if (objc_msgSend_formatType(v11, v14, v15, v16) == 268 && (*(archive + 12) == 6 || (objc_msgSend_asDurationFormat(v11, v29, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend_useAutomaticUnits(v32, v33, v34, v35), v32, v36)))
        {
          v37 = objc_msgSend_asDurationFormat(v11, v29, v30, v31);
          TSUDecimal::doubleValue(&v49);
          v41 = objc_msgSend_durationUnitLargestWithTimeInterval_(v37, v38, v39, v40);
          v42 = sub_221387C78(v41);

          v43 = [TSCENumberValue alloc];
          v20 = objc_msgSend_initWithDecimal_format_baseUnit_(v43, v44, &v49, &v50, v42);
        }

        else
        {
          v45 = [TSCENumberValue alloc];
          v20 = objc_msgSend_initWithDecimal_format_baseUnit_(v45, v46, &v49, &v50, *(archive + 24));
        }
      }

      else
      {
        v18 = [TSCENumberValue alloc];
        v20 = objc_msgSend_initWithDecimal_format_(v18, v19, &v49, &v50);
      }

      v21 = v10->_numberValue;
      v10->_numberValue = v20;
    }
  }

  return v10;
}

- (void)setPopulatedCustomFormat:(id)format
{
  formatCopy = format;
  if (objc_msgSend_hasUnits(self->_numberValue, v5, v6, v7) && objc_msgSend_dimension(self->_numberValue, v8, v9, v10) != 4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCENumberCellValue setPopulatedCustomFormat:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 198, 0, "Custom formats are only legal for bare numbers and currencies.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (formatCopy)
  {
    v20 = objc_msgSend_format(self, v8, v9, v10);

    if (v20 != formatCopy)
    {
      v21 = formatCopy;
      goto LABEL_13;
    }
  }

  else
  {
    if (objc_msgSend_hasUnits(self->_numberValue, v8, v9, v10) && objc_msgSend_dimension(self->_numberValue, v22, v23, v24) == 4)
    {
      v25 = objc_msgSend_unit(self->_numberValue, v22, v23, v24);
      v28 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v26, v25, v27);
      v21 = objc_msgSend_defaultCurrencyFormatWithCurrencyCode_(MEMORY[0x277D80640], v29, v28, v30);

      if (!v21)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ((objc_msgSend_hasUnits(self->_numberValue, v22, v23, v24) & 1) == 0)
    {
      v21 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v31, 256, 0);
      if (v21)
      {
LABEL_13:
        v32 = [TSCENumberValue alloc];
        v36 = objc_msgSend_rawDecimalValue(self->_numberValue, v33, v34, v35);
        TSCEFormat::TSCEFormat(&v44, v21, 0);
        v40 = objc_msgSend_unit(self->_numberValue, v37, v38, v39);
        v42 = objc_msgSend_initWithDecimal_format_baseUnit_(v32, v41, v36, &v44, v40);
        numberValue = self->_numberValue;
        self->_numberValue = v42;
      }
    }
  }

LABEL_14:
}

- (void)encodeToArchive:(void *)archive
{
  objc_msgSend_rawDoubleValue(self->_numberValue, a2, archive, v3);
  *(archive + 4) |= 4u;
  *(archive + 5) = v6;
  v50 = *objc_msgSend_rawDecimalValue(self->_numberValue, v7, v8, v9);
  v10 = TSUDecimal::low(&v50);
  *(archive + 4) |= 0x40u;
  *(archive + 7) = v10;
  v11 = TSUDecimal::high(&v50);
  *(archive + 4) |= 0x80u;
  *(archive + 8) = v11;
  v15 = objc_msgSend_unit(self->_numberValue, v12, v13, v14);
  *(archive + 4) |= 8u;
  *(archive + 12) = v15;
  if (objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v16, v15, v17) == 4)
  {
    v21 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v18, v15, v20);
    v25 = v21;
    if (v21)
    {
      v26 = objc_msgSend_tsp_protobufString(v21, v22, v23, v24);
      sub_2213D0BD4(archive, v26);
    }

    else
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCENumberCellValue encodeToArchive:]", v24);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCENumberCellValue.mm", v30);
      v35 = objc_msgSend_locale(self->super._locale, v32, v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v36, v28, v31, 240, 0, "Expected a currency code for unit %d, locale:%@", v15, v35);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
    }
  }

  v41 = objc_msgSend_format(self, v18, v19, v20);
  *(archive + 4) |= 2u;
  v42 = *(archive + 4);
  if (!v42)
  {
    v43 = *(archive + 1);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x223DA02D0](v43);
    *(archive + 4) = v42;
  }

  objc_msgSend_encodeToArchive_archivingCustomFormats_(v41, v40, v42, 1);

  numberValue = self->_numberValue;
  if (numberValue)
  {
    objc_msgSend_format(numberValue, v44, v45, v46);
    v48 = v49 == 1;
  }

  else
  {
    v48 = 0;
  }

  *(archive + 4) |= 0x20u;
  *(archive + 53) = v48;
}

@end