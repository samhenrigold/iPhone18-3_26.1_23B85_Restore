@interface TSCEFunction_MODE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateVector:(id)vector context:(id)context functionSpec:(id)spec resultFormat:(const TSCEFormat *)format;
+ (id)modeArrayForArray:(id)array context:(id)context functionSpec:(id)spec originalArray:(id *)originalArray outError:(id *)error;
@end

@implementation TSCEFunction_MODE

+ (id)modeArrayForArray:(id)array context:(id)context functionSpec:(id)spec originalArray:(id *)originalArray outError:(id *)error
{
  arrayCopy = array;
  contextCopy = context;
  *originalArray = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v13, arrayCopy, v14);
  objc_msgSend_sortUsingSelector_(arrayCopy, v15, sel_compare_, v16);
  v23 = objc_msgSend_count(arrayCopy, v17, v18, v19);
  if (!v23)
  {
    v31 = objc_msgSend_functionName(spec, v20, v21, v22);
    objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v34, v31, 8);
    *error = v35 = 0;
    goto LABEL_25;
  }

  v24 = objc_msgSend_objectAtIndex_(arrayCopy, v20, 0, v22);
  v30 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27);
  if (v23 == 1)
  {
    v31 = 0;
LABEL_4:
    objc_msgSend_addObject_(v30, v28, v24, v29);
    LODWORD(v33) = v23;
    goto LABEL_20;
  }

  v48 = contextCopy;
  v36 = 0;
  v37 = 1;
  v38 = 1;
  v33 = 1;
  do
  {
    v31 = objc_msgSend_objectAtIndex_(arrayCopy, v28, v37, v29);

    if (objc_msgSend_isEqual_(v31, v39, v24, v40))
    {
      v33 = (v33 + 1);
    }

    else
    {
      if (v33 <= v38)
      {
        if (v38 == v33)
        {
          objc_msgSend_addObject_(v30, v28, v24, v29);
        }

        v33 = v38;
      }

      else
      {
        objc_msgSend_removeAllObjects(v30, v28, v32, v29);
        objc_msgSend_addObject_(v30, v41, v24, v42);
      }

      v38 = v33;
      v43 = v31;

      v33 = 1;
      v24 = v43;
    }

    ++v37;
    v36 = v31;
  }

  while (v23 != v37);
  if (v33 <= v38)
  {
    LODWORD(v23) = v33;
    v46 = v38 == v33;
    LODWORD(v33) = v38;
    contextCopy = v48;
    if (v46)
    {
      goto LABEL_4;
    }
  }

  else
  {
    contextCopy = v48;
    objc_msgSend_removeAllObjects(v30, v28, v32, v29);
    objc_msgSend_addObject_(v30, v44, v24, v45);
  }

LABEL_20:
  if (v33 == 1 || !objc_msgSend_count(v30, v28, v32, v29))
  {
    objc_msgSend_noModeError(TSCEError, v28, v32, v29);
    *error = v35 = 0;
  }

  else
  {
    v35 = v30;
  }

LABEL_25:

  return v35;
}

+ (id)evaluateVector:(id)vector context:(id)context functionSpec:(id)spec resultFormat:(const TSCEFormat *)format
{
  vectorCopy = vector;
  contextCopy = context;
  v125 = vectorCopy;
  v126 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, contextCopy);
  v16 = objc_msgSend_zero(TSCENumberValue, v13, v14, v15);
  v20 = objc_msgSend_count(vectorCopy, v17, v18, v19);
  v128 = contextCopy;
  v134[0] = v128;
  v134[1] = spec;
  v135 = 0;
  v136[0] = 0;
  *(v136 + 7) = 0;
  v137 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v138 = 0;
  v139 = 0;
  if (v20)
  {
    v127 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v16;
    while (1)
    {
      v25 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v21, v22, v134);
      if (objc_msgSend_isError(v25, v26, v27, v28))
      {
        v38 = objc_msgSend_errorWithContext_(v25, v29, v128, v31);
        v74 = objc_msgSend_raiseErrorOrConvert_(v128, v75, v38, v76);
        v73 = 0;
        goto LABEL_48;
      }

      if (objc_msgSend_isNil(v25, v29, v30, v31))
      {
        goto LABEL_16;
      }

      v34 = objc_msgSend_deepType_(v25, v32, v128, v33);
      if (v34 == 3)
      {
        break;
      }

      if (v34 != 5)
      {
        v60 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "+[TSCEFunction_MODE evaluateVector:context:functionSpec:resultFormat:]", v37);
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v63);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 4164, 0, "Have to set the type of vector appropriately.");

        vectorCopy = v125;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
LABEL_16:
        v56 = v23;
LABEL_17:
        v16 = v24;
        goto LABEL_18;
      }

      if (v23)
      {
        goto LABEL_46;
      }

      v133 = 0;
      v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v35, v128, spec, 0, &v133);
      v41 = v133;
      if (v41)
      {
        v74 = objc_msgSend_raiseErrorOrConvert_(v128, v39, v41, v40);
        v73 = v41;
        v23 = 0;
        goto LABEL_48;
      }

      if ((v127 & 1) != 0 && (objc_msgSend_dimensionsMatchModuloCurrency_(v24, v39, v38, v40) & 1) == 0)
      {
        v123 = objc_msgSend_functionName(spec, v42, v43, v44);
        v118 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v116, v123, v117);
        v73 = 0;
        v74 = objc_msgSend_raiseErrorOrConvert_(v128, v119, v118, v120);

        v23 = 0;
        goto LABEL_48;
      }

      v45 = v38;

      v46 = MEMORY[0x277CCABB0];
      objc_msgSend_rawDoubleValue(v45, v47, v48, v49);
      v53 = objc_msgSend_numberWithDouble_(v46, v50, v51, v52);
      objc_msgSend_addObject_(v126, v54, v53, v55);

      v16 = v45;
      v56 = 0;
      v127 = 1;
LABEL_18:

      ++v22;
      v24 = v16;
      v23 = v56;
      if (v20 == v22)
      {
        goto LABEL_21;
      }
    }

    v36 = v128;
    if (v127)
    {
LABEL_46:
      v38 = objc_msgSend_functionName(spec, v35, v36, v37);
      v122 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v111, v38, v112);
      v74 = objc_msgSend_raiseErrorOrConvert_(v128, v113, v122, v114);
      v73 = 0;
      goto LABEL_47;
    }

    v132 = 0;
    v56 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v25, v35, v128, spec, 0, &v132);
    v57 = v132;

    if (v57)
    {
      v74 = objc_msgSend_raiseErrorOrConvert_(v128, v58, v57, v59);
      v73 = v57;
      goto LABEL_49;
    }

    objc_msgSend_addObject_(v126, v58, v56, v59);
    v127 = 0;
    goto LABEL_17;
  }

  v56 = 0;
  v127 = 0;
LABEL_21:
  v121 = v16;
  v130 = 0;
  v131 = 0;
  v38 = objc_msgSend_modeArrayForArray_context_functionSpec_originalArray_outError_(TSCEFunction_MODE, v21, v126, v128, spec, &v131, &v130);
  v25 = v131;
  v72 = v130;
  if (!v72)
  {
    v77 = objc_msgSend_count(v38, v69, v70, v71);
    v124 = objc_msgSend_count(v25, v78, v79, v80);
    if (v77 == 1)
    {
      v122 = objc_msgSend_objectAtIndex_(v38, v81, 0, v83);
    }

    else if (v124)
    {
      v84 = 0;
      v122 = 0;
      do
      {
        if (v77)
        {
          v85 = 0;
          while (1)
          {
            v86 = objc_msgSend_objectAtIndex_(v25, v81, v84, v83);
            v89 = objc_msgSend_objectAtIndex_(v38, v87, v85, v88);
            isEqual = objc_msgSend_isEqual_(v86, v90, v89, v91);

            if (isEqual)
            {
              break;
            }

            if (++v85 >= v77)
            {
              goto LABEL_35;
            }
          }

          v94 = objc_msgSend_objectAtIndex_(v38, v81, v85, v83);

          v122 = v94;
LABEL_35:
          v93 = isEqual ^ 1;
          vectorCopy = v125;
        }

        else
        {
          v93 = 1;
        }

        if (!v93)
        {
          break;
        }

        ++v84;
      }

      while (v84 < v124);
    }

    else
    {
      v122 = 0;
    }

    v74 = objc_msgSend_nilValue(TSCENilValue, v81, v82, v83);
    if (v56)
    {
      v98 = objc_msgSend_dateValue_(TSCEDateValue, v95, v122, v97);
      v73 = 0;

      v24 = v121;
      v23 = v56;
      v74 = v98;
    }

    else
    {
      if (v127)
      {
        v73 = 0;
        objc_msgSend_doubleValue(v122, v95, v96, v97);
        TSUDecimal::operator=();
        v101 = objc_msgSend_numberWithDecimal_(v121, v99, v129, v100);

        v24 = v121;
        v23 = 0;
        v74 = v101;
LABEL_47:

        goto LABEL_48;
      }

      v102 = MEMORY[0x277D81150];
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "+[TSCEFunction_MODE evaluateVector:context:functionSpec:resultFormat:]", v97);
      v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v105);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v107, v103, v106, 4200, 0, "In function MODE, should not reach here.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109, v110);
      v73 = 0;
      v24 = v121;
      v23 = 0;
    }

    vectorCopy = v125;
    goto LABEL_47;
  }

  v73 = v72;
  v74 = objc_msgSend_raiseErrorOrConvert_(v128, v69, v72, v71);
  v24 = v16;
  v23 = v56;
LABEL_48:

  v56 = v23;
LABEL_49:

  return v74;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v10 = **arguments;
  v20 = 0;
  v12 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v10, v11, context, spec, 0, 1, &v20);
  v15 = v20;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v15, v14);
  }

  else
  {
    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v13, context, v14);
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    v16 = objc_msgSend_evaluateVector_context_functionSpec_resultFormat_(self, v13, v12, context, spec, v19);
  }

  v17 = v16;

  return v17;
}

@end