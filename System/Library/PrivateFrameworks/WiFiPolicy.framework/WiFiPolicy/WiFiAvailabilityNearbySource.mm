@interface WiFiAvailabilityNearbySource
- (id)relevantNetworks;
@end

@implementation WiFiAvailabilityNearbySource

- (id)relevantNetworks
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  recommendedNetworks = [(WiFiAvailabilityNearbySource *)self recommendedNetworks];
  v5 = [recommendedNetworks countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(recommendedNetworks);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_alloc_init(WiFiAvailabilityNearbyCandidateNetwork);
        networkName = [v9 networkName];
        [(WiFiAvailabilityNearbyCandidateNetwork *)v10 setSSID:networkName];

        receivedFromDeviceName = [v9 receivedFromDeviceName];
        [(WiFiAvailabilityNearbyCandidateNetwork *)v10 setReceivedFromDeviceName:receivedFromDeviceName];

        [v3 addObject:v10];
      }

      v6 = [recommendedNetworks countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

@end