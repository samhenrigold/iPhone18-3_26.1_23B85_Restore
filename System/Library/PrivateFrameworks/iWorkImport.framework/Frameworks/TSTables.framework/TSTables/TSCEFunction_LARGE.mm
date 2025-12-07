@interface TSCEFunction_LARGE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments isLarge:(BOOL)large ignoreError:(BOOL)error ignoreDuplicate:(BOOL)duplicate;
@end

@implementation TSCEFunction_LARGE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments isLarge:(BOOL)large ignoreError:(BOOL)error ignoreDuplicate:(BOOL)duplicate
{
  duplicateCopy = duplicate;
  errorCopy = error;
  largeCopy = large;
  v87 = *MEMORY[0x277D85DE8];
  v14 = *(*arguments + 8);
  v78 = 0;
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v14, v15, context, spec, 1, &v78);
  v17 = v78;
  objc_msgSend_doubleRepresentation(v16, v18, v19, v20);
  v22 = v21;

  if (v17)
  {
    v26 = objc_msgSend_raiseErrorOrConvert_(context, v23, v17, v25);
    goto LABEL_15;
  }

  if (v22 >= 1.0 || (v22 = 1.0, errorCopy))
  {
    v32 = **arguments;
    v77 = 0;
    v27 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v32, v23, context, spec, 0, 1, &v77);
    v33 = v77;
    if (v33)
    {
      v17 = v33;
      v36 = objc_msgSend_raiseErrorOrConvert_(context, v34, v33, v35);
      goto LABEL_13;
    }

    context = objc_autoreleasePoolPush();
    v75 = objc_msgSend_deepResolveInPlace_(v27, v37, context, v38);
    v42 = objc_msgSend_gridValue(v75, v39, v40, v41);
    v76 = 0;
    v44 = objc_msgSend_createFromGridValue_functionSpec_argumentIndex_evaluationContext_ignoreError_ignoreDuplicates_outError_(TSCETaggedDecimalListObject, v43, v42, spec, 0, context, errorCopy, duplicateCopy, &v76);
    v17 = v76;
    v74 = v44;
    if (v17)
    {
      v26 = objc_msgSend_raiseErrorOrConvert_(context, v45, v17, v47);
    }

    else
    {
      if (!v44)
      {
        v62 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "+[TSCEFunction_LARGE evaluateForArgsWithContext:functionSpec:arguments:isLarge:ignoreError:ignoreDuplicate:]", v47);
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v66, v63, v26, 3065, 0, "Out of memory");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69);
        v48 = 1;
        goto LABEL_11;
      }

      v54 = objc_msgSend_taggedDecimalList(v44, v45, v46, v47);
      v55 = v54[4];
      if (v55 && (v22 <= v55 || (v22 = v55, errorCopy)))
      {
        if (v55 < objc_msgSend_count(v42, v51, v52, v53))
        {
          objc_msgSend_reportNonNumericCellWarningInContext_(TSCEWarning, v70, context, v71);
        }

        TSUDecimal::operator=();
        v86 = 0;
        if (largeCopy)
        {
          sub_221402924(v54, v55 - vcvtpd_s64_f64(v22), &v79);
        }

        else
        {
          sub_221402924(v54, vcvtmd_s64_f64(v22) - 1, &v79);
        }

        v85 = v79;
        v86 = v80;
        *&v79 = context;
        *(&v79 + 1) = spec;
        v80 = 0;
        v81[0] = 0;
        *(v81 + 7) = 0;
        v82 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v83 = 0;
        v84 = 0;
        v26 = objc_msgSend_valueAtIndex_accessContext_(v42, v72, v86, &v79);
      }

      else
      {
        v56 = objc_msgSend_functionName(spec, v51, v52, v53);
        v59 = objc_msgSend_positionLargerThanArrayErrorForFunctionName_(TSCEError, v57, v56, v58);
        v26 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61);
      }
    }

    v48 = 0;
LABEL_11:

    objc_autoreleasePoolPop(context);
    if (!v48)
    {
      goto LABEL_14;
    }

    TSUDecimal::operator=();
    *&v79 = 0;
    DWORD2(v79) = 0;
    BYTE12(v79) = 0;
    LOWORD(v80) = 1057;
    BYTE2(v80) = 1;
    HIDWORD(v80) = -50266102;
    LODWORD(v81[0]) = 253;
    v36 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v49, &v85, &v79);
LABEL_13:
    v26 = v36;
    goto LABEL_14;
  }

  v27 = objc_msgSend_functionName(spec, v23, v24, v25);
  v29 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v28, 2, v27, 1, 1.0);
  v26 = objc_msgSend_raiseErrorOrConvert_(context, v30, v29, v31);

  v17 = 0;
LABEL_14:

LABEL_15:

  return v26;
}

@end