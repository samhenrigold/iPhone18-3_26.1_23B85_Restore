@interface TSCEErrorCellValue
- (BOOL)isEqualToCellValue:(id)value;
- (TSCEErrorCellValue)initWithArchive:(const void *)archive locale:(id)locale;
- (TSCEErrorCellValue)initWithErrorValue:(id)value locale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)tsceValue;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSCEErrorCellValue

- (TSCEErrorCellValue)initWithErrorValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = TSCEErrorCellValue;
  v8 = [(TSCECellValue *)&v15 initWithLocale:localeCopy];
  v8->super._valueType = 9;
  v12 = objc_msgSend_copy(valueCopy, v9, v10, v11);
  errorValue = v8->_errorValue;
  v8->_errorValue = v12;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCEErrorCellValue alloc];
  errorValue = self->_errorValue;
  v9 = objc_msgSend_locale(self, v6, v7, v8);
  v11 = objc_msgSend_initWithErrorValue_locale_(v4, v10, errorValue, v9);

  return v11;
}

- (id)tsceValue
{
  errorValue = self->_errorValue;
  if (errorValue)
  {
    v5 = errorValue;
  }

  else
  {
    v5 = objc_msgSend_nilValue(TSCENilValue, a2, v2, v3);
  }

  return v5;
}

- (id)description
{
  v4 = objc_msgSend_error(self->_errorValue, a2, v2, v3);
  v5 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_errorType(v4, v6, v7, v8);
  v13 = objc_msgSend_errorTypeKey(v4, v10, v11, v12);
  v16 = objc_msgSend_stringWithFormat_(v5, v14, @"TSCEErrorValue (type %d %@)", v15, v9, v13);

  return v16;
}

- (BOOL)isEqualToCellValue:(id)value
{
  v89 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v81 = valueCopy;
  if (valueCopy && objc_msgSend_valueType(valueCopy, v5, v6, v7) == 9)
  {
    v11 = objc_msgSend_error(self->_errorValue, v8, v9, v10);
    v15 = objc_msgSend_errorDictionary(v11, v12, v13, v14);

    v19 = objc_msgSend_errorValue(v81, v16, v17, v18);
    v23 = objc_msgSend_error(v19, v20, v21, v22);
    v83 = objc_msgSend_errorDictionary(v23, v24, v25, v26);

    v27 = MEMORY[0x277CBEB98];
    v31 = objc_msgSend_allKeys(v15, v28, v29, v30);
    v34 = objc_msgSend_setWithArray_(v27, v32, v31, v33);
    v38 = objc_msgSend_allKeys(v83, v35, v36, v37);
    v41 = objc_msgSend_setByAddingObjectsFromArray_(v34, v39, v38, v40);

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v41;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v84, v88, 16);
    if (v43)
    {
      v44 = *v85;
      while (2)
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v85 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v84 + 1) + 8 * i);
          objc_opt_class();
          v49 = objc_msgSend_objectForKeyedSubscript_(v15, v47, v46, v48);
          v50 = TSUDynamicCast();
          v51 = v50 == 0;

          if (v51 || (objc_opt_class(), objc_msgSend_objectForKeyedSubscript_(v15, v52, v46, v53), v54 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v83, v56, v46, v57), v58 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v55, v59, v58, v60), v58, v55, v54, (isEqualToString & 1) != 0))
          {
            objc_opt_class();
            v64 = objc_msgSend_objectForKeyedSubscript_(v15, v62, v46, v63);
            v65 = TSUDynamicCast();
            v66 = v65 == 0;

            if (v66)
            {
              continue;
            }

            objc_opt_class();
            v70 = objc_msgSend_objectForKeyedSubscript_(v83, v68, v46, v69);
            v71 = TSUDynamicCast();

            if (v71)
            {
              objc_opt_class();
              v74 = objc_msgSend_objectForKeyedSubscript_(v15, v72, v46, v73);
              v75 = TSUDynamicCast();
              isEqualToNumber = objc_msgSend_isEqualToNumber_(v75, v76, v71, v77);

              if (isEqualToNumber)
              {
                continue;
              }
            }
          }

          v79 = 0;
          goto LABEL_19;
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, &v84, v88, 16);
        v79 = 1;
        if (v43)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v79 = 1;
    }

LABEL_19:
  }

  else
  {
    v79 = 0;
  }

  return v79;
}

- (TSCEErrorCellValue)initWithArchive:(const void *)archive locale:(id)locale
{
  localeCopy = locale;
  v24.receiver = self;
  v24.super_class = TSCEErrorCellValue;
  v7 = [(TSCECellValue *)&v24 initWithLocale:localeCopy];
  v10 = v7;
  if (v7)
  {
    v7->super._valueType = 9;
    v11 = *(archive + 8);
    v15 = objc_msgSend_errorForErrorType_(TSCEError, v8, v11, v9);
    if (v11 == 116)
    {
      if ((*(archive + 16) & 8) == 0)
      {
LABEL_10:
        v21 = objc_msgSend_errorValue_(TSCEErrorValue, v12, v15, v14);
        errorValue = v10->_errorValue;
        v10->_errorValue = v21;

        goto LABEL_11;
      }

      v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v12, v13, v14, *(archive + 5));
      objc_msgSend_setDateAsTimeInterval_(v15, v19, v16, v20);
    }

    else
    {
      if (v11 != 117 && v11 != 120 || (*(archive + 16) & 1) == 0)
      {
        goto LABEL_10;
      }

      v16 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v12, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v14);
      objc_msgSend_setExtraInfoString_(v15, v17, v16, v18);
    }

    goto LABEL_10;
  }

LABEL_11:

  return v10;
}

- (void)encodeToArchive:(void *)archive
{
  v5 = objc_msgSend_error(self->_errorValue, a2, archive, v3);
  v9 = objc_msgSend_errorType(v5, v6, v7, v8);
  *(archive + 4) |= 2u;
  *(archive + 8) = v9;
  if (v9 == 116)
  {
    v21 = objc_msgSend_dateAsTimeInterval(v5, v10, v11, v12);
    v17 = v21;
    if (v21)
    {
      objc_msgSend_doubleValue(v21, v22, v23, v24);
      *(archive + 4) |= 8u;
      *(archive + 5) = v25;
    }

    goto LABEL_15;
  }

  if (v9 == 117 || v9 == 120)
  {
    v13 = objc_msgSend_extraInfoString(v5, v10, v11, v12);
    v17 = v13;
    if (v13)
    {
      v18 = objc_msgSend_tsp_protobufString(v13, v14, v15, v16);
      v19 = strlen(v18);
      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_22108CD88();
      }

      v20 = v19;
      if (v19 >= 0x17)
      {
        operator new();
      }

      v27 = v19;
      if (v19)
      {
        memmove(&__dst, v18, v19);
      }

      *(&__dst + v20) = 0;
      *(archive + 4) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v27 < 0)
      {
        operator delete(__dst);
      }
    }

LABEL_15:
  }
}

@end