@interface TSCEFunction_PERCENTILE
+ (id)computeWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 percentile:(const TSUDecimal *)percentile isExclusive:(BOOL)exclusive ignoreError:(BOOL)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERCENTILE

+ (id)computeWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 percentile:(const TSUDecimal *)percentile isExclusive:(BOOL)exclusive ignoreError:(BOOL)error
{
  errorCopy = error;
  exclusiveCopy = exclusive;
  v110 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v14 = a5;
  if (exclusiveCopy)
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0) || (TSUDecimal::operator==())
    {
      v18 = objc_msgSend_functionName(spec, v15, v16, v17);
      v20 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v19, 2, v18, 0, 0, 0.0, 1.0);
      v23 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v21, v20, v22);

      goto LABEL_17;
    }
  }

  else
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v18 = objc_msgSend_functionName(spec, v24, v25, v26);
      v45 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v44, 2, v18, 1, 1, 0.0, 1.0);
      v23 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v46, v45, v47);

      goto LABEL_17;
    }
  }

  context = objc_autoreleasePoolPush();
  v29 = objc_msgSend_deepResolveInPlace_(v14, v27, vectorCopy, v28);
  v33 = objc_msgSend_gridValue(v29, v30, v31, v32);
  v101 = 0;
  v35 = objc_msgSend_createFromGridValue_functionSpec_argumentIndex_evaluationContext_ignoreError_ignoreDuplicates_outError_(TSCETaggedDecimalListObject, v34, v33, spec, 0, vectorCopy, errorCopy, 0, &v101);
  v39 = v101;
  if (v39)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v36, v39, v38);
LABEL_10:
    v18 = 0;
    v40 = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (v35)
  {
    v52 = objc_msgSend_taggedDecimalList(v35, v36, v37, v38);
    v53 = v52[4];
    if (!v53)
    {
      v39 = objc_msgSend_functionName(spec, v49, v50, v51);
      v89 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v88, v39, 8);
      v23 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v90, v89, v91);

      goto LABEL_10;
    }

    TSUDecimal::doubleValue(percentile);
    v54 = (v53 - 1);
    v56 = vcvtmd_u64_f64(v55 * v54);
    v57 = -(floor(v55 * v54) - v55 * v54);
    v58 = v55 * (v53 + 1) + -1.0;
    v59 = vcvtmd_u64_f64(v58);
    v60 = v58 - floor(v58);
    v61 = !exclusiveCopy;
    if (exclusiveCopy)
    {
      v62 = v59;
    }

    else
    {
      v62 = v56;
    }

    if (v61)
    {
      v63 = v57;
    }

    else
    {
      v63 = v60;
    }

    sub_221402924(v52, v62, &v108);
    TSUDecimal::operator=();
    if (v62 + 1 >= v53 || (sub_221402924(v52, v62 + 1, &v102), v63 == 0.0))
    {
      v100 = v108;
    }

    else
    {
      TSUDecimal::operator=();
      v99[0] = v108;
      TSUDecimal::operator*=();
      v96 = v99[0];
      TSUDecimal::operator=();
      v99[0] = v102;
      TSUDecimal::operator*=();
      v99[3] = v99[0];
      v99[0] = v96;
      TSUDecimal::operator+=();
      v100 = v96;
    }

    v64 = vectorCopy;
    *&v102 = v64;
    *(&v102 + 1) = spec;
    v103 = 0;
    v104[0] = 0;
    *(v104 + 7) = 0;
    v105 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v106 = 0;
    v107 = 0;
    v66 = objc_msgSend_valueAtIndex_accessContext_(v33, v65, v109, &v102);
    if (objc_msgSend_deepType_(v66, v67, v64, v68) == 3)
    {
      v70 = objc_alloc(MEMORY[0x277CBEAA8]);
      TSUDecimal::doubleValue(&v100);
      v23 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v70, v71, v72, v73);
      if (v66)
      {
        objc_msgSend_formatWithContext_(v66, v74, v64, v75);
      }

      else
      {
        memset(v99, 0, 32);
      }

      v18 = objc_msgSend_dateValue_format_(TSCEDateValue, v74, v23, v99);

      v39 = 0;
    }

    else
    {
      v98 = 0;
      v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v66, v69, v64, spec, 0, &v98);
      v39 = v98;
      v18 = objc_msgSend_numberWithDecimal_(v23, v92, &v100, v93);

      if (v39)
      {
        v23 = objc_msgSend_raiseErrorOrConvert_(v64, v94, v39, v95);
        v40 = 0;
LABEL_42:

        goto LABEL_11;
      }
    }

    v40 = 1;
    goto LABEL_42;
  }

  v76 = MEMORY[0x277D81150];
  v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "+[TSCEFunction_PERCENTILE computeWithVector:functionSpec:vector:percentile:isExclusive:ignoreError:]", v38);
  v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v79);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v81, v77, v80, 4602, 0, "Out of memory");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84);
  v23 = objc_msgSend_nilValue(TSCENilValue, v85, v86, v87);
  v18 = 0;
  v40 = 0;
LABEL_12:

  objc_autoreleasePoolPop(context);
  if (v40)
  {
    if (!v18)
    {
      v18 = objc_msgSend_nilValue(TSCENilValue, v41, v42, v43);
    }

    v18 = v18;
    v23 = v18;
  }

LABEL_17:

  return v23;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *(*arguments + 8);
  v25 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 1, &v25);
  v11 = v25;
  v24[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v24[1] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v18 = **arguments;
    v23 = 0;
    v19 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v18, v15, context, spec, 0, 1, &v23);
    v11 = v23;
    if (v11)
    {
      objc_msgSend_raiseErrorOrConvert_(context, v20, v11, v21);
    }

    else
    {
      objc_msgSend_computeWithVector_functionSpec_vector_percentile_isExclusive_ignoreError_(TSCEFunction_PERCENTILE, v20, context, spec, v19, v24, 0, 0);
    }
    v17 = ;
  }

  return v17;
}

@end