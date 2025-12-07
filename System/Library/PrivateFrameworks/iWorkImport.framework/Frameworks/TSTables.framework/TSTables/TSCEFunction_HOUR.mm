@interface TSCEFunction_HOUR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HOUR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v23 = 0;
  v9 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v23);
  v13 = v23;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    v15 = objc_msgSend_gregorianCalendar(TSCECalendar, v10, v11, v12);
    objc_msgSend_extractHour_(v15, v16, v9, v17);
    TSUDecimal::operator=();
    v14 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v18, &v22, v19);
  }

  v20 = v14;

  return v20;
}

@end