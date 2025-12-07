@interface TSCEFunction_WEIBULL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_WEIBULL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v55 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v55);
  v11 = v55;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  v16 = v15;

  v17 = *(*arguments + 8);
  v54 = v11;
  v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v18, context, spec, 1, &v54);
  v20 = v54;

  objc_msgSend_doubleRepresentation(v19, v21, v22, v23);
  v25 = v24;

  v26 = *(*arguments + 16);
  v53 = v20;
  v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, context, spec, 2, &v53);
  v29 = v53;

  objc_msgSend_doubleRepresentation(v28, v30, v31, v32);
  v34 = v33;

  if (v29)
  {
    v37 = objc_msgSend_raiseErrorOrConvert_(context, v35, v29, v36);
  }

  else
  {
    v38 = *(*arguments + 24);
    v52 = 0;
    v40 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v38, v39, context, spec, 3, &v52);
    v29 = v52;
    if (v29)
    {
      v43 = objc_msgSend_raiseErrorOrConvert_(context, v41, v29, v42);
    }

    else
    {
      if (v40)
      {
        v44 = pow(v16 / v34, v25);
        expm1(-v44);
      }

      else
      {
        v45 = v16 / v34;
        pow(v45, v25 + -1.0);
        v46 = pow(v45, v25);
        exp(-v46);
      }

      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v47, context, v48);
      }

      else
      {
        memset(v50, 0, sizeof(v50));
      }

      v43 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v47, v51, v50);
    }

    v37 = v43;
  }

  return v37;
}

@end