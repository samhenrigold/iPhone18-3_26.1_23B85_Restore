@interface SHTimeAndPlaceController
- (void)affinityGroupsFromData:(id)data atLocation:(id)location onDate:(id)date configuration:(id)configuration completionHandler:(id)handler;
@end

@implementation SHTimeAndPlaceController

- (void)affinityGroupsFromData:(id)data atLocation:(id)location onDate:(id)date configuration:(id)configuration completionHandler:(id)handler
{
  locationCopy = location;
  configurationCopy = configuration;
  handlerCopy = handler;
  v22 = 0;
  v13 = [SHTimeAndPlaceServerResponseParser regionAffinityGroupsFromServerData:data error:&v22];
  v14 = v22;
  if (v13)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__SHTimeAndPlaceController_affinityGroupsFromData_atLocation_onDate_configuration_completionHandler___block_invoke;
    v17[3] = &unk_279BBEF10;
    v21 = handlerCopy;
    v18 = locationCopy;
    v19 = v13;
    v20 = array;
    v16 = array;
    [configurationCopy geoHashLengthsWithCompletionHandler:v17];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __101__SHTimeAndPlaceController_affinityGroupsFromData_atLocation_onDate_configuration_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v6 = [*(a1 + 32) sh_geohashOfLength:a3];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 regionsForGeohash:{v6, v19}];
          v14 = [v13 count];

          if (v14)
          {
            v15 = *(a1 + 48);
            v16 = [v12 affinityGroup];
            [v15 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v17 = *(a1 + 56);
    v18 = [*(a1 + 48) copy];
    (*(v17 + 16))(v17, v18, 0);
  }
}

@end