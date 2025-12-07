@interface BKSHIDCGSWindowIDEventDeferringToken
@end

@implementation BKSHIDCGSWindowIDEventDeferringToken

uint64_t __55___BKSHIDCGSWindowIDEventDeferringToken_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_99;
  protobufSchema_schema_99 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end