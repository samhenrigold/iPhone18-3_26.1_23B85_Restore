@interface TSCEFunction_CODE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CODE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v37 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v37);
  v13 = v37;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    if (v9 && objc_msgSend_length(v9, v10, v11, v12))
    {
      v15 = sub_22157EFF8(v9, 1);
      v17 = objc_msgSend_substringWithRange_(v9, v16, 0, v15);
      v20 = objc_msgSend_dataUsingEncoding_(v17, v18, 2617245952, v19);
      v21 = v20;
      objc_msgSend_bytes(v21, v22, v23, v24);
      objc_msgSend_length(v20, v25, v26, v27);
      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(v35, 256);
      v33 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v32, v36, v35);
    }

    else
    {
      v17 = objc_msgSend_functionName(spec, v10, v11, v12);
      v20 = objc_msgSend_nonEmptyStringRequiredErrorForFunctionName_(TSCEError, v28, v17, v29);
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v30, v20, v31);
    }

    v14 = v33;
  }

  return v14;
}

@end