@interface TSCEFunction_DEGREES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DEGREES

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v33 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v33);
  v13 = v33;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    if (objc_msgSend_hasUnits(v9, v10, v11, v12))
    {
      v18 = objc_msgSend_functionName(spec, v15, v16, v17);
      v20 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v19, v18, 1);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v22);
    }

    else
    {
      TSUDecimal::operator=();
      v18 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v23, &v32, v24);
      v14 = objc_msgSend_multiply_context_(v9, v25, v18, context);
      if (v7)
      {
        objc_msgSend_formatWithContext_(v7, v26, context, v27);
      }

      else
      {
        memset(&v31, 0, sizeof(v31));
      }

      TSCEFormat::TSCEFormat(&v32, &v31);
      objc_msgSend_setFormat_(v14, v28, &v32, v29);
    }
  }

  return v14;
}

@end