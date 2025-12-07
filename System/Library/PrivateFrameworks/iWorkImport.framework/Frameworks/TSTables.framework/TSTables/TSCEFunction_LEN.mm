@interface TSCEFunction_LEN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LEN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v28 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v28);
  v12 = v28;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
  }

  else
  {
    v14 = v9;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v15, @"\u200E", &stru_2834BADA0);

    v18 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v16, v17, @"\u200F", &stru_2834BADA0);

    v22 = objc_msgSend_length(v18, v19, v20, v21);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_221587F4C;
    v29[3] = &unk_278464D58;
    v29[4] = v30;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v18, v23, 0, v22, 2, v29);
    _Block_object_dispose(v30, 8);

    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v29, 256);
    v13 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v24, &v27, v29);
  }

  v25 = v13;

  return v25;
}

@end