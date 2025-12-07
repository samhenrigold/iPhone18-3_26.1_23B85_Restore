@interface FHRealtimeFeaturesResponse
- (id)description;
- (id)smartCompoundFeaturesDictionaryForJson;
@end

@implementation FHRealtimeFeaturesResponse

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"timeOfDay: '%lu'; ", self->_timeOfDay];
  [v3 appendFormat:@"transactionDateAtZerothHour: '%lu'; ", self->_transactionDateAtZerothHour];
  [v3 appendFormat:@"isInternationalSpend: '%d'; ", self->_isInternationalSpend];
  [v3 appendFormat:@"isTapToPay: '%d'; ", self->_isTapToPay];
  [v3 appendFormat:@"merchantCategory: '%lu'; ", self->_merchantCategory];
  [v3 appendFormat:@"country: '%@'; ", self->_country];
  [v3 appendFormat:@"merchantDisplayName: '%@'; ", self->_merchantDisplayName];
  [v3 appendFormat:@"mapsMerchantID: '%llu'; ", self->_mapsMerchantID];
  [v3 appendFormat:@"mapsMerchantBrandID: '%llu'; ", self->_mapsMerchantBrandID];
  [v3 appendFormat:@"smartCompoundFeatures: '%@'; ", self->_smartCompoundFeatures];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)smartCompoundFeaturesDictionaryForJson
{
  v52 = *MEMORY[0x277D85DE8];
  v34 = objc_opt_new();
  smartCompoundFeatures = self->_smartCompoundFeatures;
  if (smartCompoundFeatures)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = smartCompoundFeatures;
    v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v47;
      v30 = *v47;
      selfCopy = self;
      do
      {
        v8 = 0;
        v9 = v6;
        v32 = v5;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v46 + 1) + 8 * v8);

          v10 = [(NSDictionary *)self->_smartCompoundFeatures objectForKey:v6];
          if ([v10 count])
          {
            v40 = objc_opt_new();
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v38 = v10;
            v41 = [v38 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v41)
            {
              v35 = v10;
              v36 = v8;
              v37 = v6;
              v11 = 0;
              v39 = *v43;
              do
              {
                v12 = 0;
                v13 = v11;
                do
                {
                  if (*v43 != v39)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v11 = *(*(&v42 + 1) + 8 * v12);

                  eventIdentifiers = [v11 eventIdentifiers];

                  v15 = MEMORY[0x277CBEAC0];
                  featureLabel = [v11 featureLabel];
                  featureRank = [v11 featureRank];
                  v18 = featureRank;
                  if (eventIdentifiers)
                  {
                    eventIdentifiers2 = [v11 eventIdentifiers];
                    v20 = MEMORY[0x277CCABB0];
                    eventStartDate = [v11 eventStartDate];
                    [eventStartDate timeIntervalSinceReferenceDate];
                    v22 = [v20 numberWithDouble:?];
                    v23 = MEMORY[0x277CCABB0];
                    eventEndDate = [v11 eventEndDate];
                    [eventEndDate timeIntervalSinceReferenceDate];
                    v25 = [v23 numberWithDouble:?];
                    v26 = [v15 dictionaryWithObjectsAndKeys:{featureLabel, @"featureLabel", v18, @"featureRank", eventIdentifiers2, @"featureEventIdentifiers", v22, @"featureEventStartDate", v25, @"featureEventEndDate", 0}];
                    [v40 addObject:v26];
                  }

                  else
                  {
                    eventIdentifiers2 = [v15 dictionaryWithObjectsAndKeys:{featureLabel, @"featureLabel", featureRank, @"featureRank", 0}];
                    [v40 addObject:eventIdentifiers2];
                  }

                  ++v12;
                  v13 = v11;
                }

                while (v41 != v12);
                v41 = [v38 countByEnumeratingWithState:&v42 objects:v50 count:16];
              }

              while (v41);

              v7 = v30;
              self = selfCopy;
              v5 = v32;
              v8 = v36;
              v6 = v37;
              v10 = v35;
            }

            v27 = [MEMORY[0x277CBEA60] arrayWithArray:v40];
            [v34 setObject:v27 forKey:v6];
          }

          ++v8;
          v9 = v6;
        }

        while (v8 != v5);
        v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v5);
    }
  }

  v28 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v34];

  return v28;
}

@end