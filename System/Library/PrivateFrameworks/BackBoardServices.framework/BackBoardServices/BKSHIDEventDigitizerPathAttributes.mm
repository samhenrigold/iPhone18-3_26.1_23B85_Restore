@interface BKSHIDEventDigitizerPathAttributes
+ (id)protobufSchema;
- (BKSHIDEventDeferringChangeBasis)changeBasis;
- (BKSHIDEventProvenance)provenance;
- (BOOL)isEqual:(id)equal;
- (CGPoint)hitTestLocation;
- (CGPoint)preciseLocation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)setProvenance:(id)provenance;
@end

@implementation BKSHIDEventDigitizerPathAttributes

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__BKSHIDEventDigitizerPathAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_318 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_318, block);
  }

  v2 = protobufSchema_schema_317;

  return v2;
}

uint64_t __52__BKSHIDEventDigitizerPathAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_317;
  protobufSchema_schema_317 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __52__BKSHIDEventDigitizerPathAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

- (CGPoint)preciseLocation
{
  x = self->_preciseLocation.x;
  y = self->_preciseLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)hitTestLocation
{
  x = self->_hitTestLocation.x;
  y = self->_hitTestLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendInteger:? withName:?];
  v5 = [formatterCopy appendInteger:? withName:?];
  v6 = [formatterCopy appendInteger:? withName:?];
  v7 = [formatterCopy appendInteger:? withName:?];
  v8 = NSStringFromBKSTouchHitTestContextCategory(self->_hitTestContextCategory);
  [formatterCopy appendString:? withName:?];

  v9 = [formatterCopy appendFloat:? withName:?];
  v10 = [formatterCopy appendPoint:? withName:?];
  v11 = [formatterCopy appendPoint:? withName:?];
  v12 = [formatterCopy appendObject:? withName:? skipIfNil:?];
  v13 = [formatterCopy appendObject:? withName:? skipIfNil:?];
  v14 = [formatterCopy appendObject:? withName:? skipIfNil:?];
}

- (void)setProvenance:(id)provenance
{
  v27 = *MEMORY[0x1E69E9840];
  provenanceCopy = provenance;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    authenticationMessage = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    v7 = provenanceCopy;
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = v7;
LABEL_8:

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_authenticationMessage, provenance);
LABEL_7:
    simpleProvenance = self->_simpleProvenance;
    self->_simpleProvenance = 0;
    goto LABEL_8;
  }

  if (!provenanceCopy)
  {
    v9 = self->_authenticationMessage;
    self->_authenticationMessage = 0;

    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    selfCopy = self;
    v21 = 2114;
    v22 = @"BKSHIDEventAttributes.m";
    v23 = 1024;
    v24 = 654;
    v25 = 2114;
    v26 = v10;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKSHIDEventDeferringChangeBasis)changeBasis
{
  v3 = [BKSHIDEventDeferringChangeBasis alloc];
  provenance = [(BKSHIDEventDigitizerPathAttributes *)self provenance];
  v5 = [(BKSHIDEventDeferringChangeBasis *)v3 initWithEventProvenance:?];

  return v5;
}

- (BKSHIDEventProvenance)provenance
{
  authenticationMessage = self->_authenticationMessage;
  if (!authenticationMessage)
  {
    authenticationMessage = self->_simpleProvenance;
  }

  return authenticationMessage;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_pathIndex == *(v5 + 4) && self->_touchIdentifier == *(v5 + 5) && self->_userIdentifier == *(v5 + 6) && self->_locus == v5[16] && self->_hitTestContextCategory == *(v5 + 5) && self->_zGradient == *(v5 + 7) && self->_hitTestLocation.x == *(v5 + 8) && self->_hitTestLocation.y == *(v5 + 9) && self->_preciseLocation.x == *(v5 + 10) && self->_preciseLocation.y == *(v5 + 11) && BSEqualObjects() && BSEqualObjects())
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:?];
  v4[4] = self->_pathIndex;
  *(v4 + 5) = self->_touchIdentifier;
  *(v4 + 6) = self->_userIdentifier;
  v4[5] = self->_hitTestContextCategory;
  *(v4 + 16) = self->_locus;
  *(v4 + 7) = LODWORD(self->_zGradient);
  *(v4 + 4) = self->_hitTestLocation;
  *(v4 + 5) = self->_preciseLocation;
  objc_storeStrong(v4 + 6, self->_authenticationMessage);
  objc_storeStrong(v4 + 1, self->_simpleProvenance);
  objc_storeStrong(v4 + 7, self->_securityAnalysis);
  return v4;
}

@end