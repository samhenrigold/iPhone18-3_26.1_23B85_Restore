@interface FRArticleNotificationService
- (BOOL)supportsHandling:(id)handling;
- (FRArticleNotificationService)init;
- (id)cachesDirectory;
- (id)notificationAttachmentsWithThumbnailFileURL:(id)l publisherLogoFileURL:(id)rL publisherLogoMaskFileURL:(id)uRL publisherLogoCompactFileURL:(id)fileURL isKettleDigestEnabled:(BOOL)enabled;
- (void)didReceive:(id)receive withContentHandler:(id)handler;
- (void)finalizeContent:(id)content;
- (void)processDidReceiveSingleArticleNotificationRequest:(id)request withContentHandler:(id)handler;
- (void)serviceExtensionTimeWillExpire;
@end

@implementation FRArticleNotificationService

- (FRArticleNotificationService)init
{
  v13.receiver = self;
  v13.super_class = FRArticleNotificationService;
  v2 = [(FRArticleNotificationService *)&v13 init];
  if (v2)
  {
    v3 = [[FRArticleNotificationFeedPersonalizerFactory alloc] initWithTranslationProvider:0];
    v4 = FCURLForAppConfigurationMirror();
    v5 = +[FCAppleAccount sharedAccount];
    supportedContentStoreFrontID = [v5 supportedContentStoreFrontID];

    v7 = [[FCFileCoordinatedAppConfigurationManager alloc] initWithFileURL:v4 storefrontID:supportedContentStoreFrontID];
    v8 = [[FRArticleNotificationPersonalizer alloc] initWithAppConfigurationManager:v7 feedPersonalizerFactory:v3];
    personalizer = v2->_personalizer;
    v2->_personalizer = v8;

    v10 = objc_alloc_init(FRArticleNotificationPostProcessingCoordinator);
    postProcessCoordinator = v2->_postProcessCoordinator;
    v2->_postProcessCoordinator = v10;
  }

  return v2;
}

- (BOOL)supportsHandling:(id)handling
{
  content = [handling content];
  userInfo = [content userInfo];
  v5 = [userInfo objectForKeyedSubscript:FCNotificationPayloadApsKey];

  v6 = [v5 objectForKeyedSubscript:FCNotificationPayloadCategoryKey];
  LOBYTE(userInfo) = [v6 isEqualToString:FCNotificationArticleCategory];

  return userInfo;
}

- (void)didReceive:(id)receive withContentHandler:(id)handler
{
  receiveCopy = receive;
  handlerCopy = handler;
  v8 = objc_alloc_init(FRArticleNotificationServiceArticleSource);
  [(FRArticleNotificationService *)self setArticleSource:v8];

  [(FRArticleNotificationService *)self setContentHandler:handlerCopy];
  content = [receiveCopy content];
  v10 = [content mutableCopy];
  [(FRArticleNotificationService *)self setBestAttemptContent:v10];

  content2 = [receiveCopy content];
  userInfo = [content2 userInfo];
  v13 = [userInfo mutableCopy];

  v14 = [v13 objectForKeyedSubscript:FCNotificationPayloadApsKey];
  v15 = [v14 mutableCopy];

  v16 = [v15 objectForKeyedSubscript:FCNotificationPayloadCategoryKey];
  v17 = [v16 isEqualToString:FCNotificationArticleCategory];
  v18 = v17;
  v19 = FRArticleNotificationServiceSharedLog(v17);
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "extension-article category notification received.", &v21, 2u);
    }

    [(FRArticleNotificationService *)self processDidReceiveSingleArticleNotificationRequest:receiveCopy withContentHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "FRArticleNotificationService cannot preprocess a notification of this category: %@", &v21, 0xCu);
    }
  }
}

- (void)processDidReceiveSingleArticleNotificationRequest:(id)request withContentHandler:(id)handler
{
  requestCopy = request;
  content = [requestCopy content];
  userInfo = [content userInfo];

  v47 = userInfo;
  v7 = [userInfo objectForKeyedSubscript:FCNotificationPayloadNewsKey];
  v46 = +[UNUserNotificationCenter currentNotificationCenter];
  notificationSettings = [v46 notificationSettings];
  scheduledDeliverySetting = [notificationSettings scheduledDeliverySetting];
  v45 = scheduledDeliverySetting == 2;
  v10 = [v7 objectForKeyedSubscript:FCNotificationPayloadNotificationBehaviorFlagsKey];
  intValue = [v10 intValue];

  v12 = NewsCoreUserDefaults();
  v13 = [v12 BOOLForKey:@"notificationEnableAssetPrefetching"];
  v14 = [v12 BOOLForKey:@"notificationAssetPrefetchingRequiresWatch"];
  v15 = +[NRPairedDeviceRegistry sharedInstance];
  isPaired = [v15 isPaired];

  v17 = intValue & 1;
  v19 = FRArticleNotificationServiceSharedLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    *v58 = v13;
    *&v58[4] = 1024;
    *&v58[6] = v14;
    LOWORD(v59) = 1024;
    *(&v59 + 2) = scheduledDeliverySetting == 2;
    HIWORD(v59) = 1024;
    *v60 = v17;
    *&v60[4] = 1024;
    *&v60[6] = isPaired;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "isAssetPrefetchingEnabled=%d, doesAssetPrefetchingRequireWatch=%d, isKettleDigestEnabled=%d, isBehaviorFlagSetToDisableFetchingKettleImage=%d, doesDeviceHaveWatchPaired=%d", buf, 0x20u);
  }

  v21 = FRArticleNotificationServiceSharedLog(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (scheduledDeliverySetting != 2)
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Running Kettle-disabled logic to determine whether to fetch assets.", buf, 2u);
    }

    if ((v13 & 1) == 0)
    {
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100004680;
      v54[3] = &unk_100024D08;
      v54[4] = self;
      sub_100004680(v54);
      goto LABEL_40;
    }

    if (!(isPaired & 1 | ((v14 & 1) == 0)))
    {
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100004710;
      v53[3] = &unk_100024D08;
      v53[4] = self;
      sub_100004710(v53);
      goto LABEL_40;
    }

    v26 = FRArticleNotificationServiceSharedLog(v25);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v27 = "Continuing with prefetch since device does have watch paired or that check is not required by config";
    goto LABEL_26;
  }

  if (v22)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Running Kettle-enabled logic to determine whether to fetch assets.", buf, 2u);
  }

  if (v17)
  {
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100004560;
    v56[3] = &unk_100024D08;
    v56[4] = self;
    sub_100004560(v56);
    goto LABEL_40;
  }

  if ([notificationSettings timeSensitiveSetting] == 2)
  {
    content2 = [requestCopy content];
    v24 = [content2 interruptionLevel] == 2;
  }

  else
  {
    v24 = 0;
  }

  criticalAlertSetting = [notificationSettings criticalAlertSetting];
  if (criticalAlertSetting == 2)
  {
    content3 = [requestCopy content];
    v30 = [content3 interruptionLevel] == 3;
  }

  else
  {
    v30 = 0;
  }

  if (v30 || v24)
  {
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000045F0;
    v55[3] = &unk_100024D08;
    v55[4] = self;
    sub_1000045F0(v55);
    goto LABEL_40;
  }

  v26 = FRArticleNotificationServiceSharedLog(criticalAlertSetting);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v27 = "Continuing with kettle image prefetch";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, buf, 2u);
  }

LABEL_27:

  v31 = [v7 objectForKeyedSubscript:FCNotificationPayloadThumbnailURLKey];
  v32 = [v7 objectForKeyedSubscript:FCNotificationPayloadPublisherLogoURLKey];
  v44 = [v7 objectForKeyedSubscript:FCNotificationPayloadPublisherLogoMaskURLKey];
  v33 = [v7 objectForKeyedSubscript:FCNotificationPayloadPublisherLogoCompactURLKey];
  v43 = [v7 objectForKeyedSubscript:FCNotificationPayloadFlintDocumentAssetURLKey];
  cachesDirectory = [(FRArticleNotificationService *)self cachesDirectory];
  v35 = FRArticleNotificationServiceSharedLog(cachesDirectory);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    absoluteString = [cachesDirectory absoluteString];
    *buf = 138413314;
    *v58 = v31;
    *&v58[8] = 2112;
    v59 = v32;
    *v60 = 2112;
    *&v60[2] = v44;
    v61 = 2112;
    v62 = v33;
    v63 = 2112;
    v64 = absoluteString;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Fetching the thumbnail and publisherLogo using the provided URLs, thumbnailURL: %@, publisherLogoURL: %@, publisherLogoMaskURLString: %@, publisherLogoCompactURL: %@, cachesDirectory: %@", buf, 0x34u);
  }

  if (cachesDirectory && (v31 || v32 || v33))
  {
    v40 = FRArticleNotificationServiceSharedLog(v37);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      articleSource = [(FRArticleNotificationService *)self articleSource];
      *buf = 138412290;
      *v58 = articleSource;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Using article source %@", buf, 0xCu);
    }

    articleSource2 = [(FRArticleNotificationService *)self articleSource];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000047A0;
    v49[3] = &unk_100024D30;
    v49[4] = self;
    v52 = v45;
    v50 = v7;
    v51 = v47;
    [articleSource2 fetchAssetsWithCachesDirectory:cachesDirectory thumbnailURLString:v31 publisherLogoURLString:v32 publisherLogoMaskURLString:v44 publisherLogoCompactURLString:v33 flintDocumentURLString:v43 completion:v49];
  }

  else
  {
    v38 = FRArticleNotificationServiceSharedLog(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Skipping prefetch since thumbnailURLString, publisherLogoURLString & publisherLogoCompactURLString are all nil.", buf, 2u);
    }

    bestAttemptContent = [(FRArticleNotificationService *)self bestAttemptContent];
    [(FRArticleNotificationService *)self finalizeContent:bestAttemptContent];
  }

LABEL_40:
}

- (id)notificationAttachmentsWithThumbnailFileURL:(id)l publisherLogoFileURL:(id)rL publisherLogoMaskFileURL:(id)uRL publisherLogoCompactFileURL:(id)fileURL isKettleDigestEnabled:(BOOL)enabled
{
  lCopy = l;
  rLCopy = rL;
  fileURLCopy = fileURL;
  v13 = +[NSMutableArray array];
  v14 = &_s13NewsAnalytics24NotificationSettingsDataV6tagIDsSaySSGvg_ptr;
  if (lCopy)
  {
    v35 = UNNotificationAttachmentOptionsTypeHintKey;
    v36 = kUTTypeJPEG;
    v15 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    if (!enabled)
    {
      v33[0] = UNNotificationAttachmentOptionsTypeHintKey;
      v33[1] = UNNotificationAttachmentOptionsThumbnailHiddenKey;
      v34[0] = kUTTypeJPEG;
      v34[1] = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

      v15 = v16;
    }

    v14 = &_s13NewsAnalytics24NotificationSettingsDataV6tagIDsSaySSGvg_ptr;
    v28 = 0;
    v17 = [UNNotificationAttachment attachmentWithIdentifier:@"thumbnail-attachment" URL:lCopy options:v15 error:&v28];
    v18 = v28;
    if (v17)
    {
      v19 = FRArticleNotificationServiceSharedLog([v13 addObject:v17]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = lCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Added an attachment for the thumbnail. %@", buf, 0xCu);
      }

      v14 = &_s13NewsAnalytics24NotificationSettingsDataV6tagIDsSaySSGvg_ptr;
    }
  }

  if (fileURLCopy)
  {
    v29[0] = UNNotificationAttachmentOptionsTypeHintKey;
    v29[1] = UNNotificationAttachmentOptionsThumbnailHiddenKey;
    v30[0] = kUTTypePNG;
    v30[1] = &__kCFBooleanTrue;
    v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v21 = v14[294];
    v27 = 0;
    v22 = [v21 attachmentWithIdentifier:@"publisherLogoCompact-attachment" URL:fileURLCopy options:v20 error:&v27];
    v23 = v27;
    if (v22)
    {
      v24 = FRArticleNotificationServiceSharedLog([v13 addObject:v22]);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = rLCopy;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Added an attachment for the publisher COMPACT logo. %@", buf, 0xCu);
      }
    }
  }

  v25 = [v13 copy];

  return v25;
}

- (id)cachesDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.news"];

  v4 = [v3 URLByAppendingPathComponent:@"Notifications"];
  path = [v4 path];
  v6 = FRArticleNotificationServiceSharedLog(path);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = path;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using cache directory at %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:path];

  if ((v8 & 1) == 0)
  {
    v9 = +[NSFileManager defaultManager];
    v19 = 0;
    v10 = [v9 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v19];
    v11 = v19;

    v13 = FRArticleNotificationServiceSharedLog(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        *buf = 138412290;
        v21 = path;
        v15 = "Created cache directory at %@";
        v16 = v13;
        v17 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
      }
    }

    else if (v14)
    {
      *buf = 138412546;
      v21 = path;
      v22 = 2112;
      v23 = v11;
      v15 = "Failed to create directory at %@ due to %@";
      v16 = v13;
      v17 = 22;
      goto LABEL_9;
    }
  }

  return v4;
}

- (void)serviceExtensionTimeWillExpire
{
  v3 = FRArticleNotificationServiceSharedLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "The operation took too long, serviceExtensionTimeWillExpire was called", v6, 2u);
  }

  contentHandler = [(FRArticleNotificationService *)self contentHandler];
  bestAttemptContent = [(FRArticleNotificationService *)self bestAttemptContent];
  (contentHandler)[2](contentHandler, bestAttemptContent);
}

- (void)finalizeContent:(id)content
{
  contentCopy = content;
  v5 = [contentCopy mutableCopy];
  [(FRArticleNotificationService *)self setBestAttemptContent:v5];

  userInfo = [contentCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:FCNotificationPayloadNewsKey];

  v8 = [[FCNotificationArticleHeadline alloc] initWithArticlePayload:v7 sourceChannel:0 assetManager:0];
  if (!v8)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000529C;
    v24[3] = &unk_100024D58;
    v24[4] = self;
    v25 = contentCopy;
    sub_10000529C(v24);
    v14 = v25;
    goto LABEL_5;
  }

  v9 = [v7 objectForKeyedSubscript:FCNotificationPayloadNotificationBehaviorFlagsKey];
  intValue = [v9 intValue];

  if ((intValue & 2) == 0)
  {
    personalizer = [(FRArticleNotificationService *)self personalizer];
    v26 = v8;
    v13 = [NSArray arrayWithObjects:&v26 count:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005418;
    v19[3] = &unk_100024D80;
    v20 = v8;
    selfCopy = self;
    [personalizer sortItems:v13 completion:v19];

    v14 = v20;
LABEL_5:

    goto LABEL_9;
  }

  v15 = FRArticleNotificationServiceSharedLog(v11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Skipping personalizer to assign highest score.", buf, 2u);
  }

  bestAttemptContent = [(FRArticleNotificationService *)self bestAttemptContent];
  [bestAttemptContent setRelevanceScore:1.0];

  postProcessCoordinator = [(FRArticleNotificationService *)self postProcessCoordinator];
  bestAttemptContent2 = [(FRArticleNotificationService *)self bestAttemptContent];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000532C;
  v22[3] = &unk_100024D08;
  v22[4] = self;
  [postProcessCoordinator notificationArrived:bestAttemptContent2 completionHandler:v22];

LABEL_9:
}

@end