@interface PPConnectionsMetricsTracker
+ (PPConnectionsMetricsTracker)sharedInstance;
+ (id)consumerStringForConsumerType:(unint64_t)type;
+ (id)donationSourceFromBundleID:(id)d;
+ (id)triggerFromCriteria:(id)criteria;
- (PPConnectionsMetricsTracker)init;
- (__CFString)privacyFriendlyBundleIdentifierWith:(__CFString *)with;
- (void)trackConversionGoalForConsumer:(id)consumer source:(id)source trigger:(id)trigger originatingApp:(id)app targetApp:(id)targetApp converted:(BOOL)converted;
- (void)trackDismissalForConsumer:(id)consumer source:(id)source trigger:(id)trigger originatingApp:(id)app targetApp:(id)targetApp;
- (void)trackDonationFromBundleId:(id)id source:(id)source hasLatLon:(BOOL)lon isEligible:(BOOL)eligible;
- (void)trackOpportunityForConsumer:(id)consumer trigger:(id)trigger targetApp:(id)app;
- (void)trackPasteboardItemFromBundleId:(id)id hasAddress:(BOOL)address isEligible:(BOOL)eligible;
- (void)trackTimingForConsumer:(id)consumer time:(unint64_t)time;
@end

@implementation PPConnectionsMetricsTracker

- (void)trackPasteboardItemFromBundleId:(id)id hasAddress:(BOOL)address isEligible:(BOOL)eligible
{
  idCopy = id;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__PPConnectionsMetricsTracker_trackPasteboardItemFromBundleId_hasAddress_isEligible___block_invoke;
  block[3] = &unk_278978AD0;
  block[4] = self;
  v12 = idCopy;
  addressCopy = address;
  eligibleCopy = eligible;
  v10 = idCopy;
  dispatch_async(queue, block);
}

void __85__PPConnectionsMetricsTracker_trackPasteboardItemFromBundleId_hasAddress_isEligible___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "[PPConnectionsMetricsTracker] Tracking pasteboard item addition", v8, 2u);
  }

  v3 = [(PPConnectionsMetricsTracker *)*(a1 + 32) privacyFriendlyBundleIdentifierWith:?];
  v4 = [*(a1 + 32) pasteboardTracker];
  v5 = @"0";
  if (*(a1 + 48))
  {
    v6 = @"1";
  }

  else
  {
    v6 = @"0";
  }

  if (*(a1 + 49))
  {
    v5 = @"1";
  }

  v9[0] = v6;
  v9[1] = v5;
  v9[2] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  [v4 trackEventWithPropertyValues:v7];
}

- (__CFString)privacyFriendlyBundleIdentifierWith:(__CFString *)with
{
  if (with)
  {
    v3 = @"unknown";
    if (a2)
    {
      v3 = a2;
    }

    with = v3;
    v2 = vars8;
  }

  return with;
}

- (void)trackDonationFromBundleId:(id)id source:(id)source hasLatLon:(BOOL)lon isEligible:(BOOL)eligible
{
  idCopy = id;
  sourceCopy = source;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__PPConnectionsMetricsTracker_trackDonationFromBundleId_source_hasLatLon_isEligible___block_invoke;
  v15[3] = &unk_278978AA8;
  v15[4] = self;
  v16 = idCopy;
  v17 = sourceCopy;
  lonCopy = lon;
  eligibleCopy = eligible;
  v13 = sourceCopy;
  v14 = idCopy;
  dispatch_async(queue, v15);
}

void __85__PPConnectionsMetricsTracker_trackDonationFromBundleId_source_hasLatLon_isEligible___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "[PPConnectionsMetricsTracker] Tracking donation", v8, 2u);
  }

  v3 = [(PPConnectionsMetricsTracker *)*(a1 + 32) privacyFriendlyBundleIdentifierWith:?];
  v4 = [*(a1 + 32) donationTracker];
  if (*(a1 + 56))
  {
    v5 = @"1";
  }

  else
  {
    v5 = @"0";
  }

  v9[0] = *(a1 + 48);
  v9[1] = v5;
  if (*(a1 + 57))
  {
    v6 = @"1";
  }

  else
  {
    v6 = @"0";
  }

  v9[2] = v6;
  v9[3] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  [v4 trackEventWithPropertyValues:v7];
}

- (void)trackTimingForConsumer:(id)consumer time:(unint64_t)time
{
  consumerCopy = consumer;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PPConnectionsMetricsTracker_trackTimingForConsumer_time___block_invoke;
  block[3] = &unk_278978A80;
  block[4] = self;
  v10 = consumerCopy;
  timeCopy = time;
  v8 = consumerCopy;
  dispatch_async(queue, block);
}

void __59__PPConnectionsMetricsTracker_trackTimingForConsumer_time___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "[PPConnectionsMetricsTracker] Tracking timing", v5, 2u);
  }

  v3 = [*(a1 + 32) timingTracker];
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 trackEventWithPropertyValues:v4 value:*(a1 + 48)];
}

- (void)trackDismissalForConsumer:(id)consumer source:(id)source trigger:(id)trigger originatingApp:(id)app targetApp:(id)targetApp
{
  consumerCopy = consumer;
  sourceCopy = source;
  triggerCopy = trigger;
  appCopy = app;
  targetAppCopy = targetApp;
  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__PPConnectionsMetricsTracker_trackDismissalForConsumer_source_trigger_originatingApp_targetApp___block_invoke;
  v23[3] = &unk_278978A58;
  v24 = consumerCopy;
  selfCopy = self;
  v26 = sourceCopy;
  v27 = triggerCopy;
  v28 = appCopy;
  v29 = targetAppCopy;
  v18 = targetAppCopy;
  v19 = appCopy;
  v20 = triggerCopy;
  v21 = sourceCopy;
  v22 = consumerCopy;
  dispatch_async(queue, v23);
}

void __97__PPConnectionsMetricsTracker_trackDismissalForConsumer_source_trigger_originatingApp_targetApp___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "[PPConnectionsMetricsTracker] Tracking dismissal for consumer = %@", buf, 0xCu);
  }

  v3 = [*(a1 + 40) dismissalTracker];
  v4 = *(a1 + 48);
  v7[0] = *(a1 + 32);
  v7[1] = v4;
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  [v3 trackEventWithPropertyValues:v5];
}

- (void)trackOpportunityForConsumer:(id)consumer trigger:(id)trigger targetApp:(id)app
{
  consumerCopy = consumer;
  triggerCopy = trigger;
  appCopy = app;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__PPConnectionsMetricsTracker_trackOpportunityForConsumer_trigger_targetApp___block_invoke;
  v15[3] = &unk_2789799D0;
  v16 = consumerCopy;
  selfCopy = self;
  v18 = appCopy;
  v19 = triggerCopy;
  v12 = triggerCopy;
  v13 = appCopy;
  v14 = consumerCopy;
  dispatch_async(queue, v15);
}

void __77__PPConnectionsMetricsTracker_trackOpportunityForConsumer_trigger_targetApp___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v10 = v7;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "[PPConnectionsMetricsTracker] Tracking opportunity for consumer = %@", buf, 0xCu);
  }

  v3 = [(PPConnectionsMetricsTracker *)*(a1 + 40) privacyFriendlyBundleIdentifierWith:?];
  v4 = [*(a1 + 40) opportunityTracker];
  v5 = *(a1 + 56);
  v8[0] = *(a1 + 32);
  v8[1] = v5;
  v8[2] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v4 trackEventWithPropertyValues:v6];
}

- (void)trackConversionGoalForConsumer:(id)consumer source:(id)source trigger:(id)trigger originatingApp:(id)app targetApp:(id)targetApp converted:(BOOL)converted
{
  consumerCopy = consumer;
  sourceCopy = source;
  triggerCopy = trigger;
  appCopy = app;
  targetAppCopy = targetApp;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__PPConnectionsMetricsTracker_trackConversionGoalForConsumer_source_trigger_originatingApp_targetApp_converted___block_invoke;
  block[3] = &unk_278978A30;
  convertedCopy = converted;
  v26 = consumerCopy;
  selfCopy = self;
  v28 = appCopy;
  v29 = targetAppCopy;
  v30 = sourceCopy;
  v31 = triggerCopy;
  v20 = triggerCopy;
  v21 = sourceCopy;
  v22 = targetAppCopy;
  v23 = appCopy;
  v24 = consumerCopy;
  dispatch_async(queue, block);
}

void __112__PPConnectionsMetricsTracker_trackConversionGoalForConsumer_source_trigger_originatingApp_targetApp_converted___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 80);
    *buf = 138412546;
    v15 = v11;
    v16 = 1024;
    v17 = v12;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "[PPConnectionsMetricsTracker] Tracking conversion for consumer = %@, converted = %d", buf, 0x12u);
  }

  v3 = [(PPConnectionsMetricsTracker *)*(a1 + 40) privacyFriendlyBundleIdentifierWith:?];
  v4 = [(PPConnectionsMetricsTracker *)*(a1 + 40) privacyFriendlyBundleIdentifierWith:?];
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v13[0] = *(a1 + 32);
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v3;
  v13[4] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  v8 = *(a1 + 80);
  v9 = [*(a1 + 40) conversionTracker];
  v10 = v9;
  if (v8 == 1)
  {
    [v9 trackGoalConversionEventWithPropertyValues:v7];
  }

  else
  {
    [v9 trackGoalOpportunityEventWithPropertyValues:v7];
  }
}

- (PPConnectionsMetricsTracker)init
{
  v48[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = PPConnectionsMetricsTracker;
  v2 = [(PPConnectionsMetricsTracker *)&v40 init];
  if (v2)
  {
    v3 = MEMORY[0x277D41DA0];
    v48[0] = @"springboard";
    v48[1] = @"quicktype";
    v48[2] = @"maps";
    v48[3] = @"mapsWidget";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
    v5 = [v3 propertyWithName:@"consumer" possibleValues:v4];

    v6 = MEMORY[0x277D41DA0];
    v47[0] = @"donation";
    v47[1] = @"schemaorg";
    v47[2] = @"pasteboard";
    v47[3] = @"siri";
    v47[4] = @"calendar";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:5];
    v8 = [v6 propertyWithName:@"source" possibleValues:v7];

    v9 = MEMORY[0x277D41DA0];
    v46[0] = @"semantic";
    v46[1] = @"ling_location";
    v46[2] = @"ling_address";
    v46[3] = @"ling_phone";
    v46[4] = @"na";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
    v11 = [v9 propertyWithName:@"trigger" possibleValues:v10];

    v12 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"originating_app"];
    v13 = [MEMORY[0x277D41DA0] freeValuedPropertyWithName:@"target_app"];
    v45[0] = v5;
    v45[1] = v8;
    v34 = v8;
    v45[2] = v11;
    v45[3] = v12;
    v14 = v11;
    v37 = v13;
    v38 = v11;
    v45[4] = v13;
    v15 = v13;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
    v16 = [objc_alloc(MEMORY[0x277D41DB0]) initWithFeatureId:@"PEXConnections" opportunityEvent:@"shown" conversionEvent:@"engaged" registerProperties:v39];
    [(PPConnectionsMetricsTracker *)v2 setConversionTracker:v16];

    v17 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"PEXConnections" event:@"dismissed" registerProperties:v39];
    [(PPConnectionsMetricsTracker *)v2 setDismissalTracker:v17];

    v44[0] = v5;
    v44[1] = v14;
    v36 = v5;
    v44[2] = v15;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v18 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"PEXConnections" event:@"opportunity" registerProperties:v35];
    [(PPConnectionsMetricsTracker *)v2 setOpportunityTracker:v18];

    v43 = v5;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v20 = [objc_alloc(MEMORY[0x277D41D98]) initWithFeatureId:@"PEXConnections" event:@"timing" registerProperties:v19];
    [(PPConnectionsMetricsTracker *)v2 setTimingTracker:v20];

    v42[0] = v8;
    v21 = [MEMORY[0x277D41DA0] propertyWithName:@"has_latlon" possibleValues:&unk_284785D60];
    v42[1] = v21;
    v22 = [MEMORY[0x277D41DA0] propertyWithName:@"eligible" possibleValues:&unk_284785D78];
    v42[2] = v22;
    v42[3] = v12;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];

    v24 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"PEXConnections" event:@"donation" registerProperties:v23];
    [(PPConnectionsMetricsTracker *)v2 setDonationTracker:v24];

    v25 = [MEMORY[0x277D41DA0] propertyWithName:@"has_address" possibleValues:&unk_284785D90];
    v41[0] = v25;
    v26 = [MEMORY[0x277D41DA0] propertyWithName:@"eligible" possibleValues:&unk_284785DA8];
    v41[1] = v26;
    v41[2] = v12;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];

    v28 = [objc_alloc(MEMORY[0x277D41DB8]) initWithFeatureId:@"PEXConnections" event:@"pasteboard" registerProperties:v27];
    [(PPConnectionsMetricsTracker *)v2 setPasteboardTracker:v28];

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_attr_make_with_qos_class(v29, QOS_CLASS_UTILITY, 0);
    v31 = dispatch_queue_create("com.apple.PPConnections.metrics", v30);
    queue = v2->_queue;
    v2->_queue = v31;
  }

  return v2;
}

+ (id)triggerFromCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([PPConnectionsUtils isValidLinguisticQuery:criteriaCopy])
  {
    if ([criteriaCopy fields])
    {
      v4 = @"ling_phone";
    }

    else if ([criteriaCopy subtype] == 6)
    {
      v4 = @"ling_location";
    }

    else if ([criteriaCopy subtype] == 7)
    {
      v4 = @"ling_address";
    }

    else
    {
      v4 = @"na";
    }
  }

  else
  {
    v5 = +[PPConnectionsUtils supportedLocationSemanticTypes];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(criteriaCopy, "semanticTag")}];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      v4 = @"semantic";
    }

    else
    {
      v4 = @"na";
    }
  }

  return v4;
}

+ (id)donationSourceFromBundleID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:*MEMORY[0x277D3A6A0]])
  {
    v4 = @"siri";
  }

  else if ([dCopy isEqualToString:*MEMORY[0x277D3A698]])
  {
    v4 = @"schemaorg";
  }

  else
  {
    v4 = @"donation";
  }

  return v4;
}

+ (id)consumerStringForConsumerType:(unint64_t)type
{
  v3 = @"maps";
  v4 = @"mapsWidget";
  v5 = @"quicktype";
  if ((type & 1) == 0)
  {
    v5 = @"unknown";
  }

  if ((type & 4) == 0)
  {
    v4 = v5;
  }

  if ((type & 2) == 0)
  {
    v3 = v4;
  }

  if ((type & 8) != 0)
  {
    return @"springboard";
  }

  else
  {
    return v3;
  }
}

+ (PPConnectionsMetricsTracker)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PPConnectionsMetricsTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_shared_24011;

  return v2;
}

uint64_t __45__PPConnectionsMetricsTracker_sharedInstance__block_invoke(uint64_t a1)
{
  objc_opt_class();
  sharedInstance_shared_24011 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end