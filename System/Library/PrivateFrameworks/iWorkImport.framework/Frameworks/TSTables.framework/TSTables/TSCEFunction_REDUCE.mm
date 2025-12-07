@interface TSCEFunction_REDUCE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REDUCE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 16);
  v91 = 0;
  v11 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 2, &v91);
  v15 = v91;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v15, v14);
    goto LABEL_24;
  }

  v78 = v11;
  v20 = objc_msgSend_functor(v11, v12, v13, v14);
  if (v20->_numArgs != 2)
  {
    v24 = objc_msgSend_functionName(spec, v17, v18, v19);
    v15 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v25, v24, v20->_numArgs + 1, 3);

    v16 = objc_msgSend_raiseErrorOrConvert_(context, v26, v15, v27);
    goto LABEL_24;
  }

  v21 = *(*arguments + 8);
  v90 = 0;
  v79 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v21, v17, context, spec, 1, 0, &v90);
  v15 = v90;
  if (!v15)
  {
    v28 = v8;
    v89 = v28;
    v88 = objc_msgSend_dimensions(v79, v29, v30, v31);
    contextCopy = context;
    v82[0] = contextCopy;
    v82[1] = spec;
    v83 = 0;
    v84[0] = 1;
    *(v84 + 7) = 0;
    v85 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v86 = 0;
    v87 = 0;
    v81 = 0;
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v28, v33, v34, v35);
    if (objc_msgSend_isError(v28, v37, v38, v39))
    {
      v43 = objc_msgSend_asErrorValue(v28, v40, v41, v42);
      v47 = objc_msgSend_error(v43, v44, v45, v46);

      if (objc_msgSend_errorType(v47, v48, v49, v50) == 135)
      {
        v52 = v89;
        v89 = 0;
      }

      else
      {
        if (v47)
        {
          v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v40, v47, v51);

LABEL_22:
          goto LABEL_23;
        }

        if ((isTokenOrEmptyArg & 1) == 0)
        {
LABEL_12:
          v77 = v8;
          if (v81.column != 0x7FFFFFFF && v81.row != 0x7FFFFFFF)
          {
            do
            {
              memset(v80, 0, sizeof(v80));
              v92[0] = objc_msgSend_valueAtGridCoord_accessContext_(v79, v40, *&v81, v82, v77);
              sub_221179A54(v80, &v89);
              sub_221179A54(v80, v92);
              v55 = TSCEFunctor::evaluateWithArgs(v20, contextCopy, v80);
              v56 = v89;
              v89 = v55;

              v59 = objc_msgSend_errorWithContext_(v89, v57, contextCopy, v58);
              v63 = v59;
              if (v59 && objc_msgSend_errorType(v59, v60, v61, v62) == 168)
              {
                v67 = objc_msgSend_functionName(spec, v64, v65, v66);
                v70 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v68, v67, v69);
                v73 = objc_msgSend_errorValue_(TSCEErrorValue, v71, v70, v72);
                v74 = v89;
                v89 = v73;

                v75 = 1;
              }

              else
              {
                v75 = 0;
                v81 = TSCEGridDimensions::nextCoordRowMajorOrder(&v88, &v81);
              }

              v92[0] = v80;
              sub_22107C2C0(v92);
            }

            while ((v75 & 1) == 0 && v81.column != 0x7FFFFFFF && v81.row != 0x7FFFFFFF);
          }

          v16 = v89;
          v8 = v77;
          goto LABEL_22;
        }
      }
    }

    else if (!isTokenOrEmptyArg)
    {
      goto LABEL_12;
    }

    v53 = objc_msgSend_valueAtGridCoord_accessContext_(v79, v40, *&v81, v82);
    v54 = v89;
    v89 = v53;

    v81 = TSCEGridDimensions::nextCoordRowMajorOrder(&v88, &v81);
    goto LABEL_12;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v22, v15, v23);
LABEL_23:
  v11 = v78;

LABEL_24:

  return v16;
}

@end