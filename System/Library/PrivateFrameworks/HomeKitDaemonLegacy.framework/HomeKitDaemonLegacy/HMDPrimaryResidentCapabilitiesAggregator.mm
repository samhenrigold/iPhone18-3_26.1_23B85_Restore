@interface HMDPrimaryResidentCapabilitiesAggregator
+ (id)logCategory;
- (HMDPrimaryResidentCapabilitiesAggregator)initWithDataSource:(id)source delegate:(id)delegate queue:(id)queue notificationCenter:(id)center homeUUID:(id)d accessories:(id)accessories;
- (id)accessoryCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from;
- (id)logIdentifier;
- (id)publicPairingIdentityForAccessory:(id)accessory ifDifferentFrom:(id)from;
- (id)residentCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from;
- (void)_handleAddedAccessories:(uint64_t)accessories;
- (void)_handleDidBecomePrimaryResident;
- (void)_processEventIfNewer:(void *)newer topic:;
- (void)didAddAccessory:(id)accessory;
- (void)didRemoveAccessory:(id)accessory;
- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)notification;
- (void)processSoftwareVersionEvent:(void *)event accessoryTopic:;
- (void)startIfPrimaryResident;
@end

@implementation HMDPrimaryResidentCapabilitiesAggregator

- (void)_processEventIfNewer:(void *)newer topic:
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a2;
  newerCopy = newer;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v10;
      v72 = 2112;
      v73 = newerCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Received event for: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    WeakRetained = objc_loadWeakRetained(selfCopy + 2);
    v12 = objc_loadWeakRetained(selfCopy + 3);
    if (!WeakRetained)
    {
      goto LABEL_16;
    }

    v13 = [MEMORY[0x277CD19F0] decodeTopic:newerCopy];
    asAccessoryTopic = [v13 asAccessoryTopic];
    v15 = asAccessoryTopic;
    if (asAccessoryTopic)
    {
      accessoryEventTopicSuffixID = [asAccessoryTopic accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID == *MEMORY[0x277CCEA50])
      {
        v17 = objc_alloc(MEMORY[0x277CD1678]);
        encodedData = [v5 encodedData];
        v19 = [v17 initWithProtoData:encodedData];

        accessoryUUID = [v15 accessoryUUID];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke;
        v64[3] = &unk_279726398;
        v65 = v19;
        v66 = selfCopy;
        v67 = v12;
        v68 = v5;
        v69 = v15;
        v21 = v19;
        [v67 aggregator:selfCopy accessoryCapabilitiesWithUUID:accessoryUUID completion:v64];

        v22 = v65;
LABEL_14:

        goto LABEL_15;
      }

      accessoryEventTopicSuffixID2 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID2 == *MEMORY[0x277CCEA88])
      {
        v29 = objc_alloc(MEMORY[0x277CD1D60]);
        encodedData2 = [v5 encodedData];
        v31 = [v29 initWithProtoData:encodedData2];

        accessoryUUID2 = [v15 accessoryUUID];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke_23;
        v58[3] = &unk_279726398;
        v59 = v31;
        v60 = selfCopy;
        v61 = v12;
        v62 = v5;
        v63 = v15;
        v21 = v31;
        [v61 aggregator:selfCopy residentCapabilitiesWithUUID:accessoryUUID2 completion:v58];

        v22 = v59;
        goto LABEL_14;
      }

      accessoryEventTopicSuffixID3 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID3 == *MEMORY[0x277CCEA80])
      {
        v34 = v5;
        v56 = v15;
        v35 = objc_loadWeakRetained(selfCopy + 3);
        if (v35)
        {
          v36 = objc_alloc(MEMORY[0x277D0F8A8]);
          context = v34;
          encodedData3 = [v34 encodedData];
          v38 = [v36 initWithProtoData:encodedData3];

          if (v38)
          {
            accessoryUUID3 = [v56 accessoryUUID];
            [v35 aggregator:selfCopy didReceivePublicPairingKeyWithUUID:accessoryUUID3 pairingIdentity:v38];
          }

          else
          {
            v48 = objc_autoreleasePoolPush();
            v53 = selfCopy;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v50 = v51 = v48;
              *buf = 138543618;
              v71 = v50;
              v72 = 2112;
              v73 = context;
              _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory public pairing identity event: %@ due to invalid data", buf, 0x16u);

              v48 = v51;
            }

            objc_autoreleasePoolPop(v48);
          }

          v34 = context;
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v46 = selfCopy;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v52 = HMFGetLogIdentifier();
            *buf = 138543618;
            v71 = v52;
            v72 = 2112;
            v73 = v34;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory public pairing identity event: %@ due to no delegate", buf, 0x16u);
          }

          objc_autoreleasePoolPop(contexta);
        }

        goto LABEL_15;
      }

      accessoryEventTopicSuffixID4 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID4 == *MEMORY[0x277CCEA60])
      {
        v41 = v15;
        v42 = v5;
        v57 = objc_loadWeakRetained(selfCopy + 3);
        accessoryUUID4 = [v41 accessoryUUID];

        encodedData4 = [v42 encodedData];

        [v57 aggregator:selfCopy didReceiveDeviceIRKWithUUID:accessoryUUID4 deviceIRK:encodedData4];
        goto LABEL_15;
      }

      accessoryEventTopicSuffixID5 = [v15 accessoryEventTopicSuffixID];
      if (accessoryEventTopicSuffixID5 == *MEMORY[0x277CCEAA0])
      {
        [(HMDPrimaryResidentCapabilitiesAggregator *)selfCopy processSoftwareVersionEvent:v5 accessoryTopic:v15];
        goto LABEL_15;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v26;
        v72 = 2112;
        v73 = newerCopy;
        v27 = "%{public}@Accessory event does not have expected suffix %@";
        goto LABEL_10;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v26;
        v72 = 2112;
        v73 = newerCopy;
        v27 = "%{public}@Unable to parse topic %@";
LABEL_10:
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v23);
LABEL_15:

LABEL_16:
  }
}

void __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1678]) initWithProtoData:v3];
  }

  else
  {
    v4 = 0;
  }

  if (([*(a1 + 32) isEqual:v4] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating on receiving different accessory capabilities %@.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [*(a1 + 56) encodedData];
    v14 = [*(a1 + 64) accessoryUUID];
    v15 = [*(a1 + 64) homeUUID];
    [v12 aggregator:v10 changedAccessoryCapabilities:v11 rawCapabilities:v13 accessoryUUID:v14 homeUUID:v15];
  }
}

void __71__HMDPrimaryResidentCapabilitiesAggregator__processEventIfNewer_topic___block_invoke_23(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:v3];
  }

  else
  {
    v4 = 0;
  }

  if (([*(a1 + 32) isEqual:v4] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating on receiving different resident capabilities %@.", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [*(a1 + 56) encodedData];
    v14 = [*(a1 + 64) accessoryUUID];
    v15 = [*(a1 + 64) homeUUID];
    [v12 aggregator:v10 changedResidentCapabilities:v11 rawCapabilities:v13 accessoryUUID:v14 homeUUID:v15];
  }
}

- (void)processSoftwareVersionEvent:(void *)event accessoryTopic:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(self + 3);
  if (WeakRetained)
  {
    v8 = objc_alloc(MEMORY[0x277CD1738]);
    encodedData = [v5 encodedData];
    v10 = [v8 initWithProtoData:encodedData];

    if (v10)
    {
      accessoryUUID = [eventCopy accessoryUUID];
      softwareVersion = [v10 softwareVersion];
      [WeakRetained aggregator:self didReceiveSoftwareVersionWithUUID:accessoryUUID softwareVersion:softwareVersion];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v20;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory software version event: %@ due to invalid data", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to process accessory software version event: %@ due to no delegate", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)notification
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDPrimaryResidentCapabilitiesAggregator_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __99__HMDPrimaryResidentCapabilitiesAggregator_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isCurrentDevicePrimaryResident];

  v5 = *(a1 + 32);
  if (v5)
  {
    if (v4 == *(v5 + 8))
    {
      return;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Primary resident status changed to %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 8) = v4;
    v12 = *(a1 + 32);
    if (v12)
    {
      if (*(v12 + 8) == 1)
      {
        [(HMDPrimaryResidentCapabilitiesAggregator *)v12 _handleDidBecomePrimaryResident];
      }

      else
      {
        dispatch_assert_queue_V2(*(v12 + 40));
        v13 = objc_loadWeakRetained((v12 + 16));
        v14 = v13;
        if (v13)
        {
          v15 = [v13 localAndRemoteSubscriptionProvider];
          [v15 unregisterConsumer:v12 completion:&__block_literal_global_20_46582];
        }
      }
    }
  }
}

- (void)_handleDidBecomePrimaryResident
{
  dispatch_assert_queue_V2(*(self + 40));
  WeakRetained = objc_loadWeakRetained((self + 24));
  [WeakRetained aggregatorDidBecomePrimary:self];

  allObjects = [*(self + 56) allObjects];
  [(HMDPrimaryResidentCapabilitiesAggregator *)self _handleAddedAccessories:allObjects];
}

- (void)_handleAddedAccessories:(uint64_t)accessories
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (accessories)
  {
    dispatch_assert_queue_V2(*(accessories + 40));
    if ([v3 count])
    {
      if (*(accessories + 8) == 1)
      {
        WeakRetained = objc_loadWeakRetained((accessories + 16));
        v5 = WeakRetained;
        if (WeakRetained)
        {
          v29 = WeakRetained;
          v30 = v3;
          array = [MEMORY[0x277CBEB18] array];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          obj = *(accessories + 56);
          v39 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v39)
          {
            v37 = *v49;
            v36 = *MEMORY[0x277CCEA50];
            v35 = *MEMORY[0x277CCEA88];
            v34 = *MEMORY[0x277CCEA80];
            v33 = *MEMORY[0x277CCEA60];
            v32 = *MEMORY[0x277CCEAA0];
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v49 != v37)
                {
                  objc_enumerationMutation(obj);
                }

                v7 = *(*(&v48 + 1) + 8 * i);
                v43 = *(accessories + 32);
                v8 = MEMORY[0x277CD16F0];
                v42 = *(accessories + 32);
                v9 = v7;
                v41 = [v8 topicFromSuffixID:v36 homeUUID:v42 accessoryUUID:v9];
                *buf = v41;
                v10 = MEMORY[0x277CD16F0];
                v40 = *(accessories + 32);
                v11 = [v10 topicFromSuffixID:v35 homeUUID:v40 accessoryUUID:v9];
                *&buf[8] = v11;
                v12 = MEMORY[0x277CD16F0];
                v13 = *(accessories + 32);
                v14 = [v12 topicFromSuffixID:v34 homeUUID:v13 accessoryUUID:v9];
                *&buf[16] = v14;
                v15 = MEMORY[0x277CD16F0];
                v16 = *(accessories + 32);
                v17 = [v15 topicFromSuffixID:v33 homeUUID:v16 accessoryUUID:v9];
                v54 = v17;
                v18 = MEMORY[0x277CD16F0];
                accessoriesCopy = accessories;
                v20 = *(accessories + 32);
                v21 = [v18 topicFromSuffixID:v32 homeUUID:v20 accessoryUUID:v9];

                v55 = v21;
                v22 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:5];

                accessories = accessoriesCopy;
                [array addObjectsFromArray:v22];
              }

              v39 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
            }

            while (v39);
          }

          v23 = objc_autoreleasePoolPush();
          accessoriesCopy2 = accessories;
          v25 = HMFGetOSLogHandle();
          v3 = v30;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v30;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Subscribing for accessories: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v5 = v29;
          localAndRemoteSubscriptionProvider = [v29 localAndRemoteSubscriptionProvider];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke;
          v44[3] = &unk_27972B260;
          v44[4] = accessoriesCopy2;
          v45 = array;
          v46 = v29;
          v47 = v30;
          v28 = array;
          [localAndRemoteSubscriptionProvider changeRegistrationsForConsumer:accessoriesCopy2 topicFilterAdditions:v28 topicFilterRemovals:MEMORY[0x277CBEBF8] completion:v44];
        }
      }
    }
  }
}

void __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 56);
      *buf = 138543874;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error subscribing to capabilities for accessories: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 40);
    }

    else
    {
      v13 = 0;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_2;
    v16[3] = &unk_279734870;
    v17 = *(a1 + 40);
    v18 = v5;
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    v19 = v14;
    v20 = v15;
    dispatch_async(v13, v16);
  }
}

void __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_3;
  v5[3] = &unk_279726370;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v5];
}

void __68__HMDPrimaryResidentCapabilitiesAggregator__handleAddedAccessories___block_invoke_3(id *a1, void *a2)
{
  v7 = a2;
  v3 = [a1[4] objectForKeyedSubscript:v7];
  v4 = [a1[5] eventStoreReadHandle];
  v5 = [v4 lastEventForTopic:v7];

  v6 = v3;
  if (v3 || (v6 = v5) != 0)
  {
    [(HMDPrimaryResidentCapabilitiesAggregator *)a1[6] _processEventIfNewer:v6 topic:v7];
  }
}

- (id)publicPairingIdentityForAccessory:(id)accessory ifDifferentFrom:(id)from
{
  accessoryCopy = accessory;
  fromCopy = from;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      v9 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA80] homeUUID:self->_homeUUID accessoryUUID:accessoryCopy];
      eventStoreReadHandle = [WeakRetained eventStoreReadHandle];
      v11 = [eventStoreReadHandle lastEventForTopic:v9];

      if (v11)
      {
        v12 = objc_alloc(MEMORY[0x277D0F8A8]);
        encodedData = [v11 encodedData];
        v14 = [v12 initWithProtoData:encodedData];

        if (!fromCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = 0;
        if (!fromCopy)
        {
          goto LABEL_9;
        }
      }

      publicPairingIdentity = [v14 publicPairingIdentity];
      v16 = [publicPairingIdentity isEqual:fromCopy];

      if (v16)
      {
        v17 = 0;
LABEL_10:

        goto LABEL_13;
      }

LABEL_9:
      v17 = fromCopy;
      goto LABEL_10;
    }
  }

  else
  {
    WeakRetained = 0;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (id)residentCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  fromCopy = from;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_dataSource)) != 0)
  {
    v9 = WeakRetained;
    v10 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA88] homeUUID:self->_homeUUID accessoryUUID:accessoryCopy];
    eventStoreReadHandle = [v9 eventStoreReadHandle];
    v12 = [eventStoreReadHandle lastEventForTopic:v10];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:fromCopy];
      v14 = objc_alloc(MEMORY[0x277CD1D60]);
      encodedData = [v12 encodedData];
      v16 = [v14 initWithProtoData:encodedData];

      if (v16 && ([v16 isEqual:v13] & 1) == 0)
      {
        pbCapabilities = [v16 pbCapabilities];
        data = [pbCapabilities data];
      }

      else
      {
        data = 0;
      }
    }

    else
    {
      data = fromCopy;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot create resident capabilities due to nil datasource", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v9 = 0;
    data = 0;
  }

  return data;
}

- (id)accessoryCapabilitiesForAccessory:(id)accessory ifDifferentFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  fromCopy = from;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_dataSource)) != 0)
  {
    v9 = WeakRetained;
    v10 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA50] homeUUID:self->_homeUUID accessoryUUID:accessoryCopy];
    eventStoreReadHandle = [v9 eventStoreReadHandle];
    v12 = [eventStoreReadHandle lastEventForTopic:v10];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CD1678]) initWithProtoData:fromCopy];
      v14 = objc_alloc(MEMORY[0x277CD1678]);
      encodedData = [v12 encodedData];
      v16 = [v14 initWithProtoData:encodedData];

      if (v16 && ([v16 isEqual:v13] & 1) == 0)
      {
        pbCapabilities = [v16 pbCapabilities];
        data = [pbCapabilities data];
      }

      else
      {
        data = 0;
      }
    }

    else
    {
      data = fromCopy;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot create accessory capabilities due to nil datasource", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v9 = 0;
    data = 0;
  }

  return data;
}

- (void)didRemoveAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDPrimaryResidentCapabilitiesAggregator_didRemoveAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(queue, v7);
}

void __63__HMDPrimaryResidentCapabilitiesAggregator_didRemoveAccessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 containsObject:*(a1 + 40)])
  {
    v4 = *(a1 + 32);
    v5 = v4 ? *(v4 + 56) : 0;
    [v5 removeObject:*(a1 + 40)];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 40);

      dispatch_assert_queue_V2(v7);
    }
  }
}

- (void)didAddAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDPrimaryResidentCapabilitiesAggregator_didAddAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(queue, v7);
}

void __60__HMDPrimaryResidentCapabilitiesAggregator_didAddAccessory___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  if (([v3 containsObject:*(a1 + 40)] & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 56);
    }

    else
    {
      v5 = 0;
    }

    [v5 addObject:*(a1 + 40)];
    v6 = *(a1 + 32);
    v8[0] = *(a1 + 40);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(HMDPrimaryResidentCapabilitiesAggregator *)v6 _handleAddedAccessories:v7];
  }
}

- (void)startIfPrimaryResident
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDPrimaryResidentCapabilitiesAggregator_startIfPrimaryResident__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __66__HMDPrimaryResidentCapabilitiesAggregator_startIfPrimaryResident__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    if (WeakRetained)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v8 = [WeakRetained isCurrentDevicePrimaryResident];
        v9 = @"NO";
        if (v8)
        {
          v9 = @"YES";
        }

        v19 = 138543618;
        v20 = v7;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting capabilities aggregator, primary resident: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 48);
      }

      else
      {
        v11 = 0;
      }

      [v11 removeObserver:?];
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 48);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = [WeakRetained primaryResidentChangeMonitor];
      [v14 addObserver:v12 selector:sel_handlePrimaryResidentIsCurrentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:v15];

      v16 = [WeakRetained isCurrentDevicePrimaryResident];
      v17 = *(a1 + 32);
      if (v17)
      {
        *(v17 + 8) = v16;
        v18 = *(a1 + 32);
        if (v18)
        {
          if (*(v18 + 8) == 1)
          {
            [(HMDPrimaryResidentCapabilitiesAggregator *)v18 _handleDidBecomePrimaryResident];
          }
        }
      }
    }
  }

  else
  {
    WeakRetained = 0;
  }
}

- (HMDPrimaryResidentCapabilitiesAggregator)initWithDataSource:(id)source delegate:(id)delegate queue:(id)queue notificationCenter:(id)center homeUUID:(id)d accessories:(id)accessories
{
  sourceCopy = source;
  delegateCopy = delegate;
  queueCopy = queue;
  centerCopy = center;
  dCopy = d;
  accessoriesCopy = accessories;
  v25.receiver = self;
  v25.super_class = HMDPrimaryResidentCapabilitiesAggregator;
  v19 = [(HMDPrimaryResidentCapabilitiesAggregator *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    objc_storeWeak(&v20->_dataSource, sourceCopy);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_homeUUID, d);
    objc_storeStrong(&v20->_notificationCenter, center);
    v21 = [MEMORY[0x277CBEB58] setWithArray:accessoriesCopy];
    accessories = v20->_accessories;
    v20->_accessories = v21;
  }

  return v20;
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_homeUUID;
  }

  return [(HMDPrimaryResidentCapabilitiesAggregator *)self UUIDString];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_46608 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_46608, &__block_literal_global_46609);
  }

  v3 = logCategory__hmf_once_v1_46610;

  return v3;
}

uint64_t __55__HMDPrimaryResidentCapabilitiesAggregator_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_46610;
  logCategory__hmf_once_v1_46610 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end