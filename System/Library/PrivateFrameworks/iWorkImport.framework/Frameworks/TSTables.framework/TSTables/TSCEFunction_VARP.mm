@interface TSCEFunction_VARP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index;
@end

@implementation TSCEFunction_VARP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v20 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, &v20);
  v11 = v20;
  if (v11)
  {
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v9, v11, v10);
  }

  else
  {
    v12 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_VARP, v9, v8, context, spec, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v13, context, v14);
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    TSCEFormat::TSCEFormat(&v19, &v18);
    objc_msgSend_setFormat_(v12, v15, &v19, v16);
  }

  return v12;
}

+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index
{
  v6 = *&index;
  vectorCopy = vector;
  contextCopy = context;
  v14 = objc_msgSend_nilValue(TSCENilValue, v11, v12, v13);
  v37 = 0;
  v38 = v14;
  v15 = sub_22121C524(contextCopy, spec, v6, vectorCopy, 1, 0, &v38, 0, 0, &v37);
  v17 = v16;
  v18 = v38;

  v22 = v37;
  v39[0] = v15;
  v39[1] = v17;
  if (v22)
  {
LABEL_2:
    if (objc_msgSend_isMismatchedUnitsError(v22, v19, v20, v21))
    {
      v26 = objc_msgSend_functionName(spec, v23, v24, v25);
      v28 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v27, v26, 1);
      v31 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v29, v28, v30);
    }

    else
    {
      v31 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v23, v22, v25);
    }

    goto LABEL_11;
  }

  if (objc_msgSend_deepType_(v18, v19, contextCopy, v21) == 5)
  {
    v36 = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, contextCopy, spec, v6, &v36);
    v33 = v36;
    if (v33)
    {
      v22 = v33;

      goto LABEL_2;
    }

    v22 = objc_msgSend_errorForDuration_argumentIndex_(v32, v34, spec, v6);

    if (v22)
    {
      goto LABEL_2;
    }
  }

  v31 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v19, v39, v21);
LABEL_11:

  return v31;
}

@end