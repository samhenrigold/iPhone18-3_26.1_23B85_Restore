@interface TSCEFunction_BESSELY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BESSELY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v60 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v60);
  v11 = v60;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
  }

  else
  {
    v16 = *(*arguments + 8);
    v59 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v17, context, spec, 1, &v59);
    v14 = v59;
    v22 = objc_msgSend_trunc(v18, v19, v20, v21);

    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v23, v14, v25);
    }

    else
    {
      v54._decimal.w[0] = objc_msgSend_decimalRepresentation(v22, v23, v24, v25);
      v54._decimal.w[1] = v26;
      TSUDecimal::doubleValue(&v54);
      if (v30 < -2147483650.0 || v30 > 2147483650.0)
      {
        v39 = objc_msgSend_functionName(spec, v27, v28, v29);
        v41 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v40, 2, v39, 1, 1, -2147483650.0, 2147483650.0);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v42, v41, v43);
      }

      else
      {
        v54._decimal.w[0] = 0;
        v54._decimal.w[1] = &v54;
        v55 = 0x3032000000;
        v56 = sub_22126D0F4;
        v57 = sub_22126D104;
        v58 = 0;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = sub_22126D518;
        v50[3] = &unk_278461A90;
        v53 = &v54;
        v51 = v10;
        v52 = v22;
        objc_msgSend_runBlockUnlessAborted_(context, v31, v50, v32);
        v36 = *(v54._decimal.w[1] + 40);
        if (v36)
        {
          TSCEFormat::TSCEFormat(&v48, 256);
          TSCEFormat::TSCEFormat(&v49, &v48);
          objc_msgSend_setFormat_(v36, v37, &v49, v38);
          v15 = *(v54._decimal.w[1] + 40);
        }

        else
        {
          v44 = objc_msgSend_abortError(TSCEError, v33, v34, v35);
          v15 = objc_msgSend_errorValue_(TSCEErrorValue, v45, v44, v46);
        }

        _Block_object_dispose(&v54, 8);
      }
    }
  }

  return v15;
}

@end