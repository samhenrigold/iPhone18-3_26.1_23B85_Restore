@interface DKTelephonyProvider
- (id)cellularPlans;
@end

@implementation DKTelephonyProvider

- (id)cellularPlans
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  mEMORY[0x277D4D8C0] = [MEMORY[0x277D4D8C0] sharedInstance];
  planItems = [mEMORY[0x277D4D8C0] planItems];

  v5 = [planItems countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    v8 = 0x278F7D000uLL;
    v25 = v2;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(planItems);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = _DKLogSystem(v5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          carrierName = [v10 carrierName];
          phoneNumber = [v10 phoneNumber];
          v18 = planItems;
          v19 = v8;
          type = [v10 type];
          transferredStatus = [v10 transferredStatus];
          *buf = 138413058;
          v22 = @"YES";
          if (!transferredStatus)
          {
            v22 = @"NO";
          }

          v31 = carrierName;
          v32 = 2112;
          v33 = phoneNumber;
          v34 = 2048;
          v35 = type;
          v8 = v19;
          planItems = v18;
          v36 = 2112;
          v37 = v22;
          _os_log_debug_impl(&dword_248D68000, v11, OS_LOG_TYPE_DEBUG, "cellularPlans - planItem carrierName:%@  phoneNumber:%@ type:%li IsTransfered:%@", buf, 0x2Au);

          v2 = v25;
        }

        if ([v10 type] == 2 || (v5 = objc_msgSend(v10, "type"), v5 == 3))
        {
          v12 = objc_alloc(*(v8 + 1352));
          carrierName2 = [v10 carrierName];
          phoneNumber2 = [v10 phoneNumber];
          v15 = [v12 initWithCarrierName:carrierName2 phoneNumber:phoneNumber2 isTransferred:{objc_msgSend(v10, "transferredStatus") != 0}];

          [v2 addObject:v15];
        }

        ++v9;
      }

      while (v6 != v9);
      v5 = [planItems countByEnumeratingWithState:&v26 objects:v38 count:16];
      v6 = v5;
    }

    while (v5);
  }

  v23 = [v2 copy];

  return v23;
}

@end