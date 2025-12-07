@interface TSCESumAccumulator
- (TSCESumAccumulator)init;
- (id)resultForFunction:(id)function;
- (void)addValue:(id)value evaluationContext:(id)context functionSpec:(id)spec;
@end

@implementation TSCESumAccumulator

- (TSCESumAccumulator)init
{
  v11.receiver = self;
  v11.super_class = TSCESumAccumulator;
  v2 = [(TSCESumAccumulator *)&v11 init];
  v6 = v2;
  if (v2)
  {
    v2->_dateAccumulator = 0;
    v2->_secondsToAdd = 0.0;
    v7 = objc_msgSend_unitlessZero(TSCENumberValue, v3, v4, v5);
    numberAccumulator = v6->_numberAccumulator;
    v6->_numberAccumulator = v7;

    *&v6->_mixedDurationsAndNumbers = 0;
    error = v6->_error;
    v6->_error = 0;
  }

  return v6;
}

- (void)addValue:(id)value evaluationContext:(id)context functionSpec:(id)spec
{
  valueCopy = value;
  contextCopy = context;
  p_error = &self->_error;
  if (self->_error || (objc_msgSend_isNil(valueCopy, v9, v10, v11) & 1) != 0)
  {
    goto LABEL_39;
  }

  v19 = objc_msgSend_deepType_(valueCopy, v14, contextCopy, v15);
  if (v19 > 4)
  {
    if (v19 != 5)
    {
      if (v19 != 9)
      {
        goto LABEL_39;
      }

      v22 = objc_msgSend_errorWithContext_(valueCopy, v16, contextCopy, v18);
      if (!v22)
      {
        goto LABEL_39;
      }

      objc_storeStrong(&self->_error, v22);
LABEL_18:

      goto LABEL_39;
    }

    v74 = 0;
    v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(valueCopy, v16, contextCopy, spec, 0, &v74);
    v31 = v74;
    if (v31)
    {
      v22 = v31;
LABEL_16:
      v29 = &self->_error;
      v30 = v22;
      goto LABEL_17;
    }

    p_foundANumber = &self->_foundANumber;
    if (self->_foundANumber)
    {
      p_foundANumber = &self->_mixedDurationsAndNumbers;
      if (self->_mixedDurationsAndNumbers)
      {
        goto LABEL_34;
      }

      if (objc_msgSend_dimensionsMatchModuloCurrency_(self->_numberAccumulator, v32, v23, v34))
      {
        numberAccumulator = self->_numberAccumulator;
        v73 = 0;
        v56 = objc_msgSend_add_functionSpec_outError_(numberAccumulator, v32, v23, spec, &v73);
        v22 = v73;
        v57 = self->_numberAccumulator;
        self->_numberAccumulator = v56;

        if (v22)
        {
          goto LABEL_16;
        }

LABEL_34:
        if (objc_msgSend_hasUnits(v23, v32, v33, v34) && !objc_msgSend_dimension(v23, v58, v59, v60))
        {
          objc_msgSend_rawTimeIntervalValue(v23, v58, v59, v60);
          v62 = v63 + self->_secondsToAdd;
        }

        else
        {
          objc_msgSend_timeIntervalRepresentation(v23, v58, v59, v60);
          v62 = self->_secondsToAdd + v61 * 86400.0;
        }

        self->_secondsToAdd = v62;
        goto LABEL_38;
      }
    }

    else
    {
      objc_storeStrong(&self->_numberAccumulator, v23);
    }

    *p_foundANumber = 1;
    goto LABEL_34;
  }

  if (v19 == 1)
  {
    v72 = 0;
    v23 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(valueCopy, v16, contextCopy, spec, 0, 0, &v72);
    v24 = v72;
    v25 = v72;
    if (v25)
    {
      v22 = v25;
      v29 = &self->_error;
      v30 = v24;
LABEL_17:
      objc_storeStrong(v29, v30);

      goto LABEL_18;
    }

    v70 = 0;
    v71 = objc_msgSend_dimensions(v23, v26, v27, v28);
    v51 = contextCopy;
    v64[0] = v51;
    v64[1] = spec;
    v65 = 0;
    v66[0] = 0;
    *(v66 + 7) = 0;
    v67 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v68 = 0;
    v69 = 0;
    do
    {
      v52 = objc_msgSend_valueAtGridCoord_accessContext_(v23, v50, *&v70, v64);
      objc_msgSend_addValue_evaluationContext_functionSpec_(self, v53, v52, v51, spec);
      v70 = TSCEGridDimensions::nextCoordRowMajorOrder(&v71, &v70);
    }

    while (v70.column != 0x7FFFFFFF && v70.row != 0x7FFFFFFF);

LABEL_38:
    goto LABEL_39;
  }

  if (v19 == 3)
  {
    if (self->_dateAccumulator)
    {
      v20 = objc_msgSend_invalidDateManipulationError(TSCEError, v16, v17, v18);
      v21 = *p_error;
      *p_error = v20;
    }

    else
    {
      v75 = 0;
      v35 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(valueCopy, v16, contextCopy, spec, 0, &v75);
      v36 = v75;
      self->_dateAccumulator = v35;

      if (!self->_dateAccumulator)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSCESumAccumulator addValue:evaluationContext:functionSpec:]", v38);
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESumAccumulator.mm", v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 63, 0, "Shouldn't get a nil date from something that says it's a date");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
      }

      if (v36)
      {
        v48 = *p_error;
        *p_error = v36;
        v49 = v36;
      }
    }
  }

LABEL_39:
}

- (id)resultForFunction:(id)function
{
  error = self->_error;
  if (error)
  {
    v5 = objc_msgSend_errorValue_(TSCEErrorValue, a2, error, v3);
LABEL_3:
    v6 = v5;
    goto LABEL_9;
  }

  if (self->_dateAccumulator)
  {
    v7 = objc_msgSend_dateByAddingTimeInterval_(self->_dateAccumulator, a2, function, v3, self->_secondsToAdd);
    v6 = objc_msgSend_dateValue_(TSCEDateValue, v8, v7, v9);
  }

  else
  {
    if (!self->_mixedDurationsAndNumbers)
    {
      v5 = objc_msgSend_copy(self->_numberAccumulator, a2, function, v3);
      goto LABEL_3;
    }

    v7 = objc_msgSend_functionName(function, a2, function, v3);
    v12 = objc_msgSend_sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName_(TSCEError, v10, v7, v11);
    v6 = objc_msgSend_errorValue_(TSCEErrorValue, v13, v12, v14);
  }

LABEL_9:

  return v6;
}

@end