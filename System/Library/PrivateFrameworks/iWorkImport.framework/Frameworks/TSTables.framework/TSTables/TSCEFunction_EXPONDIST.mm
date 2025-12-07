@interface TSCEFunction_EXPONDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EXPONDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v47 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v47);
  v11 = v47;
  v46[1] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v46[2] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v18 = *(*arguments + 8);
    v46[0] = 0;
    v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, v46);
    v11 = v46[0];
    *&v45 = objc_msgSend_decimalRepresentation(v20, v21, v22, v23);
    *(&v45 + 1) = v24;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v24, v11, v25);
    }

    else
    {
      v26 = *(*arguments + 16);
      v44 = 0;
      v28 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v26, v27, context, spec, 2, &v44);
      v11 = v44;
      if (v11)
      {
        v31 = objc_msgSend_raiseErrorOrConvert_(context, v29, v11, v30);
      }

      else
      {
        TSUDecimal::operator=();
        if (v28)
        {
          TSUDecimal::operator=();
          *&v39[0] = TSUDecimal::operator-();
          *(&v39[0] + 1) = v32;
          TSUDecimal::operator*=();
          v40 = v39[0];
          TSUDecimal::doubleValue(&v40);
          exp(v33);
          TSUDecimal::operator=();
          v41 = v39[0];
          v39[0] = v42;
          TSUDecimal::operator-=();
        }

        else
        {
          *&v39[0] = TSUDecimal::operator-();
          *(&v39[0] + 1) = v36;
          TSUDecimal::operator*=();
          v41 = v39[0];
          TSUDecimal::doubleValue(&v41);
          exp(v37);
          TSUDecimal::operator=();
          v42 = v39[0];
          v39[0] = v45;
          TSUDecimal::operator*=();
        }

        v43 = v39[0];
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v34, context, v35);
        }

        else
        {
          memset(v39, 0, sizeof(v39));
        }

        v31 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v34, &v43, v39);
      }

      v17 = v31;
    }
  }

  return v17;
}

@end