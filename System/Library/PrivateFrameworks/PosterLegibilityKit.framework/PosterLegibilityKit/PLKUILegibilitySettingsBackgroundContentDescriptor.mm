@interface PLKUILegibilitySettingsBackgroundContentDescriptor
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeForContentSize:(CGSize)size;
- (PLKUILegibilitySettingsBackgroundContentDescriptor)initWithLegibilitySettings:(id)settings strength:(double)strength;
- (id)cacheKey;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (unint64_t)hash;
- (void)plk_renderWithContext:(id)context;
@end

@implementation PLKUILegibilitySettingsBackgroundContentDescriptor

- (PLKUILegibilitySettingsBackgroundContentDescriptor)initWithLegibilitySettings:(id)settings strength:(double)strength
{
  settingsCopy = settings;
  shadowColor = [settingsCopy shadowColor];
  v11.receiver = self;
  v11.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
  v8 = [(PLKLegibilityContentDescriptor *)&v11 initWithContentColor:shadowColor];

  if (v8)
  {
    v9 = settingsCopy;
    if (!settingsCopy)
    {
      v9 = [MEMORY[0x277D760A8] sharedInstanceForStyle:?];
    }

    objc_storeStrong(&v8->_legibilitySettings, v9);
    if (!settingsCopy)
    {
    }

    v8->_strength = strength;
  }

  return v8;
}

- (CGSize)sizeForContentSize:(CGSize)size
{
  v3 = MEMORY[0x277D755B8];
  [(_UILegibilitySettings *)self->_legibilitySettings style];

  [v3 _legibilityImageSizeForSize:? style:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
    if ([(PLKLegibilityBackgroundContentDescriptor *)&v16 isEqual:equalCopy])
    {
      v5 = objc_opt_class();
      v6 = equalCopy;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
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

      v9 = v7;

      legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)v9 legibilitySettings];
      legibilitySettings2 = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
      if ([legibilitySettings isEqual:?])
      {
        [(PLKUILegibilitySettingsBackgroundContentDescriptor *)v9 strength];
        v13 = v12;
        [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
        v8 = v13 == v14;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
  v5 = [builder appendObject:?];

  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
  v6 = [builder appendFloat:?];
  v7 = [builder hash];

  return v7;
}

- (id)cacheKey
{
  v14 = *MEMORY[0x277D85DE8];
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    v4 = MEMORY[0x277CCACA8];
    legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
    v12 = legibilitySettings;
    v6 = MEMORY[0x277CCABB0];
    [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
    v7 = [v6 numberWithDouble:?];
    v13 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v9 = [v4 plk_sha256HashForObject:? error:?];
    v10 = self->_cacheKey;
    self->_cacheKey = v9;

    cacheKey = self->_cacheKey;
  }

  return cacheKey;
}

- (void)plk_renderWithContext:(id)context
{
  currentImage = [context currentImage];
  [currentImage size];
  [currentImage plk_isAlphaMask];
  legibilitySettings = [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self legibilitySettings];
  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self strength];
  [currentImage _drawImageForLegibilitySettings:? strength:? size:? alphaOnly:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = PLKUILegibilitySettingsBackgroundContentDescriptor;
  v4 = [(PLKLegibilityBackgroundContentDescriptor *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:? withName:?];
  v6 = [v4 appendFloat:? withName:?];
  v7 = [v4 appendObject:? withName:?];
  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self usesUILegibility];
  v8 = [v4 appendBool:? withName:?];
  [(PLKUILegibilitySettingsBackgroundContentDescriptor *)self isRenderable];
  v9 = [v4 appendBool:? withName:?];

  return v4;
}

@end