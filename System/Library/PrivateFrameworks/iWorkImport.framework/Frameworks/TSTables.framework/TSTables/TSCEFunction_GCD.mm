@interface TSCEFunction_GCD
+ (TSUDecimal)GCDFunction:(const TSUDecimal *)function number2:(const TSUDecimal *)number2;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GCD

+ (TSUDecimal)GCDFunction:(const TSUDecimal *)function number2:(const TSUDecimal *)number2
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *function;
  v11 = *number2;
  v12 = v4;
  TSUDecimal::trunc(&v12);
  TSUDecimal::trunc(&v11);
  TSUDecimal::operator=();
  if (TSUDecimal::operator==())
  {
    v6 = v11._decimal.w[0];
    v5 = v11._decimal.w[1];
  }

  else
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v6 = v12._decimal.w[0];
      v5 = v12._decimal.w[1];
    }

    else
    {
      if ((TSUDecimal::operator<=() & 1) == 0)
      {
        v7 = v11;
        v11 = v12;
        v12 = v7;
      }

      v6 = v12._decimal.w[0];
      v5 = v12._decimal.w[1];
      TSUDecimal::operator=();
      TSUDecimal::mod(&v11, &v12, &v10);
      TSUDecimal::operator=();
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        do
        {
          if (TSUDecimal::isInf(&v10))
          {
            break;
          }

          v6 = v10._decimal.w[0];
          v5 = v10._decimal.w[1];
          v11 = v12;
          v12 = v10;
          TSUDecimal::mod(&v11, &v12, &v10);
          TSUDecimal::operator=();
        }

        while (!TSUDecimal::operator==());
      }
    }
  }

  v8 = v6;
  v9 = v5;
  result._decimal.w[1] = v9;
  result._decimal.w[0] = v8;
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
          v66[0] = objc_msgSend_GCDFunction_number2_(&v35[43], v43, v66, v58);
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