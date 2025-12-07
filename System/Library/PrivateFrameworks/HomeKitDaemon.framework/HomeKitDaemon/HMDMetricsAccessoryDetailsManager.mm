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
  v81 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  dataSource = [(HMDMetricsAccessoryDetailsManager *)self dataSource];
  array = [MEMORY[0x277CBEB18] array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v52 = dataSource;
  obj = [dataSource homeDataSources];
  v55 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v55)
  {
    v54 = *v71;
    v61 = *MEMORY[0x277CCE920];
    v60 = *MEMORY[0x277CCE930];
    v59 = *MEMORY[0x277CCE938];
    v58 = *MEMORY[0x277CCE900];
    v62 = array;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v71 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v70 + 1) + 8 * i);
        if (dCopy)
        {
          uuid = [*(*(&v70 + 1) + 8 * i) uuid];
          v10 = [uuid isEqual:dCopy];

          if (!v10)
          {
            continue;
          }
        }

        v56 = i;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        accessories = [v8 accessories];
        v65 = [accessories countByEnumeratingWithState:&v66 objects:v79 count:16];
        if (!v65)
        {
          goto LABEL_50;
        }

        v64 = *v67;
        while (1)
        {
          v11 = 0;
          do
          {
            if (*v67 != v64)
            {
              objc_enumerationMutation(accessories);
            }

            v12 = *(*(&v66 + 1) + 8 * v11);
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
              v31 = v12;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;
              }

              else
              {
                v32 = 0;
              }

              hostAccessory = v32;

              if (hostAccessory)
              {
                v33 = [HMDAccessoryCategoryLogEvent alloc];
                category = [v31 category];
                categoryType = [category categoryType];
                v34 = [(HMDAccessoryCategoryLogEvent *)v33 initWithAccessoryDetailsType:2 accessoryCategoryIdentifier:categoryType homeUUID:dCopy];
                [array addObject:v34];
              }

              else
              {
                v35 = v31;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v36 = v35;
                }

                else
                {
                  v36 = 0;
                }

                category = v36;

                if (category)
                {
                  category2 = [v35 category];
                  categoryType2 = [category2 categoryType];
                  categoryType = [categoryType2 stringByAppendingString:@"_AirPlay"];

                  v39 = [[HMDAccessoryCategoryLogEvent alloc] initWithAccessoryDetailsType:1 accessoryCategoryIdentifier:categoryType homeUUID:dCopy];
                  [array addObject:v39];
                }

                else
                {
                  v40 = v35;
                  if ([v40 conformsToProtocol:&unk_283F010C8])
                  {
                    v41 = v40;
                  }

                  else
                  {
                    v41 = 0;
                  }

                  categoryType = v41;

                  if (categoryType)
                  {
                    v42 = [HMDAccessoryCategoryLogEvent alloc];
                    category3 = [v40 category];
                    categoryType3 = [category3 categoryType];
                    v45 = [(HMDAccessoryCategoryLogEvent *)v42 initWithAccessoryDetailsType:3 accessoryCategoryIdentifier:categoryType3 homeUUID:dCopy];
                    [array addObject:v45];
                  }

                  else
                  {
                    v46 = objc_autoreleasePoolPush();
                    v47 = selfCopy;
                    v48 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      v49 = HMFGetLogIdentifier();
                      *buf = 138543618;
                      v75 = v49;
                      v76 = 2112;
                      v77 = v40;
                      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Accessory category not found for: %@", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v46);
                    categoryType = 0;
                  }

                  category = 0;
                }

                hostAccessory = 0;
              }

              goto LABEL_45;
            }

            hostAccessory = [v14 hostAccessory];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !hostAccessory)
            {
              v16 = dCopy;
              category = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v14];
              v78[0] = v61;
              v78[1] = v60;
              v78[2] = v59;
              categoryType = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
              if ([v14 hasTelevisionService] & 1) != 0 || (objc_msgSend(v14, "category"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "categoryType"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(categoryType, "containsObject:", v20), v20, v19, (v21) || (objc_msgSend(category, "isEqual:", @"00000228-0000-1000-8000-0026BB765291") & 1) != 0 || (objc_msgSend(v14, "category"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "categoryType"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v58), v23, v22, v24))
              {
                v25 = 1;
              }

              else
              {
                v25 = 3;
              }

              v26 = [HMDAccessoryCategoryLogEvent alloc];
              category4 = [v12 category];
              categoryType4 = [category4 categoryType];
              v29 = v25;
              dCopy = v16;
              v30 = [(HMDAccessoryCategoryLogEvent *)v26 initWithAccessoryDetailsType:v29 accessoryCategoryIdentifier:categoryType4 homeUUID:v16];
              array = v62;
              [v62 addObject:v30];

LABEL_45:
            }

            ++v11;
          }

          while (v65 != v11);
          v50 = [accessories countByEnumeratingWithState:&v66 objects:v79 count:16];
          v65 = v50;
          if (!v50)
          {
LABEL_50:

            i = v56;
            break;
          }
        }
      }

      v55 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v55);
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Returning NULL (for onboarded configuration) to household metrics request for home with UUID: %@", &v16, 0x16u);
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