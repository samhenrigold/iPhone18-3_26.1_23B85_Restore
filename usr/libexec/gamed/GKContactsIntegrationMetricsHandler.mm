@interface GKContactsIntegrationMetricsHandler
- (GKContactsIntegrationMetricsHandler)init;
- (GKContactsIntegrationMetricsHandler)initWithAMPController:(id)controller;
- (void)recordContactInfoMatchCount:(unint64_t)count;
- (void)recordContactRelationshipsFromResults:(id)results;
@end

@implementation GKContactsIntegrationMetricsHandler

- (GKContactsIntegrationMetricsHandler)init
{
  v3 = +[GKAMPController controller];
  v4 = [(GKContactsIntegrationMetricsHandler *)self initWithAMPController:v3];

  return v4;
}

- (GKContactsIntegrationMetricsHandler)initWithAMPController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = GKContactsIntegrationMetricsHandler;
  v6 = [(GKContactsIntegrationMetricsHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ampController, controller);
  }

  return v7;
}

- (void)recordContactInfoMatchCount:(unint64_t)count
{
  v7 = GKMetricsEventType;
  v8 = @"contactInfoMatchCount";
  v9 = @"contactsIntegration";
  v4 = [NSNumber numberWithUnsignedInteger:count];
  v10 = v4;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);

  ampController = [(GKContactsIntegrationMetricsHandler *)self ampController];
  [ampController reportPerformanceEventWithHostAppBundleId:GKDaemonIdentifier metricsFields:v5];
}

- (void)recordContactRelationshipsFromResults:(id)results
{
  resultsCopy = results;
  if ([resultsCopy count])
  {
    v21 = GKMetricsEventType;
    v22 = @"contactContainsFriendHandle";
    v25 = @"contactsIntegration";
    v26 = &__kCFBooleanFalse;
    v23 = @"contactContainsNonFriendHandle";
    v24 = @"contactContainsUnknownHandle";
    v27 = &__kCFBooleanFalse;
    v28 = &__kCFBooleanFalse;
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
    v6 = [v5 mutableCopy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = resultsCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          relationship = [*(*(&v16 + 1) + 8 * v11) relationship];
          if (relationship <= 2)
          {
            [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:off_100366FD8[relationship]];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    ampController = [(GKContactsIntegrationMetricsHandler *)self ampController];
    v14 = GKDaemonIdentifier;
    v15 = [v6 copy];
    [ampController reportPerformanceEventWithHostAppBundleId:v14 metricsFields:v15];
  }
}

@end