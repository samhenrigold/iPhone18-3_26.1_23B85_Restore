@interface TSCEFunction_NORMSINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NORMSINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v34 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v34);
  v10 = v34;
  objc_msgSend_doubleRepresentation(v9, v11, v12, v13);
  if (v10)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v10, v16);
  }

  else
  {
    v19 = v17;
    if (objc_msgSend_hasUnits(v9, v14, v15, v16))
    {
      v23 = objc_msgSend_functionName(spec, v20, v21, v22);
      v25 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v24, v23, 1);
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27);

      goto LABEL_10;
    }

    pthread_mutex_lock(&stru_27CFB4098);
    sub_2214A7870(v19);
    pthread_mutex_unlock(&stru_27CFB4098);
    TSUDecimal::operator=();
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v29, context, v30);
    }

    else
    {
      memset(v32, 0, sizeof(v32));
    }

    v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v29, v33, v32);
  }

  v28 = v18;
LABEL_10:

  return v28;
}

@end