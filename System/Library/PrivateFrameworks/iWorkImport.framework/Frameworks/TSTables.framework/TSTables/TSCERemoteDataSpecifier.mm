@interface TSCERemoteDataSpecifier
+ (id)specifierFromArchive:(const void *)archive;
+ (id)specifierWithFunctionIndex:(unsigned __int16)index symbol:(id)symbol attribute:(int64_t)attribute;
+ (id)specifierWithFunctionIndex:(unsigned __int16)index symbol:(id)symbol attribute:(int64_t)attribute year:(int64_t)year month:(int64_t)month day:(int64_t)day;
- (BOOL)hasDateEqualToDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSString)functionName;
- (TSCERemoteDataSpecifier)initWithFunctionIndex:(unsigned __int16)index symbol:(id)symbol attribute:(int64_t)attribute year:(int64_t)year month:(int64_t)month day:(int64_t)day;
- (TSCEValue)invalidAttributeErrorValue;
- (TSCEValue)invalidSymbolErrorValue;
- (double)p_timeInterval;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromArchive:(const void *)archive;
- (id)specifierByChangingAttributeTo:(int64_t)to;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSCERemoteDataSpecifier

+ (id)specifierWithFunctionIndex:(unsigned __int16)index symbol:(id)symbol attribute:(int64_t)attribute
{
  indexCopy = index;
  symbolCopy = symbol;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v8, v9, indexCopy, symbolCopy, attribute, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);

  return v10;
}

+ (id)specifierWithFunctionIndex:(unsigned __int16)index symbol:(id)symbol attribute:(int64_t)attribute year:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  indexCopy = index;
  symbolCopy = symbol;
  v14 = objc_alloc(objc_opt_class());
  v16 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v14, v15, indexCopy, symbolCopy, attribute, year, month, day);

  return v16;
}

- (TSCERemoteDataSpecifier)initWithFunctionIndex:(unsigned __int16)index symbol:(id)symbol attribute:(int64_t)attribute year:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  symbolCopy = symbol;
  v43.receiver = self;
  v43.super_class = TSCERemoteDataSpecifier;
  v15 = [(TSCERemoteDataSpecifier *)&v43 init];
  v19 = v15;
  if (v15)
  {
    v15->_functionIndex = index;
    v20 = objc_msgSend_copy(symbolCopy, v16, v17, v18);
    symbol = v19->_symbol;
    v19->_symbol = v20;

    v19->_attribute = attribute;
    v19->_year = year;
    v19->_month = month;
    v19->_day = day;
    if (year == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (objc_msgSend_isCold(v19, v22, v23, v24))
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCERemoteDataSpecifier initWithFunctionIndex:symbol:attribute:year:month:day:]", v27);
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v31);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 88, 0, "How does a cold specifier not have a date?");
LABEL_7:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
      }
    }

    else if ((objc_msgSend_isCold(v19, v22, v23, v24) & 1) == 0)
    {
      v34 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCERemoteDataSpecifier initWithFunctionIndex:symbol:attribute:year:month:day:]", v27);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v37, v29, v32, 86, 0, "How does a hot specifier have a date?");
      goto LABEL_7;
    }

    v41 = v19->_symbol;
    v19->_hashVal = (v19->_attribute << 40) | ((10000 * LODWORD(v19->_year) + 100 * LODWORD(v19->_month) + LODWORD(v19->_day)) << 48) | (LOBYTE(v19->_functionIndex) << 32);
    v19->_hashVal |= objc_msgSend_hash(v41, v25, v26, v27);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  functionIndex = self->_functionIndex;
  symbol = self->_symbol;
  attribute = self->_attribute;
  year = self->_year;
  month = self->_month;
  day = self->_day;

  return objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v4, v5, functionIndex, symbol, attribute, year, month, day);
}

- (id)specifierByChangingAttributeTo:(int64_t)to
{
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(v5, v6, self->_functionIndex, self->_symbol, to, self->_year, self->_month, self->_day);

  return v7;
}

+ (id)specifierFromArchive:(const void *)archive
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initFromArchive_(v4, v5, archive, v6);

  return v7;
}

- (id)initFromArchive:(const void *)archive
{
  v6 = *(archive + 8);
  v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], a2, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v3);
  v11 = *(archive + 9);
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if ((*(archive + 16) & 8) != 0)
  {
    v14 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v7, v8, v9, *(archive + 5));
    v18 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17);
    objc_msgSend_extractComponentsFromDate_year_month_day_(v18, v19, v14, &v24, &v23, &v22);

    v12 = v23;
    v13 = v24;
  }

  v20 = objc_msgSend_initWithFunctionIndex_symbol_attribute_year_month_day_(self, v7, v6, v10, v11, v13, v12);

  return v20;
}

- (void)encodeToArchive:(void *)archive
{
  v6 = objc_msgSend_functionIndex(self, a2, archive, v3);
  *(archive + 4) |= 2u;
  *(archive + 8) = v6;
  v10 = objc_msgSend_symbol(self, v7, v8, v9);
  v14 = objc_msgSend_tsp_protobufString(v10, v11, v12, v13);
  sub_2213CE784(archive, v14);

  v18 = objc_msgSend_attribute(self, v15, v16, v17);
  if (v18 >= 0x100000000)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCERemoteDataSpecifier encodeToArchive:]", v21);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 140, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    LODWORD(v18) = -1;
  }

  else if (v18 < 0)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCERemoteDataSpecifier encodeToArchive:]", v21);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataSpecifier.mm", v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 140, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
    LODWORD(v18) = 0;
  }

  *(archive + 4) |= 4u;
  *(archive + 9) = v18;
  if (objc_msgSend_isCold(self, v19, v20, v21))
  {
    objc_msgSend_p_timeInterval(self, v22, v23, v24);
    *(archive + 4) |= 8u;
    *(archive + 5) = v25;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5 && v5[7] == self->_hashVal && *(v5 + 4) == self->_functionIndex && v5[3] == self->_attribute && v5[4] == self->_year && v5[5] == self->_month && v5[6] == self->_day)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v5[2], v6, self->_symbol, v7);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)hasDateEqualToDate:(id)date
{
  dateCopy = date;
  year = self->_year;
  if (dateCopy)
  {
    if (year == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }
  }

  else if (year != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v9 = objc_msgSend_gregorianCalendar(TSCECalendar, v4, v5, v6);
  objc_msgSend_extractComponentsFromDate_year_month_day_(v9, v10, dateCopy, &v15, &v14, &v13);
  if (v15 != self->_year || v14 != self->_month)
  {
    goto LABEL_8;
  }

  v11 = v13 == self->_day;
LABEL_9:

  return v11;
}

- (double)p_timeInterval
{
  v4 = 0.0;
  if (self->_year != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = objc_msgSend_gregorianCalendar(TSCECalendar, a2, v2, v3);
    v8 = objc_msgSend_dateWithYear_month_day_(v6, v7, self->_year, self->_month, self->_day);
    objc_msgSend_timeIntervalSinceReferenceDate(v8, v9, v10, v11);
    v4 = v12;
  }

  return v4;
}

- (TSCEValue)invalidAttributeErrorValue
{
  v4 = objc_msgSend_functionIndex(self, a2, v2, v3);
  if (v4 > 299)
  {
    if (v4 == 300)
    {
      v8 = objc_msgSend_invalidLiveCurrencyAttributeError(TSCEError, v5, v6, v7);
      v11 = objc_msgSend_errorValue_(TSCEErrorValue, v17, v8, v18);
      goto LABEL_11;
    }

    if (v4 == 301)
    {
      v8 = objc_msgSend_invalidHistoricalCurrencyAttributeError(TSCEError, v5, v6, v7);
      v11 = objc_msgSend_errorValue_(TSCEErrorValue, v12, v8, v13);
      goto LABEL_11;
    }

LABEL_8:
    v14 = objc_msgSend_errorValue_(TSCEErrorValue, v5, 0, v7);
    goto LABEL_12;
  }

  if (v4 == 298)
  {
    v8 = objc_msgSend_invalidLiveStockAttributeError(TSCEError, v5, v6, v7);
    v11 = objc_msgSend_errorValue_(TSCEErrorValue, v15, v8, v16);
    goto LABEL_11;
  }

  if (v4 != 299)
  {
    goto LABEL_8;
  }

  v8 = objc_msgSend_invalidHistoricalStockAttributeError(TSCEError, v5, v6, v7);
  v11 = objc_msgSend_errorValue_(TSCEErrorValue, v9, v8, v10);
LABEL_11:
  v14 = v11;

LABEL_12:

  return v14;
}

- (TSCEValue)invalidSymbolErrorValue
{
  v5 = objc_msgSend_functionIndex(self, a2, v2, v3);
  if (v5 > 299)
  {
    if (v5 == 301 || v5 == 300)
    {
      v10 = objc_msgSend_invalidCurrencyPairError(TSCEError, v6, v7, v8);
      v9 = objc_msgSend_errorValue_(TSCEErrorValue, v16, v10, v17);
      goto LABEL_10;
    }

LABEL_7:
    v9 = objc_msgSend_errorValue_(TSCEErrorValue, v6, 0, v8);
    goto LABEL_11;
  }

  if (v5 != 298 && v5 != 299)
  {
    goto LABEL_7;
  }

  v10 = objc_msgSend_symbol(self, v6, v7, v8);
  v13 = objc_msgSend_invalidStockCodeError_(TSCEError, v11, v10, v12);
  v9 = objc_msgSend_errorValue_(TSCEErrorValue, v14, v13, v15);

LABEL_10:
LABEL_11:

  return v9;
}

- (id)description
{
  year = self->_year;
  if (year == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_2834BADA0;
  }

  else
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @" [%04zd/%02zd/%02zd]", v3, year, self->_month, self->_day);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_msgSend_functionName(self, a2, v2, v3);
  v12 = objc_msgSend_symbol(self, v9, v10, v11);
  v16 = objc_msgSend_attribute(self, v13, v14, v15);
  v17 = sub_221219B30(v16);
  v20 = objc_msgSend_stringWithFormat_(v7, v18, @"<%@ %@ %@%@>", v19, v8, v12, v17, v6);

  return v20;
}

- (NSString)functionName
{
  v4 = objc_msgSend_functionIndex(self, a2, v2, v3);
  v7 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v5, v4, v6);
  v11 = objc_msgSend_functionName(v7, v8, v9, v10);

  return v11;
}

@end