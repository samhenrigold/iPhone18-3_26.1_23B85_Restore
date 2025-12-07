@interface TSCEFunction_ISERROR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISERROR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = *(arguments + 1) - *arguments;
  if ((v6 & 0x7FFFFFFF8) == 8)
  {
    v7 = **arguments;
    v29 = 0;
    HasError_context_outError = objc_msgSend_valueHasError_context_outError_(v7, v8, 0, context, &v29);
    v10 = v29;
    if (objc_msgSend_isCircularReferenceError(v10, v11, v12, v13))
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v14, v10, v15);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1057;
      v26 = 1;
      v27 = -50266102;
      v28 = 253;
      v16 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v14, HasError_context_outError, &v22);
    }
  }

  else
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec);
    v10 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v17, v7, (v6 >> 3));
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v18, v10, v19);
  }

  v20 = v16;

  return v20;
}

@end