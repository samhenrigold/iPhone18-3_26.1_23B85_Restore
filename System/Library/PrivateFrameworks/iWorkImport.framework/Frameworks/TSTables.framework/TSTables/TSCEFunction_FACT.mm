@interface TSCEFunction_FACT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FACT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  TSUDecimal::operator=();
  v10 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v8, &v13, v9);
  v11 = sub_2212570BC(context, spec, v7, v10, v10);

  return v11;
}

@end