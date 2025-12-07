@interface TSCEFunction_MROUND
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MROUND

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v60 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v60);
  v12 = v60;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
  }

  else
  {
    v59 = 0;
    v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v59);
    v15 = v59;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v18, v15, v19);
    }

    else
    {
      v22 = objc_msgSend_errorForDuration_argumentIndex_(v11, v18, spec, 0);
      if (v22 || (objc_msgSend_errorForDuration_argumentIndex_(v17, v20, spec, 1), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v20, v22, v21);
        v15 = v22;
      }

      else
      {
        v28 = objc_msgSend_zero(TSCENumberValue, v20, v23, v21);
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v25, context, v27);
        }

        else
        {
          memset(&v57, 0, sizeof(v57));
        }

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v25, context, v27);
        }

        else
        {
          memset(&v56, 0, sizeof(v56));
        }

        TSCEFormat::formatByMergingWithFormat(&v58, &v57, &v56, v26, v27);
        v56._tskFormat = objc_msgSend_decimalRepresentation(v11, v29, v30, v31);
        *&v56._formatType = v32;
        v55._decimal.w[0] = objc_msgSend_decimalRepresentation(v17, v32, v33, v34);
        v55._decimal.w[1] = v35;
        v54 = *&v56._tskFormat;
        TSUDecimal::operator=();
        if (TSUDecimal::operator<=() & 1) == 0 && (TSUDecimal::operator=(), (TSUDecimal::operator<()) || (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
        {
          v41 = objc_msgSend_functionName(spec, v36, v37, v38);
          v44 = objc_msgSend_signsMustMatchErrorForFunctionName_(TSCEError, v42, v41, v43);
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46);
        }

        else
        {
          TSUDecimal::operator=();
          if (TSUDecimal::operator==())
          {
            TSCEFormat::TSCEFormat(&v57, &v58);
            objc_msgSend_setFormat_(v28, v39, &v57, v40);
            v16 = v28;
          }

          else
          {
            TSUDecimal::operator=();
            TSUDecimal::remainder(&v56, &v55, &v53);
            *&v57._tskFormat = v53;
            TSUDecimal::operator*=();
            v52[2] = v57._tskFormat;
            v52[3] = *&v57._formatType;
            TSUDecimal::operator=();
            if (TSUDecimal::operator<())
            {
              TSUDecimal::operator+=();
            }

            TSUDecimal::operator-=();
            TSUDecimal::operator=();
            if (TSUDecimal::operator<=() & 1) == 0 && (TSUDecimal::operator=(), *&v57._tskFormat = v53, TSUDecimal::operator+=(), v52[0] = v57._tskFormat, v52[1] = *&v57._formatType, TSUDecimal::operator=(), *&v57._tskFormat = v55, TSUDecimal::operator/=(), v51[0] = v57._tskFormat, v51[1] = *&v57._formatType, (sub_2212AD924(v52, v51)) || (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::operator=(), *&v57._tskFormat = v53, TSUDecimal::operator-=(), TSUDecimal::operator=(), *&v57._tskFormat = v55, TSUDecimal::operator/=(), (TSUDecimal::operator<=()))
            {
              TSUDecimal::operator+=();
            }

            v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v47, &v54, v48);
            TSCEFormat::TSCEFormat(&v57, &v58);
            objc_msgSend_setFormat_(v16, v49, &v57, v50);
          }
        }

        v15 = 0;
      }
    }
  }

  return v16;
}

@end