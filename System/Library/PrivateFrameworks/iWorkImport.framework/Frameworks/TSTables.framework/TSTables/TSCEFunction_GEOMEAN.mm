@interface TSCEFunction_GEOMEAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)geometricMeanOfVector:(id)vector context:(id)context functionSpec:(id)spec argumentIndex:(int)index criteria:(id)criteria;
@end

@implementation TSCEFunction_GEOMEAN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v20 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, &v20);
  v11 = v20;
  if (v11)
  {
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v9, v11, v10);
  }

  else
  {
    v12 = objc_msgSend_geometricMeanOfVector_context_functionSpec_argumentIndex_criteria_(TSCEFunction_GEOMEAN, v9, v8, context, spec, 0, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v13, context, v14);
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    TSCEFormat::TSCEFormat(&v19, &v18);
    objc_msgSend_setFormat_(v12, v15, &v19, v16);
  }

  return v12;
}

+ (id)geometricMeanOfVector:(id)vector context:(id)context functionSpec:(id)spec argumentIndex:(int)index criteria:(id)criteria
{
  vectorCopy = vector;
  contextCopy = context;
  criteriaCopy = criteria;
  v16 = objc_msgSend_zero(TSCENumberValue, v13, v14, v15);
  v128 = objc_msgSend_zero(TSCENumberValue, v17, v18, v19);
  v23 = objc_msgSend_count(vectorCopy, v20, v21, v22);
  v27 = contextCopy;
  v133[0] = v27;
  v133[1] = spec;
  v134 = 0;
  indexCopy = index;
  v136[0] = 0;
  *(v136 + 3) = 0;
  v137 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v138 = 0;
  v139 = 0;
  if (!v23)
  {
LABEL_31:
    v36 = objc_msgSend_divideByZeroError(TSCEError, v24, v25, v26);
    v106 = objc_msgSend_raiseErrorOrConvert_(v27, v107, v36, v108);
    v50 = 0;
    goto LABEL_39;
  }

  indexCopy2 = index;
  specCopy = spec;
  v122 = contextCopy;
  v28 = 0;
  v127 = 0;
  while (1)
  {
    v29 = objc_msgSend_valueAtIndexPassesCriteria_index_criteria_(TSCEGridValue, v24, v133, v28, criteriaCopy, v122);
    v36 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32);
    if (v29)
    {
      v37 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v33, v28, v133);

      if (objc_msgSend_isError(v37, v38, v39, v40))
      {
        v103 = objc_msgSend_errorWithContext_(v37, v33, v27, v35);
        v106 = objc_msgSend_raiseErrorOrConvert_(v27, v104, v103, v105);

        v50 = 0;
        v36 = v37;
        goto LABEL_39;
      }

      v36 = v37;
    }

    if ((objc_msgSend_isNil(v36, v33, v34, v35) & 1) != 0 || !v29)
    {
      goto LABEL_24;
    }

    v43 = objc_msgSend_deepType_(v36, v41, v27, v42);
    if (v43 != 9)
    {
      break;
    }

    v50 = objc_msgSend_errorWithContext_(v36, v44, v27, v45);
    if (v50)
    {
      v109 = objc_msgSend_raiseErrorOrConvert_(v27, v65, v50, v66);
LABEL_33:
      v106 = v109;
      goto LABEL_39;
    }

LABEL_24:

    if (v23 == ++v28)
    {
      if (!HIDWORD(v127))
      {
        goto LABEL_31;
      }

      TSUDecimal::operator=();
      v89 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v87, v131, v88);
      v130 = 0;
      v36 = objc_msgSend_power_outError_(v16, v90, v89, &v130);
      v50 = v130;

      if (v50)
      {
        v94 = objc_msgSend_raiseErrorOrConvert_(v27, v91, v50, v93);
      }

      if (objc_msgSend_hasUnits(v128, v91, v92, v93))
      {
        v131[0] = objc_msgSend_decimalRepresentation(v36, v95, v96, v97);
        v131[1] = v98;
        v101 = objc_msgSend_unit(v128, v98, v99, v100);
        v109 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v102, v131, v101);
      }

      else
      {
        v109 = v36;
        v36 = v109;
      }

      goto LABEL_33;
    }
  }

  if (v43 != 5)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "+[TSCEFunction_GEOMEAN geometricMeanOfVector:context:functionSpec:argumentIndex:criteria:]", v45);
    v125 = v16;
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v72, v68, v71, 2780, 0, "Have to set the type of vector appropriately.");

    v16 = v125;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
    goto LABEL_24;
  }

  v132 = 0;
  v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v44, v27, specCopy, indexCopy2, &v132);
  v50 = v132;
  if (v50)
  {
    v126 = v16;
    v106 = objc_msgSend_raiseErrorOrConvert_(v27, v47, v50, v49);
    goto LABEL_38;
  }

  if ((objc_msgSend_isFinite(v46, v47, v48, v49) & 1) == 0)
  {
    v126 = v16;
    v110 = objc_msgSend_functionName(specCopy, v51, v52, v53);
    v113 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v111, v110, v112);
    v116 = objc_msgSend_raiseErrorOrConvert_(v27, v114, v113, v115);
    goto LABEL_37;
  }

  if ((v127 & 1) == 0)
  {
    v76 = v46;

    v83 = v76;
    if (objc_msgSend_hasUnits(v76, v77, v78, v79))
    {
      v84 = objc_msgSend_rawDecimalValue(v76, v80, v81, v82);
      v83 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v85, v84, v86);
    }

    v64 = v83;
    v128 = v76;
    v46 = v64;
    goto LABEL_23;
  }

  if (objc_msgSend_dimensionsMatchModuloCurrency_(v128, v51, v46, v53))
  {
    if (objc_msgSend_hasUnits(v46, v54, v55, v56))
    {
      v60 = objc_msgSend_rawDecimalValue(v46, v57, v58, v59);
      v63 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v61, v60, v62);

      v46 = v63;
    }

    v64 = objc_msgSend_multiply_context_(v16, v57, v46, v27);
LABEL_23:
    ++HIDWORD(v127);

    LOBYTE(v127) = 1;
    v16 = v64;
    goto LABEL_24;
  }

  v126 = v16;
  v110 = objc_msgSend_functionName(specCopy, v54, v55, v56);
  v113 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v117, v110, v118);
  v116 = objc_msgSend_raiseErrorOrConvert_(v27, v119, v113, v120);
LABEL_37:
  v106 = v116;

LABEL_38:
  v16 = v126;

LABEL_39:

  return v106;
}

@end