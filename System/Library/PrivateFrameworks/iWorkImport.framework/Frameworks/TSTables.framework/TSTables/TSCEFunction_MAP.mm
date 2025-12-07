@interface TSCEFunction_MAP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MAP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = ((*(arguments + 1) - *arguments) >> 3) - 1;
  v9 = *(*arguments + 8 * v8);
  v105 = 0;
  v86 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, context, spec, v8, &v105);
  v14 = v105;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
LABEL_30:
    v76 = v15;
    goto LABEL_31;
  }

  v89 = objc_msgSend_functor(v86, v11, v12, v13);
  if (v8 != v89->_numArgs)
  {
    v77 = objc_msgSend_functionName(spec, v16, v17, v18);
    v14 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v78, v77, v89->_numArgs + 1, (v8 + 1));

    v15 = objc_msgSend_raiseErrorOrConvert_(context, v79, v14, v80);
    goto LABEL_30;
  }

  v102 = 0;
  v103 = 0;
  v104 = 0;
  sub_221299CEC(&v102, v8);
  v101 = 0;
  if (v8)
  {
    v22 = 0;
    while (1)
    {
      if (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 8 * v22), v19, v20, v21))
      {
        v82 = objc_msgSend_requiredArgumentMissingError(TSCEError, v23, v24, v25);
        v76 = objc_msgSend_errorValue_(TSCEErrorValue, v83, v82, v84);

        goto LABEL_35;
      }

      v26 = *(*arguments + 8 * v22);
      v100 = 0;
      v27 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v26, v23, context, spec, v22, 0, &v100);
      v14 = v100;
      v94[0] = v27;
      if (v14)
      {
        break;
      }

      v31 = objc_msgSend_dimensions(v27, v28, v29, v30);
      if (v101.width < v31)
      {
        v101.width = v31;
      }

      if (v101.height < HIDWORD(v31))
      {
        v101.height = HIDWORD(v31);
      }

      sub_22121488C(&v102, v94);

      if (v8 == ++v22)
      {
        goto LABEL_13;
      }
    }

    v76 = objc_msgSend_raiseErrorOrConvert_(context, v28, v14, v30);
  }

  else
  {
LABEL_13:
    v85 = v9;
    v88 = objc_opt_new();
    v94[0] = context;
    v94[1] = spec;
    v95 = 0;
    v96[0] = 0;
    *(v96 + 7) = 0;
    v97 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v98 = 0;
    v99 = 0;
    v93 = 0;
    v87 = v94[0];
    do
    {
      memset(v92, 0, sizeof(v92));
      v32 = v102;
      v33 = v103;
      while (v32 != v33)
      {
        v34 = *v32;
        v38 = objc_msgSend_dimensions(v34, v35, v36, v37);
        if (v93.row >= HIDWORD(v38) || v93.column >= v38)
        {
          v43 = objc_msgSend_functionName(spec, v39, v40, v41);
          v46 = objc_msgSend_outOfArrayBoundsError_(TSCEError, v44, v43, v45);
          v91 = objc_msgSend_errorValue_(TSCEErrorValue, v47, v46, v48);
          sub_2210ED5B8(v92, &v91);
        }

        else
        {
          v106[0] = objc_msgSend_valueAtGridCoord_accessContext_(v34, v39, *&v93, v94);
          sub_221179A54(v92, v106);
        }

        ++v32;
      }

      v49 = TSCEFunctor::evaluateWithArgs(v89, v87, v92);
      v52 = objc_msgSend_errorWithContext_(v49, v50, v87, v51);
      v56 = v52;
      if (v52 && objc_msgSend_errorType(v52, v53, v54, v55) == 168)
      {
        v59 = objc_msgSend_functionName(spec, v53, v57, v58);
        v62 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v60, v59, v61);
        v65 = objc_msgSend_errorValue_(TSCEErrorValue, v63, v62, v64);

        v49 = v65;
      }

      objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(self, v53, v87, spec, v92, v49, v85);
      objc_msgSend_clearAllWarnings(v87, v66, v67, v68);
      objc_msgSend_setValue_atCoord_(v88, v69, v49, &v93);
      v93 = TSCEGridDimensions::nextCoordRowMajorOrder(&v101, &v93);

      v106[0] = v92;
      sub_22107C2C0(v106);
    }

    while (v93.column != 0x7FFFFFFF && v93.row != 0x7FFFFFFF);
    v70 = [TSCEDenseGrid alloc];
    v73 = objc_msgSend_initWithValueGrid_(v70, v71, v88, v72);
    v9 = v85;
    v76 = objc_msgSend_gridValue_(TSCEGridValue, v74, v73, v75);

LABEL_35:
    v14 = 0;
  }

  v94[0] = &v102;
  sub_22107C2C0(v94);
LABEL_31:

  return v76;
}

@end