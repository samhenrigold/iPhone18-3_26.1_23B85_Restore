@interface CCMutableSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum
+ (id)new;
- (CCMutableSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum)init;
- (void)appendEnumValue:(unsigned int)value;
- (void)appendRawEnumValue:(unsigned int)value;
@end

@implementation CCMutableSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum

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

- (CCMutableSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum)init
{
  v3.receiver = self;
  v3.super_class = CCMutableSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum;
  return [(CCRepeatedFieldValue *)&v3 _init];
}

+ (id)new
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___CCMutableSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum;
  return objc_msgSendSuper2(&v3, sel__new);
}

@end