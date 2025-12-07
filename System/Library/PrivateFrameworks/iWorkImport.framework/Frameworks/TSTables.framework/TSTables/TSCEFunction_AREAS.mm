@interface TSCEFunction_AREAS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AREAS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v109[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v109);
  v10 = v109[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
    goto LABEL_43;
  }

  v101 = v7;
  v16 = objc_msgSend_gridKind(v9, v11, v12, v13);
  if (v16 == 2)
  {
    v102 = 0;
    v61 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v17, context, spec, 0, &v102);
    v14 = v102;
    if (v14)
    {
      v65 = objc_msgSend_raiseErrorOrConvert_(context, v62, v14, v64);
LABEL_34:
      v15 = v65;
LABEL_35:

      goto LABEL_42;
    }

    v77 = objc_msgSend_calcEngine(context, v62, v63, v64);
    if (v61)
    {
      objc_msgSend_rangeRef(v61, v74, v75, v76);
    }

    else
    {
      memset(v105, 0, 32);
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v77, v74, v105, v76);

    if ((IsWithinTable & 1) == 0)
    {
      v90 = objc_msgSend_invalidReferenceError(TSCEError, v81, v82, v83);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v91, v90, v92);

      goto LABEL_35;
    }

    v105[0] = context;
    v105[1] = spec;
    v105[2] = 0;
    v105[3] = 0;
    *(&v105[3] + 7) = 0;
    v106 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v107 = 0;
    v108 = 0;
    v85 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v84, 0, v105);

    v14 = 0;
LABEL_33:
    v86 = MEMORY[0x277D80680];
    v87 = objc_msgSend_locale(context, v71, v72, v73);
    v61 = objc_msgSend_defaultFormatWithFormatType_locale_(v86, v88, 256, v87);

    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v105, v61, 0);
    v65 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v89, v103, v105);
    goto LABEL_34;
  }

  if (v16 != 1)
  {
    v66 = objc_msgSend_functionName(spec, v17, v18, v19);
    v68 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v67, v66, 1);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v69, v68, v70);

    v14 = 0;
    goto LABEL_42;
  }

  v14 = objc_msgSend_count(v9, v17, v18, v19);
  v20 = v14;
  contextCopy = context;
  v105[0] = contextCopy;
  v105[1] = spec;
  v105[2] = 0;
  v105[3] = 0;
  *(&v105[3] + 7) = 0;
  v106 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v107 = 0;
  v108 = 0;
  if (!v14)
  {
    v60 = 0;
LABEL_26:

    goto LABEL_33;
  }

  v23 = contextCopy;
  v24 = 0;
  v14 = 0;
  while (1)
  {
    v25 = objc_msgSend_valueAtIndex_accessContext_(v9, v22, v24, v105);

    if (objc_msgSend_isError(v25, v26, v27, v28))
    {
      v38 = objc_msgSend_errorWithContext_(v25, v29, v23, v31);
      v15 = objc_msgSend_raiseErrorOrConvert_(v23, v78, v38, v79);
      v14 = 0;
LABEL_40:

      goto LABEL_41;
    }

    if ((objc_msgSend_isNil(v25, v29, v30, v31) & 1) == 0)
    {
      break;
    }

    v14 = 0;
LABEL_20:

    if (++v24 >= v20)
    {
      v60 = v105[2];
      goto LABEL_26;
    }
  }

  if (objc_msgSend_nativeType(v25, v32, v33, v34) != 6)
  {
    v38 = objc_msgSend_functionName(spec, v35, v36, v37);
    v95 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v93, v38, v94);
    v15 = objc_msgSend_raiseErrorOrConvert_(v23, v96, v95, v97);
    v14 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v104 = 0;
  v38 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v25, v35, v23, spec, 0, &v104);
  v14 = v104;
  v45 = objc_msgSend_calcEngine(v23, v39, v40, v41);
  if (v38)
  {
    objc_msgSend_rangeRef(v38, v42, v43, v44);
  }

  else
  {
    memset(v103, 0, sizeof(v103));
  }

  v46 = objc_msgSend_rangeIsWithinTable_(v45, v42, v103, v44);

  if ((v46 & 1) == 0)
  {
    v95 = objc_msgSend_invalidReferenceError(TSCEError, v47, v48, v49);
    v15 = objc_msgSend_raiseErrorOrConvert_(v23, v98, v95, v99);
    goto LABEL_39;
  }

  if ((objc_msgSend_isNil(v38, v47, v48, v49) & 1) == 0)
  {
    v51 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v38, v50, v23, 0);
  }

  if (!v14 || (objc_msgSend_isInvalidMergeReference(v14, v52, v53, v54) & 1) != 0 || (objc_msgSend_isInvalidRangeUsageError(v14, v55, v56, v57) & 1) != 0)
  {
    goto LABEL_20;
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(v23, v58, v14, v59);
LABEL_41:

LABEL_42:
  v7 = v101;
LABEL_43:

  return v15;
}

@end