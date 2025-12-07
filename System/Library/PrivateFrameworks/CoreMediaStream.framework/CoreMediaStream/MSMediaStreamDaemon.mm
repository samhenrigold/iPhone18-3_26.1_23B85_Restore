@interface MSMediaStreamDaemon
- (BOOL)dequeueAssetCollectionWithGUIDs:(id)ds personID:(id)d outError:(id *)error;
- (BOOL)enqueueAssetCollection:(id)collection personID:(id)d outError:(id *)error;
- (BOOL)hasOutstandingActivity;
- (BOOL)isInRetryState;
- (BOOL)personIDHasOutstandingPublications:(id)publications;
- (MSMediaStreamDaemon)init;
- (id)_boundDeleterForPersonID:(id)d;
- (id)_boundPublisherForPersonID:(id)d;
- (id)_boundServerSideConfigManagerForPersonID:(id)d;
- (id)_boundSubscriberForPersonID:(id)d;
- (id)nextActivityDate;
- (id)ownSubscribedStreamForPersonID:(id)d;
- (id)serverSideConfigurationForPersonID:(id)d;
- (id)subscribedStreamsForPersonID:(id)d;
- (void)abortAllActivityForPersonID:(id)d;
- (void)computeHashForAsset:(id)asset personID:(id)d;
- (void)deleteAssetCollections:(id)collections forPersonID:(id)d;
- (void)didExceedPublishQuotaForPersonID:(id)d retryDate:(id)date;
- (void)didIdle;
- (void)didReceiveAuthenticationFailureForPersonID:(id)d;
- (void)didReceiveAuthenticationSuccessForPersonID:(id)d;
- (void)didReceiveNewServerSideConfigurationForPersonID:(id)d;
- (void)didReceiveServerSideConfigurationVersion:(id)version forPersonID:(id)d;
- (void)didUnidle;
- (void)forgetPersonID:(id)d;
- (void)pollForSubscriptionUpdatesForPersonID:(id)d;
- (void)pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:(id)d;
- (void)reenqueueQuarantinedActivitiesWithReason:(id)reason;
- (void)refreshServerSideConfigurationForPersonID:(id)d;
- (void)resetSubscriberSyncForPersonID:(id)d;
- (void)retryOutstandingActivities;
- (void)start;
- (void)stop;
- (void)stopAllActivities;
@end

@implementation MSMediaStreamDaemon

- (void)didExceedPublishQuotaForPersonID:(id)d retryDate:(id)date
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    dCopy = d;
    v8 = 2114;
    dateCopy = date;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received quota excess failure for person ID %@. Next retry date: %{public}@", &v6, 0x16u);
  }
}

- (void)didReceiveAuthenticationSuccessForPersonID:(id)d
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    dCopy = d;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Successfully authenticated person ID %@", &v4, 0xCu);
  }
}

- (void)didReceiveAuthenticationFailureForPersonID:(id)d
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    dCopy = d;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received authentication failure for person ID %@", &v4, 0xCu);
  }
}

- (void)stop
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Media stream daemon stopping.", buf, 2u);
  }

  [(MSMediaStreamDaemon *)self stopAllActivities];
  context = objc_autoreleasePoolPush();
  v3 = +[MSPublisher _clearInstantiatedPublishersByPersonID];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKey:*(*(&v22 + 1) + 8 * v7)];
        delegate = [v8 delegate];
        if (delegate)
        {
          if (objc_opt_respondsToSelector())
          {
            [delegate publisherWillDeassignPluginAsDelegateOfPublisher:v8];
          }

          [v8 setDelegate:0];
          [(NSCountedSet *)self->_retainedObjects removeObject:delegate];
        }

        [v8 deactivate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v10 = +[MSSubscriber _clearInstantiatedSubscribersByPersonID];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v10 objectForKey:*(*(&v18 + 1) + 8 * v14)];
        delegate2 = [v15 delegate];
        if (delegate2)
        {
          if (objc_opt_respondsToSelector())
          {
            [delegate2 subscriberWillDeassignPluginAsDelegateOfSubscriber:v15];
          }

          [v15 setDelegate:0];
          [(NSCountedSet *)self->_retainedObjects removeObject:delegate2];
        }

        [v15 deactivate];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
}

- (void)start
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Media stream daemon starting...", buf, 2u);
  }

  v3 = dispatch_time(0, 10000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MSMediaStreamDaemon_start__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __28__MSMediaStreamDaemon_start__block_invoke(uint64_t a1)
{
  v2 = MSPlatform();
  v3 = [v2 subscriberPluginClass];

  v5 = [v3 personIDForPollingTriggeredByPushNotification];
  if ([v5 length])
  {
    [*(a1 + 32) retainBusy];
    v4 = [*(a1 + 32) _boundSubscriberForPersonID:v5];
    [v4 checkForNewAssetCollectionsIfMissingCtag];
    [*(a1 + 32) releaseBusy];
    [*(a1 + 32) retryOutstandingActivities];
  }
}

- (void)deleteAssetCollections:(id)collections forPersonID:(id)d
{
  dCopy = d;
  collectionsCopy = collections;
  [(MSDaemon *)self retainBusy];
  v8 = [(MSMediaStreamDaemon *)self _boundDeleterForPersonID:dCopy];

  [v8 deleteAssetCollections:collectionsCopy];
  [(MSDaemon *)self releaseBusy];
}

- (void)didReceiveNewServerSideConfigurationForPersonID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Sending local notification about new server-side configuration for %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{dCopy, @"personID", 0}];
  [defaultCenter postNotificationName:@"MSMSDServerSideConfigurationDidChangeNotification" object:self userInfo:v6];
}

- (void)refreshServerSideConfigurationForPersonID:(id)d
{
  v3 = [(MSMediaStreamDaemon *)self _boundServerSideConfigManagerForPersonID:d];
  [v3 refreshConfiguration];
}

- (void)didReceiveServerSideConfigurationVersion:(id)version forPersonID:(id)d
{
  versionCopy = version;
  dCopy = d;
  v8 = [(MSMediaStreamDaemon *)self serverSideConfigurationForPersonID:dCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"mme.streams.application.configVersion"];
    v11 = v10;
    if (versionCopy)
    {
      v12 = [versionCopy isEqualToString:v10];

      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Not refreshing server-side configuration.", buf, 2u);
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Server-side configuration has changed. Refreshing configuration.", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__MSMediaStreamDaemon_didReceiveServerSideConfigurationVersion_forPersonID___block_invoke;
  v13[3] = &unk_278E927C8;
  v13[4] = self;
  v14 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v13);

LABEL_10:
}

- (id)serverSideConfigurationForPersonID:(id)d
{
  v3 = [(MSMediaStreamDaemon *)self _boundServerSideConfigManagerForPersonID:d];
  config = [v3 config];

  return config;
}

- (id)ownSubscribedStreamForPersonID:(id)d
{
  v3 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:d];
  ownSubscribedStream = [v3 ownSubscribedStream];

  return ownSubscribedStream;
}

- (id)subscribedStreamsForPersonID:(id)d
{
  v3 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:d];
  subscribedStreams = [v3 subscribedStreams];

  return subscribedStreams;
}

- (void)computeHashForAsset:(id)asset personID:(id)d
{
  assetCopy = asset;
  v7 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:d];
  [v7 computeHashForAsset:assetCopy];
}

- (void)resetSubscriberSyncForPersonID:(id)d
{
  v3 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:d];
  [v3 resetSync];
}

- (void)pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(MSDaemon *)self retainBusy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy2 = self;
    v11 = 2112;
    v12 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Push notification received for My Photo Stream with targetPersonID %@.", &v9, 0x16u);
  }

  v5 = MSPlatform();
  subscriberPluginClass = [v5 subscriberPluginClass];

  personIDForPollingTriggeredByPushNotification = [subscriberPluginClass personIDForPollingTriggeredByPushNotification];
  if ([personIDForPollingTriggeredByPushNotification length])
  {
    v8 = [personIDForPollingTriggeredByPushNotification isEqualToString:dCopy];
    if (!dCopy || v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Serving push notification", &v9, 0xCu);
      }

      [(MSMediaStreamDaemon *)self didReceivePushNotificationForPersonID:personIDForPollingTriggeredByPushNotification];
      [(MSMediaStreamDaemon *)self pollForSubscriptionUpdatesForPersonID:personIDForPollingTriggeredByPushNotification];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The subscription plugin class does not support push notification refreshing.", &v9, 2u);
  }

  [(MSDaemon *)self releaseBusy];
}

- (void)pollForSubscriptionUpdatesForPersonID:(id)d
{
  dCopy = d;
  [(MSDaemon *)self retainBusy];
  v5 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:dCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MSMediaStreamDaemon_pollForSubscriptionUpdatesForPersonID___block_invoke;
  block[3] = &unk_278E926D8;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [(MSDaemon *)self releaseBusy];
}

- (BOOL)dequeueAssetCollectionWithGUIDs:(id)ds personID:(id)d outError:(id *)error
{
  dsCopy = ds;
  dCopy = d;
  [(MSDaemon *)self retainBusy];
  v10 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:dCopy];

  if (v10)
  {
    LOBYTE(error) = [v10 dequeueAssetCollectionWithGUIDs:dsCopy outError:error];
  }

  else if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = MSCFCopyLocalizedString(@"ERROR_PUBLISHER_MISSING");
    *error = [v11 MSErrorWithDomain:@"MSPublisherErrorDomain" code:9 description:v12];

    LOBYTE(error) = 0;
  }

  [(MSDaemon *)self releaseBusy];

  return error;
}

- (BOOL)enqueueAssetCollection:(id)collection personID:(id)d outError:(id *)error
{
  dCopy = d;
  collectionCopy = collection;
  [(MSDaemon *)self retainBusy];
  v10 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:dCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSMediaStreamDaemon_enqueueAssetCollection_personID_outError___block_invoke;
  block[3] = &unk_278E926D8;
  v14 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
  LOBYTE(error) = [v11 enqueueAssetCollections:collectionCopy outError:error];

  [(MSDaemon *)self releaseBusy];
  return error;
}

- (void)forgetPersonID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Forgetting everything about person ID %@...", &v12, 0xCu);
  }

  [MSPublisher forgetPersonID:dCopy];
  [MSSubscriber forgetPersonID:dCopy];
  [MSDeleter forgetPersonID:dCopy];
  [MSServerSideConfigManager forgetPersonID:dCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MSPathPublishDirForPersonID(dCopy);
  [defaultManager removeItemAtPath:v5 error:0];

  v6 = MSPathPublishMMCSLibraryForPersonID(dCopy);
  [defaultManager removeItemAtPath:v6 error:0];

  v7 = MSPathSubscribeDirForPersonID(dCopy);
  [defaultManager removeItemAtPath:v7 error:0];

  v8 = MSPathSubscribeMMCSLibraryForPersonID(dCopy);
  [defaultManager removeItemAtPath:v8 error:0];

  v9 = MSPathShareDirForPersonID(dCopy);
  [defaultManager removeItemAtPath:v9 error:0];

  v10 = MSPathDeleteDirForPersonID(dCopy);
  [defaultManager removeItemAtPath:v10 error:0];

  v11 = MSPathConfigDirForPersonID(dCopy);
  [defaultManager removeItemAtPath:v11 error:0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Person ID %@ forgotten.", &v12, 0xCu);
  }
}

- (void)stopAllActivities
{
  +[MSPublisher stopAllActivities];
  +[MSSubscriber stopAllActivities];
  +[MSDeleter stopAllActivities];

  +[MSServerSideConfigManager abortAllActivities];
}

- (void)abortAllActivityForPersonID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Aborting all activities for person ID %@.", &v8, 0xCu);
  }

  v4 = [MSPublisher existingPublisherForPersonID:dCopy];
  [v4 abort];

  v5 = [MSSubscriber existingSubscriberForPersonID:dCopy];
  [v5 abort];

  v6 = [MSDeleter existingDeleterForPersonID:dCopy];
  [v6 abort];

  v7 = [MSServerSideConfigManager existingConfigManagerForPersonID:dCopy];
  [v7 abort];
}

- (void)reenqueueQuarantinedActivitiesWithReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  [(MSDaemon *)self retainBusy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Reenqueuing quarantined activities. Reason: %{public}@.", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = +[MSPublisher personIDsWithOutstandingActivities];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:*(*(&v11 + 1) + 8 * v9)];
        [v10 reenqueueQuarantinedAssetCollections];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MSDaemon *)self releaseBusy];
}

- (void)retryOutstandingActivities
{
  v48 = *MEMORY[0x277D85DE8];
  [(MSDaemon *)self retainBusy];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = +[MSPublisher personIDsWithOutstandingActivities];
  v4 = [v3 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(MSMediaStreamDaemon *)self _boundPublisherForPersonID:*(*(&v41 + 1) + 8 * v8)];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__MSMediaStreamDaemon_retryOutstandingActivities__block_invoke;
        block[3] = &unk_278E926D8;
        v40 = v9;
        v10 = v9;
        dispatch_async(v7, block);

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v5);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = +[MSSubscriber personIDsWithOutstandingActivities];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    v15 = MEMORY[0x277D85CD0];
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [(MSMediaStreamDaemon *)self _boundSubscriberForPersonID:*(*(&v35 + 1) + 8 * v16)];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __49__MSMediaStreamDaemon_retryOutstandingActivities__block_invoke_2;
        v33[3] = &unk_278E926D8;
        v34 = v17;
        v18 = v17;
        dispatch_async(v15, v33);

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v13);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = +[MSDeleter personIDsWithOutstandingActivities];
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    v23 = MEMORY[0x277D85CD0];
    do
    {
      v24 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = [(MSMediaStreamDaemon *)self _boundDeleterForPersonID:*(*(&v29 + 1) + 8 * v24)];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __49__MSMediaStreamDaemon_retryOutstandingActivities__block_invoke_3;
        v27[3] = &unk_278E926D8;
        v28 = v25;
        v26 = v25;
        dispatch_async(v23, v27);

        ++v24;
      }

      while (v21 != v24);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v21);
  }

  [(MSDaemon *)self releaseBusy];
}

- (id)_boundServerSideConfigManagerForPersonID:(id)d
{
  v4 = [MSServerSideConfigManager configManagerForPersonID:d];
  [v4 setDaemon:self];

  return v4;
}

- (id)_boundDeleterForPersonID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [MSDeleter deleterForPersonID:dCopy];
  delegate = [v5 delegate];

  if (delegate)
  {
LABEL_2:
    v7 = v5;
    goto LABEL_11;
  }

  v8 = MSPlatform();
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MSPlatform();
    deletePluginClass = [v10 deletePluginClass];

    v12 = [deletePluginClass deleterPluginForPersonID:dCopy];
    if (v12)
    {
      v13 = v12;
      [(NSCountedSet *)self->_retainedObjects addObject:v12];
      if (objc_opt_respondsToSelector())
      {
        [v13 deleterWillAssignPluginAsDelegateOfDeleter:v5];
      }

      [v5 setDelegate:v13];
      [v5 setDaemon:self];

      goto LABEL_2;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 134218242;
      v16 = dCopy;
      v17 = 2114;
      v18 = deletePluginClass;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get deleter plugin, person id %p, plugin class %{public}@", &v15, 0x16u);
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)_boundSubscriberForPersonID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [MSSubscriber subscriberForPersonID:dCopy];
  delegate = [v5 delegate];

  if (delegate)
  {
LABEL_6:
    v11 = v5;
    goto LABEL_7;
  }

  v7 = MSPlatform();
  subscriberPluginClass = [v7 subscriberPluginClass];

  v9 = [subscriberPluginClass subscriberPluginForPersonID:dCopy];
  if (v9)
  {
    v10 = v9;
    [(NSCountedSet *)self->_retainedObjects addObject:v9];
    if (objc_opt_respondsToSelector())
    {
      [v10 subscriberWillAssignPluginAsDelegateOfSubscriber:v5];
    }

    [v5 setDelegate:v10];
    [v5 setDaemon:self];

    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = 134218242;
    v14 = dCopy;
    v15 = 2114;
    v16 = subscriberPluginClass;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get subscriber plugin, person id %p, plugin class %{public}@", &v13, 0x16u);
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_boundPublisherForPersonID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [MSPublisher publisherForPersonID:dCopy];
  delegate = [v5 delegate];

  if (delegate)
  {
    goto LABEL_4;
  }

  v7 = MSPlatform();
  publisherPluginClass = [v7 publisherPluginClass];

  v9 = [publisherPluginClass publisherPluginForPersonID:dCopy];
  if (v9)
  {
    v10 = v9;
    [(NSCountedSet *)self->_retainedObjects addObject:v9];
    [v10 publisherWillAssignPluginAsDelegateOfPublisher:v5];
    [v5 setDelegate:v10];
    [v5 setDaemon:self];

LABEL_4:
    v11 = v5;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = 134218242;
    v14 = dCopy;
    v15 = 2114;
    v16 = publisherPluginClass;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get publisher plugin, person id %p, plugin class %{public}@", &v13, 0x16u);
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (void)didUnidle
{
  delegate = [(MSMediaStreamDaemon *)self delegate];
  [delegate mediaStreamDaemonDidUnidle:self];
}

- (void)didIdle
{
  delegate = [(MSMediaStreamDaemon *)self delegate];
  [delegate mediaStreamDaemonDidIdle:self];
}

- (BOOL)isInRetryState
{
  if (+[MSPublisher isInRetryState](MSPublisher, "isInRetryState") || +[MSSubscriber isInRetryState])
  {
    return 1;
  }

  return +[MSDeleter isInRetryState];
}

- (BOOL)personIDHasOutstandingPublications:(id)publications
{
  publicationsCopy = publications;
  v4 = +[MSPublisher personIDsWithOutstandingActivities];
  v5 = [v4 containsObject:publicationsCopy];

  return v5;
}

- (BOOL)hasOutstandingActivity
{
  nextActivityDate = [(MSMediaStreamDaemon *)self nextActivityDate];
  v3 = nextActivityDate != 0;

  return v3;
}

- (id)nextActivityDate
{
  v2 = +[MSPublisher nextActivityDate];
  v3 = +[MSSubscriber nextActivityDate];
  if (v3 && (!v2 || [v2 compare:v3] == 1))
  {
    v4 = v3;

    v2 = v4;
  }

  v5 = +[MSDeleter nextActivityDate];
  if (v5 && (!v2 || [v2 compare:v5] == 1))
  {
    v6 = v5;

    v2 = v6;
  }

  v7 = v2;

  return v2;
}

- (MSMediaStreamDaemon)init
{
  v6.receiver = self;
  v6.super_class = MSMediaStreamDaemon;
  v2 = [(MSDaemon *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA940]);
    retainedObjects = v2->_retainedObjects;
    v2->_retainedObjects = v3;
  }

  return v2;
}

@end