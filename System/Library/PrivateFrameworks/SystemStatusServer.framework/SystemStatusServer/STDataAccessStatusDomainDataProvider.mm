@interface STDataAccessStatusDomainDataProvider
- (STDataAccessStatusDomainData)dataAccessData;
- (STDataAccessStatusDomainDataProvider)init;
- (STLocationStatusDomainData)locationData;
- (STMediaStatusDomainData)mediaData;
- (dispatch_queue_t)_internalQueue_generatedData;
- (id)_dataAccessAttributionsForAttributions:(void *)attributions dataAccessType:(void *)type dataAccessAttributionProvider:;
- (id)setLocationData:(id)data mediaData:(id)mediaData;
- (void)_internalQueue_handleLocationData:(void *)data mediaData:;
- (void)_internalQueue_makeAttributionRecent:(id *)recent;
- (void)_internalQueue_notifyForNewData:(uint64_t)data manualUpdate:;
- (void)dealloc;
- (void)invalidate;
@end

@implementation STDataAccessStatusDomainDataProvider

- (dispatch_queue_t)_internalQueue_generatedData
{
  selfCopy = self;
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    v2 = [selfCopy[8] mutableCopy];
    [v2 addObjectsFromArray:selfCopy[9]];
    [v2 addObjectsFromArray:selfCopy[11]];
    selfCopy = objc_alloc_init(MEMORY[0x277D6BA08]);
    [(dispatch_queue_t *)selfCopy setDataAccessAttributions:v2];
  }

  return selfCopy;
}

- (STDataAccessStatusDomainDataProvider)init
{
  v19.receiver = self;
  v19.super_class = STDataAccessStatusDomainDataProvider;
  v2 = [(STDataAccessStatusDomainDataProvider *)&v19 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = Serial;

    array = [MEMORY[0x277CBEA60] array];
    activeAttributions = v2->_activeAttributions;
    v2->_activeAttributions = array;

    array2 = [MEMORY[0x277CBEB18] array];
    attributionsWaitingForMinimumDisplayTime = v2->_attributionsWaitingForMinimumDisplayTime;
    v2->_attributionsWaitingForMinimumDisplayTime = array2;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeAttributionMinimumDisplayTimers = v2->_activeAttributionMinimumDisplayTimers;
    v2->_activeAttributionMinimumDisplayTimers = dictionary;

    array3 = [MEMORY[0x277CBEB18] array];
    recentAttributions = v2->_recentAttributions;
    v2->_recentAttributions = array3;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    recentAttributionExpirationTimers = v2->_recentAttributionExpirationTimers;
    v2->_recentAttributionExpirationTimers = dictionary2;

    v15 = v2->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__STDataAccessStatusDomainDataProvider_init__block_invoke;
    block[3] = &unk_279D35098;
    v18 = v2;
    dispatch_sync(v15, block);
  }

  return v2;
}

- (void)_internalQueue_handleLocationData:(void *)data mediaData:
{
  v110 = *MEMORY[0x277D85DE8];
  v75 = a2;
  dataCopy = data;
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    if ((self[3] & 1) == 0)
    {
      v5 = v75;
      v6 = dataCopy;
      dispatch_assert_queue_V2(self[5]);
      v74 = v6;
      if (!(v5 | v6))
      {
        objc_setProperty_nonatomic_copy(self, v7, 0, 56);
LABEL_54:

        [(STDataAccessStatusDomainDataProvider *)self _internalQueue_notifyForNewData:1 manualUpdate:?];
        goto LABEL_55;
      }

      v73 = v5;
      val = self;
      cameraAttributions = [v6 cameraAttributions];
      v72 = [(STDataAccessStatusDomainDataProvider *)self _dataAccessAttributionsForAttributions:cameraAttributions dataAccessType:1 dataAccessAttributionProvider:&__block_literal_global_16];

      microphoneAttributions = [v6 microphoneAttributions];
      v71 = [(STDataAccessStatusDomainDataProvider *)self _dataAccessAttributionsForAttributions:microphoneAttributions dataAccessType:0 dataAccessAttributionProvider:&__block_literal_global_4];

      mutedMicrophoneRecordingAttributions = [v6 mutedMicrophoneRecordingAttributions];
      v70 = [(STDataAccessStatusDomainDataProvider *)self _dataAccessAttributionsForAttributions:mutedMicrophoneRecordingAttributions dataAccessType:3 dataAccessAttributionProvider:&__block_literal_global_14];

      v11 = v73;
      activeDisplayModes = [v11 activeDisplayModes];
      attributions = [v11 attributions];

      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke;
      v107[3] = &__block_descriptor_40_e51_B16__0__STLocationStatusDomainLocationAttribution_8l;
      v107[4] = activeDisplayModes;
      v14 = [attributions bs_filter:v107];

      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke_2;
      v108[3] = &unk_279D35108;
      v109 = (activeDisplayModes & 2) != 0;
      v108[4] = val;
      v69 = [v14 bs_map:v108];

      v68 = [(STDataAccessStatusDomainDataProvider *)val _dataAccessAttributionsForAttributions:v69 dataAccessType:2 dataAccessAttributionProvider:&__block_literal_global_18];
      v15 = [v72 mutableCopy];
      [v15 addObjectsFromArray:v71];
      [v15 addObjectsFromArray:v70];
      [v15 addObjectsFromArray:v68];
      v16 = v15;
      dispatch_assert_queue_V2(val[5]);
      v17 = val[8];
      objc_setProperty_nonatomic_copy(val, v18, v16, 64);
      v19 = [v16 mutableCopy];
      [v19 st_subtractArray:v17];
      v65 = v17;
      v66 = [v17 mutableCopy];
      v67 = v16;
      [v66 st_subtractArray:v16];
      v83 = val[9];
      v84 = val[10];
      v82 = val[11];
      v20 = val[12];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = v19;
      v79 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
      if (v79)
      {
        v78 = *v98;
        do
        {
          v21 = 0;
          do
          {
            if (*v98 != v78)
            {
              v22 = v21;
              objc_enumerationMutation(obj);
              v21 = v22;
            }

            v80 = v21;
            v23 = *(*(&v97 + 1) + 8 * v21);
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            allKeys = [v84 allKeys];
            v25 = [allKeys countByEnumeratingWithState:&v93 objects:v107 count:16];
            if (v25)
            {
              v26 = *v94;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v94 != v26)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v28 = *(*(&v93 + 1) + 8 * i);
                  attributedEntity = [v28 attributedEntity];
                  attributedEntity2 = [v23 attributedEntity];
                  if ([attributedEntity isEqual:attributedEntity2])
                  {
                    dataAccessType = [v28 dataAccessType];
                    LODWORD(dataAccessType) = dataAccessType == [v23 dataAccessType];

                    if (dataAccessType)
                    {
                      v32 = [v84 objectForKey:v28];
                      [v32 invalidate];

                      [v84 removeObjectForKey:v28];
                      [v83 removeObject:v28];
                    }
                  }

                  else
                  {
                  }
                }

                v25 = [allKeys countByEnumeratingWithState:&v93 objects:v107 count:16];
              }

              while (v25);
            }

            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            allKeys2 = [v20 allKeys];
            v34 = [allKeys2 countByEnumeratingWithState:&v89 objects:v106 count:16];
            if (v34)
            {
              v35 = *v90;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v90 != v35)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v37 = *(*(&v89 + 1) + 8 * j);
                  attributedEntity3 = [v37 attributedEntity];
                  attributedEntity4 = [v23 attributedEntity];
                  if ([attributedEntity3 isEqual:attributedEntity4])
                  {
                    dataAccessType2 = [v37 dataAccessType];
                    LODWORD(dataAccessType2) = dataAccessType2 == [v23 dataAccessType];

                    if (dataAccessType2)
                    {
                      v41 = [v20 objectForKey:v37];
                      [v41 invalidate];

                      [v20 removeObjectForKey:v37];
                      [v82 removeObject:v37];
                    }
                  }

                  else
                  {
                  }
                }

                v34 = [allKeys2 countByEnumeratingWithState:&v89 objects:v106 count:16];
              }

              while (v34);
            }

            v21 = v80 + 1;
          }

          while (v80 + 1 != v79);
          v79 = [obj countByEnumeratingWithState:&v97 objects:v108 count:16];
        }

        while (v79);
      }

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v42 = v66;
      v43 = 0;
      v44 = [v42 countByEnumeratingWithState:&v85 objects:v105 count:16];
      if (!v44)
      {
LABEL_51:

        if (([obj count] != 0) | v43 & 1)
        {
          _internalQueue_generatedData = [(STDataAccessStatusDomainDataProvider *)val _internalQueue_generatedData];
          objc_setProperty_nonatomic_copy(val, v64, _internalQueue_generatedData, 56);
        }

        self = val;
        v5 = v73;
        goto LABEL_54;
      }

      v45 = *v86;
      v46 = *MEMORY[0x277D6BD30];
LABEL_36:
      v47 = 0;
      while (1)
      {
        if (*v86 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v48 = *(*(&v85 + 1) + 8 * v47);
        [v48 accessDuration];
        v50 = v49;
        dataAccessType3 = [v48 dataAccessType];
        if (dataAccessType3 == 3)
        {
          v56 = 0.0 - v50;
          if (!BSFloatGreaterThanFloat())
          {
            goto LABEL_48;
          }
        }

        else
        {
          v52 = v46;
          if (!dataAccessType3)
          {
            microphoneRecordingAttribution = [v48 microphoneRecordingAttribution];
            [microphoneRecordingAttribution maximumHistoryAccessed];
            v55 = v54;

            if (v46 >= v55)
            {
              v52 = v46;
            }

            else
            {
              v52 = v55;
            }
          }

          v56 = v52 - v50;
          if ((BSFloatGreaterThanFloat() & 1) == 0)
          {
            [(STDataAccessStatusDomainDataProvider *)val _internalQueue_makeAttributionRecent:v48];
LABEL_48:
            v43 = 1;
            goto LABEL_49;
          }
        }

        v57 = v48;
        objc_initWeak(&location, val);
        v58 = val[9];
        [v58 addObject:v57];

        v59 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"STDataAccessStatusDomain-MinimumDisplayTime"];
        v60 = val[10];
        [v60 setObject:v59 forKey:v57];

        v61 = val[5];
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __104__STDataAccessStatusDomainDataProvider__internalQueue_beginWaitingForMinimumDisplayTime_forAttribution___block_invoke;
        v101[3] = &unk_279D35150;
        objc_copyWeak(&v103, &location);
        v62 = v57;
        v102 = v62;
        [v59 scheduleWithFireInterval:v61 leewayInterval:v101 queue:v56 handler:0.5];

        objc_destroyWeak(&v103);
        objc_destroyWeak(&location);

LABEL_49:
        if (v44 == ++v47)
        {
          v44 = [v42 countByEnumeratingWithState:&v85 objects:v105 count:16];
          if (!v44)
          {
            goto LABEL_51;
          }

          goto LABEL_36;
        }
      }
    }
  }

LABEL_55:
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = STDataAccessStatusDomainDataProvider;
  [(STDataAccessStatusDomainDataProvider *)&v2 dealloc];
}

- (STDataAccessStatusDomainData)dataAccessData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__STDataAccessStatusDomainDataProvider_dataAccessData__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__STDataAccessStatusDomainDataProvider_dataAccessData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (STLocationStatusDomainData)locationData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__STDataAccessStatusDomainDataProvider_locationData__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __52__STDataAccessStatusDomainDataProvider_locationData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (STMediaStatusDomainData)mediaData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__STDataAccessStatusDomainDataProvider_mediaData__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__STDataAccessStatusDomainDataProvider_mediaData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)setLocationData:(id)data mediaData:(id)mediaData
{
  dataCopy = data;
  mediaDataCopy = mediaData;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__STDataAccessStatusDomainDataProvider_setLocationData_mediaData___block_invoke;
  v13[3] = &unk_279D350C0;
  v14 = dataCopy;
  selfCopy = self;
  v16 = mediaDataCopy;
  v17 = &v18;
  v9 = mediaDataCopy;
  v10 = dataCopy;
  dispatch_sync(internalQueue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

uint64_t __66__STDataAccessStatusDomainDataProvider_setLocationData_mediaData___block_invoke(uint64_t a1)
{
  v2 = BSEqualObjects();
  if ((v2 & 1) == 0)
  {
    v3 = [*(a1 + 32) copy];
    v4 = *(a1 + 40);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [*(a1 + 48) copy];
    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
LABEL_7:
    [(STDataAccessStatusDomainDataProvider *)*(a1 + 40) _internalQueue_handleLocationData:*(*(a1 + 40) + 16) mediaData:?];
  }

  v9 = [*(*(a1 + 40) + 56) copy];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8](v9, v11);
}

- (void)invalidate
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__STDataAccessStatusDomainDataProvider_invalidate__block_invoke;
  block[3] = &unk_279D35098;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void *__50__STDataAccessStatusDomainDataProvider_invalidate__block_invoke(void *result)
{
  v1 = result;
  v29 = *MEMORY[0x277D85DE8];
  v2 = result[4];
  if (v2)
  {
    if (*(v2 + 24))
    {
      return result;
    }

    *(v2 + 24) = 1;
    v3 = result[4];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    if (v3)
    {
      v4 = *(v3 + 80);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
  }

  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v23 + 1) + 8 * i) invalidate];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v1[4];
  if (v10)
  {
    v11 = *(v10 + 96);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 allValues];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v19 + 1) + 8 * j) invalidate];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = v1[4];
  if (v17)
  {
    v18 = *(v17 + 48);
  }

  else
  {
    v18 = 0;
  }

  return [v18 invalidate];
}

- (void)_internalQueue_notifyForNewData:(uint64_t)data manualUpdate:
{
  v7 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    dataChangedHandler = [(dispatch_queue_t *)self dataChangedHandler];
    v6 = dataChangedHandler;
    if (dataChangedHandler)
    {
      (*(dataChangedHandler + 16))(dataChangedHandler, v7, data);
    }
  }
}

BOOL __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 locationState] == 1)
  {
    v4 = *(a1 + 32);
    v5 = ([v3 eligibleDisplayModes] & v4) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __85__STDataAccessStatusDomainDataProvider__filteredLocationAttributionsForLocationData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 eligibleDisplayModes] & 1) != 0 || (*(a1 + 40) & 1) != 0 || (objc_msgSend(v3, "activityAttribution"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "attributedEntity"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isSystemService"), v5, v4, !v6))
  {
    v20 = v3;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = v3;
    v9 = v8;
    if (v7)
    {
      v10 = [v8 activityAttribution];
      v11 = [v10 attributedEntity];
      if ([v11 isSystemService])
      {
        v12 = objc_alloc(MEMORY[0x277D6B8F0]);
        v13 = [v11 executableIdentity];
        v14 = [v11 website];
        v15 = [v11 localizedExecutableDisplayName];
        v16 = [v11 localizedExecutableDisplayName];
        v17 = [v12 initWithExecutableIdentity:v13 website:v14 systemService:0 localizedDisplayName:v15 localizedExecutableDisplayName:v16];

        v18 = [v10 activeEntity];
        if ([v18 isEqual:v11])
        {
          v19 = 0;
        }

        else
        {
          v19 = v18;
        }

        v22 = [objc_alloc(MEMORY[0x277D6B8E8]) initWithAttributedEntity:v17 activeEntity:v19];
        v20 = [objc_alloc(MEMORY[0x277D6B9A8]) initWithLocationState:objc_msgSend(v9 activityAttribution:"locationState") eligibleDisplayModes:{v22, objc_msgSend(v9, "eligibleDisplayModes")}];
      }

      else
      {
        v20 = v9;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

id __98__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForMicrophoneRecordingAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithMicrophoneRecordingAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

- (id)_dataAccessAttributionsForAttributions:(void *)attributions dataAccessType:(void *)type dataAccessAttributionProvider:
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  typeCopy = type;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = [*(self + 64) mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v30)
  {
    v28 = *v36;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = v29;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
LABEL_8:
          v14 = 0;
LABEL_9:
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * v14);
          if ([v15 dataAccessType] != attributions)
          {
            goto LABEL_23;
          }

          v16 = v15;
          dataAccessType = [v16 dataAccessType];
          if (dataAccessType > 1)
          {
            if (dataAccessType == 2)
            {
              locationAttribution = [v16 locationAttribution];
            }

            else
            {
              if (dataAccessType != 3)
              {
                goto LABEL_22;
              }

              locationAttribution = [v16 mutedMicrophoneRecordingActivityAttribution];
            }
          }

          else
          {
            if (dataAccessType)
            {
              if (dataAccessType == 1)
              {
                locationAttribution = [v16 cameraCaptureAttribution];
                goto LABEL_21;
              }

LABEL_22:

              v19 = [v15 isEqual:v9];
              if (v19)
              {
                v20 = v16;

                if (!v20)
                {
                  goto LABEL_28;
                }

                v21 = v20;
                [v10 st_removeFirstOccurrenceOfObject:v21];
                v22 = v21;
LABEL_30:
                [v27 addObject:v21];

                continue;
              }

LABEL_23:
              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
                if (v12)
                {
                  goto LABEL_8;
                }

                goto LABEL_25;
              }

              goto LABEL_9;
            }

            locationAttribution = [v16 microphoneRecordingAttribution];
          }

LABEL_21:
          v15 = locationAttribution;
          goto LABEL_22;
        }

LABEL_25:

LABEL_28:
        v23 = typeCopy[2](typeCopy, v9);
        if (v23)
        {
          v21 = v23;
          v22 = 0;
          goto LABEL_30;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v30);
  }

  return v27;
}

id __111__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForMutedMicrophoneRecordingActivityAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithMutedMicrophoneRecordingActivityAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

id __92__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForCameraCaptureAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithCameraCaptureAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

id __87__STDataAccessStatusDomainDataProvider__dataAccessAttributionsForLocationAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6B950];
  v3 = a2;
  v4 = [[v2 alloc] initWithLocationAttribution:v3 recent:0 startTimestamp:MEMORY[0x26D6A2820]() endTimestamp:-1.0];

  return v4;
}

- (void)_internalQueue_makeAttributionRecent:(id *)recent
{
  v3 = a2;
  if (recent)
  {
    objc_initWeak(&location, recent);
    v4 = v3;
    MEMORY[0x26D6A2820]();
    dataAccessType = [v4 dataAccessType];
    if (dataAccessType == 2)
    {
      v10 = objc_alloc(MEMORY[0x277D6B950]);
      locationAttribution = [v4 locationAttribution];
      [v4 accessStartTimestamp];
      v8 = [v10 initWithLocationAttribution:locationAttribution recent:1 startTimestamp:? endTimestamp:?];
    }

    else if (dataAccessType == 1)
    {
      v9 = objc_alloc(MEMORY[0x277D6B950]);
      locationAttribution = [v4 cameraCaptureAttribution];
      [v4 accessStartTimestamp];
      v8 = [v9 initWithCameraCaptureAttribution:locationAttribution recent:1 startTimestamp:? endTimestamp:?];
    }

    else
    {
      if (dataAccessType)
      {
        v11 = 0;
        goto LABEL_10;
      }

      v6 = objc_alloc(MEMORY[0x277D6B950]);
      locationAttribution = [v4 audioRecordingActivityAttribution];
      [v4 accessStartTimestamp];
      v8 = [v6 initWithAudioRecordingActivityAttribution:locationAttribution recent:1 startTimestamp:? endTimestamp:?];
    }

    v11 = v8;

LABEL_10:
    v12 = recent[11];
    [v12 addObject:v11];

    v13 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"STDataAccessStatusDomain-RecentAttributionExpiration"];
    v14 = recent[12];
    [v14 setObject:v13 forKey:v11];

    v15 = recent[5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__STDataAccessStatusDomainDataProvider__internalQueue_makeAttributionRecent___block_invoke;
    v17[3] = &unk_279D35150;
    objc_copyWeak(&v19, &location);
    v16 = v11;
    v18 = v16;
    [v13 scheduleWithFireInterval:v15 leewayInterval:v17 queue:15.0 handler:0.5];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __104__STDataAccessStatusDomainDataProvider__internalQueue_beginWaitingForMinimumDisplayTime_forAttribution___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  self = objc_loadWeakRetained((a1 + 40));
  [v3 invalidate];

  v4 = self;
  if (self)
  {
    v4 = *(self + 10);
  }

  [v4 removeObjectForKey:*(a1 + 32)];
  v5 = self;
  if (self)
  {
    v5 = *(self + 9);
  }

  [v5 removeObject:*(a1 + 32)];
  [(STDataAccessStatusDomainDataProvider *)self _internalQueue_makeAttributionRecent:?];
  v7 = [(STDataAccessStatusDomainDataProvider *)self _internalQueue_generatedData];
  v8 = self;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v6, v7, 56);
    v8 = self;
  }

  [(STDataAccessStatusDomainDataProvider *)v8 _internalQueue_notifyForNewData:v7 manualUpdate:0];
}

void __77__STDataAccessStatusDomainDataProvider__internalQueue_makeAttributionRecent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  self = objc_loadWeakRetained((a1 + 40));
  [v3 invalidate];

  v4 = self;
  if (self)
  {
    v4 = *(self + 12);
  }

  [v4 removeObjectForKey:*(a1 + 32)];
  v5 = self;
  if (self)
  {
    v5 = *(self + 11);
  }

  [v5 removeObject:*(a1 + 32)];
  v7 = [(STDataAccessStatusDomainDataProvider *)self _internalQueue_generatedData];
  v8 = self;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v6, v7, 56);
    v8 = self;
  }

  [(STDataAccessStatusDomainDataProvider *)v8 _internalQueue_notifyForNewData:v7 manualUpdate:0];
}

@end