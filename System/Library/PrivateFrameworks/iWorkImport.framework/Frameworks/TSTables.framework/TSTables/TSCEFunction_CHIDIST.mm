@interface TSCEFunction_CHIDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHIDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v42 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v42);
  v11 = v42;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v41 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v41);
    v11 = v41;
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
      v35.n128_u64[0] = v34;
      sub_2213BCC9C(v35, v19);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v36, context, v37);
      }

      else
      {
        memset(v39, 0, sizeof(v39));
      }

      v33 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v36, v40, v39);
    }

    v18 = v33;
  }

  return v18;
}

@end