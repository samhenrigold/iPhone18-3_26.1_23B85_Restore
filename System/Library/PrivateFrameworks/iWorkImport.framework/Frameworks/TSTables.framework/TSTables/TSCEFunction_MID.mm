@interface TSCEFunction_MID
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MID

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v10 = v8;
  v77 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v77);
    v11 = v77;
    if (v11)
    {
      v14 = v11;
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
      goto LABEL_25;
    }
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
  }

  v16 = *(*arguments + 8);
  if (objc_msgSend_isEmptyArg(v16, v17, v18, v19))
  {
    v23 = objc_msgSend_functionName(spec, v20, v21, v22);
    v25 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v24, 2, v23, 1, 1.0);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27);
    v14 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v76 = 0;
  v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v20, context, spec, 1, &v76);
  v14 = v76;
  v23 = objc_msgSend_trunc(v28, v29, v30, v31);

  if (!v14)
  {
    v73._tskFormat = objc_msgSend_decimalRepresentation(v23, v32, v33, v34);
    *&v73._formatType = v35;
    v36 = TSUDecimal::truncatedUIntegerValue(&v73);
    v40 = sub_2210772BC(&v78, v37, v38, v39);
    v41 = v36 - 1;
    v42 = sub_22157EFF8(v40, v36 - 1);

    v25 = *(*arguments + 16);
    v75 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v43, context, spec, 2, &v75);
    v14 = v75;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v45, v14, v47);
    }

    else
    {
      v73._tskFormat = objc_msgSend_decimalRepresentation(v44, v45, v46, v47);
      *&v73._formatType = v48;
      v49 = TSUDecimal::truncatedUIntegerValue(&v73);
      v53 = sub_2210772BC(&v78, v50, v51, v52);
      v54 = sub_22157EFF8(v53, v49 + v41);

      v58 = sub_221078910(&v78, v55, v56, v57);
      v61 = v54 - v42;
      if (v54 < v42)
      {
        v61 = v49;
      }

      v62 = v58 - v42;
      if (v58 >= v42)
      {
        v63 = v42;
      }

      else
      {
        v63 = v58;
      }

      v64 = v61 > v62;
      if (v61 <= v62)
      {
        v65 = v42;
      }

      else
      {
        v65 = v63;
      }

      if (v64)
      {
        v61 = v58 - v63;
      }

      v73._tskFormat = v65;
      *&v73._formatType = v61;
      sub_2210780F0(&v78, &v73, v74, v59, v60);
      v15 = sub_2210789F4(v74, v66, v67, v68);
      v72._tskFormat = 0;
      v72._formatType = 0;
      v72._formatState = 0;
      *&v72._durationFormat = 1057;
      *(&v72._durationFormat + 2) = 1;
      *&v72._baseFormat.base = -50266102;
      v72._numberFormat = 253;
      TSCEFormat::TSCEFormat(&v73, &v72);
      objc_msgSend_setFormat_(v15, v69, &v73, v70);
    }

    goto LABEL_23;
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(context, v32, v14, v34);
LABEL_24:

LABEL_25:

  return v15;
}

@end