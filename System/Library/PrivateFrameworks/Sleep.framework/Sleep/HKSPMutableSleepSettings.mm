@interface HKSPMutableSleepSettings
- (BOOL)bedtimeReminders;
- (BOOL)chargingReminders;
- (BOOL)scheduledSleepMode;
- (BOOL)shareAcrossDevices;
- (BOOL)sleepTracking;
- (BOOL)springBoardGreetingDisabled;
- (BOOL)springBoardSuggestedPageCreated;
- (BOOL)timeInBedTracking;
- (BOOL)wakeUpResults;
- (BOOL)watchSleepFeaturesEnabled;
- (HKSPMutableSleepSettings)init;
- (HKSPMutableSleepSettings)initWithCoder:(id)coder;
- (NSDate)lastModifiedDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (unint64_t)sleepModeOptions;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)setBedtimeReminders:(BOOL)reminders;
- (void)setChargingReminders:(BOOL)reminders;
- (void)setLastModifiedDate:(id)date;
- (void)setScheduledSleepMode:(BOOL)mode;
- (void)setShareAcrossDevices:(BOOL)devices;
- (void)setSleepModeOptions:(unint64_t)options;
- (void)setSleepTracking:(BOOL)tracking;
- (void)setSpringBoardGreetingDisabled:(BOOL)disabled;
- (void)setSpringBoardSuggestedPageCreated:(BOOL)created;
- (void)setTimeInBedTracking:(BOOL)tracking;
- (void)setWakeUpResults:(BOOL)results;
- (void)setWatchSleepFeaturesEnabled:(BOOL)enabled;
@end

@implementation HKSPMutableSleepSettings

- (void)setLastModifiedDate:(id)date
{
  dateCopy = date;
  allProperties = [objc_opt_class() allProperties];
  v5 = HKSPPropertiesByIdentifier(allProperties);
  v6 = [v5 objectForKeyedSubscript:@"HKSPSettingsLastModifiedDate"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v6];
  if (!NAEqualObjects() || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSettingsLastModifiedDate"])
  {
    [v6 isRelationshipProperty];
    v8 = objc_opt_class();
    changeSet = self->_changeSet;
    v10 = [[v8 alloc] initWithProperty:v6 changedValue:dateCopy originalValue:v7];
    [(HKSPChangeSet *)changeSet addChange:v10];
  }
}

- (NSDate)lastModifiedDate
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSettingsLastModifiedDate"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSettingsLastModifiedDate"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSettingsLastModifiedDate"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;

  return v6;
}

- (void)setWatchSleepFeaturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPWatchSleepFeaturesEnabled"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != enabledCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWatchSleepFeaturesEnabled"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)watchSleepFeaturesEnabled
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWatchSleepFeaturesEnabled"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWatchSleepFeaturesEnabled"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWatchSleepFeaturesEnabled"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setScheduledSleepMode:(BOOL)mode
{
  modeCopy = mode;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPScheduledSleepMode"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != modeCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPScheduledSleepMode"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:modeCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)scheduledSleepMode
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPScheduledSleepMode"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPScheduledSleepMode"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPScheduledSleepMode"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setSleepModeOptions:(unint64_t)options
{
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepModeOptions"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue != options || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepModeOptions"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (unint64_t)sleepModeOptions
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepModeOptions"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepModeOptions"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepModeOptions"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSleepTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSleepTracking"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != trackingCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTracking"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:trackingCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)sleepTracking
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSleepTracking"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSleepTracking"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSleepTracking"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setWakeUpResults:(BOOL)results
{
  resultsCopy = results;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPWakeUpResults"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != resultsCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpResults"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:resultsCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)wakeUpResults
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPWakeUpResults"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPWakeUpResults"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPWakeUpResults"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setTimeInBedTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPTimeInBedTracking"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != trackingCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPTimeInBedTracking"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:trackingCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)timeInBedTracking
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPTimeInBedTracking"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPTimeInBedTracking"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPTimeInBedTracking"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setBedtimeReminders:(BOOL)reminders
{
  remindersCopy = reminders;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPBedtimeReminders"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != remindersCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPBedtimeReminders"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:remindersCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)bedtimeReminders
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPBedtimeReminders"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPBedtimeReminders"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPBedtimeReminders"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setChargingReminders:(BOOL)reminders
{
  remindersCopy = reminders;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPChargingReminders"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != remindersCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPChargingReminders"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:remindersCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)chargingReminders
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPChargingReminders"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPChargingReminders"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPChargingReminders"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setShareAcrossDevices:(BOOL)devices
{
  devicesCopy = devices;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPShareAcrossDevices"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != devicesCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPShareAcrossDevices"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:devicesCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)shareAcrossDevices
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPShareAcrossDevices"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPShareAcrossDevices"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPShareAcrossDevices"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setSpringBoardGreetingDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSpringBoardGreetingDisabled"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != disabledCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSpringBoardGreetingDisabled"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:disabledCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)springBoardGreetingDisabled
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSpringBoardGreetingDisabled"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSpringBoardGreetingDisabled"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSpringBoardGreetingDisabled"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setSpringBoardSuggestedPageCreated:(BOOL)created
{
  createdCopy = created;
  allProperties = [objc_opt_class() allProperties];
  v6 = HKSPPropertiesByIdentifier(allProperties);
  v14 = [v6 objectForKeyedSubscript:@"HKSPSpringBoardSuggestedPageCreated"];

  v7 = [(HKSPObject *)self->_originalObject hksp_valueForProperty:v14];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue != createdCopy || [(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSpringBoardSuggestedPageCreated"])
  {
    changeSet = self->_changeSet;
    v10 = [HKSPChange alloc];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:createdCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v13 = [(HKSPChange *)v10 initWithProperty:v14 changedValue:v11 originalValue:v12];
    [(HKSPChangeSet *)changeSet addChange:v13];
  }
}

- (BOOL)springBoardSuggestedPageCreated
{
  allProperties = [objc_opt_class() allProperties];
  v4 = HKSPPropertiesByIdentifier(allProperties);
  v5 = [v4 objectForKeyedSubscript:@"HKSPSpringBoardSuggestedPageCreated"];

  if ([(HKSPChangeSet *)self->_changeSet hasChangeForPropertyIdentifier:@"HKSPSpringBoardSuggestedPageCreated"])
  {
    [(HKSPChangeSet *)self->_changeSet changedValueForPropertyIdentifier:@"HKSPSpringBoardSuggestedPageCreated"];
  }

  else
  {
    [(HKSPObject *)self->_originalObject hksp_valueForProperty:v5];
  }
  v6 = ;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (HKSPMutableSleepSettings)init
{
  v9.receiver = self;
  v9.super_class = HKSPMutableSleepSettings;
  v2 = [(HKSPSleepSettings *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKSPSleepSettings);
    originalObject = v2->_originalObject;
    v2->_originalObject = v3;

    v5 = objc_alloc_init(HKSPChangeSet);
    changeSet = v2->_changeSet;
    v2->_changeSet = v5;

    v7 = v2;
  }

  return v2;
}

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepSettings.m" lineNumber:244 description:@"object must be a subclass"];
  }

  v14.receiver = self;
  v14.super_class = HKSPMutableSleepSettings;
  v6 = [(HKSPSleepSettings *)&v14 init];
  if (v6)
  {
    v7 = [objectCopy copyWithZone:0];
    originalObject = v6->_originalObject;
    v6->_originalObject = v7;

    v9 = objc_alloc_init(HKSPChangeSet);
    changeSet = v6->_changeSet;
    v6->_changeSet = v9;

    v11 = v6;
  }

  return v6;
}

- (HKSPMutableSleepSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKSPMutableSleepSettings;
  v5 = [(HKSPSleepSettings *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKSPOriginalObject"];
    originalObject = v5->_originalObject;
    v5->_originalObject = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKSPChangeSet"];
    changeSet = v5->_changeSet;
    v5->_changeSet = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originalObject = self->_originalObject;
  coderCopy = coder;
  [coderCopy encodeObject:originalObject forKey:@"HKSPOriginalObject"];
  [coderCopy encodeObject:self->_changeSet forKey:@"HKSPChangeSet"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKSPSleepSettings alloc];

  return [(HKSPSleepSettings *)v4 initFromObject:self];
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(objc_opt_class());
  originalObject = [(HKSPMutableSleepSettings *)self originalObject];
  v5 = [originalObject copyWithZone:0];
  v6 = v3[7];
  v3[7] = v5;

  changeSet = [(HKSPMutableSleepSettings *)self changeSet];
  deepCopy = [changeSet deepCopy];
  v9 = v3[8];
  v3[8] = deepCopy;

  return v3;
}

- (void)freeze
{
  v3 = [[HKSPSleepSettings alloc] initFromObject:self];
  originalObject = self->_originalObject;
  self->_originalObject = v3;

  [(HKSPMutableSleepSettings *)self revert];
}

@end