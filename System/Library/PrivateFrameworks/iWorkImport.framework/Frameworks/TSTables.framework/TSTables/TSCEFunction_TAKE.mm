@interface TSCEFunction_TAKE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)subGrid:(id)grid inputGrid:(id)inputGrid startAtCoord:(TSCEGridCoord)coord endAtCoord:(TSCEGridCoord)atCoord inputSize:(TSCEGridDimensions)size resultSize:(TSCEGridDimensions)resultSize;
@end

@implementation TSCEFunction_TAKE

+ (id)subGrid:(id)grid inputGrid:(id)inputGrid startAtCoord:(TSCEGridCoord)coord endAtCoord:(TSCEGridCoord)atCoord inputSize:(TSCEGridDimensions)size resultSize:(TSCEGridDimensions)resultSize
{
  column = atCoord.column;
  resultSizeCopy = resultSize;
  sizeCopy = size;
  gridCopy = grid;
  inputGridCopy = inputGrid;
  v36 = 0;
  coordCopy = coord;
  v13 = objc_opt_new();
  v15 = gridCopy;
  v30[0] = v15;
  v30[1] = 0;
  v31 = 0;
  v32[0] = 0xFFFFFFFFLL;
  *(v32 + 7) = 0;
  v33 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v34 = 0;
  v35 = 0;
  do
  {
    v16 = objc_msgSend_valueAtGridCoord_accessContext_(inputGridCopy, v14, *&coordCopy, v30);
    objc_msgSend_setValue_atCoord_(v13, v17, v16, &v36);
    coordCopy = TSCEGridDimensions::nextCoordRowMajorOrder(&sizeCopy, &coordCopy);
    v36 = TSCEGridDimensions::nextCoordRowMajorOrder(&resultSizeCopy, &v36);
    LODWORD(v18) = coordCopy.column;
    if (coordCopy.column != 0x7FFFFFFF && coordCopy.row != 0x7FFFFFFF)
    {
      if (coordCopy.column <= column)
      {
        v19 = 1;
      }

      else
      {
        coordCopy.column = sizeCopy.width - 1;
        v18 = TSCEGridDimensions::nextCoordRowMajorOrder(&sizeCopy, &coordCopy);
        coordCopy = v18;
        v19 = HIDWORD(v18) != 0x7FFFFFFF;
      }

      if (v18 != 0x7FFFFFFF && v19 && v18 < coord.column)
      {
        coordCopy.column = coord.column;
      }
    }

    *v20.i8 = coordCopy;
    v20.u64[1] = v36;
    v21.i64[0] = 0x8000000080000000;
    v21.i64[1] = 0x8000000080000000;
  }

  while ((vmaxv_u16(vmovn_s32(vceqq_s32(v20, v21))) & 1) == 0);
  v22 = [TSCEDenseGrid alloc];
  v25 = objc_msgSend_initWithValueGrid_(v22, v23, v13, v24);
  v28 = objc_msgSend_gridValue_(TSCEGridValue, v26, v25, v27);

  return v28;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v75 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v75);
  v10 = v75;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);

    goto LABEL_58;
  }

  v16 = *arguments;
  if (*(arguments + 1) - *arguments < 9uLL || (isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v16[1], v11, v12, v13), v16 = *arguments, (isTokenOrEmptyArg & 1) != 0))
  {
    v18 = 0;
    goto LABEL_6;
  }

  v40 = v16[1];
  v74 = 0;
  v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v11, context, spec, 1, &v74);
  v44 = v74;
  if (v44)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v42, v44, v43);
LABEL_54:

    goto LABEL_58;
  }

  v52 = objc_msgSend_errorForDuration_argumentIndex_(v41, v42, spec, 1);
  if (v52)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v49, v52, v51);
    v44 = v52;
    goto LABEL_54;
  }

  v73._decimal.w[0] = objc_msgSend_decimalRepresentation(v41, v49, v50, v51);
  v73._decimal.w[1] = v58;
  v18 = TSUDecimal::truncatedIntegerValue(&v73);
  if (!v18)
  {
    v66 = objc_msgSend_emptyArrayError(TSCEError, v59, v60, v61);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v67, v66, v68);

    v44 = 0;
    goto LABEL_54;
  }

  v16 = *arguments;
LABEL_6:
  if (*(arguments + 1) - v16 < 0x11uLL)
  {
    v24 = 0;
    goto LABEL_11;
  }

  v19 = v16[2];
  if ((objc_msgSend_isTokenOrEmptyArg(v19, v20, v21, v22) & 1) == 0)
  {
    v72 = 0;
    v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v23, context, spec, 2, &v72);
    v48 = v72;
    if (v48)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v46, v48, v47);
    }

    else
    {
      v56 = objc_msgSend_errorForDuration_argumentIndex_(v45, v46, spec, 2);
      if (v56)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v53, v56, v55);
        v48 = v56;
      }

      else
      {
        v73._decimal.w[0] = objc_msgSend_decimalRepresentation(v45, v53, v54, v55);
        v73._decimal.w[1] = v62;
        v24 = TSUDecimal::truncatedIntegerValue(&v73);
        if (v24)
        {

          goto LABEL_9;
        }

        v69 = objc_msgSend_emptyArrayError(TSCEError, v63, v64, v65);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v70, v69, v71);

        v48 = 0;
      }
    }

    goto LABEL_58;
  }

  v24 = 0;
LABEL_9:

LABEL_11:
  v25 = objc_msgSend_dimensions(v9, v11, v12, v13);
  v27 = HIDWORD(v25);
  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v25;
  }

  if (v18)
  {
    v29 = v18;
  }

  else
  {
    v29 = HIDWORD(v25);
  }

  if (v29 >= HIDWORD(v25))
  {
    v30 = HIDWORD(v25);
  }

  else
  {
    v30 = v29;
  }

  v31 = (v30 + HIDWORD(v25)) << 32;
  if (v27 > -v30)
  {
    v32 = -v30;
  }

  else
  {
    v32 = HIDWORD(v25);
  }

  if (v27 <= -v30)
  {
    v31 = 0;
  }

  if (v30 >= v27)
  {
    v33 = HIDWORD(v25);
  }

  else
  {
    LODWORD(v33) = v30;
  }

  if (v30 < 1)
  {
    v30 = HIDWORD(v25);
  }

  else
  {
    LODWORD(v32) = v33;
    v31 = 0;
  }

  v34 = -v28;
  v35 = (v28 + v25);
  if (v25 <= -v28)
  {
    LODWORD(v34) = v25;
    v35 = 0;
  }

  if (v28 >= v25)
  {
    v36 = v25;
  }

  else
  {
    v36 = v28;
  }

  if (v28 < 1)
  {
    v37 = v35;
  }

  else
  {
    LODWORD(v34) = v36;
    v37 = 0;
  }

  if (v28 < 1)
  {
    LODWORD(v28) = v25;
  }

  if (v34 == v25 && HIDWORD(v25) == v32)
  {
    v39 = v9;
  }

  else
  {
    v39 = objc_msgSend_subGrid_inputGrid_startAtCoord_endAtCoord_inputSize_resultSize_(TSCEFunction_TAKE, v26, context, v9, v37 | v31, ((v28 - 1) | (v30 << 32)) - 0x100000000);
  }

  v15 = v39;
LABEL_58:

  return v15;
}

@end