@interface TSTCellRangeControlSpec
+ (BOOL)legalRangeControlMinimum:(double)minimum maximum:(double)maximum increment:(double)increment;
+ (double)defaultCellValueForInteractionType:(unsigned int)type;
+ (id)cellSpecFromTSKFormat:(id)format;
+ (id)defaultRangeControlSpecOfType:(unsigned int)type;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)sliderSpecWithMinimum:(double)minimum maximum:(double)maximum increment:(double)increment;
+ (id)stepperSpecWithMinimum:(double)minimum maximum:(double)maximum increment:(double)increment;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateFormatAndValue:(id)value;
- (TSTCellRangeControlSpec)initWithInteractionType:(unsigned int)type minimum:(double)minimum maximum:(double)maximum increment:(double)increment;
- (double)recomputedValueFromValue:(double)value changed:(BOOL *)changed;
- (double)valueFromString:(id)string locale:(id)locale;
- (id)tskStepperSliderFormatWithDisplayFormatType:(unsigned int)type;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellRangeControlSpec

- (TSTCellRangeControlSpec)initWithInteractionType:(unsigned int)type minimum:(double)minimum maximum:(double)maximum increment:(double)increment
{
  v36.receiver = self;
  v36.super_class = TSTCellRangeControlSpec;
  v13 = [(TSTCellSpec *)&v36 init];
  if (v13)
  {
    if (type - 4 >= 3)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCellRangeControlSpec initWithInteractionType:minimum:maximum:increment:]", v12);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeControlSpec.mm", v17);
      v19 = sub_22139EA64(type);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v18, 60, 0, "Illegal interaction type:%@", v19);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    if ((objc_msgSend_legalRangeControlMinimum_maximum_increment_(TSTCellRangeControlSpec, v10, v11, v12, minimum, maximum, increment) & 1) == 0)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCellRangeControlSpec initWithInteractionType:minimum:maximum:increment:]", v25);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeControlSpec.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 61, 0, "Illegal parameters: %f, %f, %f", *&minimum, *&maximum, *&increment);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    }

    v13->_interactionType = type;
    v13->_minimum = minimum;
    v13->_maximum = maximum;
    v13->_increment = increment;
  }

  return v13;
}

+ (BOOL)legalRangeControlMinimum:(double)minimum maximum:(double)maximum increment:(double)increment
{
  TSUDecimal::operator=();
  TSUDecimal::reinterpretDoubleAsDecimal(&v9);
  TSUDecimal::operator=();
  TSUDecimal::reinterpretDoubleAsDecimal(&v8);
  TSUDecimal::operator=();
  TSUDecimal::reinterpretDoubleAsDecimal(&v7);
  v5 = TSUDecimal::operator<();
  if (v5)
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=())
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v10 = v8;
      TSUDecimal::operator-=();
      LOBYTE(v5) = TSUDecimal::operator<=();
    }
  }

  return v5;
}

+ (double)defaultCellValueForInteractionType:(unsigned int)type
{
  result = 50.0;
  if (type != 5)
  {
    result = 0.0;
  }

  if (type == 4)
  {
    return 1.0;
  }

  return result;
}

+ (id)defaultRangeControlSpecOfType:(unsigned int)type
{
  v3 = *&type;
  v4 = [TSTCellRangeControlSpec alloc];
  if (v3 == 6)
  {
    v7 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v4, v5, 6, v6, 0.0, 5.0, 1.0);
  }

  else
  {
    v7 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v4, v5, v3, v6, 1.0, 100.0, 1.0);
  }

  return v7;
}

+ (id)stepperSpecWithMinimum:(double)minimum maximum:(double)maximum increment:(double)increment
{
  v8 = [TSTCellRangeControlSpec alloc];
  v11 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v8, v9, 4, v10, minimum, maximum, increment);

  return v11;
}

+ (id)sliderSpecWithMinimum:(double)minimum maximum:(double)maximum increment:(double)increment
{
  v8 = [TSTCellRangeControlSpec alloc];
  v11 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v8, v9, 5, v10, minimum, maximum, increment);

  return v11;
}

- (unint64_t)hash
{
  v3 = TSUHash();
  v4 = TSUHash() ^ v3;
  return v4 ^ TSUHash() ^ self->_interactionType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5 && (interactionType = self->_interactionType, interactionType == objc_msgSend_interactionType(v5, v6, v7, v8)) && (minimum = self->_minimum, objc_msgSend_minimum(v9, v11, v12, v13), minimum == v18) && (maximum = self->_maximum, objc_msgSend_maximum(v9, v15, v16, v17), maximum == v23))
  {
    increment = self->_increment;
    objc_msgSend_increment(v9, v20, v21, v22);
    v24 = increment == v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (double)recomputedValueFromValue:(double)value changed:(BOOL *)changed
{
  TSUFormatRecomputedControlValueFromLimits();
  if (changed)
  {
    v8 = result != value;
    if (vabdd_f64(value, result) < self->_increment / 1000.0)
    {
      v8 = 0;
    }

    *changed = v8;
  }

  return result;
}

- (double)valueFromString:(id)string locale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v21 = 0.0;
  v11 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v8, v9, v10);
  v14 = objc_msgSend_stringByTrimmingCharactersInSet_(stringCopy, v12, v11, v13);

  if (objc_msgSend_numberValueFromString_locale_outDoubleValue_(MEMORY[0x277D81290], v15, v14, localeCopy, &v21))
  {
    objc_msgSend_recomputedValueFromValue_changed_(self, v16, 0, v17, v21);
    v19 = v18;
  }

  else
  {
    v19 = 1.79769313e308;
  }

  return v19;
}

- (BOOL)validateFormatAndValue:(id)value
{
  valueCopy = value;
  v8 = objc_msgSend_getCurrentFormat(valueCopy, v5, v6, v7);
  v12 = objc_msgSend_formatType(v8, v9, v10, v11);

  if (objc_msgSend_interactionType(self, v13, v14, v15) == 6 && v12 != 267)
  {
LABEL_3:
    v19 = 0;
    goto LABEL_11;
  }

  if (objc_msgSend_interactionType(self, v16, v17, v18) != 5 && objc_msgSend_interactionType(self, v20, v21, v22) != 4 || (v19 = 0, (v12 - 256) <= 0xD) && ((1 << v12) & 0x204F) != 0)
  {
    if (objc_msgSend_valueType(valueCopy, v20, v21, v22) == 2 || objc_msgSend_valueType(valueCopy, v23, v24, v25) == 10)
    {
      v31 = 0;
      v30._decimal.w[0] = objc_msgSend_numberOrCurrencyDecimalValue(valueCopy, v23, v24, v25);
      v30._decimal.w[1] = v26;
      TSUDecimal::doubleValue(&v30);
      objc_msgSend_recomputedValueFromValue_changed_(self, v27, &v31, v28);
      v19 = v31 ^ 1;
      goto LABEL_11;
    }

    goto LABEL_3;
  }

LABEL_11:

  return v19 & 1;
}

+ (id)cellSpecFromTSKFormat:(id)format
{
  formatCopy = format;
  v10 = objc_msgSend_asStepperSliderFormat(formatCopy, v4, v5, v6);
  if (v10)
  {
    v11 = [TSTCellRangeControlSpec alloc];
    if (objc_msgSend_formatType(v10, v12, v13, v14) == 264)
    {
      v18 = 4;
    }

    else
    {
      v18 = 5;
    }

    objc_msgSend_minimum(v10, v15, v16, v17);
    v20 = v19;
    objc_msgSend_maximum(v10, v21, v22, v23);
    v25 = v24;
    objc_msgSend_increment(v10, v26, v27, v28);
    v35 = objc_msgSend_initWithInteractionType_minimum_maximum_increment_(v11, v29, v18, v30, v20, v25, v31);
    if (v35)
    {
      v35[5] = objc_msgSend_displayFormatType(v10, v32, v33, v34);
    }
  }

  else if (objc_msgSend_formatType(formatCopy, v7, v8, v9) == 267)
  {
    v35 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v36, 6, v37);
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "+[TSTCellRangeControlSpec cellSpecFromTSKFormat:]", v37);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRangeControlSpec.mm", v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 241, 0, "TSTCellRangeControlSpec can only be created from TSKFormats for Stepper, Slider, and Rating.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
    v35 = 0;
  }

  return v35;
}

- (id)tskStepperSliderFormatWithDisplayFormatType:(unsigned int)type
{
  v3 = *&type;
  v5 = objc_alloc(MEMORY[0x277D806D8]);
  if (objc_msgSend_interactionType(self, v6, v7, v8) == 4)
  {
    v12 = 264;
  }

  else
  {
    v12 = 265;
  }

  objc_msgSend_minimum(self, v9, v10, v11);
  v14 = v13;
  objc_msgSend_maximum(self, v15, v16, v17);
  v19 = v18;
  objc_msgSend_increment(self, v20, v21, v22);
  v25 = objc_msgSend_initWithFormatType_minimum_maximum_increment_displayFormatType_(v5, v23, v12, v3, v14, v19, v24);

  return v25;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSTCellRangeControlSpec alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v6 = objc_msgSend_interactionType(self, a2, archive, archiver);
  v7 = *(archive + 4);
  *(archive + 16) = v6;
  *(archive + 5) = *&self->_minimum;
  *(archive + 6) = *&self->_maximum;
  increment = self->_increment;
  *(archive + 4) = v7 | 0x3C;
  *(archive + 7) = increment;
}

@end