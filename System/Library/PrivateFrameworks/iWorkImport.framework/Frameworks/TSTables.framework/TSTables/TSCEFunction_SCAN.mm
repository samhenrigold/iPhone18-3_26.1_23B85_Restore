@interface TSCEFunction_SCAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SCAN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 16);
  v119[0] = 0;
  v11 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 2, v119);
  v15 = v119[0];
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v15, v14);
    goto LABEL_33;
  }

  v103 = v11;
  v20 = objc_msgSend_functor(v11, v12, v13, v14);
  if (v20->_numArgs != 2)
  {
    v24 = objc_msgSend_functionName(spec, v17, v18, v19);
    v15 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v25, v24, v20->_numArgs + 1, 3);

    v16 = objc_msgSend_raiseErrorOrConvert_(context, v26, v15, v27);
    goto LABEL_33;
  }

  v21 = *(*arguments + 8);
  v118 = 0;
  v104 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v21, v17, context, spec, 1, 0, &v118);
  v15 = v118;
  if (!v15)
  {
    v28 = v8;
    v117 = v28;
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v28, v29, v30, v31);
    if (objc_msgSend_isError(v28, v33, v34, v35))
    {
      v39 = objc_msgSend_asErrorValue(v28, v36, v37, v38);
      v43 = objc_msgSend_error(v39, v40, v41, v42);

      if (objc_msgSend_errorType(v43, v44, v45, v46) == 135)
      {
        v47 = v117;
        v117 = 0;
      }

      else
      {
        if (v43)
        {
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v36, v43, v38);

          v11 = v103;
LABEL_31:

          goto LABEL_32;
        }

        if ((isTokenOrEmptyArg & 1) == 0)
        {
LABEL_12:
          v116 = objc_msgSend_dimensions(v104, v36, v37, v38, v9, v8);
          v50 = objc_opt_new();
          contextCopy = context;
          v110[0] = contextCopy;
          v110[1] = spec;
          v111 = 0;
          v112[0] = 1;
          *(v112 + 7) = 0;
          v113 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v114 = 0;
          v115 = 0;
          v109 = 0;
          do
          {
            memset(v108, 0, sizeof(v108));
            v107 = objc_msgSend_valueAtGridCoord_accessContext_(v104, v51, *&v109, v110);
            sub_221179A54(v108, &v117);
            sub_221179A54(v108, &v107);
            v53 = TSCEFunctor::evaluateWithArgs(v20, contextCopy, v108);
            v54 = v117;
            v117 = v53;

            v57 = objc_msgSend_errorWithContext_(v117, v55, contextCopy, v56);
            v61 = v57;
            if (v57 && objc_msgSend_errorType(v57, v58, v59, v60) == 168)
            {
              v64 = objc_msgSend_functionName(spec, v58, v62, v63);
              v67 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v65, v64, v66);
              v70 = objc_msgSend_errorValue_(TSCEErrorValue, v68, v67, v69);
              v71 = v117;
              v117 = v70;
            }

            objc_msgSend_setValue_atCoord_(v50, v58, v117, &v109);
            v109 = TSCEGridDimensions::nextCoordRowMajorOrder(&v116, &v109);
            isRichTextValue = objc_msgSend_isRichTextValue(v117, v72, v73, v74);
            if (v109.column == 0x7FFFFFFF)
            {
              v79 = 0;
            }

            else
            {
              v79 = isRichTextValue;
            }

            if (v79 == 1 && v109.row != 0x7FFFFFFF)
            {
              v80 = objc_msgSend_asRichTextValue(v117, v76, v77, v78);
              v84 = v80;
              if (v80)
              {
                objc_msgSend_asRawRichTextStorage(v80, v81, v82, v83);
              }

              else
              {
                v105 = 0uLL;
                *&v106 = 0;
              }

              v85 = sub_2210771B0(&v105, v81, v82, v83);
              v88 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v86, v85, v87);

              if (v117)
              {
                objc_msgSend_format(v117, v89, v90, v91);
              }

              else
              {
                v105 = 0u;
                v106 = 0u;
              }

              v92 = objc_msgSend_richTextValue_format_(TSCERichTextValue, v89, v88, &v105);
              v93 = v117;
              v117 = v92;
            }

            *&v105 = v108;
            sub_22107C2C0(&v105);
          }

          while (v109.column != 0x7FFFFFFF && v109.row != 0x7FFFFFFF);
          v94 = [TSCEDenseGrid alloc];
          v97 = objc_msgSend_initWithValueGrid_(v94, v95, v50, v96);
          v11 = v103;
          v16 = objc_msgSend_gridValue_(TSCEGridValue, v98, v97, v99);

          v9 = v101;
          v8 = v102;
          goto LABEL_31;
        }
      }
    }

    else if (!isTokenOrEmptyArg)
    {
      goto LABEL_12;
    }

    v48 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v36, v37, v38);
    v49 = v117;
    v117 = v48;

    goto LABEL_12;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v22, v15, v23);
LABEL_32:

LABEL_33:

  return v16;
}

@end