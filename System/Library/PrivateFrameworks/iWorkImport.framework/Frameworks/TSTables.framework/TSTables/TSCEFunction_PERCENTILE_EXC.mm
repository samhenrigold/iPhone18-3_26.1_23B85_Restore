@interface TSCEFunction_PERCENTILE_EXC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERCENTILE_EXC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *(*arguments + 8);
  v31 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 1, &v31);
  v11 = v31;
  v30[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v30[1] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v18 = **arguments;
    v29 = 0;
    v19 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v18, v15, context, spec, 0, 1, &v29);
    v11 = v29;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v20, v11, v21);
    }

    else
    {
      v17 = objc_msgSend_computeWithVector_functionSpec_vector_percentile_isExclusive_ignoreError_(TSCEFunction_PERCENTILE, v20, context, spec, v19, v30, 1, 0);
      if (v19)
      {
        objc_msgSend_formatWithContext_(v19, v22, context, v23);
      }

      else
      {
        memset(&v27, 0, sizeof(v27));
      }

      TSCEFormat::TSCEFormat(&v28, &v27);
      objc_msgSend_setFormat_(v17, v24, &v28, v25);
    }
  }

  return v17;
}

@end