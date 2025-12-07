@interface TSCEFunction_TRANSPOSE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TRANSPOSE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v52 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, &v52);
  v13 = v52;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
    goto LABEL_14;
  }

  v15 = objc_msgSend_dimensions(v9, v10, v11, v12);
  v16 = v15;
  v17 = HIDWORD(v15);
  memset(v51, 0, sizeof(v51));
  v45[0] = context;
  v45[1] = spec;
  v46 = 0;
  v47[0] = 0;
  *(v47 + 7) = 0;
  v48 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v49 = 0;
  v50 = 0;
  if (!v16)
  {
LABEL_11:
    v44 = __PAIR64__(v16, v17);
    v33 = [TSCEDenseGrid alloc];
    isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v33, v34, v51, 0, 0, &v44);
    v13 = 0;
    v14 = objc_msgSend_gridValue_(TSCEGridValue, v36, isFlattened_dimensions, v37);

    goto LABEL_13;
  }

  v19 = 0;
  while (1)
  {
    v20 = v17;
    v21 = v19;
    if (v17)
    {
      break;
    }

LABEL_10:
    if (++v19 == v16)
    {
      goto LABEL_11;
    }
  }

  while (1)
  {
    v44 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v18, v21, v45);
    if (!objc_msgSend_isNil(v44, v22, v23, v24))
    {
      break;
    }

    v28 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v25, v26, v27);
    v29 = v44;
    v44 = v28;

LABEL_9:
    sub_221179A54(v51, &v44);

    v21 += 0x100000000;
    if (!--v20)
    {
      goto LABEL_10;
    }
  }

  if (!objc_msgSend_isFunctorValue(v44, v25, v26, v27))
  {
    goto LABEL_9;
  }

  v38 = objc_msgSend_functionName(spec, v30, v31, v32);
  v40 = objc_msgSend_cannotAcceptLambdaError_argIndex_(TSCEError, v39, v38, 1);
  v14 = objc_msgSend_errorValue_(TSCEErrorValue, v41, v40, v42);

  v13 = 0;
LABEL_13:

  v45[0] = v51;
  sub_22107C2C0(v45);
LABEL_14:

  return v14;
}

@end