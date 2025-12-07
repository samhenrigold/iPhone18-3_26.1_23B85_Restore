@interface TSCEFunction_MMULT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MMULT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v96[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, v96);
  v10 = v96[0];
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_15;
  }

  v15 = *(*arguments + 8);
  v95 = 0;
  v79 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v15, v11, context, spec, 1, 0, &v95);
  v16 = v95;
  if (!v16)
  {
    v21 = objc_msgSend_dimensions(v9, v17, v18, v19);
    v28 = objc_msgSend_dimensions(v79, v22, v23, v24);
    if (HIDWORD(v21) * v21)
    {
      v29 = HIDWORD(v28) * v28 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      v30 = objc_msgSend_emptyArrayError(TSCEError, v25, v26, v27);
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);
    }

    else
    {
      v35 = objc_msgSend_functionName(spec, v25, v26, v27);
      v13 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v36, v21, HIDWORD(v21), v35);

      if (v13)
      {
        goto LABEL_23;
      }

      v40 = objc_msgSend_functionName(spec, v37, v38, v39);
      v13 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v41, v28, HIDWORD(v28), v40);

      if (v13)
      {
        goto LABEL_23;
      }

      if (v21 == HIDWORD(v28))
      {
        v43 = objc_msgSend_functionName(spec, v37, v42, v39);
        v13 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v44, v28, HIDWORD(v21), v43);

        if (v13)
        {
LABEL_23:
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v37, v13, v39);
          goto LABEL_5;
        }

        v30 = objc_msgSend_asValueGrid_(v9, v37, context, v39);
        v49 = objc_msgSend_asValueGrid_(v79, v47, context, v48);
        objc_msgSend_deepResolveInPlace_(v30, v50, context, v51);
        objc_msgSend_deepResolveInPlace_(v49, v52, context, v53);
        contextCopy = context;
        v89[0] = contextCopy;
        v89[1] = spec;
        v90 = 0;
        v91[0] = 0;
        *(v91 + 7) = 0;
        v92 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v93 = 0;
        v94 = 0;
        v88 = 0;
        v56 = objc_msgSend_asMatrixWithAccessContext_outError_(v30, v55, v89, &v88);
        v57 = v88;
        if (v57)
        {
          v13 = v57;
          v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v58, v57, v59);
        }

        else
        {
          v60 = contextCopy;
          v82[0] = v60;
          v82[1] = spec;
          v83 = 0;
          v84[0] = 1;
          *(v84 + 7) = 0;
          v85 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v86 = 0;
          v87 = 0;
          v81 = 0;
          v62 = objc_msgSend_asMatrixWithAccessContext_outError_(v49, v61, v82, &v81);
          v63 = v81;
          if (v63)
          {
            v13 = v63;
            v14 = objc_msgSend_raiseErrorOrConvert_(v60, v64, v63, v65);
          }

          else
          {
            v80 = 0;
            v66 = objc_msgSend_multiplyBy_outError_(v56, v64, v62, &v80);
            v13 = v80;
            if (v13)
            {
              v14 = objc_msgSend_raiseErrorOrConvert_(v60, v67, v13, v68);
            }

            else
            {
              v69 = [TSCEValueGrid alloc];
              v72 = objc_msgSend_initWithMatrix_(v69, v70, v66, v71);
              v73 = [TSCEDenseGrid alloc];
              v76 = objc_msgSend_initWithValueGrid_(v73, v74, v72, v75);
              v14 = objc_msgSend_gridValue_(TSCEGridValue, v77, v76, v78);
            }
          }
        }

LABEL_13:
        goto LABEL_14;
      }

      v30 = objc_msgSend_wrongSizeForMatrixMultiplyError(TSCEError, v37, v42, v39);
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v45, v30, v46);
    }

    v14 = v33;
    v13 = 0;
    goto LABEL_13;
  }

  v13 = v16;
  v20 = objc_msgSend_raiseErrorOrConvert_(context, v17, v16, v19);
LABEL_5:
  v14 = v20;
LABEL_14:

LABEL_15:

  return v14;
}

@end