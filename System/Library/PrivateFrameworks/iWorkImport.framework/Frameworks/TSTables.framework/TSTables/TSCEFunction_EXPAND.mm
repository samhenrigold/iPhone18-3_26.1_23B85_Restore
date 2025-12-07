@interface TSCEFunction_EXPAND
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EXPAND

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v80 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v80);
  v10 = v80;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
    goto LABEL_31;
  }

  v16 = objc_msgSend_dimensions(v9, v11, v12, v13);
  v20 = v16;
  v21 = HIDWORD(v16);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v27 = HIDWORD(v16);
    v33 = v16;
    goto LABEL_8;
  }

  v22 = *(*arguments + 8);
  LODWORD(v27) = v21;
  if ((objc_msgSend_isTokenOrEmptyArg(v22, v23, v24, v25) & 1) == 0)
  {
    v79 = 0;
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v26, context, spec, 1, &v79);
    v14 = v79;
    if (v14)
    {
      v32 = objc_msgSend_raiseErrorOrConvert_(context, v29, v14, v31);
LABEL_22:
      v15 = v32;

      goto LABEL_31;
    }

    v78._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
    v78._decimal.w[1] = v57;
    LODWORD(v27) = TSUDecimal::truncatedIntegerValue(&v78);
  }

  v33 = v20;
  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v22 = *(*arguments + 16);
    v33 = v20;
    if ((objc_msgSend_isTokenOrEmptyArg(v22, v58, v59, v60) & 1) == 0)
    {
      v77 = 0;
      v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v61, context, spec, 2, &v77);
      v14 = v77;
      if (v14)
      {
        v32 = objc_msgSend_raiseErrorOrConvert_(context, v62, v14, v64);
        goto LABEL_22;
      }

      v76 = v28;
      v78._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v62, v63, v64);
      v78._decimal.w[1] = v65;
      v33 = TSUDecimal::truncatedIntegerValue(&v78);
    }
  }

  if (v27 >= v21)
  {
    if (v33 < v20)
    {
      v66 = objc_msgSend_functionName(spec, v17, v18, v19);
      v68 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v72, 3, v66, 1, v20);
      v71 = objc_msgSend_raiseErrorOrConvert_(context, v73, v68, v74);
      goto LABEL_29;
    }

LABEL_8:
    v78._decimal.w[0] = __PAIR64__(v27, v33);
    if (v33 * v27)
    {
      v34 = objc_msgSend_padWithValuesNotProvided_(TSCEError, v17, @"EXPAND", v19);
      v37 = objc_msgSend_errorValue_(TSCEErrorValue, v35, v34, v36);

      if (*(arguments + 1) - *arguments >= 0x19uLL)
      {
        v40 = *(*arguments + 24);
        if ((objc_msgSend_isTokenOrEmptyArg(v40, v41, v42, v43) & 1) == 0 && objc_msgSend_deepType_(v40, v44, context, v45) != 9)
        {
          v46 = v40;

          v37 = v46;
        }
      }

      v47 = objc_msgSend_asValueGrid_(v9, v38, context, v39);
      objc_msgSend_padUnsetWithValue_forDimensions_(v47, v48, v37, &v78);
      v49 = [TSCEDenseGrid alloc];
      v52 = objc_msgSend_initWithValueGrid_(v49, v50, v47, v51);
      v15 = objc_msgSend_gridValue_(TSCEGridValue, v53, v52, v54);
    }

    else
    {
      v37 = objc_msgSend_emptyArrayError(TSCEError, v17, v18, v19);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v55, v37, v56);
    }

    goto LABEL_30;
  }

  v66 = objc_msgSend_functionName(spec, v17, v18, v19);
  v68 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v67, 2, v66, 1, v21);
  v71 = objc_msgSend_raiseErrorOrConvert_(context, v69, v68, v70);
LABEL_29:
  v15 = v71;

LABEL_30:
  v14 = 0;
LABEL_31:

  return v15;
}

@end