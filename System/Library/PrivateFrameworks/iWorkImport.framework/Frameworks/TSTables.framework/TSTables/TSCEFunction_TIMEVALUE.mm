@interface TSCEFunction_TIMEVALUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TIMEVALUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v10 = objc_msgSend_deepType_(v7, v8, context, v9);
  if (v10 == 5 || v10 == 0)
  {
    v24 = objc_msgSend_functionName(spec, v11, v12, v13);
    v49 = 0;
    v16 = objc_msgSend_asString_outError_(v7, v15, context, &v49);
    v17 = v49;
    v19 = objc_msgSend_stringDoesNotRepresentDateErrorForFunctionName_string_(TSCEError, v18, v24, v16);
    v22 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v21);

LABEL_7:
    goto LABEL_8;
  }

  v48 = 0;
  v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v11, context, spec, 0, &v48);
  v25 = v48;
  if (v25)
  {
    v29 = v25;
    if (objc_msgSend_errorType(v25, v26, v27, v28) == 8)
    {
      v16 = objc_msgSend_functionName(spec, v30, v31, v32);
      v47 = v29;
      v34 = objc_msgSend_asString_outError_(v7, v33, context, &v47);
      v17 = v47;

      v36 = objc_msgSend_stringDoesNotRepresentDateErrorForFunctionName_string_(TSCEError, v35, v16, v34);
      v22 = objc_msgSend_raiseErrorOrConvert_(context, v37, v36, v38);

      goto LABEL_7;
    }

    v22 = objc_msgSend_raiseErrorOrConvert_(context, v30, v29, v32);
    v17 = v29;
  }

  else
  {
    v39 = objc_msgSend_gregorianCalendar(TSCECalendar, v26, v27, v28);
    v45 = 0;
    v46 = 0;
    v44 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v39, v40, v24, 0, 0, 0, &v46, &v45, &v44);
    TSUDecimal::operator=();
    v22 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, v43, v42);
    v17 = 0;
  }

LABEL_8:

  return v22;
}

@end