@interface BKSButtonHapticsDefinition
+ (id)definitionForHomeButton;
- (BKSButtonHapticsDefinition)init;
- (BKSButtonHapticsDefinition)initWithCoder:(id)coder;
- (double)maximumLongPressTimeInterval;
- (double)maximumMultiplePressTimeInterval;
- (double)minimumLongPressTimeInterval;
- (double)minimumMultiplePressTimeInterval;
- (id)_initWithBSSettings:(id)settings;
- (id)description;
- (int64_t)clickHapticAssetType;
- (int64_t)isLongPressEnabled;
- (int64_t)maximumPressCount;
- (int64_t)maximumTapCount;
- (void)encodeWithCoder:(id)coder;
- (void)setClickHapticAssetType:(int64_t)type;
- (void)setMaximumLongPressTimeInterval:(double)interval;
- (void)setMaximumMultiplePressTimeInterval:(double)interval;
- (void)setMaximumPressCount:(int64_t)count;
- (void)setMaximumTapCount:(int64_t)count;
- (void)setMinimumLongPressTimeInterval:(double)interval;
- (void)setMinimumMultiplePressTimeInterval:(double)interval;
- (void)updateFromDefinition:(id)definition withChangeInspectorBlock:(id)block;
@end

@implementation BKSButtonHapticsDefinition

- (int64_t)maximumPressCount
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:?];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (double)maximumMultiplePressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:?];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(BKSButtonHapticsDefinition *)self minimumMultiplePressTimeInterval];
  [coderCopy encodeDouble:? forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumMultiplePressTimeInterval];
  [coderCopy encodeDouble:? forKey:?];
  [(BKSButtonHapticsDefinition *)self minimumLongPressTimeInterval];
  [coderCopy encodeDouble:? forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumLongPressTimeInterval];
  [coderCopy encodeDouble:? forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumTapCount];
  [coderCopy encodeInteger:? forKey:?];
  [(BKSButtonHapticsDefinition *)self maximumPressCount];
  [coderCopy encodeInteger:? forKey:?];
  [(BKSButtonHapticsDefinition *)self clickHapticAssetType];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
}

- (BKSButtonHapticsDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BKSButtonHapticsDefinition *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:?];
    [(BKSButtonHapticsDefinition *)v5 setMinimumMultiplePressTimeInterval:?];
    [coderCopy decodeDoubleForKey:?];
    [(BKSButtonHapticsDefinition *)v5 setMaximumMultiplePressTimeInterval:?];
    [coderCopy decodeDoubleForKey:?];
    [(BKSButtonHapticsDefinition *)v5 setMinimumLongPressTimeInterval:?];
    [coderCopy decodeDoubleForKey:?];
    [(BKSButtonHapticsDefinition *)v5 setMaximumLongPressTimeInterval:?];
    [coderCopy decodeIntegerForKey:?];
    [(BKSButtonHapticsDefinition *)v5 setMaximumTapCount:?];
    [coderCopy decodeIntegerForKey:?];
    [(BKSButtonHapticsDefinition *)v5 setMaximumPressCount:?];
    [coderCopy decodeIntegerForKey:?];
    [(BKSButtonHapticsDefinition *)v5 setClickHapticAssetType:?];
    v5->_representsHomeButton = [coderCopy decodeBoolForKey:?];
  }

  return v5;
}

- (void)updateFromDefinition:(id)definition withChangeInspectorBlock:(id)block
{
  blockCopy = block;
  v7 = self->_settings;
  _BSSettings = [definition _BSSettings];
  v9 = [MEMORY[0x1E698E770] diffFromSettings:? toSettings:?];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __76__BKSButtonHapticsDefinition_updateFromDefinition_withChangeInspectorBlock___block_invoke;
  v16 = &unk_1E6F47418;
  v18 = v7;
  v19 = blockCopy;
  v17 = _BSSettings;
  v10 = v7;
  v11 = blockCopy;
  v12 = _BSSettings;
  [v9 inspectChangesWithBlock:?];
}

uint64_t __76__BKSButtonHapticsDefinition_updateFromDefinition_withChangeInspectorBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) objectForSetting:?];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) setObject:? forSetting:?];
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)setClickHapticAssetType:(int64_t)type
{
  if (type < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"assetType >= BKSButtonHapticAssetTypeUndefined" object:? file:? lineNumber:? description:?];

    goto LABEL_3;
  }

  if (type)
  {
LABEL_3:
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_5:
  v6 = v4;
  [BSMutableSettings setObject:"setObject:forSetting:" forSetting:?];
}

- (int64_t)clickHapticAssetType
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:?];
  v3 = v2;
  if (v2 && [v2 integerValue])
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)isLongPressEnabled
{
  [(BKSButtonHapticsDefinition *)self minimumLongPressTimeInterval];
  v4 = v3;
  [(BKSButtonHapticsDefinition *)self maximumLongPressTimeInterval];
  v6 = fmax(v4, v5);
  if (v5 < 0.0 && v4 < 0.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v6 > 0.0;
  }
}

- (void)setMaximumLongPressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"longPressTimeInterval <= BK_MAX_TIMEOUT_SECONDS" object:? file:? lineNumber:? description:?];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:@"longPressTimeInterval >= BKSButtonDefinitionUnspecifiedValue" object:? file:? lineNumber:? description:?];
  }

  if (interval == -1.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v8 = v5;
  [BSMutableSettings setObject:"setObject:forSetting:" forSetting:?];
}

- (double)maximumLongPressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:?];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)setMinimumLongPressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"longPressTimeInterval <= BK_MAX_TIMEOUT_SECONDS" object:? file:? lineNumber:? description:?];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:@"longPressTimeInterval >= BKSButtonDefinitionUnspecifiedValue" object:? file:? lineNumber:? description:?];
  }

  if (interval == -1.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v8 = v5;
  [BSMutableSettings setObject:"setObject:forSetting:" forSetting:?];
}

- (double)minimumLongPressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:?];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)setMaximumMultiplePressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"multiplePressTimeInterval <= BK_MAX_TIMEOUT_SECONDS" object:? file:? lineNumber:? description:?];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:@"multiplePressTimeInterval >= BKSButtonDefinitionUnspecifiedValue" object:? file:? lineNumber:? description:?];
  }

  if (interval == -1.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v8 = v5;
  [BSMutableSettings setObject:"setObject:forSetting:" forSetting:?];
}

- (void)setMinimumMultiplePressTimeInterval:(double)interval
{
  if (interval > 30.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"multiplePressTimeInterval <= BK_MAX_TIMEOUT_SECONDS" object:? file:? lineNumber:? description:?];
  }

  if (interval < -1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:@"multiplePressTimeInterval >= BKSButtonDefinitionUnspecifiedValue" object:? file:? lineNumber:? description:?];
  }

  if (interval == -1.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  v8 = v5;
  [BSMutableSettings setObject:"setObject:forSetting:" forSetting:?];
}

- (double)minimumMultiplePressTimeInterval
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:?];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (void)setMaximumPressCount:(int64_t)count
{
  if ((count - 1) >= 3)
  {
    if (count == -1)
    {
      v4 = 0;
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"maximumPressCount == BKSButtonDefinitionUnspecifiedValue || (maximumPressCount >= 1 && maximumPressCount <= BKSButtonDefinitionMaximumSupportedPressCount)" object:? file:? lineNumber:? description:?];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
LABEL_6:
  v6 = v4;
  [BSMutableSettings setObject:"setObject:forSetting:" forSetting:?];
}

- (void)setMaximumTapCount:(int64_t)count
{
  if ((count - 4) <= 0xFFFFFFFFFFFFFFFALL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"maximumTapCount == BKSButtonDefinitionUnspecifiedValue || (maximumTapCount >= 0 && maximumTapCount <= BKSButtonDefinitionMaximumSupportedPressCount)" object:? file:? lineNumber:? description:?];

    goto LABEL_3;
  }

  if (count != -1)
  {
LABEL_3:
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_5:
  v6 = v4;
  [BSMutableSettings setObject:"setObject:forSetting:" forSetting:?];
}

- (int64_t)maximumTapCount
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:?];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:?];
  v4 = [v3 appendBool:? withName:?];
  [(BKSButtonHapticsDefinition *)self maximumTapCount];
  v5 = [v3 appendInteger:? withName:?];
  [(BKSButtonHapticsDefinition *)self maximumPressCount];
  v6 = [v3 appendInteger:? withName:?];
  [(BKSButtonHapticsDefinition *)self minimumMultiplePressTimeInterval];
  v7 = [v3 appendDouble:? withName:? decimalPrecision:?];
  [(BKSButtonHapticsDefinition *)self maximumMultiplePressTimeInterval];
  v8 = [v3 appendDouble:? withName:? decimalPrecision:?];
  [(BKSButtonHapticsDefinition *)self minimumLongPressTimeInterval];
  v9 = [v3 appendDouble:? withName:? decimalPrecision:?];
  [(BKSButtonHapticsDefinition *)self maximumLongPressTimeInterval];
  v10 = [v3 appendDouble:? withName:? decimalPrecision:?];
  [(BKSButtonHapticsDefinition *)self clickHapticAssetType];
  v11 = [v3 appendInteger:? withName:?];
  build = [v3 build];

  return build;
}

- (BKSButtonHapticsDefinition)init
{
  v6.receiver = self;
  v6.super_class = BKSButtonHapticsDefinition;
  v2 = [(BKSButtonHapticsDefinition *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E700]);
    settings = v2->_settings;
    v2->_settings = v3;
  }

  return v2;
}

- (id)_initWithBSSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = BKSButtonHapticsDefinition;
  v5 = [(BKSButtonHapticsDefinition *)&v9 init];
  if (v5)
  {
    v6 = [settingsCopy mutableCopy];
    settings = v5->_settings;
    v5->_settings = v6;
  }

  return v5;
}

+ (id)definitionForHomeButton
{
  v2 = objc_alloc_init(BKSButtonHapticsDefinition);
  [(BKSButtonHapticsDefinition *)v2 setRepresentsHomeButton:?];

  return v2;
}

@end