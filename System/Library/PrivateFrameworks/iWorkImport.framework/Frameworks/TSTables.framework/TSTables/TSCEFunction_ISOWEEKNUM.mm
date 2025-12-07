@interface TSCEFunction_ISOWEEKNUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISOWEEKNUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v25 = 0;
  v9 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v25);
  v13 = v25;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
LABEL_5:
    v17 = v14;
    goto LABEL_6;
  }

  if (v9)
  {
    objc_msgSend_isoWeekNumberForDate_(TSCECalendar, v10, v9, v12);
    TSUDecimal::operator=();
    v14 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v15, &v24, v16);
    goto LABEL_5;
  }

  v19 = objc_msgSend_functionName(spec, v10, v11, v12);
  v21 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v20, v19, 1);
  v17 = objc_msgSend_raiseErrorOrConvert_(context, v22, v21, v23);

LABEL_6:

  return v17;
}

@end