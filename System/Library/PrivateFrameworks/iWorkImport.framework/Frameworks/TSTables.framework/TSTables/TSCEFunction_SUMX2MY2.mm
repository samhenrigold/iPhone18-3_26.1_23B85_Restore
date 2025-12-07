@interface TSCEFunction_SUMX2MY2
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMX2MY2

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v114[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v114);
  v11 = v114[0];
  if (v11)
  {
    v15 = v11;
    spec = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_39;
  }

  v98 = objc_msgSend_count(v10, v12, v13, v14);
  v16 = *(*arguments + 8);
  v113 = 0;
  v18 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v17, context, spec, 1, 1, &v113);
  v19 = v113;
  if (v19)
  {
    v15 = v19;
    spec = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v22);
    goto LABEL_38;
  }

  if (v98 != objc_msgSend_count(v18, v20, v21, v22))
  {
    v26 = objc_msgSend_functionName(spec, v23, v24, v25);
    v93 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v73, v26, v74);
    spec = objc_msgSend_raiseErrorOrConvert_(context, v75, v93, v76);
    v15 = 0;
    goto LABEL_37;
  }

  v26 = objc_msgSend_zero(TSCENumberValue, v23, v24, v25);
  v27 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v93 = objc_msgSend_initWithDecimal_(v27, v28, v107, v29);
  contextCopy = context;
  v34 = contextCopy;
  v107[0] = contextCopy;
  v107[1] = spec;
  v108 = 0;
  v109[0] = 0;
  *(v109 + 7) = 0;
  v110 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v111 = 0;
  v112 = 0;
  if (!v98)
  {
    v15 = 0;
    goto LABEL_34;
  }

  specCopy = spec;
  v96 = v26;
  v97 = v18;
  v88 = v16;
  v89 = v8;
  v15 = 0;
  v35 = 0;
  v36 = 1;
  v94 = contextCopy;
  v95 = v10;
  do
  {
    v37 = objc_msgSend_valueAtIndex_accessContext_(v10, v31, v35, v107);
    v39 = objc_msgSend_valueAtIndex_accessContext_(v97, v38, v35, v107);
    v42 = objc_msgSend_errorWithContext_(v37, v40, v34, v41);
    v45 = objc_msgSend_errorWithContext_(v39, v43, v34, v44);
    v49 = v45;
    if (v42 | v45)
    {
      if (v42)
      {
        v50 = objc_msgSend_raiseErrorOrConvert_(v34, v46, v42, v48);
LABEL_13:
        spec = v50;
        v51 = v36;
LABEL_14:
        v52 = 0;
        goto LABEL_19;
      }

      if (v45)
      {
        v50 = objc_msgSend_raiseErrorOrConvert_(v34, v46, v45, v48);
        goto LABEL_13;
      }
    }

    if (objc_msgSend_isNil(v37, v46, v47, v48) & 1) != 0 || (objc_msgSend_isNil(v39, v53, v54, v55))
    {
      v51 = v36;
      v57 = v96;
LABEL_18:
      v52 = 1;
      v96 = v57;
      goto LABEL_19;
    }

    v106 = v15;
    v58 = objc_msgSend_asNumber_outError_(v37, v56, v34, &v106);
    v59 = v106;

    v105 = v59;
    v92 = objc_msgSend_asNumber_outError_(v39, v60, v34, &v105);
    v15 = v105;

    if (v15)
    {
      spec = objc_msgSend_raiseErrorOrConvert_(v34, v61, v15, v62);

      v51 = 0;
      goto LABEL_14;
    }

    v104 = 0;
    v87 = v58;
    v90 = objc_msgSend_power_outError_(v58, v61, v93, &v104);
    v63 = v104;
    v103 = v63;
    v65 = objc_msgSend_power_outError_(v92, v64, v93, &v103);
    v66 = v103;

    v102 = v66;
    v86 = v65;
    v68 = objc_msgSend_subtract_functionSpec_outError_(v90, v67, v65, specCopy, &v102);
    v69 = v102;

    v85 = v68;
    v101 = v69;
    v57 = objc_msgSend_add_functionSpec_outError_(v96, v70, v68, specCopy, &v101);
    v15 = v101;

    if (v15)
    {
      spec = objc_msgSend_raiseErrorOrConvert_(v34, v71, v15, v72);
    }

    v52 = 0;
    if (!v15)
    {
      v51 = 0;
      goto LABEL_18;
    }

    v96 = v57;
    v51 = 0;
LABEL_19:

    if ((v52 & 1) == 0)
    {
      v16 = v88;
      v8 = v89;
      v10 = v95;
      v26 = v96;
      v18 = v97;
      goto LABEL_36;
    }

    ++v35;
    v36 = v51;
    v34 = v94;
    v10 = v95;
  }

  while (v98 != v35);
  v26 = v96;
  if (v36)
  {
    v16 = v88;
    v8 = v89;
    v18 = v97;
    spec = specCopy;
LABEL_34:
    v77 = objc_msgSend_functionName(spec, v31, v32, v33);
    v79 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v78, v77, 5);
    spec = objc_msgSend_raiseErrorOrConvert_(v34, v80, v79, v81);
  }

  else
  {
    v99._tskFormat = 0;
    v99._formatType = 0;
    v99._formatState = 0;
    *&v99._durationFormat = *&v99._durationFormat & 0xC080 | 0x421;
    *(&v99._durationFormat + 2) = *(&v99._durationFormat + 2) & 0xF8 | 1;
    *&v99._baseFormat.base = -50266102;
    v99._numberFormat.decimalPlaces = -3;
    *(&v99._numberFormat + 1) &= 0xE0u;
    v99._numberFormat.currencyCodeIndex = 0;
    v16 = v88;
    v8 = v89;
    v18 = v97;
    TSCEFormat::TSCEFormat(&v100, &v99);
    objc_msgSend_setFormat_(v96, v82, &v100, v83);
    v26 = v96;
    spec = v26;
  }

LABEL_36:

LABEL_37:
LABEL_38:

LABEL_39:

  return spec;
}

@end