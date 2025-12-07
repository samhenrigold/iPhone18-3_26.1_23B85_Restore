@interface TSCEFunction_COUNTA
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUNTA

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v18 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 0, &v18);
  v11 = v18;
  if (v11)
  {
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v9, v11, v10);
  }

  else
  {
    v12 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v9, v8, context, spec, 0, 1);
    TSCEFormat::TSCEFormat(&v16, 256);
    TSCEFormat::TSCEFormat(&v17, &v16);
    objc_msgSend_setFormat_(v12, v13, &v17, v14);
  }

  return v12;
}

@end