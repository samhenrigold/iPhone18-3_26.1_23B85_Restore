@interface TSCEFunction_BASETONUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BASETONUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if (objc_msgSend_deepType_(v8, v9, context, v10) == 5)
  {
    v44 = 0;
    v12 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v11, context, spec, 0, &v44);
    v13 = v44;
    v43[0] = objc_msgSend_decimalRepresentation(v12, v14, v15, v16);
    v43[1] = v17;
    v19 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v17, v43, v18);
    v42 = v13;
    v21 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 0, &v42);
    v22 = v42;

    v25 = v22;
    if (!v22)
    {
LABEL_3:
      v26 = *(*arguments + 8);
      v40 = 0;
      v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, context, spec, 1, &v40);
      v25 = v40;
      v32 = objc_msgSend_trunc(v28, v29, v30, v31);

      if (v25)
      {
        objc_msgSend_raiseErrorOrConvert_(context, v33, v25, v35);
      }

      else
      {
        v38 = objc_msgSend_integer(v32, v33, v34, v35);
        sub_2211F78B4(context, spec, v21, v38, 0, 0);
      }
      v37 = ;

      goto LABEL_9;
    }
  }

  else
  {
    v41 = 0;
    v36 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v11, context, spec, 0, &v41);
    v25 = v41;
    v21 = v36;
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  v37 = objc_msgSend_raiseErrorOrConvert_(context, v23, v25, v24);
LABEL_9:

  return v37;
}

@end