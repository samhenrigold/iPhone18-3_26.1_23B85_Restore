@interface TSCEFunction_IF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if (objc_msgSend_isThunk(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_unwrapThunk_(context, v12, v8, v13);

    v8 = v14;
  }

  v47 = 0;
  v15 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v8, v12, context, spec, 0, &v47);
  v19 = v47;
  if (v19)
  {
    v20 = 0;
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v16, v19, v18);
LABEL_16:
    v33 = v21;
    goto LABEL_17;
  }

  v22 = *arguments;
  v23 = *(arguments + 1) - *arguments;
  if (v15)
  {
    if (v23 <= 8)
    {
      goto LABEL_20;
    }

    v32 = v22[1];
    goto LABEL_14;
  }

  if (v23 >= 0x11)
  {
    v24 = v22[2];
    if (objc_msgSend_isTokenOrEmptyArg(v24, v25, v26, v27))
    {
      v31 = objc_msgSend_unitlessZero(TSCENumberValue, v28, v29, v30);

      v24 = v31;
    }

    goto LABEL_15;
  }

  if (v23 == 16)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1057;
    v44 = 1;
    v45 = -50266102;
    v46 = 253;
    v32 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v16, 0, &v40);
LABEL_14:
    v24 = v32;
LABEL_15:
    v21 = v24;
    v20 = v21;
    goto LABEL_16;
  }

LABEL_20:
  v35 = objc_msgSend_functionName(spec, v16, v17, v18);
  v37 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v36, v35, ((*(arguments + 1) - *arguments) >> 3));
  v33 = objc_msgSend_raiseErrorOrConvert_(context, v38, v37, v39);

  v20 = 0;
LABEL_17:

  return v33;
}

@end