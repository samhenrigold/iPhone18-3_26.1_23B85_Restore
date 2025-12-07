@interface TSTAccumulator
- (TSCEValue)countAValue;
- (TSCEValue)countRowsValue;
- (TSCEValue)countValue;
- (TSCEValue)maxValue;
- (TSCEValue)minValue;
- (TSCEValue)productValue;
- (TSCEValue)rangeValue;
- (TSCEValue)totalValue;
- (TSTAccumulator)initWithArchive:(const void *)archive;
- (TSTAccumulator)initWithLocale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)countBlankValue;
- (id)p_averageValueWithA:(BOOL)a;
- (id)valueForType:(unsigned __int8)type;
- (void)accumulate:(id)accumulate;
- (void)accumulateValue:(id)value;
- (void)clear;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSTAccumulator

- (TSTAccumulator)initWithLocale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = TSTAccumulator;
  v6 = [(TSTAccumulator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
    objc_msgSend_clear(v7, v8, v9, v10);
  }

  return v7;
}

- (void)clear
{
  *&self->_durationCount = 0u;
  *&self->_BOOLCount = 0u;
  v3 = objc_opt_new();
  firstDateSeen = self->_firstDateSeen;
  self->_firstDateSeen = v3;

  self->_totalSecsSinceReferenceDate = 0.0;
  self->_secondsToAdd = 0.0;
  v8 = objc_msgSend_nilValue(TSCENilValue, v5, v6, v7);
  minValue = self->_minValue;
  self->_minValue = v8;

  v13 = objc_msgSend_nilValue(TSCENilValue, v10, v11, v12);
  maxValue = self->_maxValue;
  self->_maxValue = v13;

  v18 = objc_msgSend_unitlessZero(TSCENumberValue, v15, v16, v17);
  productValue = self->_productValue;
  self->_productValue = v18;

  v23 = objc_msgSend_unitlessZero(TSCENumberValue, v20, v21, v22);
  numberTotalValue = self->_numberTotalValue;
  self->_numberTotalValue = v23;

  self->_isCircularReference = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTAccumulator alloc];
  v7 = objc_msgSend_initWithLocale_(v4, v5, self->_locale, v6);
  *(v7 + 8) = self->_BOOLCount;
  *(v7 + 12) = self->_BOOLTrueCount;
  *(v7 + 16) = self->_numberCount;
  *(v7 + 20) = self->_dateCount;
  *(v7 + 24) = self->_durationCount;
  *(v7 + 28) = self->_stringCount;
  *(v7 + 32) = self->_errorCount;
  *(v7 + 36) = self->_noContentCount;
  objc_storeStrong((v7 + 40), self->_minValue);
  objc_storeStrong((v7 + 48), self->_maxValue);
  v11 = objc_msgSend_copy(self->_productValue, v8, v9, v10);
  v12 = *(v7 + 56);
  *(v7 + 56) = v11;

  v16 = objc_msgSend_copy(self->_numberTotalValue, v13, v14, v15);
  v17 = *(v7 + 64);
  *(v7 + 64) = v16;

  objc_storeStrong((v7 + 72), self->_firstDateSeen);
  *(v7 + 88) = self->_secondsToAdd;
  *(v7 + 80) = self->_totalSecsSinceReferenceDate;
  *(v7 + 104) = self->_isCircularReference;
  return v7;
}

- (TSTAccumulator)initWithArchive:(const void *)archive
{
  v76.receiver = self;
  v76.super_class = TSTAccumulator;
  v4 = [(TSTAccumulator *)&v76 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_clear(v4, v5, v6, v7);
    v12 = *(archive + 4);
    if ((v12 & 0x20) != 0)
    {
      v8->_BOOLCount = *(archive + 16);
      v12 = *(archive + 4);
      if ((v12 & 0x400) != 0)
      {
        v8->_BOOLTrueCount = *(archive + 21);
        v12 = *(archive + 4);
      }
    }

    if ((v12 & 0x40) != 0)
    {
      v8->_numberCount = *(archive + 17);
      v12 = *(archive + 4);
      if ((v12 & 0x80) == 0)
      {
LABEL_7:
        if ((v12 & 0x100) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((v12 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    v8->_dateCount = *(archive + 18);
    v12 = *(archive + 4);
    if ((v12 & 0x100) == 0)
    {
LABEL_8:
      if ((v12 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v8->_durationCount = *(archive + 19);
    v12 = *(archive + 4);
    if ((v12 & 0x200) == 0)
    {
LABEL_9:
      if ((v12 & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v8->_stringCount = *(archive + 20);
    v12 = *(archive + 4);
    if ((v12 & 0x2000) == 0)
    {
LABEL_10:
      if ((v12 & 0x8000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v8->_errorCount = *(archive + 26);
    v12 = *(archive + 4);
    if ((v12 & 0x8000) == 0)
    {
LABEL_11:
      if ((v12 & 0x4000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_20:
    v8->_noContentCount = *(archive + 28);
    if ((*(archive + 4) & 0x4000) == 0)
    {
LABEL_13:
      locale = v8->_locale;
      if (locale)
      {
        v14 = locale;
      }

      else
      {
        v14 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11);
      }

      v16 = v14;
      if (*(archive + 3))
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v15, *(archive + 3), v14);
      }

      else
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v15, &TSCE::_CellValueArchive_default_instance_, v14);
      }
      v18 = ;
      if (*(archive + 4))
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v17, *(archive + 4), v16);
      }

      else
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v17, &TSCE::_CellValueArchive_default_instance_, v16);
      }
      v19 = ;
      v74 = v19;
      v23 = objc_msgSend_tsceValue(v18, v20, v21, v22);
      minValue = v8->_minValue;
      v8->_minValue = v23;

      v28 = objc_msgSend_tsceValue(v19, v25, v26, v27);
      maxValue = v8->_maxValue;
      v8->_maxValue = v28;

      if (*(archive + 5))
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v30, *(archive + 5), v16);
      }

      else
      {
        objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v30, &TSCE::_CellValueArchive_default_instance_, v16);
      }
      v31 = ;
      v35 = objc_msgSend_tsceValue(v31, v32, v33, v34);
      v39 = objc_msgSend_number(v35, v36, v37, v38);
      numberTotalValue = v8->_numberTotalValue;
      v8->_numberTotalValue = v39;

      v42 = *(archive + 4);
      if ((v42 & 8) != 0)
      {
        v73 = v18;
        v43 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v41, *(archive + 6), v16);
        v47 = objc_msgSend_tsceValue(v43, v44, v45, v46);
        v51 = objc_msgSend_date(v47, v48, v49, v50);
        v55 = objc_msgSend_tsceValue(v43, v52, v53, v54);
        v59 = v55;
        if (v55)
        {
          objc_msgSend_format(v55, v56, v57, v58);
        }

        else
        {
          memset(v75, 0, sizeof(v75));
        }

        v60 = objc_msgSend_dateValue_format_(TSCEDateValue, v56, v51, v75);
        firstDateSeen = v8->_firstDateSeen;
        v8->_firstDateSeen = v60;

        v42 = *(archive + 4);
        v18 = v73;
        v19 = v74;
      }

      if ((v42 & 0x800) != 0)
      {
        v8->_totalSecsSinceReferenceDate = *(archive + 11);
        if ((v42 & 0x1000) == 0)
        {
LABEL_39:
          if ((v42 & 0x10) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      else if ((v42 & 0x1000) == 0)
      {
        goto LABEL_39;
      }

      v8->_secondsToAdd = *(archive + 12);
      if ((v42 & 0x10) == 0)
      {
LABEL_44:

        return v8;
      }

LABEL_43:
      v62 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v41, *(archive + 7), v16);
      v66 = objc_msgSend_tsceValue(v62, v63, v64, v65);
      v70 = objc_msgSend_number(v66, v67, v68, v69);
      productValue = v8->_productValue;
      v8->_productValue = v70;

      v19 = v74;
      goto LABEL_44;
    }

LABEL_12:
    v8->_isCircularReference = *(archive + 108);
    goto LABEL_13;
  }

  return v8;
}

- (void)saveToArchive:(void *)archive
{
  BOOLCount = self->_BOOLCount;
  if (BOOLCount)
  {
    v6 = *(archive + 4);
    *(archive + 4) = v6 | 0x20;
    *(archive + 16) = BOOLCount;
    BOOLTrueCount = self->_BOOLTrueCount;
    *(archive + 4) = v6 | 0x420;
    *(archive + 21) = BOOLTrueCount;
  }

  numberCount = self->_numberCount;
  if (numberCount)
  {
    *(archive + 4) |= 0x40u;
    *(archive + 17) = numberCount;
  }

  dateCount = self->_dateCount;
  if (dateCount)
  {
    *(archive + 4) |= 0x80u;
    *(archive + 18) = dateCount;
  }

  durationCount = self->_durationCount;
  if (durationCount)
  {
    *(archive + 4) |= 0x100u;
    *(archive + 19) = durationCount;
  }

  stringCount = self->_stringCount;
  if (stringCount)
  {
    *(archive + 4) |= 0x200u;
    *(archive + 20) = stringCount;
  }

  errorCount = self->_errorCount;
  if (errorCount)
  {
    *(archive + 4) |= 0x2000u;
    *(archive + 26) = errorCount;
  }

  noContentCount = self->_noContentCount;
  if (noContentCount)
  {
    *(archive + 4) |= 0x8000u;
    *(archive + 28) = noContentCount;
  }

  if (self->_isCircularReference)
  {
    *(archive + 4) |= 0x4000u;
    *(archive + 108) = 1;
  }

  v14 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v15, self->_minValue, self->_locale);
  *(archive + 4) |= 1u;
  v19 = *(archive + 3);
  if (!v19)
  {
    v20 = *(archive + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v20);
    *(archive + 3) = v19;
  }

  objc_msgSend_encodeCellValueToArchive_(v18, v16, v19, v17);
  v24 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v21, self->_maxValue, self->_locale);
  *(archive + 4) |= 2u;
  v25 = *(archive + 4);
  if (!v25)
  {
    v26 = *(archive + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v26);
    *(archive + 4) = v25;
  }

  objc_msgSend_encodeCellValueToArchive_(v24, v22, v25, v23);
  v30 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v27, self->_numberTotalValue, self->_locale);
  *(archive + 4) |= 4u;
  v31 = *(archive + 5);
  if (!v31)
  {
    v32 = *(archive + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v32);
    *(archive + 5) = v31;
  }

  objc_msgSend_encodeCellValueToArchive_(v30, v28, v31, v29);
  v36 = objc_msgSend_date(self->_firstDateSeen, v33, v34, v35);

  if (v36)
  {
    v40 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v37, self->_firstDateSeen, self->_locale);
    *(archive + 4) |= 8u;
    v41 = *(archive + 6);
    if (!v41)
    {
      v42 = *(archive + 1);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v42);
      *(archive + 6) = v41;
    }

    objc_msgSend_encodeCellValueToArchive_(v40, v38, v41, v39);
  }

  totalSecsSinceReferenceDate = self->_totalSecsSinceReferenceDate;
  if (totalSecsSinceReferenceDate != 0.0)
  {
    *(archive + 4) |= 0x800u;
    *(archive + 11) = totalSecsSinceReferenceDate;
  }

  secondsToAdd = self->_secondsToAdd;
  if (secondsToAdd != 0.0)
  {
    *(archive + 4) |= 0x1000u;
    *(archive + 12) = secondsToAdd;
  }

  v47 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v37, self->_productValue, self->_locale);
  *(archive + 4) |= 0x10u;
  v48 = *(archive + 7);
  if (!v48)
  {
    v49 = *(archive + 1);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v49);
    *(archive + 7) = v48;
  }

  objc_msgSend_encodeCellValueToArchive_(v47, v45, v48, v46);

  objc_autoreleasePoolPop(v14);
}

- (void)accumulateValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_isNil(valueCopy, v6, v7, v8))
  {
    goto LABEL_6;
  }

  v12 = objc_msgSend_countA(self, v9, v10, v11);
  v17 = objc_msgSend_nativeType(valueCopy, v13, v14, v15);
  if (v12)
  {
    v18 = objc_msgSend_minValue_locale_(self->_minValue, v16, valueCopy, self->_locale);
    minValue = self->_minValue;
    self->_minValue = v18;

    v21 = objc_msgSend_maxValue_locale_(self->_maxValue, v20, valueCopy, self->_locale);
  }

  else
  {
    objc_storeStrong(&self->_minValue, value);
    v21 = valueCopy;
  }

  maxValue = self->_maxValue;
  self->_maxValue = v21;

  if (objc_msgSend_isNil(valueCopy, v23, v24, v25))
  {
    goto LABEL_6;
  }

  if (v17 > 4u)
  {
    switch(v17)
    {
      case 5u:
        v33 = objc_msgSend_number(valueCopy, v26, v27, v28);
        p_durationCount = &self->_durationCount;
        if (self->_numberCount + self->_durationCount)
        {
          v59 = objc_msgSend_add_nothrow_(self->_numberTotalValue, v55, v33, v56);
          numberTotalValue = self->_numberTotalValue;
          self->_numberTotalValue = v59;

          v58 = objc_msgSend_multiply_context_(self->_productValue, v61, v33, 0);
        }

        else
        {
          objc_storeStrong(&self->_numberTotalValue, v33);
          v58 = v33;
        }

        productValue = self->_productValue;
        self->_productValue = v58;

        if (objc_msgSend_isDuration(v33, v63, v64, v65))
        {
          objc_msgSend_rawTimeIntervalValue(v33, v66, v67, v68);
        }

        else
        {
          objc_msgSend_rawTimeIntervalValue(v33, v66, v67, v68);
          p_durationCount = &self->_numberCount;
        }

        self->_secondsToAdd = v69 + self->_secondsToAdd;
        ++*p_durationCount;
        break;
      case 7u:
        ++self->_stringCount;
        goto LABEL_7;
      case 9u:
        ++self->_errorCount;
        v29 = objc_msgSend_asErrorValue(valueCopy, v26, v27, v28);
        v33 = v29;
        if (v29)
        {
          v34 = objc_msgSend_error(v29, v30, v31, v32);
          if (objc_msgSend_isCircularReferenceError(v34, v35, v36, v37))
          {
            self->_isCircularReference = 1;
          }
        }

        break;
      default:
        goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (v17 == 2)
  {
    ++self->_BOOLCount;
    if (objc_msgSend_asBoolean(valueCopy, v26, v27, v28))
    {
      ++self->_BOOLTrueCount;
    }
  }

  else
  {
    if (v17 != 3)
    {
LABEL_6:
      ++self->_noContentCount;
      goto LABEL_7;
    }

    v38 = objc_msgSend_date(self->_firstDateSeen, v26, v27, v28);

    if (v38)
    {
      v42 = objc_msgSend_date(valueCopy, v39, v40, v41);
      objc_msgSend_timeIntervalSinceReferenceDate(v42, v43, v44, v45);
      self->_totalSecsSinceReferenceDate = v46 + self->_totalSecsSinceReferenceDate;
      v53 = objc_msgSend_date(self->_firstDateSeen, v47, v48, v49);
      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
        objc_msgSend_format(firstDateSeen, v50, v51, v52);
      }

      else
      {
        memset(&v87, 0, sizeof(v87));
      }

      if (valueCopy)
      {
        objc_msgSend_format(valueCopy, v50, v51, v52);
      }

      else
      {
        memset(&v86, 0, sizeof(v86));
      }

      TSCEFormat::formatByMergingWithFormat(&v88, &v87, &v86, v51, v52);
      v75 = objc_msgSend_dateValue_format_(TSCEDateValue, v74, v53, &v88);
      v76 = self->_firstDateSeen;
      self->_firstDateSeen = v75;
    }

    else
    {
      v73 = objc_msgSend_date(valueCopy, v39, v40, v41);
      if (valueCopy)
      {
        objc_msgSend_format(valueCopy, v70, v71, v72);
      }

      else
      {
        memset(&v88, 0, sizeof(v88));
      }

      v77 = objc_msgSend_dateValue_format_(TSCEDateValue, v70, v73, &v88);
      v78 = self->_firstDateSeen;
      self->_firstDateSeen = v77;

      v42 = objc_msgSend_date(self->_firstDateSeen, v79, v80, v81);
      objc_msgSend_timeIntervalSinceReferenceDate(v42, v82, v83, v84);
      self->_totalSecsSinceReferenceDate = v85;
    }

    ++self->_dateCount;
  }

LABEL_7:
}

- (void)accumulate:(id)accumulate
{
  accumulateCopy = accumulate;
  v8 = accumulateCopy;
  if (self->_isCircularReference)
  {
    v9 = 1;
  }

  else if (accumulateCopy)
  {
    v9 = accumulateCopy[104];
  }

  else
  {
    v9 = 0;
  }

  self->_isCircularReference = v9 & 1;
  if (objc_msgSend_countA(accumulateCopy, v5, v6, v7))
  {
    v13 = objc_msgSend_countA(self, v10, v11, v12);
    self->_BOOLCount += objc_msgSend_BOOLCount(v8, v14, v15, v16);
    self->_BOOLTrueCount += objc_msgSend_BOOLTrueCount(v8, v17, v18, v19);
    self->_numberCount += objc_msgSend_numberCount(v8, v20, v21, v22);
    self->_dateCount += objc_msgSend_dateCount(v8, v23, v24, v25);
    self->_durationCount += objc_msgSend_durationCount(v8, v26, v27, v28);
    self->_stringCount += objc_msgSend_stringCount(v8, v29, v30, v31);
    self->_errorCount += objc_msgSend_errorCount(v8, v32, v33, v34);
    self->_noContentCount += objc_msgSend_noContentCount(v8, v35, v36, v37);
    if (v13)
    {
      minValue = self->_minValue;
      v42 = objc_msgSend_minValue(v8, v38, v39, v40);
      v44 = objc_msgSend_minValue_locale_(minValue, v43, v42, self->_locale);
      v45 = self->_minValue;
      self->_minValue = v44;

      maxValue = self->_maxValue;
      v50 = objc_msgSend_maxValue(v8, v47, v48, v49);
      v52 = objc_msgSend_maxValue_locale_(maxValue, v51, v50, self->_locale);
      v53 = self->_maxValue;
      self->_maxValue = v52;

      p_firstDateSeen = &self->_firstDateSeen;
      v58 = objc_msgSend_date(self->_firstDateSeen, v55, v56, v57);

      v61 = *(v8 + 9);
      if (v58)
      {
        v62 = objc_msgSend_date(*(v8 + 9), v61, v59, v60);

        if (v62)
        {
          v69 = objc_msgSend_date(*(v8 + 9), v63, v64, v65);
          if (*p_firstDateSeen)
          {
            objc_msgSend_format(*p_firstDateSeen, v66, v67, v68);
          }

          else
          {
            memset(&v88, 0, sizeof(v88));
          }

          v77 = *(v8 + 9);
          if (v77)
          {
            objc_msgSend_format(v77, v66, v67, v68);
          }

          else
          {
            memset(&v87, 0, sizeof(v87));
          }

          TSCEFormat::formatByMergingWithFormat(v89, &v88, &v87, v67, v68);
          v79 = objc_msgSend_dateValue_format_(TSCEDateValue, v78, v69, v89);
          v80 = *p_firstDateSeen;
          *p_firstDateSeen = v79;
        }
      }

      else
      {
        objc_storeStrong(&self->_firstDateSeen, v61);
      }

      secondsToAdd = self->_secondsToAdd;
      self->_totalSecsSinceReferenceDate = *(v8 + 10) + self->_totalSecsSinceReferenceDate;
      self->_secondsToAdd = *(v8 + 11) + secondsToAdd;
      v82 = objc_msgSend_add_nothrow_(self->_numberTotalValue, v63, *(v8 + 8), v65, *&v87._tskFormat, *&v87._durationFormat, v88._tskFormat, *&v88._formatType, *&v88._durationFormat, *&v88._numberFormat.decimalPlaces);
      numberTotalValue = self->_numberTotalValue;
      self->_numberTotalValue = v82;

      v85 = objc_msgSend_multiply_context_(self->_productValue, v84, *(v8 + 7), 0);
      productValue = self->_productValue;
      self->_productValue = v85;
    }

    else
    {
      v70 = objc_msgSend_minValue(v8, v38, v39, v40);
      v71 = self->_minValue;
      self->_minValue = v70;

      v75 = objc_msgSend_maxValue(v8, v72, v73, v74);
      v76 = self->_maxValue;
      self->_maxValue = v75;

      objc_storeStrong(&self->_firstDateSeen, *(v8 + 9));
      self->_totalSecsSinceReferenceDate = *(v8 + 10);
      self->_secondsToAdd = *(v8 + 11);
      objc_storeStrong(&self->_numberTotalValue, *(v8 + 8));
      objc_storeStrong(&self->_productValue, *(v8 + 7));
    }
  }
}

- (TSCEValue)totalValue
{
  if (self->_durationCount)
  {
    if (self->_dateCount == 1)
    {
      v5 = objc_msgSend_date(self->_firstDateSeen, a2, v2, v3);
      v9 = objc_msgSend_dateByAddingTimeInterval_(v5, v6, v7, v8, self->_secondsToAdd);

      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
        objc_msgSend_format(firstDateSeen, v10, v11, v12);
      }

      else
      {
        memset(v31, 0, sizeof(v31));
      }

      v27 = objc_msgSend_dateValue_format_(TSCEDateValue, v10, v9, v31);

      goto LABEL_16;
    }

    if (self->_numberCount)
    {
      v17 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, 168, v3);
      v21 = objc_msgSend_functionName(v17, v18, v19, v20);
      v24 = objc_msgSend_sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName_(TSCEError, v22, v21, v23);

      v27 = objc_msgSend_errorValue_(TSCEErrorValue, v25, v24, v26);

LABEL_10:
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (self->_numberCount)
  {
    goto LABEL_14;
  }

  if (self->_BOOLCount)
  {
    TSUDecimal::operator=();
    v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v14, v31, v15);
    goto LABEL_15;
  }

  if (self->_stringCount)
  {
LABEL_14:
    v16 = self->_numberTotalValue;
    goto LABEL_15;
  }

  if (self->_dateCount)
  {
    v17 = objc_msgSend_invalidDateManipulationError(TSCEError, a2, v2, v3);
    v27 = objc_msgSend_errorValue_(TSCEErrorValue, v29, v17, v30);
    goto LABEL_10;
  }

  v16 = objc_msgSend_unitlessZero(TSCENumberValue, a2, v2, v3);
LABEL_15:
  v27 = v16;
LABEL_16:

  return v27;
}

- (TSCEValue)countAValue
{
  objc_msgSend_countA(self, a2, v2, v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v4, &v8, v5);

  return v6;
}

- (TSCEValue)countValue
{
  objc_msgSend_countOfNumberDateDurationOrBool(self, a2, v2, v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v4, &v8, v5);

  return v6;
}

- (TSCEValue)countRowsValue
{
  objc_msgSend_countRows(self, a2, v2, v3);
  TSUDecimal::operator=();
  v6 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v4, &v8, v5);

  return v6;
}

- (id)p_averageValueWithA:(BOOL)a
{
  aCopy = a;
  if (a)
  {
    v6 = objc_msgSend_countA(self, a2, a, v3);
  }

  else
  {
    v6 = objc_msgSend_countOfNumberDateDurationOrBool(self, a2, a, v3);
  }

  v10 = v6;
  if (!v6)
  {
    goto LABEL_26;
  }

  dateCount = self->_dateCount;
  if (dateCount)
  {
    if (dateCount == 1)
    {
      secondsToAdd = self->_secondsToAdd;
      v13 = objc_msgSend_date(self->_firstDateSeen, v7, v8, v9);
      v17 = objc_msgSend_dateByAddingTimeInterval_(v13, v14, v15, v16, secondsToAdd / v10);

      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
LABEL_8:
        objc_msgSend_format(firstDateSeen, v18, v19, v20);
LABEL_21:
        v32 = objc_msgSend_dateValue_format_(TSCEDateValue, v18, v17, &v96);
        goto LABEL_34;
      }
    }

    else
    {
      v17 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v7, v8, v9, (self->_totalSecsSinceReferenceDate + self->_secondsToAdd) / v6);
      firstDateSeen = self->_firstDateSeen;
      if (firstDateSeen)
      {
        goto LABEL_8;
      }
    }

    memset(&v96, 0, sizeof(v96));
    goto LABEL_21;
  }

  numberCount = self->_numberCount;
  if (self->_durationCount)
  {
    if (numberCount)
    {
      if (aCopy)
      {
        objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v7, 16, v9);
      }

      else
      {
        objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v7, 15, v9);
      }
      v23 = ;
      v27 = objc_msgSend_functionName(v23, v24, v25, v26);
      v17 = objc_msgSend_sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName_(TSCEError, v28, v27, v29);

      v32 = 0;
      goto LABEL_32;
    }

    numberTotalValue = self->_numberTotalValue;
    TSUDecimal::operator=();
    v55 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v53, &v96, v54);
    v95 = 0;
    v38 = objc_msgSend_divide_outError_(numberTotalValue, v56, v55, &v95);
    v17 = v95;

    v57 = [TSCENumberValue alloc];
    v64 = objc_msgSend_rawDecimalValue(v38, v58, v59, v60);
    v65 = self->_numberTotalValue;
    if (v65)
    {
      objc_msgSend_format(v65, v61, v62, v63);
      v69 = objc_msgSend_unit(self->_numberTotalValue, v66, v67, v68);
    }

    else
    {
      memset(&v96, 0, sizeof(v96));
      v69 = objc_msgSend_unit(0, v61, v62, v63);
    }

    v88 = objc_msgSend_initWithDecimal_format_baseUnit_(v57, v70, v64, &v96, v69);
    goto LABEL_31;
  }

  if (numberCount)
  {
    v33 = self->_numberTotalValue;
    TSUDecimal::operator=();
    v36 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v34, &v96, v35);
    v94 = 0;
    v38 = objc_msgSend_divide_outError_(v33, v37, v36, &v94);
    v17 = v94;

    v39 = [TSCENumberValue alloc];
    v92 = objc_msgSend_decimalRepresentation(v38, v40, v41, v42);
    v93 = v43;
    v46 = self->_numberTotalValue;
    if (v46)
    {
      objc_msgSend_format(v46, v43, v44, v45);
      v50 = objc_msgSend_unit(self->_numberTotalValue, v47, v48, v49);
    }

    else
    {
      memset(&v96, 0, sizeof(v96));
      v50 = objc_msgSend_unit(0, v43, v44, v45);
    }

    v88 = objc_msgSend_initWithDecimal_format_baseUnit_(v39, v51, &v92, &v96, v50);
LABEL_31:
    v32 = v88;

    goto LABEL_32;
  }

  if (!self->_BOOLCount)
  {
LABEL_26:
    v32 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v7, v8, v9);
    goto LABEL_35;
  }

  TSUDecimal::operator=();
  v73 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v71, &v96, v72);
  TSUDecimal::operator=();
  v76 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v74, &v96, v75);
  v91 = 0;
  v78 = objc_msgSend_divide_outError_(v73, v77, v76, &v91);
  v17 = v91;

  v79 = objc_alloc(MEMORY[0x277D806A0]);
  v81 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v79, v80, 258, 2, 0, 0);
  v82 = [TSCENumberValue alloc];
  v92 = objc_msgSend_decimalRepresentation(v78, v83, v84, v85);
  v93 = v86;
  TSCEFormat::TSCEFormat(&v96, v81, 0);
  v32 = objc_msgSend_initWithDecimal_format_(v82, v87, &v92, &v96);

LABEL_32:
  if (!v17)
  {
    goto LABEL_35;
  }

  v89 = objc_msgSend_errorValue_(TSCEErrorValue, v30, v17, v31);

  v32 = v89;
LABEL_34:

LABEL_35:

  return v32;
}

- (TSCEValue)minValue
{
  v5 = objc_msgSend_countA(self, a2, v2, v3);
  v9 = self->_minValue;
  if (!v5)
  {
    v10 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v6, v7, v8);

    v9 = v10;
  }

  return v9;
}

- (TSCEValue)maxValue
{
  v5 = objc_msgSend_countA(self, a2, v2, v3);
  v9 = self->_maxValue;
  if (!v5)
  {
    v10 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v6, v7, v8);

    v9 = v10;
  }

  return v9;
}

- (TSCEValue)rangeValue
{
  if (objc_msgSend_countA(self, a2, v2, v3))
  {
    if (objc_msgSend_nativeType(self->_minValue, v5, v6, v7) == 7)
    {
      minValue = self->_minValue;
      v12 = objc_msgSend_locale(self, v8, v9, v10);
      v15 = objc_msgSend_asStringWithLocale_(minValue, v13, v12, v14);

      maxValue = self->_maxValue;
      v20 = objc_msgSend_locale(self, v17, v18, v19);
      v23 = objc_msgSend_asStringWithLocale_(maxValue, v21, v20, v22);

      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%@…%@", v25, v15, v23);
      v29 = objc_msgSend_stringValue_(TSCEStringValue, v27, v26, v28);

      goto LABEL_7;
    }

    v30 = sub_22121E128(self->_maxValue, self->_minValue, self->_locale);
  }

  else
  {
    v30 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v5, v6, v7);
  }

  v29 = v30;
LABEL_7:

  return v29;
}

- (TSCEValue)productValue
{
  v4 = objc_msgSend_copy(self->_productValue, a2, v2, v3);

  return v4;
}

- (id)countBlankValue
{
  TSUDecimal::operator=();
  v4 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v2, &v6, v3);

  return v4;
}

- (id)valueForType:(unsigned __int8)type
{
  typeCopy = type;
  if (objc_msgSend_isCircularReference(self, a2, type, v3))
  {
    v9 = objc_msgSend_circularReferenceError(TSCEError, v6, v7, v8);
    v12 = objc_msgSend_errorValue_(TSCEErrorValue, v10, v9, v11);

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_13:
    v26 = objc_msgSend_nilValue(TSCENilValue, v13, v14, v15);
  }

  else
  {
    if (objc_msgSend_countRows(self, v6, v7, v8))
    {
      switch(typeCopy)
      {
        case 0:
          goto LABEL_11;
        case 1:
          v37 = objc_msgSend_countAValue(self, v13, v14, v15);
          goto LABEL_12;
        case 2:
          v37 = objc_msgSend_totalValue(self, v13, v14, v15);
          goto LABEL_12;
        case 3:
          v37 = objc_msgSend_avgAValue(self, v13, v14, v15);
          goto LABEL_12;
        case 4:
          v37 = objc_msgSend_minValue(self, v13, v14, v15);
          goto LABEL_12;
        case 5:
          v37 = objc_msgSend_maxValue(self, v13, v14, v15);
          goto LABEL_12;
        case 6:
        case 23:
        case 24:
        case 25:
          goto LABEL_13;
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          goto LABEL_10;
        case 13:
          v37 = objc_msgSend_countValue(self, v13, v14, v15);
          goto LABEL_12;
        case 14:
        case 16:
        case 19:
        case 20:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
          v16 = MEMORY[0x277D81150];
          v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTAccumulator valueForType:]", v15);
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAccumulator.mm", v19);
          v21 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v20, 626, 0, "%@ does not handle TSCEAggType_StDev/_VAR/_CountDistinct request - a higher level should have handled that", v21);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
          goto LABEL_13;
        case 15:
          v37 = objc_msgSend_countRowsValue(self, v13, v14, v15);
          goto LABEL_12;
        case 17:
          v37 = objc_msgSend_countBlankValue(self, v13, v14, v15);
          goto LABEL_12;
        case 18:
          v37 = objc_msgSend_avgValue(self, v13, v14, v15);
          goto LABEL_12;
        case 21:
          v37 = objc_msgSend_productValue(self, v13, v14, v15);
          goto LABEL_12;
        case 22:
          v37 = objc_msgSend_rangeValue(self, v13, v14, v15);
          goto LABEL_12;
        default:
          if (typeCopy != 240 && typeCopy != 255)
          {
            goto LABEL_13;
          }

LABEL_10:
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTAccumulator valueForType:]", v15);
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAccumulator.mm", v30);
          v32 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v31, 637, 0, "%@ does not handle TSCEAggType_GroupValue/_BodyRows/_Indirect request - a higher level should have handled that", v32);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
LABEL_11:
          v37 = objc_msgSend_nilValue(TSCENilValue, v13, v14, v15);
LABEL_12:
          v12 = v37;
          if (!v37)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
      }
    }

    v26 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v13, v14, v15);
  }

  v12 = v26;
LABEL_15:

  return v12;
}

@end