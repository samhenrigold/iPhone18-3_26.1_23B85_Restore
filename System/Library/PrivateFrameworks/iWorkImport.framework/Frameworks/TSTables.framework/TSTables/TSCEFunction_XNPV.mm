@interface TSCEFunction_XNPV
+ (TSUDecimal)computeXNPV:(id)v functionSpec:(id)spec valuesVector:(id)vector datesVector:(id)datesVector firstArgumentIndex:(int)index rate:(const TSUDecimal *)rate unit:(unsigned __int16 *)unit outError:(id *)self0;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_XNPV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v47 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v47);
  v12 = v47;
  v46[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v46[1] = v16;
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
  }

  else
  {
    v19 = *(*arguments + 8);
    v45 = 0;
    v21 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v19, v20, context, spec, 1, 1, &v45);
    v22 = v45;
    if (v22)
    {
      v12 = v22;
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v24);
    }

    else
    {
      v25 = *(*arguments + 16);
      v44 = 0;
      v27 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v25, v26, context, spec, 2, 1, &v44);
      v28 = v44;
      if (v28)
      {
        v12 = v28;
        v31 = objc_msgSend_raiseErrorOrConvert_(context, v29, v28, v30);
      }

      else
      {
        v43 = 0;
        v41 = 0;
        v32 = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(self, v29, context, spec, v21, v27, 1, v46, &v43, &v41, 0);
        v34 = v33;
        v35 = v41;
        v12 = v35;
        v42[0] = v32;
        v42[1] = v34;
        if (v35)
        {
          v31 = objc_msgSend_raiseErrorOrConvert_(context, v36, v35, v37);
        }

        else
        {
          v38 = [TSCENumberValue alloc];
          v31 = objc_msgSend_initWithDecimal_baseUnit_(v38, v39, v42, v43);
        }
      }

      v18 = v31;
    }
  }

  return v18;
}

+ (TSUDecimal)computeXNPV:(id)v functionSpec:(id)spec valuesVector:(id)vector datesVector:(id)datesVector firstArgumentIndex:(int)index rate:(const TSUDecimal *)rate unit:(unsigned __int16 *)unit outError:(id *)self0
{
  v10 = *&index;
  vCopy = v;
  vectorCopy = vector;
  datesVectorCopy = datesVector;
  if (!error)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSCEFunction_XNPV computeXNPV:functionSpec:valuesVector:datesVector:firstArgumentIndex:rate:unit:outError:]", v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 4289, 0, "Error pointer is required");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v29 = objc_msgSend_count(vectorCopy, v16, v17, v18);
  if (v29 != objc_msgSend_count(datesVectorCopy, v30, v31, v32))
  {
    v48 = objc_msgSend_functionName(spec, v33, v34, v35);
    v51 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v49, v48, v50);
LABEL_9:
    *error = v51;

    TSUDecimal::operator=();
    goto LABEL_47;
  }

  if (!v29)
  {
    v48 = objc_msgSend_functionName(spec, v33, v34, v35);
    v51 = objc_msgSend_tooFewDataPointsErrorForFunctionName_(TSCEError, v52, v48, v53);
    goto LABEL_9;
  }

  v118 = objc_msgSend_gregorianCalendar(TSCECalendar, v33, v34, v35);
  v139[0] = vCopy;
  v139[1] = spec;
  v140 = 0;
  v141 = v10;
  v142[0] = 0;
  *(v142 + 3) = 0;
  v143 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v144 = 0;
  v145 = 0;
  v36 = v139[0];
  v132[0] = v36;
  v132[1] = spec;
  v133 = 0;
  v119 = v10 + 1;
  v134 = v10 + 1;
  v135[0] = 0;
  *(v135 + 3) = 0;
  v136 = v143;
  v137 = 0;
  v138 = 0;
  v123 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v37, 0, v139);
  v122 = objc_msgSend_valueAtIndex_accessContext_(datesVectorCopy, v38, 0, v132);
  if (objc_msgSend_isNil(v123, v39, v40, v41))
  {
    v45 = objc_msgSend_functionName(spec, v42, v43, v44);
    v47 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v46, v45, v10);
LABEL_12:
    *error = v47;

    TSUDecimal::operator=();
    goto LABEL_46;
  }

  if (objc_msgSend_isNil(v122, v42, v43, v44))
  {
    v45 = objc_msgSend_functionName(spec, v54, v55, v56);
    v47 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v57, v45, v119);
    goto LABEL_12;
  }

  v58 = objc_msgSend_calcEngine(v36, v54, v55, v56);
  sub_221327DF4(v130, spec, v58);

  v117 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v123, v59, v36, spec, v10, error);
  v116 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v122, v60, v36, spec, v119, error);
  if (*error)
  {
    TSUDecimal::operator=();
    goto LABEL_45;
  }

  v112 = objc_msgSend_clearOffTime_(v118, v61, v116, v62);
  *&v129 = objc_msgSend_decimalRepresentation(v117, v63, v64, v65);
  *(&v129 + 1) = v66;
  TSUDecimal::operator=();
  if (v29 == 1)
  {
    goto LABEL_31;
  }

  v70 = 1;
  while (1)
  {
    v121 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v67, v70, v139);
    v120 = objc_msgSend_valueAtIndex_accessContext_(datesVectorCopy, v71, v70, v132);
    if ((objc_msgSend_isNil(v121, v72, v73, v74) & 1) == 0 && (objc_msgSend_isNil(v120, v75, v76, v77) & 1) == 0)
    {
      break;
    }

    if (objc_msgSend_isNil(v121, v75, v76, v77))
    {
      v103 = objc_msgSend_functionName(spec, v78, v79, v80);
      v105 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v102, v103, v10);
      goto LABEL_36;
    }

    if (objc_msgSend_isNil(v120, v78, v79, v80))
    {
      v103 = objc_msgSend_functionName(spec, v81, v82, v83);
      v105 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v104, v103, v119);
LABEL_36:
      *error = v105;

      TSUDecimal::operator=();
LABEL_43:

      goto LABEL_44;
    }

LABEL_30:

    if (v29 == ++v70)
    {
      goto LABEL_31;
    }
  }

  v115 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v121, v75, v36, spec, 0, error);
  if (*error)
  {
    TSUDecimal::operator=();
    goto LABEL_42;
  }

  if (!unit || (sub_2213188C0(v130, v115), !v131))
  {
    v87 = objc_msgSend_decimalRepresentation(v115, v84, v85, v86);
    v108 = v88;
    v109 = v87;
    v113 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v120, v88, v36, spec, v10, error);
    if (!*error)
    {
      v111 = objc_msgSend_clearOffTime_(v118, v89, v113, v90);
      v110 = objc_msgSend_components_fromDate_toDate_options_(v118, v91, 16, v112, v111, 0);
      v114 = objc_msgSend_day(v110, v92, v93, v94);
      if (v114 < 0)
      {
        v99 = objc_msgSend_functionName(spec, v95, v96, v97);
        *error = objc_msgSend_dateEarlierThanStartingDateErrorForFunctionName_(TSCEError, v100, v99, v101);

        TSUDecimal::operator=();
      }

      else
      {
        TSUDecimal::operator=();
        v147 = v125[1];
        TSUDecimal::operator+=();
        v126 = v147;
        TSUDecimal::operator=();
        v147 = v124;
        TSUDecimal::operator/=();
        v125[0] = v147;
        v127 = sub_2212B2BA4(&v126, v125);
        v128 = v98;
        v147._decimal.w[0] = v109;
        v147._decimal.w[1] = v108;
        TSUDecimal::operator/=();
        v126 = v147;
        TSUDecimal::operator+=();
      }

      if (v114 < 0)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    TSUDecimal::operator=();

LABEL_42:
    goto LABEL_43;
  }

LABEL_31:
  if (*error)
  {
LABEL_34:
    TSUDecimal::operator=();
  }

  else
  {
    if (v131)
    {
      *error = v131;
      goto LABEL_34;
    }

    if (unit)
    {
      *unit = sub_2213189D8(v130, v67, v68, v69);
    }

    v146 = v129;
  }

LABEL_44:

LABEL_45:
LABEL_46:

LABEL_47:
  v107 = *(&v146 + 1);
  v106 = v146;
  result._decimal.w[1] = v107;
  result._decimal.w[0] = v106;
  return result;
}

@end