@interface TSCEFunction_BYCOL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BYCOL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_functionIndex(spec, a2, context, spec);
  if (objc_msgSend_isTokenOrEmptyArg(**arguments, v9, v10, v11))
  {
    v15 = objc_msgSend_requiredArgumentMissingError(TSCEError, v12, v13, v14);
    v18 = objc_msgSend_errorValue_(TSCEErrorValue, v16, v15, v17);

    goto LABEL_20;
  }

  v19 = **arguments;
  v118 = 0;
  v20 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v19, v12, context, spec, 0, 0, &v118);
  v21 = v118;
  if (!v21)
  {
    v25 = *(*arguments + 8);
    v117 = 0;
    v27 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v25, v26, context, spec, 1, &v117);
    v24 = v117;
    if (v24)
    {
      v31 = objc_msgSend_raiseErrorOrConvert_(context, v28, v24, v30);
    }

    else
    {
      v109 = objc_msgSend_functor(v27, v28, v29, v30);
      if (v109->_numArgs == 1)
      {
        v103 = v25;
        v104 = v20;
        v102 = v27;
        v35 = objc_msgSend_dimensions(v20, v32, v33, v34);
        v107 = objc_msgSend_asValueGrid_(v20, v36, context, v37);
        v108 = objc_opt_new();
        v38 = HIDWORD(v35);
        contextCopy = context;
        v105 = HIDWORD(v35);
        v106 = v35;
        if (v8 == 369)
        {
          if (v38)
          {
            v41 = 0;
            do
            {
              v115 = 0;
              v116 = v41;
              v42 = objc_msgSend_subGridAtGridCoord_width_height_(v107, v39, &v115, v35, 1);
              v43 = [TSCEDenseGrid alloc];
              v46 = objc_msgSend_initWithValueGrid_(v43, v44, v42, v45);
              v112 = 0;
              v113 = 0;
              v114 = 0;
              v111 = objc_msgSend_gridValue_(TSCEGridValue, v47, v46, v48);
              sub_2210ED5B8(&v112, &v111);

              v49 = TSCEFunctor::evaluateWithArgs(v109, contextCopy, &v112);
              v52 = objc_msgSend_errorWithContext_(v49, v50, contextCopy, v51);
              v56 = v52;
              if (v52 && objc_msgSend_errorType(v52, v53, v54, v55) == 168)
              {
                v59 = objc_msgSend_functionName(spec, v53, v57, v58);
                v62 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v60, v59, v61);
                v65 = objc_msgSend_errorValue_(TSCEErrorValue, v63, v62, v64);

                v49 = v65;
              }

              objc_msgSend_setValue_atCoord_(v108, v53, v49, &v115);

              v119 = &v112;
              sub_22107C2C0(&v119);

              ++v41;
              v35 = v106;
            }

            while (v105 != v41);
          }
        }

        else if (v35)
        {
          v71 = 0;
          do
          {
            v115 = v71;
            v116 = 0;
            v72 = objc_msgSend_subGridAtGridCoord_width_height_(v107, v39, &v115, 1, v38);
            v73 = [TSCEDenseGrid alloc];
            v76 = objc_msgSend_initWithValueGrid_(v73, v74, v72, v75);
            v112 = 0;
            v113 = 0;
            v114 = 0;
            v110 = objc_msgSend_gridValue_(TSCEGridValue, v77, v76, v78);
            sub_2210ED5B8(&v112, &v110);

            v79 = TSCEFunctor::evaluateWithArgs(v109, contextCopy, &v112);
            v82 = objc_msgSend_errorWithContext_(v79, v80, contextCopy, v81);
            v86 = v82;
            if (v82 && objc_msgSend_errorType(v82, v83, v84, v85) == 168)
            {
              v89 = objc_msgSend_functionName(spec, v83, v87, v88);
              v92 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v90, v89, v91);
              v95 = objc_msgSend_errorValue_(TSCEErrorValue, v93, v92, v94);

              v79 = v95;
            }

            objc_msgSend_setValue_atCoord_(v108, v83, v79, &v115);

            v119 = &v112;
            sub_22107C2C0(&v119);

            ++v71;
            v38 = v105;
          }

          while (v106 != v71);
        }

        v96 = [TSCEDenseGrid alloc];
        v99 = objc_msgSend_initWithValueGrid_(v96, v97, v108, v98);
        v27 = v102;
        v18 = objc_msgSend_gridValue_(TSCEGridValue, v100, v99, v101);

        v24 = 0;
        v25 = v103;
        v20 = v104;
        goto LABEL_18;
      }

      v66 = objc_msgSend_functionName(spec, v32, v33, v34);
      v24 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v67, v66, v109->_numArgs + 1, 2);

      v31 = objc_msgSend_raiseErrorOrConvert_(context, v68, v24, v69);
    }

    v18 = v31;
LABEL_18:

    goto LABEL_19;
  }

  v24 = v21;
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v22, v21, v23);
LABEL_19:

LABEL_20:

  return v18;
}

@end