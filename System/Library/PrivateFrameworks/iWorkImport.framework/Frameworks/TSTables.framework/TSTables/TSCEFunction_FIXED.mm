@interface TSCEFunction_FIXED
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FIXED

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  __p = 0;
  v81 = 0;
  v82 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v79, 0, sizeof(v79));
  }

  sub_22114F414(&__p, &v79);
  v78 = 0;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v78);
  v14 = v78;
  if (v14)
  {
    v18 = v14;
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v14, v17);
    goto LABEL_39;
  }

  v77._decimal.w[0] = objc_msgSend_decimalRepresentation(v13, v15, v16, v17);
  v77._decimal.w[1] = v20;
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    LOBYTE(v29) = 2;
    v30 = 1;
    goto LABEL_36;
  }

  v23 = *(*arguments + 8);
  if (objc_msgSend_isTokenOrEmptyArg(v23, v24, v25, v26))
  {
    goto LABEL_13;
  }

  if (v23)
  {
    objc_msgSend_formatWithContext_(v23, v27, context, v28);
  }

  else
  {
    memset(&v79, 0, sizeof(v79));
  }

  sub_22114F414(&__p, &v79);
  if (objc_msgSend_nativeType(v23, v31, v32, v33) == 10)
  {
LABEL_13:
    v29 = 2;
  }

  else
  {
    v76 = 0;
    v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v34, context, spec, 1, &v76);
    v18 = v76;
    v45 = objc_msgSend_trunc(v41, v42, v43, v44);

    v79._tskFormat = objc_msgSend_decimalRepresentation(v45, v46, v47, v48);
    *&v79._formatType = v49;
    v50 = TSUDecimal::truncatedIntegerValue(&v79);
    if (v18)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v51, v18, v52);
LABEL_37:

      goto LABEL_38;
    }

    v29 = v50;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    v30 = 1;
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  v23 = *(*arguments + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v23, v35, v36, v37))
  {
    v40 = 0;
    goto LABEL_27;
  }

  if (v23)
  {
    objc_msgSend_formatWithContext_(v23, v38, context, v39);
  }

  else
  {
    memset(&v79, 0, sizeof(v79));
  }

  sub_22114F414(&__p, &v79);
  v75 = 0;
  v40 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v23, v53, context, spec, 2, &v75);
  v54 = v75;
  if (!v54)
  {
LABEL_27:

    v30 = v40 ^ 1;
    if ((v29 & 0x80000000) != 0)
    {
LABEL_28:
      TSUDecimal::operator=();
      if (v29 < 0xFFFFFECC)
      {
        *&v79._tskFormat = xmmword_2217E1440;
      }

      else
      {
        TSUDecimal::pow10(&v79);
      }

      if ((TSUDecimal::isInf(&v79) & 1) != 0 || TSUDecimal::isZero(&v79))
      {
        TSUDecimal::operator=();
      }

      else
      {
        TSUDecimal::operator*=();
        TSUDecimal::round(&v77);
        TSUDecimal::operator/=();
      }

      LOBYTE(v29) = 0;
    }

LABEL_36:
    v57 = MEMORY[0x277D81280];
    v58 = objc_msgSend_locale(context, v20, v21, v22);
    v62 = objc_msgSend_currencyCode(v58, v59, v60, v61);
    HIBYTE(v74) = -1;
    LOBYTE(v74) = v30;
    v23 = objc_msgSend_numberFormatWithValueType_formatString_decimalPlaces_currencyCode_useAccountingStyle_negativeStyle_showThousandsSeparator_fractionAccuracy_(v57, v63, 0, 0, v29, v62, 0, 0, v74);

    TSUDecimal::doubleValue(&v77);
    v65 = v64;
    v69 = objc_msgSend_locale(context, v66, v67, v68);
    v45 = objc_msgSend_stringFromDouble_locale_(v23, v70, v69, v71, v65);

    sub_221256020(&__p, &v79);
    v19 = objc_msgSend_stringValue_format_(TSCEStringValue, v72, v45, &v79);
    v18 = 0;
    goto LABEL_37;
  }

  v18 = v54;
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v55, v54, v56);
LABEL_38:

LABEL_39:
  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

  return v19;
}

@end