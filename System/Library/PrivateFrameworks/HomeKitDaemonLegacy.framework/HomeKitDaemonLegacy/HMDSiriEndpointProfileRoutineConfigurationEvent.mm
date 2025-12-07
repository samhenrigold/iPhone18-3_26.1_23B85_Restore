@interface HMDSiriEndpointProfileRoutineConfigurationEvent
- (HMDSiriEndpointProfileRoutineConfigurationEvent)initWithAccessoryCategoryType:(id)type profileFields:(id)fields accessorySettingFields:(id)settingFields;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDSiriEndpointProfileRoutineConfigurationEvent

- (id)attributeDescriptions
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryCategoryType = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessoryCategoryType];
  v5 = [v3 initWithName:@"accessoryCategoryType" value:accessoryCategoryType];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  profileFields = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self profileFields];
  v8 = [v6 initWithName:@"profileFields" value:profileFields];
  v14[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  accessorySettingFields = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessorySettingFields];
  v11 = [v9 initWithName:@"accessorySettingFields" value:accessorySettingFields];
  v14[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  return v12;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = @"accessoryCategoryType";
  accessoryCategoryType = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessoryCategoryType];
  v13[0] = accessoryCategoryType;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v3 addEntriesFromDictionary:v5];

  profileFields = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self profileFields];
  serializeFields = [profileFields serializeFields];
  [v3 addEntriesFromDictionary:serializeFields];

  accessorySettingFields = [(HMDSiriEndpointProfileRoutineConfigurationEvent *)self accessorySettingFields];
  serializeFields2 = [accessorySettingFields serializeFields];
  [v3 addEntriesFromDictionary:serializeFields2];

  v10 = objc_msgSend_copy(v3);

  return v10;
}

- (HMDSiriEndpointProfileRoutineConfigurationEvent)initWithAccessoryCategoryType:(id)type profileFields:(id)fields accessorySettingFields:(id)settingFields
{
  typeCopy = type;
  fieldsCopy = fields;
  settingFieldsCopy = settingFields;
  if (!typeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!fieldsCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = settingFieldsCopy;
  if (!settingFieldsCopy)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return serviceTypeUUIDsForAccessory(v16);
  }

  v17.receiver = self;
  v17.super_class = HMDSiriEndpointProfileRoutineConfigurationEvent;
  v13 = [(HMMLogEvent *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryCategoryType, type);
    objc_storeStrong(&v14->_profileFields, fields);
    objc_storeStrong(&v14->_accessorySettingFields, settingFields);
  }

  return v14;
}

@end