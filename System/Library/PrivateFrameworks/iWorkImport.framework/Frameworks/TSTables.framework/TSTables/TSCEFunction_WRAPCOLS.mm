@interface TSCEFunction_WRAPCOLS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_WRAPCOLS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_functionIndex(spec, a2, context, spec);
  v9 = **arguments;
  v94[0] = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 0, v94);
  v15 = v94[0];
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v15, v14);
    goto LABEL_39;
  }

  if (objc_msgSend_dimensions(v11, v12, v13, v14) >> 32 != 1 && objc_msgSend_dimensions(v11, v17, v18, v19) != 1)
  {
    v23 = objc_msgSend_functionName(spec, v20, v21, v22);
    v28 = objc_msgSend_requiresOneDimArrayInputError_argumentNumber_(TSCEError, v55, v23, 1);
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v56, v28, v57);
    v15 = 0;
    goto LABEL_38;
  }

  v23 = *(*arguments + 8);
  v93 = 0;
  v82 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v24, context, spec, 1, &v93);
  v15 = v93;
  if (!v15)
  {
    if (objc_msgSend_integer(v82, v25, v26, v27) <= 0)
    {
      v43 = objc_msgSend_functionName(spec, v29, v30, v31);
      v59 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v58, 1, v43, 1, 0.0);
      v28 = v82;
      v62 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61);
    }

    else
    {
      v81 = v23;
      v83._decimal.w[0] = objc_msgSend_decimalRepresentation(v82, v29, v30, v31);
      v83._decimal.w[1] = v32;
      v33 = TSUDecimal::truncatedIntegerValue(&v83);
      v37 = objc_msgSend_functionName(spec, v34, v35, v36);
      v40 = objc_msgSend_padWithValuesNotProvided_(TSCEError, v38, v37, v39);
      v43 = objc_msgSend_errorValue_(TSCEErrorValue, v41, v40, v42);

      if (*(arguments + 1) - *arguments < 0x11uLL)
      {
        v23 = v81;
        v28 = v82;
      }

      else
      {
        v47 = *(*arguments + 16);
        v23 = v81;
        v28 = v82;
        if ((objc_msgSend_isTokenOrEmptyArg(v47, v48, v49, v50) & 1) == 0 && objc_msgSend_deepType_(v47, v51, context, v52) != 9)
        {
          v53 = v47;
          v54 = v43;
          v43 = v53;
        }
      }

      v92 = objc_msgSend_dimensions(v11, v44, v45, v46);
      if (v92.height * v92.width)
      {
        *&v90[8] = 0;
        v91 = 0;
        v89 = v8 == 358;
        *v90 = v8 != 358;
        v66 = objc_opt_new();
        v83._decimal.w[0] = context;
        v83._decimal.w[1] = 0;
        v84 = 0;
        v85[0] = 0xFFFFFFFFLL;
        *(v85 + 7) = 0;
        v86 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v87 = 0;
        v88 = 0;
        do
        {
          v68 = objc_msgSend_valueAtGridCoord_accessContext_(v11, v67, *&v91, &v83);
          objc_msgSend_setValue_atCoord_(v66, v69, v68, &v90[4]);
          sub_2211786BC(&v90[4], &v89);
          if (v8 == 358)
          {
            if (*&v90[4] == v33)
            {
              *&v90[4] = 0;
              ++*&v90[8];
            }

            v70 = TSCEGridDimensions::nextCoordRowMajorOrder(&v92, &v91);
          }

          else
          {
            if (*&v90[8] == v33)
            {
              *&v90[4] = (*&v90[4] + 1);
            }

            v70 = TSCEGridDimensions::nextCoordColumnMajorOrder(&v92, &v91);
          }

          v91 = v70;
        }

        while (v91.column != 0x7FFFFFFF && v91.row != 0x7FFFFFFF);
        v71 = *&v90[4];
        if (*&v90[4] && *&v90[8])
        {
          if (v8 == 358)
          {
            while (v71 < v33)
            {
              objc_msgSend_setValue_atCoord_(v66, v67, v43, &v90[4]);
              v71 = ++*&v90[4];
            }
          }

          else
          {
            for (; *&v90[8] < v33; ++*&v90[8])
            {
              objc_msgSend_setValue_atCoord_(v66, v67, v43, &v90[4]);
            }
          }
        }

        v74 = [TSCEDenseGrid alloc];
        v77 = objc_msgSend_initWithValueGrid_(v74, v75, v66, v76);
        v16 = objc_msgSend_gridValue_(TSCEGridValue, v78, v77, v79);

        goto LABEL_37;
      }

      v59 = objc_msgSend_emptyArrayError(TSCEError, v63, v64, v65);
      v62 = objc_msgSend_raiseErrorOrConvert_(context, v72, v59, v73);
    }

    v16 = v62;

LABEL_37:
    goto LABEL_38;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v25, v15, v27);
  v28 = v82;
LABEL_38:

LABEL_39:

  return v16;
}

@end