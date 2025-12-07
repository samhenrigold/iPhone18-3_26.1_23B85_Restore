@interface TSCEFunction_ISBLANK
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISBLANK

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = **arguments;
  IsBlank_context = objc_msgSend_valueIsBlank_context_(TSCEFunction_ISBLANK, v7, v6, context);
  if (v6)
  {
    objc_msgSend_formatWithContext_(v6, v8, context, v9);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  v11 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v8, IsBlank_context, v13);

  return v11;
}

@end