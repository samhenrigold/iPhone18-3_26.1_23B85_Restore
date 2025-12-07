@interface TSCEFunction_GAMMAINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GAMMAINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v46 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v46);
  v11 = v46;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v45 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v45);
    v11 = v45;
    objc_msgSend_doubleRepresentation(v22, v23, v24, v25);
    if (v11)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v26, v11, v27);
    }

    else
    {
      v29 = v28;
      v30 = *(*arguments + 16);
      v44 = 0;
      v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v44);
      v11 = v44;
      objc_msgSend_doubleRepresentation(v32, v33, v34, v35);
      if (v11)
      {
        v38 = objc_msgSend_raiseErrorOrConvert_(context, v36, v11, v37);
      }

      else
      {
        pthread_mutex_lock(&stru_27CFB4098);
        sub_2211F2F2C(v29, 1.0 - v19);
        pthread_mutex_unlock(&stru_27CFB4098);
        TSUDecimal::operator=();
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v39, context, v40);
        }

        else
        {
          memset(v42, 0, sizeof(v42));
        }

        v38 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v39, v43, v42);
      }

      v18 = v38;
    }
  }

  return v18;
}

@end