@interface TSCEFunction_GAMMADIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GAMMADIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v58 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v58);
  v11 = v58;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v57 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v57);
    v11 = v57;
    objc_msgSend_doubleRepresentation(v22, v23, v24, v25);
    if (v11)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v26, v11, v27);
    }

    else
    {
      v29 = v28;
      v30 = *(*arguments + 16);
      v56 = 0;
      v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v56);
      v11 = v56;
      objc_msgSend_doubleRepresentation(v32, v33, v34, v35);
      if (v11)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v36, v11, v37);
      }

      else
      {
        v39 = v38;
        v40 = *(*arguments + 24);
        v55 = 0;
        v42 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v40, v41, context, spec, 3, &v55);
        v11 = v55;
        if (v11)
        {
          v45 = objc_msgSend_raiseErrorOrConvert_(context, v43, v11, v44);
        }

        else
        {
          if (v42)
          {
            pthread_mutex_lock(&stru_27CFB4098);
            v46.n128_f64[0] = 1.0 / v39;
            sub_2213D8990(v46, v29, v19);
            pthread_mutex_unlock(&stru_27CFB4098);
          }

          else
          {
            v47 = -v19 / v39 + (v29 + -1.0) * log(v19);
            v48 = v47 - lgamma(v29);
            v49 = log(v39);
            exp(v48 - v29 * v49);
          }

          TSUDecimal::operator=();
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v50, context, v51);
          }

          else
          {
            memset(v53, 0, sizeof(v53));
          }

          v45 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v50, v54, v53);
        }

        v18 = v45;
      }
    }
  }

  return v18;
}

@end