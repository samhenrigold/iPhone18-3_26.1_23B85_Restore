@interface TSCEStock
+ (id)stockFromArchive:(const void *)archive;
+ (id)stockWithAttributes:(id)attributes;
- (BOOL)up;
- (NSString)dateString;
- (TSCEStock)init;
- (TSCEStock)initWithAttributes:(id)attributes;
- (TSCEStock)initWithSymbol:(id)symbol;
- (id)abbreviatedNumberForAttribute:(int64_t)attribute atLocale:(id)locale;
- (id)initFromArchive:(const void *)archive;
- (id)valueForAttribute:(int64_t)attribute;
- (id)valueForAttribute:(int64_t)attribute forLocale:(id)locale;
- (void)encodeToArchive:(void *)archive;
- (void)p_populateAttributesFromArray:(id)array;
- (void)p_setFormattedAttr:(int64_t)attr fromArray:(id)array;
@end

@implementation TSCEStock

+ (id)stockWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithAttributes_(v4, v5, attributesCopy, v6);

  return v7;
}

- (TSCEStock)init
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStock init]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 61, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", v14, "Do not call method", "[TSCEStock init]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, *MEMORY[0x277CBE658], v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (TSCEStock)initWithSymbol:(id)symbol
{
  symbolCopy = symbol;
  v15.receiver = self;
  v15.super_class = TSCEStock;
  v8 = [(TSCEStock *)&v15 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(symbolCopy, v5, v6, v7);
    symbol = v8->_symbol;
    v8->_symbol = v9;

    date = v8->_date;
    v8->_date = 0;

    v12 = objc_alloc_init(MEMORY[0x277D81330]);
    attributes = v8->_attributes;
    v8->_attributes = v12;
  }

  return v8;
}

- (TSCEStock)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = objc_msgSend_initWithSymbol_(self, v5, 0, v6);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_p_populateAttributesFromArray_(v7, v8, attributesCopy, v9);
  }

  return v10;
}

- (id)initFromArchive:(const void *)archive
{
  v8 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL, v3);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEStock initFromArchive:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 86, 0, "invalid nil value for '%{public}s'", "symbol");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v21 = objc_msgSend_initWithSymbol_(self, v6, v8, v7);
  if (v21)
  {
    if ((*(archive + 16) & 2) != 0)
    {
      v22 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v18, v19, v20, *(archive + 7));
      v26 = objc_msgSend_copy(v22, v23, v24, v25);
      v27 = *(v21 + 16);
      *(v21 + 16) = v26;
    }

    v28 = *(archive + 5);
    if (v28)
    {
      v29 = v28 + 8;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(archive + 8);
    if (v30)
    {
      v31 = 8 * v30;
      do
      {
        v32 = *(*v29 + 32);
        v33 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v18, *(*v29 + 24) & 0xFFFFFFFFFFFFFFFELL, v20);
        objc_msgSend_setObject_atIndexedSubscript_(*(v21 + 24), v34, v33, v32);

        v29 += 8;
        v31 -= 8;
      }

      while (v31);
    }
  }

  return v21;
}

+ (id)stockFromArchive:(const void *)archive
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initFromArchive_(v4, v5, archive, v6);

  return v7;
}

- (void)encodeToArchive:(void *)archive
{
  symbol = self->_symbol;
  if (symbol || (v7 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStock encodeToArchive:]", v3), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 110, 0, "invalid nil value for '%{public}s'", "_symbol"), v11, v8, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15), (symbol = self->_symbol) != 0))
  {
    v16 = objc_msgSend_tsp_protobufString(symbol, a2, archive, v3);
    *(archive + 4) |= 1u;
    sub_22108CCD0(__p, v16);
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  else
  {
    v34 = objc_msgSend_tsp_protobufString(@"NULL", a2, archive, v3);
    *(archive + 4) |= 1u;
    sub_22108CCD0(__p, v34);
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  date = self->_date;
  if (date)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(date, v17, v18, v19);
    *(archive + 4) |= 2u;
    *(archive + 7) = v21;
  }

  for (i = 1; i != 28; ++i)
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v17, i, v19);
    if (!v26)
    {
      goto LABEL_19;
    }

    v27 = *(archive + 5);
    if (!v27)
    {
      goto LABEL_15;
    }

    v28 = *(archive + 8);
    v29 = *v27;
    if (v28 < *v27)
    {
      *(archive + 8) = v28 + 1;
      v30 = *&v27[2 * v28 + 2];
      goto LABEL_17;
    }

    if (v29 == *(archive + 9))
    {
LABEL_15:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v27 = *(archive + 5);
      v29 = *v27;
    }

    *v27 = v29 + 1;
    v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive_AttributeEntry>(*(archive + 3));
    v31 = *(archive + 8);
    v32 = *(archive + 5) + 8 * v31;
    *(archive + 8) = v31 + 1;
    *(v32 + 8) = v30;
LABEL_17:
    *(v30 + 16) |= 2u;
    *(v30 + 32) = i;
    v33 = objc_msgSend_tsp_protobufString(v26, v23, v24, v25);
    *(v30 + 16) |= 1u;
    sub_22108CCD0(__p, v33);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_19:
  }
}

- (id)valueForAttribute:(int64_t)attribute
{
  if (!attribute)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEStock valueForAttribute:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 134, 0, "Can't fetch an unknown attribute!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  objc_opt_class();
  v18 = objc_msgSend_attributes(self, v15, v16, v17);
  v21 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, attribute, v20);
  v22 = TSUDynamicCast();

  if (!v22)
  {
    v22 = objc_msgSend_kNilStockAttributeString(TSCEStock, v23, v24, v25);
  }

  return v22;
}

- (id)valueForAttribute:(int64_t)attribute forLocale:(id)locale
{
  localeCopy = locale;
  if (!attribute)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEStock valueForAttribute:forLocale:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 145, 0, "Can't fetch an unknown attribute!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v21 = objc_msgSend_valueForAttribute_(self, v6, attribute, v7);
  if (v21)
  {
    v22 = objc_msgSend_localeIdentifier(localeCopy, v18, v19, v20);
    v26 = objc_msgSend_nativeLocaleIdentifier(TSCEStock, v23, v24, v25);
    if ((objc_msgSend_isEqualToString_(v22, v27, v26, v28) & 1) == 0)
    {
      v32 = objc_msgSend_kNilStockAttributeString(TSCEStock, v29, v30, v31);
      isEqualToString = objc_msgSend_isEqualToString_(v21, v33, v32, v34);

      if (isEqualToString)
      {
        goto LABEL_10;
      }

      v22 = objc_msgSend_usEnglishLocale(MEMORY[0x277D81228], v36, v37, v38);
      v39 = MEMORY[0x277CCA900];
      v43 = objc_msgSend_groupingSeparator(v22, v40, v41, v42);
      v46 = objc_msgSend_characterSetWithCharactersInString_(v39, v44, v43, v45);
      v26 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(v21, v47, v46, v48);

      v49 = objc_opt_new();
      v53 = objc_msgSend_locale(v22, v50, v51, v52);
      objc_msgSend_setLocale_(v49, v54, v53, v55);

      v58 = objc_msgSend_numberFromString_(v49, v56, v26, v57);
      if (v58)
      {
        v59 = objc_alloc(MEMORY[0x277D806A0]);
        v61 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v59, v60, 256, 2, 0, 1);
        objc_msgSend_doubleValue(v58, v62, v63, v64);
        v67 = objc_msgSend_stringFromDouble_locale_(v61, v65, localeCopy, v66);

        v21 = v67;
      }
    }
  }

LABEL_10:

  return v21;
}

- (BOOL)up
{
  v3 = objc_msgSend_valueForAttribute_(self, a2, 7, v2);
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBEAF8]);
  v8 = objc_msgSend_initWithLocaleIdentifier_(v5, v6, @"en_US", v7);
  objc_msgSend_setLocale_(v4, v9, v8, v10);

  v13 = objc_msgSend_numberFromString_(v4, v11, v3, v12);
  objc_msgSend_doubleValue(v13, v14, v15, v16);
  v18 = v17 >= 0.0;

  return v18;
}

- (NSString)dateString
{
  if (self->_date)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setLocalizedDateFormatFromTemplate_(v5, v6, @"MMMdyyyyhhmmzzz", v7);
    v10 = objc_msgSend_stringFromDate_(v5, v8, self->_date, v9);
  }

  else
  {
    v10 = objc_msgSend_kNilStockAttributeString(TSCEStock, a2, v2, v3);
  }

  return v10;
}

- (void)p_setFormattedAttr:(int64_t)attr fromArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  v8 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v6, attr, v7);
  v9 = TSUDynamicCast();

  v10 = @"—";
  v14 = sub_221219970(attr);
  if ((v14 - 2) >= 4)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v24 = v9;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v15 = off_278465748[v14 - 2];
    objc_msgSend_doubleValue(v9, v11, v12, v13);
    v19 = v18;
    if (v14 == 2)
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v16, 8, v17);
      isEqualToString = objc_msgSend_isEqualToString_(v20, v21, @"GBp", v22);

      if (isEqualToString)
      {
        v19 = v19 / 100.0;
      }
    }

    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, v15, v17, *&v19);
  }

  v10 = v24;
LABEL_10:
  v25 = objc_msgSend_attributes(self, v11, v12, v13);
  objc_msgSend_setObject_atIndexedSubscript_(v25, v26, v10, attr);
}

- (id)abbreviatedNumberForAttribute:(int64_t)attribute atLocale:(id)locale
{
  localeCopy = locale;
  v10 = objc_msgSend_usEnglishLocale(MEMORY[0x277D81228], v7, v8, v9);
  v13 = objc_msgSend_valueForAttribute_(self, v11, attribute, v12);
  v14 = MEMORY[0x277CCA900];
  v18 = objc_msgSend_groupingSeparator(v10, v15, v16, v17);
  v21 = objc_msgSend_characterSetWithCharactersInString_(v14, v19, v18, v20);
  v24 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(v13, v22, v21, v23);

  v28 = objc_msgSend_kNilStockAttributeString(TSCEStock, v25, v26, v27);
  v32 = objc_msgSend_kNilStockAttributeString(TSCEStock, v29, v30, v31);
  isEqualToString = objc_msgSend_isEqualToString_(v24, v33, v32, v34);

  if ((isEqualToString & 1) == 0)
  {
    v39 = objc_msgSend_doubleValue(v24, v36, v37, v38);
    v41 = v40 / 1.0e12;
    if (v40 / 1.0e12 <= 1.0)
    {
      v41 = v40 / 1000000000.0;
      if (v40 / 1000000000.0 <= 1.0)
      {
        v41 = v40 / 1000000.0;
        if (v40 / 1000000.0 <= 1.0)
        {
          v41 = v40 / 1000.0;
          if (v40 / 1000.0 <= 1.0)
          {
            v48 = &stru_2834BADA0;
            v41 = v40;
            goto LABEL_11;
          }

          v42 = sub_2212F6DF8(v39);
          v44 = objc_msgSend_localizedStringForKey_value_table_(v42, v47, @"Number suffix - thousands", @"K", @"TSCalculationEngine");
        }

        else
        {
          v42 = sub_2212F6DF8(v39);
          v44 = objc_msgSend_localizedStringForKey_value_table_(v42, v46, @"Number suffix - millions", @"M", @"TSCalculationEngine");
        }
      }

      else
      {
        v42 = sub_2212F6DF8(v39);
        v44 = objc_msgSend_localizedStringForKey_value_table_(v42, v45, @"Number suffix - billions", @"B", @"TSCalculationEngine");
      }
    }

    else
    {
      v42 = sub_2212F6DF8(v39);
      v44 = objc_msgSend_localizedStringForKey_value_table_(v42, v43, @"Number suffix - trillions", @"T", @"TSCalculationEngine");
    }

    v48 = v44;

LABEL_11:
    v49 = objc_alloc(MEMORY[0x277D806A0]);
    v51 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v49, v50, 256, 2, 4, 1);
    v54 = objc_msgSend_stringFromDouble_locale_(v51, v52, localeCopy, v53, v41);
    v57 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v55, @"%@%@", v56, v54, v48);

    v28 = v57;
  }

  return v28;
}

- (void)p_populateAttributesFromArray:(id)array
{
  arrayCopy = array;
  v6 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v4, 26, v5);
  objc_msgSend_setSymbol_(self, v7, v6, v8);

  v12 = objc_msgSend_symbol(self, v9, v10, v11);

  if (!v12)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEStock p_populateAttributesFromArray:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStock.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 292, 0, "invalid nil value for '%{public}s'", "self.symbol");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = objc_alloc_init(MEMORY[0x277CCA968]);
  v25 = objc_alloc(MEMORY[0x277CBEAF8]);
  v28 = objc_msgSend_initWithLocaleIdentifier_(v25, v26, @"en_US_POSIX", v27);
  objc_msgSend_setLocale_(v24, v29, v28, v30);

  objc_msgSend_setDateFormat_(v24, v31, @"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'", v32);
  v35 = objc_msgSend_timeZoneForSecondsFromGMT_(MEMORY[0x277CBEBB0], v33, 0, v34);
  objc_msgSend_setTimeZone_(v24, v36, v35, v37);

  v40 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v38, 27, v39);
  v43 = objc_msgSend_dateFromString_(v24, v41, v40, v42);
  objc_msgSend_setDate_(self, v44, v43, v45);

  v49 = objc_msgSend_attributes(self, v46, v47, v48);
  objc_msgSend_clear(v49, v50, v51, v52);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v53, 1, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v54, 2, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v55, 3, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v56, 4, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v57, 5, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v58, 6, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v59, 7, arrayCopy);
  v62 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v60, 8, v61);
  v63 = objc_alloc(MEMORY[0x277CBEAF8]);
  v66 = objc_msgSend_initWithLocaleIdentifier_(v63, v64, @"en_US_POSIX", v65);
  v69 = objc_msgSend_uppercaseStringWithLocale_(v62, v67, v66, v68);
  v73 = objc_msgSend_attributes(self, v70, v71, v72);
  objc_msgSend_setObject_atIndexedSubscript_(v73, v74, v69, 8);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v75, 9, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v76, 10, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v77, 11, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v78, 12, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v79, 13, arrayCopy);
  v82 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v80, 14, v81);
  v86 = objc_msgSend_attributes(self, v83, v84, v85);
  objc_msgSend_setObject_atIndexedSubscript_(v86, v87, v82, 14);

  v90 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v88, 26, v89);
  v94 = objc_msgSend_attributes(self, v91, v92, v93);
  objc_msgSend_setObject_atIndexedSubscript_(v94, v95, v90, 26);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v96, 15, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v97, 16, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v98, 17, arrayCopy);
  v101 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v99, 18, v100);
  v105 = objc_msgSend_attributes(self, v102, v103, v104);
  objc_msgSend_setObject_atIndexedSubscript_(v105, v106, v101, 18);

  objc_msgSend_p_setFormattedAttr_fromArray_(self, v107, 19, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v108, 20, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v109, 21, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v110, 22, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v111, 23, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v112, 24, arrayCopy);
  objc_msgSend_p_setFormattedAttr_fromArray_(self, v113, 25, arrayCopy);
}

@end