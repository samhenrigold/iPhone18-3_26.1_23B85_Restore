@interface BKSBacklightFeatures
+ (id)protobufSchema;
- (BKSBacklightFeatures)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)succinctDescription;
- (void)setFixedBrightnessLevelWhileDisabled:(float)disabled;
- (void)setFixedBrightnessNitsWhileDisabled:(float)disabled;
@end

@implementation BKSBacklightFeatures

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  fixedBrightnessLevelWhileDisabled = self->_fixedBrightnessLevelWhileDisabled;
  if (fixedBrightnessLevelWhileDisabled == -1.0 || (fixedBrightnessNitsWhileDisabled = self->_fixedBrightnessNitsWhileDisabled, fixedBrightnessNitsWhileDisabled == -1.0))
  {
    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      fixedBrightnessLevelWhileDisabled = [MEMORY[0x1E696AEC0] stringWithFormat:fixedBrightnessNitsWhileDisabled, fixedBrightnessLevelWhileDisabled];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      *error = [v6 errorWithDomain:? code:? userInfo:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BKSBacklightFeatures *)self succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendBool:? withName:?];
  v5 = [succinctDescriptionBuilder appendFloat:? withName:?];
  v6 = [succinctDescriptionBuilder appendFloat:? withName:?];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSBacklightFeatures *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSBacklightFeatures *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)setFixedBrightnessLevelWhileDisabled:(float)disabled
{
  if (self->_fixedBrightnessNitsWhileDisabled >= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  self->_fixedBrightnessLevelWhileDisabled = disabled;
}

- (void)setFixedBrightnessNitsWhileDisabled:(float)disabled
{
  if (self->_fixedBrightnessLevelWhileDisabled >= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
  }

  self->_fixedBrightnessNitsWhileDisabled = disabled;
}

- (BKSBacklightFeatures)init
{
  v8.receiver = self;
  v8.super_class = BKSBacklightFeatures;
  result = [(BKSBacklightFeatures *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    *&result->_fixedBrightnessNitsWhileDisabled = _D0;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__BKSBacklightFeatures_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_9819 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_9819, block);
  }

  v2 = protobufSchema_schema_9820;

  return v2;
}

uint64_t __38__BKSBacklightFeatures_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E698E750];
  objc_opt_class();
  v2 = [v1 buildSchemaForClass:? builder:?];
  v3 = protobufSchema_schema_9820;
  protobufSchema_schema_9820 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __38__BKSBacklightFeatures_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
}

@end