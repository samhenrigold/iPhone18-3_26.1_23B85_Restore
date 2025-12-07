@interface TSCEFunction_LAMBDA_APPLY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LAMBDA_APPLY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = ((*(arguments + 1) - *arguments) >> 3) - 1;
  v9 = *(*arguments + 8 * v8);
  v46 = 0;
  v11 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, context, spec, v8, &v46);
  v15 = v46;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v15, v14);
LABEL_12:
    v22 = v16;
    goto LABEL_13;
  }

  v20 = objc_msgSend_functor(v11, v12, v13, v14);
  if (v8 != v20->_numArgs)
  {
    v40 = objc_msgSend_functionName(spec, v17, v18, v19);
    v15 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v41, v40, v20->_numArgs + 1, (v8 + 1));

    v16 = objc_msgSend_raiseErrorOrConvert_(context, v42, v15, v43);
    goto LABEL_12;
  }

  memset(v45, 0, sizeof(v45));
  sub_2210ED528(v45, v8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v47 = *(*arguments + 8 * i);
      sub_221179A54(v45, &v47);
    }
  }

  v22 = TSCEFunctor::evaluateWithArgs(v20, context, v45);
  v25 = objc_msgSend_errorWithContext_(v22, v23, context, v24);
  v29 = v25;
  if (v25 && objc_msgSend_errorType(v25, v26, v27, v28) == 168)
  {
    v33 = objc_msgSend_functionName(spec, v30, v31, v32);
    v36 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v34, v33, v35);
    v39 = objc_msgSend_errorValue_(TSCEErrorValue, v37, v36, v38);

    v22 = v39;
  }

  v47 = v45;
  sub_22107C2C0(&v47);
  v15 = 0;
LABEL_13:

  return v22;
}

@end