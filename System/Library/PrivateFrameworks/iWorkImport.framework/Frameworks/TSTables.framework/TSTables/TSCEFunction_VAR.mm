@interface TSCEFunction_VAR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index;
@end

@implementation TSCEFunction_VAR

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
    v12 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_VAR, v9, v8, context, spec, 0);
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
  v38 = 0;
  v39 = v14;
  v15 = sub_22121C524(contextCopy, spec, v6, vectorCopy, 0, 0, &v39, 0, 0, &v38);
  v17 = v16;
  v18 = v39;

  v22 = v38;
  v40[0] = v15;
  v40[1] = v17;
  if (v22)
  {
    goto LABEL_2;
  }

  if (objc_msgSend_deepType_(v18, v19, contextCopy, v21) != 5)
  {
    goto LABEL_9;
  }

  v37 = 0;
  v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, contextCopy, spec, v6, &v37);
  v34 = v37;
  if (!v34)
  {
    v22 = objc_msgSend_errorForDuration_argumentIndex_(v33, v35, spec, v6);

    if (v22)
    {
      goto LABEL_2;
    }

LABEL_9:
    v22 = 0;
    v32 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v19, v40, v21);
    goto LABEL_10;
  }

  v22 = v34;

LABEL_2:
  if (objc_msgSend_isMismatchedUnitsError(v22, v19, v20, v21))
  {
    v26 = objc_msgSend_functionName(spec, v23, v24, v25);
    v28 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v27, v26, 1);
    v31 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v29, v28, v30);

    goto LABEL_11;
  }

  v32 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v23, v22, v25);
LABEL_10:
  v31 = v32;
LABEL_11:

  return v31;
}

@end