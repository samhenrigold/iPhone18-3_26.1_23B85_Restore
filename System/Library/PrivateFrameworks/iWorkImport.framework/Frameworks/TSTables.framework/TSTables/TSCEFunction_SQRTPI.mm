@interface TSCEFunction_SQRTPI
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SQRTPI

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v27 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v27);
  v12 = v27;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
  }

  else
  {
    TSUDecimal::operator=();
    v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v14, &v26, v15);
    v20 = objc_msgSend_sqrt(v9, v17, v18, v19);
    v13 = objc_msgSend_multiply_context_(v20, v21, v16, context);

    v25._tskFormat = 0;
    v25._formatType = 0;
    v25._formatState = 0;
    *&v25._durationFormat = 1057;
    *(&v25._durationFormat + 2) = 1;
    *&v25._baseFormat.base = -50266102;
    v25._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v26, &v25);
    objc_msgSend_setFormat_(v13, v22, &v26, v23);
  }

  return v13;
}

@end