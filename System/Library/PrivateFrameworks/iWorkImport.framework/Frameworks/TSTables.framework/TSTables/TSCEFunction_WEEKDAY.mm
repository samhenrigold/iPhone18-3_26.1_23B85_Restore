@interface TSCEFunction_WEEKDAY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_WEEKDAY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v44 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v44);
  v11 = v44;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
LABEL_3:

    goto LABEL_13;
  }

  v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14);
  Weekday = objc_msgSend_extractWeekday_(v17, v18, v10, v19);
  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v21 = *(*arguments + 8);
    if ((objc_msgSend_isTokenOrEmptyArg(v21, v22, v23, v24) & 1) == 0)
    {
      v43 = 0;
      v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v25, context, spec, 1, &v43);
      v15 = v43;
      v30 = objc_msgSend_trunc(v26, v27, v28, v29);

      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v31, v15, v33);

        goto LABEL_3;
      }

      v37._decimal.w[0] = objc_msgSend_decimalRepresentation(v30, v31, v32, v33);
      v37._decimal.w[1] = v34;
      if (TSUDecimal::truncateWithRounding(&v37) == 2)
      {
        fmod(Weekday + 6.0, 7.0);
      }
    }
  }

  TSUDecimal::operator=();
  v37._decimal.w[0] = 0;
  LODWORD(v37._decimal.w[1]) = 0;
  BYTE4(v37._decimal.w[1]) = 0;
  v38 = 1057;
  v39 = 1;
  v40 = -50266102;
  v41 = 253;
  v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v35, v42, &v37);
LABEL_13:

  return v16;
}

@end