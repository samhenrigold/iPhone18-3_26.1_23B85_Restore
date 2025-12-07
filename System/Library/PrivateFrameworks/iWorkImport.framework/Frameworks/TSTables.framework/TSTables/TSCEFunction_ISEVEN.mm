@interface TSCEFunction_ISEVEN
+ (BOOL)isEven:(id)even value:(const TSUDecimal *)value warningType:(int64_t)type;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISEVEN

+ (BOOL)isEven:(id)even value:(const TSUDecimal *)value warningType:(int64_t)type
{
  evenCopy = even;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::split(value, &v14, &v13);
  if ((TSUDecimal::isZero(&v13) & 1) == 0)
  {
    objc_msgSend_reportWarningInContext_warningType_(TSCEWarning, v8, evenCopy, type);
  }

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::mod(&v14, &v11, &v12);
  isZero = TSUDecimal::isZero(&v12);

  return isZero;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v28 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v28);
  v13 = v28;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    v27[0] = objc_msgSend_decimalRepresentation(v9, v10, v11, v12);
    v27[1] = v15;
    isEven_value_warningType = objc_msgSend_isEven_value_warningType_(TSCEFunction_ISEVEN, v15, context, v27, 104);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1057;
    v24 = 1;
    v25 = -50266102;
    v26 = 253;
    v14 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v17, isEven_value_warningType, &v20);
  }

  v18 = v14;

  return v18;
}

@end