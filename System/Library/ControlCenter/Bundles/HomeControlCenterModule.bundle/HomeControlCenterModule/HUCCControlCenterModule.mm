@interface HUCCControlCenterModule
- (BOOL)isDeviceUnlockedForControlCenterModuleViewController:(id)controller;
- (BOOL)isDeviceUnlockedForSmartGridContentViewController:(id)controller;
- (HUCCControlCenterModule)init;
- (id)contentViewControllerForContext:(id)context;
- (id)homeKitActiveAssertionReason;
- (void)addStateSubscriptionReasonToDataModel;
- (void)cancelRegistration:(id)registration;
- (void)cancelScheduledCharacteristicDeregistration;
- (void)controlCenterModuleViewController:(id)controller didChangeDisplayedItems:(id)items;
- (void)controlCenterModuleViewController:(id)controller didStartDisplayingHome:(id)home;
- (void)controlCenterModuleViewController:(id)controller moduleDidDisappear:(BOOL)disappear;
- (void)controlCenterModuleViewController:(id)controller moduleWillAppear:(BOOL)appear;
- (void)dealloc;
- (void)endHomeKitActiveAssertion;
- (void)launchHomeAppForControlCenterModuleViewController:(id)controller;
- (void)launchHomeAppForSmartGridContentViewController:(id)controller;
- (void)lockStateWasUpdated:(BOOL)updated;
- (void)registerForAnalytics;
- (void)registerForItems:(NSSet *)items inHome:(HMHome *)home currentRegistration:(id)registration completionBlock:(id)block;
- (void)removeStateSubscriptionReasonFromDataModel;
- (void)resetFetchedMediaItems;
- (void)scheduleCharacteristicDeregistration;
- (void)setContentModuleContext:(id)context;
- (void)setupHomeKitActiveAssertionIfNeeded;
- (void)smartGridContentViewController:(id)controller viewWillAppear:(BOOL)appear;
@end

@implementation HUCCControlCenterModule

- (HUCCControlCenterModule)init
{
  v20.receiver = self;
  v20.super_class = HUCCControlCenterModule;
  v2 = [(HUCCControlCenterModule *)&v20 init];
  if (v2)
  {
    v3 = _os_feature_enabled_impl();
    if (v3)
    {
      v6 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v4, v5);
      objc_msgSend_bootstrap(v6, v7, v8);

      objc_msgSend_registerForAnalytics(v2, v9, v10);
    }

    else
    {
      HUCCPerformCommonInitialization(v3, v4);
    }

    v13 = objc_msgSend_UUID(MEMORY[0x29EDBA140], v11, v12);
    moduleUniqueIdentifier = v2->_moduleUniqueIdentifier;
    v2->_moduleUniqueIdentifier = v13;

    v15 = [HUCCLockStateHandler alloc];
    v17 = objc_msgSend_initWithDelegate_(v15, v16, v2);
    lockStateHandler = v2->_lockStateHandler;
    v2->_lockStateHandler = v17;

    if (qword_2A1A12860 != -1)
    {
      sub_29C9AB980();
    }
  }

  return v2;
}

- (void)dealloc
{
  v4 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], a2, v2);
  v7 = objc_msgSend_moduleUniqueIdentifier(self, v5, v6);
  objc_msgSend_setModuleWithIdentifier_subscribedToHome_(v4, v8, v7, 0);

  objc_msgSend_endHomeKitActiveAssertion(self, v9, v10);
  v11.receiver = self;
  v11.super_class = HUCCControlCenterModule;
  [(HUCCControlCenterModule *)&v11 dealloc];
}

- (id)contentViewControllerForContext:(id)context
{
  v18[3] = *MEMORY[0x29EDCA608];
  contextCopy = context;
  v7 = objc_msgSend_viewController(self, v5, v6);

  if (!v7)
  {
    if (_os_feature_enabled_impl())
    {
      sub_29C9AB9A8(self, v18);
    }

    else
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_29C992000, v10, OS_LOG_TYPE_DEFAULT, "HUCCControlCenterModule will initialize: HUCCSmartGridContentViewController", v17, 2u);
      }

      v11 = [HUCCSmartGridContentViewController alloc];
      v13 = objc_msgSend_initWithDelegate_(v11, v12, self);
      objc_msgSend_setViewController_(self, v14, v13);
    }
  }

  v15 = objc_msgSend_viewController(self, v8, v9);

  return v15;
}

- (void)setContentModuleContext:(id)context
{
  objc_storeStrong(&self->_contentModuleContext, context);
  contextCopy = context;
  objc_opt_class();
  v8 = objc_msgSend_viewController(self, v6, v7);
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v14 = v9;

  v10 = [HUCCOpenURLHandler alloc];
  v12 = objc_msgSend_initWithCCModuleContext_(v10, v11, contextCopy);

  objc_msgSend_setURLHandler_(v14, v13, v12);
}

- (void)lockStateWasUpdated:(BOOL)updated
{
  updatedCopy = updated;
  objc_opt_class();
  v7 = objc_msgSend_viewController(self, v5, v6);
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_msgSend_setAccessAllowedForCurrentLockState_(v9, v10, updatedCopy);
  objc_opt_class();
  v13 = objc_msgSend_viewController(self, v11, v12);
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v16 = v14;

  objc_msgSend_setAccessAllowedForCurrentLockState_(v16, v15, updatedCopy);
}

- (void)smartGridContentViewController:(id)controller viewWillAppear:(BOOL)appear
{
  v36 = *MEMORY[0x29EDCA608];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = objc_msgSend_smartGridViewController(controller, a2, controller, appear, 0);
  v7 = objc_msgSend_itemManager(v4, v5, v6);
  v10 = objc_msgSend_allDisplayedItems(v7, v8, v9);

  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v35, 16);
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = &unk_2A2423040;
        if (objc_msgSend_conformsToProtocol_(v17, v19, v18))
        {
          v20 = v17;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v24 = objc_msgSend_accessories(v21, v22, v23);

        v26 = objc_msgSend_na_filter_(v24, v25, &unk_2A23EA648);

        v14 += objc_msgSend_count(v26, v27, v28);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v29, &v31, v35, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  HUCCUpdateRunningStateWithAppleMediaAccessories(1, v14, v30);
}

- (void)launchHomeAppForSmartGridContentViewController:(id)controller
{
  controllerCopy = controller;
  v7 = objc_msgSend_contentModuleContext(self, v5, v6);
  launchHomeAppForModuleViewController(controllerCopy, v7);
}

- (BOOL)isDeviceUnlockedForSmartGridContentViewController:(id)controller
{
  v3 = objc_msgSend_lockStateHandler(self, a2, controller);
  isDeviceUnlocked = objc_msgSend_isDeviceUnlocked(v3, v4, v5);

  return isDeviceUnlocked;
}

- (void)controlCenterModuleViewController:(id)controller moduleWillAppear:(BOOL)appear
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v21, 0x16u);
  }

  v12 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v10, v11);
  objc_msgSend_enterModuleViewWillAppear(v12, v13, v14);

  objc_msgSend_cancelScheduledCharacteristicDeregistration(self, v15, v16);
  objc_msgSend_setupHomeKitActiveAssertionIfNeeded(self, v17, v18);
  objc_msgSend_addStateSubscriptionReasonToDataModel(self, v19, v20);
}

- (void)controlCenterModuleViewController:(id)controller moduleDidDisappear:(BOOL)disappear
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v21 = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v21, 0x16u);
  }

  v12 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v10, v11);
  objc_msgSend_exitModuleViewDidDisappear(v12, v13, v14);

  objc_msgSend_scheduleCharacteristicDeregistration(self, v15, v16);
  objc_msgSend_resetFetchedMediaItems(self, v17, v18);
  objc_msgSend_removeStateSubscriptionReasonFromDataModel(self, v19, v20);
}

- (void)controlCenterModuleViewController:(id)controller didChangeDisplayedItems:(id)items
{
  v44 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  itemsCopy = items;
  if (objc_msgSend_allowsCharacteristicNotifications(controllerCopy, v9, v10) && (objc_msgSend_itemManager(controllerCopy, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_home(v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_uuid(v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), v19, v16, v13, v19))
  {
    objc_initWeak(location, self);
    v22 = objc_msgSend_itemManager(controllerCopy, v20, v21);
    v25 = objc_msgSend_home(v22, v23, v24);
    v28 = objc_msgSend_characteristicRegistrationObject(self, v26, v27);
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 3221225472;
    v39[2] = sub_29C99684C;
    v39[3] = &unk_29F33A8D0;
    objc_copyWeak(&v40, location);
    objc_msgSend_registerForItems_inHome_currentRegistration_completionBlock_(self, v29, itemsCopy, v25, v28, v39);

    objc_destroyWeak(&v40);
    objc_destroyWeak(location);
  }

  else
  {
    v30 = HFLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      *location = 138412546;
      *&location[4] = v32;
      v42 = 2112;
      v43 = v33;
      _os_log_impl(&dword_29C992000, v30, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called while view controller had characteristic notifications disabled. Clearing registration", location, 0x16u);
    }

    v36 = objc_msgSend_characteristicRegistrationObject(self, v34, v35);
    objc_msgSend_cancelRegistration_(self, v37, v36);

    objc_msgSend_setCharacteristicRegistrationObject_(self, v38, 0);
  }
}

- (void)controlCenterModuleViewController:(id)controller didStartDisplayingHome:(id)home
{
  v33 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  homeCopy = home;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_uuid(homeCopy, v9, v10);
    v25 = 138413058;
    selfCopy = self;
    v27 = 2112;
    v28 = controllerCopy;
    v29 = 2112;
    v30 = v11;
    v31 = 1024;
    v32 = objc_msgSend_allowsCharacteristicNotifications(controllerCopy, v12, v13);
    _os_log_impl(&dword_29C992000, v8, OS_LOG_TYPE_DEFAULT, "%@:controlCenterModuleViewController %@ didStartDisplayingHome %@ allowsCharacteristicNotifications:%{BOOL}d", &v25, 0x26u);
  }

  if (!objc_msgSend_allowsCharacteristicNotifications(controllerCopy, v14, v15) || (objc_msgSend_uuid(homeCopy, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v18, v19 = homeCopy, !v18))
  {
    v19 = 0;
  }

  v20 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v16, v17);
  v23 = objc_msgSend_moduleUniqueIdentifier(self, v21, v22);
  objc_msgSend_setModuleWithIdentifier_subscribedToHome_(v20, v24, v23, v19);
}

- (void)cancelScheduledCharacteristicDeregistration
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_registrationScheduledCancelation(self, a2, v2);

  if (v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_29C992000, v7, OS_LOG_TYPE_DEFAULT, "%@:CharacteristicRegistration canceling scheduled characteristic deregistration", &v12, 0xCu);
    }
  }

  v8 = objc_msgSend_registrationScheduledCancelation(self, v5, v6);
  objc_msgSend_cancel(v8, v9, v10);

  objc_msgSend_setRegistrationScheduledCancelation_(self, v11, 0);
}

- (void)scheduleCharacteristicDeregistration
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_registrationScheduledCancelation(self, a2, v2);
  objc_msgSend_cancel(v4, v5, v6);

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_29C992000, v7, OS_LOG_TYPE_DEFAULT, "%@:CharacteristicRegistration scheduling characteristic deregistration", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = objc_msgSend_mainThreadScheduler(MEMORY[0x29EDC5E58], v8, v9);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = sub_29C996D70;
  v14[3] = &unk_29F33A8F8;
  objc_copyWeak(&v15, buf);
  v12 = objc_msgSend_afterDelay_performBlock_(v10, v11, v14, 5.0);
  objc_msgSend_setRegistrationScheduledCancelation_(self, v13, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)launchHomeAppForControlCenterModuleViewController:(id)controller
{
  v17 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v13, 0x16u);
  }

  v12 = objc_msgSend_contentModuleContext(self, v10, v11);
  launchHomeAppForModuleViewController(controllerCopy, v12);
}

- (BOOL)isDeviceUnlockedForControlCenterModuleViewController:(id)controller
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v16, 0x16u);
  }

  v11 = objc_msgSend_lockStateHandler(self, v9, v10);
  isDeviceUnlocked = objc_msgSend_isDeviceUnlocked(v11, v12, v13);

  return isDeviceUnlocked;
}

- (void)setupHomeKitActiveAssertionIfNeeded
{
  v4 = objc_msgSend_homeKitActiveAssertion(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v5, v6);
    v16 = objc_msgSend_homeManager(v7, v8, v9);

    v12 = objc_msgSend_homeKitActiveAssertionReason(self, v10, v11);
    v14 = objc_msgSend__beginActiveAssertionWithReason_(v16, v13, v12);
    objc_msgSend_setHomeKitActiveAssertion_(self, v15, v14);
  }
}

- (void)endHomeKitActiveAssertion
{
  v4 = objc_msgSend_homeKitActiveAssertion(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v5, v6);
    v10 = objc_msgSend_homeManager(v7, v8, v9);

    v13 = objc_msgSend_homeKitActiveAssertion(self, v11, v12);
    objc_msgSend__endActiveAssertion_(v10, v14, v13);
  }

  objc_msgSend_setHomeKitActiveAssertion_(self, v5, 0);
}

- (id)homeKitActiveAssertionReason
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@:%@", v5, self);

  return v7;
}

- (void)addStateSubscriptionReasonToDataModel
{
  v2 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_29C9AC3C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_29C9A6AC4(0, 0, v4, &unk_29C9AEA78, v7);
}

- (void)removeStateSubscriptionReasonFromDataModel
{
  selfCopy = self;
  HUCCControlCenterModule.removeStateSubscriptionReasonFromDataModel()();
}

- (void)registerForItems:(NSSet *)items inHome:(HMHome *)home currentRegistration:(id)registration completionBlock:(id)block
{
  v11 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(block);
  v15 = swift_allocObject();
  v15[2] = items;
  v15[3] = home;
  v15[4] = registration;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_29C9AC3C8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_29C9AEA38;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_29C9AE8F8;
  v18[5] = v17;
  itemsCopy = items;
  homeCopy = home;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_29C9AA764(0, 0, v13, &unk_29C9AE900, v18);
}

- (void)cancelRegistration:(id)registration
{
  v3 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v10 - v4;
  sub_29C9AC1F8();
  swift_unknownObjectRetain_n();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = sub_29C9AC3C8();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_29C9A6AC4(0, 0, v5, &unk_29C9AEA28, v9);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease_n();
  }
}

- (void)resetFetchedMediaItems
{
  v2 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_29C9AC3C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_29C9A6AC4(0, 0, v4, &unk_29C9AEA18, v6);
}

- (void)registerForAnalytics
{
  v3 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_29C9AC3C8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_29C9A6AC4(0, 0, v5, &unk_29C9AEA10, v7);
}

@end