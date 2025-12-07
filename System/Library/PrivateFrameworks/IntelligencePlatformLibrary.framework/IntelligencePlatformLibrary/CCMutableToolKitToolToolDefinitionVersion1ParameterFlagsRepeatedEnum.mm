@interface CCMutableToolKitToolToolDefinitionVersion1ParameterFlagsRepeatedEnum
+ (id)new;
- (CCMutableToolKitToolToolDefinitionVersion1ParameterFlagsRepeatedEnum)init;
- (void)appendEnumValue:(unsigned int)value;
- (void)appendRawEnumValue:(unsigned int)value;
@end

@implementation CCMutableToolKitToolToolDefinitionVersion1ParameterFlagsRepeatedEnum

- (void)appendEnumValue:(unsigned int)value
{
  v3 = *&value;
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [values addObject:v4];
}

- (void)appendRawEnumValue:(unsigned int)value
{
  v3 = *&value;
  values = [(CCRepeatedFieldValue *)self values];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [values addObject:v4];
}

- (CCMutableToolKitToolToolDefinitionVersion1ParameterFlagsRepeatedEnum)init
{
  v3.receiver = self;
  v3.super_class = CCMutableToolKitToolToolDefinitionVersion1ParameterFlagsRepeatedEnum;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableToolKitToolToolDefinitionVersion1ParameterFlagsRepeatedEnum;
  return objc_msgSendSuper2(&v3, sel__new);
}

@end