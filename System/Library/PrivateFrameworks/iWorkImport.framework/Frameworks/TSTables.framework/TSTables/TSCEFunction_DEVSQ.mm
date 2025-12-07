@interface TSCEFunction_DEVSQ
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DEVSQ

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v108[0] = 0;
  specCopy = spec;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v108);
  v10 = v108[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
  }

  else
  {
    v16 = objc_msgSend_count(v9, v11, v12, v13);
    contextCopy = context;
    v102[0] = contextCopy;
    v102[1] = spec;
    v103 = 0;
    v104[0] = 0;
    *(v104 + 7) = 0;
    v105 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v106 = 0;
    v107 = 0;
    if (v16)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = objc_msgSend_valueAtIndex_accessContext_(v9, v17, v21, v102);
        if ((objc_msgSend_isNil(v24, v25, v26, v27) & 1) == 0)
        {
          v101 = 0;
          v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v28, contextCopy, specCopy, 0, &v101);
          v30 = v101;
          if (v30)
          {
            v14 = v30;
            v52 = v20;
            v57 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v31, v30, v32);
LABEL_25:
            v15 = v57;
            goto LABEL_40;
          }

          if (v23)
          {
            v33 = v29;
          }

          else
          {
            if ((objc_msgSend_dimensionsMatchModuloCurrency_(v20, v31, v29, v32) & 1) == 0)
            {
              v52 = v20;
              v53 = objc_msgSend_functionName(specCopy, v35, v36, v37);
              v60 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v58, v53, v59);
              v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v61, v60, v62);

              v14 = 0;
              goto LABEL_39;
            }

            v100 = 0;
            v33 = objc_msgSend_add_functionSpec_outError_(v20, v35, v29, specCopy, &v100);
            v14 = v100;

            if (v14)
            {
              v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v34, v14, v38);
              v52 = v33;
              goto LABEL_40;
            }
          }

          v20 = v33;
          v14 = objc_msgSend_errorForDuration_argumentIndex_(v33, v34, specCopy, 0);
          if (v14)
          {
            v52 = v33;
            v57 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v39, v14, v40);
            goto LABEL_25;
          }

          ++v22;

          v23 = 0;
        }

        ++v21;
      }

      while (v16 != v21);
      if (!v22)
      {
        v52 = v20;
        goto LABEL_22;
      }

      v88 = v9;
      v85 = v7;
      TSUDecimal::operator=();
      v24 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, &v94, v42);
      v90 = v16;
      v99 = 0;
      v29 = objc_msgSend_divide_outError_(v20, v43, v24, &v99);
      v14 = v99;
      v86 = v29;
      TSUDecimal::operator=();
      v87 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v44, &v94, v45);
      v49 = objc_msgSend_zero(TSCENumberValue, v46, v47, v48);

      if (!v14)
      {
        v63 = 1;
        v52 = v49;
        while (1)
        {
          v64 = objc_msgSend_valueAtIndex_accessContext_(v9, v50, v63 - 1, v102, v85);
          if (objc_msgSend_isNil(v64, v65, v66, v67))
          {
            v14 = 0;
          }

          else
          {
            v98 = 0;
            v69 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v64, v68, contextCopy, specCopy, 0, &v98);
            v70 = v98;
            v89 = v69;
            if (v70)
            {
              v14 = v70;
              v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v71, v70, v72);

              v7 = v85;
              v53 = v87;
              goto LABEL_39;
            }

            v73 = v52;
            v97 = 0;
            v74 = objc_msgSend_subtract_functionSpec_outError_(v69, v71, v29, specCopy, &v97);
            v75 = v97;
            v96 = v75;
            v76 = v74;
            v78 = objc_msgSend_power_outError_(v74, v77, v87, &v96);
            v79 = v96;

            v95 = v79;
            v81 = objc_msgSend_add_functionSpec_outError_(v73, v80, v78, specCopy, &v95);
            v14 = v95;

            v52 = v81;
            v9 = v88;
            v29 = v86;
          }

          if (v63 < v90)
          {
            ++v63;
            if (!v14)
            {
              continue;
            }
          }

          goto LABEL_17;
        }
      }

      v52 = v49;
LABEL_17:
      v7 = v85;
      v53 = v87;
      if (v14)
      {
        v54 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v50, v14, v51);
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v50, contextCopy, v51);
      }

      else
      {
        memset(&v93, 0, sizeof(v93));
      }

      TSCEFormat::TSCEFormat(&v94, &v93);
      objc_msgSend_setFormat_(v52, v82, &v94, v83);
      v52 = v52;
      v15 = v52;
LABEL_39:

LABEL_40:
    }

    else
    {
      v52 = 0;
LABEL_22:
      v24 = objc_msgSend_divideByZeroError(TSCEError, v17, v18, v19);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v55, v24, v56);
      v14 = 0;
    }
  }

  return v15;
}

@end