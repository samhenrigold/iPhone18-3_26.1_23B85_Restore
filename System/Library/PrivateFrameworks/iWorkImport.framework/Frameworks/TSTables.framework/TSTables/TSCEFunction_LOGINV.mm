@interface TSCEFunction_LOGINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOGINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v60 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v60);
  v11 = v60;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v17);
  }

  else
  {
    v20 = v18;
    if (objc_msgSend_hasUnits(v10, v15, v16, v17))
    {
      v24 = objc_msgSend_functionName(spec, v21, v22, v23);
      v26 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v25, v24, 1);
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v28);
    }

    else
    {
      v26 = *(*arguments + 8);
      v59 = 0;
      v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v29, context, spec, 1, &v59);
      v24 = v59;
      objc_msgSend_doubleRepresentation(v30, v31, v32, v33);
      if (v24)
      {
        v19 = objc_msgSend_raiseErrorOrConvert_(context, v34, v24, v35);
      }

      else
      {
        v37 = v36;
        v38 = *(*arguments + 16);
        v58 = 0;
        v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v39, context, spec, 2, &v58);
        v24 = v58;
        objc_msgSend_doubleRepresentation(v40, v41, v42, v43);
        if (v24)
        {
          v19 = objc_msgSend_raiseErrorOrConvert_(context, v44, v24, v45);
        }

        else
        {
          v47 = v46;
          v50 = objc_msgSend_errorForDuration_argumentIndex_(v40, v44, spec, 2);
          if (v50)
          {
            v19 = objc_msgSend_raiseErrorOrConvert_(context, v48, v50, v49);
            v24 = v50;
          }

          else
          {
            pthread_mutex_lock(&stru_27CFB4098);
            sub_2214A7870(v20);
            v52 = v51;
            pthread_mutex_unlock(&stru_27CFB4098);
            exp(v37 + v52 * v47);
            TSUDecimal::operator=();
            if (v8)
            {
              objc_msgSend_formatWithContext_(v8, v53, context, v54);
            }

            else
            {
              memset(v56, 0, sizeof(v56));
            }

            v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v53, v57, v56);
            v24 = 0;
          }
        }
      }
    }

    v11 = v24;
  }

  return v19;
}

@end