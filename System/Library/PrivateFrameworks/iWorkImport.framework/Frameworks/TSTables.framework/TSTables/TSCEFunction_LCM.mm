@interface TSCEFunction_LCM
+ (TSUDecimal)LCMFunction:(const TSUDecimal *)function number2:(const TSUDecimal *)number2;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LCM

+ (TSUDecimal)LCMFunction:(const TSUDecimal *)function number2:(const TSUDecimal *)number2
{
  v4 = *function;
  v12 = *number2;
  v13 = v4;
  TSUDecimal::trunc(&v13);
  TSUDecimal::trunc(&v12);
  TSUDecimal::operator=();
  if (TSUDecimal::operator==() && (TSUDecimal::operator=(), TSUDecimal::operator==()))
  {
    TSUDecimal::operator=();
    v5 = v14;
    v6 = v15;
  }

  else
  {
    v10 = v12;
    v11 = v13;
    TSUDecimal::abs(&v11);
    TSUDecimal::abs(&v10);
    v7 = TSUDecimal::operator<=();
    objc_msgSend_GCDFunction_number2_(TSCEFunction_GCD, v8, &v13, &v12);
    if (v7)
    {
      v9 = &v12;
    }

    else
    {
      v9 = &v13;
    }

    v16 = *v9;
    TSUDecimal::operator/=();
    TSUDecimal::operator*=();
    v6 = v16._decimal.w[1];
    v5 = v16._decimal.w[0];
  }

  result._decimal.w[1] = v6;
  result._decimal.w[0] = v5;
  return result;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v67[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v67);
  v10 = v67[0];
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
  }

  else
  {
    TSUDecimal::operator=();
    v18 = objc_msgSend_count(v9, v15, v16, v17);
    contextCopy = context;
    v60[0] = contextCopy;
    v60[1] = spec;
    v61 = 0;
    v62[0] = 0;
    *(v62 + 7) = 0;
    v63 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v64 = 0;
    v65 = 0;
    if (v18)
    {
      v23 = 0;
      v24 = v18 - 1;
      v25 = 1;
      v26 = &OBJC_METACLASS___TSTStrokeOrderedLayer;
      do
      {
        while (1)
        {
          v27 = objc_msgSend_valueAtIndex_accessContext_(v9, v19, v23, v60);
          if ((objc_msgSend_isNil(v27, v28, v29, v30) & 1) != 0 || objc_msgSend_nativeType(v27, v31, v32, v33) == 10)
          {
            break;
          }

          v57 = v24;
          v35 = v26;
          v59 = 0;
          v36 = objc_msgSend_asNumber_outError_(v27, v34, contextCopy, &v59);
          v13 = v59;
          *&v58[0] = objc_msgSend_decimalRepresentation(v36, v37, v38, v39);
          *(&v58[0] + 1) = v40;

          if (v13)
          {
            v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v41, v13, v42);
LABEL_27:

            goto LABEL_21;
          }

          TSUDecimal::operator=();
          if (TSUDecimal::operator<())
          {
            v54 = objc_msgSend_numberSmallerThanZeroError(TSCEError, v43, v44, v45);
            v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v55, v54, v56);

            goto LABEL_27;
          }

          v26 = v35;
          v66[0] = objc_msgSend_LCMFunction_number2_(&v35[47], v43, v66, v58);
          v66[1] = v46;

          v25 = 0;
          v24 = v57;
          if (v57 == v23++)
          {
            goto LABEL_16;
          }
        }

        ++v23;
      }

      while (v18 != v23);
      if (v25)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v19, contextCopy, v21);
      }

      else
      {
        memset(v58, 0, sizeof(v58));
      }

      v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v19, v66, v58);
    }

    else
    {
LABEL_15:
      v48 = objc_msgSend_functionName(spec, v19, v20, v21);
      v50 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v49, v48, 5);
      v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v51, v50, v52);
    }

    v13 = 0;
LABEL_21:
  }

  return v14;
}

@end