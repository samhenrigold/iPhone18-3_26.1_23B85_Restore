@interface TSCEFunction_SUMXMY2
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMXMY2

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  argumentsCopy = arguments;
  v8 = **arguments;
  v104[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v104);
  v11 = v104[0];
  if (v11)
  {
    v15 = v11;
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_36;
  }

  v88 = objc_msgSend_count(v10, v12, v13, v14);
  v16 = *(*argumentsCopy + 8);
  v103 = 0;
  v89 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v17, context, spec, 1, 1, &v103);
  v18 = v103;
  if (v18)
  {
    v15 = v18;
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v21);
    goto LABEL_35;
  }

  if (v88 != objc_msgSend_count(v89, v19, v20, v21))
  {
    v63 = objc_msgSend_functionName(spec, v22, v23, v24);
    v86 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v64, v63, v65);
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(context, v66, v86, v67);
    v15 = 0;
    goto LABEL_34;
  }

  v82 = objc_msgSend_zero(TSCENumberValue, v22, v23, v24);
  v25 = [TSCENumberValue alloc];
  TSUDecimal::operator=();
  v86 = objc_msgSend_initWithDecimal_(v25, v26, v97, v27);
  contextCopy = context;
  v97[0] = contextCopy;
  v97[1] = spec;
  v98 = 0;
  v99[0] = 0;
  *(v99 + 7) = 0;
  v100 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v101 = 0;
  v102 = 0;
  if (!v88)
  {
    v15 = 0;
LABEL_30:
    specCopy = spec;
    v63 = v82;
    v69 = objc_msgSend_functionName(specCopy, v28, v29, v30);
    v71 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v70, v69, 5);
    argumentsCopy = objc_msgSend_raiseErrorOrConvert_(contextCopy, v72, v71, v73);

    goto LABEL_33;
  }

  v78 = v16;
  v79 = v8;
  v15 = 0;
  v32 = 0;
  v84 = 1;
  v87 = v10;
  do
  {
    v33 = objc_msgSend_valueAtIndex_accessContext_(v10, v28, v32, v97);
    v35 = objc_msgSend_valueAtIndex_accessContext_(v89, v34, v32, v97);
    v38 = objc_msgSend_errorWithContext_(v33, v36, contextCopy, v37);
    v41 = objc_msgSend_errorWithContext_(v35, v39, contextCopy, v40);
    v45 = v41;
    if (v38 | v41)
    {
      if (v38)
      {
        v46 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v42, v38, v44);
LABEL_13:
        argumentsCopy = v46;
        v47 = 0;
        goto LABEL_24;
      }

      if (v41)
      {
        v46 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v42, v41, v44);
        goto LABEL_13;
      }
    }

    if (objc_msgSend_isNil(v33, v42, v43, v44) & 1) != 0 || (objc_msgSend_isNil(v35, v48, v49, v50))
    {
      v47 = 1;
    }

    else
    {
      v96 = v15;
      v85 = objc_msgSend_asNumber_outError_(v33, v51, contextCopy, &v96);
      v52 = v96;

      v95 = v52;
      v83 = objc_msgSend_asNumber_outError_(v35, v53, contextCopy, &v95);
      v15 = v95;

      if (v15)
      {
        argumentsCopy = objc_msgSend_raiseErrorOrConvert_(contextCopy, v54, v15, v55);
        v47 = 0;
      }

      else
      {
        v94 = 0;
        v56 = objc_msgSend_subtract_functionSpec_outError_(v85, v54, v83, spec, &v94);
        v57 = v94;
        v93 = v57;
        v77 = v56;
        v81 = objc_msgSend_power_outError_(v56, v58, v86, &v93);
        v59 = v93;

        v92 = v59;
        v80 = objc_msgSend_add_functionSpec_outError_(v82, v60, v81, spec, &v92);
        v15 = v92;

        if (v15)
        {
          argumentsCopy = objc_msgSend_raiseErrorOrConvert_(contextCopy, v61, v15, v62);
          v47 = 0;
        }

        else
        {
          v47 = 1;
        }

        v82 = v80;
      }

      v84 = 0;
    }

LABEL_24:

    if ((v47 & 1) == 0)
    {
      v16 = v78;
      v8 = v79;
      v10 = v87;
      v63 = v82;
      goto LABEL_33;
    }

    ++v32;
    v10 = v87;
  }

  while (v88 != v32);
  if (v84)
  {
    v16 = v78;
    v8 = v79;
    goto LABEL_30;
  }

  v90._tskFormat = 0;
  v90._formatType = 0;
  v90._formatState = 0;
  *&v90._durationFormat = *&v90._durationFormat & 0xC080 | 0x421;
  *(&v90._durationFormat + 2) = *(&v90._durationFormat + 2) & 0xF8 | 1;
  *&v90._baseFormat.base = -50266102;
  v90._numberFormat.decimalPlaces = -3;
  *(&v90._numberFormat + 1) &= 0xE0u;
  v90._numberFormat.currencyCodeIndex = 0;
  v16 = v78;
  v8 = v79;
  TSCEFormat::TSCEFormat(&v91, &v90);
  objc_msgSend_setFormat_(v82, v74, &v91, v75);
  v63 = v82;
  argumentsCopy = v63;
LABEL_33:

LABEL_34:
LABEL_35:

LABEL_36:

  return argumentsCopy;
}

@end