@interface HMDMetricsAccessoryDetailsManager
- (HMDHouseholdMetricsDataSource)dataSource;
- (HMDMetricsAccessoryDetailsManager)initWithDataSource:(id)source;
- (id)accessoryCategoryLogEventsForHomeWithUUID:(id)d;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
@end

@implementation HMDMetricsAccessoryDetailsManager

- (HMDHouseholdMetricsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)accessoryCategoryLogEventsForHomeWithUUID:(id)d
{
  v75 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  dataSource = [(HMDMetricsAccessoryDetailsManager *)self dataSource];
  array = [MEMORY[0x277CBEB18] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v46 = dataSource;
  obj = [dataSource homeDataSources];
  v49 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v49)
  {
    v48 = *v65;
    v55 = *MEMORY[0x277CCE920];
    v54 = *MEMORY[0x277CCE930];
    v53 = *MEMORY[0x277CCE938];
    v51 = *MEMORY[0x277CCE900];
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * i);
        if (dCopy)
        {
          uuid = [*(*(&v64 + 1) + 8 * i) uuid];
          v8 = [uuid isEqual:dCopy];

          if (!v8)
          {
            continue;
          }
        }

        v50 = i;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        accessories = [v6 accessories];
        v9 = [accessories countByEnumeratingWithState:&v60 objects:v73 count:16];
        if (!v9)
        {
          goto LABEL_43;
        }

        v10 = v9;
        v59 = *v61;
        while (1)
        {
          v11 = 0;
          do
          {
            if (*v61 != v59)
            {
              objc_enumerationMutation(accessories);
            }

            v12 = *(*(&v60 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }

            v14 = v13;

            if (!v14)
            {
              v29 = v12;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v29;
              }

              else
              {
                v30 = 0;
              }

              hostAccessory = v30;

              if (hostAccessory)
              {
                v31 = [HMDAccessoryCategoryLogEvent alloc];
                category = [v29 category];
                categoryType = [category categoryType];
                v33 = [(HMDAccessoryCategoryLogEvent *)v31 initWithAccessoryDetailsType:2 accessoryCategoryIdentifier:categoryType homeUUID:dCopy];
                [array addObject:v33];
              }

              else
              {
                v34 = v29;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 0;
                }

                category = v35;

                if (category)
                {
                  category2 = [v34 category];
                  categoryType2 = [category2 categoryType];
                  v38 = [categoryType2 stringByAppendingString:@"_AirPlay"];

                  v39 = [[HMDAccessoryCategoryLogEvent alloc] initWithAccessoryDetailsType:1 accessoryCategoryIdentifier:v38 homeUUID:dCopy];
                  [array addObject:v39];

                  hostAccessory = 0;
                }

                else
                {
                  v40 = objc_autoreleasePoolPush();
                  v41 = selfCopy;
                  v42 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    v43 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v69 = v43;
                    v70 = 2112;
                    v71 = v34;
                    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Accessory category not found for: %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v40);
                  category = 0;
                  hostAccessory = 0;
                }
              }

              goto LABEL_38;
            }

            hostAccessory = [v14 hostAccessory];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !hostAccessory)
            {
              category = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v14];
              v72[0] = v55;
              v72[1] = v54;
              v72[2] = v53;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:3];
              if ([v14 hasTelevisionService] & 1) != 0 || (objc_msgSend(v14, "category"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "categoryType"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "containsObject:", v19), v19, v18, (v20) || (objc_msgSend(category, "isEqual:", @"00000228-0000-1000-8000-0026BB765291") & 1) != 0 || (objc_msgSend(v14, "category"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "categoryType"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v51), v22, v21, v23))
              {
                v24 = 1;
              }

              else
              {
                v24 = 3;
              }

              v25 = [HMDAccessoryCategoryLogEvent alloc];
              category3 = [v12 category];
              categoryType3 = [category3 categoryType];
              v28 = [(HMDAccessoryCategoryLogEvent *)v25 initWithAccessoryDetailsType:v24 accessoryCategoryIdentifier:categoryType3 homeUUID:dCopy];
              [array addObject:v28];

LABEL_38:
            }

            ++v11;
          }

          while (v10 != v11);
          v44 = [accessories countByEnumeratingWithState:&v60 objects:v73 count:16];
          v10 = v44;
          if (!v44)
          {
LABEL_43:

            i = v50;
            break;
          }
        }
      }

      v49 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v49);
  }

  return array;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  v8 = [(HMDMetricsAccessoryDetailsManager *)self accessoryCategoryLogEventsForHomeWithUUID:dCopy];
  if ([v8 count])
  {
    v9 = +[HMDAccessoryCategoryLogEvent denominatorSpecifyingEvent];
    [v8 addObject:v9];

    v10 = objc_msgSend_copy(v8);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Returning NULL (for onboarded configuration) to household metrics request for home with UUID: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

- (HMDMetricsAccessoryDetailsManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = HMDMetricsAccessoryDetailsManager;
  v5 = [(HMDMetricsAccessoryDetailsManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

@end