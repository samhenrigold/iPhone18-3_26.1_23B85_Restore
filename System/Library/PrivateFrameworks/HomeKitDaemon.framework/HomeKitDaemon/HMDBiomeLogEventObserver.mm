@interface HMDBiomeLogEventObserver
+ (id)shortDescription;
- (HMDBiomeLogEventObserver)initWithBiomeEventManager:(id)manager dataSource:(id)source;
- (void)observeEvent:(id)event;
@end

@implementation HMDBiomeLogEventObserver

- (void)observeEvent:(id)event
{
  v50 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v8;
    v45 = 2112;
    v46 = eventCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received biome log event %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = eventCopy;
  if (objc_opt_respondsToSelector())
  {
    v35 = v9;
    [v9 biomeEventsRepresentationForLogObserver:selfCopy];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = v42 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v40;
      *&v12 = 138543874;
      v34 = v12;
      v38 = v10;
      do
      {
        v15 = 0;
        do
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v39 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18)
          {
            if (selfCopy)
            {
              Property = objc_getProperty(selfCopy, v19, 8, 1);
            }

            else
            {
              Property = 0;
            }

            [Property submitActionSetEvent:{v18, v34}];
          }

          else
          {
            v21 = v16;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;

            if (v23)
            {
              if (selfCopy)
              {
                v25 = objc_getProperty(selfCopy, v24, 8, 1);
              }

              else
              {
                v25 = 0;
              }

              [v25 submitAccessoryEvent:{v23, v34}];
            }

            else
            {
              v26 = v21;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              if (v28)
              {
                if (selfCopy)
                {
                  v30 = objc_getProperty(selfCopy, v29, 8, 1);
                }

                else
                {
                  v30 = 0;
                }

                v10 = v38;
                [v30 submitMediaAccessoryEvent:{v28, v34}];
              }

              else
              {
                context = objc_autoreleasePoolPush();
                v31 = selfCopy;
                v32 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v36 = HMFGetLogIdentifier();
                  *buf = v34;
                  v44 = v36;
                  v45 = 2112;
                  v46 = v26;
                  v47 = 2112;
                  v48 = v35;
                  _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Skipping submission of unknown biome event: %@ for event: %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(context);
                v10 = v38;
              }
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v33 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
        v13 = v33;
      }

      while (v33);
    }

    v9 = v35;
  }
}

- (HMDBiomeLogEventObserver)initWithBiomeEventManager:(id)manager dataSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HMDBiomeLogEventObserver;
  v9 = [(HMDBiomeLogEventObserver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biomeEventManager, manager);
    objc_storeWeak(&v10->_dataSource, sourceCopy);
  }

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end