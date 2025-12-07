@interface TSCEFunction_FORECAST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FORECAST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v9 = *(*arguments + 16);
  v138 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 2, 0, &v138);
  v12 = v138;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_10;
  }

  v17 = *(*arguments + 8);
  v137 = 0;
  v123 = v17;
  v124 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v17, v18, context, spec, 1, 1, &v137);
  v19 = v137;
  if (!v19)
  {
    v120 = **arguments;
    v26 = objc_msgSend_nilValue(TSCENilValue, v23, v24, v25);
    v30 = objc_msgSend_nilValue(TSCENilValue, v27, v28, v29);
    v135 = v30;
    v136 = v26;
    v15 = objc_msgSend_computeSlope_functionSpec_xs_xArgumentIndex_ys_yArgumentIndex_xAverageResult_yAverageResult_slopeResult_xExamplePtr_yExamplePtr_(self, v31, context, spec, v11, 2, v124, 1, v141, &v140, &v139, &v136, &v135);
    v32 = v136;

    v33 = v135;
    v121 = v33;
    v122 = v32;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v34, v15, v36);
LABEL_7:
      v22 = v124;
LABEL_8:

      goto LABEL_9;
    }

    if (objc_msgSend_isNil(v32, v34, v35, v36))
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "+[TSCEFunction_FORECAST evaluateForArgsWithContext:functionSpec:arguments:]", v39);
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 2215, 0, "Should have at least one x if we're going to successfullly compute FORECAST");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
    }

    TSUDecimal::operator=();
    if (objc_msgSend_deepType_(v32, v49, context, v50) == 3)
    {
      if (objc_msgSend_deepType_(v120, v51, context, v52) != 3)
      {
        v64 = objc_msgSend_functionName(spec, v53, v54, v55);
        v67 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v65, v64, v66);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v68, v67, v69);

        v15 = 0;
        goto LABEL_7;
      }

      v133 = 0;
      v119 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v120, v53, context, spec, 0, &v133);
      v58 = v133;
      v22 = v124;
      if (v58)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v56, v58, v57);

LABEL_36:
        v15 = v58;
        goto LABEL_8;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v56, v119, v57);
      TSUDecimal::operator=();
LABEL_30:

      *&v126._tskFormat = v134;
      TSUDecimal::operator-=();
      v127[1] = v126._tskFormat;
      v127[2] = *&v126._formatType;
      *&v126._tskFormat = v139;
      TSUDecimal::operator*=();
      tskFormat = v126._tskFormat;
      v129 = *&v126._formatType;
      *&v126._tskFormat = v140;
      TSUDecimal::operator+=();
      v130._decimal.w[0] = v126._tskFormat;
      v130._decimal.w[1] = *&v126._formatType;
      if (objc_msgSend_isNil(v33, v84, v85, v86))
      {
        v89 = MEMORY[0x277D81150];
        v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "+[TSCEFunction_FORECAST evaluateForArgsWithContext:functionSpec:arguments:]", v88);
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v92);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v94, v90, v93, 2246, 0, "Should have at least one x if we're going to successfullly compute FORECAST");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97);
      }

      if (objc_msgSend_deepType_(v121, v87, context, v88) == 3)
      {
        TSUDecimal::doubleValue(&v130);
        v16 = objc_msgSend_dateValueWithDays_(TSCEDateValue, v99, v100, v101);
      }

      else
      {
        v127[0] = 0;
        v104 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v121, v98, context, spec, 1, v127);
        v58 = v127[0];
        if (v58)
        {
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v105, v58, v107);

          goto LABEL_36;
        }

        if (objc_msgSend_hasUnits(v104, v105, v106, v107) && !objc_msgSend_dimension(v104, v108, v109, v110))
        {
          TSUDecimal::operator=();
          *&v126._tskFormat = v130;
          TSUDecimal::operator*=();
          tskFormat = v126._tskFormat;
          v129 = *&v126._formatType;
          v117 = objc_msgSend_unit(v104, v114, v115, v116);
          v111 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v118, &tskFormat, v117);
        }

        else
        {
          v111 = objc_msgSend_variantWithDecimal_(v104, v108, &v130, v110);
        }

        v16 = v111;
      }

      if (v22)
      {
        objc_msgSend_formatWithContext_(v22, v102, context, v103);
      }

      else
      {
        memset(&v125, 0, sizeof(v125));
      }

      TSCEFormat::TSCEFormat(&v126, &v125);
      objc_msgSend_setFormat_(v16, v112, &v126, v113);
      v15 = 0;
      goto LABEL_8;
    }

    v132 = 0;
    v119 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v120, v51, context, spec, 0, &v132);
    v59 = v132;
    v131 = v59;
    v22 = v124;
    v61 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v122, v60, context, spec, 2, &v131);
    v15 = v131;

    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v62, v15, v63);
    }

    else
    {
      if (objc_msgSend_dimensionsMatchModuloCurrency_(v61, v62, v119, v63))
      {
        if (objc_msgSend_isDuration(v119, v70, v71, v72))
        {
          v76 = objc_msgSend_rawDecimalValue(v119, v73, v74, v75);
          TSUDecimal::operator=();
          *&v126._tskFormat = *v76;
          TSUDecimal::operator*=();
          v134 = *&v126._tskFormat;
        }

        else
        {
          *&v134 = objc_msgSend_decimalRepresentation(v119, v73, v74, v75);
          *(&v134 + 1) = v83;
        }

        goto LABEL_30;
      }

      v77 = objc_msgSend_functionName(spec, v70, v71, v72);
      v80 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v78, v77, v79);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v81, v80, v82);
    }

    goto LABEL_8;
  }

  v15 = v19;
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v21);
  v22 = v124;
LABEL_9:

LABEL_10:

  return v16;
}

@end