@interface TSCEFunction_NOW
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NOW

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = *(arguments + 1) - *arguments;
  if ((v6 >> 3) < 1)
  {
    v13 = objc_msgSend_calcEngine(context, a2, context, spec);
    v7 = objc_msgSend_currentDate(v13, v14, v15, v16);

    v20 = objc_msgSend_calcEngine(context, v17, v18, v19);
    v9 = objc_msgSend_currentTimeZoneCalendar(v20, v21, v22, v23);

    v26 = objc_msgSend_dateWithIdenticalComponentsInGMTForDate_(v9, v24, v7, v25);
    v27 = objc_alloc(MEMORY[0x277D80658]);
    v31 = objc_msgSend_locale(context, v28, v29, v30);
    v32 = TSUDefaultDateTimeFormat();
    v35 = objc_msgSend_initWithFormatString_(v27, v33, v32, v34);

    TSCEFormat::TSCEFormat(&v38, v35, 0);
    v12 = objc_msgSend_dateValue_format_(TSCEDateValue, v36, v26, &v38);
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