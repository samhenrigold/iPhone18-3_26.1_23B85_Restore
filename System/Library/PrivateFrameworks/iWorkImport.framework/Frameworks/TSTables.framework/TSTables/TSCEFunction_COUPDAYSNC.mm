@interface TSCEFunction_COUPDAYSNC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUPDAYSNC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v109, 0, sizeof(v109));
  }

  sub_22114F414(&v110, &v109);
  v108 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v108);
  v17 = v108;
  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v17, v16);
    goto LABEL_46;
  }

  if (v13)
  {
    v19 = objc_msgSend_gregorianCalendar(TSCECalendar, v14, v15, v16);
    v22 = objc_msgSend_clearOffTime_(v19, v20, v13, v21);
    v23 = *(*arguments + 8);
    v26 = v23;
    if (v23)
    {
      objc_msgSend_formatWithContext_(v23, v24, context, v25);
    }

    else
    {
      memset(&v109, 0, sizeof(v109));
    }

    sub_22114F414(&v110, &v109);
    v107 = 0;
    v31 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v107);
    v17 = v107;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v32, v17, v34);
LABEL_44:

      goto LABEL_45;
    }

    if (!v31)
    {
      v39 = objc_msgSend_functionName(spec, v32, v33, v34);
      v102 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v40, v39, 2);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v41, v102, v42);
      v17 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v100 = v31;
    v101 = objc_msgSend_clearOffTime_(v19, v32, v31, v34);
    v35 = *(*arguments + 16);
    v38 = v35;
    v102 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v109, 0, sizeof(v109));
    }

    sub_22114F414(&v110, &v109);
    v106 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v43, context, spec, 2, &v106);
    v17 = v106;
    v48 = objc_msgSend_trunc(v44, v45, v46, v47);

    v99 = v48;
    v109._tskFormat = objc_msgSend_decimalRepresentation(v48, v49, v50, v51);
    *&v109._formatType = v52;
    v53 = TSUDecimal::truncateWithRounding(&v109);
    v31 = v100;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v54, v17, v56);
LABEL_20:
      v39 = v101;
LABEL_42:

      goto LABEL_43;
    }

    v57 = v53;
    if (v53 <= 4 && ((1 << v53) & 0x16) != 0)
    {
      if (*(arguments + 1) - *arguments < 0x19uLL)
      {
        v64 = 0;
      }

      else
      {
        v58 = *(*arguments + 24);
        v98 = v58;
        if (objc_msgSend_isTokenOrEmptyArg(v58, v59, v60, v61))
        {
          v64 = 0;
        }

        else
        {
          if (v58)
          {
            objc_msgSend_formatWithContext_(v58, v62, context, v63);
          }

          else
          {
            memset(&v109, 0, sizeof(v109));
          }

          sub_22114F414(&v110, &v109);
          v105 = 0;
          v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v58, v71, context, spec, 3, &v105);
          v17 = v105;
          v96 = v72;
          v76 = objc_msgSend_trunc(v72, v73, v74, v75);

          v97 = v76;
          v109._tskFormat = objc_msgSend_decimalRepresentation(v76, v77, v78, v79);
          *&v109._formatType = v80;
          v81 = TSUDecimal::truncateWithRounding(&v109);
          if (v17)
          {
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v82, v17, v83);

            goto LABEL_20;
          }

          v64 = v81;
        }
      }

      if (objc_msgSend_compare_(v22, v54, v101, v56) != 1 && objc_msgSend_compare_(v22, v84, v101, v86))
      {
        v104 = 0;
        specCopy = spec;
        v39 = v101;
        objc_msgSend_getCouponDaysSinceSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v84, specCopy, v22, v101, v64, &v104, v57);
        v88 = v104;
        if (v88)
        {
          v17 = v88;
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v89, v88, v90);
          goto LABEL_42;
        }

        TSUDecimal::operator=();
        sub_221256020(&v110, &v109);
        v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v95, v103, &v109);
LABEL_41:
        v17 = 0;
        goto LABEL_42;
      }

      v65 = objc_msgSend_functionName(spec, v84, v85, v86);
      v67 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v91, v65, 1, 2, 1, 0);
      v39 = v101;
      v70 = objc_msgSend_raiseErrorOrConvert_(context, v92, v67, v93);
    }

    else
    {
      v65 = objc_msgSend_functionName(spec, v54, v55, v56);
      v39 = v101;
      v67 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v66, v65, 3);
      v70 = objc_msgSend_raiseErrorOrConvert_(context, v68, v67, v69);
    }

    v18 = v70;

    goto LABEL_41;
  }

  v22 = objc_msgSend_functionName(spec, v14, v15, v16);
  v26 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v22, 1);
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
  v17 = 0;
LABEL_45:

LABEL_46:
  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  return v18;
}

@end