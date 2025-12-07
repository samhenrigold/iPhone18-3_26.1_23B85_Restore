@interface TSCEFunction_ISOMITTED
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISOMITTED

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v5 = **arguments;
  isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v5, v6, v7, v8);
  v12 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v10, isTokenOrEmptyArg, v11);

  return v12;
}

@end