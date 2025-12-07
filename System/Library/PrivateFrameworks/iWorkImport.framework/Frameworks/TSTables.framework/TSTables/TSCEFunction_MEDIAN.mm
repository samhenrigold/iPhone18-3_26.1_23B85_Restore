@interface TSCEFunction_MEDIAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateVector:(id)vector context:(id)context functionSpec:(id)spec;
@end

@implementation TSCEFunction_MEDIAN

+ (id)evaluateVector:(id)vector context:(id)context functionSpec:(id)spec
{
  v114 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = objc_autoreleasePoolPush();
  v96 = objc_msgSend_deepResolveInPlace_(vector, v9, contextCopy, v10);
  v14 = objc_msgSend_gridValue(v96, v11, v12, v13);
  v109 = 0;
  v97 = objc_msgSend_createFromGridValue_functionSpec_argumentIndex_evaluationContext_ignoreError_ignoreDuplicates_outError_(TSCETaggedDecimalListObject, v15, v14, spec, 0, contextCopy, 0, 0, &v109);
  v19 = v109;
  if (v19)
  {
    v20 = v8;
    v21 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v16, v19, v18);
LABEL_3:
    v22 = 0;
    v23 = 0;
LABEL_4:

    goto LABEL_5;
  }

  if (v97)
  {
    v25 = objc_msgSend_taggedDecimalList(v97, v16, v17, v18);
    v29 = v25;
    v21 = v25[4];
    if (!v21)
    {
      v19 = objc_msgSend_functionName(spec, v26, v27, v28);
      v53 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v52, v19, 8);
      v20 = v8;
      v21 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v54, v53, v55);

      goto LABEL_3;
    }

    v20 = v8;
    sub_221402924(v25, (v21 - 1) >> 1, &v112);
    v30 = contextCopy;
    v103[0] = v30;
    v103[1] = spec;
    v104 = 0;
    v105[0] = 0;
    *(v105 + 7) = 0;
    v106 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v107 = 0;
    v108 = 0;
    v23 = objc_msgSend_valueAtIndex_accessContext_(v14, v31, v113, v103);
    if (objc_msgSend_isError(v23, v32, v33, v34))
    {
      v37 = objc_msgSend_errorWithContext_(v23, v35, v30, v36);
      v21 = objc_msgSend_raiseErrorOrConvert_(v30, v38, v37, v39);

      v22 = 0;
      v19 = 0;
LABEL_31:

      goto LABEL_4;
    }

    if (v21)
    {
      v19 = 0;
      v22 = 1;
      goto LABEL_31;
    }

    sub_221402924(v29, ((v21 - 1) >> 1) + 1, &v110);
    v21 = v30;
    if (objc_msgSend_deepType_(v23, v56, v30, v57) == 3)
    {
      v59 = objc_msgSend_valueAtIndex_accessContext_(v14, v58, v111, v103);
      if (objc_msgSend_isError(v59, v60, v61, v62))
      {
        v65 = objc_msgSend_errorWithContext_(v59, v63, v30, v64);
        v21 = objc_msgSend_raiseErrorOrConvert_(v30, v66, v65, v67);

        v19 = 0;
LABEL_25:
        v22 = 0;
        goto LABEL_31;
      }

      v102 = 0;
      v75 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v23, v63, v30, spec, 0, &v102);
      v76 = v102;
      v101 = v76;
      v95 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v59, v77, v21, spec, 0, &v101);
      v19 = v101;

      if (v19)
      {
        v21 = objc_msgSend_raiseErrorOrConvert_(v21, v78, v19, v80);

        goto LABEL_25;
      }

      objc_msgSend_timeIntervalSinceReferenceDate(v75, v78, v79, v80);
      v82 = v81;
      objc_msgSend_timeIntervalSinceReferenceDate(v95, v83, v84, v85);
      v87 = v86;
      v88 = objc_alloc(MEMORY[0x277CBEAA8]);
      v94 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v88, v89, v90, v91, (v82 + v87) * 0.5);
      if (v23)
      {
        objc_msgSend_formatWithContext_(v23, v92, v21, v93);
      }

      else
      {
        memset(v100, 0, sizeof(v100));
      }

      v72 = objc_msgSend_dateValue_format_(TSCEDateValue, v92, v94, v100);
    }

    else
    {
      v100[0] = v112;
      TSUDecimal::operator+=();
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v99 = v100[0];
      v98 = 0;
      v69 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v68, v30, spec, 0, &v98);
      v19 = v98;
      v72 = objc_msgSend_numberWithDecimal_(v69, v70, &v99, v71);

      if (v19)
      {
        v21 = objc_msgSend_raiseErrorOrConvert_(v30, v73, v19, v74);
        v23 = v72;
        goto LABEL_25;
      }
    }

    v19 = 0;
    v22 = 1;
    v23 = v72;
    goto LABEL_31;
  }

  v20 = v8;
  v40 = MEMORY[0x277D81150];
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSCEFunction_MEDIAN evaluateVector:context:functionSpec:]", v18);
  v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v43);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 3909, 0, "Out of memory");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
  v21 = objc_msgSend_nilValue(TSCENilValue, v49, v50, v51);
  v22 = 0;
  v23 = 0;
LABEL_5:

  objc_autoreleasePoolPop(v20);
  if (v22)
  {
    v21 = v23;
  }

  return v21;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v15 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v15);
  v12 = v15;
  if (v12)
  {
    objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
  }

  else
  {
    objc_msgSend_evaluateVector_context_functionSpec_(self, v10, v9, context, spec);
  }
  v13 = ;

  return v13;
}

@end