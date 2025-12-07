@interface CUIBackgroundStyleEffectConfiguration
- (BOOL)shouldIgnoreForegroundColor;
- (BOOL)shouldRespectOutputBlending;
- (CUIBackgroundStyleEffectConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation CUIBackgroundStyleEffectConfiguration

- (CUIBackgroundStyleEffectConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CUIBackgroundStyleEffectConfiguration;
  result = [(CUIStyleEffectConfiguration *)&v3 init];
  if (result)
  {
    result->_shouldRespectOutputBlending = -3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIBackgroundStyleEffectConfiguration;
  [(CUIStyleEffectConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CUIBackgroundStyleEffectConfiguration;
  v5 = [(CUIStyleEffectConfiguration *)&v7 copyWithZone:?];
  if (v5)
  {
    v5[10] = [(NSString *)self->_backgroundType copyWithZone:zone];
    *(v5 + 88) = self->_effectShowsValue;
  }

  return v5;
}

- (BOOL)shouldIgnoreForegroundColor
{
  v6.receiver = self;
  v6.super_class = CUIBackgroundStyleEffectConfiguration;
  LOBYTE(v3) = [(CUIStyleEffectConfiguration *)&v6 shouldIgnoreForegroundColor];
  if (self->_backgroundType && ![(CUIStyleEffectConfiguration *)self foregroundColorShouldTintEffects])
  {
    v4 = CUIConstantToMapID([(CUIBackgroundStyleEffectConfiguration *)self backgroundType]) - 32;
    if (v4 < 0x22 && ((0x27246837FuLL >> v4) & 1) != 0)
    {
      v3 = 0x1FFFFFFDFuLL >> v4;
    }

    else
    {
      _CUILog(4, "CoreUI: Invalid background type requested: %@", [(CUIBackgroundStyleEffectConfiguration *)self backgroundType]);
    }
  }

  return v3 & 1;
}

- (BOOL)shouldRespectOutputBlending
{
  shouldRespectOutputBlending = self->_shouldRespectOutputBlending;
  if (shouldRespectOutputBlending < 0)
  {
    v7.receiver = self;
    v7.super_class = CUIBackgroundStyleEffectConfiguration;
    LOBYTE(v3) = [(CUIStyleEffectConfiguration *)&v7 shouldRespectOutputBlending];
    if (self->_backgroundType)
    {
      v5 = CUIConstantToMapID([(CUIBackgroundStyleEffectConfiguration *)self backgroundType]) - 32;
      if (v5 < 0x1F && ((0x7246837Fu >> v5) & 1) != 0)
      {
        v3 = 0x4FB9FE90u >> v5;
      }

      else
      {
        _CUILog(4, "CoreUI: Invalid background type requested: %@", [(CUIBackgroundStyleEffectConfiguration *)self backgroundType]);
      }
    }
  }

  else
  {
    LOBYTE(v3) = shouldRespectOutputBlending != 0;
  }

  return v3 & 1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIBackgroundStyleEffectConfiguration;
  return [NSString stringWithFormat:@"%@\nbackgroundType: %@\neffectShowsValue: %d", [(CUIStyleEffectConfiguration *)&v3 description], [(CUIBackgroundStyleEffectConfiguration *)self backgroundType], [(CUIBackgroundStyleEffectConfiguration *)self effectShowsValue]];
}

@end