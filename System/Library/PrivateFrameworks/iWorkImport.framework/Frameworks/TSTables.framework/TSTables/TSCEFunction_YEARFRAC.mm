@interface TSCEFunction_YEARFRAC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_YEARFRAC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v68, 0, sizeof(v68));
  }

  sub_22114F414(&v69, &v68);
  v67 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v67);
  v14 = v67;
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v14, v17);
    goto LABEL_27;
  }

  v20 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17);
  v23 = objc_msgSend_clearOffTime_(v20, v21, v13, v22);
  v24 = *(*arguments + 8);
  v27 = v24;
  if (v24)
  {
    objc_msgSend_formatWithContext_(v24, v25, context, v26);
  }

  else
  {
    memset(&v68, 0, sizeof(v68));
  }

  sub_22114F414(&v69, &v68);
  v66 = 0;
  v29 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 1, &v66);
  v30 = v66;
  if (!v30)
  {
    v60 = objc_msgSend_clearOffTime_(v20, v31, v29, v32);
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v41 = 0;
    }

    else
    {
      v35 = *(*arguments + 16);
      if (objc_msgSend_isTokenOrEmptyArg(v35, v36, v37, v38))
      {
        v41 = 0;
      }

      else
      {
        if (v35)
        {
          objc_msgSend_formatWithContext_(v35, v39, context, v40);
        }

        else
        {
          memset(&v68, 0, sizeof(v68));
        }

        sub_22114F414(&v69, &v68);
        v65 = 0;
        v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v42, context, spec, 2, &v65);
        v18 = v65;
        v47 = objc_msgSend_trunc(v43, v44, v45, v46);

        if (v18)
        {
          v51 = objc_msgSend_raiseErrorOrConvert_(context, v48, v18, v50);
LABEL_25:
          v19 = v51;

          goto LABEL_26;
        }

        v68._tskFormat = objc_msgSend_decimalRepresentation(v47, v48, v49, v50);
        *&v68._formatType = v52;
        v41 = TSUDecimal::truncateWithRounding(&v68);
      }
    }

    v35 = objc_msgSend_earlierDate_(v23, v33, v60, v34);
    v47 = objc_msgSend_laterDate_(v23, v53, v60, v54);
    v63 = 0;
    sub_2214A452C(v35, v47, v41, &v63);
    v55 = v63;
    TSUDecimal::operator=();
    v62 = v55;
    sub_2214A45C0(v35, v47, v41, &v62);
    v18 = v62;

    TSUDecimal::operator=();
    if (v18)
    {
      v51 = objc_msgSend_raiseErrorOrConvert_(context, v56, v18, v57);
    }

    else
    {
      *&v68._tskFormat = v64;
      TSUDecimal::operator/=();
      v61[0] = v68._tskFormat;
      v61[1] = *&v68._formatType;
      v68._tskFormat = 0;
      v68._formatType = 0;
      v68._formatState = 0;
      *&v68._durationFormat = 1057;
      *(&v68._durationFormat + 2) = 1;
      *&v68._baseFormat.base = 0xFDFD01000ALL;
      v51 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v58, v61, &v68);
    }

    goto LABEL_25;
  }

  v18 = v30;
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);
LABEL_26:

LABEL_27:
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  return v19;
}

@end