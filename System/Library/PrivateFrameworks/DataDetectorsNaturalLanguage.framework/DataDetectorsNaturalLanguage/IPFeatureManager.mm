@interface IPFeatureManager
+ (id)featuresForTextString:(id)string inMessageUnit:(id)unit;
+ (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler;
@end

@implementation IPFeatureManager

+ (void)scanEventsInMessageUnits:(id)units synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  handlerCopy = handler;
  unitsCopy = units;
  v9 = objc_alloc_init(IPFeatureMailScanner);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__IPFeatureManager_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke;
  v11[3] = &unk_278F22E78;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(IPFeatureMailScanner *)v9 scanEventsInMessageUnits:unitsCopy synchronously:synchronouslyCopy completionHandler:v11];
}

void __77__IPFeatureManager_scanEventsInMessageUnits_synchronously_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*(a1 + 32) + 16))();
  v6 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging(v4, v5);
    v6 = _IPLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [IPFeatureScanner descriptionForScanResultType:a3];
    v9[0] = 67109378;
    v9[1] = a3;
    v10 = 2114;
    v11 = v8;
    _os_log_impl(&dword_2485E4000, v7, OS_LOG_TYPE_INFO, "Result Type: %d   [%{public}@] #FeatureManager", v9, 0x12u);
  }
}

+ (id)featuresForTextString:(id)string inMessageUnit:(id)unit
{
  unitCopy = unit;
  stringCopy = string;
  v7 = objc_alloc_init(IPFeatureMailScanner);
  v8 = [(IPFeatureMailScanner *)v7 featuresForTextString:stringCopy inMessageUnit:unitCopy];

  return v8;
}

@end