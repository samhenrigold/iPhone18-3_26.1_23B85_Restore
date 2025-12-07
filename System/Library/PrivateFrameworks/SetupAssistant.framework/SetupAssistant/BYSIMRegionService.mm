@interface BYSIMRegionService
- (BYSIMRegionService)init;
- (id)cellularNetworkInformation;
- (id)isoCodeForMCC:(int64_t)c;
- (id)subregionISOCodesForMCC:(int64_t)c MNC:(int64_t)nC;
- (void)cellularNetworkInformation;
- (void)logTelephonyError:(id)error;
@end

@implementation BYSIMRegionService

- (BYSIMRegionService)init
{
  v5.receiver = self;
  v5.super_class = BYSIMRegionService;
  v2 = [(BYSIMRegionService *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
    [(BYSIMRegionService *)v2 setTelephonyClient:v3];
  }

  return v2;
}

- (id)cellularNetworkInformation
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  telephonyClient = [(BYSIMRegionService *)self telephonyClient];
  v45 = 0;
  v5 = [telephonyClient getActiveContexts:&v45];
  v6 = v45;

  if (v6)
  {
    v8 = _BYLoggingFacility(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BYSIMRegionService *)v6 cellularNetworkInformation];
    }
  }

  v9 = v3;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v5 subscriptions];
  v10 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      v13 = 0;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = objc_alloc_init(BYCellularNetworkInformation);
        v16 = [objc_alloc(MEMORY[0x1E6965090]) initWithSlot:{objc_msgSend(v14, "slotID")}];
        if (v16)
        {

          telephonyClient2 = [(BYSIMRegionService *)self telephonyClient];
          v40 = 0;
          v18 = [telephonyClient2 copyMobileSubscriberCountryCode:v16 error:&v40];
          v19 = v40;
          -[BYCellularNetworkInformation setHomeMCC:](v15, "setHomeMCC:", [v18 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v19];
          telephonyClient3 = [(BYSIMRegionService *)self telephonyClient];
          v39 = 0;
          v21 = [telephonyClient3 copyMobileSubscriberNetworkCode:v16 error:&v39];
          v22 = v39;
          -[BYCellularNetworkInformation setHomeMNC:](v15, "setHomeMNC:", [v21 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v22];
          telephonyClient4 = [(BYSIMRegionService *)self telephonyClient];
          v38 = 0;
          v24 = [telephonyClient4 copyMobileCountryCode:v16 error:&v38];
          v25 = v38;
          -[BYCellularNetworkInformation setNetworkMCC:](v15, "setNetworkMCC:", [v24 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v25];
          telephonyClient5 = [(BYSIMRegionService *)self telephonyClient];
          v37 = 0;
          v27 = [telephonyClient5 copyMobileNetworkCode:v16 error:&v37];
          v6 = v37;
          -[BYCellularNetworkInformation setNetworkMNC:](v15, "setNetworkMNC:", [v27 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v6];
          v28 = [(BYSIMRegionService *)self isoCodeForMCC:[(BYCellularNetworkInformation *)v15 homeMCC]];
          [(BYCellularNetworkInformation *)v15 setHomeCountryISOCode:v28];

          v29 = [(BYSIMRegionService *)self subregionISOCodesForMCC:[(BYCellularNetworkInformation *)v15 homeMCC] MNC:[(BYCellularNetworkInformation *)v15 homeMNC]];
          [(BYCellularNetworkInformation *)v15 setHomeSubregionISOCodes:v29];

          v30 = [(BYSIMRegionService *)self isoCodeForMCC:[(BYCellularNetworkInformation *)v15 networkMCC]];
          [(BYCellularNetworkInformation *)v15 setNetworkCountryISOCode:v30];

          v31 = [(BYSIMRegionService *)self subregionISOCodesForMCC:[(BYCellularNetworkInformation *)v15 networkMCC] MNC:[(BYCellularNetworkInformation *)v15 networkMNC]];
          [(BYCellularNetworkInformation *)v15 setNetworkSubregionISOCodes:v31];

          [v9 addObject:v15];
        }

        else
        {
          v32 = _BYLoggingFacility(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [(BYSIMRegionService *)v46 cellularNetworkInformation:v14];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v11);
  }

  v33 = v9;
  return v9;
}

- (void)logTelephonyError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    v5 = _BYLoggingFacility(errorCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BYSIMRegionService *)v4 logTelephonyError:v5];
    }
  }
}

- (id)isoCodeForMCC:(int64_t)c
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:c];
  stringValue = [v4 stringValue];

  telephonyClient = [(BYSIMRegionService *)self telephonyClient];
  v13 = 0;
  v7 = [telephonyClient copyMobileSubscriberIsoCountryCode:stringValue error:&v13];
  v8 = v13;
  uppercaseString = [v7 uppercaseString];

  if (v8)
  {
    v11 = _BYLoggingFacility(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(BYSIMRegionService *)stringValue isoCodeForMCC:v8, v11];
    }
  }

  return uppercaseString;
}

- (id)subregionISOCodesForMCC:(int64_t)c MNC:(int64_t)nC
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:c];
  stringValue = [v6 stringValue];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:nC];
  stringValue2 = [v8 stringValue];

  telephonyClient = [(BYSIMRegionService *)self telephonyClient];
  v16 = 0;
  v11 = [telephonyClient copyMobileSubscriberIsoSubregionCode:stringValue MNC:stringValue2 error:&v16];
  v12 = v16;

  if (v12)
  {
    v14 = _BYLoggingFacility(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = stringValue;
      v19 = 2112;
      v20 = stringValue2;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_1B862F000, v14, OS_LOG_TYPE_ERROR, "Error getting subregion ISO code from MCC: %@, MNC: %@, error: %@", buf, 0x20u);
    }
  }

  return v11;
}

- (void)cellularNetworkInformation
{
  slotID = [a2 slotID];
  *self = 134217984;
  *a3 = slotID;
  _os_log_error_impl(&dword_1B862F000, a4, OS_LOG_TYPE_ERROR, "Unable to find selected context to load telephony network information { slot: %ld }", self, 0xCu);
}

- (void)logTelephonyError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Error reading telephony network information { error: %@ }", &v2, 0xCu);
}

- (void)isoCodeForMCC:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B862F000, log, OS_LOG_TYPE_ERROR, "Error getting ISO code from MCC: %@, error: %@", &v3, 0x16u);
}

@end