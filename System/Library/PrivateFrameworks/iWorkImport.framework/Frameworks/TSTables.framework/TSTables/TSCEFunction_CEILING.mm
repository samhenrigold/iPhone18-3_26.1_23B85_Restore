@interface TSCEFunction_CEILING
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CEILING

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v81 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v81);
  v14 = v81;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v14, v13);
    goto LABEL_37;
  }

  v18 = objc_msgSend_errorForDuration_argumentIndex_(v11, v12, spec, 0);
  if (v18)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v16, v18, v17);
    v14 = v18;
    goto LABEL_37;
  }

  v80 = 0;
  v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v16, context, spec, 1, &v80);
  v14 = v80;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v20, v14, v22);
  }

  else
  {
    if (objc_msgSend_hasUnits(v19, v20, v21, v22))
    {
      v26 = objc_msgSend_functionName(spec, v23, v24, v25);
      v28 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v27, v26, 2);
      v31 = objc_msgSend_raiseErrorOrConvert_(context, v29, v28, v30);
    }

    else
    {
      v79._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v23, v24, v25);
      v79._decimal.w[1] = v32;
      v78._decimal.w[0] = objc_msgSend_decimalRepresentation(v19, v32, v33, v34);
      v78._decimal.w[1] = v35;
      if (TSUDecimal::isZero(&v78))
      {
        v15 = objc_msgSend_zero(TSCENumberValue, v36, v37, v38);
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v39, context, v40);
        }

        else
        {
          memset(&v76, 0, sizeof(v76));
        }

        TSCEFormat::TSCEFormat(&v77, &v76);
        objc_msgSend_setFormat_(v15, v53, &v77, v54);
        goto LABEL_36;
      }

      if ((!TSUDecimal::isGreaterThanZero(&v79) || (TSUDecimal::isNegative(&v78) & 1) == 0) && (!TSUDecimal::isNegative(&v79) || !TSUDecimal::isGreaterThanZero(&v78)))
      {
        if (TSUDecimal::isZero(&v79))
        {
          v15 = objc_msgSend_zero(TSCENumberValue, v48, v49, v50);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v51, context, v52);
          }

          else
          {
            memset(&v75, 0, sizeof(v75));
          }

          TSCEFormat::TSCEFormat(&v77, &v75);
          objc_msgSend_setFormat_(v15, v63, &v77, v64);
        }

        else
        {
          isNegative = TSUDecimal::isNegative(&v79);
          if (isNegative)
          {
            TSUDecimal::negate(&v79);
            TSUDecimal::negate(&v78);
          }

          TSUDecimal::operator=();
          TSUDecimal::divide(&v79, &v78, &v74);
          TSUDecimal::operator=();
          TSUDecimal::operator=();
          TSUDecimal::split(&v74, &v72, &v73);
          TSUDecimal::operator=();
          TSUDecimal::multiply(&v72, &v78, &v71);
          v70 = v71;
          if (TSUDecimal::operator<())
          {
            TSUDecimal::doubleValue(&v70);
            v59 = v58;
            TSUDecimal::doubleValue(&v79);
            if (v59 != v60)
            {
              TSUDecimal::add(&v71, &v78, &v70);
            }
          }

          if (isNegative)
          {
            TSUDecimal::negate(&v70);
          }

          v15 = objc_msgSend_variantWithDecimal_(v11, v56, &v70, v57);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v61, context, v62);
          }

          else
          {
            memset(&v69, 0, sizeof(v69));
          }

          TSCEFormat::formatByUnsettingDecimalPlacesIfPresent(&v68, &v69, v62);
          TSCEFormat::TSCEFormat(&v77, &v68);
          objc_msgSend_setFormat_(v15, v65, &v77, v66);
        }

        goto LABEL_36;
      }

      v26 = objc_msgSend_functionName(spec, v41, v42, v43);
      v28 = objc_msgSend_signsMustMatchErrorForFunctionName_(TSCEError, v44, v26, v45);
      v31 = objc_msgSend_raiseErrorOrConvert_(context, v46, v28, v47);
    }

    v15 = v31;
  }

LABEL_36:

LABEL_37:

  return v15;
}

@end