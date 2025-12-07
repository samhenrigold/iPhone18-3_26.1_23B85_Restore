@interface TSCEFunction_COMBIN
+ (TSUDecimal)COMBINFunctionWithN:(TSUDecimal)n K:(TSUDecimal)k;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COMBIN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v73[0] = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, v73);
  v12 = v73[0];
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
  }

  else
  {
    v72 = 0;
    v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v72);
    v15 = v72;
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

      else if (objc_msgSend_hasUnits(v11, v20, v23, v21) && objc_msgSend_hasUnits(v17, v25, v26, v27) && objc_msgSend_dimension(v11, v25, v26, v27) == 4 && objc_msgSend_dimension(v17, v25, v26, v27) == 4 && (v28 = objc_msgSend_unit(v11, v25, v26, v27), v28 != objc_msgSend_unit(v17, v29, v30, v31)))
      {
        v61 = objc_msgSend_functionName(spec, v25, v26, v27);
        v64 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v62, v61, v63);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v65, v64, v66);

        v15 = 0;
      }

      else
      {
        v32 = objc_msgSend_trunc(v11, v25, v26, v27);

        v36 = objc_msgSend_trunc(v17, v33, v34, v35);

        if (objc_msgSend_gt_(v36, v37, v32, v38))
        {
          v42 = objc_msgSend_functionName(spec, v39, v40, v41);
          v44 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v43, v42, 1, 2, 0, 1);
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46);

          v15 = 0;
          v17 = v36;
        }

        else
        {
          v47 = objc_msgSend_decimalRepresentation(v32, v39, v40, v41);
          v49 = v48;
          v52 = objc_msgSend_decimalRepresentation(v36, v48, v50, v51);
          v71[0] = objc_msgSend_COMBINFunctionWithN_K_(TSCEFunction_COMBIN, v53, v47, v49, v52, v53);
          v71[1] = v54;
          v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v54, v71, v55);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v56, context, v58);
          }

          else
          {
            memset(&v69, 0, sizeof(v69));
          }

          if (v9)
          {
            objc_msgSend_formatWithContext_(v9, v56, context, v58);
          }

          else
          {
            memset(&v68, 0, sizeof(v68));
          }

          TSCEFormat::formatByMergingWithFormat(&v67, &v69, &v68, v57, v58);
          TSCEFormat::TSCEFormat(&v70, &v67);
          objc_msgSend_setFormat_(v16, v59, &v70, v60);
          v15 = 0;
          v17 = v36;
        }

        v11 = v32;
      }
    }
  }

  return v16;
}

+ (TSUDecimal)COMBINFunctionWithN:(TSUDecimal)n K:(TSUDecimal)k
{
  nCopy = n;
  kCopy = k;
  nCopy2 = n;
  nCopy3 = n;
  TSUDecimal::operator-=();
  if ((TSUDecimal::operator<=() & 1) == 0)
  {
    nCopy3 = nCopy;
    TSUDecimal::operator-=();
    kCopy = nCopy;
  }

  TSUDecimal::operator=();
  if (TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
  }

  else
  {
    TSUDecimal::doubleValue(&kCopy);
    if (v4 >= 2.0)
    {
      v5 = 3;
      do
      {
        if (TSUDecimal::isInf(&nCopy2))
        {
          break;
        }

        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        TSUDecimal::operator*=();
        TSUDecimal::operator=();
        TSUDecimal::operator/=();
        v6 = v5;
        TSUDecimal::doubleValue(&kCopy);
        ++v5;
      }

      while (v7 >= v6);
    }
  }

  v8 = nCopy2._decimal.w[0];
  v9 = nCopy2._decimal.w[1];
  result._decimal.w[1] = v9;
  result._decimal.w[0] = v8;
  return result;
}

@end