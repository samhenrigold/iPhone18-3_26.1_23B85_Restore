@interface TSCEFunction_SEQUENCE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SEQUENCE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *arguments;
  v8 = *(arguments + 1);
  if (v8 == *arguments)
  {
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v9 = *v7;
    if (objc_msgSend_isTokenOrEmptyArg(v9, v10, v11, v12))
    {
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v139[0] = 0;
      v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 0, v139);
      v14 = v139[0];
      v133._tskFormat = objc_msgSend_decimalRepresentation(v16, v17, v18, v19);
      *&v133._formatType = v20;
      v15 = TSUDecimal::truncatedUIntegerValue(&v133);
    }

    v7 = *arguments;
    v8 = *(arguments + 1);
  }

  if ((v8 - v7) < 9)
  {
    v127 = 1;
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_11:
    v26 = objc_msgSend_raiseErrorOrConvert_(context, a2, v14, spec);
    goto LABEL_53;
  }

  v21 = v7[1];
  if (objc_msgSend_isTokenOrEmptyArg(v21, v22, v23, v24))
  {
    v127 = 1;
  }

  else
  {
    v138 = v14;
    v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v25, context, spec, 1, &v138);
    v28 = v138;

    v133._tskFormat = objc_msgSend_decimalRepresentation(v27, v29, v30, v31);
    *&v133._formatType = v32;
    v127 = TSUDecimal::truncatedUIntegerValue(&v133);

    v14 = v28;
  }

  if (v14)
  {
    goto LABEL_11;
  }

LABEL_14:
  TSUDecimal::operator=();
  v35 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v33, &v133, v34);
  TSUDecimal::operator=();
  v124 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v36, &v133, v37);
  v41 = 0.0;
  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v42 = *(*arguments + 16);

    if (!objc_msgSend_isTokenOrEmptyArg(v42, v43, v44, v45))
    {
      shouldTreatValueAsDateArgument = TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v42, context, v46);
      if (shouldTreatValueAsDateArgument)
      {
        v137 = 0;
        v104 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v42, v103, context, spec, 2, &v137);
        v14 = v137;
        isDuration = 0;
        v41 = 86400.0;
        v50 = v104;
      }

      else
      {
        v136 = 0;
        v108 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v103, context, spec, 2, &v136);
        v14 = v136;
        isDuration = objc_msgSend_isDuration(v108, v109, v110, v111);

        v50 = 0;
      }

      if (v14)
      {
        v26 = objc_msgSend_raiseErrorOrConvert_(context, v38, v14, v40);
        goto LABEL_52;
      }

      goto LABEL_18;
    }

    TSUDecimal::operator=();
    v35 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v47, &v133, v48);
  }

  shouldTreatValueAsDateArgument = 0;
  isDuration = 0;
  v50 = 0;
  v42 = v35;
LABEL_18:
  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
    isTokenOrEmptyArg = 1;
  }

  else
  {
    v126 = *(*arguments + 24);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v126, v51, v52, v53);
    if (isTokenOrEmptyArg)
    {
      v56 = v124;
    }

    else
    {
      v135 = 0;
      v56 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v126, v54, context, spec, 3, &v135);
      v14 = v135;

      if (v14)
      {
        v26 = objc_msgSend_raiseErrorOrConvert_(context, v105, v14, v107);
        v124 = v56;
        goto LABEL_51;
      }

      if (shouldTreatValueAsDateArgument)
      {
        if (objc_msgSend_isDuration(v56, v105, v106, v107))
        {
          objc_msgSend_rawTimeIntervalValue(v56, v112, v113, v114);
          v41 = v115;
        }

        else
        {
          objc_msgSend_timeIntervalRepresentation(v56, v112, v113, v114);
          v41 = v121 * 86400.0;
        }
      }
    }

    v124 = v56;
  }

  if ((isDuration & isTokenOrEmptyArg) == 1)
  {
    v57 = objc_msgSend_makeDurationWithWeeks_days_hours_minutes_seconds_milliseconds_(TSCENumberValue, v38, v39, v40, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0);

    v124 = v57;
  }

  v126 = objc_opt_new();
  v58 = v42;
  v42 = v58;
  v60 = v58;
  v123 = v50;
  if (!v15)
  {
LABEL_48:
    v96 = [TSCEDenseGrid alloc];
    v99 = objc_msgSend_initWithValueGrid_(v96, v97, v126, v98);
    v26 = objc_msgSend_gridValue_(TSCEGridValue, v100, v99, v101);

    v14 = 0;
    goto LABEL_50;
  }

  v61 = 0;
  v62 = 0.0;
  v63 = v58;
  v122 = v15;
  while (!v127)
  {
    v60 = v63;
LABEL_47:
    ++v61;
    v63 = v60;
    if (v61 == v122)
    {
      goto LABEL_48;
    }
  }

  v64 = 0;
  while (1)
  {
    v134[0] = v64;
    v134[1] = v61;
    objc_msgSend_setValue_atCoord_(v126, v59, v63, v134);
    if (shouldTreatValueAsDateArgument)
    {
      v62 = v41 + v62;
      v70 = objc_msgSend_dateByAddingTimeInterval_(v50, v65, v66, v67, v62);
      if (v42)
      {
        objc_msgSend_formatWithContext_(v42, v68, context, v69);
      }

      else
      {
        memset(&v133, 0, sizeof(v133));
      }

      v60 = objc_msgSend_dateValue_format_(TSCEDateValue, v68, v70, &v133);

      goto LABEL_44;
    }

    if (*(arguments + 1) - *arguments >= 0x19uLL)
    {
      break;
    }

    v14 = 0;
LABEL_38:
    v131 = v14;
    v88 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v63, v65, context, spec, 2, &v131);
    v89 = v131;

    v130 = v89;
    v60 = objc_msgSend_add_functionSpec_outError_(v88, v90, v124, spec, &v130);
    v14 = v130;

    if (v42)
    {
      v50 = v123;
      objc_msgSend_formatWithContext_(v42, v91, context, v92);
    }

    else
    {
      memset(&v129, 0, sizeof(v129));
      v50 = v123;
    }

    TSCEFormat::TSCEFormat(&v133, &v129);
    objc_msgSend_setFormat_(v60, v93, &v133, v94);
    if (v14)
    {
      v26 = objc_msgSend_raiseErrorOrConvert_(context, v59, v14, v95);
      goto LABEL_50;
    }

LABEL_44:
    ++v64;
    v63 = v60;
    if (v127 == v64)
    {
      goto LABEL_47;
    }
  }

  v132 = 0;
  v71 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v65, context, spec, 2, &v132);
  v14 = v132;
  if (!objc_msgSend_hasUnits(v71, v72, v73, v74) || !objc_msgSend_hasUnits(v124, v75, v76, v77) || (v81 = objc_msgSend_dimension(v71, v78, v79, v80), v81 == objc_msgSend_dimension(v124, v82, v83, v84)))
  {

    goto LABEL_38;
  }

  v116 = objc_msgSend_functionName(spec, v85, v86, v87);
  v118 = objc_msgSend_inconsistantParameterFormatError_argIndex2_functionName_(TSCEError, v117, 3, 4, v116);
  v26 = objc_msgSend_raiseErrorOrConvert_(context, v119, v118, v120);

  v60 = v63;
LABEL_50:

LABEL_51:
LABEL_52:

LABEL_53:

  return v26;
}

@end