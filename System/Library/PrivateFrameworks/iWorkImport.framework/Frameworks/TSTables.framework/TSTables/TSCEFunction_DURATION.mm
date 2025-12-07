@interface TSCEFunction_DURATION
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DURATION

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *arguments;
  v9 = *(arguments + 1);
  if (v9 == *arguments)
  {
    v18 = 0;
    v16 = 0;
    v17 = 6;
  }

  else
  {
    v10 = *v8;
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v10, v11, v12, v13);
    if (isTokenOrEmptyArg)
    {
      v16 = 0;
      v17 = 6;
    }

    else
    {
      v121 = 0;
      v48 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v14, context, spec, 0, &v121);
      v44 = v121;
      v110._tskFormat = objc_msgSend_decimalRepresentation(v48, v49, v50, v51);
      *&v110._formatType = v52;
      TSUDecimal::doubleValue(&v110);
      v54 = v53;

      if (v44)
      {
        goto LABEL_58;
      }

      v120 = 0;
      v68 = objc_msgSend_deepType_outError_(v10, v55, context, &v120);
      v69 = v120;
      v72 = v68 != 10;
      if (v68 == 10)
      {
        v17 = 6;
      }

      else
      {
        v17 = 2;
      }

      v16 = v54 != 0.0 && v72;
      if (v69)
      {
        goto LABEL_80;
      }
    }

    v18 = isTokenOrEmptyArg ^ 1;

    v8 = *arguments;
    v9 = *(arguments + 1);
  }

  if ((v9 - v8) < 9)
  {
    goto LABEL_17;
  }

  v10 = v8[1];
  if ((objc_msgSend_isTokenOrEmptyArg(v10, v19, v20, v21) & 1) == 0)
  {
    v119 = 0;
    v61 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v22, context, spec, 1, &v119);
    v44 = v119;
    v110._tskFormat = objc_msgSend_decimalRepresentation(v61, v62, v63, v64);
    *&v110._formatType = v65;
    TSUDecimal::doubleValue(&v110);
    v67 = v66;

    if (v44)
    {
      goto LABEL_58;
    }

    if (v16)
    {
      v18 = 1;
      v16 = 1;
    }

    else
    {
      v80 = objc_msgSend_deepType_(v10, v55, context, v56);
      if (v80 == 10)
      {
        v17 = v17;
      }

      else
      {
        v17 = 3;
      }

      v16 = v67 != 0.0 && v80 != 10;
      v18 = 1;
    }
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    goto LABEL_17;
  }

  v10 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v10, v23, v24, v25) & 1) == 0)
  {
    v118 = 0;
    v73 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v26, context, spec, 2, &v118);
    v44 = v118;
    v110._tskFormat = objc_msgSend_decimalRepresentation(v73, v74, v75, v76);
    *&v110._formatType = v77;
    TSUDecimal::doubleValue(&v110);
    v79 = v78;

    if (v44)
    {
      goto LABEL_58;
    }

    if (v16)
    {
      v18 = 1;
      v16 = 1;
    }

    else
    {
      v117 = 0;
      v88 = objc_msgSend_deepType_outError_(v10, v55, context, &v117);
      v69 = v117;
      if (v88 == 10)
      {
        v17 = v17;
      }

      else
      {
        v17 = 4;
      }

      v16 = v79 != 0.0 && v88 != 10;
      if (v69)
      {
        goto LABEL_80;
      }

      v18 = 1;
    }
  }

  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
LABEL_17:
    if (v18)
    {
LABEL_18:
      v40 = sub_221387CBC(v17);
      TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
      v41 = objc_alloc(MEMORY[0x277D80678]);
      v42 = TSUDurationFormatterMinDurationUnitInUnits();
      v44 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v41, v43, 0, v42, v40, 1);
      v45 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(&v110, v44, 0);
      v47 = objc_msgSend_initWithDecimal_format_baseUnit_(v45, v46, v111, &v110, v17);
      goto LABEL_82;
    }

    v44 = objc_msgSend_functionName(spec, a2, context, spec);
    v58 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v57, v44, 5);
    v47 = objc_msgSend_raiseErrorOrConvert_(context, v59, v58, v60);

    goto LABEL_82;
  }

  v10 = *(*arguments + 24);
  if (objc_msgSend_isTokenOrEmptyArg(v10, v27, v28, v29))
  {
    goto LABEL_12;
  }

  v116 = 0;
  v81 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v30, context, spec, 3, &v116);
  v44 = v116;
  v110._tskFormat = objc_msgSend_decimalRepresentation(v81, v82, v83, v84);
  *&v110._formatType = v85;
  TSUDecimal::doubleValue(&v110);
  v87 = v86;

  if (v44)
  {
LABEL_58:
    v96 = objc_msgSend_raiseErrorOrConvert_(context, v55, v44, v56);
LABEL_81:
    v47 = v96;

    goto LABEL_82;
  }

  if (v16)
  {
    v18 = 1;
    v16 = 1;
  }

  else
  {
    v115 = 0;
    v97 = objc_msgSend_deepType_outError_(v10, v55, context, &v115);
    v69 = v115;
    if (v97 == 10)
    {
      v17 = v17;
    }

    else
    {
      v17 = 5;
    }

    v16 = v87 != 0.0 && v97 != 10;
    if (v69)
    {
      goto LABEL_80;
    }

    v18 = 1;
  }

LABEL_12:

  if (*(arguments + 1) - *arguments < 0x21uLL)
  {
    goto LABEL_17;
  }

  v10 = *(*arguments + 32);
  if (objc_msgSend_isTokenOrEmptyArg(v10, v31, v32, v33))
  {
    goto LABEL_14;
  }

  v114 = 0;
  v89 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v34, context, spec, 4, &v114);
  v44 = v114;
  v110._tskFormat = objc_msgSend_decimalRepresentation(v89, v90, v91, v92);
  *&v110._formatType = v93;
  TSUDecimal::doubleValue(&v110);
  v95 = v94;

  if (v44)
  {
    goto LABEL_58;
  }

  if (v16)
  {
    v18 = 1;
    v16 = 1;
    goto LABEL_14;
  }

  v113 = 0;
  v107 = objc_msgSend_deepType_outError_(v10, v55, context, &v113);
  v69 = v113;
  if (v107 == 10)
  {
    v17 = v17;
  }

  else
  {
    v17 = 6;
  }

  v16 = v95 != 0.0 && v107 != 10;
  if (v69)
  {
LABEL_80:
    v44 = v69;
    v96 = objc_msgSend_raiseErrorOrConvert_(context, v70, v69, v71);
    goto LABEL_81;
  }

  v18 = 1;
LABEL_14:

  if (*(arguments + 1) - *arguments < 0x29uLL)
  {
    goto LABEL_17;
  }

  v35 = *(*arguments + 40);
  if (objc_msgSend_isTokenOrEmptyArg(v35, v36, v37, v38))
  {

    goto LABEL_17;
  }

  v112 = 0;
  v98 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v39, context, spec, 5, &v112);
  v44 = v112;
  v110._tskFormat = objc_msgSend_decimalRepresentation(v98, v99, v100, v101);
  *&v110._formatType = v102;
  TSUDecimal::doubleValue(&v110);
  v104 = v103;

  if (!v44)
  {
    if (v104 == 0.0 || v16)
    {
      v17 = v17;
    }

    else
    {
      v17 = 7;
    }

    goto LABEL_18;
  }

  v47 = objc_msgSend_raiseErrorOrConvert_(context, v105, v44, v106);

LABEL_82:

  return v47;
}

@end