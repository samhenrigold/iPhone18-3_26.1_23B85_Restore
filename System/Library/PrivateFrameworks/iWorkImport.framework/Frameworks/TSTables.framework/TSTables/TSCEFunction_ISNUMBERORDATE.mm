@interface TSCEFunction_ISNUMBERORDATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISNUMBERORDATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(TSCEFunction_ISNUMBER, a2, context, spec);
  if (objc_msgSend_BOOLean(v8, v9, v10, v11))
  {
    v13 = v8;
  }

  else
  {
    v13 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_(TSCEFunction_ISDATE, v12, context, spec, arguments);
  }

  v14 = v13;

  return v14;
}

@end