@interface BKSCATransform3DContainer
@end

@implementation BKSCATransform3DContainer

uint64_t __44___BKSCATransform3DContainer_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698E750];
  objc_opt_class();
  v2 = [v1 buildSchemaForClass:? builder:?];
  v3 = protobufSchema_schema_13468;
  protobufSchema_schema_13468 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end