@interface PLKLegibilityEnvironment
+ (id)legibilityEnvironmentForUILegibilitySettings:(id)settings variant:(id)variant;
+ (id)legibilityEnvironmentWithDictionary:(id)dictionary userInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (NSSet)variants;
- (PLKLegibilityEnvironment)initWithDictionary:(id)dictionary userInfo:(id)info;
- (UIColor)averageColor;
- (UIColor)backgroundColor;
- (UIColor)primaryColor;
- (UIColor)secondaryColor;
- (_UILegibilitySettings)legibilitySettings;
- (double)contrast;
- (double)contrastInRect:(CGRect)rect;
- (double)luma;
- (double)lumaInRect:(CGRect)rect;
- (double)saturation;
- (double)saturationInRect:(CGRect)rect;
- (id)averageColorInRect:(CGRect)rect;
- (id)legibilityDescriptorForVariant:(id)variant;
- (unint64_t)hash;
- (unint64_t)style;
@end

@implementation PLKLegibilityEnvironment

- (NSSet)variants
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSDictionary *)self->_variantToContextProvider allKeys];
  v4 = [v2 setWithArray:?];

  return v4;
}

+ (id)legibilityEnvironmentForUILegibilitySettings:(id)settings variant:(id)variant
{
  variantCopy = variant;
  settingsCopy = settings;
  v7 = objc_alloc_init(PLKLegibilityEnvironmentBuilder);
  v8 = [MEMORY[0x277CBEB98] setWithObject:?];

  [PLKLegibilityEnvironmentBuilder updateWithLegibilitySettings:v7 variants:"updateWithLegibilitySettings:variants:"];
  v9 = [(PLKLegibilityEnvironmentBuilder *)v7 buildWithError:?];

  return v9;
}

+ (id)legibilityEnvironmentWithDictionary:(id)dictionary userInfo:(id)info
{
  infoCopy = info;
  dictionaryCopy = dictionary;
  v8 = [[self alloc] initWithDictionary:? userInfo:?];

  return v8;
}

- (PLKLegibilityEnvironment)initWithDictionary:(id)dictionary userInfo:(id)info
{
  dictionaryCopy = dictionary;
  infoCopy = info;
  selfCopy = [dictionaryCopy objectForKeyedSubscript:?];

  if (selfCopy)
  {
    v16.receiver = self;
    v16.super_class = PLKLegibilityEnvironment;
    v9 = [(PLKLegibilityEnvironment *)&v16 init];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:? copyItems:?];
      variantToContextProvider = v9->_variantToContextProvider;
      v9->_variantToContextProvider = v10;

      v12 = [infoCopy copy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = MEMORY[0x277CBEC10];
      }

      objc_storeStrong(&v9->_userInfo, v14);
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      userInfo = [(PLKLegibilityEnvironment *)self userInfo];
      userInfo2 = [(PLKLegibilityEnvironment *)v7 userInfo];
      v10 = BSEqualDictionaries();

      if (v10)
      {
        variants = [(PLKLegibilityEnvironment *)v7 variants];
        variants2 = [(PLKLegibilityEnvironment *)self variants];
        v10 = BSEqualObjects();

        if (v10)
        {
          obj = [(PLKLegibilityEnvironment *)self variants];
          v13 = [obj countByEnumeratingWithState:? objects:? count:?];
          if (v13)
          {
            v14 = v13;
            v23 = MEMORY[0];
            while (2)
            {
              for (i = 0; i != v14; i = (i + 1))
              {
                if (MEMORY[0] != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
                v17 = [(PLKLegibilityEnvironment *)v7 legibilityEnvironmentContextForVariant:?];
                if (!BSEqualObjects())
                {

LABEL_19:
                  LOBYTE(v10) = 0;
                  goto LABEL_20;
                }

                v18 = [(PLKLegibilityEnvironment *)self legibilityDescriptorForVariant:?];
                v19 = [(PLKLegibilityEnvironment *)v7 legibilityDescriptorForVariant:?];
                v20 = BSEqualObjects();

                if (!v20)
                {
                  goto LABEL_19;
                }
              }

              v14 = [obj countByEnumeratingWithState:? objects:? count:?];
              LOBYTE(v10) = 1;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            LOBYTE(v10) = 1;
          }

LABEL_20:
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  contextForVariant = [(PLKLegibilityEnvironment *)self contextForVariant];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__PLKLegibilityEnvironment_hash__block_invoke;
  v13 = &unk_27835B250;
  v14 = builder;
  v5 = builder;
  [contextForVariant enumerateKeysAndObjectsUsingBlock:?];

  userInfo = [(PLKLegibilityEnvironment *)self userInfo];
  v7 = [v5 appendObject:?];

  v8 = [v5 hash];
  return v8;
}

void __32__PLKLegibilityEnvironment_hash__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [*(a1 + 32) appendObject:?];
  v5 = [*(a1 + 32) appendObject:?];
}

- (id)legibilityDescriptorForVariant:(id)variant
{
  v3 = [(NSDictionary *)self->_variantToContextProvider objectForKey:?];
  legibilityDescriptor = [v3 legibilityDescriptor];

  return legibilityDescriptor;
}

- (unint64_t)style
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  style = [v4 style];

  return style;
}

- (_UILegibilitySettings)legibilitySettings
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  legibilitySettings = [v4 legibilitySettings];

  return legibilitySettings;
}

- (UIColor)primaryColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  primaryColor = [v4 primaryColor];

  return primaryColor;
}

- (UIColor)secondaryColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  secondaryColor = [v4 secondaryColor];

  return secondaryColor;
}

- (UIColor)backgroundColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  backgroundColor = [v4 backgroundColor];

  return backgroundColor;
}

- (UIColor)averageColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  averageColor = [v4 averageColor];

  return averageColor;
}

- (id)averageColorInRect:(CGRect)rect
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v5 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  v6 = [v5 averageColorInRect:?];

  return v6;
}

- (double)contrast
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  [v4 contrast];
  v6 = v5;

  return v6;
}

- (double)contrastInRect:(CGRect)rect
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v5 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  [v5 contrastInRect:?];
  v7 = v6;

  return v7;
}

- (double)saturation
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  [v4 saturation];
  v6 = v5;

  return v6;
}

- (double)saturationInRect:(CGRect)rect
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v5 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  [v5 saturationInRect:?];
  v7 = v6;

  return v7;
}

- (double)luma
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  [v4 luma];
  v6 = v5;

  return v6;
}

- (double)lumaInRect:(CGRect)rect
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v5 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:?];
  [v5 lumaInRect:?];
  v7 = v6;

  return v7;
}

@end