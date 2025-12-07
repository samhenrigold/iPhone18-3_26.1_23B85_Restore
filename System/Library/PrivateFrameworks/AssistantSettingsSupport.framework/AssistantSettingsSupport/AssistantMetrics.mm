@interface AssistantMetrics
+ (id)sharedMetrics;
+ (void)didDetailToggle:(id)toggle bundleId:(id)id on:(BOOL)on;
+ (void)didDetailVisit:(id)visit;
+ (void)didDisableSiriConfirmed:(BOOL)confirmed source:(id)source;
+ (void)didEnableSiriConfirmed:(BOOL)confirmed source:(id)source;
+ (void)didStartEnrollment:(BOOL)enrollment;
+ (void)didToggle:(id)toggle on:(BOOL)on;
+ (void)didVisit;
- (id)__confirmedTrueFalseProperty;
- (id)__detailToggleFoundInAppsTracker;
- (id)__detailToggleSearchTracker;
- (id)__detailToggleSiriKitTracker;
- (id)__detailToggleTrackerNameProperty;
- (id)__detailVisitFoundInAppsTracker;
- (id)__detailVisitTracker;
- (id)__disableSiriTracker;
- (id)__enableSiriTracker;
- (id)__foundInAppsProperty;
- (id)__onOffProperty;
- (id)__siriSourceProperty;
- (id)__startEnrollmentTracker;
- (id)__toggleTracker;
- (id)__toggleTrackerNameProperty;
- (id)__visitTracker;
- (void)logDetailToggle:(id)toggle bundleId:(id)id on:(BOOL)on;
- (void)logDetailVisit:(id)visit;
- (void)logDisableSiriConfirmed:(BOOL)confirmed source:(id)source;
- (void)logEnableSiriConfirmed:(BOOL)confirmed source:(id)source;
- (void)logStartEnrollment:(BOOL)enrollment;
- (void)logToggle:(id)toggle on:(BOOL)on;
- (void)logVisit;
@end

@implementation AssistantMetrics

+ (id)sharedMetrics
{
  if (sharedMetrics_onceToken != -1)
  {
    +[AssistantMetrics sharedMetrics];
  }

  v3 = sharedMetrics_sSharedMetrics;

  return v3;
}

uint64_t __33__AssistantMetrics_sharedMetrics__block_invoke()
{
  sharedMetrics_sSharedMetrics = objc_alloc_init(AssistantMetrics);

  return MEMORY[0x2821F96F8]();
}

+ (void)didVisit
{
  v2 = +[AssistantMetrics sharedMetrics];
  [v2 logVisit];
}

+ (void)didEnableSiriConfirmed:(BOOL)confirmed source:(id)source
{
  confirmedCopy = confirmed;
  sourceCopy = source;
  v6 = +[AssistantMetrics sharedMetrics];
  [v6 logEnableSiriConfirmed:confirmedCopy source:sourceCopy];
}

+ (void)didDisableSiriConfirmed:(BOOL)confirmed source:(id)source
{
  confirmedCopy = confirmed;
  sourceCopy = source;
  v6 = +[AssistantMetrics sharedMetrics];
  [v6 logDisableSiriConfirmed:confirmedCopy source:sourceCopy];
}

+ (void)didStartEnrollment:(BOOL)enrollment
{
  enrollmentCopy = enrollment;
  v4 = +[AssistantMetrics sharedMetrics];
  [v4 logStartEnrollment:enrollmentCopy];
}

+ (void)didToggle:(id)toggle on:(BOOL)on
{
  onCopy = on;
  toggleCopy = toggle;
  v6 = +[AssistantMetrics sharedMetrics];
  [v6 logToggle:toggleCopy on:onCopy];
}

+ (void)didDetailVisit:(id)visit
{
  visitCopy = visit;
  v4 = +[AssistantMetrics sharedMetrics];
  [v4 logDetailVisit:visitCopy];
}

+ (void)didDetailToggle:(id)toggle bundleId:(id)id on:(BOOL)on
{
  onCopy = on;
  idCopy = id;
  toggleCopy = toggle;
  v9 = +[AssistantMetrics sharedMetrics];
  [v9 logDetailToggle:toggleCopy bundleId:idCopy on:onCopy];
}

- (id)__onOffProperty
{
  v9[2] = *MEMORY[0x277D85DE8];
  onOffProperty = self->_onOffProperty;
  if (!onOffProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v9[0] = @"on";
    v9[1] = @"off";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = [PETEventPropertyClass propertyWithName:@"val" possibleValues:v5];
    v7 = self->_onOffProperty;
    self->_onOffProperty = v6;

    onOffProperty = self->_onOffProperty;
  }

  return onOffProperty;
}

- (id)__confirmedTrueFalseProperty
{
  v9[2] = *MEMORY[0x277D85DE8];
  confirmedTrueFalseProperty = self->_confirmedTrueFalseProperty;
  if (!confirmedTrueFalseProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v9[0] = @"true";
    v9[1] = @"false";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = [PETEventPropertyClass propertyWithName:@"conf" possibleValues:v5];
    v7 = self->_confirmedTrueFalseProperty;
    self->_confirmedTrueFalseProperty = v6;

    confirmedTrueFalseProperty = self->_confirmedTrueFalseProperty;
  }

  return confirmedTrueFalseProperty;
}

- (id)__toggleTrackerNameProperty
{
  v9[4] = *MEMORY[0x277D85DE8];
  toggleTrackerNameProperty = self->_toggleTrackerNameProperty;
  if (!toggleTrackerNameProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v9[0] = @"HeySiri";
    v9[1] = @"HardwareButton";
    v9[2] = @"Lockscreen";
    v9[3] = @"Search";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
    v6 = [PETEventPropertyClass propertyWithName:@"name" possibleValues:v5];
    v7 = self->_toggleTrackerNameProperty;
    self->_toggleTrackerNameProperty = v6;

    toggleTrackerNameProperty = self->_toggleTrackerNameProperty;
  }

  return toggleTrackerNameProperty;
}

- (id)__detailToggleTrackerNameProperty
{
  v9[6] = *MEMORY[0x277D85DE8];
  detailToggleTrackerNameProperty = self->_detailToggleTrackerNameProperty;
  if (!detailToggleTrackerNameProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v9[0] = @"sirisearch";
    v9[1] = @"sirikit";
    v9[2] = @"foundinapps";
    v9[3] = @"portraittopics";
    v9[4] = @"inAppShow";
    v9[5] = @"inAppLearn";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
    v6 = [PETEventPropertyClass propertyWithName:@"name" possibleValues:v5];
    v7 = self->_detailToggleTrackerNameProperty;
    self->_detailToggleTrackerNameProperty = v6;

    detailToggleTrackerNameProperty = self->_detailToggleTrackerNameProperty;
  }

  return detailToggleTrackerNameProperty;
}

- (id)__siriSourceProperty
{
  v9[3] = *MEMORY[0x277D85DE8];
  siriSourceProperty = self->_siriSourceProperty;
  if (!siriSourceProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v9[0] = @"HeySiri";
    v9[1] = @"HardwareButton";
    v9[2] = @"Unknown";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v6 = [PETEventPropertyClass propertyWithName:@"source" possibleValues:v5];
    v7 = self->_siriSourceProperty;
    self->_siriSourceProperty = v6;

    siriSourceProperty = self->_siriSourceProperty;
  }

  return siriSourceProperty;
}

- (id)__foundInAppsProperty
{
  v9[6] = *MEMORY[0x277D85DE8];
  foundInAppsProperty = self->_foundInAppsProperty;
  if (!foundInAppsProperty)
  {
    PETEventPropertyClass = getPETEventPropertyClass();
    v9[0] = @"com.apple.Maps";
    v9[1] = @"com.apple.mobilemail";
    v9[2] = @"com.apple.MobileSMS";
    v9[3] = @"com.apple.news";
    v9[4] = @"com.apple.MobileAddressBook";
    v9[5] = @"com.apple.mobilecal";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
    v6 = [PETEventPropertyClass propertyWithName:@"bundleId" possibleValues:v5];
    v7 = self->_foundInAppsProperty;
    self->_foundInAppsProperty = v6;

    foundInAppsProperty = self->_foundInAppsProperty;
  }

  return foundInAppsProperty;
}

- (id)__visitTracker
{
  visitTracker = self->_visitTracker;
  if (!visitTracker)
  {
    v4 = [objc_alloc(getPETScalarEventTrackerClass()) initWithFeatureId:@"SiriSettings" event:@"Visit" registerProperties:MEMORY[0x277CBEBF8]];
    v5 = self->_visitTracker;
    self->_visitTracker = v4;

    visitTracker = self->_visitTracker;
  }

  return visitTracker;
}

- (id)__enableSiriTracker
{
  v11[2] = *MEMORY[0x277D85DE8];
  enableSiriTracker = self->_enableSiriTracker;
  if (!enableSiriTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __siriSourceProperty = [(AssistantMetrics *)self __siriSourceProperty];
    v11[0] = __siriSourceProperty;
    __confirmedTrueFalseProperty = [(AssistantMetrics *)self __confirmedTrueFalseProperty];
    v11[1] = __confirmedTrueFalseProperty;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v4 initWithFeatureId:@"SiriSettings" event:@"EnableSiri" registerProperties:v7];
    v9 = self->_enableSiriTracker;
    self->_enableSiriTracker = v8;

    enableSiriTracker = self->_enableSiriTracker;
  }

  return enableSiriTracker;
}

- (id)__disableSiriTracker
{
  v11[2] = *MEMORY[0x277D85DE8];
  disableSiriTracker = self->_disableSiriTracker;
  if (!disableSiriTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __siriSourceProperty = [(AssistantMetrics *)self __siriSourceProperty];
    v11[0] = __siriSourceProperty;
    __confirmedTrueFalseProperty = [(AssistantMetrics *)self __confirmedTrueFalseProperty];
    v11[1] = __confirmedTrueFalseProperty;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v4 initWithFeatureId:@"SiriSettings" event:@"DisableSiri" registerProperties:v7];
    v9 = self->_disableSiriTracker;
    self->_disableSiriTracker = v8;

    disableSiriTracker = self->_disableSiriTracker;
  }

  return disableSiriTracker;
}

- (id)__toggleTracker
{
  v11[2] = *MEMORY[0x277D85DE8];
  toggleTracker = self->_toggleTracker;
  if (!toggleTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __toggleTrackerNameProperty = [(AssistantMetrics *)self __toggleTrackerNameProperty];
    v11[0] = __toggleTrackerNameProperty;
    __onOffProperty = [(AssistantMetrics *)self __onOffProperty];
    v11[1] = __onOffProperty;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v8 = [v4 initWithFeatureId:@"SiriSettings" event:@"Toggle" registerProperties:v7];
    v9 = self->_toggleTracker;
    self->_toggleTracker = v8;

    toggleTracker = self->_toggleTracker;
  }

  return toggleTracker;
}

- (id)__startEnrollmentTracker
{
  v10[1] = *MEMORY[0x277D85DE8];
  startEnrollmentTracker = self->_startEnrollmentTracker;
  if (!startEnrollmentTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __confirmedTrueFalseProperty = [(AssistantMetrics *)self __confirmedTrueFalseProperty];
    v10[0] = __confirmedTrueFalseProperty;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"VoiceEnroll" registerProperties:v6];
    v8 = self->_startEnrollmentTracker;
    self->_startEnrollmentTracker = v7;

    startEnrollmentTracker = self->_startEnrollmentTracker;
  }

  return startEnrollmentTracker;
}

- (id)__detailVisitTracker
{
  detailVisitTracker = self->_detailVisitTracker;
  if (!detailVisitTracker)
  {
    v4 = [objc_alloc(getPETScalarEventTrackerClass()) initWithFeatureId:@"SiriSettings" event:@"DetailVisit" registerProperties:MEMORY[0x277CBEBF8]];
    v5 = self->_detailVisitTracker;
    self->_detailVisitTracker = v4;

    detailVisitTracker = self->_detailVisitTracker;
  }

  return detailVisitTracker;
}

- (id)__detailVisitFoundInAppsTracker
{
  v10[1] = *MEMORY[0x277D85DE8];
  detailVisitFoundInAppsTracker = self->_detailVisitFoundInAppsTracker;
  if (!detailVisitFoundInAppsTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __foundInAppsProperty = [(AssistantMetrics *)self __foundInAppsProperty];
    v10[0] = __foundInAppsProperty;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailVisitFIA" registerProperties:v6];
    v8 = self->_detailVisitFoundInAppsTracker;
    self->_detailVisitFoundInAppsTracker = v7;

    detailVisitFoundInAppsTracker = self->_detailVisitFoundInAppsTracker;
  }

  return detailVisitFoundInAppsTracker;
}

- (id)__detailToggleFoundInAppsTracker
{
  v12[3] = *MEMORY[0x277D85DE8];
  detailToggleFoundInAppsTracker = self->_detailToggleFoundInAppsTracker;
  if (!detailToggleFoundInAppsTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __detailToggleTrackerNameProperty = [(AssistantMetrics *)self __detailToggleTrackerNameProperty];
    __foundInAppsProperty = [(AssistantMetrics *)self __foundInAppsProperty];
    v12[1] = __foundInAppsProperty;
    __onOffProperty = [(AssistantMetrics *)self __onOffProperty];
    v12[2] = __onOffProperty;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v9 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailToggleFIA" registerProperties:v8];
    v10 = self->_detailToggleFoundInAppsTracker;
    self->_detailToggleFoundInAppsTracker = v9;

    detailToggleFoundInAppsTracker = self->_detailToggleFoundInAppsTracker;
  }

  return detailToggleFoundInAppsTracker;
}

- (id)__detailToggleSearchTracker
{
  v10[1] = *MEMORY[0x277D85DE8];
  detailToggleSearchTracker = self->_detailToggleSearchTracker;
  if (!detailToggleSearchTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __onOffProperty = [(AssistantMetrics *)self __onOffProperty];
    v10[0] = __onOffProperty;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailToggleSearch" registerProperties:v6];
    v8 = self->_detailToggleSearchTracker;
    self->_detailToggleSearchTracker = v7;

    detailToggleSearchTracker = self->_detailToggleSearchTracker;
  }

  return detailToggleSearchTracker;
}

- (id)__detailToggleSiriKitTracker
{
  v10[1] = *MEMORY[0x277D85DE8];
  detailToggleSiriKitTracker = self->_detailToggleSiriKitTracker;
  if (!detailToggleSiriKitTracker)
  {
    v4 = objc_alloc(getPETScalarEventTrackerClass());
    __onOffProperty = [(AssistantMetrics *)self __onOffProperty];
    v10[0] = __onOffProperty;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [v4 initWithFeatureId:@"SiriSettings" event:@"DetailToggleSiriKit" registerProperties:v6];
    v8 = self->_detailToggleSiriKitTracker;
    self->_detailToggleSiriKitTracker = v7;

    detailToggleSiriKitTracker = self->_detailToggleSiriKitTracker;
  }

  return detailToggleSiriKitTracker;
}

- (void)logVisit
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __28__AssistantMetrics_logVisit__block_invoke;
  v2[3] = &unk_278CD1548;
  v2[4] = self;
  doAsync(v2);
}

void __28__AssistantMetrics_logVisit__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __visitTracker];
  [v1 trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
}

- (void)logEnableSiriConfirmed:(BOOL)confirmed source:(id)source
{
  sourceCopy = source;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__AssistantMetrics_logEnableSiriConfirmed_source___block_invoke;
  v8[3] = &unk_278CD16B8;
  v8[4] = self;
  v9 = sourceCopy;
  confirmedCopy = confirmed;
  v7 = sourceCopy;
  doAsync(v8);
}

void __50__AssistantMetrics_logEnableSiriConfirmed_source___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __siriSourceProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __enableSiriTracker];
    if (*(a1 + 48))
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    v7[0] = *(a1 + 40);
    v7[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
    [v4 trackEventWithPropertyValues:v6];
  }
}

- (void)logDisableSiriConfirmed:(BOOL)confirmed source:(id)source
{
  sourceCopy = source;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__AssistantMetrics_logDisableSiriConfirmed_source___block_invoke;
  v8[3] = &unk_278CD16B8;
  v8[4] = self;
  v9 = sourceCopy;
  confirmedCopy = confirmed;
  v7 = sourceCopy;
  doAsync(v8);
}

void __51__AssistantMetrics_logDisableSiriConfirmed_source___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __siriSourceProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __disableSiriTracker];
    if (*(a1 + 48))
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    v7[0] = *(a1 + 40);
    v7[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
    [v4 trackEventWithPropertyValues:v6];
  }
}

- (void)logStartEnrollment:(BOOL)enrollment
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__AssistantMetrics_logStartEnrollment___block_invoke;
  v3[3] = &unk_278CD16E0;
  v3[4] = self;
  enrollmentCopy = enrollment;
  doAsync(v3);
}

void __39__AssistantMetrics_logStartEnrollment___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __startEnrollmentTracker];
  v3 = @"false";
  if (*(a1 + 40))
  {
    v3 = @"true";
  }

  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 trackEventWithPropertyValues:v4];
}

- (void)logToggle:(id)toggle on:(BOOL)on
{
  toggleCopy = toggle;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__AssistantMetrics_logToggle_on___block_invoke;
  v8[3] = &unk_278CD16B8;
  v8[4] = self;
  v9 = toggleCopy;
  onCopy = on;
  v7 = toggleCopy;
  doAsync(v8);
}

void __33__AssistantMetrics_logToggle_on___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __toggleTrackerNameProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __toggleTracker];
    if (*(a1 + 48))
    {
      v5 = @"on";
    }

    else
    {
      v5 = @"off";
    }

    v7[0] = *(a1 + 40);
    v7[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
    [v4 trackEventWithPropertyValues:v6];
  }
}

- (void)logDetailVisit:(id)visit
{
  visitCopy = visit;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__AssistantMetrics_logDetailVisit___block_invoke;
  v6[3] = &unk_278CD1708;
  v6[4] = self;
  v7 = visitCopy;
  v5 = visitCopy;
  doAsync(v6);
}

void __35__AssistantMetrics_logDetailVisit___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __foundInAppsProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 __detailVisitFoundInAppsTracker];
    v8[0] = *(a1 + 40);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v5 trackEventWithPropertyValues:v6];
  }

  else
  {
    v7 = [v4 __detailVisitTracker];
    [v7 trackEventWithPropertyValues:MEMORY[0x277CBEBF8]];
  }
}

- (void)logDetailToggle:(id)toggle bundleId:(id)id on:(BOOL)on
{
  toggleCopy = toggle;
  idCopy = id;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__AssistantMetrics_logDetailToggle_bundleId_on___block_invoke;
  v12[3] = &unk_278CD1730;
  v12[4] = self;
  v13 = idCopy;
  v14 = toggleCopy;
  onCopy = on;
  v10 = toggleCopy;
  v11 = idCopy;
  doAsync(v12);
}

void __48__AssistantMetrics_logDetailToggle_bundleId_on___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) __foundInAppsProperty];
  v3 = [v2 isValidValue:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) __detailToggleFoundInAppsTracker];
    v5 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = v5;
    v6 = @"off";
    if (*(a1 + 56))
    {
      v6 = @"on";
    }

    v17 = v6;
    v7 = MEMORY[0x277CBEA60];
    v8 = &v15;
    v9 = 3;
  }

  else
  {
    if ([*(a1 + 48) isEqualToString:@"sirikit"])
    {
      v4 = [*(a1 + 32) __detailToggleSiriKitTracker];
      v10 = @"off";
      if (*(a1 + 56))
      {
        v10 = @"on";
      }

      v14 = v10;
      v7 = MEMORY[0x277CBEA60];
      v8 = &v14;
    }

    else
    {
      if (![*(a1 + 48) isEqualToString:@"sirisearch"])
      {
        return;
      }

      v4 = [*(a1 + 32) __detailToggleSearchTracker];
      v11 = @"off";
      if (*(a1 + 56))
      {
        v11 = @"on";
      }

      v13 = v11;
      v7 = MEMORY[0x277CBEA60];
      v8 = &v13;
    }

    v9 = 1;
  }

  v12 = [v7 arrayWithObjects:v8 count:{v9, v13, v14, v15, v16, v17}];
  [v4 trackEventWithPropertyValues:v12];
}

@end