@interface TSCEFunction_IFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *(arguments + 1) - *arguments;
  if ((v7 >> 3) >= 255)
  {
    v8 = objc_msgSend_functionName(spec, a2, context, spec);
    v10 = objc_msgSend_tooManyArguments_maximum_provided_(TSCEError, v9, v8, 254, (v7 >> 3) & 0x7FFFFFFF);
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
LABEL_14:
    v42 = v13;

    goto LABEL_15;
  }

  if ((v7 & 8) != 0)
  {
    v8 = objc_msgSend_functionName(spec, a2, context, spec);
    v10 = objc_msgSend_invalidArgumentPairingsErrorForFunctionName_hasInitialUnrelatedArgument_(TSCEError, v39, v8, 0);
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v40, v10, v41);
    goto LABEL_14;
  }

  v14 = (v7 >> 3) >> 1;
  if (v14 < 1)
  {
LABEL_12:
    v8 = objc_msgSend_functionName(spec, a2, context, spec);
    v10 = objc_msgSend_noConditionIsTrueErrorForFunctionName_(TSCEError, v35, v8, v36);
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v37, v10, v38);
    goto LABEL_14;
  }

  v16 = 0;
  v17 = 2 * v14;
  while (1)
  {
    v18 = *(*arguments + 8 * v16);
    if (objc_msgSend_isThunk(v18, v19, v20, v21))
    {
      v25 = objc_msgSend_unwrapThunk_(context, v22, v18, v24);

      v18 = v25;
    }

    v26 = objc_msgSend_nativeType(v18, v22, v23, v24);
    v29 = objc_msgSend_deepType_(v18, v27, context, v28);
    if ((TSCEArgumentAccessor::valueSufficesForArgumentType(v18, 2, v26, v29, context, 0) & 1) == 0)
    {
      v44 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v30, v18, context, spec, v16);
      v42 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46);

      v47 = 0;
LABEL_20:
      v48 = 0;
      goto LABEL_22;
    }

    v49 = 0;
    v31 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v18, v30, context, spec, v16, &v49);
    v32 = v49;
    if (v32)
    {
      v47 = v32;
      v42 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v34);
      goto LABEL_20;
    }

    if (v31)
    {
      break;
    }

    v16 += 2;
    if (v17 == v16)
    {
      goto LABEL_12;
    }
  }

  v48 = *(*arguments + 8 * v16 + 8);
  v47 = 0;
  v42 = v48;
LABEL_22:

LABEL_15:

  return v42;
}

@end