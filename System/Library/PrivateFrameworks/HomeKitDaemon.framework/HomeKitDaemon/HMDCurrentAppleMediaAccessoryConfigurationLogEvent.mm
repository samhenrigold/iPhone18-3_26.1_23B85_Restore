@interface HMDCurrentAppleMediaAccessoryConfigurationLogEvent
- (HMDCurrentAppleMediaAccessoryConfigurationLogEvent)initWithNumPairedSensors:(id)sensors sensorStatus:(id)status numPairedSensorAutomations:(id)automations numMediaAutomations:(id)mediaAutomations;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCurrentAppleMediaAccessoryConfigurationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  numPairedSensors = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self numPairedSensors];
  [dictionary setObject:numPairedSensors forKeyedSubscript:@"numPairedHomePodSensors"];

  sensorStatus = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self sensorStatus];
  [dictionary setObject:sensorStatus forKeyedSubscript:@"homePodSensorStatus"];

  numPairedSensorAutomations = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self numPairedSensorAutomations];
  [dictionary setObject:numPairedSensorAutomations forKeyedSubscript:@"numPairedHomePodSensorAutomations"];

  numMediaAutomations = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)self numMediaAutomations];
  [dictionary setObject:numMediaAutomations forKeyedSubscript:@"numMediaAutomations"];

  v8 = objc_msgSend_copy(dictionary);

  return v8;
}

- (HMDCurrentAppleMediaAccessoryConfigurationLogEvent)initWithNumPairedSensors:(id)sensors sensorStatus:(id)status numPairedSensorAutomations:(id)automations numMediaAutomations:(id)mediaAutomations
{
  sensorsCopy = sensors;
  statusCopy = status;
  automationsCopy = automations;
  mediaAutomationsCopy = mediaAutomations;
  v24.receiver = self;
  v24.super_class = HMDCurrentAppleMediaAccessoryConfigurationLogEvent;
  v14 = [(HMMLogEvent *)&v24 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(sensorsCopy);
    numPairedSensors = v14->_numPairedSensors;
    v14->_numPairedSensors = v15;

    v17 = objc_msgSend_copy(statusCopy);
    sensorStatus = v14->_sensorStatus;
    v14->_sensorStatus = v17;

    v19 = objc_msgSend_copy(automationsCopy);
    numPairedSensorAutomations = v14->_numPairedSensorAutomations;
    v14->_numPairedSensorAutomations = v19;

    v21 = objc_msgSend_copy(mediaAutomationsCopy);
    numMediaAutomations = v14->_numMediaAutomations;
    v14->_numMediaAutomations = v21;
  }

  return v14;
}

@end