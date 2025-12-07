@interface PLKLegibilityDescriptor
+ (id)defaultLegibilityDescriptorForStyle:(unint64_t)style;
+ (id)legibilityDescriptorForEnvironmentContext:(id)context;
+ (id)legibilityDescriptorForSettings:(id)settings strength:(double)strength;
+ (id)legibilityDescriptorForUILegibilitySettings:(id)settings strength:(double)strength;
+ (id)performanceLegibilityDescriptorForStyle:(unint64_t)style options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLegibilityDescriptor:(id)descriptor;
- (PLKLegibilityDescriptor)initWithForegroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor;
- (PLKLegibilityDescriptor)initWithStyle:(unint64_t)style foregroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)effectiveUILegibilitySettings:(double *)settings;
- (id)succinctDescription;
@end

@implementation PLKLegibilityDescriptor

+ (id)performanceLegibilityDescriptorForStyle:(unint64_t)style options:(unint64_t)options
{
  if ((options & 2) != 0)
  {
    if (performanceLegibilityDescriptorForStyle_options__onceTokenNoVibrant != -1)
    {
      +[PLKLegibilityDescriptor performanceLegibilityDescriptorForStyle:options:];
    }

    v4 = &performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsNoVibrant;
  }

  else
  {
    if (performanceLegibilityDescriptorForStyle_options__onceTokenDefault != -1)
    {
      +[PLKLegibilityDescriptor performanceLegibilityDescriptorForStyle:options:];
    }

    v4 = &performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsDefault;
  }

  v5 = *v4;
  v6 = [v5 objectAtIndexedSubscript:?];

  return v6;
}

void __75__PLKLegibilityDescriptor_performanceLegibilityDescriptorForStyle_options___block_invoke()
{
  [MEMORY[0x277CBEBD0] plk_overridePerfDescriptorScale];
  BSFloatIsZero();
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v1 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:strength:" offset:? alpha:? strength:?];
  v14 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:strength:" offset:v1 alpha:? strength:?];
  v15 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:strength:" offset:? alpha:? strength:?];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    if (v3)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v6 = ;
    v7 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:?];

    v8 = [MEMORY[0x277D760A8] sharedInstanceForStyle:?];
    v9 = [v8 shadowColor];

    v10 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForColor:"contentDescriptorForColor:shadows:renderScale:" shadows:? renderScale:?];
    v11 = [PLKLegibilityDescriptor initWithStyle:"initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:" foregroundContentDescriptor:? backgroundContentDescriptor:?];
    [v0 addObject:?];

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = [v0 copy];
  v13 = performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsNoVibrant;
  performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsNoVibrant = v12;
}

void __75__PLKLegibilityDescriptor_performanceLegibilityDescriptorForStyle_options___block_invoke_2()
{
  [MEMORY[0x277CBEBD0] plk_overridePerfDescriptorScale];
  BSFloatIsZero();
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v11 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:strength:" offset:? alpha:? strength:?];
  v12 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:strength:" offset:? alpha:? strength:?];
  v13 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:strength:" offset:? alpha:? strength:?];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    if (v2)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v5 = ;
    v6 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:?];

    v7 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForVibrantColorMatrix:"contentDescriptorForVibrantColorMatrix:shadows:renderScale:" shadows:? renderScale:?];
    v8 = [PLKLegibilityDescriptor initWithStyle:"initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:" foregroundContentDescriptor:? backgroundContentDescriptor:?];
    [v0 addObject:?];

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  v9 = [v0 copy];
  v10 = performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsDefault;
  performanceLegibilityDescriptorForStyle_options__legibilityDescriptorsDefault = v9;
}

+ (id)defaultLegibilityDescriptorForStyle:(unint64_t)style
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PLKLegibilityDescriptor_defaultLegibilityDescriptorForStyle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultLegibilityDescriptorForStyle__onceToken != -1)
  {
    dispatch_once(&defaultLegibilityDescriptorForStyle__onceToken, block);
  }

  v3 = [defaultLegibilityDescriptorForStyle__legibilityDescriptors objectAtIndexedSubscript:?];

  return v3;
}

void __63__PLKLegibilityDescriptor_defaultLegibilityDescriptorForStyle___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v2 = [[PLKLegibilityEnvironmentVariantContext alloc] initWithStyle:?];
  v3 = [*(a1 + 32) legibilityDescriptorForEnvironmentContext:?];
  [v8 addObject:?];

  v4 = [[PLKLegibilityEnvironmentVariantContext alloc] initWithStyle:?];
  v5 = [*(a1 + 32) legibilityDescriptorForEnvironmentContext:?];
  [v8 addObject:?];

  v6 = [v8 copy];
  v7 = defaultLegibilityDescriptorForStyle__legibilityDescriptors;
  defaultLegibilityDescriptorForStyle__legibilityDescriptors = v6;
}

+ (id)legibilityDescriptorForEnvironmentContext:(id)context
{
  contextCopy = context;
  style = [contextCopy style];
  if (style <= 1)
  {
    v5 = style;
  }

  else
  {
    v5 = 0;
  }

  v20 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:" offset:? alpha:?];
  v21 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:" offset:? alpha:?];
  v22 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:" offset:? alpha:?];
  v23 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:" offset:? alpha:?];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  if (v5 == 1)
  {
    [contextCopy primaryColor];
  }

  else
  {
    [contextCopy primaryColor];
  }
  v8 = ;
  secondaryColor = [contextCopy secondaryColor];
  v10 = [PLKLegibilityForegroundContentDescriptor contentDescriptorForPrimaryColor:"contentDescriptorForPrimaryColor:secondaryColor:" secondaryColor:?];
  v11 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForVibrantColorMatrix:"contentDescriptorForVibrantColorMatrix:shadows:" shadows:?];
  v12 = [PLKLegibilityDescriptor initWithStyle:"initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:" foregroundContentDescriptor:? backgroundContentDescriptor:?];
  primaryColor = v12->_primaryColor;
  v12->_primaryColor = v8;
  v14 = v8;

  secondaryColor = v12->_secondaryColor;
  v12->_secondaryColor = secondaryColor;
  v16 = secondaryColor;

  backgroundColor = [contextCopy backgroundColor];

  backgroundColor = v12->_backgroundColor;
  v12->_backgroundColor = backgroundColor;

  return v12;
}

+ (id)legibilityDescriptorForSettings:(id)settings strength:(double)strength
{
  v26 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  primaryColor = [settingsCopy primaryColor];
  secondaryColor = [settingsCopy secondaryColor];
  v7 = [PLKLegibilityForegroundContentDescriptor contentDescriptorForPrimaryColor:"contentDescriptorForPrimaryColor:secondaryColor:" secondaryColor:?];
  [settingsCopy shadowRadius];
  shadowColor = [settingsCopy shadowColor];
  v9 = shadowColor;
  if (shadowColor)
  {
    blackColor = shadowColor;
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v11 = blackColor;

  [settingsCopy shadowAlpha];
  v12 = [PLKShadowDescriptor shadowWithRadius:"shadowWithRadius:offset:alpha:strength:" offset:? alpha:? strength:?];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:v26];
  v14 = [PLKLegibilityBackgroundContentDescriptor contentDescriptorForColor:"contentDescriptorForColor:shadows:renderScale:" shadows:? renderScale:?];

  style = [settingsCopy style];
  if (style > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = **(&unk_27835B6E8 + style);
  }

  [v14 setCompositingFilter:?];
  v17 = [PLKLegibilityDescriptor alloc];
  [settingsCopy style];
  v18 = [PLKLegibilityDescriptor initWithStyle:v17 foregroundContentDescriptor:"initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:" backgroundContentDescriptor:?];
  primaryColor = v18->_primaryColor;
  v18->_primaryColor = primaryColor;
  v20 = primaryColor;

  secondaryColor = v18->_secondaryColor;
  v18->_secondaryColor = secondaryColor;
  v22 = secondaryColor;

  backgroundColor = v18->_backgroundColor;
  v18->_backgroundColor = v11;
  v24 = v11;

  return v18;
}

+ (id)legibilityDescriptorForUILegibilitySettings:(id)settings strength:(double)strength
{
  settingsCopy = settings;
  primaryColor = [settingsCopy primaryColor];
  v6 = [(PLKLegibilityContentDescriptor *)PLKLegibilityForegroundContentDescriptor contentDescriptorForColor:?];

  v7 = [PLKUILegibilitySettingsBackgroundContentDescriptor initWithLegibilitySettings:"initWithLegibilitySettings:strength:" strength:?];
  v8 = [PLKLegibilityDescriptor alloc];
  [settingsCopy style];

  v9 = [PLKLegibilityDescriptor initWithStyle:v8 foregroundContentDescriptor:"initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:" backgroundContentDescriptor:?];

  return v9;
}

- (id)effectiveUILegibilitySettings:(double *)settings
{
  [(PLKLegibilityDescriptor *)self style];
  foreground = [(PLKLegibilityDescriptor *)self foreground];
  background = [(PLKLegibilityDescriptor *)self background];
  v7 = background;
  if (settings)
  {
    [background strength];
    *settings = v8;
  }

  v9 = objc_alloc(MEMORY[0x277D760A8]);
  primaryColor = [foreground primaryColor];
  secondaryColor = [foreground secondaryColor];
  contentColor = [v7 contentColor];
  v13 = [v9 initWithStyle:? primaryColor:? secondaryColor:? shadowColor:?];

  return v13;
}

- (PLKLegibilityDescriptor)initWithStyle:(unint64_t)style foregroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor
{
  descriptorCopy = descriptor;
  contentDescriptorCopy = contentDescriptor;
  v20.receiver = self;
  v20.super_class = PLKLegibilityDescriptor;
  v11 = [(PLKLegibilityDescriptor *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_style = style;
    objc_storeStrong(&v11->_foreground, descriptor);
    objc_storeStrong(&v12->_background, contentDescriptor);
    contentColor = [descriptorCopy contentColor];
    primaryColor = v12->_primaryColor;
    v12->_primaryColor = contentColor;

    secondaryColor = [descriptorCopy secondaryColor];
    secondaryColor = v12->_secondaryColor;
    v12->_secondaryColor = secondaryColor;

    contentColor2 = [contentDescriptorCopy contentColor];
    backgroundColor = v12->_backgroundColor;
    v12->_backgroundColor = contentColor2;
  }

  return v12;
}

- (PLKLegibilityDescriptor)initWithForegroundContentDescriptor:(id)descriptor backgroundContentDescriptor:(id)contentDescriptor
{
  descriptorCopy = descriptor;
  contentDescriptorCopy = contentDescriptor;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [contentDescriptorCopy usesUILegibility])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    legibilitySettings = [contentDescriptorCopy legibilitySettings];
    [legibilitySettings style];
  }

  else
  {
    legibilitySettings = [contentDescriptorCopy valueForKey:?];
    if (legibilitySettings)
    {
      memset(v11, 0, sizeof(v11));
      [v11 CAColorMatrixValue];
    }
  }

LABEL_8:
  v9 = [PLKLegibilityDescriptor initWithStyle:"initWithStyle:foregroundContentDescriptor:backgroundContentDescriptor:" foregroundContentDescriptor:? backgroundContentDescriptor:?];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy)
  {
    v6 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [(PLKLegibilityDescriptor *)self isEqualToLegibilityDescriptor:?];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToLegibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (descriptorCopy == self)
  {
    v12 = 1;
  }

  else if (descriptorCopy && (v6 = -[PLKLegibilityDescriptor style](descriptorCopy, "style"), v6 == -[PLKLegibilityDescriptor style](self, "style")) && (-[PLKLegibilityDescriptor foreground](v5, "foreground"), v7 = objc_claimAutoreleasedReturnValue(), -[PLKLegibilityDescriptor foreground](self, "foreground"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:?], v8, v7, v9))
  {
    background = [(PLKLegibilityDescriptor *)v5 background];
    background2 = [(PLKLegibilityDescriptor *)self background];
    v12 = [background isEqual:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PLKLegibilityDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PLKLegibilityDescriptor *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:?];
  style = self->_style;
  if (style)
  {
    if (style == 1)
    {
      v6 = @"DarkContent";
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:self->_style];
    }
  }

  else
  {
    v6 = @"LightContent";
  }

  v7 = [v4 appendObject:? withName:?];
  v8 = [v4 appendObject:? withName:?];
  v9 = [v4 appendObject:? withName:?];
  v10 = [v4 appendObject:? withName:?];
  v11 = [v4 appendObject:? withName:?];
  v12 = [v4 appendObject:? withName:?];

  return v4;
}

@end