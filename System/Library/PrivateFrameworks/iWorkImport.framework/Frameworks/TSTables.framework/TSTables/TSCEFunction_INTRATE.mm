@interface TSCEFunction_INTRATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INTRATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v103[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v103);
  v14 = v103[0];
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
    goto LABEL_33;
  }

  if (v10)
  {
    v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13);
    v19 = objc_msgSend_clearOffTime_(v16, v17, v10, v18);
    v20 = *(*arguments + 8);
    v102 = 0;
    v22 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v102);
    v14 = v102;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v23, v14, v25);
LABEL_31:

      goto LABEL_32;
    }

    if (!v22)
    {
      v39 = objc_msgSend_functionName(spec, v23, v24, v25);
      v33 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v40, v39, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v41, v33, v42);
      v14 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v92 = objc_msgSend_clearOffTime_(v16, v23, v22, v25);
    v29 = *(*arguments + 16);
    v101 = 0;
    v93 = v29;
    v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v30, context, spec, 2, &v101);
    v14 = v101;
    v91 = v31;
    v32 = v31;
    v33 = v93;
    v100[0] = objc_msgSend_decimalRepresentation(v32, v34, v35, v36);
    v100[1] = v37;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v37, v14, v38);
      v39 = v92;
LABEL_29:

      goto LABEL_30;
    }

    v43 = *(*arguments + 24);
    v99 = 0;
    v90 = v43;
    v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v43, v44, context, spec, 3, &v99);
    v14 = v99;
    v89 = v45;
    v49 = objc_msgSend_decimalRepresentation(v45, v46, v47, v48);
    v33 = v93;
    v98[0] = v49;
    v98[1] = v50;
    if (v14)
    {
      v52 = objc_msgSend_raiseErrorOrConvert_(context, v50, v14, v51);
    }

    else
    {
      if (*(arguments + 1) - *arguments < 0x21uLL)
      {
        v58 = 0;
      }

      else
      {
        v53 = *(*arguments + 32);
        v88 = v53;
        if (objc_msgSend_isTokenOrEmptyArg(v53, v54, v55, v56))
        {
          v58 = 0;
        }

        else
        {
          v97 = 0;
          v59 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v57, context, spec, 4, &v97);
          v14 = v97;
          v86 = v59;
          v63 = objc_msgSend_trunc(v59, v60, v61, v62);

          v87 = v63;
          v94._decimal.w[0] = objc_msgSend_decimalRepresentation(v63, v64, v65, v66);
          v94._decimal.w[1] = v67;
          v68 = TSUDecimal::truncateWithRounding(&v94);
          if (v14)
          {
            v15 = objc_msgSend_raiseErrorOrConvert_(context, v69, v14, v70);

            goto LABEL_28;
          }

          v58 = v68;
        }
      }

      if (objc_msgSend_compare_(v19, v50, v92, v51) == 1 || !objc_msgSend_compare_(v19, v71, v92, v73))
      {
        v79 = objc_msgSend_functionName(spec, v71, v72, v73);
        v81 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v80, v79, 1, 2, 1, 0);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v82, v81, v83);

        v14 = 0;
        goto LABEL_28;
      }

      v95 = 0;
      YieldDiscWithSettlementDate_maturity_price_redemptionValue_dayBasisMode_outError = objc_msgSend_getYieldDiscWithSettlementDate_maturity_price_redemptionValue_dayBasisMode_outError_(TSCEFinancialFunctions, v71, v19, v92, v100, v98, v58, &v95);
      v76 = v75;
      v14 = v95;
      v96[0] = YieldDiscWithSettlementDate_maturity_price_redemptionValue_dayBasisMode_outError;
      v96[1] = v76;
      if (v14)
      {
        objc_msgSend_raiseErrorOrConvert_(context, v77, v14, v78);
      }

      else
      {
        TSCEFormat::TSCEFormat(&v94, 258);
        objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v85, v96, &v94);
      }
      v52 = ;
    }

    v15 = v52;
LABEL_28:
    v39 = v92;

    goto LABEL_29;
  }

  v19 = objc_msgSend_functionName(spec, v11, v12, v13);
  v20 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v26, v19, 1);
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v27, v20, v28);
  v14 = 0;
LABEL_32:

LABEL_33:

  return v15;
}

@end