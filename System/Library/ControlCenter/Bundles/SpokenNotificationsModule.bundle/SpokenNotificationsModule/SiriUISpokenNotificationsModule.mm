@interface SiriUISpokenNotificationsModule
- (BOOL)_isEligibleForAnnounceNotificationsWithVendorID:(unsigned int)d productID:(unsigned int)iD;
- (BOOL)isDeviceInEligibleAnnounceNotificationsConfiguration;
- (SiriUISpokenNotificationsModule)initWithNibName:(id)name bundle:(id)bundle;
- (void)_createMenuItems;
- (void)_fetchAnnounceSettingsAndRefreshState;
- (void)_muteSpokenMessages;
- (void)_refreshState;
- (void)_refreshStateWithSelected:(BOOL)selected expanded:(BOOL)expanded;
- (void)_turnOffSpokenMessagesForTheDay;
- (void)_turnOnSpokenMessages;
- (void)_updateMenuItems;
- (void)_updateMenuItemsWithDate:(id)date;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)didTransitionToExpandedContentMode:(BOOL)mode;
- (void)setContentModuleContext:(id)context;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation SiriUISpokenNotificationsModule

- (SiriUISpokenNotificationsModule)initWithNibName:(id)name bundle:(id)bundle
{
  v18.receiver = self;
  v18.super_class = SiriUISpokenNotificationsModule;
  v4 = [(CCUIMenuModuleViewController *)&v18 initWithNibName:name bundle:bundle];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setIndentation_(v4, v5, 2);
    if (objc_msgSend_isExpanded(v6, v7, v8))
    {
      objc_msgSend__updateMenuItems(v6, v9, v10);
    }

    v11 = dispatch_queue_create("com.apple.siri.SpokenNotificationsModuleQueue", 0);
    spokenNotificationsModuleQueue = v6->_spokenNotificationsModuleQueue;
    v6->_spokenNotificationsModuleQueue = v11;

    v13 = objc_alloc(MEMORY[0x29EDBFE40]);
    v15 = objc_msgSend_initWithQueue_(v13, v14, v6->_spokenNotificationsModuleQueue);
    settingsGateway = v6->_settingsGateway;
    v6->_settingsGateway = v15;
  }

  return v6;
}

- (void)_updateMenuItems
{
  if (!self->_menuItems)
  {
    objc_msgSend__createMenuItems(self, a2, v2);
  }

  objc_initWeak(&location, self);
  v6 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], v4, v5);
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = sub_29C9EE034;
  v12 = &unk_29F33EB58;
  objc_copyWeak(&v13, &location);
  objc_msgSend_getSpokenNotificationTemporarilyDisabledEndDateWithCompletion_(v6, v7, &v9);

  objc_msgSend_setMenuItems_(self, v8, self->_menuItems, v9, v10, v11, v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_updateMenuItemsWithDate:(id)date
{
  dateCopy = date;
  objc_msgSend__createMenuItems(self, v4, v5);
  if (dateCopy)
  {
    v8 = objc_msgSend_currentCalendar(MEMORY[0x29EDB8D98], v6, v7);
    v11 = objc_msgSend_date(MEMORY[0x29EDB8DB0], v9, v10);
    isDate_inSameDayAsDate = objc_msgSend_isDate_inSameDayAsDate_(v8, v12, dateCopy, v11);

    if (isDate_inSameDayAsDate)
    {
      v14 = objc_alloc_init(MEMORY[0x29EDB9F78]);
      objc_msgSend_setDateStyle_(v14, v15, 0);
      objc_msgSend_setTimeStyle_(v14, v16, 1);
      v19 = objc_msgSend_currentCalendar(MEMORY[0x29EDB8D98], v17, v18);
      v21 = objc_msgSend_component_fromDate_(v19, v20, 32, dateCopy);

      if (v21 % 12 == 1)
      {
        v22 = @"SPOKEN_NOTIFICATIONS_MUTED_UNTIL_TIME_SUBTEXT_SINGULAR";
      }

      else
      {
        v22 = @"SPOKEN_NOTIFICATIONS_MUTED_UNTIL_TIME_SUBTEXT_PLURAL";
      }

      v23 = MEMORY[0x29EDBA0F8];
      v24 = MEMORY[0x29EDB9F48];
      v25 = v22;
      v26 = objc_opt_class();
      v28 = objc_msgSend_bundleForClass_(v24, v27, v26);
      v30 = objc_msgSend_localizedStringForKey_value_table_(v28, v29, v25, &stru_2A23F1BE8, 0);

      v32 = objc_msgSend_stringFromDate_(v14, v31, dateCopy);
      v34 = objc_msgSend_stringWithFormat_(v23, v33, v30, v32);

      objc_msgSend_setSelected_(self->_menuItemMute, v35, 1);
      objc_msgSend_setSubtitle_(self->_menuItemMute, v36, v34);

      goto LABEL_10;
    }

    v38 = 1320;
  }

  else
  {
    v38 = 1304;
  }

  objc_msgSend_setSelected_(*(&self->super.super.super.super.super.isa + v38), v6, 1);
LABEL_10:
  objc_msgSend_setMenuItems_(self, v37, self->_menuItems);
}

- (void)_createMenuItems
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  menuItems = self->_menuItems;
  self->_menuItems = v3;

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v6 = MEMORY[0x29EDB9F48];
  v7 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v6, v8, v7);
  v11 = objc_msgSend_localizedStringForKey_value_table_(v9, v10, @"SPOKEN_NOTIFICATIONS_ON", &stru_2A23F1BE8, 0);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = sub_29C9EE6DC;
  v45[3] = &unk_29F33EB80;
  objc_copyWeak(&v46, &location);
  v13 = objc_msgSend_initWithTitle_identifier_handler_(v5, v12, v11, @"SPOKEN_NOTIFICATIONS_ON", v45);
  menuItemOn = self->_menuItemOn;
  self->_menuItemOn = v13;

  v15 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v16 = MEMORY[0x29EDB9F48];
  v17 = objc_opt_class();
  v19 = objc_msgSend_bundleForClass_(v16, v18, v17);
  v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"SPOKEN_NOTIFICATIONS_MUTE", &stru_2A23F1BE8, 0);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = sub_29C9EE720;
  v43[3] = &unk_29F33EB80;
  objc_copyWeak(&v44, &location);
  v23 = objc_msgSend_initWithTitle_identifier_handler_(v15, v22, v21, @"SPOKEN_NOTIFICATIONS_MUTE", v43);
  menuItemMute = self->_menuItemMute;
  self->_menuItemMute = v23;

  v25 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v26 = MEMORY[0x29EDB9F48];
  v27 = objc_opt_class();
  v29 = objc_msgSend_bundleForClass_(v26, v28, v27);
  v31 = objc_msgSend_localizedStringForKey_value_table_(v29, v30, @"SPOKEN_NOTIFICATIONS_OFF", &stru_2A23F1BE8, 0);
  v38 = MEMORY[0x29EDCA5F8];
  v39 = 3221225472;
  v40 = sub_29C9EE764;
  v41 = &unk_29F33EB80;
  objc_copyWeak(&v42, &location);
  v33 = objc_msgSend_initWithTitle_identifier_handler_(v25, v32, v31, @"SPOKEN_NOTIFICATIONS_OFF", &v38);
  menuItemOffForTheDay = self->_menuItemOffForTheDay;
  self->_menuItemOffForTheDay = v33;

  objc_msgSend_addObject_(self->_menuItems, v35, self->_menuItemOn, v38, v39, v40, v41);
  objc_msgSend_addObject_(self->_menuItems, v36, self->_menuItemMute);
  objc_msgSend_addObject_(self->_menuItems, v37, self->_menuItemOffForTheDay);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

- (void)_turnOnSpokenMessages
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SiriUISpokenNotificationsModule _turnOnSpokenMessages]";
    _os_log_impl(&dword_29C9ED000, v3, OS_LOG_TYPE_DEFAULT, "%s Turning on Spoken Messages", &v19, 0xCu);
  }

  v6 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], v4, v5);
  objc_msgSend_setSpokenNotificationTemporarilyDisabledUntil_(v6, v7, 0);

  contentModuleContext = self->_contentModuleContext;
  v9 = MEMORY[0x29EDC0CF0];
  v10 = MEMORY[0x29EDB9F48];
  v11 = objc_opt_class();
  v13 = objc_msgSend_bundleForClass_(v10, v12, v11);
  v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"SPOKEN_NOTIFICATIONS_ON_STATUS_UPDATE", &stru_2A23F1BE8, 0);
  v17 = objc_msgSend_statusUpdateWithMessage_type_(v9, v16, v15, 0);
  objc_msgSend_enqueueStatusUpdate_(contentModuleContext, v18, v17);
}

- (void)_muteSpokenMessages
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SiriUISpokenNotificationsModule _muteSpokenMessages]";
    _os_log_impl(&dword_29C9ED000, v3, OS_LOG_TYPE_DEFAULT, "%s Muting Spoken Messages for an hour", &v22, 0xCu);
  }

  v6 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x29EDB8DB0], v4, v5, 3600.0);
  v9 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], v7, v8);
  objc_msgSend_setSpokenNotificationTemporarilyDisabledUntil_(v9, v10, v6);

  contentModuleContext = self->_contentModuleContext;
  v12 = MEMORY[0x29EDC0CF0];
  v13 = MEMORY[0x29EDB9F48];
  v14 = objc_opt_class();
  v16 = objc_msgSend_bundleForClass_(v13, v15, v14);
  v18 = objc_msgSend_localizedStringForKey_value_table_(v16, v17, @"SPOKEN_NOTIFICATIONS_MUTE_STATUS_UPDATE", &stru_2A23F1BE8, 0);
  v20 = objc_msgSend_statusUpdateWithMessage_type_(v12, v19, v18, 0);
  objc_msgSend_enqueueStatusUpdate_(contentModuleContext, v21, v20);
}

- (void)_turnOffSpokenMessagesForTheDay
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[SiriUISpokenNotificationsModule _turnOffSpokenMessagesForTheDay]";
    _os_log_impl(&dword_29C9ED000, v3, OS_LOG_TYPE_DEFAULT, "%s Muting SpokenMessages until tomorrow", &v27, 0xCu);
  }

  v6 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x29EDB8DB0], v4, v5, 86400.0);
  v9 = objc_msgSend_currentCalendar(MEMORY[0x29EDB8D98], v7, v8);
  v11 = objc_msgSend_startOfDayForDate_(v9, v10, v6);

  v14 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], v12, v13);
  objc_msgSend_setSpokenNotificationTemporarilyDisabledUntil_(v14, v15, v11);

  contentModuleContext = self->_contentModuleContext;
  v17 = MEMORY[0x29EDC0CF0];
  v18 = MEMORY[0x29EDB9F48];
  v19 = objc_opt_class();
  v21 = objc_msgSend_bundleForClass_(v18, v20, v19);
  v23 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"SPOKEN_NOTIFICATIONS_OFF_STATUS_UPDATE", &stru_2A23F1BE8, 0);
  v25 = objc_msgSend_statusUpdateWithMessage_type_(v17, v24, v23, 0);
  objc_msgSend_enqueueStatusUpdate_(contentModuleContext, v26, v25);
}

- (BOOL)_isEligibleForAnnounceNotificationsWithVendorID:(unsigned int)d productID:(unsigned int)iD
{
  if (d != 76)
  {
    return 0;
  }

  v4 = (iD != 8209) & ((iD - 8194 > 0xE) | (0x3F64u >> (iD - 2)));
  if (iD == 8230)
  {
    LOBYTE(v4) = 0;
  }

  return (iD - 8194 < 0x2E) & (0x207C7BB7FF9BuLL >> (iD - 2)) & v4;
}

- (BOOL)isDeviceInEligibleAnnounceNotificationsConfiguration
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_sharedInstance(MEMORY[0x29EDBFE18], a2, v2);
  v7 = objc_msgSend_available(v4, v5, v6);

  if (!v7)
  {
    v28 = *MEMORY[0x29EDBFA98];
    if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[SiriUISpokenNotificationsModule isDeviceInEligibleAnnounceNotificationsConfiguration]";
      _os_log_impl(&dword_29C9ED000, v28, OS_LOG_TYPE_DEFAULT, "%s BT is not available, falling back to assume an eligible device is connected", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x29EDBFE18], v8, v9, 0);
  v13 = objc_msgSend_connectedDevices(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v37, 16);
  if (!v15)
  {

    goto LABEL_16;
  }

  v18 = v15;
  v19 = 0;
  v20 = *v32;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v32 != v20)
      {
        objc_enumerationMutation(v13);
      }

      v22 = *(*(&v31 + 1) + 8 * i);
      v23 = objc_msgSend_vendorId(v22, v16, v17);
      v26 = objc_msgSend_productId(v22, v24, v25);
      v19 |= objc_msgSend__isEligibleForAnnounceNotificationsWithVendorID_productID_(self, v27, v23, v26);
    }

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v37, 16);
  }

  while (v18);

  if (v19)
  {
LABEL_13:
    if (self->_headphonesAnnounceEnabled)
    {
      return 1;
    }
  }

LABEL_16:
  if (!self->_hearingAidsAnnounceEnabled)
  {
    return self->_builtInSpeakerAnnounceEnabled;
  }

  return 1;
}

- (void)_refreshState
{
  v4 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], a2, v2);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C9EEF38;
  v6[3] = &unk_29F33EBD0;
  v6[4] = self;
  objc_msgSend_getSpokenNotificationTemporarilyDisabledStatusWithCompletion_(v4, v5, v6);
}

- (void)_fetchAnnounceSettingsAndRefreshState
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], a2, v2);
  v7 = objc_msgSend_announceNotificationsOnHearingAidsSupported(v4, v5, v6);

  v10 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], v8, v9);
  v13 = objc_msgSend_announceNotificationsOnHearingAidsEnabled(v10, v11, v12);

  self->_headphonesAnnounceEnabled = objc_msgSend_effectiveGlobalAnnounceHeadphonesSetting(self->_settingsGateway, v14, v15) != 0;
  self->_hearingAidsAnnounceEnabled = v7 & v13;
  v18 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], v16, v17);
  self->_builtInSpeakerAnnounceEnabled = objc_msgSend_announceNotificationsOnBuiltInSpeakerEnabled(v18, v19, v20);

  v21 = *MEMORY[0x29EDBFA98];
  if (os_log_type_enabled(*MEMORY[0x29EDBFA98], OS_LOG_TYPE_DEFAULT))
  {
    headphonesAnnounceEnabled = self->_headphonesAnnounceEnabled;
    builtInSpeakerAnnounceEnabled = self->_builtInSpeakerAnnounceEnabled;
    v26 = 136316162;
    v27 = "[SiriUISpokenNotificationsModule _fetchAnnounceSettingsAndRefreshState]";
    v28 = 1024;
    v29 = headphonesAnnounceEnabled;
    v30 = 1024;
    v31 = v7;
    v32 = 1024;
    v33 = v13 & 1;
    v34 = 1024;
    v35 = builtInSpeakerAnnounceEnabled;
    _os_log_impl(&dword_29C9ED000, v21, OS_LOG_TYPE_DEFAULT, "%s fetched announce settings: headphones:%d, hearing aids supported: %d, hearing aids enabled: %d, builtin speaker: %d", &v26, 0x24u);
  }

  objc_msgSend__refreshState(self, v22, v23);
}

- (void)_refreshStateWithSelected:(BOOL)selected expanded:(BOOL)expanded
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C9EF288;
  v4[3] = &unk_29F33EBF8;
  expandedCopy = expanded;
  v4[4] = self;
  selectedCopy = selected;
  objc_msgSend_performWithoutAnimation_(MEMORY[0x29EDC7DA0], a2, v4);
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  tappedCopy = tapped;
  eventCopy = event;
  if (objc_msgSend_isDeviceInEligibleAnnounceNotificationsConfiguration(self, v8, v9))
  {
    objc_initWeak(&location, self);
    v12 = objc_msgSend_sharedPreferences(MEMORY[0x29EDBFAA0], v10, v11);
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = sub_29C9EF4B0;
    v25[3] = &unk_29F33EC20;
    objc_copyWeak(&v26, &location);
    objc_msgSend_getSpokenNotificationTemporarilyDisabledStatusWithCompletion_(v12, v13, v25);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    contentModuleContext = self->_contentModuleContext;
    v15 = MEMORY[0x29EDC0CF0];
    v16 = MEMORY[0x29EDB9F48];
    v17 = objc_opt_class();
    v19 = objc_msgSend_bundleForClass_(v16, v18, v17);
    v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"SPOKEN_NOTIFICATIONS_REQUIRES_H1_STATUS_UPDATE", &stru_2A23F1BE8, 0);
    v23 = objc_msgSend_statusUpdateWithMessage_type_(v15, v22, v21, 0);
    objc_msgSend_enqueueStatusUpdate_(contentModuleContext, v24, v23);
  }
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  if (mode)
  {
    self->_selectedOnExpansion = objc_msgSend_isSelected(self, a2, mode);
    objc_msgSend__refreshStateWithSelected_expanded_(self, v5, 0, 1);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = sub_29C9EF614;
    v8[3] = &unk_29F33EC48;
    v8[4] = self;
    objc_msgSend_performWithoutAnimation_(MEMORY[0x29EDC7DA0], v6, v8);
  }

  else
  {
    objc_msgSend__refreshStateWithSelected_expanded_(self, a2, self->_selectedOnExpansion, 0);
  }

  v7.receiver = self;
  v7.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v7 willTransitionToExpandedContentMode:modeCopy];
}

- (void)didTransitionToExpandedContentMode:(BOOL)mode
{
  v7.receiver = self;
  v7.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v7 didTransitionToExpandedContentMode:?];
  if (!mode)
  {
    objc_msgSend__refreshState(self, v5, v6);
  }
}

- (void)setContentModuleContext:(id)context
{
  objc_storeStrong(&self->_contentModuleContext, context);
  contextCopy = context;
  v6.receiver = self;
  v6.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v6 setContentModuleContext:contextCopy];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v18 viewDidLoad];
  v3 = MEMORY[0x29EDC0CA0];
  v4 = MEMORY[0x29EDB9F48];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = objc_msgSend_descriptionForPackageNamed_inBundle_(v3, v8, @"AnnounceNotifications", v7);

  objc_msgSend_setGlyphPackageDescription_(self, v10, v9);
  v11 = MEMORY[0x29EDB9F48];
  v12 = objc_opt_class();
  v14 = objc_msgSend_bundleForClass_(v11, v13, v12);
  v16 = objc_msgSend_localizedStringForKey_value_table_(v14, v15, @"SPOKEN_NOTIFICATIONS_TITLE", &stru_2A23F1BE8, 0);
  objc_msgSend_setTitle_(self, v17, v16);
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SiriUISpokenNotificationsModule;
  [(CCUIMenuModuleViewController *)&v8 viewWillAppear:appear];
  objc_initWeak(&location, self);
  spokenNotificationsModuleQueue = self->_spokenNotificationsModuleQueue;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C9EF8A4;
  v5[3] = &unk_29F33EC70;
  objc_copyWeak(&v6, &location);
  dispatch_async(spokenNotificationsModuleQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end