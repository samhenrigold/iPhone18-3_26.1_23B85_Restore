@interface ATXNotificationEventMetric
+ (id)atxComputedModeStringForTimestamp:(id)timestamp;
- (ATXNotificationEventMetric)initWithQueryResult:(id)result;
- (id)coreAnalyticsDictionaryFromQueryResult:(id)result;
@end

@implementation ATXNotificationEventMetric

- (ATXNotificationEventMetric)initWithQueryResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = ATXNotificationEventMetric;
  v6 = [(_ATXCoreAnalyticsMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryResult, result);
  }

  return v7;
}

+ (id)atxComputedModeStringForTimestamp:(id)timestamp
{
  v3 = [MEMORY[0x277D41C60] currrentModeEventAtGivenTime:timestamp];
  v4 = v3;
  if (v3)
  {
    eventBody = [v3 eventBody];
    [eventBody atx_dndModeSemanticType];
    ATXModeForDNDSemanticType();
    v6 = ATXModeToString();
  }

  else
  {
    v6 = ATXModeToString();
  }

  return v6;
}

- (id)coreAnalyticsDictionaryFromQueryResult:(id)result
{
  v97[31] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v96[0] = @"bundleId";
  bundleId = [resultCopy bundleId];
  v5 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v54 = bundleId;
  v97[0] = bundleId;
  v96[1] = @"destinationReason";
  destinationReason = [resultCopy destinationReason];
  v7 = destinationReason;
  if (!destinationReason)
  {
    destinationReason = [MEMORY[0x277CBEB68] null];
  }

  v92 = v5;
  v53 = destinationReason;
  v97[1] = destinationReason;
  v96[2] = @"handleDestination";
  finalDestination = [resultCopy finalDestination];
  v90 = finalDestination;
  if (!finalDestination)
  {
    finalDestination = [MEMORY[0x277CBEB68] null];
  }

  v91 = v7;
  v52 = finalDestination;
  v97[2] = finalDestination;
  v96[3] = @"handleMode";
  resolution = [resultCopy resolution];
  resolutionTimestamp = [resolution resolutionTimestamp];
  null = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v10 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v51 = null;
  v97[3] = null;
  v96[4] = @"isMessage";
  v86 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isMessage")}];
  v97[4] = v86;
  v96[5] = @"notificationUrgency";
  [resultCopy urgency];
  null2 = ATXUserNotificationDeliveryUrgencyToString();
  v12 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v50 = null2;
  v97[5] = null2;
  v96[6] = @"originalDestination";
  originalDestination = [resultCopy originalDestination];
  receiveTimestamp4 = originalDestination;
  if (!originalDestination)
  {
    originalDestination = [MEMORY[0x277CBEB68] null];
  }

  v49 = originalDestination;
  v97[6] = originalDestination;
  v96[7] = @"deliveryMethod";
  [resultCopy deliveryMethod];
  null3 = ATXUserNotificationDeliveryMethodToString();
  nextAppLaunchTimestamp2 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v48 = null3;
  v97[7] = null3;
  v96[8] = @"receiveDestination";
  [resultCopy deliveryMethod];
  null4 = ATXUserNotificationDeliveryMethodToString();
  v18 = null4;
  if (!null4)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v47 = null4;
  v97[8] = null4;
  v96[9] = @"receiveMode";
  receiveTimestamp = [resultCopy receiveTimestamp];
  null5 = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v20 = null5;
  if (!null5)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v46 = null5;
  v97[9] = null5;
  v96[10] = @"resolutionType";
  resolution2 = [resultCopy resolution];
  null6 = ATXUserNotificationResolutionTypeToString([resolution2 resolutionType]);
  v95 = null6;
  if (!null6)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v45 = null6;
  v97[10] = null6;
  v96[11] = @"secureBundleId";
  bundleId2 = [resultCopy bundleId];
  null7 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  v94 = null7;
  if (!null7)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v44 = null7;
  v97[11] = null7;
  v96[12] = @"timeToResolution";
  v23 = MEMORY[0x277CCABB0];
  resolution3 = [resultCopy resolution];
  resolutionTimestamp2 = [resolution3 resolutionTimestamp];
  receiveTimestamp2 = [resultCopy receiveTimestamp];
  v76 = resolutionTimestamp2;
  [resolutionTimestamp2 timeIntervalSinceDate:?];
  v74 = [v23 numberWithDouble:?];
  v97[12] = v74;
  v96[13] = @"receiveInferredMode";
  v25 = MEMORY[0x277D41C68];
  receiveTimestamp3 = [resultCopy receiveTimestamp];
  v72 = [v25 currentModeEventAtGivenTime:?];
  eventBody = [v72 eventBody];
  [eventBody modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  null8 = ATXModeToString();
  v93 = null8;
  if (!null8)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v80 = v20;
  v82 = v18;
  v85 = v12;
  v43 = null8;
  v97[13] = null8;
  v96[14] = @"handleInferredMode";
  v27 = MEMORY[0x277D41C68];
  resolution4 = [resultCopy resolution];
  resolutionTimestamp3 = [resolution4 resolutionTimestamp];
  v68 = [v27 currentModeEventAtGivenTime:?];
  eventBody2 = [v68 eventBody];
  [eventBody2 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  null9 = ATXModeToString();
  v66 = null9;
  if (!null9)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v83 = nextAppLaunchTimestamp2;
  v84 = receiveTimestamp4;
  v87 = v10;
  v97[14] = null9;
  v96[15] = @"lengthOfNotificationBody";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "bodyLength", null9)}];
  v97[15] = v65;
  v96[16] = @"bodyLength";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "bodyLength")}];
  v97[16] = v64;
  v96[17] = @"titleLength";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "titleLength")}];
  v97[17] = v63;
  v96[18] = @"subtitleLength";
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "subtitleLength")}];
  v97[18] = v62;
  v96[19] = @"summaryTopLineLength";
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "summaryLength")}];
  v97[19] = v61;
  v96[20] = @"deliveredInPrioritySection";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isDeliveredInPrioritySection")}];
  v97[20] = v60;
  v96[21] = @"isSummarized";
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isSummarized")}];
  v97[21] = v59;
  v96[22] = @"isPartOfStack";
  v58 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isPartOfStack")}];
  v97[22] = v58;
  v96[23] = @"isStackSummary";
  v57 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isStackSummary")}];
  v97[23] = v57;
  v96[24] = @"numberOfNotificationsInStack";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "numberOfNotificationsInStack")}];
  v97[24] = v56;
  v96[25] = @"notificationPriorityStatus";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "notificationPriorityStatus")}];
  v97[25] = v29;
  v96[26] = @"notificationSummaryStatus";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "notificationSummaryStatus")}];
  v97[26] = v30;
  v96[27] = @"isPriorityNotificationEnabled";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isPriorityNotificationEnabled")}];
  v97[27] = v31;
  v96[28] = @"isNotificationSummaryEnabled";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isNotificationSummaryEnabled")}];
  v97[28] = v32;
  v96[29] = @"timeToNextAppLaunch";
  nextAppLaunchTimestamp = [resultCopy nextAppLaunchTimestamp];
  if (nextAppLaunchTimestamp)
  {
    v34 = MEMORY[0x277CCABB0];
    nextAppLaunchTimestamp2 = [resultCopy nextAppLaunchTimestamp];
    receiveTimestamp4 = [resultCopy receiveTimestamp];
    [nextAppLaunchTimestamp2 timeIntervalSinceDate:receiveTimestamp4];
    [v34 numberWithDouble:?];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v35 = ;
  v97[29] = v35;
  v96[30] = @"queryTimeInterval";
  v36 = MEMORY[0x277CCABB0];
  [resultCopy queryTimeInterval];
  v37 = [v36 numberWithDouble:?];
  v97[30] = v37;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:31];

  if (nextAppLaunchTimestamp)
  {

    v35 = nextAppLaunchTimestamp2;
  }

  if (!v66)
  {
  }

  v38 = v93;
  if (!v93)
  {

    v38 = 0;
  }

  v39 = v94;
  if (!v94)
  {

    v39 = 0;
  }

  v40 = v95;
  if (!v95)
  {

    v40 = 0;
  }

  if (!v80)
  {
  }

  if (!v82)
  {
  }

  if (!v83)
  {
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  if (!v87)
  {
  }

  if (!v90)
  {
  }

  if (!v91)
  {
  }

  if (!v92)
  {
  }

  return v55;
}

@end