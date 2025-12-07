@interface TSCEFunction_SUMSQ
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMSQ

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v78[0] = 0;
  v63 = v7;
  specCopy = spec;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v78);
  v10 = v78[0];
  v64 = v9;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
    goto LABEL_26;
  }

  v16 = objc_msgSend_zero(TSCENumberValue, v11, v12, v13);
  v20 = objc_msgSend_count(v9, v17, v18, v19);
  contextCopy = context;
  v72[0] = contextCopy;
  v72[1] = specCopy;
  v73 = 0;
  v74[0] = 0;
  *(v74 + 7) = 0;
  v75 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v76 = 0;
  v77 = 0;
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v25 = objc_msgSend_valueAtIndex_accessContext_(v9, v21, i, v72);
      v31 = objc_msgSend_errorWithContext_(v25, v26, contextCopy, v27);
      if (v31)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v28, v31, v30);
        v14 = 0;
        goto LABEL_24;
      }

      if (objc_msgSend_isNil(v25, v28, v29, v30))
      {
        v33 = v16;
      }

      else
      {
        v71 = 0;
        v34 = objc_msgSend_asNumber_outError_(v25, v32, contextCopy, &v71);
        v35 = v71;
        v65 = v34;
        if (v35)
        {
          v14 = v35;
          v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v36, v35, v38);
          goto LABEL_23;
        }

        if (objc_msgSend_hasUnits(v34, v36, v37, v38) && !objc_msgSend_dimension(v34, v39, v40, v41))
        {
          v57 = objc_msgSend_functionName(specCopy, v42, v43, v44);
          v59 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v58, v57, 1);
          v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v60, v59, v61);

          v14 = 0;
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }

        v45 = v20;
        TSUDecimal::operator=();
        v48 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v46, &v68, v47);
        v70 = 0;
        v50 = objc_msgSend_power_outError_(v34, v49, v48, &v70);
        v51 = v70;
        v69 = v51;
        v33 = objc_msgSend_add_functionSpec_outError_(v16, v52, v50, specCopy, &v69);
        v14 = v69;

        if (v14)
        {
          v9 = v64;
          v31 = 0;
          v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v53, v14, v54);
          v16 = v33;
          goto LABEL_23;
        }

        v16 = v33;
        v9 = v64;
        v20 = v45;
      }
    }

    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v33 = v16;
  if (v9)
  {
LABEL_15:
    objc_msgSend_formatWithContext_(v9, v21, contextCopy, v22);
    goto LABEL_18;
  }

LABEL_17:
  memset(&v67, 0, sizeof(v67));
LABEL_18:
  TSCEFormat::TSCEFormat(&v68, &v67);
  objc_msgSend_setFormat_(v33, v55, &v68, v56);
  v16 = v33;
  v14 = 0;
  v15 = v16;
LABEL_25:

LABEL_26:

  return v15;
}

@end