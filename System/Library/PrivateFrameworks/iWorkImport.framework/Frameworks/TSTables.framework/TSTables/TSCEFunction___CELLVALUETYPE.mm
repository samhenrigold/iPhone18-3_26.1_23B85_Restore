@interface TSCEFunction___CELLVALUETYPE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction___CELLVALUETYPE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = 0x7FFF7FFFFFFFLL;
  v55 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v56 = 0uLL;
  if (*(arguments + 1) == *arguments)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_7;
  }

  v8 = **arguments;
  if ((objc_msgSend_isTokenOrEmptyArg(v8, v9, v10, v11) & 1) == 0 && objc_msgSend_deepType_(v8, v12, context, v13) != 10)
  {
    v54 = 0;
    v37 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v54);
    v41 = v54;
    if (v41)
    {
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v38, v41, v40);
    }

    else
    {
      if (!objc_msgSend_isNil(v37, v38, v39, v40))
      {
        if (v37)
        {
          objc_msgSend_rangeRef(v37, v42, v43, v44);
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v55 = v52;
        v56 = v53;

        v6 = v55.i64[0];
        v15 = *(&v56 + 1);
        v16 = v56;
        goto LABEL_5;
      }

      v45 = objc_msgSend_functionName(spec, v42, v43, v44);
      v48 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v46, v45, v47);
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v49, v48, v50);
    }

    goto LABEL_13;
  }

  v15 = 0;
  v16 = 0;
LABEL_5:

LABEL_7:
  v17 = objc_msgSend_calcEngine(context, a2, context, spec);
  IsWithinTable = objc_msgSend_rangeIsWithinTable_(v17, v18, &v55, v19);

  if (IsWithinTable)
  {
    v52.i64[0] = v16;
    v52.i64[1] = v15;
    v24 = objc_msgSend_calcEngine(context, v21, v22, v23);
    v27 = objc_msgSend_tableResolverForTableUID_(v24, v25, &v52, v26);
    v30 = v27;
    if (v27)
    {
      v51[0] = v6;
      objc_msgSend_cellValueTypeForCell_(v27, v28, v51, v29);
    }

    TSUDecimal::operator=();
    v33 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v34, v51, v35);
  }

  else
  {
    v24 = objc_msgSend_invalidReferenceError(TSCEError, v21, v22, v23);
    v33 = objc_msgSend_raiseErrorOrConvert_(context, v31, v24, v32);
  }

LABEL_13:

  return v33;
}

@end