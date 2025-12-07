@interface TSCEFunction_QUARTILE_EXC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_QUARTILE_EXC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v32 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 1, &v32);
  v10 = v32;
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
  }

  else
  {
    v15 = *(*arguments + 8);
    v31 = 0;
    v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v16, context, spec, 1, &v31);
    v13 = v31;
    objc_msgSend_integer(v17, v18, v19, v20);
    if (v13)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v21, v13, v22);
    }

    else
    {
      TSUDecimal::operator=();
      v14 = objc_msgSend_computeWithVector_functionSpec_vector_percentile_isExclusive_ignoreError_(TSCEFunction_PERCENTILE, v23, context, spec, v9, &v30, 1, 0);
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v24, context, v25);
      }

      else
      {
        memset(&v29, 0, sizeof(v29));
      }

      TSCEFormat::TSCEFormat(&v30, &v29);
      objc_msgSend_setFormat_(v14, v26, &v30, v27);
    }
  }

  return v14;
}

@end