@interface TSCEFunction_MAKEARRAY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MAKEARRAY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v8 = *(*arguments + 8);
  if (objc_msgSend_isTokenOrEmptyArg(v7, v9, v10, v11))
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v101[0] = 0;
    v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v12, context, spec, 0, v101);
    v15 = v101[0];
    v96._decimal.w[0] = objc_msgSend_decimalRepresentation(v17, v18, v19, v20);
    v96._decimal.w[1] = v21;
    v16 = TSUDecimal::truncatedUIntegerValue(&v96);
  }

  if (objc_msgSend_isTokenOrEmptyArg(v8, v12, v13, v14))
  {
    v92 = 1;
    if (v15)
    {
LABEL_6:
      v25 = objc_msgSend_raiseErrorOrConvert_(context, v22, v15, v24);
      goto LABEL_27;
    }
  }

  else
  {
    v100 = v15;
    v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v22, context, spec, 1, &v100);
    v27 = v100;

    v96._decimal.w[0] = objc_msgSend_decimalRepresentation(v26, v28, v29, v30);
    v96._decimal.w[1] = v31;
    v92 = TSUDecimal::truncatedUIntegerValue(&v96);

    v15 = v27;
    if (v27)
    {
      goto LABEL_6;
    }
  }

  if (!v16 || !v92)
  {
    v34 = objc_msgSend_emptyArrayError(TSCEError, v22, v23, v24);
    v25 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);
    v15 = v34;
    goto LABEL_27;
  }

  v32 = objc_msgSend_functionName(spec, v22, v23, v24);
  v15 = objc_msgSend_checkForTooLargeArrayNumColumns_numRows_functionName_(TSCEError, v33, v92, v16, v32);

  if (v15)
  {
    goto LABEL_6;
  }

  v37 = *(*arguments + 16);
  v99 = 0;
  v39 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v37, v38, context, spec, 2, &v99);
  v15 = v99;
  if (v15)
  {
    v43 = objc_msgSend_raiseErrorOrConvert_(context, v40, v15, v42);
  }

  else
  {
    v44 = objc_msgSend_functor(v39, v40, v41, v42);
    v48 = v44;
    if (*(v44 + 8) == 2)
    {
      contextCopy = context;
      v90 = v44;
      v88 = v7;
      v85 = v39;
      v86 = v37;
      v87 = v8;
      v91 = objc_opt_new();
      v50 = 0;
      do
      {
        v51 = 0;
        v52 = v50++;
        do
        {
          v98[0] = v51;
          v98[1] = v52;
          v96._decimal.w[0] = 0;
          v96._decimal.w[1] = 0;
          v97 = 0;
          TSUDecimal::operator=();
          v95 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v53, v94, v54);
          sub_2210ED5B8(&v96, &v95);
          ++v51;

          TSUDecimal::operator=();
          v93 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v55, v94, v56);
          sub_2210ED5B8(&v96, &v93);

          v57 = TSCEFunctor::evaluateWithArgs(v90, contextCopy, &v96);
          v60 = objc_msgSend_errorWithContext_(v57, v58, contextCopy, v59);
          v64 = v60;
          if (v60 && objc_msgSend_errorType(v60, v61, v62, v63) == 168)
          {
            v67 = objc_msgSend_functionName(spec, v61, v65, v66);
            v70 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v68, v67, v69);
            v73 = objc_msgSend_errorValue_(TSCEErrorValue, v71, v70, v72);

            v57 = v73;
          }

          objc_msgSend_setValue_atCoord_(v91, v61, v57, v98, v85);

          v94[0] = &v96;
          sub_22107C2C0(v94);
        }

        while (v92 != v51);
      }

      while (v50 != v16);
      v39 = v85;
      v74 = [TSCEDenseGrid alloc];
      v77 = objc_msgSend_initWithValueGrid_(v74, v75, v91, v76);
      v8 = v87;
      v7 = v88;
      v37 = v86;
      v25 = objc_msgSend_gridValue_(TSCEGridValue, v78, v77, v79);

      v15 = 0;
      goto LABEL_26;
    }

    v80 = objc_msgSend_functionName(spec, v45, v46, v47);
    v15 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v81, v80, *(v48 + 8), 2);

    v43 = objc_msgSend_raiseErrorOrConvert_(context, v82, v15, v83);
  }

  v25 = v43;
LABEL_26:

LABEL_27:

  return v25;
}

@end