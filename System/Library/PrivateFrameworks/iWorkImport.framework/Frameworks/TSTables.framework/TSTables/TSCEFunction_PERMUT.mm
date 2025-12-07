@interface TSCEFunction_PERMUT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERMUT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  v10 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v8, v50, v9);
  v11 = **arguments;
  v49 = 0;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 1, &v49);
  v14 = v49;
  v18 = objc_msgSend_trunc(v13, v15, v16, v17);

  if (v14)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v14, v20);
  }

  else
  {
    v22 = *(*arguments + 8);
    v48 = 0;
    v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v48);
    v14 = v48;
    v28 = objc_msgSend_trunc(v24, v25, v26, v27);

    if (v14)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v29, v14, v30);
    }

    else
    {
      v47 = 0;
      v31 = objc_msgSend_subtract_functionSpec_outError_(v18, v29, v28, spec, &v47);
      v14 = v47;
      if (v14)
      {
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v32, v14, v34);
      }

      else
      {
        v46 = objc_msgSend_zero(TSCENumberValue, v32, v33, v34);
        if (objc_msgSend_lt_(v31, v35, v46, v36))
        {
          v40 = objc_msgSend_functionName(spec, v37, v38, v39);
          v42 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v41, v40, 1, 2, 0, 1);
          v21 = objc_msgSend_raiseErrorOrConvert_(context, v43, v42, v44);
        }

        else
        {
          v21 = sub_2212570BC(context, spec, v11, v10, v31);
        }
      }
    }
  }

  return v21;
}

@end