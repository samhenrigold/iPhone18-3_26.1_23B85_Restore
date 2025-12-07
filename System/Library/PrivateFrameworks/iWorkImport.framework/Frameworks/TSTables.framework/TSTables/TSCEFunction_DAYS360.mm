@interface TSCEFunction_DAYS360
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DAYS360

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v55 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v55);
  v11 = v55;
  v15 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14);
  v18 = objc_msgSend_clearOffTime_(v15, v16, v10, v17);

  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v11, v20);
    goto LABEL_13;
  }

  v22 = *(*arguments + 8);
  v54 = 0;
  v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v54);
  v11 = v54;
  v27 = objc_msgSend_clearOffTime_(v15, v25, v24, v26);

  if (v11)
  {
    v30 = objc_msgSend_raiseErrorOrConvert_(context, v28, v11, v29);
    goto LABEL_11;
  }

  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v31 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v31, v32, v33, v34))
    {
    }

    else
    {
      v53 = 0;
      v45 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v31, v35, context, spec, 2, &v53);
      v46 = v53;
      if (v46)
      {
        v11 = v46;
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v47, v46, v48);

        goto LABEL_12;
      }

      if (v45)
      {
        v51 = 0;
        v36 = &v51;
        sub_2214A452C(v18, v27, 4, &v51);
        goto LABEL_9;
      }
    }
  }

  v52 = 0;
  v36 = &v52;
  sub_2214A452C(v18, v27, 0, &v52);
LABEL_9:
  v37 = *v36;
  if (!v37)
  {
    v41 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v21 = objc_msgSend_initWithDecimal_baseUnit_(v41, v42, &v50, 3);
    v49._tskFormat = 0;
    v49._formatType = 0;
    v49._formatState = 0;
    *&v49._durationFormat = 1057;
    *(&v49._durationFormat + 2) = 1;
    *&v49._baseFormat.base = -50266102;
    v49._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v50, &v49);
    objc_msgSend_setFormat_(v21, v43, &v50, v44);
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v37;
  v30 = objc_msgSend_raiseErrorOrConvert_(context, v38, v37, v39);
LABEL_11:
  v21 = v30;
LABEL_12:

LABEL_13:

  return v21;
}

@end