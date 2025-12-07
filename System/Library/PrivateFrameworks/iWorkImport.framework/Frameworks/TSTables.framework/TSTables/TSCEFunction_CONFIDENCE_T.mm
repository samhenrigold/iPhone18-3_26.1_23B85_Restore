@interface TSCEFunction_CONFIDENCE_T
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CONFIDENCE_T

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v55 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v55);
  v11 = v55;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v54 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v54);
    v11 = v54;
    objc_msgSend_doubleRepresentation(v22, v23, v24, v25);
    if (v11)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v26, v11, v27);
    }

    else
    {
      v28 = *(*arguments + 16);
      v53 = 0;
      v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v29, context, spec, 2, &v53);
      v11 = v53;
      objc_msgSend_doubleRepresentation(v30, v31, v32, v33);
      if (v11)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v34, v11, v36);
      }

      else
      {
        v38 = trunc(v37);
        if (v38 == 1.0)
        {
          v39 = objc_msgSend_divideByZeroError(TSCEError, v34, v35, v36);
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41);
        }

        else
        {
          pthread_mutex_lock(&stru_27CFB4098);
          sub_221250524(v38 - 1, v19 * -0.5 + 1.0);
          pthread_mutex_unlock(&stru_27CFB4098);
          sub_2212B7230(__p, 3uLL);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v42, context, v43);
          }

          else
          {
            memset(&v51, 0, sizeof(v51));
          }

          sub_22114F414(__p, &v51);
          if (v20)
          {
            objc_msgSend_formatWithContext_(v20, v44, context, v45);
          }

          else
          {
            memset(&v51, 0, sizeof(v51));
          }

          sub_22114F414(__p, &v51);
          if (v28)
          {
            objc_msgSend_formatWithContext_(v28, v46, context, v47);
          }

          else
          {
            memset(&v51, 0, sizeof(v51));
          }

          sub_22114F414(__p, &v51);
          TSUDecimal::operator=();
          sub_221256020(__p, &v51);
          v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v48, &v50, &v51);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  return v18;
}

@end