@interface TSCEFunction_SWITCH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SWITCH

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *(arguments + 1) - *arguments;
  v8 = v7 >> 3;
  if ((v7 >> 3) >= 255)
  {
    v9 = objc_msgSend_functionName(spec, a2, context, spec);
    v11 = objc_msgSend_tooManyArguments_maximum_provided_(TSCEError, v10, v9, 254, (v7 >> 3) & 0x7FFFFFFF);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);

    goto LABEL_56;
  }

  v78 = **arguments;
  v21 = objc_msgSend_deepType_(v78, v16, context, v17);
  if (v21 == 9)
  {
    v22 = objc_msgSend_errorWithContext_(v78, v18, context, v20);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v24);

LABEL_5:
    v25 = 0;
    goto LABEL_55;
  }

  specCopy = spec;
  v26 = v8 - 1;
  if (v8 < 3)
  {
    goto LABEL_38;
  }

  v27 = 1;
  while (1)
  {
    v28 = *(*arguments + 8 * v27);
    if (objc_msgSend_isThunk(v28, v29, v30, v31))
    {
      v34 = objc_msgSend_unwrapThunk_(context, v32, v28, v33);

      v28 = v34;
    }

    v35 = objc_msgSend_deepType_(v28, v32, context, v33);
    v38 = v35;
    if (v35 == 9)
    {
      v59 = objc_msgSend_errorWithContext_(v28, v36, context, v37);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61);
      goto LABEL_51;
    }

    if (v21)
    {
      v39 = 0;
    }

    else
    {
      v39 = v35 == 10;
    }

    v40 = v39;
    if (!v39)
    {
      v41 = !v35 && v21 == 10;
      if (!v41 && v21 != v35)
      {
        goto LABEL_37;
      }
    }

    v79 = 0;
    v43 = objc_msgSend_valuesAreEqualLeft_right_context_outError_(TSCEValue, v36, v78, v28, context, &v79);
    v44 = v79;
    if (!v44)
    {
      break;
    }

    v25 = v44;
    if (objc_msgSend_errorType(v44, v45, v46, v47) == 109)
    {
      v58 = objc_msgSend_raiseErrorOrConvert_(context, v48, v25, v49);
      goto LABEL_53;
    }

LABEL_37:
    v27 += 2;
    if (v26 <= v27)
    {
      goto LABEL_38;
    }
  }

  if ((v40 & 1) == 0)
  {
    v50 = !v38 && v21 == 10;
    v51 = v50;
    if (((v51 | v43) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v14 = *(*arguments + 8 * v27 + 8);
  if (objc_msgSend_isThunk(v14, v62, v63, v64))
  {
    v67 = objc_msgSend_unwrapThunk_(context, v65, v14, v66);

    v14 = v67;
  }

  if (!v14)
  {
LABEL_38:
    v14 = 0;
    if ((v26 & 0x80000001) != 1)
    {
      goto LABEL_50;
    }

LABEL_39:
    v52 = v14;
    v14 = *(*arguments + 8 * v26);

    if (objc_msgSend_isThunk(v14, v53, v54, v55))
    {
      v58 = objc_msgSend_unwrapThunk_(context, v56, v14, v57);
      v25 = 0;
      v28 = v14;
LABEL_53:
      v14 = v58;
      goto LABEL_54;
    }

    goto LABEL_5;
  }

  isNil = objc_msgSend_isNil(v14, v18, v19, v20);
  if ((v26 & 0x80000001) == 1)
  {
    v69 = isNil;
  }

  else
  {
    v69 = 0;
  }

  if (v69)
  {
    goto LABEL_39;
  }

  if (!isNil)
  {
    goto LABEL_5;
  }

LABEL_50:
  v59 = objc_msgSend_functionName(specCopy, v18, v19, v20);
  v72 = objc_msgSend_noConditionIsTrueErrorForFunctionName_(TSCEError, v70, v59, v71);
  v75 = objc_msgSend_raiseErrorOrConvert_(context, v73, v72, v74);

  v28 = v14;
  v14 = v75;
LABEL_51:

  v25 = 0;
LABEL_54:

LABEL_55:
LABEL_56:

  return v14;
}

@end