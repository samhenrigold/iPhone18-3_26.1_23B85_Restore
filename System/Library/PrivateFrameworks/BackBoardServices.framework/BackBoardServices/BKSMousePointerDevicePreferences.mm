@interface BKSMousePointerDevicePreferences
+ (id)defaultPreferencesForHardwareType:(int64_t)type;
+ (id)protobufSchema;
- (BKSMousePointerDevicePreferences)init;
- (BKSMousePointerDevicePreferences)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (unint64_t)hash;
- (void)_fixMissingButtonConfigurations;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSMousePointerDevicePreferences

- (void)_fixMissingButtonConfigurations
{
  if (!self->_buttonConfigurationForVirtualButtonMice)
  {
    self->_buttonConfigurationForVirtualButtonMice = 1;
  }

  if (!self->_buttonConfigurationForHardwareButtonMice)
  {
    self->_buttonConfigurationForHardwareButtonMice = 2;
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = BKSMousePointerDevicePreferences;
  v4 = [(BKSMousePointerDevicePreferences *)&v7 description];
  v5 = [v3 initWithString:?];

  [v5 appendFormat:self->_pointerAccelerationFactor, self->_scrollAccelerationFactor, self->_enableTapToClick, self->_enableTwoFingerSecondaryClick, self->_doubleTapDragMode, self->_enableNaturalScrolling, self->_buttonConfigurationForVirtualButtonMice, self->_buttonConfigurationForHardwareButtonMice];
  [v5 appendFormat:self->_clickHapticStrength];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_pointerAccelerationFactor == equalCopy->_pointerAccelerationFactor && self->_scrollAccelerationFactor == equalCopy->_scrollAccelerationFactor && self->_enableTapToClick == equalCopy->_enableTapToClick && self->_enableTwoFingerSecondaryClick == equalCopy->_enableTwoFingerSecondaryClick && self->_clickHapticStrength == equalCopy->_clickHapticStrength && self->_enableNaturalScrolling == equalCopy->_enableNaturalScrolling && self->_doubleTapDragMode == equalCopy->_doubleTapDragMode && self->_buttonConfigurationForVirtualButtonMice == equalCopy->_buttonConfigurationForVirtualButtonMice && self->_buttonConfigurationForHardwareButtonMice == equalCopy->_buttonConfigurationForHardwareButtonMice;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v3 = [v2 hash];

  return v3;
}

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [(BKSMousePointerDevicePreferences *)self _fixMissingButtonConfigurations];
  return self;
}

- (BKSMousePointerDevicePreferences)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BKSMousePointerDevicePreferences *)self init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:?];
    v5->_pointerAccelerationFactor = v6;
    [coderCopy decodeFloatForKey:?];
    v5->_scrollAccelerationFactor = v7;
    v5->_enableTapToClick = [coderCopy decodeBoolForKey:?];
    v5->_enableTwoFingerSecondaryClick = [coderCopy decodeBoolForKey:?];
    v5->_doubleTapDragMode = [coderCopy decodeIntegerForKey:?];
    v5->_buttonConfigurationForVirtualButtonMice = [coderCopy decodeIntegerForKey:?];
    v5->_buttonConfigurationForHardwareButtonMice = [coderCopy decodeIntegerForKey:?];
    if ([coderCopy containsValueForKey:?])
    {
      v5->_enableNaturalScrolling = [coderCopy decodeBoolForKey:?];
    }

    if ([coderCopy containsValueForKey:?])
    {
      v5->_clickHapticStrength = [coderCopy decodeIntegerForKey:?];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];

  [(BKSMousePointerDevicePreferences *)self _fixMissingButtonConfigurations];
}

- (BKSMousePointerDevicePreferences)init
{
  v3.receiver = self;
  v3.super_class = BKSMousePointerDevicePreferences;
  result = [(BKSMousePointerDevicePreferences *)&v3 init];
  if (result)
  {
    *&result->_pointerAccelerationFactor = 0x3EA000003F800000;
    result->_enableTwoFingerSecondaryClick = 1;
    *&result->_enableNaturalScrolling = 1;
    result->_clickHapticStrength = 0;
    result->_doubleTapDragMode = 0;
  }

  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__BKSMousePointerDevicePreferences_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_8387 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_8387, block);
  }

  v2 = protobufSchema_schema_8388;

  return v2;
}

uint64_t __50__BKSMousePointerDevicePreferences_protobufSchema__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E750] buildSchemaForClass:? builder:?];
  v2 = protobufSchema_schema_8388;
  protobufSchema_schema_8388 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __50__BKSMousePointerDevicePreferences_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
  [v2 addField:? forTag:?];
}

+ (id)defaultPreferencesForHardwareType:(int64_t)type
{
  v3 = objc_alloc_init(BKSMousePointerDevicePreferences);
  [(BKSMousePointerDevicePreferences *)v3 setButtonConfigurationForVirtualButtonMice:?];
  [(BKSMousePointerDevicePreferences *)v3 setButtonConfigurationForHardwareButtonMice:?];
  [(BKSMousePointerDevicePreferences *)v3 setClickHapticStrength:?];
  [(BKSMousePointerDevicePreferences *)v3 setPointerAccelerationFactor:?];
  [(BKSMousePointerDevicePreferences *)v3 setScrollAccelerationFactor:?];
  [(BKSMousePointerDevicePreferences *)v3 setEnableTapToClick:?];
  [(BKSMousePointerDevicePreferences *)v3 setEnableTwoFingerSecondaryClick:?];
  [(BKSMousePointerDevicePreferences *)v3 setDoubleTapDragMode:?];
  [(BKSMousePointerDevicePreferences *)v3 setEnableNaturalScrolling:?];

  return v3;
}

@end