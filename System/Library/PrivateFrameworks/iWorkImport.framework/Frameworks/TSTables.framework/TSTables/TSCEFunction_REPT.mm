@interface TSCEFunction_REPT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REPT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v10 = v8;
  v41 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v41);
    v11 = v41;
    if (v11)
    {
      v14 = v11;
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
      goto LABEL_16;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  v16 = *(*arguments + 8);
  v40 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v17, context, spec, 1, &v40);
  v14 = v40;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v19, v14, v21);
  }

  else
  {
    v38 = objc_msgSend_decimalRepresentation(v18, v19, v20, v21);
    v39[0] = v22;
    v26 = TSUDecimal::truncatedIntegerValue(&v38);
    if (v26 < 0x8000)
    {
      if (sub_221078910(&v42, v23, v24, v25) * (v26 & 0x7FFF) < 0x8000)
      {
        v38 = 0;
        v39[0] = 0;
        for (*(v39 + 7) = 0; v26; --v26)
        {
          sub_221077424(&v38, &v42, context);
        }

        v15 = sub_2210789F4(&v38, v32, v33, v34);

        goto LABEL_15;
      }

      v27 = objc_msgSend_stringTooLongError(TSCEError, v32, v33, v34);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v35, v27, v36);
    }

    else
    {
      v27 = objc_msgSend_functionName(spec, v23, v24, v25);
      v29 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v28, 2, v27, 1, 1, 0.0, 32767.0);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v30, v29, v31);
    }
  }

LABEL_15:

LABEL_16:

  return v15;
}

@end