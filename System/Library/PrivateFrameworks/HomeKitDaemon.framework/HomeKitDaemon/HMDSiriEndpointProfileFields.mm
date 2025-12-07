@interface HMDSiriEndpointProfileFields
- (HMDSiriEndpointProfileFields)initWithNeedsOnboardingField:(id)field supportsOnboardingField:(id)onboardingField siriEnableField:(id)enableField siriListeningField:(id)listeningField siriTouchToUseField:(id)useField siriLightOnUseField:(id)onUseField siriSoundOnUseField:(id)soundOnUseField;
- (id)attributeDescriptions;
- (id)serializeFields;
@end

@implementation HMDSiriEndpointProfileFields

- (id)attributeDescriptions
{
  v26[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  needsOnboardingField = [(HMDSiriEndpointProfileFields *)self needsOnboardingField];
  v24 = [v3 initWithName:@"needsOnboarding" value:needsOnboardingField];
  v26[0] = v24;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  supportsOnboardingField = [(HMDSiriEndpointProfileFields *)self supportsOnboardingField];
  v22 = [v4 initWithName:@"supportsOnboarding" value:supportsOnboardingField];
  v26[1] = v22;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  isSiriEnableField = [(HMDSiriEndpointProfileFields *)self isSiriEnableField];
  v6 = [v5 initWithName:@"isSiriEnable" value:isSiriEnableField];
  v26[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  isSiriListeningField = [(HMDSiriEndpointProfileFields *)self isSiriListeningField];
  v9 = [v7 initWithName:@"isSiriListening" value:isSiriListeningField];
  v26[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  siriTouchToUseField = [(HMDSiriEndpointProfileFields *)self siriTouchToUseField];
  v12 = [v10 initWithName:@"siriTouchToUse" value:siriTouchToUseField];
  v26[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  siriLightOnUseField = [(HMDSiriEndpointProfileFields *)self siriLightOnUseField];
  v15 = [v13 initWithName:@"siriLightOnUse" value:siriLightOnUseField];
  v26[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  siriSoundOnUseField = [(HMDSiriEndpointProfileFields *)self siriSoundOnUseField];
  v18 = [v16 initWithName:@"siriSoundOnUse" value:siriSoundOnUseField];
  v26[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:7];

  return v19;
}

- (id)serializeFields
{
  v13[7] = *MEMORY[0x277D85DE8];
  v12[0] = @"needsOnboarding";
  needsOnboardingField = [(HMDSiriEndpointProfileFields *)self needsOnboardingField];
  v13[0] = needsOnboardingField;
  v12[1] = @"supportsOnboarding";
  supportsOnboardingField = [(HMDSiriEndpointProfileFields *)self supportsOnboardingField];
  v13[1] = supportsOnboardingField;
  v12[2] = @"isSiriEnable";
  isSiriEnableField = [(HMDSiriEndpointProfileFields *)self isSiriEnableField];
  v13[2] = isSiriEnableField;
  v12[3] = @"isSiriListening";
  isSiriListeningField = [(HMDSiriEndpointProfileFields *)self isSiriListeningField];
  v13[3] = isSiriListeningField;
  v12[4] = @"siriTouchToUse";
  siriTouchToUseField = [(HMDSiriEndpointProfileFields *)self siriTouchToUseField];
  v13[4] = siriTouchToUseField;
  v12[5] = @"siriLightOnUse";
  siriLightOnUseField = [(HMDSiriEndpointProfileFields *)self siriLightOnUseField];
  v13[5] = siriLightOnUseField;
  v12[6] = @"siriSoundOnUse";
  siriSoundOnUseField = [(HMDSiriEndpointProfileFields *)self siriSoundOnUseField];
  v13[6] = siriSoundOnUseField;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

- (HMDSiriEndpointProfileFields)initWithNeedsOnboardingField:(id)field supportsOnboardingField:(id)onboardingField siriEnableField:(id)enableField siriListeningField:(id)listeningField siriTouchToUseField:(id)useField siriLightOnUseField:(id)onUseField siriSoundOnUseField:(id)soundOnUseField
{
  fieldCopy = field;
  obj = onboardingField;
  onboardingFieldCopy = onboardingField;
  enableFieldCopy = enableField;
  enableFieldCopy2 = enableField;
  listeningFieldCopy = listeningField;
  listeningFieldCopy2 = listeningField;
  useFieldCopy = useField;
  useFieldCopy2 = useField;
  onUseFieldCopy = onUseField;
  onUseFieldCopy2 = onUseField;
  soundOnUseFieldCopy = soundOnUseField;
  if (!fieldCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!onboardingFieldCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!enableFieldCopy2)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!listeningFieldCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!useFieldCopy2)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!onUseFieldCopy2)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v23 = soundOnUseFieldCopy;
  if (!soundOnUseFieldCopy)
  {
LABEL_17:
    v27 = _HMFPreconditionFailure();
    [(HMDHomeAssistantOperation *)v27 .cxx_destruct];
    return result;
  }

  v34.receiver = self;
  v34.super_class = HMDSiriEndpointProfileFields;
  v24 = [(HMDSiriEndpointProfileFields *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_needsOnboardingField, field);
    objc_storeStrong(&v25->_supportsOnboardingField, obj);
    objc_storeStrong(&v25->_isSiriEnableField, enableFieldCopy);
    objc_storeStrong(&v25->_isSiriListeningField, listeningFieldCopy);
    objc_storeStrong(&v25->_siriTouchToUseField, useFieldCopy);
    objc_storeStrong(&v25->_siriLightOnUseField, onUseFieldCopy);
    objc_storeStrong(&v25->_siriSoundOnUseField, soundOnUseField);
  }

  return v25;
}

@end