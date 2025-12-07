@interface TSCEFunction_DUR2HOURS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DUR2HOURS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v32 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v32);
  v13 = v32;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    if ((objc_msgSend_isDuration(v9, v10, v11, v12) & 1) == 0)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSCEFunction_DUR2HOURS evaluateForArgsWithContext:functionSpec:arguments:]", v17);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 623, 0, "Shouldn't get a non-duration in DUR2HOURS");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    objc_msgSend_rawTimeIntervalValue(v9, v15, v16, v17);
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v30, 256);
    v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v27, v31, v30);
  }

  v28 = v14;

  return v28;
}

@end