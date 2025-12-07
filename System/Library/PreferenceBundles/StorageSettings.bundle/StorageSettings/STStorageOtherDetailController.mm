@interface STStorageOtherDetailController
- (id)detailedText;
- (id)specifiers;
- (id)valueForSpecifier:(id)specifier;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation STStorageOtherDetailController

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = STStorageOtherDetailController;
  [(STStorageDetailViewController *)&v41 viewDidLoad];
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSValueKey];
  otherSize = self->_otherSize;
  self->_otherSize = v4;

  self->_dataIsLoaded = 0;
  if (STStorageIsInternalInstall())
  {
    v6 = objc_alloc_init(STTTRDelegate);
    ttrDelegate = self->_ttrDelegate;
    self->_ttrDelegate = v6;

    [(STTTRDelegate *)self->_ttrDelegate setController:self];
    v8 = [*&self->super.PSListController_opaque[v3] propertyForKey:STStorageDetailDataSizeKey];
    apps = self->_apps;
    self->_apps = v8;

    v43[0] = @"com.apple.fakeapp.SoftwareUpdate";
    v10 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_2FFD0];
    v44[0] = v10;
    v43[1] = @"com.apple.mobileslideshow";
    v11 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_2FFE8];
    v44[1] = v11;
    v43[2] = @"com.apple.MobileSMS";
    v12 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30000];
    v44[2] = v12;
    v43[3] = @"com.apple.podcasts";
    v13 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30018];
    v44[3] = v13;
    v43[4] = @"com.apple.iBooks";
    v14 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30030];
    v44[4] = v14;
    v43[5] = @"com.apple.mobilemail";
    selfCopy = self;
    v15 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30048];
    v44[5] = v15;
    v43[6] = @"com.apple.Health";
    v16 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30060];
    v44[6] = v16;
    v43[7] = @"com.apple.fakeapp.MediaAppPlaceholder";
    v17 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30078];
    v44[7] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:8];
    appComponents = selfCopy->_appComponents;
    selfCopy->_appComponents = v18;

    v20 = selfCopy;
    v35 = [[STStorageApp alloc] initWithBundleIdentifier:@"com.apple.fakeapp.MediaAppPlaceholder" name:@"Media apps" vendorName:0];
    v21 = [[STSizeVector alloc] initWithFixed:0 docsAndData:0 purgeable:0];
    v22 = [NSMutableDictionary dictionaryWithCapacity:[(NSArray *)selfCopy->_apps count]];
    bundleApps = selfCopy->_bundleApps;
    selfCopy->_bundleApps = v22;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = selfCopy->_apps;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * i);
          v30 = v20->_bundleApps;
          bundleIdentifier = [v29 bundleIdentifier];
          [(NSMutableDictionary *)v30 setObject:v29 forKeyedSubscript:bundleIdentifier];

          bundleIdentifier2 = [v29 bundleIdentifier];
          LODWORD(bundleIdentifier) = [&off_30090 containsObject:bundleIdentifier2];

          if (bundleIdentifier)
          {
            appSize = [v29 appSize];
            v34 = [v21 plus:appSize];

            v21 = v34;
          }

          v20 = selfCopy;
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v26);
    }

    [v35 setExternalSizes:v21];
    [(NSMutableDictionary *)v20->_bundleApps setObject:v35 forKeyedSubscript:@"com.apple.fakeapp.MediaAppPlaceholder"];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = STStorageOtherDetailController;
  [(STStorageOtherDetailController *)&v22 viewWillAppear:appear];
  if (STStorageIsInternalInstall())
  {
    self->_dataIsLoaded = 0;
    v4 = [NSMutableArray arrayWithCapacity:[(NSDictionary *)self->_appComponents count]];
    specs = self->_specs;
    self->_specs = v4;

    if ([(NSNumber *)self->_otherSize longLongValue]>= 0x500000000)
    {
      v6 = objc_alloc_init(STStorageOptionTip);
      ttrOptionTip = self->_ttrOptionTip;
      self->_ttrOptionTip = v6;

      [(STStorageOptionTip *)self->_ttrOptionTip setIdentifier:@"_LARGE_SYSTEM_DATA_"];
      longLongValue = [(NSNumber *)self->_otherSize longLongValue];
      v9 = @"Large";
      if (longLongValue <= 10485760)
      {
        v9 = @"Low";
      }

      v10 = [NSString stringWithFormat:@"%@ System Data", v9];
      [(STStorageOptionTip *)self->_ttrOptionTip setTitle:v10];

      longLongValue2 = [(NSNumber *)self->_otherSize longLongValue];
      v12 = @"larger";
      if (longLongValue2 <= 10485760)
      {
        v12 = @"lower";
      }

      otherSize = self->_otherSize;
      v14 = v12;
      [(NSNumber *)otherSize longLongValue];
      v15 = STFormattedSize();
      v16 = [NSString stringWithFormat:@"The System data takes %@. This is %@ than expected. Please file a Radar to report this issue.", v15, v14];

      [(STStorageOptionTip *)self->_ttrOptionTip setInfoText:v16];
      [(STStorageOptionTip *)self->_ttrOptionTip setRepresentedApp:@"com.apple.TapToRadar"];
      [(STStorageOptionTip *)self->_ttrOptionTip setDelegate:self->_ttrDelegate];
      [(STStorageOptionTip *)self->_ttrOptionTip setImmediateGain:0];
      [(STStorageOptionTip *)self->_ttrOptionTip setSize:0];
      [(STStorageOptionTip *)self->_ttrOptionTip setEnableButtonTitle:@"Tap-to-Radar"];
      [(STStorageOptionTip *)self->_ttrOptionTip setConfirmationText:@"This will generate a radar with a disk space report attached. It may take up to 10 minutes to prepare.\n\nWould you like to proceed?"];
      [(STStorageOptionTip *)self->_ttrOptionTip setConfirmationButtonTitle:@"OK"];
      v17 = self->_ttrOptionTip;
      v18 = [NSValue valueWithPointer:self];
      [(STStorageOptionTip *)v17 setProperty:v18 forKey:@"_stController"];
    }

    v19 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_11888;
    block[3] = &unk_2CAA0;
    block[4] = self;
    dispatch_async(v19, block);
  }

  else
  {
    [(STStorageOtherDetailController *)self setLogSizes:&__NSDictionary0__struct];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_11F30;
    v20[3] = &unk_2CAA0;
    v20[4] = self;
    dispatch_async(&_dispatch_main_q, v20);
  }
}

- (id)detailedText
{
  v3 = STFormattedSize();
  v4 = STFormattedSize();
  v41 = [NSMutableString stringWithFormat:@"Storage Report : \n\nSwap : \t%@\nLogs : \t%@\n", v3, v4];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  selfCopy = self;
  v5 = self->_detailedOthersSizes;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_detailedOthersSizes objectForKeyedSubscript:v10];
        [v11 longLongValue];
        v12 = STFormattedSize();
        v13 = [NSString stringWithFormat:@"%@ : \t%@\n", v10, v12];
        [v41 appendString:v13];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v7);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_appComponents;
  v14 = [(NSDictionary *)obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    v32 = *v44;
    do
    {
      v17 = 0;
      v33 = v15;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [(NSDictionary *)selfCopy->_appComponents objectForKeyedSubscript:*(*(&v43 + 1) + 8 * v17)];
        if ([v18 shouldReturn])
        {
          v40 = [v18 app];
          appSize = [v40 appSize];
          [appSize docsAndData];
          v35 = STFormattedSize();
          v38 = [v18 app];
          appSize2 = [v38 appSize];
          [appSize2 purgeable];
          v19 = STFormattedSize();
          v20 = [v18 app];
          appSize3 = [v20 appSize];
          [appSize3 fixed];
          v22 = STFormattedSize();
          v23 = [v18 app];
          appSize4 = [v23 appSize];
          [appSize4 dynamic];
          v25 = STFormattedSize();
          v36 = [NSString stringWithFormat:@"Docs&Data : %@ / Purgeable : %@ / Fixed : %@ / Dynamic : %@", v35, v19, v22, v25];

          v26 = [v18 app];
          bundleIdentifier = [v26 bundleIdentifier];
          reportedDiff = [v18 reportedDiff];
          reportedString = [v18 reportedString];
          v30 = [NSString stringWithFormat:@"%@ \tDiff : %@ \n\t%@\n\t%@\n\n", bundleIdentifier, reportedDiff, reportedString, v36];

          v15 = v33;
          v16 = v32;
          [v41 appendString:v30];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSDictionary *)obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v15);
  }

  return v41;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(STStorageOtherDetailController *)self setLogSizes:0];
  v5.receiver = self;
  v5.super_class = STStorageOtherDetailController;
  [(STStorageOtherDetailController *)&v5 viewDidDisappear:disappearCopy];
}

- (id)valueForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:PSValueKey];
  [v3 longLongValue];
  v4 = STFormattedSize();

  return v4;
}

- (id)specifiers
{
  v3 = [NSMutableArray arrayWithCapacity:100];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = STStorageLocStr(@"SYSTEM_INFO");
  v6 = PSFooterTextGroupKey;
  [v4 setProperty:v5 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  self->_szLogs = 0;
  v7 = 0;
  v78 = v3;
  if (STStorageIsInternalInstall())
  {
    v76 = v6;
    logSizes = [(STStorageOtherDetailController *)self logSizes];
    v8 = [NSMutableArray arrayWithCapacity:10];
    v9 = [STStorageHeaderLabelCell specifierWithTitle:@"Internal Only"];
    [v8 addObject:v9];

    if (self->_ttrOptionTip && self->_dataIsLoaded)
    {
      v10 = +[PSSpecifier emptyGroupSpecifier];
      [v8 addObject:v10];

      specifier = [(STStorageOptionTip *)self->_ttrOptionTip specifier];
      [v8 addObject:specifier];

      infoSpecifier = [(STStorageOptionTip *)self->_ttrOptionTip infoSpecifier];
      [v8 addObject:infoSpecifier];

      v13 = +[PSSpecifier emptyGroupSpecifier];
      [v8 addObject:v13];
    }

    v84 = v8;
    if (self->_vmUsage < 1)
    {
      v77 = v4;
    }

    else
    {
      v14 = STStorageLocStr(@"VM_USAGE");
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

      v16 = [NSNumber numberWithLongLong:self->_vmUsage];
      [v15 setProperty:v16 forKey:PSValueKey];

      [v8 addObject:v15];
      v77 = v15;
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = [(NSMutableDictionary *)self->_detailedOthersSizes allKeys];
    v17 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v102;
      v20 = PSValueKey;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v102 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v101 + 1) + 8 * i);
          v23 = [(NSMutableDictionary *)self->_detailedOthersSizes objectForKeyedSubscript:v22];
          if ([v23 longLongValue] >= 1)
          {
            v24 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];
            [v24 setProperty:v23 forKey:v20];
            [v84 addObject:v24];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v18);
    }

    v25 = [NSMutableDictionary dictionaryWithDictionary:logSizes];
    [v25 addEntriesFromDictionary:self->_detailedLogSizes];
    v26 = [v25 keysSortedByValueWithOptions:16 usingComparator:&stru_2CFB8];
    obja = [NSMutableArray arrayWithCapacity:20];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v27 = logSizes;
    v28 = [v27 countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v98;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v98 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [v27 objectForKey:*(*(&v97 + 1) + 8 * j)];
          longLongValue = [v32 longLongValue];
          if (longLongValue >= 1)
          {
            self->_szLogs += longLongValue;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v97 objects:v108 count:16];
      }

      while (v29);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v80 = v26;
    v34 = [v80 countByEnumeratingWithState:&v93 objects:v107 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v94;
      v37 = PSValueKey;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v94 != v36)
          {
            objc_enumerationMutation(v80);
          }

          v39 = *(*(&v93 + 1) + 8 * k);
          v40 = [v25 objectForKey:v39];
          if ([v40 longLongValue] >= 1)
          {
            v41 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];
            [v41 setProperty:v40 forKey:v37];
            [obja addObject:v41];
          }
        }

        v35 = [v80 countByEnumeratingWithState:&v93 objects:v107 count:16];
      }

      while (v35);
    }

    if (self->_szLogs)
    {
      v42 = STStorageLocStr(@"LOG_FILES");
      v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

      v44 = [NSNumber numberWithLongLong:self->_szLogs];
      [v43 setProperty:v44 forKey:PSValueKey];

      v45 = v84;
      [v84 addObject:v43];
    }

    else
    {
      v45 = v84;
      v43 = v77;
    }

    v46 = +[PSSpecifier emptyGroupSpecifier];

    [v45 addObject:v46];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v47 = self->_appComponents;
    v48 = [(NSDictionary *)v47 countByEnumeratingWithState:&v89 objects:v106 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v90;
      do
      {
        for (m = 0; m != v49; m = m + 1)
        {
          if (*v90 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [(NSDictionary *)self->_appComponents objectForKeyedSubscript:*(*(&v89 + 1) + 8 * m)];
          if ([v52 shouldReturn])
          {
            specifier2 = [v52 specifier];
            [v84 addObject:specifier2];
          }
        }

        v49 = [(NSDictionary *)v47 countByEnumeratingWithState:&v89 objects:v106 count:16];
      }

      while (v49);
    }

    v7 = v84;
    v4 = v46;
    if (!self->_dataIsLoaded)
    {
      [v46 setProperty:@"The manual sizing of the apps and media could take few minutes depending on the amount of data to evaluate." forKey:v76];
      v54 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:15 edit:0];
      [v84 addObject:v54];
    }

    v55 = +[PSSpecifier emptyGroupSpecifier];
    [v84 addObject:v55];

    [v84 addObjectsFromArray:obja];
    v3 = v78;
  }

  objb = objc_alloc_init(STStorageOtherFakeApp);
  v56 = [STStorageAppHeaderCell specifierForStorageApp:?];
  [v3 addObject:v56];

  v57 = STStorageLocStr(@"OTHER_FILES");
  v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

  v59 = PSValueKey;
  v60 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSValueKey];
  [v58 setProperty:v60 forKey:v59];

  [v3 addObject:v58];
  if (STStorageIsInternalInstall())
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v61 = v7;
    v62 = [v61 countByEnumeratingWithState:&v85 objects:v105 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v86;
      v65 = PSPrioritizeValueTextDisplayKey;
      v66 = PSAllowMultilineTitleKey;
      do
      {
        for (n = 0; n != v63; n = n + 1)
        {
          if (*v86 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v68 = *(*(&v85 + 1) + 8 * n);
          [v68 setProperty:&__kCFBooleanTrue forKey:v65];
          [v68 setProperty:&__kCFBooleanTrue forKey:v66];
        }

        v63 = [v61 countByEnumeratingWithState:&v85 objects:v105 count:16];
      }

      while (v63);
    }

    v69 = +[PSSpecifier emptyGroupSpecifier];
    v3 = v78;
    [v78 addObject:v69];

    [v78 addObjectsFromArray:v61];
  }

  v70 = OBJC_IVAR___PSListController__specifiers;
  v71 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v72 = v3;

  v73 = *&self->super.PSListController_opaque[v70];
  v74 = v73;

  return v73;
}

@end