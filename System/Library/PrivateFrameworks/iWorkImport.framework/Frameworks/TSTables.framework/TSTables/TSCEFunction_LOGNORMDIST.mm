@interface TSCEFunction_LOGNORMDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOGNORMDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v52 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v52);
  v11 = v52;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v19 = v17;
    v20 = *(*arguments + 8);
    v51 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v51);
    v11 = v51;
    objc_msgSend_doubleRepresentation(v22, v23, v24, v25);
    if (v11)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v26, v11, v27);
    }

    else
    {
      v29 = v28;
      v30 = *(*arguments + 16);
      v50 = 0;
      v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v50);
      v11 = v50;
      objc_msgSend_doubleRepresentation(v32, v33, v34, v35);
      if (v11)
      {
        v39 = objc_msgSend_raiseErrorOrConvert_(context, v36, v11, v37);
      }

      else
      {
        v40 = v38;
        v41 = log(v19);
        objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v42, v43, v44, ((v41 - v29) / v40));
        TSUDecimal::operator=();
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v45, context, v46);
        }

        else
        {
          memset(v48, 0, sizeof(v48));
        }

        v39 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v45, v49, v48);
      }

      v18 = v39;
    }
  }

  return v18;
}

@end