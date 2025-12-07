@interface BKSHIDCAContextEventDeferringToken
@end

@implementation BKSHIDCAContextEventDeferringToken

uint64_t __53___BKSHIDCAContextEventDeferringToken_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_5178;
  protobufSchema_schema_5178 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end