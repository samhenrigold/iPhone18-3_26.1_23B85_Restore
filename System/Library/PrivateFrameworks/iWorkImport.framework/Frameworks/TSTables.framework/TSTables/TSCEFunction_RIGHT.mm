@interface TSCEFunction_RIGHT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RIGHT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v12 = v8;
  v47 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v47);
    v13 = v47;
    if (v13)
    {
      v14 = v13;
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v9, v13, v11);
      goto LABEL_25;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  v19 = sub_221078910(&v48, v9, v10, v11);
  v20 = v19 - 1;
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v19 = 1;
  }

  else
  {
    v21 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v21, v22, v23, v24))
    {
      v19 = 1;
    }

    else
    {
      v46 = 0;
      v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v25, context, spec, 1, &v46);
      v14 = v46;
      if (v14)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v27, v14, v29);

        goto LABEL_25;
      }

      v45._tskFormat = objc_msgSend_decimalRepresentation(v26, v27, v28, v29);
      *&v45._formatType = v30;
      v31 = TSUDecimal::truncatedUIntegerValue(&v45);
      v35 = sub_2210772BC(&v48, v32, v33, v34);
      v36 = sub_22157EFF8(v35, v31);

      if (v19 >= v36)
      {
        v20 = v19 - v36;
      }

      else
      {
        v20 = 0;
      }

      if (v36 < v19)
      {
        v19 = v36;
      }
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_20:
    if (v12)
    {
      objc_msgSend_formatWithContext_(v12, v16, context, v18);
    }

    else
    {
      memset(&v45, 0, sizeof(v45));
    }

    v15 = objc_msgSend_stringValue_format_(TSCEStringValue, v16, &stru_2834BADA0, &v45);
    goto LABEL_24;
  }

  v45._tskFormat = v20;
  *&v45._formatType = v19;
  sub_2210780F0(&v48, &v45, v44, v17, v18);
  v15 = sub_2210789F4(v44, v37, v38, v39);
  v43._tskFormat = 0;
  v43._formatType = 0;
  v43._formatState = 0;
  *&v43._durationFormat = 1057;
  *(&v43._durationFormat + 2) = 1;
  *&v43._baseFormat.base = -50266102;
  v43._numberFormat = 253;
  TSCEFormat::TSCEFormat(&v45, &v43);
  objc_msgSend_setFormat_(v15, v40, &v45, v41);

LABEL_24:
  v14 = 0;
LABEL_25:

  return v15;
}

@end