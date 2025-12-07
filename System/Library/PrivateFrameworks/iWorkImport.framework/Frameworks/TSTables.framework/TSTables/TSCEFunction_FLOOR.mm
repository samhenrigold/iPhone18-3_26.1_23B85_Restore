@interface TSCEFunction_FLOOR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FLOOR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v65 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v65);
  v12 = v65;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_19;
  }

  v64 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v64);
  v15 = v64;
  if (!v15)
  {
    v63._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v18, v19, v20);
    v63._decimal.w[1] = v22;
    v62._decimal.w[0] = objc_msgSend_decimalRepresentation(v17, v22, v23, v24);
    v62._decimal.w[1] = v25;
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=() & 1) == 0 && (TSUDecimal::operator=(), (TSUDecimal::operator<()) || (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v36 = objc_msgSend_functionName(spec, v26, v27, v28);
      v39 = objc_msgSend_signsMustMatchErrorForFunctionName_(TSCEError, v37, v36, v38);
      v42 = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41);
    }

    else
    {
      TSUDecimal::doubleValue(&v63);
      if (fabs(v29) < 1.0e-10)
      {
        TSUDecimal::doubleValue(&v62);
        if (fabs(v33) < 1.0e-10)
        {
          v16 = objc_msgSend_zero(TSCENumberValue, v30, v31, v32);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v34, context, v35);
          }

          else
          {
            memset(&v57, 0, sizeof(v57));
          }

          TSCEFormat::TSCEFormat(&v58, &v57);
          objc_msgSend_setFormat_(v16, v53, &v58, v54);
          goto LABEL_18;
        }
      }

      if (!TSUDecimal::isZero(&v62))
      {
        if (TSUDecimal::isNegative(&v63))
        {
          TSUDecimal::negate(&v63);
          TSUDecimal::negate(&v62);
        }

        *&v58._tskFormat = v63;
        TSUDecimal::operator/=();
        v61._decimal.w[0] = v58._tskFormat;
        v61._decimal.w[1] = *&v58._formatType;
        TSUDecimal::floor(&v61);
        TSUDecimal::operator-=();
        tskFormat = v58._tskFormat;
        v60 = *&v58._formatType;
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        *&v55._tskFormat = v56;
        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          TSUDecimal::operator=();
          TSUDecimal::operator+=();
        }

        TSUDecimal::operator=();
        *&v58._tskFormat = *&v55._tskFormat;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        v56 = *&v55._tskFormat;
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v50, context, v51);
        }

        else
        {
          memset(&v55, 0, sizeof(v55));
        }

        TSCEFormat::formatByUnsettingDecimalPlacesIfPresent(&v58, &v55, v51);
        v21 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v52, &v56, &v58);
        goto LABEL_5;
      }

      v36 = objc_msgSend_functionName(spec, v43, v44, v45);
      v39 = objc_msgSend_argumentEqualsToZeroErrorForFunctionName_argumentNumber_(TSCEError, v46, v36, 2);
      v42 = objc_msgSend_raiseErrorOrConvert_(context, v47, v39, v48);
    }

    v16 = v42;

    goto LABEL_18;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v18, v15, v20);
LABEL_5:
  v16 = v21;
LABEL_18:

LABEL_19:

  return v16;
}

@end