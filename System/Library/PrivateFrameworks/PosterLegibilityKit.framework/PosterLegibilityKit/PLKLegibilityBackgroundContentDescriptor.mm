@interface PLKLegibilityBackgroundContentDescriptor
+ (id)contentDescriptorForColor:(id)color;
+ (id)contentDescriptorForColor:(id)color shadows:(id)shadows renderScale:(double)scale;
+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)matrix shadows:(id)shadows;
+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)matrix shadows:(id)shadows renderScale:(double)scale;
+ (id)defaultContentDescriptor;
- (BOOL)allowsGroupBlending;
- (BOOL)allowsGroupOpacity;
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeForContentSize:(CGSize)size;
- (id)cacheKey;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)filtersForContextType:(int64_t)type options:(int64_t)options;
- (unint64_t)hash;
- (void)plk_renderWithContext:(id)context;
@end

@implementation PLKLegibilityBackgroundContentDescriptor

- (id)cacheKey
{
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    v4 = MEMORY[0x277CCACA8];
    shadows = [(PLKLegibilityBackgroundContentDescriptor *)self shadows];
    v6 = [v4 plk_sha256HashForObject:? error:?];
    v7 = self->_cacheKey;
    self->_cacheKey = v6;

    cacheKey = self->_cacheKey;
  }

  return cacheKey;
}

- (BOOL)allowsGroupBlending
{
  if (self->_colorMatrixValue)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PLKLegibilityBackgroundContentDescriptor;
  return [(PLKLegibilityContentDescriptor *)&v5 allowsGroupBlending];
}

+ (id)defaultContentDescriptor
{
  if (defaultContentDescriptor_onceToken_255 != -1)
  {
    +[PLKLegibilityBackgroundContentDescriptor defaultContentDescriptor];
  }

  v3 = defaultContentDescriptor_defaultBackgroundContentDescriptor;

  return v3;
}

void __68__PLKLegibilityBackgroundContentDescriptor_defaultContentDescriptor__block_invoke()
{
  v0 = [PLKLegibilityBackgroundContentDescriptor alloc];
  v1 = [MEMORY[0x277D75348] clearColor];
  v2 = [(PLKLegibilityContentDescriptor *)v0 initWithContentColor:?];
  v3 = defaultContentDescriptor_defaultBackgroundContentDescriptor;
  defaultContentDescriptor_defaultBackgroundContentDescriptor = v2;

  v4 = *(defaultContentDescriptor_defaultBackgroundContentDescriptor + 24);
  *(defaultContentDescriptor_defaultBackgroundContentDescriptor + 24) = MEMORY[0x277CBEBF8];

  v5 = defaultContentDescriptor_defaultBackgroundContentDescriptor;
  *(defaultContentDescriptor_defaultBackgroundContentDescriptor + 80) = 0x3FF0000000000000;
  v6 = *(v5 + 88);
  *(v5 + 88) = @"(null background content descriptor)";
}

- (CGSize)sizeForContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  cachedMaxShadowRadius = self->_cachedMaxShadowRadius;
  if (cachedMaxShadowRadius)
  {
    [(NSNumber *)cachedMaxShadowRadius doubleValue];
    v8 = v7;
    [(NSNumber *)self->_cachedMaxXOffset doubleValue];
    v10 = v9;
    [(NSNumber *)self->_cachedMinXOffset doubleValue];
    v12 = v11;
    [(NSNumber *)self->_cachedMaxYOffset doubleValue];
    v14 = v13;
    [(NSNumber *)self->_cachedMinYOffset doubleValue];
    v16 = v15;
  }

  else
  {
    v42 = size.height;
    v17 = self->_shadows;
    v18 = [NSArray countByEnumeratingWithState:v17 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0];
      v12 = 0.0;
      v16 = 0.0;
      v10 = 0.0;
      v14 = 0.0;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v19; i = (i + 1))
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(8 * i);
          [v22 radius];
          v24 = v23;
          [v22 offset];
          v26 = v25;
          [v22 offset];
          v8 = fmax(v8, v24);
          v10 = fmax(v10, v26);
          v12 = fmin(v12, v26);
          v14 = fmax(v14, v27);
          v16 = fmin(v16, v27);
        }

        v19 = [NSArray countByEnumeratingWithState:v17 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v19);
    }

    else
    {
      v12 = 0.0;
      v16 = 0.0;
      v10 = 0.0;
      v14 = 0.0;
      v8 = 0.0;
    }

    v28 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v29 = self->_cachedMaxShadowRadius;
    self->_cachedMaxShadowRadius = v28;

    v30 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    cachedMaxXOffset = self->_cachedMaxXOffset;
    self->_cachedMaxXOffset = v30;

    v32 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    cachedMinXOffset = self->_cachedMinXOffset;
    self->_cachedMinXOffset = v32;

    v34 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    cachedMaxYOffset = self->_cachedMaxYOffset;
    self->_cachedMaxYOffset = v34;

    v36 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    cachedMinYOffset = self->_cachedMinYOffset;
    self->_cachedMinYOffset = v36;

    height = v42;
  }

  v38 = v8 + fmax(fabs(v12), fabs(v10)) * 2.0 + 2.0;
  v39 = width + ceilf(v38);
  v40 = v8 + fmax(fabs(v16), fabs(v14)) * 2.0 + 2.0;
  v41 = height + ceilf(v40);
  result.height = v41;
  result.width = v39;
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
    v14.receiver = self;
    v14.super_class = PLKLegibilityBackgroundContentDescriptor;
    if ([(PLKLegibilityContentDescriptor *)&v14 isEqual:equalCopy])
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

      contentColor = [(PLKLegibilityContentDescriptor *)v9 contentColor];
      contentColor2 = [(PLKLegibilityContentDescriptor *)self contentColor];
      v12 = BSEqualObjects();

      if (v12 && BSEqualObjects() && BSEqualObjects())
      {
        v8 = BSFloatEqualToFloat();
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

+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)matrix shadows:(id)shadows
{
  v4 = *&matrix->var12;
  v9 = *&matrix->var8;
  v10 = v4;
  v11 = *&matrix->var16;
  v5 = *&matrix->var4;
  v8 = *&matrix->var0;
  v6 = [self contentDescriptorForVibrantColorMatrix:v8 shadows:v5 renderScale:{v9, v4, v11}];

  return v6;
}

+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)matrix shadows:(id)shadows renderScale:(double)scale
{
  shadowsCopy = shadows;
  v8 = objc_alloc_init(PLKLegibilityBackgroundContentDescriptor);
  v9 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:{*&matrix->var0, *&matrix->var4, *&matrix->var6, *&matrix->var8, *&matrix->var12, *&matrix->var14, *&matrix->var16}];
  colorMatrixValue = v8->_colorMatrixValue;
  v8->_colorMatrixValue = v9;

  v11 = [shadowsCopy copy];
  shadows = v8->_shadows;
  v8->_shadows = v11;

  v8->_shadowRenderScale = scale;

  return v8;
}

+ (id)contentDescriptorForColor:(id)color shadows:(id)shadows renderScale:(double)scale
{
  shadowsCopy = shadows;
  colorCopy = color;
  v9 = [(PLKLegibilityContentDescriptor *)[PLKLegibilityBackgroundContentDescriptor alloc] initWithContentColor:?];

  v10 = [shadowsCopy copy];
  shadows = v9->_shadows;
  v9->_shadows = v10;

  v9->_shadowRenderScale = scale;

  return v9;
}

+ (id)contentDescriptorForColor:(id)color
{
  colorCopy = color;
  v4 = [(PLKLegibilityContentDescriptor *)[PLKLegibilityBackgroundContentDescriptor alloc] initWithContentColor:?];

  return v4;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  compositingFilter = [(PLKLegibilityContentDescriptor *)self compositingFilter];
  v5 = [builder appendObject:?];

  contentColor = [(PLKLegibilityContentDescriptor *)self contentColor];
  v7 = [builder appendObject:?];

  v8 = [builder appendObject:?];
  v9 = [builder appendCGFloat:?];
  v10 = [builder appendObject:?];
  v11 = [builder hash];

  return v11;
}

- (id)filtersForContextType:(int64_t)type options:(int64_t)options
{
  v10.receiver = self;
  v10.super_class = PLKLegibilityBackgroundContentDescriptor;
  v5 = [(PLKLegibilityContentDescriptor *)&v10 filtersForContextType:type options:?];
  if (self->_colorMatrixValue)
  {
    v6 = MEMORY[0x277CD9EA0];
    [&v9 CAColorMatrixValue];
    v7 = [v6 plk_vibrantColorMatrixFilterWithVibrantColorMatrix:? options:?];
    [v5 bs_safeAddObject:?];
  }

  return v5;
}

- (BOOL)allowsGroupOpacity
{
  if (self->_colorMatrixValue)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PLKLegibilityBackgroundContentDescriptor;
  return [(PLKLegibilityContentDescriptor *)&v5 allowsGroupOpacity];
}

- (void)plk_renderWithContext:(id)context
{
  contextCopy = context;
  if ([(PLKLegibilityBackgroundContentDescriptor *)self isRenderable])
  {
    format = [contextCopy format];
    [format scale];

    format2 = [contextCopy format];
    [format2 contextType];
    v7 = [PLKImageRendererFormat formatForContextType:"formatForContextType:scale:" scale:?];

    currentImage = [contextCopy currentImage];
    [currentImage size];
    v9 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
    v14 = MEMORY[0x277D85DD0];
    v15 = currentImage;
    v10 = currentImage;
    v11 = [(PLKImageRenderer *)v9 imageWithActions:?];
    [(PLKLegibilityBackgroundContentDescriptor *)self sizeForContentSize:?];
    v12 = [UIGraphicsImageRenderer initWithSize:"initWithSize:format:" format:?];
    v13 = [(PLKLegibilityImageRenderer *)v12 renderLegibilityImageDecoratingImage:MEMORY[0x277D85DD0] actions:3221225472, __66__PLKLegibilityBackgroundContentDescriptor_plk_renderWithContext___block_invoke_2, &unk_27835B6C8, self, v14, 3221225472, __66__PLKLegibilityBackgroundContentDescriptor_plk_renderWithContext___block_invoke, &unk_27835B228];
    BSRectWithSize();
    [contextCopy contentRect];
    UIRectCenteredRect();
    [v13 drawInRect:?];
  }
}

void *__66__PLKLegibilityBackgroundContentDescriptor_plk_renderWithContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSRectWithSize();

  return [v1 drawInRect:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v21.receiver = self;
  v21.super_class = PLKLegibilityBackgroundContentDescriptor;
  v4 = [(PLKLegibilityContentDescriptor *)&v21 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:? withName:?];
  v6 = [v4 appendFloat:? withName:?];
  v7 = [v4 appendFloat:? withName:?];
  [(PLKLegibilityBackgroundContentDescriptor *)self usesUILegibility];
  v8 = [v4 appendBool:? withName:?];
  [(PLKLegibilityBackgroundContentDescriptor *)self isRenderable];
  v9 = [v4 appendBool:? withName:?];
  cacheKey = [(PLKLegibilityBackgroundContentDescriptor *)self cacheKey];
  v11 = [v4 appendObject:? withName:?];

  if (self->_colorMatrixValue)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    [&v16 CAColorMatrixValue];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:*&v16, *&v17, *(&v17 + 1), *(&v18 + 1)];
    v13 = [v4 appendObject:? withName:?];
  }

  else
  {
    v14 = [v4 appendObject:? withName:?];
  }

  return v4;
}

@end