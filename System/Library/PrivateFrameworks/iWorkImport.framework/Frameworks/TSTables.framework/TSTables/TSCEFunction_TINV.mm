@interface TSCEFunction_TINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v37 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v37);
  v11 = v37;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v36 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v36);
    v11 = v36;
    objc_msgSend_doubleRepresentation(v22, v23, v24, v25);
    if (v11)
    {
      v29 = objc_msgSend_raiseErrorOrConvert_(context, v26, v11, v27);
    }

    else
    {
      v30 = v28;
      pthread_mutex_lock(&stru_27CFB4098);
      sub_221250524(v30, v19 * -0.5 + 1.0);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v31, context, v32);
      }

      else
      {
        memset(v34, 0, sizeof(v34));
      }

      v29 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v31, v35, v34);
    }

    v18 = v29;
  }

  return v18;
}

@end