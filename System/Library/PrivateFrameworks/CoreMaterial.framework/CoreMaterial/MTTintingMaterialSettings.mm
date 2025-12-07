@interface MTTintingMaterialSettings
- (MTTintingMaterialSettings)initWithTintingDescription:(id)description andDescendantDescriptions:(id)descriptions;
- (void)_processTintingDescription:(id)description defaultingToIdentity:(BOOL)identity;
- (void)dealloc;
@end

@implementation MTTintingMaterialSettings

- (MTTintingMaterialSettings)initWithTintingDescription:(id)description andDescendantDescriptions:(id)descriptions
{
  v19 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  descriptionsCopy = descriptions;
  v18.receiver = self;
  v18.super_class = MTTintingMaterialSettings;
  v8 = [(MTTintingMaterialSettings *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [MTTintingMaterialSettings _processTintingDescription:v8 defaultingToIdentity:"_processTintingDescription:defaultingToIdentity:"];
    v10 = descriptionsCopy;
    v11 = [v10 countByEnumeratingWithState:0 objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      do
      {
        for (i = 0; i != v12; i = (i + 1))
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(8 * i);
          null = [MEMORY[0x1E695DFB0] null];

          if (v15 != null)
          {
            [MTTintingMaterialSettings _processTintingDescription:v9 defaultingToIdentity:"_processTintingDescription:defaultingToIdentity:"];
          }
        }

        v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }
  }

  return v9;
}

- (void)dealloc
{
  tintColor = self->_tintColor;
  if (tintColor)
  {
    CGColorRelease(tintColor);
  }

  v4.receiver = self;
  v4.super_class = MTTintingMaterialSettings;
  [(MTTintingMaterialSettings *)&v4 dealloc];
}

- (void)_processTintingDescription:(id)description defaultingToIdentity:(BOOL)identity
{
  descriptionCopy = description;
  v6 = [descriptionCopy objectForKey:?];
  tintColorDescription = self->_tintColorDescription;
  self->_tintColorDescription = v6;

  if (self->_tintColorDescription)
  {
    v8 = [MTColor colorWithDescription:?];
    v9 = CGColorRetain([v8 CGColor]);

    p_tintColor = &self->_tintColor;
    tintColor = self->_tintColor;
    if (v9 != tintColor)
    {
      if (!tintColor)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    p_tintColor = &self->_tintColor;
    tintColor = self->_tintColor;
    if (identity)
    {
      if (!tintColor)
      {
        goto LABEL_13;
      }

      v9 = 0;
LABEL_8:
      CGColorRelease(tintColor);
LABEL_9:
      *p_tintColor = v9;
      goto LABEL_13;
    }

    v9 = self->_tintColor;
  }

  if (tintColor)
  {
    CGColorRelease(v9);
  }

LABEL_13:
  v12 = [descriptionCopy objectForKey:?];
  v13 = v12;
  if (v12)
  {
    [v12 floatValue];
    tintAlpha = v14;
  }

  else
  {
    tintAlpha = 0.0;
    if (!identity)
    {
      tintAlpha = self->_tintAlpha;
    }
  }

  self->_tintAlpha = tintAlpha;
  v16 = [descriptionCopy objectForKey:?];
  tintColorName = v16;
  if (!v16)
  {
    tintColorName = 0;
    if (!identity)
    {
      tintColorName = self->_tintColorName;
    }
  }

  objc_storeStrong(&self->_tintColorName, tintColorName);

  v18 = [descriptionCopy objectForKey:?];
  v19 = v18;
  if (v18)
  {
    tintColorUIStyle = [v18 integerValue];
  }

  else if (identity)
  {
    tintColorUIStyle = 0;
  }

  else
  {
    tintColorUIStyle = self->_tintColorUIStyle;
  }

  self->_tintColorUIStyle = tintColorUIStyle;
}

@end