@interface TSCEFunction_AVERAGEIF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AVERAGEIF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v53._tskFormat = 0;
  v53._formatType = 0;
  v53._formatState = 0;
  *&v53._durationFormat = 1057;
  *(&v53._durationFormat + 2) = 1;
  *&v53._baseFormat.base = -50266102;
  v53._numberFormat = 253;
  v9 = *arguments;
  if (*(arguments + 1) - *arguments < 0x11uLL || (isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v9[2], a2, context, spec), v9 = *arguments, (isTokenOrEmptyArg & 1) != 0))
  {
    v11 = *v9;
    v49 = 0;
    v12 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v11, a2, context, spec, 0, 1, &v49);
    v16 = v49;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v16, v15);
      v18 = 0;
      v19 = v12;
    }

    else
    {
      v21 = *arguments;
      v20 = *(arguments + 1);
      v22 = objc_msgSend_dimensions(v12, v13, v14, v15);
      v48 = 0;
      v24 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v23, context, spec, arguments, v22, 0, v20 - v21 != 16, &v48);
      v16 = v48;
      if (v12)
      {
        objc_msgSend_formatWithContext_(v12, v25, context, v26);
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
      }

      TSCEFormat::operator=(&v53, &v50);
      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v32, v16, v33);
      }

      else
      {
        LOBYTE(v46) = 0;
        v17 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v32, context, spec, v12, 0, v24, 0, v46);
        TSCEFormat::TSCEFormat(&v50, &v53);
        objc_msgSend_setFormat_(v17, v34, &v50, v35);
        v16 = 0;
      }

      v19 = v12;
      v18 = v24;
    }
  }

  else
  {
    v27 = v9[2];
    v52 = 0;
    v28 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v27, a2, context, spec, 2, 1, &v52);
    v16 = v52;
    if (v16)
    {
      v18 = 0;
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v29, v16, v31);
      v19 = v28;
    }

    else
    {
      v36 = objc_msgSend_dimensions(v28, v29, v30, v31);
      v51 = 0;
      v38 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v37, context, spec, arguments, v36, 0, 1, &v51);
      v16 = v51;
      if (v28)
      {
        objc_msgSend_formatWithContext_(v28, v39, context, v40);
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
      }

      TSCEFormat::operator=(&v53, &v50);
      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v41, v16, v42);
      }

      else
      {
        LOBYTE(v47) = 0;
        v17 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v41, context, spec, v28, 2, v38, 0, v47);
        TSCEFormat::TSCEFormat(&v50, &v53);
        objc_msgSend_setFormat_(v17, v43, &v50, v44);
        v16 = 0;
      }

      v19 = v28;
      v18 = v38;
    }
  }

  return v17;
}

@end