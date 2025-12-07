@interface TSCEFunction_REPLACE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REPLACE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v87, 0, sizeof(v87));
  }

  sub_22114F414(&v88, &v87);
  v83 = 0;
  if (v11)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v83);
    v13 = v83;
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v14, v13, v15);
      goto LABEL_38;
    }
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  v18 = *(*arguments + 8);
  if (objc_msgSend_isEmptyArg(v18, v19, v20, v21))
  {
    v25 = objc_msgSend_functionName(spec, v22, v23, v24);
    v27 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v26, 2, v25, 1, 1.0);
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);
    v16 = 0;
LABEL_36:

    goto LABEL_37;
  }

  if (v18)
  {
    objc_msgSend_formatWithContext_(v18, v22, context, v24);
  }

  else
  {
    memset(&v87, 0, sizeof(v87));
  }

  sub_22114F414(&v88, &v87);
  v82 = 0;
  v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v30, context, spec, 1, &v82);
  v31 = v82;
  if (!v31)
  {
    v87._tskFormat = objc_msgSend_decimalRepresentation(v25, v32, v33, v34);
    *&v87._formatType = v35;
    v36 = TSUDecimal::truncateWithRounding(&v87);
    v40 = sub_2210772BC(&v84, v37, v38, v39);
    v41 = v36 - 1;
    v42 = v36 - 1;
    v43 = sub_22157EFF8(v40, v41);

    v44 = *(*arguments + 16);
    v27 = v44;
    if (v44)
    {
      objc_msgSend_formatWithContext_(v44, v45, context, v46);
    }

    else
    {
      memset(&v87, 0, sizeof(v87));
    }

    sub_22114F414(&v88, &v87);
    v77 = v43;
    v81 = 0;
    v78 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v47, context, spec, 2, &v81);
    v48 = v81;
    if (v48)
    {
      v16 = v48;
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v49, v48, v51);
LABEL_35:

      goto LABEL_36;
    }

    v87._tskFormat = objc_msgSend_decimalRepresentation(v78, v49, v50, v51);
    *&v87._formatType = v52;
    v53 = TSUDecimal::truncateWithRounding(&v87);
    v57 = sub_2210772BC(&v84, v54, v55, v56);
    v58 = sub_22157EFF8(v57, v42 + v53);

    v59 = *(*arguments + 24);
    v62 = v59;
    if (v59)
    {
      objc_msgSend_formatWithContext_(v59, v60, context, v61);
    }

    else
    {
      memset(&v87, 0, sizeof(v87));
    }

    sub_22114F414(&v88, &v87);
    v80 = 0;
    if (v62)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v62, v63, context, spec, 3, &v80);
      v66 = v80;
      if (v66)
      {
        v16 = v66;
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v63, v66, v65);
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      memset(&v87, 0, 24);
    }

    v67 = sub_221078910(&v84, v63, v64, v65);
    sub_221077078(&v84, v79, v68, v69, v70);
    if (v77 >= v67)
    {
      v71 = v67;
    }

    else
    {
      v71 = v77;
    }

    if (&v71[v58 - v77] <= v67)
    {
      v72 = v58 - v77;
    }

    else
    {
      v72 = v67 - v71;
    }

    sub_221077D90(v79, v71, v72, &v87);
    v17 = sub_2210789F4(v79, v73, v74, v75);

    v16 = 0;
    goto LABEL_34;
  }

  v16 = v31;
  v17 = objc_msgSend_raiseErrorOrConvert_(context, v32, v31, v34);
LABEL_37:

LABEL_38:
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  return v17;
}

@end