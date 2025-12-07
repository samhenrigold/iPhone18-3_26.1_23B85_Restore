@interface TSCEFunction_DROP
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DROP

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v61 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v61);
  v10 = v61;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
LABEL_3:

    goto LABEL_4;
  }

  v17 = *arguments;
  if (*(arguments + 1) - *arguments < 9uLL || (isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v17[1], v11, v12, v13), v17 = *arguments, (isTokenOrEmptyArg & 1) != 0))
  {
    v19 = 0;
    goto LABEL_10;
  }

  v38 = v17[1];
  v60 = 0;
  v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v11, context, spec, 1, &v60);
  v14 = v60;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v40, v14, v41);
LABEL_40:

    goto LABEL_3;
  }

  v51 = objc_msgSend_errorForDuration_argumentIndex_(v39, v40, spec, 1);
  if (v51)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v48, v51, v50);
    v14 = v51;
    goto LABEL_40;
  }

  v59._decimal.w[0] = objc_msgSend_decimalRepresentation(v39, v48, v49, v50);
  v59._decimal.w[1] = v56;
  v19 = TSUDecimal::truncatedIntegerValue(&v59);

  v17 = *arguments;
LABEL_10:
  if (*(arguments + 1) - v17 < 0x11uLL)
  {
    v25 = 0;
LABEL_15:
    v26 = objc_msgSend_dimensions(v9, v11, v12, v13);
    v30 = HIDWORD(v26);
    if (v25 >= v26 || v19 >= v30)
    {
      goto LABEL_19;
    }

    if (v19 < 0)
    {
      if (v30 <= -v19)
      {
        goto LABEL_19;
      }

      v36 = 0;
      v35 = HIDWORD(v26) + v19;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = HIDWORD(v26) - v19;
      v36 = v19;
      if ((v25 & 0x8000000000000000) == 0)
      {
LABEL_22:
        v37 = v26 - v25;
LABEL_31:
        if (v37 == v26 && v35 == HIDWORD(v26))
        {
          v47 = v9;
        }

        else
        {
          v47 = objc_msgSend_subGrid_inputGrid_startAtCoord_endAtCoord_inputSize_resultSize_(TSCEFunction_TAKE, v27, context, v9, v25 | (v36 << 32), (v25 + v37 - 1) | ((v35 + v36 - 1) << 32));
        }

        v15 = v47;
        goto LABEL_4;
      }
    }

    if (v26 > -v25)
    {
      v37 = v26 + v25;
      LODWORD(v25) = 0;
      goto LABEL_31;
    }

LABEL_19:
    v32 = objc_msgSend_emptyArrayError(TSCEError, v27, v28, v29);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v34);

    goto LABEL_4;
  }

  v20 = v17[2];
  if (objc_msgSend_isTokenOrEmptyArg(v20, v21, v22, v23))
  {
    v25 = 0;
LABEL_13:

    goto LABEL_15;
  }

  v58 = 0;
  v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v24, context, spec, 2, &v58);
  v45 = v58;
  if (v45)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v43, v45, v44);
  }

  else
  {
    v55 = objc_msgSend_errorForDuration_argumentIndex_(v42, v43, spec, 2);
    if (!v55)
    {
      v59._decimal.w[0] = objc_msgSend_decimalRepresentation(v42, v52, v53, v54);
      v59._decimal.w[1] = v57;
      v25 = TSUDecimal::truncatedIntegerValue(&v59);

      goto LABEL_13;
    }

    v15 = objc_msgSend_raiseErrorOrConvert_(context, v52, v55, v54);
    v45 = v55;
  }

LABEL_4:

  return v15;
}

@end