@interface LNValue
@end

@implementation LNValue

uint64_t __114__LNValue_Serialization__valueFromSerializedRepresentation_valueType_variableProvider_parameter_bundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  isEqualToString = objc_msgSend_isEqualToString_(v4);
  return isEqualToString;
}

@end