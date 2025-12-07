@interface HMDCameraRecordingLoadBalancerLogEvent
- (HMDCameraRecordingLoadBalancerLogEvent)initWithNumberOfResidents:(id)residents numberOfRetries:(id)retries totalNumberOfJobSlots:(id)slots remainingNumberOfJobSlots:(id)jobSlots selectedResidentDeviceType:(id)type selectedResidentNumberOfActiveStreams:(id)streams selectedResidentSystemResourceUsageLevel:(id)level selectedResidentJobSlots:(id)self0 selectedResidentPartialJobSlots:(id)self1 selectedResidentHasActiveSessionWithCamera:(BOOL)self2;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCameraRecordingLoadBalancerLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  numberOfResidents = [(HMDCameraRecordingLoadBalancerLogEvent *)self numberOfResidents];
  [dictionary setObject:numberOfResidents forKeyedSubscript:@"numberOfResidents"];

  numberOfRetries = [(HMDCameraRecordingLoadBalancerLogEvent *)self numberOfRetries];
  [dictionary setObject:numberOfRetries forKeyedSubscript:@"numberOfRetries"];

  totalNumberOfJobSlots = [(HMDCameraRecordingLoadBalancerLogEvent *)self totalNumberOfJobSlots];
  [dictionary setObject:totalNumberOfJobSlots forKeyedSubscript:@"totalNumberOfJobSlots"];

  remainingNumberOfJobSlots = [(HMDCameraRecordingLoadBalancerLogEvent *)self remainingNumberOfJobSlots];
  [dictionary setObject:remainingNumberOfJobSlots forKeyedSubscript:@"remainingNumberOfJobSlots"];

  selectedResidentDeviceType = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentDeviceType];
  [dictionary setObject:selectedResidentDeviceType forKeyedSubscript:@"selectedResidentDeviceType"];

  selectedResidentNumberOfActiveStreams = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentNumberOfActiveStreams];
  [dictionary setObject:selectedResidentNumberOfActiveStreams forKeyedSubscript:@"selectedResidentNumberOfActiveStreams"];

  selectedResidentSystemResourceUsageLevel = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentSystemResourceUsageLevel];
  [dictionary setObject:selectedResidentSystemResourceUsageLevel forKeyedSubscript:@"selectedResidentSystemResourceUsageLevel"];

  selectedResidentJobSlots = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentJobSlots];
  [dictionary setObject:selectedResidentJobSlots forKeyedSubscript:@"selectedResidentFullJobSlots"];

  selectedResidentPartialJobSlots = [(HMDCameraRecordingLoadBalancerLogEvent *)self selectedResidentPartialJobSlots];
  [dictionary setObject:selectedResidentPartialJobSlots forKeyedSubscript:@"selectedResidentPartialJobSlots"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingLoadBalancerLogEvent selectedResidentHasActiveSessionWithCamera](self, "selectedResidentHasActiveSessionWithCamera")}];
  [dictionary setObject:v13 forKeyedSubscript:@"selectedResidentHasActiveSessionWithCamera"];

  v14 = objc_msgSend_copy(dictionary);

  return v14;
}

- (HMDCameraRecordingLoadBalancerLogEvent)initWithNumberOfResidents:(id)residents numberOfRetries:(id)retries totalNumberOfJobSlots:(id)slots remainingNumberOfJobSlots:(id)jobSlots selectedResidentDeviceType:(id)type selectedResidentNumberOfActiveStreams:(id)streams selectedResidentSystemResourceUsageLevel:(id)level selectedResidentJobSlots:(id)self0 selectedResidentPartialJobSlots:(id)self1 selectedResidentHasActiveSessionWithCamera:(BOOL)self2
{
  residentsCopy = residents;
  retriesCopy = retries;
  slotsCopy = slots;
  jobSlotsCopy = jobSlots;
  typeCopy = type;
  streamsCopy = streams;
  levelCopy = level;
  residentJobSlotsCopy = residentJobSlots;
  partialJobSlotsCopy = partialJobSlots;
  v47.receiver = self;
  v47.super_class = HMDCameraRecordingLoadBalancerLogEvent;
  v27 = [(HMMLogEvent *)&v47 init];
  if (v27)
  {
    v28 = objc_msgSend_copy(residentsCopy);
    numberOfResidents = v27->_numberOfResidents;
    v27->_numberOfResidents = v28;

    v30 = objc_msgSend_copy(retriesCopy);
    numberOfRetries = v27->_numberOfRetries;
    v27->_numberOfRetries = v30;

    v32 = objc_msgSend_copy(slotsCopy);
    totalNumberOfJobSlots = v27->_totalNumberOfJobSlots;
    v27->_totalNumberOfJobSlots = v32;

    v34 = objc_msgSend_copy(jobSlotsCopy);
    remainingNumberOfJobSlots = v27->_remainingNumberOfJobSlots;
    v27->_remainingNumberOfJobSlots = v34;

    v36 = objc_msgSend_copy(typeCopy);
    selectedResidentDeviceType = v27->_selectedResidentDeviceType;
    v27->_selectedResidentDeviceType = v36;

    v38 = objc_msgSend_copy(streamsCopy);
    selectedResidentNumberOfActiveStreams = v27->_selectedResidentNumberOfActiveStreams;
    v27->_selectedResidentNumberOfActiveStreams = v38;

    v40 = objc_msgSend_copy(levelCopy);
    selectedResidentSystemResourceUsageLevel = v27->_selectedResidentSystemResourceUsageLevel;
    v27->_selectedResidentSystemResourceUsageLevel = v40;

    v42 = objc_msgSend_copy(residentJobSlotsCopy);
    selectedResidentJobSlots = v27->_selectedResidentJobSlots;
    v27->_selectedResidentJobSlots = v42;

    v44 = objc_msgSend_copy(partialJobSlotsCopy);
    selectedResidentPartialJobSlots = v27->_selectedResidentPartialJobSlots;
    v27->_selectedResidentPartialJobSlots = v44;

    v27->_selectedResidentHasActiveSessionWithCamera = camera;
  }

  return v27;
}

@end