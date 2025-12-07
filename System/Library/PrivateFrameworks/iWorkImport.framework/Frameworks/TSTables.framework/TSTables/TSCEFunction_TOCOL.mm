@interface TSCEFunction_TOCOL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TOCOL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_functionIndex(spec, a2, context, spec);
  v9 = **arguments;
  v88 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 0, &v88);
  v12 = v88;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v15);
    goto LABEL_32;
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v25 = 0;
    goto LABEL_11;
  }

  v18 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v18, v19, v20, v21) & 1) != 0 || objc_msgSend_deepType_(v18, v22, context, v23) == 10)
  {
    v25 = 0;
    goto LABEL_7;
  }

  v87 = 0;
  v60 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v24, context, spec, 1, &v87);
  v16 = v87;
  v64 = objc_msgSend_integer(v60, v61, v62, v63);

  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v65, v16, v67);
LABEL_42:

    goto LABEL_32;
  }

  if (v64 >= 4)
  {
    v71 = objc_msgSend_functionName(spec, v65, v66, v67);
    v73 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v72, v71, 2);
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v74, v73, v75);

    goto LABEL_42;
  }

  v25 = v64;
LABEL_7:

  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v26 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v26, v27, v28, v29))
    {
      v31 = 0;
    }

    else
    {
      v86 = 0;
      v31 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 2, &v86);
      v68 = v86;
      if (v68)
      {
        v16 = v68;
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v69, v68, v70);

        goto LABEL_32;
      }
    }

    goto LABEL_12;
  }

LABEL_11:
  v31 = 0;
LABEL_12:
  v85 = objc_msgSend_dimensions(v11, v13, v14, v15);
  if (!(v85.height * v85.width))
  {
    v35 = objc_msgSend_emptyArrayError(TSCEError, v32, v33, v34);
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v55, v35, v56);
    goto LABEL_31;
  }

  HIDWORD(v83) = 0;
  v84 = 0;
  LODWORD(v83) = v8 == 349;
  *(&v83 + 4) = v8 != 349;
  v35 = objc_opt_new();
  contextCopy = context;
  v76 = contextCopy;
  specCopy = spec;
  v78 = 0;
  *&v79 = 0;
  *(&v79 + 7) = 0;
  v80 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v81 = 0;
  v82 = 0;
  do
  {
    v38 = objc_msgSend_valueAtGridCoord_accessContext_(v11, v36, *&v84, &v76);
    v41 = v38;
    if (!v25)
    {
      goto LABEL_20;
    }

    if (objc_msgSend_deepType_(v38, v39, contextCopy, v40, v76, specCopy, v78, v79, *&v80, v81, v82, v83, *(&v83 + 1)) != 9)
    {
      if (v25 & 0xFFFFFFFFFFFFFFFDLL) == 1 && (objc_msgSend_valueIsEmptyWithContext_(v41, v39, contextCopy, v42))
      {
        goto LABEL_21;
      }

LABEL_20:
      objc_msgSend_setValue_atCoord_(v35, v39, v41, &v83 + 8, v76);
      sub_2211786BC(&v83 + 2, &v83);
      goto LABEL_21;
    }

    if ((v25 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v31)
    {
      v43 = TSCEGridDimensions::nextCoordColumnMajorOrder(&v85, &v84);
    }

    else
    {
      v43 = TSCEGridDimensions::nextCoordRowMajorOrder(&v85, &v84);
    }

    v84 = v43;
  }

  while (v84.column != 0x7FFFFFFF && v84.row != 0x7FFFFFFF);
  if (objc_msgSend_area(v35, v36, v44, v45))
  {
    v49 = [TSCEDenseGrid alloc];
    v52 = objc_msgSend_initWithValueGrid_(v49, v50, v35, v51);
    objc_msgSend_gridValue_(TSCEGridValue, v53, v52, v54);
  }

  else
  {
    v52 = objc_msgSend_emptyArrayError(TSCEError, v46, v47, v48);
    objc_msgSend_raiseErrorOrConvert_(contextCopy, v57, v52, v58);
  }
  v17 = ;

LABEL_31:
  v16 = 0;
LABEL_32:

  return v17;
}

@end