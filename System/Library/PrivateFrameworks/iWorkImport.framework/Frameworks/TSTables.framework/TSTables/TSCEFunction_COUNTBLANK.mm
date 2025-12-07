@interface TSCEFunction_COUNTBLANK
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUNTBLANK

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  if (objc_msgSend_nativeType(v7, v8, v9, v10) == 9 && (objc_msgSend_errorWithContext_(v7, v11, context, v12), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
  }

  else
  {
    v24 = 0;
    v16 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v11, context, spec, 0, 0, &v24);
    v14 = v24;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v17, v14, v18);
    }

    else
    {
      v15 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v17, v16, context, spec, 0, 2);
      TSCEFormat::TSCEFormat(&v22, 256);
      TSCEFormat::TSCEFormat(&v23, &v22);
      objc_msgSend_setFormat_(v15, v19, &v23, v20);
    }
  }

  return v15;
}

@end