@interface TSTFormulaPredArgData
+ (id)getPredArgDataFromCell:(id)cell;
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (NSDate)date;
- (NSNumber)number;
- (NSString)string;
- (TSCENumberValue)duration;
- (TSTFormulaPredArgData)init;
- (TSTFormulaPredArgData)initWithBool:(BOOL)bool;
- (TSTFormulaPredArgData)initWithDate:(id)date;
- (TSTFormulaPredArgData)initWithDouble:(double)double;
- (TSTFormulaPredArgData)initWithDuration:(double)duration units:(unsigned __int8)units;
- (TSTFormulaPredArgData)initWithNumber:(id)number;
- (TSTFormulaPredArgData)initWithString:(id)string;
- (double)doubleValue;
- (double)durationValue;
- (id)initFromArchive:(const void *)archive;
- (unint64_t)hash;
- (unsigned)durationUnits;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTFormulaPredArgData

- (TSTFormulaPredArgData)init
{
  v3.receiver = self;
  v3.super_class = TSTFormulaPredArgData;
  result = [(TSTFormulaPredArgData *)&v3 init];
  if (result)
  {
    result->_dataType = 0;
  }

  return result;
}

- (TSTFormulaPredArgData)initWithBool:(BOOL)bool
{
  v6.receiver = self;
  v6.super_class = TSTFormulaPredArgData;
  v3 = [(TSTFormulaPredArgData *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_dataType = 6;
    TSUDecimal::operator=();
  }

  return v4;
}

- (TSTFormulaPredArgData)initWithDouble:(double)double
{
  v6.receiver = self;
  v6.super_class = TSTFormulaPredArgData;
  v3 = [(TSTFormulaPredArgData *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_dataType = 1;
    TSUDecimal::operator=();
  }

  return v4;
}

- (TSTFormulaPredArgData)initWithNumber:(id)number
{
  numberCopy = number;
  v8 = numberCopy;
  if (numberCopy)
  {
    objc_msgSend_doubleValue(numberCopy, v5, v6, v7);
    v12 = objc_msgSend_initWithDouble_(self, v9, v10, v11);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSTFormulaPredArgData;
    v13 = [(TSTFormulaPredArgData *)&v15 init];
    v12 = v13;
    if (v13)
    {
      v13->_dataType = 0;
    }
  }

  return v12;
}

- (TSTFormulaPredArgData)initWithDate:(id)date
{
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = TSTFormulaPredArgData;
  v5 = [(TSTFormulaPredArgData *)&v17 init];
  v9 = v5;
  if (v5)
  {
    if (dateCopy)
    {
      v5->_dataType = 2;
      objc_msgSend_timeIntervalSinceReferenceDate(dateCopy, v6, v7, v8);
      TSUDecimal::operator=();
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      *&v9->_year = vnegq_f64(v10);
      v9->_day = 0x7FFFFFFFFFFFFFFFLL;
      v14 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13);
      objc_msgSend_extractComponentsFromDate_year_month_day_(v14, v15, dateCopy, &v9->_year, &v9->_month, &v9->_day);
    }

    else
    {
      v5->_dataType = 0;
    }
  }

  return v9;
}

- (TSTFormulaPredArgData)initWithString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = TSTFormulaPredArgData;
  v5 = [(TSTFormulaPredArgData *)&v13 init];
  v9 = v5;
  if (v5)
  {
    v5->_dataType = 3;
    v10 = objc_msgSend_copy(stringCopy, v6, v7, v8);
    string = v9->_string;
    v9->_string = v10;
  }

  return v9;
}

- (TSTFormulaPredArgData)initWithDuration:(double)duration units:(unsigned __int8)units
{
  v8.receiver = self;
  v8.super_class = TSTFormulaPredArgData;
  v5 = [(TSTFormulaPredArgData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_dataType = 5;
    TSUDecimal::operator=();
    v6->_units = units;
  }

  return v6;
}

+ (id)getPredArgDataFromCell:(id)cell
{
  cellCopy = cell;
  v7 = objc_msgSend_valueType(cellCopy, v4, v5, v6);
  if (v7 > 5)
  {
    if (v7 <= 8)
    {
      if (v7 == 6)
      {
        v52 = [TSTFormulaPredArgData alloc];
        v56 = objc_msgSend_BOOLValue(cellCopy, v53, v54, v55);
        v26 = objc_msgSend_initWithBool_(v52, v57, v56, v58);
        goto LABEL_21;
      }

      if (v7 == 7)
      {
        v11 = objc_msgSend_durationFormat(cellCopy, v8, v9, v10);
        v15 = objc_msgSend_asDurationFormat(v11, v12, v13, v14);
        v19 = objc_msgSend_durationUnitLargest(v15, v16, v17, v18);

        v20 = [TSTFormulaPredArgData alloc];
        objc_msgSend_durationTimeIntervalValue(cellCopy, v21, v22, v23);
        v26 = objc_msgSend_initWithDuration_units_(v20, v24, v19, v25);
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (v7 != 9)
    {
      if (v7 == 10)
      {
LABEL_15:
        v35 = [TSTFormulaPredArgData alloc];
        objc_msgSend_underlyingDoubleValue(cellCopy, v36, v37, v38);
        v26 = objc_msgSend_initWithDouble_(v35, v39, v40, v41);
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_16:
    v42 = [TSTFormulaPredArgData alloc];
    v31 = objc_msgSend_formattedValue(cellCopy, v43, v44, v45);
    v34 = objc_msgSend_initWithString_(v42, v46, v31, v47);
LABEL_17:
    v48 = v34;

    if (v48)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    v49 = [TSTFormulaPredArgData alloc];
    v26 = objc_msgSend_initWithString_(v49, v50, &stru_2834BADA0, v51);
LABEL_21:
    v48 = v26;
    if (v26)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v7 == 3)
  {
    goto LABEL_16;
  }

  if (v7 == 5)
  {
    v27 = [TSTFormulaPredArgData alloc];
    v31 = objc_msgSend_dateValue(cellCopy, v28, v29, v30);
    v34 = objc_msgSend_initWithDate_(v27, v32, v31, v33);
    goto LABEL_17;
  }

LABEL_22:
  v59 = MEMORY[0x277D81150];
  v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSTFormulaPredArgData getPredArgDataFromCell:]", v10);
  v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v62);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 169, 0, "invalid nil value for '%{public}s'", "predArgData");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67);
  v48 = 0;
LABEL_23:

  return v48;
}

- (id)initFromArchive:(const void *)archive
{
  v22.receiver = self;
  v22.super_class = TSTFormulaPredArgData;
  v4 = [(TSTFormulaPredArgData *)&v22 init];
  v7 = v4;
  if (v4)
  {
    v8 = *(archive + 4);
    if (v8)
    {
      v4->_dataType = 3;
      v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v5, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v6);
      string = v7->_string;
      v7->_string = v9;
    }

    else
    {
      if ((~v8 & 0xC) == 0)
      {
        v4->_dataType = 1;
        TSUDecimal::TSUDecimal(&v21);
LABEL_11:
        v7->_decimal = v21;
        return v7;
      }

      if ((v8 & 2) != 0)
      {
        v4->_dataType = 1;
        TSUDecimal::operator=();
        goto LABEL_11;
      }

      if ((v8 & 0x10) != 0)
      {
        v4->_dataType = 2;
        TSUDecimal::operator=();
        v7->_decimal = v21;
        v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v12, v13, v14, *(archive + 7));
        v19 = objc_msgSend_gregorianCalendar(TSCECalendar, v16, v17, v18);
        objc_msgSend_extractComponentsFromDate_year_month_day_(v19, v20, v15, &v7->_year, &v7->_month, &v7->_day);
      }

      else if ((~v8 & 0x60) != 0)
      {
        if ((v8 & 0x80) != 0)
        {
          v4->_dataType = 6;
          TSUDecimal::operator=();
        }

        else
        {
          v4->_dataType = 0;
        }
      }

      else
      {
        v4->_dataType = 5;
        TSUDecimal::operator=();
        v7->_decimal = v21;
        v7->_units = *(archive + 18);
      }
    }
  }

  return v7;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  dataType = self->_dataType;
  if (dataType <= 2)
  {
    if (dataType == 1)
    {
      TSUDecimal::doubleValue(&self->_decimal);
      *(archive + 4) |= 2u;
      *(archive + 4) = v21;
      v22 = TSUDecimal::high(&self->_decimal);
      *(archive + 4) |= 8u;
      *(archive + 6) = v22;
      v23 = TSUDecimal::low(&self->_decimal);
      *(archive + 4) |= 4u;
      *(archive + 5) = v23;
    }

    else if (dataType == 2)
    {
      TSUDecimal::doubleValue(&self->_decimal);
      *(archive + 4) |= 0x10u;
      *(archive + 7) = v11;
    }
  }

  else
  {
    switch(dataType)
    {
      case 3u:
        string = self->_string;
        if (!string)
        {
          string = &stru_2834BADA0;
        }

        v13 = string;
        v17 = objc_msgSend_tsp_protobufString(v13, v14, v15, v16);
        sub_2212BD3C8(archive, v17);

        break;
      case 5u:
        TSUDecimal::doubleValue(&self->_decimal);
        v18 = *(archive + 4);
        *(archive + 4) = v18 | 0x20;
        *(archive + 8) = v19;
        units = self->_units;
        *(archive + 4) = v18 | 0x60;
        *(archive + 18) = units;
        break;
      case 6u:
        v10 = objc_msgSend_BOOLValue(self, v6, v7, v8);
        *(archive + 4) |= 0x80u;
        *(archive + 76) = v10;
        break;
    }
  }
}

- (NSString)string
{
  if (self->_dataType != 3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData string]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 238, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  string = self->_string;

  return string;
}

- (NSDate)date
{
  if (self->_dataType)
  {
    if (self->_dataType != 2)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData date]", v2);
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 246, 0, "Wrong data type for call: %d", self->_dataType);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
    }

    v13 = MEMORY[0x277CBEAA8];
    TSUDecimal::doubleValue(&self->_decimal);
    v17 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (NSNumber)number
{
  if (self->_dataType)
  {
    if (self->_dataType != 1)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData number]", v2);
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 255, 0, "Wrong data type for call: %d", self->_dataType);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
    }

    v13 = MEMORY[0x277CCABB0];
    TSUDecimal::doubleValue(&self->_decimal);
    v17 = objc_msgSend_numberWithDouble_(v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (double)doubleValue
{
  if (self->_dataType != 1)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData doubleValue]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 261, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
    if (self->_dataType != 1)
    {
      return 0.0;
    }
  }

  TSUDecimal::doubleValue(&self->_decimal);
  return result;
}

- (BOOL)BOOLValue
{
  if (self->_dataType != 6)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData BOOLValue]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 266, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  return TSUDecimal::isZero(&self->_decimal) ^ 1;
}

- (double)durationValue
{
  if (self->_dataType != 5)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData durationValue]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 271, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  TSUDecimal::doubleValue(&self->_decimal);
  return result;
}

- (unsigned)durationUnits
{
  if (self->_dataType != 5)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData durationUnits]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 276, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  return self->_units;
}

- (TSCENumberValue)duration
{
  if (self->_dataType != 5)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArgData duration]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 281, 0, "Wrong data type for call: %d", self->_dataType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  v13 = [TSCENumberValue alloc];
  TSUDecimal::doubleValue(&self->_decimal);
  TSUDecimal::operator=();
  v14 = sub_221387C78(self->_units);
  v16 = objc_msgSend_initWithDecimal_baseUnit_(v13, v15, v18, v14);

  return v16;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_dataType(self, a2, v2, v3);
  v9 = objc_msgSend_dataType(self, v6, v7, v8);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v13 = objc_msgSend_number(self, v10, v11, v12);
      v17 = objc_msgSend_hash(v13, v22, v23, v24);
    }

    else
    {
      if (v9 != 2)
      {
        return v5;
      }

      v13 = objc_msgSend_date(self, v10, v11, v12);
      v17 = objc_msgSend_hash(v13, v14, v15, v16);
    }

LABEL_12:
    v5 += v17;

    return v5;
  }

  switch(v9)
  {
    case 3:
      v13 = objc_msgSend_string(self, v10, v11, v12);
      v17 = objc_msgSend_hash(v13, v18, v19, v20);
      goto LABEL_12;
    case 5:
      objc_msgSend_durationValue(self, v10, v11, v12);
      v5 += (v21 * 100.0);
      break;
    case 6:
      v5 += objc_msgSend_BOOLValue(self, v10, v11, v12);
      break;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  LOBYTE(v9) = self == equalCopy;
  if (!equalCopy || self == equalCopy)
  {
    goto LABEL_18;
  }

  v10 = objc_msgSend_dataType(self, v5, v6, v7);
  if (v10 != objc_msgSend_dataType(v8, v11, v12, v13))
  {
LABEL_15:
    LOBYTE(v9) = 0;
    goto LABEL_18;
  }

  v17 = objc_msgSend_dataType(self, v14, v15, v16);
  LOBYTE(v9) = 1;
  if (v17 <= 2)
  {
    if (v17 == 1)
    {
      v25 = objc_msgSend_number(self, v18, v19, v20);
      v29 = objc_msgSend_number(v8, v51, v52, v53);
      isEqual = objc_msgSend_isEqual_(v25, v54, v29, v55);
    }

    else
    {
      if (v17 != 2)
      {
        goto LABEL_18;
      }

      v25 = objc_msgSend_date(self, v18, v19, v20);
      v29 = objc_msgSend_date(v8, v26, v27, v28);
      isEqual = objc_msgSend_isEqual_(v25, v30, v29, v31);
    }

LABEL_17:
    LOBYTE(v9) = isEqual;

    goto LABEL_18;
  }

  switch(v17)
  {
    case 3:
      v25 = objc_msgSend_string(self, v18, v19, v20);
      v29 = objc_msgSend_string(v8, v33, v34, v35);
      isEqual = objc_msgSend_isEqual_(v25, v36, v29, v37);
      goto LABEL_17;
    case 5:
      objc_msgSend_durationValue(self, v18, v19, v20);
      v39 = v38;
      objc_msgSend_durationValue(v8, v40, v41, v42);
      if (v39 == v46)
      {
        v47 = objc_msgSend_durationUnits(self, v43, v44, v45);
        LOBYTE(v9) = v47 == objc_msgSend_durationUnits(v8, v48, v49, v50);
        break;
      }

      goto LABEL_15;
    case 6:
      v21 = objc_msgSend_BOOLValue(self, v18, v19, v20);
      v9 = v21 ^ objc_msgSend_BOOLValue(v8, v22, v23, v24) ^ 1;
      break;
  }

LABEL_18:

  return v9;
}

@end