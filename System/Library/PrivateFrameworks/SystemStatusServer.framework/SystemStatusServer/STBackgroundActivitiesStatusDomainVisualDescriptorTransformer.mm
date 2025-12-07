@interface STBackgroundActivitiesStatusDomainVisualDescriptorTransformer
- (STBackgroundActivitiesStatusDomainVisualDescriptorTransformer)init;
- (STBackgroundActivitiesStatusDomainVisualDescriptorTransformer)initWithBackgroundActivityManager:(id)manager;
- (id)transformedDataForData:(id)data domain:(unint64_t)domain;
@end

@implementation STBackgroundActivitiesStatusDomainVisualDescriptorTransformer

- (STBackgroundActivitiesStatusDomainVisualDescriptorTransformer)init
{
  mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
  v4 = [(STBackgroundActivitiesStatusDomainVisualDescriptorTransformer *)self initWithBackgroundActivityManager:mEMORY[0x277D6B920]];

  return v4;
}

- (STBackgroundActivitiesStatusDomainVisualDescriptorTransformer)initWithBackgroundActivityManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = STBackgroundActivitiesStatusDomainVisualDescriptorTransformer;
  v6 = [(STBackgroundActivitiesStatusDomainVisualDescriptorTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backgroundActivityManager, manager);
  }

  return v7;
}

- (id)transformedDataForData:(id)data domain:(unint64_t)domain
{
  v53 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = dataCopy;
  v8 = v7;
  v9 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 mutableCopy];
    selfCopy = self;
    backgroundActivityManager = self->_backgroundActivityManager;
    activeBackgroundActivities = [v8 activeBackgroundActivities];
    v12 = [(STBackgroundActivityManager *)backgroundActivityManager validBackgroundActivitiesForBackgroundActivities:activeBackgroundActivities];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    attributions = [v8 attributions];
    v14 = [attributions countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v47;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(attributions);
          }

          v18 = *(*(&v46 + 1) + 8 * i);
          backgroundActivityIdentifier = [v18 backgroundActivityIdentifier];
          v20 = [v12 containsObject:backgroundActivityIdentifier];

          if ((v20 & 1) == 0)
          {
            [v9 removeAttribution:v18];
          }
        }

        v15 = [attributions countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v15);
    }

    activeBackgroundActivities2 = [v9 activeBackgroundActivities];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = [activeBackgroundActivities2 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v43;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(activeBackgroundActivities2);
          }

          v26 = *(*(&v42 + 1) + 8 * j);
          v27 = [v8 visualDescriptorForBackgroundActivityWithIdentifier:v26];

          if (!v27)
          {
            v28 = [(STBackgroundActivityManager *)selfCopy->_backgroundActivityManager visualDescriptorForBackgroundActivityWithIdentifier:v26];
            [v9 setVisualDescriptor:v28 forBackgroundActivityWithIdentifier:v26];
          }
        }

        v23 = [activeBackgroundActivities2 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v23);
    }

    backgroundActivitiesWithVisualDescriptors = [v8 backgroundActivitiesWithVisualDescriptors];
    v30 = [backgroundActivitiesWithVisualDescriptors mutableCopy];

    [v30 minusSet:activeBackgroundActivities2];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v39;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [v9 setVisualDescriptor:0 forBackgroundActivityWithIdentifier:*(*(&v38 + 1) + 8 * k)];
        }

        v33 = [v31 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v33);
    }
  }

  return v9;
}

@end