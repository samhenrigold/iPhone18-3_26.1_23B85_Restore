@interface UNSSettingsGateway
- (UNSSettingsGateway)init;
- (id)_queue_allEffectiveSectionInfos;
- (id)_queue_allSectionInfos;
- (id)_queue_effectiveSectionInfoForSectionID:(id)d;
- (id)_queue_effectiveSectionInfosForSectionIDs:(id)ds;
- (id)_queue_globalScheduledDeliveryTimes;
- (id)_queue_sectionInfoForSectionID:(id)d;
- (id)_queue_sectionInfosForSectionIDs:(id)ds;
- (id)allEffectiveSectionInfo;
- (id)allSectionInfo;
- (id)effectiveSectionInfoForSectionID:(id)d;
- (id)effectiveSectionInfoForSectionIDs:(id)ds;
- (id)globalScheduledDeliveryTimes;
- (id)sectionInfoForSectionID:(id)d;
- (id)sectionInfoForSectionIDs:(id)ds;
- (int64_t)_queue_globalAnnounceCarPlaySetting;
- (int64_t)_queue_globalAnnounceHeadphonesSetting;
- (int64_t)_queue_globalAnnounceSetting;
- (int64_t)_queue_globalContentPreviewSetting;
- (int64_t)_queue_globalNotificationListDisplayStyleSetting;
- (int64_t)_queue_globalPrioritizationSetting;
- (int64_t)_queue_globalScheduledDeliverySetting;
- (int64_t)_queue_globalScheduledDeliveryShowNextSummarySetting;
- (int64_t)_queue_globalSummarizationSetting;
- (int64_t)globalAnnounceCarPlaySetting;
- (int64_t)globalAnnounceHeadphonesSetting;
- (int64_t)globalAnnounceSetting;
- (int64_t)globalContentPreviewSetting;
- (int64_t)globalNotificationListDisplayStyleSetting;
- (int64_t)globalPrioritizationSetting;
- (int64_t)globalScheduledDeliverySetting;
- (int64_t)globalScheduledDeliveryShowNextSummarySetting;
- (int64_t)globalSummarizationSetting;
- (void)_queue_getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion;
- (void)_queue_setGlobalAnnounceCarPlaySetting:(int64_t)setting;
- (void)_queue_setGlobalAnnounceHeadphonesSetting:(int64_t)setting;
- (void)_queue_setGlobalAnnounceSetting:(int64_t)setting;
- (void)_queue_setGlobalContentPreviewSetting:(int64_t)setting;
- (void)_queue_setGlobalNotificationListDisplayStyleSetting:(int64_t)setting;
- (void)_queue_setGlobalPrioritizationSetting:(int64_t)setting;
- (void)_queue_setGlobalScheduledDeliverySetting:(int64_t)setting;
- (void)_queue_setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
- (void)_queue_setGlobalScheduledDeliveryTimes:(id)times;
- (void)_queue_setGlobalSummarizationSetting:(int64_t)setting;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion;
- (void)observer:(id)observer updateGlobalSettings:(id)settings;
- (void)observer:(id)observer updateSectionInfo:(id)info;
- (void)removeObserver:(id)observer;
- (void)setGlobalAnnounceCarPlaySetting:(int64_t)setting;
- (void)setGlobalAnnounceHeadphonesSetting:(int64_t)setting;
- (void)setGlobalAnnounceSetting:(int64_t)setting;
- (void)setGlobalContentPreviewSetting:(int64_t)setting;
- (void)setGlobalNotificationListDisplayStyleSetting:(int64_t)setting;
- (void)setGlobalPrioritizationSetting:(int64_t)setting;
- (void)setGlobalScheduledDeliverySetting:(int64_t)setting;
- (void)setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
- (void)setGlobalScheduledDeliveryTimes:(id)times;
- (void)setGlobalSummarizationSetting:(int64_t)setting;
- (void)setSectionInfo:(id)info forSectionID:(id)d;
@end

@implementation UNSSettingsGateway

- (int64_t)_queue_globalContentPreviewSetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalContentPreviewSetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalContentPreviewsSetting];
}

void *__49__UNSSettingsGateway_globalContentPreviewSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalContentPreviewSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)globalAnnounceSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalAnnounceSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__UNSSettingsGateway_globalAnnounceSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (int64_t)globalContentPreviewSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalContentPreviewSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__UNSSettingsGateway_globalContentPreviewSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__43__UNSSettingsGateway_globalAnnounceSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalAnnounceSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalAnnounceSetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalAnnounceSetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalAnnounceSetting];
}

- (int64_t)_queue_globalAnnounceHeadphonesSetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalAnnounceHeadphonesSetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalAnnounceHeadphonesSetting];
}

- (int64_t)globalAnnounceHeadphonesSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalAnnounceHeadphonesSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__UNSSettingsGateway_globalAnnounceHeadphonesSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__53__UNSSettingsGateway_globalAnnounceHeadphonesSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalAnnounceHeadphonesSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)globalAnnounceCarPlaySetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalAnnounceCarPlaySetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__UNSSettingsGateway_globalAnnounceCarPlaySetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__50__UNSSettingsGateway_globalAnnounceCarPlaySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalAnnounceCarPlaySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalAnnounceCarPlaySetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalAnnounceCarPlaySetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalAnnounceCarPlaySetting];
}

void *__52__UNSSettingsGateway_globalScheduledDeliverySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalScheduledDeliverySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalScheduledDeliverySetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalScheduledDeliverySetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalScheduledDeliverySetting];
}

- (int64_t)globalScheduledDeliverySetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalScheduledDeliverySetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__UNSSettingsGateway_globalScheduledDeliverySetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (id)globalScheduledDeliveryTimes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalScheduledDeliveryTimes", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__UNSSettingsGateway_globalScheduledDeliveryTimes__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __50__UNSSettingsGateway_globalScheduledDeliveryTimes__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_globalScheduledDeliveryTimes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_globalScheduledDeliveryTimes
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalScheduledDeliveryTimes from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  effectiveGlobalScheduledDeliveryTimes = [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalScheduledDeliveryTimes];

  return effectiveGlobalScheduledDeliveryTimes;
}

- (int64_t)_queue_globalScheduledDeliveryShowNextSummarySetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalScheduledDeliveryShowNextSummarySetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalScheduledDeliveryShowNextSummarySetting];
}

void *__67__UNSSettingsGateway_globalScheduledDeliveryShowNextSummarySetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalScheduledDeliveryShowNextSummarySetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)globalScheduledDeliveryShowNextSummarySetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalScheduledDeliveryShowNextSummarySetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__UNSSettingsGateway_globalScheduledDeliveryShowNextSummarySetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (int64_t)globalNotificationListDisplayStyleSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalNotificationListDisplayStyleSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__UNSSettingsGateway_globalNotificationListDisplayStyleSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__63__UNSSettingsGateway_globalNotificationListDisplayStyleSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalNotificationListDisplayStyleSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalNotificationListDisplayStyleSetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalNotificationListDisplayStyleSetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalNotificationListDisplayStyleSetting];
}

- (int64_t)globalSummarizationSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalSummarizationSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__UNSSettingsGateway_globalSummarizationSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__48__UNSSettingsGateway_globalSummarizationSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalSummarizationSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalSummarizationSetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalSummarizationSetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalSummarizationSetting];
}

- (int64_t)globalPrioritizationSetting
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting GlobalPrioritizationSetting", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__UNSSettingsGateway_globalPrioritizationSetting__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__49__UNSSettingsGateway_globalPrioritizationSetting__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_globalPrioritizationSetting];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_queue_globalPrioritizationSetting
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v6 = 138543362;
    v7 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting globalPrioritizationSetting from settingsGateway: [%{public}@]", &v6, 0xCu);
  }

  return [(BBSettingsGateway *)self->_settingsGateway effectiveGlobalHighlightsSetting];
}

- (UNSSettingsGateway)init
{
  v13.receiver = self;
  v13.super_class = UNSSettingsGateway;
  v2 = [(UNSSettingsGateway *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.usernotificationsserver.SettingsGateway", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:v2->_queue];
    settingsGateway = v2->_settingsGateway;
    v2->_settingsGateway = v8;

    v10 = [objc_alloc(MEMORY[0x277CF3550]) initWithQueue:v2->_queue];
    settingsObserver = v2->_settingsObserver;
    v2->_settingsObserver = v10;

    [(BBObserver *)v2->_settingsObserver setObserverFeed:512];
    [(BBObserver *)v2->_settingsObserver setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(BBSettingsGateway *)self->_settingsGateway invalidate];
  v3.receiver = self;
  v3.super_class = UNSSettingsGateway;
  [(UNSSettingsGateway *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__UNSSettingsGateway_addObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__UNSSettingsGateway_removeObserver___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)setSectionInfo:(id)info forSectionID:(id)d
{
  infoCopy = info;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__UNSSettingsGateway_setSectionInfo_forSectionID___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = infoCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (id)effectiveSectionInfoForSectionID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = dCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting effectiveSectionInfo for section identifier: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__UNSSettingsGateway_effectiveSectionInfoForSectionID___block_invoke;
  block[3] = &unk_279E109D8;
  v11 = dCopy;
  v12 = &v13;
  block[4] = self;
  v7 = dCopy;
  dispatch_sync(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __55__UNSSettingsGateway_effectiveSectionInfoForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_effectiveSectionInfoForSectionID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sectionInfoForSectionID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = dCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting sectionInfo for section identifier: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__UNSSettingsGateway_sectionInfoForSectionID___block_invoke;
  block[3] = &unk_279E109D8;
  v11 = dCopy;
  v12 = &v13;
  block[4] = self;
  v7 = dCopy;
  dispatch_sync(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__UNSSettingsGateway_sectionInfoForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sectionInfoForSectionID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)effectiveSectionInfoForSectionIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = dsCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting effectiveSectionInfos for section identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__UNSSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke;
  block[3] = &unk_279E109D8;
  v11 = dsCopy;
  v12 = &v13;
  block[4] = self;
  v7 = dsCopy;
  dispatch_sync(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __56__UNSSettingsGateway_effectiveSectionInfoForSectionIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_effectiveSectionInfosForSectionIDs:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sectionInfoForSectionIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = dsCopy;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting sectionInfos for section identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__UNSSettingsGateway_sectionInfoForSectionIDs___block_invoke;
  block[3] = &unk_279E109D8;
  v11 = dsCopy;
  v12 = &v13;
  block[4] = self;
  v7 = dsCopy;
  dispatch_sync(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __47__UNSSettingsGateway_sectionInfoForSectionIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_sectionInfosForSectionIDs:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = dsCopy;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "Getting sectionInfos for section identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UNSSettingsGateway_getSectionInfoForSectionIDs_withCompletion___block_invoke;
  block[3] = &unk_279E10290;
  block[4] = self;
  v13 = dsCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dsCopy;
  dispatch_async(queue, block);
}

- (id)allEffectiveSectionInfo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting allEffectiveSectionInfos", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__UNSSettingsGateway_allEffectiveSectionInfo__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __45__UNSSettingsGateway_allEffectiveSectionInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allEffectiveSectionInfos];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)allSectionInfo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting allSectionInfos", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__UNSSettingsGateway_allSectionInfo__block_invoke;
  v7[3] = &unk_279E11198;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __36__UNSSettingsGateway_allSectionInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_allSectionInfos];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setGlobalContentPreviewSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__UNSSettingsGateway_setGlobalContentPreviewSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalAnnounceSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__UNSSettingsGateway_setGlobalAnnounceSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalAnnounceHeadphonesSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__UNSSettingsGateway_setGlobalAnnounceHeadphonesSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalAnnounceCarPlaySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__UNSSettingsGateway_setGlobalAnnounceCarPlaySetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalScheduledDeliverySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__UNSSettingsGateway_setGlobalScheduledDeliverySetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalScheduledDeliveryTimes:(id)times
{
  timesCopy = times;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UNSSettingsGateway_setGlobalScheduledDeliveryTimes___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = timesCopy;
  v6 = timesCopy;
  dispatch_sync(queue, v7);
}

- (void)setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__UNSSettingsGateway_setGlobalScheduledDeliveryShowNextSummarySetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalNotificationListDisplayStyleSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__UNSSettingsGateway_setGlobalNotificationListDisplayStyleSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalSummarizationSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__UNSSettingsGateway_setGlobalSummarizationSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (void)setGlobalPrioritizationSetting:(int64_t)setting
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__UNSSettingsGateway_setGlobalPrioritizationSetting___block_invoke;
  v4[3] = &unk_279E111C0;
  v4[4] = self;
  v4[5] = setting;
  dispatch_sync(queue, v4);
}

- (id)_queue_effectiveSectionInfoForSectionID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = dCopy;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting effective section info", &v10, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionID:dCopy];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = dCopy;
    v12 = 1024;
    v13 = v7 != 0;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got effective section info [ hasResult: %d ]", &v10, 0x12u);
  }

  return v7;
}

- (id)_queue_sectionInfoForSectionID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = MEMORY[0x277CE20B0];
  v6 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = dCopy;
    _os_log_impl(&dword_270AA8000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting section info", &v10, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway sectionInfoForSectionID:dCopy];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = dCopy;
    v12 = 1024;
    v13 = v7 != 0;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got section info [ hasResult: %d ]", &v10, 0x12u);
  }

  return v7;
}

- (id)_queue_effectiveSectionInfosForSectionIDs:(id)ds
{
  v11 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v9 = 138543362;
    v10 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting effective section infos from settingsGateway: [%{public}@]", &v9, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway effectiveSectionInfoForSectionIDs:dsCopy];

  return v7;
}

- (id)_queue_sectionInfosForSectionIDs:(id)ds
{
  v11 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v9 = 138543362;
    v10 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Getting section infos from settingsGateway: [%{public}@]", &v9, 0xCu);
  }

  v7 = [(BBSettingsGateway *)self->_settingsGateway sectionInfoForSectionIDs:dsCopy];

  return v7;
}

- (void)_queue_getSectionInfoForSectionIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  settingsGateway = self->_settingsGateway;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__UNSSettingsGateway__queue_getSectionInfoForSectionIDs_withCompletion___block_invoke;
  v11[3] = &unk_279E111E8;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  [(BBSettingsGateway *)settingsGateway getSectionInfoForSectionIDs:v10 withCompletion:v11];
}

void __72__UNSSettingsGateway__queue_getSectionInfoForSectionIDs_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 1024;
    v9 = v3 != 0;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got section infos [ hasResult: %d ]", &v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_queue_allEffectiveSectionInfos
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting all effective section infos from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  allEffectiveSectionInfo = [(BBSettingsGateway *)self->_settingsGateway allEffectiveSectionInfo];

  return allEffectiveSectionInfo;
}

- (id)_queue_allSectionInfos
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "Getting all section infos from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  allSectionInfo = [(BBSettingsGateway *)self->_settingsGateway allSectionInfo];

  return allSectionInfo;
}

- (void)_queue_setGlobalContentPreviewSetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalContentPreviewSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalContentPreviewsSetting:setting];
}

- (void)_queue_setGlobalAnnounceSetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalAnnounceSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalAnnounceSetting:setting];
}

- (void)_queue_setGlobalAnnounceHeadphonesSetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalAnnounceHeadphonesSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalAnnounceHeadphonesSetting:setting];
}

- (void)_queue_setGlobalAnnounceCarPlaySetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalAnnounceCarPlaySetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalAnnounceCarPlaySetting:setting];
}

- (void)_queue_setGlobalScheduledDeliverySetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalScheduledDeliverySetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalScheduledDeliverySetting:setting];
}

- (void)_queue_setGlobalScheduledDeliveryTimes:(id)times
{
  v9 = *MEMORY[0x277D85DE8];
  timesCopy = times;
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalScheduledDeliveryTimes from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalScheduledDeliveryTimes:timesCopy];
}

- (void)_queue_setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalScheduledDeliveryShowNextSummarySetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:setting];
}

- (void)_queue_setGlobalNotificationListDisplayStyleSetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalNotificationListDisplayStyleSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalNotificationListDisplayStyleSetting:setting];
}

- (void)_queue_setGlobalSummarizationSetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalSummarizationSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalSummarizationSetting:setting];
}

- (void)_queue_setGlobalPrioritizationSetting:(int64_t)setting
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    settingsGateway = self->_settingsGateway;
    v7 = 138543362;
    v8 = settingsGateway;
    _os_log_impl(&dword_270AA8000, v5, OS_LOG_TYPE_DEFAULT, "Setting globalPrioritizationSetting from settingsGateway: [%{public}@]", &v7, 0xCu);
  }

  [(BBSettingsGateway *)self->_settingsGateway setEffectiveGlobalHighlightsSetting:setting];
}

- (void)observer:(id)observer updateSectionInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__UNSSettingsGateway_observer_updateSectionInfo___block_invoke;
  v8[3] = &unk_279E104B8;
  v9 = infoCopy;
  selfCopy = self;
  v7 = infoCopy;
  dispatch_async(queue, v8);
}

void __49__UNSSettingsGateway_observer_updateSectionInfo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [*(a1 + 32) sectionID];
  v4 = [v2 initWithObjects:{v3, 0}];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(*(a1 + 40) + 8);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) settingsGateway:*(a1 + 40) didUpdateSectionInfoForSectionIDs:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)observer:(id)observer updateGlobalSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__UNSSettingsGateway_observer_updateGlobalSettings___block_invoke;
  v8[3] = &unk_279E104B8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_async(queue, v8);
}

void __52__UNSSettingsGateway_observer_updateGlobalSettings___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) settingsGateway:*(a1 + 32) didUpdateGlobalSettings:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end