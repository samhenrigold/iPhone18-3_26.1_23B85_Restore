@interface TSCEFunction_XIRR
+ (TSUDecimal)solveByBisectionWithVector:(id)vector datesVector:(id)datesVector initial:(const TSUDecimal *)initial context:(id)context outError:(id *)error;
+ (TSUDecimal)solveByNewtonsWithVector:(id)vector valuesVector:(id)valuesVector datesVector:(id)datesVector initial:(const TSUDecimal *)initial outError:(id *)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_XIRR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v89[0] = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 1, v89);
  v12 = v89[0];
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v15);
    goto LABEL_19;
  }

  v18 = objc_msgSend_count(v11, v13, v14, v15);
  v19 = *(*arguments + 8);
  v88 = 0;
  v80 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v19, v20, context, spec, 1, 1, &v88);
  v21 = v88;
  if (!v21)
  {
    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v28 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v28, v29, v30, v31) & 1) == 0)
      {
        v86 = 0;
        v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v32, context, spec, 2, &v86);
        v16 = v86;
        v87[0] = objc_msgSend_decimalRepresentation(v33, v34, v35, v36);
        v87[1] = v37;
        if (v16)
        {
          v17 = objc_msgSend_raiseErrorOrConvert_(context, v37, v16, v38);

          goto LABEL_18;
        }
      }
    }

    if (v18 == objc_msgSend_count(v80, v25, v26, v27))
    {
      if (v18 > 1)
      {
        v84 = 0;
        v54 = objc_msgSend_solveByNewtonsWithVector_valuesVector_datesVector_initial_outError_(self, v39, context, v11, v80, v87, &v84);
        v56 = v55;
        v16 = v84;
        v85._decimal.w[0] = v54;
        v85._decimal.w[1] = v56;
        if (v16)
        {
          v24 = objc_msgSend_raiseErrorOrConvert_(context, v57, v16, v58);
          goto LABEL_5;
        }

        if (TSUDecimal::isNaN(&v85))
        {
          TSUDecimal::operator=();
          if ((TSUDecimal::operator==() & 1) == 0)
          {
            TSUDecimal::operator=();
            v83 = 0;
            v60 = objc_msgSend_solveByNewtonsWithVector_valuesVector_datesVector_initial_outError_(self, v59, context, v11, v80, v81, &v83);
            v62 = v61;
            v63 = v83;
            v85._decimal.w[0] = v60;
            v85._decimal.w[1] = v62;
            if (v63)
            {
              v16 = v63;
              v24 = objc_msgSend_raiseErrorOrConvert_(context, v64, v63, v65);
              goto LABEL_5;
            }
          }
        }

        if (!TSUDecimal::isNaN(&v85))
        {
          goto LABEL_33;
        }

        TSUDecimal::operator=();
        v82 = 0;
        v67 = objc_msgSend_solveByBisectionWithVector_datesVector_initial_context_outError_(self, v66, v11, v80, v81, context, &v82);
        v69 = v68;
        v16 = v82;
        v85._decimal.w[0] = v67;
        v85._decimal.w[1] = v69;
        if (v16)
        {
          v24 = objc_msgSend_raiseErrorOrConvert_(context, v70, v16, v71);
          goto LABEL_5;
        }

        if (!TSUDecimal::isNaN(&v85))
        {
LABEL_33:
          TSCEFormat::TSCEFormat(v81, 258);
          v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v79, &v85, v81);
          goto LABEL_17;
        }

        v42 = objc_msgSend_functionName(spec, v72, v73, v74);
        v45 = objc_msgSend_numberDoesNotConvergeWithEstimateErrorForFunctionName_(TSCEError, v75, v42, v76);
        v48 = objc_msgSend_raiseErrorOrConvert_(context, v77, v45, v78);
      }

      else
      {
        v42 = objc_msgSend_functionName(spec, v39, v40, v41);
        v45 = objc_msgSend_tooFewDataPointsErrorForFunctionName_(TSCEError, v43, v42, v44);
        v48 = objc_msgSend_raiseErrorOrConvert_(context, v46, v45, v47);
      }
    }

    else
    {
      v42 = objc_msgSend_functionName(spec, v39, v40, v41);
      v45 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v49, v42, v50);
      v48 = objc_msgSend_raiseErrorOrConvert_(context, v51, v45, v52);
    }

    v17 = v48;

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v16 = v21;
  v24 = objc_msgSend_raiseErrorOrConvert_(context, v22, v21, v23);
LABEL_5:
  v17 = v24;
LABEL_18:

LABEL_19:

  return v17;
}

+ (TSUDecimal)solveByNewtonsWithVector:(id)vector valuesVector:(id)valuesVector datesVector:(id)datesVector initial:(const TSUDecimal *)initial outError:(id *)error
{
  vectorCopy = vector;
  valuesVectorCopy = valuesVector;
  datesVectorCopy = datesVector;
  v17 = objc_msgSend_functionSpec(self, v14, v15, v16);
  v113 = objc_msgSend_count(valuesVectorCopy, v18, v19, v20);
  errorCopy = error;
  v24 = objc_msgSend_gregorianCalendar(TSCECalendar, v21, v22, v23);
  v131[0] = vectorCopy;
  v131[1] = v17;
  v132 = 0;
  v133[0] = 0;
  *(v133 + 7) = 0;
  v134 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v135 = 0;
  v136 = 0;
  v25 = v131[0];
  v125[0] = v25;
  v125[1] = v17;
  v126 = 0;
  v127[0] = 1;
  *(v127 + 7) = 0;
  v128 = v134;
  v129 = 0;
  v130 = 0;
  v111 = objc_msgSend_valueAtIndex_accessContext_(datesVectorCopy, v26, 0, v125);
  if (objc_msgSend_isNil(v111, v27, v28, v29))
  {
    v33 = objc_msgSend_functionName(v17, v30, v31, v32);
    *error = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v34, v33, 1);

    TSUDecimal::operator=();
    goto LABEL_39;
  }

  v108 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v111, v30, v25, v17, 1, error);
  if (*error)
  {
    TSUDecimal::operator=();
    goto LABEL_38;
  }

  v102 = datesVectorCopy;
  v103 = valuesVectorCopy;
  v105 = objc_msgSend_gregorianCalendar(TSCECalendar, v35, v36, v37);
  v107 = objc_msgSend_clearOffTime_(v105, v38, v108, v39);
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v124 = *initial;
  TSUDecimal::operator=();
  v109 = 0;
  v40 = 0;
  v106 = v25;
  v104 = v24;
  while (1)
  {
    v101 = v40;
    if (TSUDecimal::isNaN(&v124))
    {
LABEL_28:
      v124 = xmmword_2217E1440;
LABEL_29:
      v137 = v124;
      goto LABEL_37;
    }

    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if (v113)
    {
      break;
    }

    if ((v109 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_26:
    v138 = v122;
    TSUDecimal::operator/=();
    v120 = v138;
    v138 = v124;
    TSUDecimal::operator-=();
    v123 = v138;
    TSUDecimal::operator-=();
    v121 = v138;
    TSUDecimal::abs(&v121);
    v124 = v123;
    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      goto LABEL_29;
    }

    v40 = v101 + 1;
    v109 = 1;
    if (v101 == 99)
    {
      goto LABEL_28;
    }
  }

  v44 = 0;
  v100 = v109;
  do
  {
    v45 = objc_msgSend_valueAtIndex_accessContext_(valuesVectorCopy, v41, v44, v131);
    v47 = objc_msgSend_valueAtIndex_accessContext_(datesVectorCopy, v46, v44, v125);
    if (objc_msgSend_isNil(v45, v48, v49, v50) & 1) != 0 || (objc_msgSend_isNil(v47, v51, v52, v53))
    {
      if (objc_msgSend_isNil(v45, v51, v52, v53))
      {
        v89 = objc_msgSend_functionName(v17, v54, v55, v56);
        v91 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v88, v89, 1);
        goto LABEL_31;
      }

      if (objc_msgSend_isNil(v47, v54, v55, v56))
      {
        v89 = objc_msgSend_functionName(v17, v57, v58, v59);
        v91 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v90, v89, 2);
LABEL_31:
        *errorCopy = v91;

        TSUDecimal::operator=();
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v60 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v51, v25, v17, 0, errorCopy);
      v120._decimal.w[0] = objc_msgSend_decimalRepresentation(v60, v61, v62, v63);
      v120._decimal.w[1] = v64;

      if (*errorCopy)
      {
        TSUDecimal::operator=();
        goto LABEL_36;
      }

      v68 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v47, v65, v25, v17, 1, errorCopy);
      if (*errorCopy)
      {
        TSUDecimal::operator=();
LABEL_35:

        v25 = v106;
        goto LABEL_36;
      }

      v69 = objc_msgSend_clearOffTime_(v105, v66, v68, v67);
      v71 = objc_msgSend_components_fromDate_toDate_options_(v104, v70, 16, v107, v69, 0);
      if (objc_msgSend_day(v71, v72, v73, v74) < 0)
      {
        v92 = objc_msgSend_functionName(v17, v75, v76, v77);
        *errorCopy = objc_msgSend_dateEarlierThanStartingDateErrorForFunctionName_(TSCEError, v93, v92, v94);

        TSUDecimal::operator=();
        goto LABEL_35;
      }

      TSUDecimal::operator=();
      if ((TSUDecimal::operator<=() & 1) != 0 && !TSUDecimal::operator==())
      {
        v100 = 1;
      }

      else
      {
        v109 = 1;
      }

      TSUDecimal::operator=();
      v138 = v117;
      TSUDecimal::operator+=();
      v118 = v138;
      TSUDecimal::operator=();
      v138 = v115;
      TSUDecimal::operator/=();
      v116 = v138;
      TSUDecimal::doubleValue(&v118);
      v79 = v78;
      TSUDecimal::doubleValue(&v116);
      pow(v79, v80);
      TSUDecimal::operator=();
      v119 = v138;
      v138 = v120;
      TSUDecimal::operator*=();
      v118 = v138;
      TSUDecimal::operator+=();
      TSUDecimal::operator=();
      v138 = v116;
      TSUDecimal::operator+=();
      v117 = v138;
      TSUDecimal::operator=();
      v138 = v114;
      TSUDecimal::operator/=();
      v82 = v138._decimal.w[0];
      v81 = v138._decimal.w[1];
      TSUDecimal::operator=();
      v138._decimal.w[0] = v82;
      v138._decimal.w[1] = v81;
      TSUDecimal::operator-=();
      v115 = v138;
      TSUDecimal::doubleValue(&v117);
      v84 = v83;
      TSUDecimal::doubleValue(&v115);
      pow(v84, v85);
      TSUDecimal::operator=();
      v118 = v138;
      TSUDecimal::operator=();
      v138 = v116;
      TSUDecimal::operator/=();
      v87 = v138._decimal.w[0];
      v86 = v138._decimal.w[1];
      TSUDecimal::operator=();
      v138._decimal.w[0] = v87;
      v138._decimal.w[1] = v86;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v117 = v138;
      TSUDecimal::operator+=();

      datesVectorCopy = v102;
      valuesVectorCopy = v103;
      v25 = v106;
    }

    ++v44;
  }

  while (v113 != v44);
  if (v109 & v100)
  {
    goto LABEL_26;
  }

LABEL_40:
  v97 = objc_msgSend_functionName(v17, v41, v42, v43);
  *errorCopy = objc_msgSend_onlyPositiveOrNegativeErrorForFunctionName_(TSCEError, v98, v97, v99);

  TSUDecimal::operator=();
LABEL_37:

LABEL_38:
LABEL_39:

  v96 = v137._decimal.w[1];
  v95 = v137._decimal.w[0];
  result._decimal.w[1] = v96;
  result._decimal.w[0] = v95;
  return result;
}

+ (TSUDecimal)solveByBisectionWithVector:(id)vector datesVector:(id)datesVector initial:(const TSUDecimal *)initial context:(id)context outError:(id *)error
{
  vectorCopy = vector;
  datesVectorCopy = datesVector;
  contextCopy = context;
  TSUDecimal::operator=();
  v68 = xmmword_2217E1440;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v18 = objc_msgSend_functionSpec(self, v15, v16, v17);
  v20 = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v19, contextCopy, v18, vectorCopy, datesVectorCopy, 0, &v67, 0, error);
  v22 = v21;

  v70 = *initial;
  TSUDecimal::operator+=();
  v66 = v70;
  if (*error)
  {
    TSUDecimal::operator=();
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v27 = objc_msgSend_functionSpec(self, v23, v24, v25);
      v63 = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v28, contextCopy, v27, vectorCopy, datesVectorCopy, 0, &v66, 0, error);
      v64 = v29;
      v70._decimal.w[0] = v20;
      v70._decimal.w[1] = v22;
      TSUDecimal::operator*=();
      v65 = v70;
      TSUDecimal::operator=();
      v30 = TSUDecimal::operator<=();
      v31 = i > 0x63 ? 1 : v30;

      if (v31)
      {
        break;
      }

      if (*error)
      {
        TSUDecimal::operator=();
        goto LABEL_15;
      }

      TSUDecimal::operator+=();
    }

    v70 = v67;
    TSUDecimal::operator-=();
    v65 = v70;
    TSUDecimal::abs(&v65);
    if (i > 0x63 || (TSUDecimal::operator=(), (TSUDecimal::operator<() & 1) != 0))
    {
      v32 = v68;
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v38 = 100;
      while (1)
      {
        v39 = objc_msgSend_functionSpec(self, v35, v36, v37);
        v62._decimal.w[0] = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v40, contextCopy, v39, vectorCopy, datesVectorCopy, 0, &v67, 0, error);
        v62._decimal.w[1] = v41;

        if (*error || (objc_msgSend_functionSpec(self, v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), v61._decimal.w[0] = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v46, contextCopy, v45, vectorCopy, datesVectorCopy, 0, &v66, 0, error), v61._decimal.w[1] = v47, v45, *error))
        {
LABEL_30:
          TSUDecimal::operator=();
          goto LABEL_15;
        }

        v60 = v62;
        TSUDecimal::abs(&v60);
        v59 = v61;
        TSUDecimal::abs(&v59);
        TSUDecimal::operator=();
        if (TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<()) || (v70 = v62, TSUDecimal::operator*=(), TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
        {
LABEL_29:
          v55 = &v68;
          goto LABEL_33;
        }

        v70 = v67;
        TSUDecimal::operator+=();
        TSUDecimal::operator/=();
        v58 = v70;
        v51 = objc_msgSend_functionSpec(self, v48, v49, v50);
        v57._decimal.w[0] = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v52, contextCopy, v51, vectorCopy, datesVectorCopy, 0, &v58, 0, error);
        v57._decimal.w[1] = v53;

        if (*error)
        {
          goto LABEL_30;
        }

        v70 = v57;
        TSUDecimal::operator*=();
        TSUDecimal::operator=();
        v54 = TSUDecimal::operator<() ? &v66 : &v67;
        *v54 = v58;
        v70 = v67;
        TSUDecimal::operator-=();
        v56 = v70;
        TSUDecimal::abs(&v56);
        TSUDecimal::abs(&v57);
        TSUDecimal::operator=();
        v70 = v56;
        TSUDecimal::operator/=();
        TSUDecimal::operator=();
        if (TSUDecimal::operator<=())
        {
          break;
        }

        TSUDecimal::operator=();
        if (TSUDecimal::operator<=())
        {
          break;
        }

        if (!--v38)
        {
          goto LABEL_29;
        }
      }

      v55 = &v58;
      if (v38 == 1)
      {
        v55 = &v68;
      }

LABEL_33:
      v32 = *v55;
    }

    v69 = v32;
  }

LABEL_15:

  v34 = *(&v69 + 1);
  v33 = v69;
  result._decimal.w[1] = v34;
  result._decimal.w[0] = v33;
  return result;
}

@end