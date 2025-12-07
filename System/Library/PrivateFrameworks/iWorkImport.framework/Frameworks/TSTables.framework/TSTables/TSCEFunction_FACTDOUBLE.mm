@interface TSCEFunction_FACTDOUBLE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FACTDOUBLE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  TSUDecimal::operator=();
  v10 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v8, &v37, v9);
  v39 = 0;
  v12 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v11, context, spec, 0, &v39);
  v13 = v39;
  v17 = objc_msgSend_floor(v12, v14, v15, v16);

  if (v13)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v18, v13, v19);
    goto LABEL_12;
  }

  TSUDecimal::operator=();
  v23 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v21, &v37, v22);
  v38 = 0;
  v25 = objc_msgSend_eq_outError_(v17, v24, v10, &v38);
  v26 = v38;
  v13 = v26;
  if (v25)
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v27, context, v28);
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    TSCEFormat::TSCEFormat(&v37, &v36);
    objc_msgSend_setFormat_(v23, v30, &v37, v31);
    v29 = v23;
  }

  else
  {
    if (!v26)
    {
      TSUDecimal::operator=();
      v35 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v33, &v37, v34);
      v20 = sub_2212570BC(context, spec, v17, v35, v23);

      goto LABEL_11;
    }

    v29 = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v28);
  }

  v20 = v29;
LABEL_11:

LABEL_12:

  return v20;
}

@end