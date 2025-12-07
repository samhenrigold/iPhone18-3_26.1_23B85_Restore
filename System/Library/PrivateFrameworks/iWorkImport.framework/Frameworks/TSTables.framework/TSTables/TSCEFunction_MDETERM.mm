@interface TSCEFunction_MDETERM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MDETERM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v60 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 0, &v60);
  v9 = v60;
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v12);
    goto LABEL_21;
  }

  v15 = objc_msgSend_dimensions(v8, v10, v11, v12);
  if (HIDWORD(v15) * v15)
  {
    if (v15 >> 33 <= 4 && v15 < 0xA)
    {
      v27 = objc_msgSend_asValueGrid_(v8, v16, context, v18);
      objc_msgSend_deepResolveInPlace_(v27, v28, context, v29);
      contextCopy = context;
      v54[0] = contextCopy;
      v54[1] = spec;
      v55 = 0;
      v56[0] = 0;
      *(v56 + 7) = 0;
      v57 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v58 = 0;
      v59 = 0;
      v53 = 0;
      v32 = objc_msgSend_asMatrixWithAccessContext_outError_(v27, v31, v54, &v53);
      v33 = v53;
      v13 = v33;
      if (v33)
      {
        v36 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v34, v33, v35);
      }

      else
      {
        v51 = 0;
        v37 = objc_msgSend_determinantWithError_(v32, v34, &v51, v35);
        v39 = v38;
        v40 = v51;
        v13 = v40;
        v52[0] = v37;
        v52[1] = v39;
        if (v40)
        {
          if (objc_msgSend_errorType(v40, v41, v42, v43) == 145)
          {
            v47 = objc_msgSend_functionName(spec, v44, v45, v46);
            v49 = objc_msgSend_matrixNotSquareError_argIndex_(TSCEError, v48, v47, 1);

            v13 = v49;
          }

          v36 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v44, v13, v46);
        }

        else
        {
          v36 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, v52, v43);
        }
      }

      v14 = v36;

      goto LABEL_20;
    }

    v27 = objc_msgSend_functionName(spec, v16, v17, v18);
    v22 = objc_msgSend_matrixTooLargeError_(TSCEError, v20, v27, v21);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v24);
  }

  else
  {
    v27 = objc_msgSend_emptyArrayError(TSCEError, v16, v17, v18);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v25, v27, v26);
  }

  v13 = 0;
LABEL_20:

LABEL_21:

  return v14;
}

@end