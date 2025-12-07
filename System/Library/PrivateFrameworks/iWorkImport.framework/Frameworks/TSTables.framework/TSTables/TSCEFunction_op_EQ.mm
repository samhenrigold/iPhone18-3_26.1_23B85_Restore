@interface TSCEFunction_op_EQ
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_EQ

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v8 = *(*arguments + 8);
  v16 = 0;
  v10 = objc_msgSend_valuesAreEqualLeft_right_context_outError_(TSCEValue, v9, v7, v8, context, &v16);
  v13 = v16;
  if (v13)
  {
    objc_msgSend_raiseErrorOrConvert_(context, v11, v13, v12);
  }

  else
  {
    objc_msgSend_BOOLValue_(TSCEBooleanValue, v11, v10, v12);
  }
  v14 = ;

  return v14;
}

@end