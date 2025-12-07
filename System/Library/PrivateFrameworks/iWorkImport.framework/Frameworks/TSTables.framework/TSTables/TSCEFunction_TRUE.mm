@interface TSCEFunction_TRUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TRUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v5 = *(arguments + 1) - *arguments;
  if ((v5 >> 3) < 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1057;
    v18 = 1;
    v19 = -50266102;
    v20 = 253;
    v12 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, a2, 1, &v14);
  }

  else
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec);
    v9 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v8, v7, (v5 >> 3) & 0x7FFFFFFF);
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v11);
  }

  return v12;
}

@end