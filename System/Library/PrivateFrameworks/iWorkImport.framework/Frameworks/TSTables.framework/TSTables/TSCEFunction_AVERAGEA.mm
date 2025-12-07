@interface TSCEFunction_AVERAGEA
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AVERAGEA

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v113[0] = 0;
  v99 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, v113);
  v8 = v113[0];
  if (v8)
  {
    v12 = v8;
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v9, v8, v11);
    goto LABEL_49;
  }

  v97 = objc_msgSend_zero(TSCENumberValue, v9, v10, v11);
  v17 = objc_msgSend_count(v99, v14, v15, v16);
  contextCopy = context;
  v107[0] = contextCopy;
  v107[1] = spec;
  v108 = 0;
  v109[0] = 0;
  *(v109 + 7) = 0;
  v110 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v111 = 0;
  v112 = 0;
  if (v17)
  {
    v22 = 0;
    v23 = 0;
    v98 = 0;
    v24 = 0;
    v25 = 0.0;
    while (1)
    {
      v26 = objc_msgSend_valueAtIndex_accessContext_(v99, v18, v22, v107, v97);
      if (objc_msgSend_isError(v26, v27, v28, v29))
      {
        v46 = objc_msgSend_errorWithContext_(v26, v30, contextCopy, v32);
        v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v76, v46, v77);
        goto LABEL_44;
      }

      if ((objc_msgSend_isNil(v26, v30, v31, v32) & 1) == 0)
      {
        v38 = objc_msgSend_deepType_(v26, v33, contextCopy, v34);
        if (v38 > 4)
        {
          if (v38 != 10 && v38 != 5)
          {
LABEL_24:
            v58 = MEMORY[0x277D81150];
            v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "+[TSCEFunction_AVERAGEA evaluateForArgsWithContext:functionSpec:arguments:]", v37);
            v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v61);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v63, v59, v62, 504, 0, "Have to set the type of vector appropriately.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66);
            goto LABEL_27;
          }

LABEL_16:
          if (v98)
          {
LABEL_42:
            v46 = objc_msgSend_functionName(spec, v35, v36, v37);
            v86 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v92, v46, v93);
            v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v94, v86, v95);
LABEL_43:

LABEL_44:
            v12 = 0;
            goto LABEL_45;
          }

          ++v23;
          if (v24)
          {
            v105 = 0;
            v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v35, contextCopy, spec, 0, &v105);
            v47 = v105;
            if (v47)
            {
              v12 = v47;
              v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v48, v47, v49);
              v98 = 0;
LABEL_45:

              goto LABEL_46;
            }

            if ((objc_msgSend_dimensionsMatchModuloCurrency_(v97, v48, v46, v49) & 1) == 0)
            {
              v86 = objc_msgSend_functionName(spec, v50, v51, v52);
              v89 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v87, v86, v88);
              v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v90, v89, v91);

              v98 = 0;
              goto LABEL_43;
            }

            v104 = 0;
            v53 = objc_msgSend_add_functionSpec_outError_(v97, v50, v46, spec, &v104);
            v12 = v104;

            if (v12)
            {
              v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v54, v12, v55, v53);
              v97 = v53;
              v98 = 0;
              goto LABEL_45;
            }
          }

          else
          {
            v106 = 0;
            v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v35, contextCopy, spec, 0, &v106);
            v12 = v106;

            if (v12)
            {
              v98 = 0;
              v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v56, v12, v57);
              goto LABEL_47;
            }
          }

          v97 = v53;
          v98 = 0;
          v24 = 1;
          goto LABEL_27;
        }

        if (v38 == 2)
        {
          goto LABEL_16;
        }

        if (v38 != 3)
        {
          goto LABEL_24;
        }

        if (v24)
        {
          goto LABEL_42;
        }

        ++v23;
        if (v98)
        {
          v102 = 0;
          v39 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v35, contextCopy, spec, 0, &v102);
          v12 = v102;
          objc_msgSend_timeIntervalSinceDate_(v39, v40, v98, v41);
          v43 = v42;

          if (v12)
          {
            v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v44, v12, v45);
            goto LABEL_46;
          }

          v24 = 0;
          v25 = v25 + v43;
        }

        else
        {
          v103 = 0;
          v67 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v35, contextCopy, spec, 0, &v103);
          v68 = v103;
          if (v68)
          {
            v12 = v68;
            v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v69, v68, v70);
            v98 = v67;
            goto LABEL_46;
          }

          v24 = 0;
          v98 = v67;
        }
      }

LABEL_27:

      if (v17 == ++v22)
      {
        if (!v23)
        {
          v73 = v98;
          goto LABEL_32;
        }

        if (v98)
        {
          v26 = objc_msgSend_dateByAddingTimeInterval_(v98, v18, v19, v20, v25 / v23);
          v13 = objc_msgSend_dateValue_(TSCEDateValue, v71, v26, v72);
          v12 = 0;
          goto LABEL_46;
        }

        TSUDecimal::operator=();
        v80 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v78, v101, v79);
        v100 = 0;
        v13 = objc_msgSend_divide_outError_(v97, v81, v80, &v100);
        v12 = v100;

        v84 = v97;
        if (v12)
        {
          v85 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v82, v12, v83);
        }

        goto LABEL_48;
      }
    }
  }

  v73 = 0;
LABEL_32:
  v26 = objc_msgSend_divideByZeroError(TSCEError, v18, v19, v20, v97);
  v13 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v74, v26, v75);
  v12 = 0;
  v98 = v73;
LABEL_46:
  v53 = v97;
LABEL_47:

  v84 = v53;
LABEL_48:

LABEL_49:

  return v13;
}

@end