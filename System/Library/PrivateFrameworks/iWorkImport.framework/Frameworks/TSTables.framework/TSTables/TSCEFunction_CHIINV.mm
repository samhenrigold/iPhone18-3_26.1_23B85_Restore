@interface TSCEFunction_CHIINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHIINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v41 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v41);
  v11 = v41;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v40 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v40);
    v11 = v40;
    v26 = objc_msgSend_trunc(v22, v23, v24, v25);

    objc_msgSend_doubleRepresentation(v26, v27, v28, v29);
    if (v11)
    {
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v30, v11, v31);
    }

    else
    {
      v34 = v32;
      pthread_mutex_lock(&stru_27CFB4098);
      sub_2213BCCF4(v34, v19);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v35, context, v36);
      }

      else
      {
        memset(v38, 0, sizeof(v38));
      }

      v33 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v35, v39, v38);
    }

    v18 = v33;
  }

  return v18;
}

@end