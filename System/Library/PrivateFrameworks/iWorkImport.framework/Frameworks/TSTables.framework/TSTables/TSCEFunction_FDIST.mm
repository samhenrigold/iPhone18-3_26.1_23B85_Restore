@interface TSCEFunction_FDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v56 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v56);
  v11 = v56;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v55 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v55);
    v11 = v55;
    v26 = objc_msgSend_trunc(v22, v23, v24, v25);

    objc_msgSend_doubleRepresentation(v26, v27, v28, v29);
    if (v11)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v30, v11, v31);
    }

    else
    {
      v33 = v32;
      v34 = *(*arguments + 16);
      v54 = 0;
      v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, &v54);
      v11 = v54;
      v40 = objc_msgSend_trunc(v36, v37, v38, v39);

      objc_msgSend_doubleRepresentation(v40, v41, v42, v43);
      if (v11)
      {
        v47 = objc_msgSend_raiseErrorOrConvert_(context, v44, v11, v45);
      }

      else
      {
        v48 = v46;
        pthread_mutex_lock(&stru_27CFB4098);
        sub_22137C1A8(v33, v48, v19);
        pthread_mutex_unlock(&stru_27CFB4098);
        TSUDecimal::operator=();
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v49, context, v50);
        }

        else
        {
          memset(v52, 0, sizeof(v52));
        }

        v47 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v49, v53, v52);
      }

      v18 = v47;
    }
  }

  return v18;
}

@end