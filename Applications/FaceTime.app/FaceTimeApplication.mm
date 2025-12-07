@interface FaceTimeApplication
+ (id)allowedNotificationCategories;
- (BOOL)_isIPad;
- (BOOL)_styleIsActuallyGoingToBlur;
- (BOOL)alwaysShowLocalVideo;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)showsTelephonyRecents;
- (BOOL)tabBarFillsScreen;
- (BOOL)usesBlendModes;
- (id)_fetchScrollView;
- (id)recentsController;
- (id)scrollTestsWithCount:(int64_t)count forScrollView:(id)view name:(id)name;
- (int64_t)backdropStyle;
- (void)applicationDidFinishLaunching:(id)launching;
- (void)applicationOpenURL:(id)l;
- (void)handleRecentsDetailsViewURL:(id)l;
- (void)handleVideoMessagePlaybackURL:(id)l;
- (void)performScrollTestWithName:(id)name options:(id)options;
- (void)performTestWithName:(id)name options:(id)options;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation FaceTimeApplication

- (BOOL)alwaysShowLocalVideo
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    if ([(FaceTimeApplication *)self tabBarFillsScreen])
    {
      _isBlurUI = [(FaceTimeApplication *)self _isBlurUI];
      if (_isBlurUI)
      {

        LOBYTE(_isBlurUI) = [(FaceTimeApplication *)self _styleIsActuallyGoingToBlur];
      }
    }

    else
    {
      LOBYTE(_isBlurUI) = 1;
    }
  }

  else
  {
    LOBYTE(_isBlurUI) = 0;
  }

  return _isBlurUI;
}

- (BOOL)tabBarFillsScreen
{
  rootViewController = [(PhoneApplication *)self rootViewController];
  traitCollection = [rootViewController traitCollection];

  LOBYTE(rootViewController) = [traitCollection horizontalSizeClass] == 1;
  return rootViewController;
}

- (BOOL)_styleIsActuallyGoingToBlur
{
  if (qword_100126A10 != -1)
  {
    sub_100003EFC();
  }

  return byte_100126A08 == 1 && !UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled();
}

- (int64_t)backdropStyle
{
  if ([UIApp userInterfaceStyle] == 1)
  {
    return 2030;
  }

  else
  {
    return -2;
  }
}

- (id)recentsController
{
  recentsController = self->_recentsController;
  if (!recentsController)
  {
    v4 = +[FTApplicationServices sharedInstance];
    v5 = [PHRecentsController alloc];
    callHistoryController = [(FaceTimeApplication *)self callHistoryController];
    callProviderManager = [v4 callProviderManager];
    contactStore = [v4 contactStore];
    suggestedContactStore = [v4 suggestedContactStore];
    metadataCache = [v4 metadataCache];
    v11 = [(PHRecentsController *)v5 initWithCallHistoryController:callHistoryController callProviderManager:callProviderManager contactStore:contactStore suggestedContactStore:suggestedContactStore metadataCache:metadataCache];
    v12 = self->_recentsController;
    self->_recentsController = v11;

    recentsController = self->_recentsController;
  }

  return recentsController;
}

- (BOOL)showsTelephonyRecents
{
  v2 = +[CNKFeatures sharedInstance];
  isFaceTimeLaunchPageEnabled = [v2 isFaceTimeLaunchPageEnabled];

  if (isFaceTimeLaunchPageEnabled & 1) != 0 || ([UIApp isDeviceCapableOfTelephonyCalls])
  {
    return 0;
  }

  return +[TUCallCapabilities supportsTelephonyCalls];
}

- (void)applicationDidFinishLaunching:(id)launching
{
  v7.receiver = self;
  v7.super_class = FaceTimeApplication;
  [(PhoneApplication *)&v7 applicationDidFinishLaunching:launching];
  rootViewController = [(PhoneApplication *)self rootViewController];
  [rootViewController createFaceTimeFirstRunViewIfNeeded];

  +[PHThumperSetupController showThumperAvailableDialogIfNecessary];
  v5 = +[UNUserNotificationCenter currentNotificationCenter];
  [(FaceTimeApplication *)self setNotificationCenter:v5];

  notificationCenter = [(FaceTimeApplication *)self notificationCenter];
  [notificationCenter setDelegate:self];

  +[CNKNameAndPhotoUtilities prewarm];
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  v7 = sub_100003B9C(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FaceTime was launched via URL", &v14, 2u);
  }

  pseudonymForLinkDetailsView = [lCopy pseudonymForLinkDetailsView];

  if (pseudonymForLinkDetailsView)
  {
    v10 = sub_100003B9C(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = pseudonymForLinkDetailsView;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Showing link detail view for pseudonym %@", &v14, 0xCu);
    }

    rootViewController = [(PhoneApplication *)self rootViewController];
    faceTimeContainerViewController = [rootViewController faceTimeContainerViewController];
    [faceTimeContainerViewController showLinkDetailViewControllerForPseudonym:pseudonymForLinkDetailsView];
  }

  return 1;
}

- (void)handleVideoMessagePlaybackURL:(id)l
{
  lCopy = l;
  videoMessageUUID = [lCopy videoMessageUUID];
  v6 = sub_100003B9C(videoMessageUUID);
  rootViewController = v6;
  if (videoMessageUUID)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = videoMessageUUID;
      _os_log_impl(&_mh_execute_header, rootViewController, OS_LOG_TYPE_DEFAULT, "Showing video message player for message UUID %@", &v9, 0xCu);
    }

    rootViewController = [(PhoneApplication *)self rootViewController];
    faceTimeContainerViewController = [rootViewController faceTimeContainerViewController];
    [faceTimeContainerViewController showVideoPlayerForMessageWithUUID:videoMessageUUID];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4CE8(lCopy, rootViewController);
  }
}

- (void)handleRecentsDetailsViewURL:(id)l
{
  lCopy = l;
  recentsUniqueID = [lCopy recentsUniqueID];
  v6 = sub_100003B9C(recentsUniqueID);
  rootViewController = v6;
  if (recentsUniqueID)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = recentsUniqueID;
      _os_log_impl(&_mh_execute_header, rootViewController, OS_LOG_TYPE_DEFAULT, "Showing recents details view for call with uniqueID: %@", &v9, 0xCu);
    }

    rootViewController = [(PhoneApplication *)self rootViewController];
    faceTimeContainerViewController = [rootViewController faceTimeContainerViewController];
    [faceTimeContainerViewController presentRecentsDetailsViewFor:recentsUniqueID];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4D60(lCopy, rootViewController);
  }
}

- (void)applicationOpenURL:(id)l
{
  lCopy = l;
  if ([lCopy isFaceTimeAppVideoMessagePlaybackURL])
  {
    [(FaceTimeApplication *)self handleVideoMessagePlaybackURL:lCopy];
  }

  else if ([lCopy isFaceTimeRecentsDetailsViewURL])
  {
    [(FaceTimeApplication *)self handleRecentsDetailsViewURL:lCopy];
  }
}

- (BOOL)_isIPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)usesBlendModes
{
  if ([UIApp userInterfaceStyle] != 1)
  {
    return 0;
  }

  return [(FaceTimeApplication *)self _styleIsActuallyGoingToBlur];
}

+ (id)allowedNotificationCategories
{
  if (qword_100126A20 != -1)
  {
    sub_1000C4DD8();
  }

  v3 = qword_100126A18;

  return v3;
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  if ([categoryIdentifier length])
  {
    v10 = +[FaceTimeApplication allowedNotificationCategories];
    if ([v10 containsObject:categoryIdentifier])
    {

LABEL_6:
      v12 = 24;
      goto LABEL_9;
    }

    if ([(FaceTimeApplication *)self applicationState])
    {
      v11 = [categoryIdentifier isEqualToString:@"group-facetime-invite"];

      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_9:
  handlerCopy[2](handlerCopy, v12);
}

- (void)performTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([nameCopy hasPrefix:@"Scroll"] && ((objc_msgSend(nameCopy, "hasSuffix:", @"Recents") & 1) != 0 || (objc_msgSend(nameCopy, "hasSuffix:", @"RecentsGlitch") & 1) != 0 || objc_msgSend(nameCopy, "hasSuffix:", @"RecentsGlitchExtended")))
  {
    [(FaceTimeApplication *)self performScrollTestWithName:nameCopy options:optionsCopy];
  }
}

- (void)performScrollTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"offset"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v9 = [v8 intValue], (v9 - 0x7FFFFFFF) <= 1))
  {
    v10 = sub_100003B9C([(FaceTimeApplication *)self _ftFailedTest:nameCopy]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4ED4(v8, v10, v11, v12, v13, v14, v15, v16);
    }

    v9 = 0x7FFFFFFFLL;
  }

  v17 = [optionsCopy objectForKeyedSubscript:@"iterations"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    intValue = [v17 intValue];
    if ((intValue - 0x7FFFFFFF) > 1)
    {
      if (v9 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      v26 = intValue;
      if (([nameCopy hasSuffix:@"Recents"] & 1) == 0 && (objc_msgSend(nameCopy, "hasSuffix:", @"RecentsGlitch") & 1) == 0 && !objc_msgSend(nameCopy, "hasSuffix:", @"RecentsGlitchExtended") || (-[FaceTimeApplication _fetchScrollView](self, "_fetchScrollView"), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v19 = sub_100003B9C([(FaceTimeApplication *)self _ftFailedTest:nameCopy]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000C4F40(nameCopy, v19, v35, v36, v37, v38, v39, v40);
        }

        goto LABEL_12;
      }

      v19 = v27;
      v28 = sub_100003B9C(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 138412546;
        v43 = nameCopy;
        v44 = 2112;
        v45 = optionsCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Performing scroll test %@ with the following options: %@", &v42, 0x16u);
      }

      [(FaceTimeApplication *)self _ftStartedTest:nameCopy];
      v29 = [optionsCopy objectForKey:@"recapBased"];
      if ([v29 BOOLValue])
      {
        v30 = +[RPTTestRunner isRecapAvailable];

        if (v30)
        {
          v32 = sub_100003B9C(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v42) = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Running recap based scroll view test", &v42, 2u);
          }

          v33 = [(FaceTimeApplication *)self scrollTestsWithCount:v26 forScrollView:v19 name:nameCopy];
          v34 = [RPTGroupScrollTestParameters newWithTestName:nameCopy parameters:v33 completionHandler:&stru_10010B718];

          [RPTTestRunner runTestWithParameters:v34];
          goto LABEL_12;
        }
      }

      else
      {
      }

      v41 = sub_100003B9C([v19 _performScrollTest:nameCopy iterations:v26 delta:v9]);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 138412290;
        v43 = nameCopy;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Finished test %@", &v42, 0xCu);
      }

      goto LABEL_12;
    }
  }

  v19 = sub_100003B9C([(FaceTimeApplication *)self _ftFailedTest:nameCopy]);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4FAC(v17, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_12:

LABEL_13:
}

- (id)scrollTestsWithCount:(int64_t)count forScrollView:(id)view name:(id)name
{
  viewCopy = view;
  nameCopy = name;
  v9 = objc_alloc_init(NSMutableArray);
  if (count >= 2)
  {
    v10 = 0;
    do
    {
      v11 = [RPTScrollViewTestParameters alloc];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10003AA84;
      v16[3] = &unk_10010AF00;
      v16[4] = v10;
      v12 = [v11 initWithTestName:nameCopy scrollView:viewCopy completionHandler:v16];
      [v12 setShouldFlick:0];
      [v9 addObject:v12];

      ++v10;
    }

    while (count - 1 != v10);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003AB30;
  v15[3] = &unk_10010AF00;
  v15[4] = count;
  v13 = [[RPTScrollViewTestParameters alloc] initWithTestName:nameCopy scrollView:viewCopy completionHandler:v15];
  [v9 addObject:v13];

  return v9;
}

- (id)_fetchScrollView
{
  rootViewController = [(PhoneApplication *)self rootViewController];
  faceTimeContainerViewController = [rootViewController faceTimeContainerViewController];
  collectionView = [faceTimeContainerViewController collectionView];

  return collectionView;
}

@end