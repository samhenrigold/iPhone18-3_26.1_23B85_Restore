@interface TSCEFunction_TIME
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TIME

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v99 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v99);
  v11 = v99;
  v15 = objc_msgSend_floor(v10, v12, v13, v14);

  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v18);
    goto LABEL_23;
  }

  v96._tskFormat = objc_msgSend_decimalRepresentation(v15, v16, v17, v18);
  *&v96._formatType = v20;
  TSUDecimal::doubleValue(&v96);
  if (v24 < -2147483650.0 || v24 > 2147483650.0)
  {
    v25 = objc_msgSend_functionName(spec, v21, v22, v23);
    v31 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v35, 1, v25, 1, 1, -2147483650.0, 2147483650.0);
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v36, v31, v37);
    v11 = 0;
    goto LABEL_22;
  }

  v25 = *(*arguments + 8);
  v98 = 0;
  v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v26, context, spec, 1, &v98);
  v11 = v98;
  v31 = objc_msgSend_floor(v27, v28, v29, v30);

  if (!v11)
  {
    v96._tskFormat = objc_msgSend_decimalRepresentation(v31, v32, v33, v34);
    *&v96._formatType = v38;
    TSUDecimal::doubleValue(&v96);
    if (v42 < -2147483650.0 || v42 > 2147483650.0)
    {
      v43 = objc_msgSend_functionName(spec, v39, v40, v41);
      v49 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v53, 2, v43, 1, 1, -2147483650.0, 2147483650.0);
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v54, v49, v55);
      v11 = 0;
      goto LABEL_21;
    }

    v43 = *(*arguments + 16);
    v97 = 0;
    v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v43, v44, context, spec, 2, &v97);
    v11 = v97;
    v49 = objc_msgSend_floor(v45, v46, v47, v48);

    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v50, v11, v52);
LABEL_21:

      goto LABEL_22;
    }

    v96._tskFormat = objc_msgSend_decimalRepresentation(v49, v50, v51, v52);
    *&v96._formatType = v56;
    TSUDecimal::doubleValue(&v96);
    if (v60 < -2147483650.0 || v60 > 2147483650.0)
    {
      v75 = objc_msgSend_functionName(spec, v57, v58, v59);
      v76 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v80, 3, v75, 1, 1, -2147483650.0, 2147483650.0);
      v79 = objc_msgSend_raiseErrorOrConvert_(context, v81, v76, v82);
    }

    else
    {
      v93 = objc_msgSend_integer(v15, v57, v58, v59);
      v64 = objc_msgSend_integer(v31, v61, v62, v63);
      v68 = objc_msgSend_integer(v49, v65, v66, v67);
      v95 = objc_msgSend_referenceDate1904(TSCECalendar, v69, v70, v71);
      if ((v68 % 60) + ((v68 / 60 + v64) % 60) * 60.0 + (((v68 / 60 + v64) / 60 + v93) % 24) * 3600.0 >= 0.0)
      {
        v76 = objc_msgSend_dateByAddingTimeInterval_(v95, v72, v73, v74);
        v83 = objc_alloc(MEMORY[0x277D80658]);
        v94 = objc_msgSend_locale(context, v84, v85, v86);
        v87 = TSUDefaultTimeOnlyShortFormat();
        v90 = objc_msgSend_initWithFormatString_(v83, v88, v87, v89);

        TSCEFormat::TSCEFormat(&v96, v90, 0);
        v19 = objc_msgSend_dateValue_format_(TSCEDateValue, v91, v76, &v96);

        v75 = v95;
        goto LABEL_20;
      }

      v75 = v95;
      v76 = objc_msgSend_invalidTimeError(TSCEError, v72, v73, v74);
      v79 = objc_msgSend_raiseErrorOrConvert_(context, v77, v76, v78);
    }

    v19 = v79;
LABEL_20:

    goto LABEL_21;
  }

  v19 = objc_msgSend_raiseErrorOrConvert_(context, v32, v11, v34);
LABEL_22:

LABEL_23:

  return v19;
}

@end