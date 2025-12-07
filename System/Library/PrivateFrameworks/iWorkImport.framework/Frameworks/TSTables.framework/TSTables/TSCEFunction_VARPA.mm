@interface TSCEFunction_VARPA
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_VARPA

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v52 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, &v52);
  v9 = v52;
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v12);
    goto LABEL_18;
  }

  v15 = objc_msgSend_nilValue(TSCENilValue, v10, v11, v12);
  v49 = 0;
  v50 = v15;
  v16 = sub_22121C524(context, spec, 0, v8, 1, 1, &v50, 0, 0, &v49);
  v18 = v17;
  v19 = v50;

  v13 = v49;
  v51[0] = v16;
  v51[1] = v18;
  v23 = objc_msgSend_zero(TSCENumberValue, v20, v21, v22);
  v27 = v23;
  if (v13)
  {
    v28 = v23;
    goto LABEL_5;
  }

  v28 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v24, v51, v26);

  if (objc_msgSend_deepType_(v19, v38, context, v39) != 5)
  {
    goto LABEL_12;
  }

  v48 = 0;
  v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v24, context, spec, 0, &v48);
  v41 = v48;
  if (v41)
  {
    v13 = v41;

    goto LABEL_5;
  }

  v13 = objc_msgSend_errorForDuration_argumentIndex_(v40, v42, spec, 0);

  if (!v13)
  {
LABEL_12:
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v24, context, v26);
    }

    else
    {
      memset(&v46, 0, sizeof(v46));
    }

    TSCEFormat::TSCEFormat(&v47, &v46);
    objc_msgSend_setFormat_(v28, v43, &v47, v44);
    v37 = v28;
    v28 = v37;
    v13 = 0;
    goto LABEL_16;
  }

LABEL_5:
  if (!objc_msgSend_isMismatchedUnitsError(v13, v24, v25, v26))
  {
    v37 = objc_msgSend_raiseErrorOrConvert_(context, v29, v13, v31);
LABEL_16:
    v14 = v37;
    goto LABEL_17;
  }

  v32 = objc_msgSend_functionName(spec, v29, v30, v31);
  v34 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v33, v32, 1);
  v14 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);

LABEL_17:
LABEL_18:

  return v14;
}

@end