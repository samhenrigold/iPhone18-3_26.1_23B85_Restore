@interface TSCEFunction_HARMEAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)harmonicMeanOfVector:(id)vector context:(id)context functionSpec:(id)spec argumentIndex:(int)index criteria:(id)criteria;
@end

@implementation TSCEFunction_HARMEAN

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
    v12 = objc_msgSend_harmonicMeanOfVector_context_functionSpec_argumentIndex_criteria_(TSCEFunction_HARMEAN, v9, v8, context, spec, 0, 0);
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

+ (id)harmonicMeanOfVector:(id)vector context:(id)context functionSpec:(id)spec argumentIndex:(int)index criteria:(id)criteria
{
  vectorCopy = vector;
  contextCopy = context;
  criteriaCopy = criteria;
  v128 = objc_msgSend_zero(TSCENumberValue, v12, v13, v14);
  TSUDecimal::operator=();
  v127 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v15, v139, v16);
  v20 = objc_msgSend_count(vectorCopy, v17, v18, v19);
  v24 = contextCopy;
  v139[0] = v24;
  v139[1] = spec;
  v140 = 0;
  indexCopy = index;
  v142[0] = 0;
  *(v142 + 3) = 0;
  v143 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v144 = 0;
  v145 = 0;
  if (!v20)
  {
    v130 = 0;
LABEL_32:
    v34 = objc_msgSend_divideByZeroError(TSCEError, v21, v22, v23);
    v110 = objc_msgSend_raiseErrorOrConvert_(v24, v100, v34, v101);
    v63 = 0;
    goto LABEL_44;
  }

  indexCopy2 = index;
  specCopy = spec;
  v126 = 0;
  v123 = contextCopy;
  v25 = 0;
  v26 = 0;
  v130 = 0;
  do
  {
    v27 = objc_msgSend_valueAtIndexPassesCriteria_index_criteria_(TSCEGridValue, v21, v139, v25, criteriaCopy, v123);
    v34 = objc_msgSend_nilValue(TSCENilValue, v28, v29, v30);
    if (v27)
    {
      v35 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v31, v25, v139);

      if (objc_msgSend_isError(v35, v36, v37, v38))
      {
        v97 = objc_msgSend_errorWithContext_(v35, v31, v24, v33);
        v110 = objc_msgSend_raiseErrorOrConvert_(v24, v98, v97, v99);
        v63 = 0;
        v34 = v35;
LABEL_31:
        v92 = v97;
        goto LABEL_43;
      }

      v34 = v35;
    }

    if ((objc_msgSend_isNil(v34, v31, v32, v33) & 1) == 0 && v27)
    {
      v41 = objc_msgSend_deepType_(v34, v39, v24, v40);
      if (v41 == 9)
      {
        v63 = objc_msgSend_errorWithContext_(v34, v42, v24, v43);
        if (v63)
        {
          v110 = objc_msgSend_raiseErrorOrConvert_(v24, v61, v63, v62);
          goto LABEL_44;
        }
      }

      else
      {
        if (v41 != 5)
        {
          v64 = MEMORY[0x277D81150];
          v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "+[TSCEFunction_HARMEAN harmonicMeanOfVector:context:functionSpec:argumentIndex:criteria:]", v43);
          v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v67);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 2889, 0, "Have to set the type of vector appropriately.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72);
          goto LABEL_25;
        }

        v138 = 0;
        v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v42, v24, specCopy, indexCopy2, &v138);
        v45 = v138;
        v129 = v44;
        if (v45)
        {
          v63 = v45;
          v110 = objc_msgSend_raiseErrorOrConvert_(v24, v46, v45, v48);
LABEL_42:
          v92 = v129;
          goto LABEL_43;
        }

        if ((objc_msgSend_isFinite(v44, v46, v47, v48) & 1) == 0)
        {
          v111 = objc_msgSend_functionName(specCopy, v49, v50, v51);
          v114 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v112, v111, v113);
          v117 = objc_msgSend_raiseErrorOrConvert_(v24, v115, v114, v116);
LABEL_41:
          v110 = v117;

          v63 = 0;
          goto LABEL_42;
        }

        if (v26)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v130, v49, v44, v51) & 1) == 0)
          {
            v111 = objc_msgSend_functionName(specCopy, v52, v53, v54);
            v114 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v118, v111, v119);
            v117 = objc_msgSend_raiseErrorOrConvert_(v24, v120, v114, v121);
            goto LABEL_41;
          }

          if (objc_msgSend_hasUnits(v44, v52, v53, v54))
          {
            v58 = objc_msgSend_rawDecimalValue(v44, v55, v56, v57);
            v44 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v59, v58, v60);
          }

          v135 = 0;
          v129 = v44;
          v84 = objc_msgSend_divide_outError_(v127, v55, v44, &v135);
          v85 = v135;
          v134 = v85;
          v83 = objc_msgSend_add_functionSpec_outError_(v128, v86, v84, specCopy, &v134);
          v63 = v134;

          v73 = v130;
        }

        else
        {
          v73 = v44;

          v80 = v73;
          if (objc_msgSend_hasUnits(v73, v74, v75, v76))
          {
            objc_msgSend_rawDoubleValue(v73, v77, v78, v79);
            TSUDecimal::operator=();
            v80 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v81, v137, v82);
          }

          v136 = 0;
          v129 = v80;
          v83 = objc_msgSend_divide_outError_(v127, v77, v80, &v136);
          v63 = v136;
          v84 = v128;
        }

        if (v63)
        {
          v110 = objc_msgSend_raiseErrorOrConvert_(v24, v87, v63, v88);
          v128 = v83;
          v130 = v73;
          goto LABEL_42;
        }

        ++v126;

        v26 = 1;
        v130 = v73;
        v128 = v83;
      }
    }

LABEL_25:

    ++v25;
  }

  while (v20 != v25);
  v21 = v126;
  if (!v126)
  {
    goto LABEL_32;
  }

  TSUDecimal::operator=();
  v34 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v89, v137, v90);
  v133 = 0;
  v92 = objc_msgSend_divide_outError_(v34, v91, v128, &v133);
  v63 = v133;
  if (v63)
  {
    v96 = objc_msgSend_raiseErrorOrConvert_(v24, v93, v63, v95);
    goto LABEL_36;
  }

  if (objc_msgSend_hasUnits(v130, v93, v94, v95))
  {
    v97 = v92;
    v137[0] = objc_msgSend_decimalRepresentation(v92, v102, v103, v104);
    v137[1] = v105;
    v108 = objc_msgSend_unit(v130, v105, v106, v107);
    v110 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v109, v137, v108);
    goto LABEL_31;
  }

  v96 = v92;
LABEL_36:
  v110 = v96;
LABEL_43:

LABEL_44:

  return v110;
}

@end