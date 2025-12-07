@interface TSCEFunction_DAYNAME
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DAYNAME

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v76 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v76);
  v10 = v76;
  v14 = objc_msgSend_trunc(v9, v11, v12, v13);

  if (v10)
  {

    v21 = objc_msgSend_gregorianCalendar(TSCECalendar, v18, v19, v20);
    v75 = 0;
    v23 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v22, context, spec, 0, &v75);
    v26 = v75;
    if (v26)
    {
      v27 = objc_msgSend_raiseErrorOrConvert_(context, v24, v26, v25);
      goto LABEL_17;
    }

    v39 = objc_msgSend_components_fromDate_(v21, v24, 512, v23);
    v38 = objc_msgSend_weekday(v39, v40, v41, v42) - 1;

    goto LABEL_9;
  }

  isDuration = objc_msgSend_isDuration(v14, v15, v16, v17);
  v70._decimal.w[0] = objc_msgSend_decimalRepresentation(v14, v29, v30, v31);
  v70._decimal.w[1] = v32;
  TSUDecimal::doubleValue(&v70);
  if (v36 < 1.0 || v36 > 7.0)
  {
    if (!isDuration)
    {
      v23 = objc_msgSend_functionName(spec, v33, v34, v35);
      v52 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v66, 1, v23, 1, 1, 1.0, 7.0);
      v62 = objc_msgSend_raiseErrorOrConvert_(context, v67, v52, v68);
      goto LABEL_16;
    }
  }

  else
  {
    v37 = objc_msgSend_integer(v14, v33, v34, v35);
    if ((isDuration & 1) == 0)
    {
      v38 = v37 - 1;
LABEL_9:
      v43 = objc_msgSend_locale(context, v33, v34, v35);
      v23 = objc_msgSend_standaloneWeekdaySymbols(v43, v44, v45, v46);

      if (v38 >= objc_msgSend_count(v23, v47, v48, v49) || (objc_msgSend_objectAtIndex_(v23, v50, v38, v51), (v52 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v53 = MEMORY[0x277D81150];
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "+[TSCEFunction_DAYNAME evaluateForArgsWithContext:functionSpec:arguments:]", v51);
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v56);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 332, 0, "weekday symbols: %@", v23);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
        v52 = 0;
      }

      v70._decimal.w[0] = 0;
      LODWORD(v70._decimal.w[1]) = 0;
      BYTE4(v70._decimal.w[1]) = 0;
      v71 = 1057;
      v72 = 1;
      v73 = -50266102;
      v74 = 253;
      v62 = objc_msgSend_stringValue_format_(TSCEStringValue, v50, v52, &v70);
      goto LABEL_16;
    }
  }

  v23 = objc_msgSend_functionName(spec, v33, v34, v35);
  v52 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v63, v23, 1);
  v62 = objc_msgSend_raiseErrorOrConvert_(context, v64, v52, v65);
LABEL_16:
  v27 = v62;

  v26 = 0;
LABEL_17:

  return v27;
}

@end