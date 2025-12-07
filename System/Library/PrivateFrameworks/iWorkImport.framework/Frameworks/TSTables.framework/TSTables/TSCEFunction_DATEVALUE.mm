@interface TSCEFunction_DATEVALUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DATEVALUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v69 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v69);
  v13 = v69;
  if (!v13)
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v10, context, v12);
    }

    else
    {
      memset(&v68, 0, sizeof(v68));
    }

    v66 = objc_msgSend_mutableCopy(v9, v10, v11, v12);
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%c", v17, 160);
    v22 = objc_msgSend_length(v9, v19, v20, v21);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v66, v23, v18, @" ", 2, 0, v22);
    v15 = v66;

    if (v68._formatType == 272)
    {
      v27 = TSCEFormat::customFormat(&v68, v24, v25, v26);
      v35 = objc_msgSend_customFormat(v27, v32, v33, v34);
      v39 = objc_msgSend_defaultFormatData(v35, v36, v37, v38);
      v31 = objc_msgSend_formatString(v39, v40, v41, v42);
    }

    else
    {
      if (v68._formatType != 261)
      {
        v31 = 0;
        goto LABEL_12;
      }

      v27 = TSCEFormat::dateTimeFormat(&v68, v24, v25, v26);
      v31 = objc_msgSend_formatString(v27, v28, v29, v30);
    }

LABEL_12:
    v43 = objc_msgSend_locale(context, v24, v25, v26);
    v44 = TSUCreateDateFromStringWithPreferredFormat();

    if (v44)
    {
      v48 = objc_msgSend_gregorianCalendar(TSCECalendar, v45, v46, v47);
      v51 = objc_msgSend_clearOffTime_(v48, v49, v44, v50);
      v52 = MEMORY[0x277D80658];
      v56 = objc_msgSend_locale(context, v53, v54, v55);
      v59 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v52, v57, v56, v58);

      TSCEFormat::TSCEFormat(&v67, v59, 0);
      v61 = objc_msgSend_dateValue_format_(TSCEDateValue, v60, v51, &v67);
    }

    else
    {
      v51 = objc_msgSend_functionName(spec, v45, v46, v47);
      v59 = objc_msgSend_stringDoesNotRepresentDateErrorForFunctionName_string_(TSCEError, v62, v51, v15);
      v61 = objc_msgSend_raiseErrorOrConvert_(context, v63, v59, v64);
    }

    v14 = v61;

    goto LABEL_16;
  }

  v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  v15 = v9;
LABEL_16:

  return v14;
}

@end