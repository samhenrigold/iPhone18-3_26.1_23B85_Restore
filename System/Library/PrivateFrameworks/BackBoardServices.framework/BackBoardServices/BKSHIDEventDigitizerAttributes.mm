@interface BKSHIDEventDigitizerAttributes
+ (id)protobufSchema;
- (BOOL)isEqual:(id)equal;
- (CGSize)digitizerSurfaceSize;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKSHIDEventDigitizerAttributes

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BKSHIDEventDigitizerAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_436 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_436, block);
  }

  v2 = protobufSchema_schema_435;

  return v2;
}

uint64_t __48__BKSHIDEventDigitizerAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_435;
  protobufSchema_schema_435 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __48__BKSHIDEventDigitizerAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
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
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
}

- (CGSize)digitizerSurfaceSize
{
  width = self->_digitizerSurfaceSize.width;
  height = self->_digitizerSurfaceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v18.receiver = self;
  v18.super_class = BKSHIDEventDigitizerAttributes;
  [(BKSHIDEventBaseAttributes *)&v18 appendDescriptionToFormatter:formatterCopy];
  v5 = [formatterCopy appendObject:? withName:? skipIfNil:?];
  if (self->_maximumForce != 0.0)
  {
    v6 = [formatterCopy appendFloat:? withName:?];
  }

  if (self->_maximumPositionZ != 0.0)
  {
    v7 = [formatterCopy appendFloat:? withName:?];
  }

  v8 = [formatterCopy appendBool:? withName:? ifEqualTo:?];
  v9 = [formatterCopy appendBool:? withName:? ifEqualTo:?];
  sceneTouchBehavior = self->_sceneTouchBehavior;
  if (sceneTouchBehavior)
  {
    v11 = NSStringFromBKSSceneHostTouchBehavior(sceneTouchBehavior);
    [formatterCopy appendString:? withName:?];
  }

  if (self->_touchStreamIdentifier)
  {
    v12 = NSStringFromBKSTouchStreamIdentifier(self->_touchStreamIdentifier);
    [formatterCopy appendString:? withName:?];
  }

  if (self->_initialTouchTimestamp != 0.0)
  {
    v13 = [formatterCopy appendTimeInterval:? withName:? decomposeUnits:?];
  }

  activeModifiers = self->_activeModifiers;
  if (activeModifiers)
  {
    v15 = NSStringFromBKSKeyModifierFlags(activeModifiers);
    v16 = [formatterCopy appendObject:? withName:?];
  }

  if (self->_digitizerSurfaceSize.width != 0.0 || self->_digitizerSurfaceSize.height != 0.0)
  {
    v17 = [formatterCopy appendSize:? withName:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = BKSHIDEventDigitizerAttributes;
  if ([(BKSHIDEventBaseAttributes *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    if (self->_maximumForce == v5[15] && self->_maximumPositionZ == *(v5 + 8) && self->_digitizerSurfaceSize.height == *(v5 + 14) && self->_digitizerSurfaceSize.width == *(v5 + 13) && self->_initialTouchTimestamp == *(v5 + 10) && self->_activeModifiers == *(v5 + 11) && self->_systemGesturesPossible == *(v5 + 57) && self->_systemGestureStateChange == *(v5 + 58) && self->_sceneTouchBehavior == *(v5 + 12) && self->_touchStreamIdentifier == *(v5 + 56))
    {
      v8 = v5;
      v6 = BSEqualObjects();
      v5 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = BKSHIDEventDigitizerAttributes;
  v4 = [(BKSHIDEventBaseAttributes *)&v8 copyWithZone:zone];
  *(v4 + 15) = LODWORD(self->_maximumForce);
  *(v4 + 8) = *&self->_maximumPositionZ;
  *(v4 + 104) = self->_digitizerSurfaceSize;
  *(v4 + 10) = *&self->_initialTouchTimestamp;
  *(v4 + 11) = self->_activeModifiers;
  v4[57] = self->_systemGesturesPossible;
  v4[58] = self->_systemGestureStateChange;
  *(v4 + 12) = self->_sceneTouchBehavior;
  v4[56] = self->_touchStreamIdentifier;
  v5 = [(NSArray *)self->_pathAttributes copy];
  v6 = *(v4 + 9);
  *(v4 + 9) = v5;

  return v4;
}

@end