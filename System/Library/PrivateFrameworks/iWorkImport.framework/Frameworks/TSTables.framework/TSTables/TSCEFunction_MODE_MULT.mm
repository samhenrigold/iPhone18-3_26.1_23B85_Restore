@interface TSCEFunction_MODE_MULT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MODE_MULT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v149[0] = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, v149);
  v9 = v149[0];
  v131 = v8;
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v12);
    goto LABEL_52;
  }

  v130 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12);
  v18 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17);
  v22 = objc_msgSend_count(v8, v19, v20, v21);
  contextCopy = context;
  v143[0] = contextCopy;
  v143[1] = spec;
  v144 = 0;
  v145[0] = 0;
  *(v145 + 7) = 0;
  v146 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v147 = 0;
  v148 = 0;
  if (!v22)
  {
    v60 = 0;
LABEL_23:
    v139 = 0;
    v140 = 0;
    v43 = objc_msgSend_modeArrayForArray_context_functionSpec_originalArray_outError_(TSCEFunction_MODE, v23, v130, contextCopy, spec, &v140, &v139);
    v29 = v140;
    v73 = v139;
    v128 = v73;
    if (v73)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v74, v73, v76);
    }

    else
    {
      v129 = objc_msgSend_count(v29, v74, v75, v76);
      memset(v138, 0, sizeof(v138));
      if (objc_msgSend_count(v43, v79, v80, v81) == 1)
      {
        v88 = objc_msgSend_objectAtIndex_(v43, v82, 0, v84);
        if (v60)
        {
          v137 = objc_msgSend_dateValue_(TSCEDateValue, v85, v88, v87);
          sub_2210ED5B8(v138, &v137);
          v89 = v137;
        }

        else
        {
          objc_msgSend_doubleValue(v88, v85, v86, v87);
          TSUDecimal::operator=();
          v136 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v108, v133, v109);
          sub_2210ED5B8(v138, &v136);
          v89 = v136;
        }
      }

      else if (v129)
      {
        for (i = 0; i != v129; ++i)
        {
          for (j = 0; j < objc_msgSend_count(v43, v82, v83, v84); ++j)
          {
            v92 = objc_msgSend_objectAtIndex_(v29, v82, i, v84);
            v95 = objc_msgSend_objectAtIndex_(v43, v93, j, v94);
            isEqual = objc_msgSend_isEqual_(v92, v96, v95, v97);

            if (isEqual)
            {
              v102 = objc_msgSend_objectAtIndex_(v43, v82, j, v84);
              if (v60)
              {
                v135 = objc_msgSend_dateValue_(TSCEDateValue, v99, v102, v101);
                sub_2210ED5B8(v138, &v135);
                v103 = v135;
              }

              else
              {
                objc_msgSend_doubleValue(v102, v99, v100, v101);
                TSUDecimal::operator=();
                v134 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v104, v133, v105);
                sub_2210ED5B8(v138, &v134);
                v103 = v134;
              }

              objc_msgSend_removeObjectAtIndex_(v43, v106, j, v107);
              break;
            }
          }
        }
      }

      v110 = [TSCEDenseGrid alloc];
      v115 = objc_msgSend_initWithValues_(v110, v111, v138, v112);
      if (v131)
      {
        objc_msgSend_formatWithContext_(v131, v113, contextCopy, v114);
      }

      else
      {
        memset(v133, 0, sizeof(v133));
      }

      v14 = objc_msgSend_gridValue_format_(TSCEGridValue, v113, v115, v133);

      *&v133[0] = v138;
      sub_22107C2C0(v133);
    }

    v27 = v18;
    v26 = v60;
    goto LABEL_50;
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v18;
  v28 = v131;
  while (1)
  {
    v29 = objc_msgSend_valueAtIndex_accessContext_(v28, v23, v24, v143);
    if (objc_msgSend_isError(v29, v30, v31, v32))
    {
      v43 = objc_msgSend_errorWithContext_(v29, v33, contextCopy, v34);
      v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v77, v43, v78);
      goto LABEL_49;
    }

    v35 = objc_msgSend_deepType_(v29, v33, contextCopy, v34);
    if (objc_msgSend_isNil(v29, v36, v37, v38))
    {
      goto LABEL_18;
    }

    if (v35 == 3)
    {
      v42 = contextCopy;
      if ((v25 & 1) == 0)
      {
        v141 = 0;
        v60 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v29, v39, contextCopy, spec, 0, &v141);
        v61 = v141;

        if (v61)
        {
          v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v62, v61, v63);
          v128 = v61;
          goto LABEL_51;
        }

        objc_msgSend_addObject_(v130, v62, v60, v63);
        v25 = 0;
        goto LABEL_19;
      }

LABEL_48:
      v43 = objc_msgSend_functionName(spec, v39, v40, v41);
      v118 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v116, v43, v117);
      v14 = objc_msgSend_raiseErrorOrConvert_(v42, v119, v118, v120);

LABEL_49:
      v128 = 0;
      goto LABEL_50;
    }

    if (v35 != 5)
    {
      v64 = MEMORY[0x277D81150];
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "+[TSCEFunction_MODE_MULT evaluateForArgsWithContext:functionSpec:arguments:]", v41);
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v67);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 4277, 0, "Have to set the type of vector appropriately.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72);
LABEL_18:
      v60 = v26;
LABEL_19:
      v18 = v27;
      goto LABEL_20;
    }

    v42 = contextCopy;
    if (v26)
    {
      goto LABEL_48;
    }

    v142 = 0;
    v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v39, contextCopy, spec, 0, &v142);
    v46 = v142;
    if (v46)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v44, v46, v45);
      v128 = v46;
      goto LABEL_58;
    }

    if ((v25 & 1) != 0 && (objc_msgSend_dimensionsMatchModuloCurrency_(v27, v44, v43, v45) & 1) == 0)
    {
      break;
    }

    v18 = v43;

    v50 = MEMORY[0x277CCABB0];
    objc_msgSend_rawDoubleValue(v18, v51, v52, v53);
    v57 = objc_msgSend_numberWithDouble_(v50, v54, v55, v56);
    objc_msgSend_addObject_(v130, v58, v57, v59);

    v60 = 0;
    v25 = 1;
LABEL_20:

    ++v24;
    v27 = v18;
    v26 = v60;
    v28 = v131;
    if (v22 == v24)
    {
      goto LABEL_23;
    }
  }

  v122 = objc_msgSend_functionName(spec, v47, v48, v49);
  v125 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v123, v122, v124);
  v128 = 0;
  v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v126, v125, v127);

LABEL_58:
  v26 = 0;
LABEL_50:

  v60 = v26;
LABEL_51:

  v8 = v131;
  v13 = v128;
LABEL_52:

  return v14;
}

@end