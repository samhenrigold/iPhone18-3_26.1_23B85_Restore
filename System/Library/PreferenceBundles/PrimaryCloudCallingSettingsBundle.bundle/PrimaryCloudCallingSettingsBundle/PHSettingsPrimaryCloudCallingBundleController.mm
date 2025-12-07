@interface PHSettingsPrimaryCloudCallingBundleController
- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller;
- (PHSettingsPrimaryCloudCallingBundleController)initWithParentListController:(id)controller;
- (id)labelValue;
- (id)parentListController;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller;
- (void)performButtonActionForSpecifier:(id)specifier;
- (void)statusChanged:(id)changed;
@end

@implementation PHSettingsPrimaryCloudCallingBundleController

- (PHSettingsPrimaryCloudCallingBundleController)initWithParentListController:(id)controller
{
  v6.receiver = self;
  v6.super_class = PHSettingsPrimaryCloudCallingBundleController;
  v3 = [(PHSettingsPrimaryCloudCallingBundleController *)&v6 initWithParentListController:controller];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"statusChanged:" name:TUCallCapabilitiesRelayCallingChangedNotification object:0];
    [v4 addObserver:v3 selector:"statusChanged:" name:@"PHCallNotificationEligibleDevicesChangedNotification" object:0];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  specifiersArray = [(PHSettingsPrimaryCloudCallingBundleController *)self specifiersArray];

  if (!specifiersArray)
  {
    if (((+[TUCallCapabilities supportsThumperCalling](TUCallCapabilities, "supportsThumperCalling") & 1) != 0 || +[TUCallCapabilities supportsRelayCalling](TUCallCapabilities, "supportsRelayCalling")) && +[TUCallCapabilities supportsPrimaryCalling])
    {
      v5 = +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls]^ 1;
    }

    else
    {
      v5 = 1;
    }

    v6 = +[PHCallNotificationDevicesMonitor sharedInstance];
    callNotificationEligibleDevices = [v6 callNotificationEligibleDevices];
    v8 = [callNotificationEligibleDevices count];

    if (!v5 || v8)
    {
      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v15 localizedStringForKey:@"PRIMARY_CLOUD_CALLING_CELL_TITLE" value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

      parentListController = [(PHSettingsPrimaryCloudCallingBundleController *)self parentListController];
      v17 = [(PHSettingsPrimaryCloudCallingBundleController *)self isStateDrivenNavigationPossibleWithParentController:parentListController];

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = objc_opt_class();
      }

      v19 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"labelValue" detail:v18 cell:2 edit:0];
      [v19 setIdentifier:@"PRIMARY_CLOUD_CALLING"];
      if (v17)
      {
        [v19 setButtonAction:"performButtonActionForSpecifier:"];
      }

      v20 = [NSArray arrayWithObject:v19];
      [(PHSettingsPrimaryCloudCallingBundleController *)self setSpecifiersArray:v20];
    }

    else
    {
      v10 = PHDefaultLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (+[TUCallCapabilities supportsThumperCalling])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        if (+[TUCallCapabilities supportsRelayCalling])
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        if (+[TUCallCapabilities supportsPrimaryCalling])
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        *buf = 138413314;
        if (+[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls])
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v24 = v11;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = @"NO";
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Not showing the primary cloud-calling settings because: ((supportsThumperCalling:%@ || supportsRelayCalling:%@) && supportsPrimaryCalling:%@ && supportsDisplayingFaceTimeVideoCalls:%@) || otherDevicesAvailable:%@", buf, 0x34u);
      }
    }
  }

  specifiersArray2 = [(PHSettingsPrimaryCloudCallingBundleController *)self specifiersArray];

  return specifiersArray2;
}

- (id)labelValue
{
  if (+[TUCallCapabilities isThumperCallingEnabled])
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"ON";
  }

  else if (+[TUCallCapabilities areCallsOnOtherDevicesEnabled])
  {
    v5 = +[PHUIConfiguration preferShorterStrings];
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    if (v5)
    {
      v4 = @"NEARBY";
    }

    else
    {
      v4 = @"WHEN_NEARBY";
    }
  }

  else
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    v4 = @"OFF";
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_C920 table:@"PrimaryCloudCallingSettings"];

  return v6;
}

- (id)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)performButtonActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  parentListController = [(PHSettingsPrimaryCloudCallingBundleController *)self parentListController];
  [(PHSettingsPrimaryCloudCallingBundleController *)self handleUserDidTapOnMainSpecifier:specifierCopy parentController:parentListController];
}

- (void)statusChanged:(id)changed
{
  changedCopy = changed;
  specifiersArray = [(PHSettingsPrimaryCloudCallingBundleController *)self specifiersArray];

  if (!specifiersArray)
  {
    v7 = PHDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = changedCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Received capability changed notification: %@. Reloading specifiers", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4BA0;
    block[3] = &unk_C550;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (BOOL)isStateDrivenNavigationPossibleWithParentController:(id)controller
{
  v4 = sub_6CD8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D18();
  sub_6D08();
  sub_6CF8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  sub_6D28();

  LOBYTE(traitCollection) = sub_6CB8();
  (*(v5 + 8))(v7, v4);

  return traitCollection & 1;
}

- (void)handleUserDidTapOnMainSpecifier:(id)specifier parentController:(id)controller
{
  v15 = sub_6CD8();
  v5 = *(v15 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D48();
  __chkstk_darwin();
  v8 = sub_6CA8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D18();
  sub_6D08();
  sub_6CF8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  sub_6D38();
  sub_6C98();
  traitCollection = [controllerCopy traitCollection];
  sub_6D28();

  sub_66C8();
  sub_6CC8();

  (*(v5 + 8))(v7, v15);
  (*(v9 + 8))(v11, v8);
}

@end