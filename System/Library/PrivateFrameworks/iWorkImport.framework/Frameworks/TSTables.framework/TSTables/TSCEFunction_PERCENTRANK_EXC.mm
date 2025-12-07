@interface TSCEFunction_PERCENTRANK_EXC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERCENTRANK_EXC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v67 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 0, &v67);
  v11 = v67;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_22;
  }

  v16 = *(*arguments + 8);
  v66[1] = 0;
  v61 = v16;
  v18 = objc_msgSend_computePercentRank_functionSpec_vector_xValue_isExclusive_outError_(TSCEFunction_PERCENTRANK, v17, context, spec, v10);
  v19 = 0;
  if (!v19)
  {
    TSUDecimal::operator=();
    v24 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v22, &v63, v23);
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v25 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v25, v26, v27, v28) & 1) == 0 && objc_msgSend_nativeType(v25, v29, v30, v31) != 10)
      {
        v66[0] = 0;
        v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v32, context, spec, 2, v66);
        v14 = v66[0];
        v60 = objc_msgSend_floor(v33, v34, v35, v36);

        if (v14)
        {
          v39 = objc_msgSend_raiseErrorOrConvert_(context, v37, v14, v38);
LABEL_20:
          v15 = v39;

          goto LABEL_21;
        }

        v24 = v60;
      }
    }

    v60 = v24;
    TSUDecimal::operator=();
    v42 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v40, &v63, v41);
    v65 = 0;
    v25 = objc_msgSend_power_outError_(v42, v43, v24, &v65);
    v44 = v65;

    if (objc_msgSend_isFinite(v25, v45, v46, v47))
    {
      v50 = objc_msgSend_multiply_context_(v18, v48, v25, context, v60);
      v54 = objc_msgSend_round(v50, v51, v52, v53);
      v64 = v44;
      v56 = objc_msgSend_divide_outError_(v54, v55, v25, &v64);
      v14 = v64;

      v18 = v56;
      if (!v14)
      {
LABEL_14:
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v48, context, v49);
        }

        else
        {
          memset(&v62, 0, sizeof(v62));
        }

        TSCEFormat::TSCEFormat(&v63, &v62);
        objc_msgSend_setFormat_(v18, v57, &v63, v58);
        v39 = v18;
        v18 = v39;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = v44;
      if (!v44)
      {
        goto LABEL_14;
      }
    }

    v39 = objc_msgSend_raiseErrorOrConvert_(context, v48, v14, v49, v60);
    goto LABEL_20;
  }

  v14 = v19;
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v21);
LABEL_21:

LABEL_22:

  return v15;
}

@end