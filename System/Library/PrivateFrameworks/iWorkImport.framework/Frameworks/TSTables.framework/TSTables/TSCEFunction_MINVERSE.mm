@interface TSCEFunction_MINVERSE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MINVERSE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v66 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 0, &v66);
  v9 = v66;
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v12);
LABEL_3:
    v15 = v14;
    goto LABEL_22;
  }

  v16 = objc_msgSend_dimensions(v8, v10, v11, v12);
  if (!(HIDWORD(v16) * v16))
  {
    v13 = objc_msgSend_emptyArrayError(TSCEError, v17, v18, v19);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v25, v13, v26);
    goto LABEL_3;
  }

  if (v16 >> 33 > 4 || v16 >= 0xA)
  {
    v13 = objc_msgSend_functionName(spec, v17, v18, v19);
    v27 = objc_msgSend_matrixTooLargeError_(TSCEError, v21, v13, v22);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v23, v27, v24);
  }

  else
  {
    v27 = objc_msgSend_asValueGrid_(v8, v17, context, v19);
    objc_msgSend_deepResolveInPlace_(v27, v28, context, v29);
    contextCopy = context;
    v60[0] = contextCopy;
    v60[1] = spec;
    v61 = 0;
    v62[0] = 0;
    *(v62 + 7) = 0;
    v63 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v64 = 0;
    v65 = 0;
    v59 = 0;
    v32 = objc_msgSend_asMatrixWithAccessContext_outError_(v27, v31, v60, &v59);
    v33 = v59;
    if (v33)
    {
      v13 = v33;
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v34, v33, v35);
    }

    else
    {
      v58 = 0;
      v36 = objc_msgSend_inverseWithError_(v32, v34, &v58, v35);
      v37 = v58;
      if (v37)
      {
        v13 = v37;
        if (objc_msgSend_errorType(v37, v38, v39, v40) == 145)
        {
          v44 = objc_msgSend_functionName(spec, v41, v42, v43);
          v46 = objc_msgSend_matrixNotSquareError_argIndex_(TSCEError, v45, v44, 1);

          v13 = v46;
        }

        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v41, v13, v43);
      }

      else
      {
        v47 = [TSCEValueGrid alloc];
        v50 = objc_msgSend_initWithMatrix_(v47, v48, v36, v49);
        v51 = [TSCEDenseGrid alloc];
        v54 = objc_msgSend_initWithValueGrid_(v51, v52, v50, v53);
        v15 = objc_msgSend_gridValue_(TSCEGridValue, v55, v54, v56);

        v13 = 0;
      }
    }
  }

LABEL_22:

  return v15;
}

@end