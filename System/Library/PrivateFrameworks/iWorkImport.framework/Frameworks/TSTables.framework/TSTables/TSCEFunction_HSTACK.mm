@interface TSCEFunction_HSTACK
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HSTACK

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v67 = objc_msgSend_functionIndex(spec, a2, context, spec);
  if (*(arguments + 1) - *arguments == 8)
  {
    v9 = **arguments;
    v82[0] = 0;
    v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v8, context, spec, 0, 0, v82);
    v13 = v82[0];
    if (v13)
    {
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v13, v12);
    }

    else
    {
      v14 = v10;
      v10 = v14;
    }

    v58 = v14;
  }

  else
  {
    v18 = objc_opt_new();
    v19 = *(arguments + 1) - *arguments;
    if ((v19 >> 3) < 1)
    {
      v28 = 0;
LABEL_26:
      v39 = objc_msgSend_functionName(spec, v15, v16, v17);
      v42 = objc_msgSend_sizeMismatchInputError_(TSCEError, v40, v39, v41);
      v21 = objc_msgSend_errorValue_(TSCEErrorValue, v43, v42, v44);

      contextCopy = objc_msgSend_dimensions(v18, v45, v46, v47);
      v80 = 0;
      do
      {
        if ((objc_msgSend_hasValueAtCoord_(v18, v48, &v80, v49) & 1) == 0)
        {
          objc_msgSend_setValue_atCoord_(v18, v50, v21, &v80);
        }

        v51 = TSCEGridDimensions::nextCoordRowMajorOrder(&contextCopy, &v80);
        v80 = v51;
      }

      while (v51 != 0x7FFFFFFF && (v51 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
      v52 = [TSCEDenseGrid alloc];
      v55 = objc_msgSend_initWithValueGrid_(v52, v53, v18, v54);
      v58 = objc_msgSend_gridValue_(TSCEGridValue, v56, v55, v57);

      v13 = 0;
    }

    else
    {
      v20 = 0;
      v10 = 0;
      v69 = 0uLL;
      v68 = (v19 >> 3) & 0x7FFFFFFF;
      v66 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      while (1)
      {
        v21 = *(*arguments + 8 * v20);
        if (objc_msgSend_isTokenOrEmptyArg(v21, v22, v23, v24))
        {
          v59 = objc_msgSend_functionName(spec, v25, v26, v27);
          v62 = objc_msgSend_sizeMismatchInputError_(TSCEError, v60, v59, v61);
          v58 = objc_msgSend_errorValue_(TSCEErrorValue, v63, v62, v64);

          v13 = 0;
          goto LABEL_37;
        }

        v81 = 0;
        v28 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v21, v25, context, spec, v20, 0, &v81);
        v13 = v81;

        if (v13)
        {
          break;
        }

        if (objc_msgSend_canResolveToSingleError(v28, v29, v30, v31))
        {
          v13 = objc_msgSend_errorWithContext_(v28, v29, context, v31);
          if (v13)
          {
            break;
          }
        }

        v80 = objc_msgSend_dimensions(v28, v29, v32, v31, *&v66);
        if (v80.height * v80.width)
        {
          v79 = 0;
          contextCopy = context;
          specCopy = spec;
          v73 = 0;
          v74 = v20;
          v75[0] = 0;
          *(v75 + 3) = 0;
          v76 = v66;
          v77 = 0;
          v78 = 0;
          do
          {
            v34 = objc_msgSend_valueAtGridCoord_accessContext_(v28, v33, *&v79, &contextCopy);
            v70 = v69 >> 32;
            sub_2211786BC(&v70, &v79);
            objc_msgSend_setValue_atCoord_(v18, v35, v34, &v70);
            v79 = TSCEGridDimensions::nextCoordRowMajorOrder(&v80, &v79);
          }

          while (v79.column != 0x7FFFFFFF && v79.row != 0x7FFFFFFF);
          v36 = v80.height + v69;
          if (v67 == 356)
          {
            v37 = 0;
          }

          else
          {
            v37 = v80.width + v69;
          }

          if (v67 == 356)
          {
            v38 = v36;
          }

          else
          {
            v38 = 0;
          }

          *(&v69 + 1) = v38;
          if (v67 != 356)
          {
            v36 = v80.width + v69;
          }

          *&v69 = __PAIR64__(v37, v36);
        }

        ++v20;
        v10 = v28;
        if (v20 == v68)
        {
          goto LABEL_26;
        }
      }

      v58 = objc_msgSend_raiseErrorOrConvert_(context, v29, v13, v31);
    }

    v10 = v28;
LABEL_37:
  }

  return v58;
}

@end