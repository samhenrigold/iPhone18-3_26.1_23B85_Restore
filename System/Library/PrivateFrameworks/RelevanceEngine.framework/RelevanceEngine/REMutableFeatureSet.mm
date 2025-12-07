@interface REMutableFeatureSet
- (REMutableFeatureSet)init;
- (REMutableFeatureSet)initWithCapacity:(unint64_t)capacity;
- (REMutableFeatureSet)initWithFeature:(id)feature;
- (REMutableFeatureSet)initWithFeatures:(id)features;
- (void)addFeature:(id)feature;
- (void)intersetFeatureSet:(id)set;
- (void)minusFeatureSet:(id)set;
- (void)removeAllFeatures;
- (void)removeFeature:(id)feature;
- (void)unionFeatureSet:(id)set;
@end

@implementation REMutableFeatureSet

- (REMutableFeatureSet)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = objc_alloc_init(_REMutableFeatureSet);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REMutableFeatureSet;
    v4 = [(REFeatureSet *)&v7 init];
    self = &v4->super;
  }

  p_super = &v4->super;

  return p_super;
}

- (REMutableFeatureSet)initWithFeatures:(id)features
{
  featuresCopy = features;
  v5 = [[_REMutableFeatureSet alloc] initWithFeatures:featuresCopy];

  return &v5->super;
}

- (REMutableFeatureSet)initWithFeature:(id)feature
{
  featureCopy = feature;
  v5 = [[_REMutableFeatureSet alloc] initWithFeature:featureCopy];

  return &v5->super;
}

- (REMutableFeatureSet)initWithCapacity:(unint64_t)capacity
{
  v4 = [[_REMutableFeatureSet alloc] initWithCapacity:capacity];

  return &v4->super;
}

- (void)intersetFeatureSet:(id)set
{
  v27 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[REFeatureSet count](self, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v7 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        [v5 addObject:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * j);
        if (([setCopy containsFeature:{v16, v17}] & 1) == 0)
        {
          [(REMutableFeatureSet *)selfCopy removeFeature:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)minusFeatureSet:(id)set
{
  v14 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [setCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(setCopy);
        }

        [(REMutableFeatureSet *)self removeFeature:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [setCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)unionFeatureSet:(id)set
{
  v14 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [setCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(setCopy);
        }

        [(REMutableFeatureSet *)self addFeature:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [setCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAllFeatures
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[REFeatureSet count](self, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v5 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        [v3 addObject:*(*(&v18 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(REMutableFeatureSet *)selfCopy removeFeature:*(*(&v14 + 1) + 8 * v13++), v14];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)addFeature:(id)feature
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();

  NSRequestConcreteImplementation();
}

- (void)removeFeature:(id)feature
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();

  NSRequestConcreteImplementation();
}

@end