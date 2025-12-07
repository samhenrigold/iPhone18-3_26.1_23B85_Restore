@interface TSCEFunction_LEFT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LEFT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v12 = v8;
  v48 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v48);
    v13 = v48;
    if (v13)
    {
      v14 = v13;
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v9, v13, v11);
      goto LABEL_21;
    }
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  v18 = sub_221078910(&v49, v9, v10, v11);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v24 = 1;
  }

  else
  {
    v19 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v19, v20, v21, v22))
    {
      v24 = 1;
    }

    else
    {
      v47 = 0;
      v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v23, context, spec, 1, &v47);
      v14 = v47;
      if (v14)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v26, v14, v28);

        goto LABEL_21;
      }

      v44._tskFormat = objc_msgSend_decimalRepresentation(v25, v26, v27, v28);
      *&v44._formatType = v29;
      v30 = TSUDecimal::truncatedUIntegerValue(&v44);
      v34 = sub_2210772BC(&v49, v31, v32, v33);
      v35 = sub_22157EFF8(v34, v30);

      if (v35 >= v18)
      {
        v24 = v18;
      }

      else
      {
        v24 = v35;
      }
    }
  }

  memset(v46, 0, 19);
  if (v24 && v18)
  {
    v45[0] = 0;
    v45[1] = v24;
    sub_2210780F0(&v49, v45, &v44, v16, v17);
  }

  else
  {
    sub_221077074(&v44, &stru_2834BADA0);
  }

  v36 = *&v44._tskFormat;
  v44._tskFormat = 0;
  *&v44._formatType = 0;
  *v46 = v36;
  *&v46[16] = v44._durationFormat;

  v15 = sub_2210789F4(v46, v37, v38, v39);
  v43._tskFormat = 0;
  v43._formatType = 0;
  v43._formatState = 0;
  *&v43._durationFormat = 1057;
  *(&v43._durationFormat + 2) = 1;
  *&v43._baseFormat.base = -50266102;
  v43._numberFormat = 253;
  TSCEFormat::TSCEFormat(&v44, &v43);
  objc_msgSend_setFormat_(v15, v40, &v44, v41);

  v14 = 0;
LABEL_21:

  return v15;
}

@end