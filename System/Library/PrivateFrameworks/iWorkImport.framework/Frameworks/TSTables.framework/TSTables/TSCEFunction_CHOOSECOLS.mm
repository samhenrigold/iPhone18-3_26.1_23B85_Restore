@interface TSCEFunction_CHOOSECOLS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHOOSECOLS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_functionIndex(spec, a2, context, spec);
  v9 = **arguments;
  v118[0] = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 0, v118);
  v12 = v118[0];
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v15);
    goto LABEL_3;
  }

  v19 = objc_msgSend_dimensions(v11, v13, v14, v15);
  v23 = v19;
  v93 = HIDWORD(v19);
  if (!(HIDWORD(v19) * v19))
  {
    v73 = objc_msgSend_emptyArrayError(TSCEError, v20, v21, v22);
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v74, v73, v75);

    v16 = 0;
    goto LABEL_3;
  }

  v100 = v8;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v24 = *(arguments + 1) - *arguments;
  if ((v24 >> 3) < 2)
  {
LABEL_30:
    v28 = objc_opt_new();
    v58 = v115;
    v98 = v116;
    v59 = v100;
    if (v115 != v116)
    {
      v60 = 0;
      v61 = 0;
      v62 = v23 | 0x100000000;
      if (v100 != 353)
      {
        v62 = (v23 & 0xFFFFFFFF00000000) + 1;
      }

      v96 = v62;
      v94 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      do
      {
        v63 = *v58;
        v64 = v63 << 32;
        v104._decimal.w[0] = v96;
        contextCopy = context;
        specCopy = 0;
        v108 = 0;
        v109 = -1;
        v110[0] = 0;
        *(v110 + 3) = 0;
        if (v59 != 353)
        {
          v64 = v63;
        }

        v111 = v94;
        v112 = 0;
        v113 = 0;
        v103 = 0;
        do
        {
          v102 = v64;
          sub_2211786BC(&v102, &v103);
          v66 = objc_msgSend_valueAtGridCoord_accessContext_(v11, v65, v102, &contextCopy);
          v101 = v61 | (v60 << 32);
          sub_2211786BC(&v101, &v103);
          objc_msgSend_setValue_atCoord_(v28, v67, v66, &v101);
          v103 = TSCEGridDimensions::nextCoordRowMajorOrder(&v104, &v103);
        }

        while (v103.column != 0x7FFFFFFF && v103.row != 0x7FFFFFFF);
        v61 += v100 != 353;
        v60 = v60 + (v100 == 353);

        ++v58;
        v59 = v100;
      }

      while (v58 != v98);
    }

    v68 = [TSCEDenseGrid alloc];
    v33 = objc_msgSend_initWithValueGrid_(v68, v69, v28, v70);
    v17 = objc_msgSend_gridValue_(TSCEGridValue, v71, v33, v72);
    v16 = 0;
    goto LABEL_49;
  }

  v92 = v19;
  v91 = v19 + 1;
  if (v8 == 353)
  {
    v25 = HIDWORD(v19);
  }

  else
  {
    v25 = v19;
  }

  v86 = v25;
  v95 = v25;
  v26 = (v24 >> 3) & 0x7FFFFFFF;
  v90 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v27 = 1;
  v88 = v19;
  argumentsCopy = arguments;
  v87 = v26;
  while (1)
  {
    v28 = *(*arguments + 8 * v27);
    if ((objc_msgSend_isTokenOrEmptyArg(v28, v29, v30, v31) & 1) == 0)
    {
      break;
    }

LABEL_29:

    if (++v27 == v26)
    {
      goto LABEL_30;
    }
  }

  v114 = 0;
  v33 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v28, v32, context, spec, v27, 0, &v114);
  v34 = v114;
  if (v34)
  {
    v16 = v34;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);
    goto LABEL_49;
  }

  contextCopy2 = context;
  contextCopy = contextCopy2;
  specCopy = spec;
  v108 = 0;
  v109 = v27;
  LOBYTE(v110[0]) = 1;
  *(v110 + 1) = 0;
  *(&v110[1] + 1) = 0;
  v111 = v90;
  v112 = 0;
  v113 = 0;
  v41 = objc_msgSend_count(v33, v37, v38, v39);
  if (!v41)
  {
LABEL_28:

    v23 = v88;
    arguments = argumentsCopy;
    v26 = v87;
    goto LABEL_29;
  }

  v42 = 0;
  v97 = v33;
  while (1)
  {
    v43 = objc_msgSend_valueAtIndex_accessContext_(v33, v40, v42, &contextCopy, v86);
    v105 = 0;
    v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v43, v44, contextCopy2, spec, v27, &v105);
    v16 = v105;

    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v46, v16, v48);
      goto LABEL_48;
    }

    v104._decimal.w[0] = objc_msgSend_decimalRepresentation(v45, v46, v47, v48);
    v104._decimal.w[1] = v49;
    v50 = TSUDecimal::truncatedIntegerValue(&v104);
    if (v50 < 0)
    {
      v54 = v91;
      if (v92 < -v50)
      {
        v54 = 0;
      }

      v55 = v50 + v54;
      v56 = v93 + 1;
      if (v93 < -v50)
      {
        v56 = 0;
      }

      v57 = v50 + v56;
      if (v100 == 353)
      {
        v50 = v57;
      }

      else
      {
        v50 = v55;
      }
    }

    if (v50 > v95)
    {
      v76 = objc_msgSend_functionName(spec, v51, v52, v53);
      v78 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v77, (v27 + 1), v76, 1, v86);
      v81 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v79, v78, v80);
      goto LABEL_47;
    }

    if (v50 <= 0)
    {
      break;
    }

    LODWORD(v104._decimal.w[0]) = v50 - 1;
    sub_2210C47D0(&v115, &v104);

    ++v42;
    v33 = v97;
    if (v41 == v42)
    {
      goto LABEL_28;
    }
  }

  v76 = objc_msgSend_functionName(spec, v51, v52, v53);
  v83 = v93;
  if (v100 != 353)
  {
    v83 = v92;
  }

  v78 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v82, (v27 + 1), v76, 1, 1, -v83, v83);
  v81 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v84, v78, v85);
LABEL_47:
  v17 = v81;

LABEL_48:
  v33 = v97;
LABEL_49:

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

LABEL_3:

  return v17;
}

@end