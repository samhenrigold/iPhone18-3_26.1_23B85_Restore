@interface TSCEFunction_TODAY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TODAY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = *(arguments + 1) - *arguments;
  if ((v6 >> 3) < 1)
  {
    v13 = objc_msgSend_calcEngine(context, a2, context, spec);
    v7 = objc_msgSend_currentDate(v13, v14, v15, v16);

    v20 = objc_msgSend_calcEngine(context, v17, v18, v19);
    v9 = objc_msgSend_currentTimeZoneCalendar(v20, v21, v22, v23);

    v43 = 0;
    v44 = 0;
    v42 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v9, v24, v7, &v44, &v43, &v42);
    v28 = objc_msgSend_gregorianCalendar(TSCECalendar, v25, v26, v27);
    v30 = objc_msgSend_dateWithYear_month_day_(v28, v29, v44, v43, v42);
    v31 = MEMORY[0x277D80658];
    v35 = objc_msgSend_locale(context, v32, v33, v34);
    v38 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v31, v36, v35, v37);

    TSCEFormat::TSCEFormat(&v41, v38, 0);
    v12 = objc_msgSend_dateValue_format_(TSCEDateValue, v39, v30, &v41);
  }

  else
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec);
    v9 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v8, v7, (v6 >> 3) & 0x7FFFFFFF);
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v11);
  }

  return v12;
}

@end