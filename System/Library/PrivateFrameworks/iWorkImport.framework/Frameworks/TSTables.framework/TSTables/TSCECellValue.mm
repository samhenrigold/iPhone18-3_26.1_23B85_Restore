@interface TSCECellValue
+ (TSCECellValue)cellValueWithArchive:(const void *)archive locale:(id)locale;
+ (id)newCellValueFromTSCEValue:(id)value withLocale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCellValue:(id)value;
- (TSCECellValue)initWithLocale:(id)locale;
- (id)canonicalKeyString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayString;
- (id)format;
- (id)tsceValue;
- (int64_t)compareToCellValue:(id)value;
- (unint64_t)hash;
- (void)encodeCellValueToArchive:(void *)archive;
- (void)updateWithCustomFormatList:(id)list;
@end

@implementation TSCECellValue

- (TSCECellValue)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = TSCECellValue;
  v6 = [(TSCECellValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
  }

  return v7;
}

+ (id)newCellValueFromTSCEValue:(id)value withLocale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v13 = objc_msgSend_nativeType(valueCopy, v7, v8, v9);
  if (v13 <= 4)
  {
    if (v13 == 2)
    {
      v37 = objc_msgSend_BOOLean(valueCopy, v10, v11, v12);
      if (valueCopy)
      {
        objc_msgSend_format(valueCopy, v34, v35, v36);
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
      }

      v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v34, v37, &v56);
      v44 = [TSCEBooleanCellValue alloc];
      v17 = objc_msgSend_initWithBooleanValue_locale_(v44, v45, v14, localeCopy);
      goto LABEL_22;
    }

    if (v13 == 3)
    {
      v21 = objc_msgSend_date(valueCopy, v10, v11, v12);
      if (valueCopy)
      {
        objc_msgSend_format(valueCopy, v18, v19, v20);
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
      }

      v49 = objc_msgSend_dateValue_format_(TSCEDateValue, v18, v21, &v56);

      v50 = [TSCEDateCellValue alloc];
      v41 = objc_msgSend_initWithDateValue_locale_(v50, v51, v49, localeCopy);

      if (!v41)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }

    goto LABEL_17;
  }

  if (v13 == 5)
  {
    v14 = objc_msgSend_asNumberValue(valueCopy, v10, v11, v12);
    v22 = [TSCENumberCellValue alloc];
    v17 = objc_msgSend_initWithNumberValue_locale_(v22, v23, v14, localeCopy);
    goto LABEL_22;
  }

  if (v13 == 7)
  {
    if (!objc_msgSend_isRichTextValue(valueCopy, v10, v11, v12))
    {
      v14 = objc_msgSend_asStringValue(valueCopy, v24, v25, v26);
      v42 = [TSCEStringCellValue alloc];
      v17 = objc_msgSend_initWithStringValue_locale_(v42, v43, v14, localeCopy);
      goto LABEL_22;
    }

    v14 = objc_msgSend_asRichTextValue(valueCopy, v24, v25, v26);
    v33 = objc_msgSend_asRawString(v14, v27, v28, v29);
    if (valueCopy)
    {
      objc_msgSend_format(valueCopy, v30, v31, v32);
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    v53 = objc_msgSend_stringValue_format_(TSCEStringValue, v30, v33, &v56);

    v54 = [TSCEStringCellValue alloc];
    v41 = objc_msgSend_initWithStringValue_locale_(v54, v55, v53, localeCopy);

    goto LABEL_23;
  }

  if (v13 != 9)
  {
LABEL_17:
    v38 = [TSCENilCellValue alloc];
    v41 = objc_msgSend_initWithLocale_(v38, v39, localeCopy, v40);
    if (!v41)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v14 = objc_msgSend_asErrorValue(valueCopy, v10, v11, v12);
  if (v14)
  {
    v15 = [TSCEErrorCellValue alloc];
    v17 = objc_msgSend_initWithErrorValue_locale_(v15, v16, v14, localeCopy);
LABEL_22:
    v41 = v17;
    goto LABEL_23;
  }

  v41 = 0;
LABEL_23:

  if (!v41)
  {
LABEL_24:
    v46 = [TSCENilCellValue alloc];
    v41 = objc_msgSend_initWithLocale_(v46, v47, localeCopy, v48);
  }

LABEL_28:

  return v41;
}

- (id)tsceValue
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue tsceValue]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 103, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSCECellValue tsceValue]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue copyWithZone:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v8, 108, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSCECellValue copyWithZone:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v22, *MEMORY[0x277CBE658], v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (id)displayString
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue displayString]", v2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v7);
  v9 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v8, 113, 0, "Children of TSCECellValue should implement %@.", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return &stru_2834BADA0;
}

- (id)canonicalKeyString
{
  v5 = objc_msgSend_tsceValue(self, a2, v2, v3);
  v9 = objc_msgSend_locale(self, v6, v7, v8);
  v12 = objc_msgSend_canonicalKeyStringForLocale_(v5, v10, v9, v11);

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"abstract_superclass_canonicalKeyString";
  }

  return v13;
}

- (id)format
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue format]", v2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v7);
  v9 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v8, 128, 0, "Children of TSCECellValue should implement %@.", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

- (BOOL)isEqualToCellValue:(id)value
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue isEqualToCellValue:]", v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v8);
  v10 = NSStringFromSelector(a2);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 133, 0, "Children of TSCECellValue should implement %@.", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  return 0;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue hash]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 138, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSCECellValue hash]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToCellValue = objc_msgSend_isEqualToCellValue_(self, v5, equalCopy, v6);
  }

  else
  {
    isEqualToCellValue = 0;
  }

  return isEqualToCellValue;
}

- (int64_t)compareToCellValue:(id)value
{
  valueCopy = value;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCECellValue compareToCellValue:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v7, v10, 151, 0, "Abstract method not overridden by %{public}@", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v23 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v22, v20, "[TSCECellValue compareToCellValue:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v24, *MEMORY[0x277CBE658], v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

+ (TSCECellValue)cellValueWithArchive:(const void *)archive locale:(id)locale
{
  localeCopy = locale;
  v6 = 0;
  v7 = *(archive + 16);
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v8 = [TSCEDateCellValue alloc];
        v10 = (archive + 32);
        v11 = TSCE::_DateCellValueArchive_default_instance_;
        break;
      case 4:
        v15 = [TSCENumberCellValue alloc];
        if (*(archive + 5))
        {
          v14 = objc_msgSend_initWithArchive_locale_(v15, v16, *(archive + 5), localeCopy);
        }

        else
        {
          v14 = objc_msgSend_initWithArchive_locale_(v15, v16, &TSCE::_NumberCellValueArchive_default_instance_, localeCopy);
        }

        goto LABEL_23;
      case 5:
        v8 = [TSCEStringCellValue alloc];
        v10 = (archive + 48);
        v11 = &TSCE::_StringCellValueArchive_default_instance_;
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v7 == 1)
  {
    if ((*(archive + 16) & 0x10) != 0)
    {
      v8 = [TSCEErrorCellValue alloc];
      v10 = (archive + 56);
      v11 = &TSCE::_ErrorCellValueArchive_default_instance_;
LABEL_20:
      v20 = *v10;
      if (v20)
      {
        v14 = objc_msgSend_initWithArchive_locale_(v8, v9, v20, localeCopy);
      }

      else
      {
        v14 = objc_msgSend_initWithArchive_locale_(v8, v9, v11, localeCopy);
      }

      goto LABEL_23;
    }

    v17 = [TSCENilCellValue alloc];
    v14 = objc_msgSend_initWithLocale_(v17, v18, localeCopy, v19);
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_24;
    }

    v12 = [TSCEBooleanCellValue alloc];
    if (*(archive + 3))
    {
      v14 = objc_msgSend_initWithArchive_locale_(v12, v13, *(archive + 3), localeCopy);
    }

    else
    {
      v14 = objc_msgSend_initWithArchive_locale_(v12, v13, TSCE::_BooleanCellValueArchive_default_instance_, localeCopy);
    }
  }

LABEL_23:
  v6 = v14;
LABEL_24:

  return v6;
}

- (void)updateWithCustomFormatList:(id)list
{
  listCopy = list;
  valueType = self->_valueType;
  v9 = valueType > 7;
  v10 = (1 << valueType) & 0xA8;
  if (!v9 && v10 != 0)
  {
    v12 = objc_msgSend_tsceValue(self, v4, v5, v6);
    v16 = v12;
    if (!v12)
    {
      goto LABEL_22;
    }

    objc_msgSend_format(v12, v13, v14, v15);

    if ((v56 - 270) <= 4 && v56 != 273)
    {
      if (!listCopy)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCECellValue updateWithCustomFormatList:]", v19);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 208, 0, "invalid nil value for '%{public}s'", "customFormatList");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
      }

      v29 = objc_msgSend_format(self, v17, v18, v19);
      v16 = objc_msgSend_asCustomFormatWrapper(v29, v30, v31, v32);

      if (!listCopy || !v16)
      {
        goto LABEL_22;
      }

      v36 = objc_msgSend_customFormatKey(v16, v33, v34, v35);
      v42 = objc_msgSend_customFormat(v16, v37, v38, v39);
      if (v36)
      {
        v43 = objc_msgSend_customFormatForKey_(listCopy, v40, v36, v41);
        if (v43)
        {
          v44 = v36;
LABEL_18:
          v47 = objc_alloc(MEMORY[0x277D80650]);
          v51 = objc_msgSend_formatType(v16, v48, v49, v50);
          v53 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v47, v52, v51, v44, v43);
          objc_msgSend_setPopulatedCustomFormat_(self, v54, v53, v55);
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }
      }

      v44 = objc_msgSend_keyForCustomFormat_(listCopy, v40, v42, v41);
      if (v44)
      {
        v43 = v42;
        if (v43)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v43 = 0;
      }

      v53 = 0;
      objc_msgSend_setPopulatedCustomFormat_(self, v45, 0, v46);
      goto LABEL_21;
    }
  }

LABEL_23:
}

- (void)encodeCellValueToArchive:(void *)archive
{
  valueType = self->_valueType;
  if (valueType > 4)
  {
    switch(valueType)
    {
      case 5u:
        v12 = *(archive + 4);
        *(archive + 16) = 4;
        *(archive + 4) = v12 | 0x24;
        v8 = *(archive + 5);
        if (!v8)
        {
          v13 = *(archive + 1);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NumberCellValueArchive>(v13, a2);
          *(archive + 5) = v8;
        }

        goto LABEL_32;
      case 7u:
        v26 = *(archive + 4);
        *(archive + 16) = 5;
        *(archive + 4) = v26 | 0x28;
        v8 = *(archive + 6);
        if (!v8)
        {
          v27 = *(archive + 1);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StringCellValueArchive>(v27, a2);
          *(archive + 6) = v8;
        }

        goto LABEL_32;
      case 9u:
        v10 = *(archive + 4);
        *(archive + 16) = 1;
        *(archive + 4) = v10 | 0x30;
        v8 = *(archive + 7);
        if (!v8)
        {
          v11 = *(archive + 1);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorCellValueArchive>(v11, a2);
          *(archive + 7) = v8;
        }

        goto LABEL_32;
    }
  }

  else
  {
    if (!self->_valueType)
    {
      *(archive + 4) |= 0x20u;
      *(archive + 16) = 1;
      return;
    }

    if (valueType == 2)
    {
      v24 = *(archive + 4);
      *(archive + 16) = 2;
      *(archive + 4) = v24 | 0x21;
      v8 = *(archive + 3);
      if (!v8)
      {
        v25 = *(archive + 1);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::BooleanCellValueArchive>(v25, a2);
        *(archive + 3) = v8;
      }

      goto LABEL_32;
    }

    if (valueType == 3)
    {
      v7 = *(archive + 4);
      *(archive + 16) = 3;
      *(archive + 4) = v7 | 0x22;
      v8 = *(archive + 4);
      if (!v8)
      {
        v9 = *(archive + 1);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DateCellValueArchive>(v9, a2);
        *(archive + 4) = v8;
      }

LABEL_32:

      objc_msgSend_encodeToArchive_(self, a2, v8, v3);
      return;
    }
  }

  v14 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECellValue encodeCellValueToArchive:]", v3);
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellValue.mm", v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 296, 0, "Unexpected value type found in archiving in TSCECellValue");

  v23 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v23, v20, v21, v22);
}

@end