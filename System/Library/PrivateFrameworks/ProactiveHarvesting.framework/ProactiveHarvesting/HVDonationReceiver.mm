@interface HVDonationReceiver
+ (id)defaultReceiver;
- (BOOL)deleteContentWithRequest:(id)request error:(id *)error;
- (BOOL)donateInteractions:(id)interactions bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)donateSearchableItems:(id)items bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)donateUserAction:(id)action searchableItem:(id)item error:(id *)error;
- (HVDonationReceiver)init;
- (HVDonationReceiver)initWithQueues:(id)queues;
- (void)_setUpUserActivityDonations;
@end

@implementation HVDonationReceiver

+ (id)defaultReceiver
{
  if (defaultReceiver__pasOnceToken8 != -1)
  {
    dispatch_once(&defaultReceiver__pasOnceToken8, &__block_literal_global_1244);
  }

  v3 = defaultReceiver__pasExprOnceResult;

  return v3;
}

- (BOOL)deleteContentWithRequest:(id)request error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v19 = requestCopy;
    _os_log_debug_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEBUG, "HVDonationReceiver: deleteContentWithRequest called: %{private}@", buf, 0xCu);
  }

  queues = self->_queues;
  v15 = 0;
  v9 = [(HVQueues *)queues deleteContentWithRequest:requestCopy error:&v15];
  v10 = v15;
  if (!v9)
  {
    v11 = hv_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_error_impl(&dword_2321EC000, v11, OS_LOG_TYPE_ERROR, "HVDonationReceiver: deleteContentWithRequest failed: %@", buf, 0xCu);
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA7E8];
      v17 = v10;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *error = [v12 errorWithDomain:@"HVErrorDomain" code:6 userInfo:v13];
    }
  }

  return v9;
}

- (BOOL)donateInteractions:(id)interactions bundleIdentifier:(id)identifier error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  interactionsCopy = interactions;
  identifierCopy = identifier;
  if ([HVContentAdmission shouldAdmitContentFromBundleIdentifier:?])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = interactionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
    v11 = v10 == 0;
    if (v10)
    {
      v12 = v10;
      obj = v9;
      v29 = v10 == 0;
      errorCopy = error;
      v31 = interactionsCopy;
      v9 = 0;
      v13 = *v37;
      v14 = *MEMORY[0x277CCA1B8];
      v32 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          identifier = [v16 identifier];

          if (identifier)
          {
            v19 = [[HVInteraction alloc] initWithInteraction:v16 bundleIdentifier:identifierCopy];
            queues = self->_queues;
            v35 = 0;
            v21 = [(HVQueues *)queues enqueueContent:v19 contentProtection:v14 error:&v35];
            v22 = v35;
            if (!v21)
            {
              v23 = hv_default_log_handle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v43 = v22;
                _os_log_error_impl(&dword_2321EC000, v23, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateInteractions: HVQueues enqueueContent failed: %@", buf, 0xCu);
              }

              v24 = v22;
              v32 = 0;
              v9 = v24;
            }
          }

          else
          {
            v22 = hv_default_log_handle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543619;
              v43 = identifierCopy;
              v44 = 2117;
              v45 = v16;
              _os_log_fault_impl(&dword_2321EC000, v22, OS_LOG_TYPE_FAULT, "Received interaction with nil identifier from bundle id %{public}@: %{sensitive}@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v12);

      v11 = v32;
      if ((errorCopy == 0) | v32 & 1)
      {
        interactionsCopy = v31;
        v25 = v9;
        goto LABEL_27;
      }

      v26 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA7E8];
      v25 = v9;
      interactionsCopy = v31;
      if (!v9)
      {
        v9 = objc_opt_new();
      }

      v41 = v9;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *errorCopy = [v26 errorWithDomain:@"HVErrorDomain" code:2 userInfo:v27];

      v11 = v29;
      if (v25)
      {
        v11 = 0;
        goto LABEL_27;
      }
    }

    v25 = 0;
    goto LABEL_27;
  }

  v25 = hv_default_log_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = identifierCopy;
    _os_log_impl(&dword_2321EC000, v25, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateInteraction: ignoring interaction from %@ due to user settings.", buf, 0xCu);
  }

  v11 = 1;
LABEL_27:

  return v11;
}

- (BOOL)donateUserAction:(id)action searchableItem:(id)item error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemCopy = item;
  bundleID = [itemCopy bundleID];
  v11 = [HVContentAdmission shouldAdmitContentFromBundleIdentifier:bundleID];

  if (v11)
  {
    v12 = dispatch_semaphore_create(0);
    *&v48 = 0;
    *(&v48 + 1) = &v48;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__1209;
    v51 = __Block_byref_object_dispose__1210;
    v52 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__1209;
    v42 = __Block_byref_object_dispose__1210;
    v43 = 0;
    v13 = MEMORY[0x277CCAE58];
    uaIdentifier = [actionCopy uaIdentifier];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__HVDonationReceiver_donateUserAction_searchableItem_error___block_invoke;
    v34[3] = &unk_278969780;
    v36 = &v38;
    v37 = &v48;
    v15 = v12;
    v35 = v15;
    v16 = [v13 _fetchUserActivityWithUUID:uaIdentifier intervalToWaitForDocumentSynchronizationToComplete:v34 completionHandler:5.0];

    [MEMORY[0x277D425A0] waitForSemaphore:v15];
    if (!*(*(&v48 + 1) + 40))
    {
      v23 = 0;
      if (error)
      {
        *error = v39[5];
      }

      goto LABEL_19;
    }

    v17 = hv_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(&v48 + 1) + 40);
      *buf = 138412290;
      v47 = v18;
      _os_log_impl(&dword_2321EC000, v17, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateUserActivity: fetched user activity: %@", buf, 0xCu);
    }

    v19 = [HVSearchableUserActivity alloc];
    v20 = [(HVSearchableUserActivity *)v19 initWithUserActivity:*(*(&v48 + 1) + 40) searchableItem:itemCopy];
    queues = self->_queues;
    protection = [itemCopy protection];
    v33 = 0;
    v23 = [(HVQueues *)queues enqueueContent:v20 contentProtection:protection error:&v33];
    v24 = v33;

    if ((v23 & 1) == 0)
    {
      v27 = hv_default_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v24;
        _os_log_error_impl(&dword_2321EC000, v27, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateUserAction: HVQueues enqueueContent failed: %@", buf, 0xCu);
      }

      v28 = v24;
      v25 = v28;
      if (!error)
      {
        goto LABEL_18;
      }

      v32 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA7E8];
      v29 = v28;
      if (!v28)
      {
        v29 = objc_opt_new();
      }

      v45 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      *error = [v32 errorWithDomain:@"HVErrorDomain" code:2 userInfo:v30];

      if (v25)
      {
        goto LABEL_18;
      }
    }

    v25 = 0;
LABEL_18:

LABEL_19:
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v48, 8);
    goto LABEL_20;
  }

  v15 = hv_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    bundleID2 = [itemCopy bundleID];
    LODWORD(v48) = 138412290;
    *(&v48 + 4) = bundleID2;
    _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateUserActivity: ignoring activity from %@ due to user settings.", &v48, 0xCu);
  }

  v23 = 1;
LABEL_20:

  return v23;
}

void __60__HVDonationReceiver_donateUserAction_searchableItem_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_2321EC000, v7, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateUserAction: failed to fetch user activity: %@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)donateSearchableItems:(id)items bundleIdentifier:(id)identifier error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifierCopy = identifier;
  v9 = hv_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [itemsCopy count];
    v11 = [itemsCopy _pas_mappedArrayWithTransform:&__block_literal_global_21];
    *buf = 134218498;
    v61 = v10;
    v62 = 2114;
    v63 = identifierCopy;
    v64 = 2114;
    v65 = v11;
    _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: received %tu searchableItems for %{public}@ (%{public}@)", buf, 0x20u);
  }

  if ([HVContentAdmission shouldAdmitContentFromBundleIdentifier:identifierCopy])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v54 objects:v68 count:16];
    v14 = v13 == 0;
    v51 = v13;
    if (v13)
    {
      errorCopy = error;
      v43 = itemsCopy;
      v15 = 0;
      v16 = *v55;
      v48 = 1;
      v47 = *v55;
      v45 = v12;
      do
      {
        v17 = 0;
        do
        {
          if (*v55 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v54 + 1) + 8 * v17);
          v19 = objc_autoreleasePoolPush();
          bundleID = [v18 bundleID];
          v21 = [bundleID isEqualToString:identifierCopy];

          if (v21)
          {
            v53 = 0;
            v22 = [HVBiomeConversions biomeEventFromSearchableItem:v18 bundleIdentifier:identifierCopy error:&v53];
            v23 = v53;
            if (v22)
            {
              v24 = v15;
              v25 = identifierCopy;
              queues = self->_queues;
              protection = [v18 protection];
              v52 = 0;
              v28 = [(HVQueues *)queues enqueueContent:v22 contentProtection:protection error:&v52];
              v29 = v52;

              if (v28)
              {
                identifierCopy = v25;
                v15 = v24;
              }

              else
              {
                v31 = hv_default_log_handle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  bundleID2 = [v18 bundleID];
                  uniqueIdentifier = [v18 uniqueIdentifier];
                  domainIdentifier = [v18 domainIdentifier];
                  *buf = 138544130;
                  v61 = bundleID2;
                  v62 = 2114;
                  v63 = uniqueIdentifier;
                  v64 = 2114;
                  v65 = domainIdentifier;
                  v66 = 2112;
                  v67 = v29;
                  _os_log_error_impl(&dword_2321EC000, v31, OS_LOG_TYPE_ERROR, "HVDonationReceiver: donateSearchableItems: HVQueues enqueueContent bid:%{public}@ uid:%{public}@ did:%{public}@ failed: %@", buf, 0x2Au);
                }

                v29 = v29;
                v48 = 0;
                v15 = v29;
                identifierCopy = v25;
              }

              v12 = v45;
              v16 = v47;
            }

            else
            {
              v30 = hv_default_log_handle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                bundleID3 = [v18 bundleID];
                [v18 uniqueIdentifier];
                v35 = v49 = v15;
                domainIdentifier2 = [v18 domainIdentifier];
                *buf = 138544130;
                v61 = bundleID3;
                v62 = 2114;
                v63 = v35;
                v64 = 2114;
                v65 = domainIdentifier2;
                v66 = 2112;
                v67 = v23;
                _os_log_error_impl(&dword_2321EC000, v30, OS_LOG_TYPE_ERROR, "HVDonationReceiver: HVBiomeConversions biomeEventFromSearchableItem bid:%{public}@ uid:%{public}@ did:%{public}@ failed: %@", buf, 0x2Au);

                v16 = v47;
                v15 = v49;
              }

              v48 = 0;
              v29 = v15;
              v15 = v23;
            }
          }

          else
          {
            v23 = hv_default_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              bundleID4 = [v18 bundleID];
              uniqueIdentifier2 = [v18 uniqueIdentifier];
              domainIdentifier3 = [v18 domainIdentifier];
              *buf = 138544130;
              v61 = bundleID4;
              v62 = 2114;
              v63 = identifierCopy;
              v64 = 2114;
              v65 = uniqueIdentifier2;
              v66 = 2114;
              v67 = domainIdentifier3;
              _os_log_fault_impl(&dword_2321EC000, v23, OS_LOG_TYPE_FAULT, "HVDonationReceiver: HVBiomeConversions mismatched bundle id (%{public}@ != %{public}@) uid:%{public}@ did:%{public}@", buf, 0x2Au);
            }

            v48 = 0;
          }

          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v51 != v17);
        v51 = [v12 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v51);

      v14 = v48;
      if ((errorCopy == 0) | v48 & 1)
      {
        itemsCopy = v43;
        goto LABEL_36;
      }

      v39 = MEMORY[0x277CCA9B8];
      v58 = *MEMORY[0x277CCA7E8];
      v12 = v15;
      itemsCopy = v43;
      if (!v15)
      {
        v12 = objc_opt_new();
      }

      v59 = v12;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      *errorCopy = [v39 errorWithDomain:@"HVErrorDomain" code:2 userInfo:v40];

      v14 = 0;
      if (v15)
      {
        v14 = 0;
        goto LABEL_36;
      }
    }

    v15 = 0;
    goto LABEL_36;
  }

  v15 = hv_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v61 = identifierCopy;
    _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: donateSearchableItems: ignoring content from %{public}@ due to user settings.", buf, 0xCu);
  }

  v14 = 1;
LABEL_36:

  return v14;
}

__CFString *__67__HVDonationReceiver_donateSearchableItems_bundleIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"(NO UNIQUEID!)";
  }

  v5 = v4;

  return v4;
}

- (void)_setUpUserActivityDonations
{
  v3 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"HVDonationReceiver.biomeSubQueue" qosClass:9];
  biomeSubQueue = self->_biomeSubQueue;
  self->_biomeSubQueue = v3;

  v5 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.HVDonationReceiver.BiomeScheduler" targetQueue:self->_biomeSubQueue];
  biomeScheduler = self->_biomeScheduler;
  self->_biomeScheduler = v5;

  v7 = objc_opt_new();
  publisher = [v7 publisher];
  v9 = [publisher subscribeOn:self->_biomeScheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HVDonationReceiver__setUpUserActivityDonations__block_invoke_16;
  v12[3] = &unk_278969738;
  v12[4] = self;
  v10 = [v9 sinkWithCompletion:&__block_literal_global_15_1230 receiveInput:v12];
  biomeSink = self->_biomeSink;
  self->_biomeSink = v10;
}

void __49__HVDonationReceiver__setUpUserActivityDonations__block_invoke_16(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 eventBody];
  v4 = [v3 associatedBundleId];
  v5 = [HVContentAdmission shouldAdmitContentFromBundleIdentifier:v4];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *MEMORY[0x277CCA1A0];
    v13 = 0;
    v8 = [v6 enqueueContent:v3 contentProtection:v7 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0)
    {
      v10 = hv_default_log_handle();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      v11 = [v3 uuid];
      v12 = [v3 associatedBundleId];
      *buf = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_2321EC000, v10, OS_LOG_TYPE_ERROR, "HVDonationReceiver: user activities: failed to enqueue %@ from %@: %@", buf, 0x20u);

LABEL_7:
      goto LABEL_8;
    }
  }

  else
  {
    v9 = hv_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 uuid];
      v11 = [v3 associatedBundleId];
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: user activities: ignoring %@ from %@ due to settings.", buf, 0x16u);
      goto LABEL_7;
    }
  }

LABEL_9:
}

void __49__HVDonationReceiver__setUpUserActivityDonations__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = hv_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 error];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_2321EC000, v3, OS_LOG_TYPE_ERROR, "HVDonationReceiver: user activities: completion error: %@", &v6, 0xCu);
    }
  }

  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVDonationReceiver: user activities: completed.", &v6, 2u);
  }
}

- (HVDonationReceiver)initWithQueues:(id)queues
{
  queuesCopy = queues;
  v9.receiver = self;
  v9.super_class = HVDonationReceiver;
  v6 = [(HVDonationReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queues, queues);
  }

  return v7;
}

- (HVDonationReceiver)init
{
  v3 = +[HVQueues defaultQueues];
  v4 = [(HVDonationReceiver *)self initWithQueues:v3];

  return v4;
}

void __37__HVDonationReceiver_defaultReceiver__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultReceiver__pasExprOnceResult;
  defaultReceiver__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end