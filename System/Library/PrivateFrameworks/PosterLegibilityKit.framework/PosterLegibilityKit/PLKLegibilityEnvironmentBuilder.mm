@interface PLKLegibilityEnvironmentBuilder
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast;
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation;
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants;
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast variants:(id)variants;
+ (id)legibilityEnvironmentForImage:(id)image;
+ (id)legibilityEnvironmentForImage:(id)image variants:(id)variants;
- (BOOL)updateWithAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants;
- (BOOL)updateWithContext:(id)context;
- (BOOL)updateWithContext:(id)context variants:(id)variants;
- (BOOL)updateWithLegibilitySettings:(id)settings contrast:(double)contrast saturation:(double)saturation variants:(id)variants;
- (BOOL)updateWithLegibilitySettings:(id)settings variants:(id)variants;
- (NSSet)variants;
- (PLKLegibilityEnvironmentBuilder)init;
- (PLKLegibilityEnvironmentBuilder)initWithEnvironment:(id)environment;
- (id)buildWithError:(id *)error;
@end

@implementation PLKLegibilityEnvironmentBuilder

- (NSSet)variants
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_variantToContextDictionary allKeys];
  v4 = [v2 setWithArray:?];

  return v4;
}

- (PLKLegibilityEnvironmentBuilder)init
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityEnvironmentBuilder;
  v2 = [(PLKLegibilityEnvironmentBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    variantToContextDictionary = v2->_variantToContextDictionary;
    v2->_variantToContextDictionary = v3;
  }

  return v2;
}

- (PLKLegibilityEnvironmentBuilder)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [(PLKLegibilityEnvironmentBuilder *)self init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    contextForVariant = [environmentCopy contextForVariant];
    v8 = [v6 initWithDictionary:? copyItems:?];
    variantToContextDictionary = v5->_variantToContextDictionary;
    v5->_variantToContextDictionary = v8;
  }

  return v5;
}

+ (id)legibilityEnvironmentForImage:(id)image
{
  v4 = MEMORY[0x277CBEB98];
  imageCopy = image;
  v6 = [v4 setWithObject:?];
  v7 = [self legibilityEnvironmentForImage:? variants:?];

  return v7;
}

+ (id)legibilityEnvironmentForImage:(id)image variants:(id)variants
{
  imageCopy = image;
  variantsCopy = variants;
  if (([variantsCopy containsObject:?] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForImage:a2 variants:?];
  }

  v19 = imageCopy;
  v8 = [PLKColorBoxes colorBoxesForImage:?];
  v9 = objc_opt_new();
  v10 = variantsCopy;
  v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
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

        v15 = [PLKLegibilityEnvironmentVariantContext initWithVariant:"initWithVariant:colorBoxes:" colorBoxes:?];
        v16 = [MEMORY[0x277CBEB98] setWithObject:?];
        [v9 updateWithContext:? variants:?];
      }

      v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);
  }

  v17 = [v9 buildWithError:?];

  return v17;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast
{
  v5 = MEMORY[0x277CBEB98];
  colorCopy = color;
  v7 = [v5 setWithObject:?];
  v8 = [self legibilityEnvironmentForAverageColor:? contrast:? variants:?];

  return v8;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast variants:(id)variants
{
  colorCopy = color;
  variantsCopy = variants;
  if (!colorCopy)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? variants:?];
  }

  v9 = variantsCopy;
  if (([variantsCopy containsObject:?] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? variants:?];
  }

  v10 = objc_opt_new();
  [v10 updateWithAverageColor:? contrast:? variants:?];
  v11 = [v10 buildWithError:?];

  return v11;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation
{
  v6 = MEMORY[0x277CBEB98];
  colorCopy = color;
  v8 = [v6 setWithObject:?];
  v9 = [self legibilityEnvironmentForAverageColor:? contrast:? saturation:? variants:?];

  return v9;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants
{
  colorCopy = color;
  variantsCopy = variants;
  if (!colorCopy)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? saturation:? variants:?];
  }

  v10 = variantsCopy;
  if (([variantsCopy containsObject:?] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? saturation:? variants:?];
  }

  v11 = objc_opt_new();
  [v11 updateWithAverageColor:? contrast:? saturation:? variants:?];
  v12 = [v11 buildWithError:?];

  return v12;
}

- (BOOL)updateWithContext:(id)context
{
  v4 = MEMORY[0x277CBEB98];
  contextCopy = context;
  variant = [contextCopy variant];
  v7 = [v4 setWithObject:?];
  LOBYTE(self) = [PLKLegibilityEnvironmentBuilder updateWithContext:"updateWithContext:variants:" variants:?];

  return self;
}

- (BOOL)updateWithContext:(id)context variants:(id)variants
{
  contextCopy = context;
  obj = variants;
  v7 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = MEMORY[0];
    do
    {
      v11 = 0;
      v19 = v8;
      do
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMutableDictionary *)self->_variantToContextDictionary objectForKey:v19];
        if (([v12 isEqual:?] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
            v9 = 1;
          }

          else
          {
            [contextCopy averageColor];
            v14 = v13 = v10;
            [contextCopy contrast];
            [contextCopy saturation];
            v15 = [MEMORY[0x277CBEB98] setWithObject:?];
            selfCopy = self;
            v17 = [PLKLegibilityEnvironmentBuilder updateWithAverageColor:"updateWithAverageColor:contrast:saturation:variants:" contrast:? saturation:? variants:?];

            v10 = v13;
            v8 = v19;
            v9 |= v17;
            self = selfCopy;
          }
        }

        v11 = (v11 + 1);
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)updateWithAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants
{
  colorCopy = color;
  obj = variants;
  v22 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v22)
  {
    v21 = MEMORY[0];
    do
    {
      for (i = 0; i != v22; i = (i + 1))
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(NSMutableDictionary *)self->_variantToContextDictionary objectForKey:?];
        averageColor = [(PLKLegibilityEnvironmentVariantContext *)v10 averageColor];
        if (![averageColor _isSimilarToColor:? withinPercentage:?] || (-[PLKLegibilityEnvironmentVariantContext contrast](v10, "contrast"), !BSFloatEqualToFloat()))
        {

LABEL_11:
          v13 = objc_alloc_init(MEMORY[0x277D760B0]);
          [v13 clearContentColorAccumulator];
          [v13 accumulateChangesToContentColor:? contrast:?];
          settings = [v13 settings];
          v23 = v10;
          v15 = [PLKLegibilityEnvironmentVariantContext alloc];
          PLKLegibilityStyleForUILegibilityStyle([settings style]);
          primaryColor = [settings primaryColor];
          secondaryColor = [settings secondaryColor];
          shadowColor = [settings shadowColor];
          v10 = [PLKLegibilityEnvironmentVariantContext initWithVariant:v15 style:"initWithVariant:style:averageColor:contrast:saturation:primaryColor:secondaryColor:backgroundColor:" averageColor:? contrast:? saturation:? primaryColor:? secondaryColor:? backgroundColor:?];

          [NSMutableDictionary bs_setSafeObject:"bs_setSafeObject:forKey:" forKey:?];
          goto LABEL_12;
        }

        [(PLKLegibilityEnvironmentVariantContext *)v10 saturation];
        v12 = BSFloatEqualToFloat();

        if ((v12 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v22 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v22);
  }

  return 0;
}

- (BOOL)updateWithLegibilitySettings:(id)settings variants:(id)variants
{
  settingsCopy = settings;
  obj = variants;
  v18 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v18)
  {
    v16 = MEMORY[0];
    do
    {
      for (i = 0; i != v18; i = (i + 1))
      {
        if (MEMORY[0] != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [PLKLegibilityEnvironmentVariantContext alloc];
        PLKLegibilityStyleForUILegibilityStyle([settingsCopy style]);
        contentColor = [settingsCopy contentColor];
        if (!contentColor)
        {
          clearColor = [MEMORY[0x277D75348] clearColor];
        }

        primaryColor = [settingsCopy primaryColor];
        secondaryColor = [settingsCopy secondaryColor];
        shadowColor = [settingsCopy shadowColor];
        v12 = [PLKLegibilityEnvironmentVariantContext initWithVariant:v7 style:"initWithVariant:style:averageColor:contrast:saturation:primaryColor:secondaryColor:backgroundColor:" averageColor:? contrast:? saturation:? primaryColor:? secondaryColor:? backgroundColor:?];

        if (!contentColor)
        {
        }

        [NSMutableDictionary bs_setSafeObject:"bs_setSafeObject:forKey:" forKey:?];
      }

      v18 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }

  return 1;
}

- (BOOL)updateWithLegibilitySettings:(id)settings contrast:(double)contrast saturation:(double)saturation variants:(id)variants
{
  settingsCopy = settings;
  obj = variants;
  v20 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v20)
  {
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v20; i = (i + 1))
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [PLKLegibilityEnvironmentVariantContext alloc];
        PLKLegibilityStyleForUILegibilityStyle([settingsCopy style]);
        contentColor = [settingsCopy contentColor];
        if (!contentColor)
        {
          clearColor = [MEMORY[0x277D75348] clearColor];
        }

        primaryColor = [settingsCopy primaryColor];
        secondaryColor = [settingsCopy secondaryColor];
        shadowColor = [settingsCopy shadowColor];
        v14 = [PLKLegibilityEnvironmentVariantContext initWithVariant:v9 style:"initWithVariant:style:averageColor:contrast:saturation:primaryColor:secondaryColor:backgroundColor:" averageColor:? contrast:? saturation:? primaryColor:? secondaryColor:? backgroundColor:?];

        if (!contentColor)
        {
        }

        [NSMutableDictionary bs_setSafeObject:"bs_setSafeObject:forKey:" forKey:?];
      }

      v20 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v20);
  }

  return 1;
}

- (id)buildWithError:(id *)error
{
  v5 = [(NSMutableDictionary *)self->_variantToContextDictionary objectForKeyedSubscript:?];

  if (v5)
  {
    v6 = [PLKLegibilityEnvironment alloc];
    userInfo = [(PLKLegibilityEnvironmentBuilder *)self userInfo];
    error = [PLKLegibilityEnvironment initWithDictionary:v6 userInfo:"initWithDictionary:userInfo:"];
  }

  else if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    *error = [v8 errorWithDomain:? code:? userInfo:?];

    error = 0;
  }

  return error;
}

+ (void)legibilityEnvironmentForImage:(char *)a1 variants:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[variants containsObject:PLKLegibilityEnvironmentVariantDefault]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:variants:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[variants containsObject:PLKLegibilityEnvironmentVariantDefault]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:variants:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"averageColor"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:saturation:variants:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[variants containsObject:PLKLegibilityEnvironmentVariantDefault]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:saturation:variants:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"averageColor"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end