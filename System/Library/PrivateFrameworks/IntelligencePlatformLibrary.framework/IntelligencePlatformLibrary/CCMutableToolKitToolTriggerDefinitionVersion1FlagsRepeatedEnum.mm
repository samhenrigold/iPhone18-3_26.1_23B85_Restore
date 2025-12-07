@interface CCMutableToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum
+ (id)new;
- (CCMutableToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum)init;
- (void)appendEnumValue:(unsigned int)value;
- (void)appendRawEnumValue:(unsigned int)value;
@end

@implementation CCMutableToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum

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

- (CCMutableToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum)init
{
  v3.receiver = self;
  v3.super_class = CCMutableToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum;
  return objc_msgSendSuper2(&v3, sel__new);
}

@end