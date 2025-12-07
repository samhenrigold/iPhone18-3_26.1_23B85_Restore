@interface TSCEFunction_YEAR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_YEAR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v29 = 0;
  v9 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v29);
  v13 = v29;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    v15 = objc_msgSend_gregorianCalendar(TSCECalendar, v10, v11, v12);
    v16 = MEMORY[0x277D80680];
    v20 = objc_msgSend_locale(context, v17, v18, v19);
    v22 = objc_msgSend_defaultFormatWithFormatType_locale_(v16, v21, 256, v20);

    objc_msgSend_extractYear_(v15, v23, v9, v24);
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v27, v22, 0);
    v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v25, v28, &v27);
  }

  return v14;
}

@end