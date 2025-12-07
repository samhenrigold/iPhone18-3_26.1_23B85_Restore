@interface TSCEFunction_BONDMDURATION
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BONDMDURATION

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v138, 0, sizeof(v138));
  }

  sub_22114F414(&v139, &v138);
  v137 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v137);
  v17 = v137;
  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v17, v16);
    goto LABEL_57;
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
      memset(&v138, 0, sizeof(v138));
    }

    sub_22114F414(&v139, &v138);
    v136 = 0;
    v31 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v136);
    v17 = v136;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v32, v17, v34);
LABEL_55:

      goto LABEL_56;
    }

    if (!v31)
    {
      v125 = objc_msgSend_functionName(spec, v32, v33, v34);
      v126 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v38, v125, 2);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v39, v126, v40);
      v17 = 0;
LABEL_54:

      goto LABEL_55;
    }

    v125 = objc_msgSend_clearOffTime_(v19, v32, v31, v34);
    v35 = *(*arguments + 16);
    v126 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v138, 0, sizeof(v138));
    }

    sub_22114F414(&v139, &v138);
    v135 = 0;
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v126, v41, context, spec, 2, &v135);
    v17 = v135;
    v124 = v42;
    v134[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45);
    v134[1] = v46;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v46, v17, v47);
LABEL_53:

      goto LABEL_54;
    }

    v48 = *(*arguments + 24);
    v123 = v48;
    if (v48)
    {
      objc_msgSend_formatWithContext_(v48, v49, context, v50);
    }

    else
    {
      memset(&v138, 0, sizeof(v138));
    }

    sub_22114F414(&v139, &v138);
    v133 = 0;
    v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v123, v51, context, spec, 3, &v133);
    v17 = v133;
    v122 = v52;
    *&v132 = objc_msgSend_decimalRepresentation(v52, v53, v54, v55);
    *(&v132 + 1) = v56;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v56, v17, v57);
LABEL_52:

      goto LABEL_53;
    }

    v58 = *(*arguments + 32);
    v121 = v58;
    if (v58)
    {
      objc_msgSend_formatWithContext_(v58, v59, context, v60);
    }

    else
    {
      memset(&v138, 0, sizeof(v138));
    }

    sub_22114F414(&v139, &v138);
    v131 = 0;
    v62 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v121, v61, context, spec, 4, &v131);
    v17 = v131;
    v120 = objc_msgSend_trunc(v62, v63, v64, v65);

    if (v17)
    {
      v69 = objc_msgSend_raiseErrorOrConvert_(context, v66, v17, v68);
LABEL_30:
      v18 = v69;
LABEL_51:

      goto LABEL_52;
    }

    v138._tskFormat = objc_msgSend_decimalRepresentation(v120, v66, v67, v68);
    *&v138._formatType = v70;
    v71 = TSUDecimal::truncateWithRounding(&v138);
    v75 = v71;
    if (v71 <= 4 && ((1 << v71) & 0x16) != 0)
    {
      if (*(arguments + 1) - *arguments < 0x29uLL)
      {
        v82 = 0;
      }

      else
      {
        v76 = *(*arguments + 40);
        if (objc_msgSend_isTokenOrEmptyArg(v76, v77, v78, v79))
        {
          v82 = 0;
        }

        else
        {
          v118 = v76;
          if (v76)
          {
            objc_msgSend_formatWithContext_(v76, v80, context, v81);
          }

          else
          {
            memset(&v138, 0, sizeof(v138));
          }

          sub_22114F414(&v139, &v138);
          v119 = v75;
          v130 = 0;
          v90 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v76, v89, context, spec, 5, &v130);
          v17 = v130;
          v94 = objc_msgSend_trunc(v90, v91, v92, v93);

          v117 = v94;
          v138._tskFormat = objc_msgSend_decimalRepresentation(v94, v95, v96, v97);
          *&v138._formatType = v98;
          v99 = TSUDecimal::truncateWithRounding(&v138);
          v76 = v118;
          if (v17)
          {
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v100, v17, v101);

            goto LABEL_51;
          }

          v82 = v99;

          v75 = v119;
        }
      }

      if (objc_msgSend_compare_(v22, v72, v125, v74) != 1 && objc_msgSend_compare_(v22, v102, v125, v104))
      {
        v129 = 0;
        DurationInPeriodsWithSettlementDate_settlement_maturity_couponRate_yield_numCoupons_dayBasisMode_outError = objc_msgSend_getDurationInPeriodsWithSettlementDate_settlement_maturity_couponRate_yield_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v102, spec, v22, v125, v134, &v132, v82, v75, &v129);
        v107 = v106;
        v17 = v129;
        TSUDecimal::operator=();
        v138._tskFormat = DurationInPeriodsWithSettlementDate_settlement_maturity_couponRate_yield_numCoupons_dayBasisMode_outError;
        *&v138._formatType = v107;
        TSUDecimal::operator/=();
        tskFormat = v138._tskFormat;
        v108 = *&v138._formatType;
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        *&v138._tskFormat = v132;
        TSUDecimal::operator/=();
        *&v138._tskFormat = v127;
        TSUDecimal::operator+=();
        v138._tskFormat = tskFormat;
        *&v138._formatType = v108;
        TSUDecimal::operator/=();
        v128[0] = v138._tskFormat;
        v128[1] = *&v138._formatType;
        if (v17)
        {
          v69 = objc_msgSend_raiseErrorOrConvert_(context, v110, v17, v111);
        }

        else
        {
          sub_221256020(&v139, &v138);
          v69 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v116, v128, &v138);
        }

        goto LABEL_30;
      }

      v83 = objc_msgSend_functionName(spec, v102, v103, v104);
      v85 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v112, v83, 1, 2, 1, 0);
      v88 = objc_msgSend_raiseErrorOrConvert_(context, v113, v85, v114);
    }

    else
    {
      v83 = objc_msgSend_functionName(spec, v72, v73, v74);
      v85 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v84, v83, 5);
      v88 = objc_msgSend_raiseErrorOrConvert_(context, v86, v85, v87);
    }

    v18 = v88;

    v17 = 0;
    goto LABEL_51;
  }

  v22 = objc_msgSend_functionName(spec, v14, v15, v16);
  v26 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v22, 1);
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
  v17 = 0;
LABEL_56:

LABEL_57:
  if (v139)
  {
    v140 = v139;
    operator delete(v139);
  }

  return v18;
}

@end