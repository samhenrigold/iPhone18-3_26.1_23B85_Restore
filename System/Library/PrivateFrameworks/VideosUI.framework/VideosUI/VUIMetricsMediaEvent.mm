@interface VUIMetricsMediaEvent
+ (id)_convertToMs:(id)ms;
+ (id)_metricsDataFromPlayable:(id)playable actionType:(id)type canonicalIdOverride:(id)override position:(id)position durationOverride:(id)durationOverride contentType:(id)contentType;
+ (id)_metricsDataFromTVPMediaItem:(id)item contentPosition:(id)position isBackground:(BOOL)background isAmbient:(BOOL)ambient actionType:(id)type;
+ (id)clickMetricsForSkipInfo:(id)info onMediaItem:(id)item;
+ (id)clickMetricsForUpNextWithPromoInfo:(id)info onMediaItem:(id)item;
+ (id)clickMetricsFromTVPMediaItem:(id)item targetType:(id)type;
+ (void)recordBGVideoPlayOfTVPMediaItem:(id)item contentPosition:(id)position isAmbient:(BOOL)ambient actionType:(id)type;
+ (void)recordClipPlay:(id)play canonicalId:(id)id position:(id)position duration:(double)duration;
+ (void)recordClipStop:(id)stop canonicalId:(id)id position:(id)position duration:(double)duration;
+ (void)recordPlay:(id)play isLaunchingExtras:(BOOL)extras;
+ (void)recordPlayOfTVPMediaItem:(id)item;
+ (void)recordPunchout:(id)punchout isUrlForPlay:(BOOL)play;
+ (void)recordStop:(id)stop;
+ (void)recordStopOfTVPMediaItem:(id)item;
@end

@implementation VUIMetricsMediaEvent

+ (void)recordPlay:(id)play isLaunchingExtras:(BOOL)extras
{
  extrasCopy = extras;
  playCopy = play;
  metadata = [playCopy metadata];
  isAdultContent = [metadata isAdultContent];

  if (isAdultContent)
  {
    v10 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "ignore media event for adult content", v13, 2u);
    }
  }

  else
  {
    if (extrasCopy)
    {
      v11 = @"extras";
    }

    else
    {
      v11 = @"play";
    }

    v10 = [self _metricsDataFromPlayable:playCopy actionType:v11 canonicalIdOverride:0 position:0 durationOverride:0 contentType:0];
    v12 = +[VUIMetricsController sharedInstance];
    [v12 recordMedia:v10];
  }
}

+ (void)recordStop:(id)stop
{
  stopCopy = stop;
  metadata = [stopCopy metadata];
  isAdultContent = [metadata isAdultContent];

  if (isAdultContent)
  {
    v8 = VUIDefaultLogObject(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "ignore media event for adult content", v10, 2u);
    }
  }

  else
  {
    v8 = [self _metricsDataFromPlayable:stopCopy actionType:@"stop" canonicalIdOverride:0 position:0 durationOverride:0 contentType:0];
    v9 = +[VUIMetricsController sharedInstance];
    [v9 recordMedia:v8];
  }
}

+ (void)recordClipPlay:(id)play canonicalId:(id)id position:(id)position duration:(double)duration
{
  v24 = *MEMORY[0x1E69E9840];
  playCopy = play;
  idCopy = id;
  positionCopy = position;
  metadata = [playCopy metadata];
  isAdultContent = [metadata isAdultContent];

  v16 = VUIDefaultLogObject(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (isAdultContent)
  {
    if (v17)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "ignore media event for adult content", &v20, 2u);
    }
  }

  else
  {
    if (v17)
    {
      v20 = 138412546;
      v21 = idCopy;
      v22 = 2048;
      durationCopy = duration;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "record clip play %@ - %1.2f", &v20, 0x16u);
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    v16 = [self _metricsDataFromPlayable:playCopy actionType:@"play" canonicalIdOverride:idCopy position:positionCopy durationOverride:v18 contentType:@"KeyPlay"];

    v19 = +[VUIMetricsController sharedInstance];
    [v19 recordMedia:v16];
  }
}

+ (void)recordClipStop:(id)stop canonicalId:(id)id position:(id)position duration:(double)duration
{
  v24 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  idCopy = id;
  positionCopy = position;
  metadata = [stopCopy metadata];
  isAdultContent = [metadata isAdultContent];

  v16 = VUIDefaultLogObject(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (isAdultContent)
  {
    if (v17)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "ignore media event for adult content", &v20, 2u);
    }
  }

  else
  {
    if (v17)
    {
      v20 = 138412546;
      v21 = idCopy;
      v22 = 2048;
      durationCopy = duration;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "record clip stop %@ - %1.2f", &v20, 0x16u);
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    v16 = [self _metricsDataFromPlayable:stopCopy actionType:@"stop" canonicalIdOverride:idCopy position:positionCopy durationOverride:v18 contentType:@"KeyPlay"];

    v19 = +[VUIMetricsController sharedInstance];
    [v19 recordMedia:v16];
  }
}

+ (id)_metricsDataFromPlayable:(id)playable actionType:(id)type canonicalIdOverride:(id)override position:(id)position durationOverride:(id)durationOverride contentType:(id)contentType
{
  playableCopy = playable;
  overrideCopy = override;
  positionCopy = position;
  durationOverrideCopy = durationOverride;
  contentTypeCopy = contentType;
  typeCopy = type;
  v20 = objc_opt_new();
  [v20 setObject:typeCopy forKey:@"actionType"];

  if ([playableCopy isRental])
  {
    [v20 setObject:@"rental" forKey:@"entitlementReason"];
  }

  if (overrideCopy)
  {
    [v20 setObject:overrideCopy forKey:@"id"];
    goto LABEL_12;
  }

  canonicalID = [playableCopy canonicalID];

  if (canonicalID)
  {
    canonicalID2 = [playableCopy canonicalID];
  }

  else
  {
    liveStreamServiceID = [playableCopy liveStreamServiceID];

    if (liveStreamServiceID)
    {
      canonicalID2 = [playableCopy liveStreamServiceID];
    }

    else
    {
      referenceID = [playableCopy referenceID];

      if (!referenceID)
      {
        goto LABEL_12;
      }

      canonicalID2 = [playableCopy referenceID];
    }
  }

  v25 = canonicalID2;
  [v20 setObject:canonicalID2 forKey:@"id"];

LABEL_12:
  externalID = [playableCopy externalID];

  if (externalID)
  {
    externalID2 = [playableCopy externalID];
    [v20 setObject:externalID2 forKey:@"externalId"];
  }

  referenceID2 = [playableCopy referenceID];

  if (referenceID2)
  {
    referenceID3 = [playableCopy referenceID];
    [v20 setObject:referenceID3 forKey:@"referenceId"];
  }

  mediaType = [playableCopy mediaType];

  if (mediaType)
  {
    if (contentTypeCopy)
    {
      v31 = contentTypeCopy;
    }

    else
    {
      utsEntityType = [playableCopy utsEntityType];
      v33 = utsEntityType;
      if (utsEntityType)
      {
        mediaType2 = utsEntityType;
      }

      else
      {
        mediaType2 = [playableCopy mediaType];
      }

      v31 = mediaType2;
    }

    [v20 setObject:v31 forKey:@"contentType"];
    v35 = [v20 objectForKey:@"id"];
    if (v35)
    {
    }

    else
    {
      mediaType3 = [playableCopy mediaType];
      v37 = [mediaType3 isEqualToString:@"Trailer"];

      if (v37)
      {
        [v20 setObject:@"trailer" forKey:@"id"];
      }
    }
  }

  channelID = [playableCopy channelID];

  if (channelID)
  {
    channelID2 = [playableCopy channelID];
    [v20 setObject:channelID2 forKey:@"brandId"];
  }

  tvAppDeeplinkURL = [playableCopy tvAppDeeplinkURL];

  if (tvAppDeeplinkURL)
  {
    tvAppDeeplinkURL2 = [playableCopy tvAppDeeplinkURL];
    absoluteString = [tvAppDeeplinkURL2 absoluteString];

    [v20 setObject:absoluteString forKey:@"url"];
  }

  liveStreamServiceID2 = [playableCopy liveStreamServiceID];
  if (liveStreamServiceID2)
  {
    [v20 setObject:liveStreamServiceID2 forKey:@"serviceId"];
  }

  if (positionCopy)
  {
    v44 = [self _convertToMs:positionCopy];

    [v20 setObject:v44 forKey:@"position"];
  }

  if (durationOverrideCopy)
  {
    duration = durationOverrideCopy;
  }

  else
  {
    metadata = [playableCopy metadata];
    duration = [metadata duration];

    if (!duration)
    {
      goto LABEL_40;
    }
  }

  v47 = [self _convertToMs:duration];

  [v20 setObject:v47 forKey:@"duration"];
LABEL_40:
  v48 = [v20 copy];

  return v48;
}

+ (void)recordPunchout:(id)punchout isUrlForPlay:(BOOL)play
{
  v30[1] = *MEMORY[0x1E69E9840];
  punchoutCopy = punchout;
  isAdultContent = [punchoutCopy isAdultContent];
  if (isAdultContent)
  {
    v6 = VUIDefaultLogObject(isAdultContent);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "ignore media event for adult content", v28, 2u);
    }
  }

  else
  {
    v6 = objc_opt_new();
    [v6 setObject:@"punchout" forKey:@"actionType"];
    v29 = @"isEntitledToPlay";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(punchoutCopy, "isEntitledToPlay")}];
    v30[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    [v6 setObject:v8 forKey:@"actionDetails"];
    canonicalID = [punchoutCopy canonicalID];

    if (canonicalID)
    {
      canonicalID2 = [punchoutCopy canonicalID];
      [v6 setObject:canonicalID2 forKey:@"id"];
    }

    externalID = [punchoutCopy externalID];

    if (externalID)
    {
      externalID2 = [punchoutCopy externalID];
      [v6 setObject:externalID2 forKey:@"externalId"];
    }

    referenceID = [punchoutCopy referenceID];

    if (referenceID)
    {
      referenceID2 = [punchoutCopy referenceID];
      [v6 setObject:referenceID2 forKey:@"referenceId"];
    }

    mediaType = [punchoutCopy mediaType];

    if (mediaType)
    {
      mediaType2 = [punchoutCopy mediaType];
      [v6 setObject:mediaType2 forKey:@"contentType"];
    }

    channelDetails = [punchoutCopy channelDetails];
    channelID = [channelDetails channelID];

    if (channelID)
    {
      channelDetails2 = [punchoutCopy channelDetails];
      channelID2 = [channelDetails2 channelID];
      [v6 setObject:channelID2 forKey:@"brandId"];

      v21 = [v6 objectForKey:@"id"];

      if (!v21)
      {
        channelDetails3 = [punchoutCopy channelDetails];
        channelID3 = [channelDetails3 channelID];
        [v6 setObject:channelID3 forKey:@"id"];
      }
    }

    punchoutURL = [punchoutCopy punchoutURL];

    if (punchoutURL)
    {
      punchoutURL2 = [punchoutCopy punchoutURL];
      absoluteString = [punchoutURL2 absoluteString];

      [v6 setObject:absoluteString forKey:@"url"];
    }

    v27 = +[VUIMetricsController sharedInstance];
    [v27 recordMedia:v6];
  }
}

+ (void)recordBGVideoPlayOfTVPMediaItem:(id)item contentPosition:(id)position isAmbient:(BOOL)ambient actionType:(id)type
{
  ambientCopy = ambient;
  itemCopy = item;
  positionCopy = position;
  typeCopy = type;
  v12 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v15 = VUIDefaultLogObject(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "ignore media event for adult content", v17, 2u);
    }
  }

  else
  {
    v15 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:itemCopy contentPosition:positionCopy isBackground:1 isAmbient:ambientCopy actionType:typeCopy];
    v16 = +[VUIMetricsController sharedInstance];
    [v16 recordMedia:v15];
  }
}

+ (void)recordPlayOfTVPMediaItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v7 = VUIDefaultLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "ignore media event for adult content", v9, 2u);
    }
  }

  else
  {
    v7 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:itemCopy contentPosition:0 isBackground:0 isAmbient:0 actionType:0];
    v8 = +[VUIMetricsController sharedInstance];
    [v8 recordMedia:v7];
  }
}

+ (void)recordStopOfTVPMediaItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v7 = VUIDefaultLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "ignore media event for adult content", v9, 2u);
    }
  }

  else
  {
    v7 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:itemCopy contentPosition:0 isBackground:0 isAmbient:0 actionType:@"stop"];
    v8 = +[VUIMetricsController sharedInstance];
    [v8 recordMedia:v7];
  }
}

+ (id)clickMetricsFromTVPMediaItem:(id)item targetType:(id)type
{
  v20[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  itemCopy = item;
  v7 = objc_opt_new();
  v8 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:itemCopy contentPosition:0 isBackground:0 isAmbient:0 actionType:0];

  [v7 addEntriesFromDictionary:v8];
  v9 = [v7 valueForKey:@"id"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v8 objectForKey:@"contentType"];
    v11 = @"trailer";
    v13 = [v12 isEqualToString:@"trailer"];

    if ((v13 & 1) == 0)
    {
      v15 = VUIDefaultLogObject(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "VUIMetricsMediaEvent: No media ID found for non-trailer TVPMediaItem", v18, 2u);
      }

      v11 = &stru_1F5DB25C0;
    }
  }

  v19[0] = @"targetId";
  v19[1] = @"targetType";
  v20[0] = v11;
  v20[1] = typeCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v7 addEntriesFromDictionary:v16];

  [v7 removeObjectForKey:@"startType"];
  [v7 removeObjectForKey:@"url"];
  [v7 removeObjectForKey:@"id"];

  return v7;
}

+ (id)clickMetricsForSkipInfo:(id)info onMediaItem:(id)item
{
  v22[4] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  itemCopy = item;
  v7 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  promoInfo = [infoCopy promoInfo];

  if (promoInfo)
  {
    promoInfo2 = [infoCopy promoInfo];
    canonicalId = [promoInfo2 canonicalId];

    v7 = canonicalId;
  }

  if (!v7)
  {
    v7 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  }

  localizedTitle = [infoCopy localizedTitle];
  v12 = [VUIMetricsMediaEvent clickMetricsFromTVPMediaItem:itemCopy];
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = &stru_1F5DB25C0;
  }

  v21[0] = @"targetId";
  v21[1] = @"actionType";
  v22[0] = v13;
  v22[1] = @"skip";
  v22[2] = @"preRoll";
  v21[2] = @"actionContext";
  v21[3] = @"actionDetails";
  if (localizedTitle)
  {
    v14 = localizedTitle;
  }

  else
  {
    v14 = &stru_1F5DB25C0;
  }

  v19 = @"name";
  v20 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
  [v17 addEntriesFromDictionary:v16];

  return v17;
}

+ (id)clickMetricsForUpNextWithPromoInfo:(id)info onMediaItem:(id)item
{
  v21[4] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  itemCopy = item;
  canonicalId = [infoCopy canonicalId];
  if ([infoCopy isAddedToUpNext])
  {
    [infoCopy addedToUpNextLabelString];
  }

  else
  {
    [infoCopy addToUpNextLabelString];
  }
  v8 = ;
  v9 = [VUIMetricsMediaEvent clickMetricsFromTVPMediaItem:itemCopy targetType:@"upNextButton"];

  if (canonicalId)
  {
    v10 = canonicalId;
  }

  else
  {
    v10 = &stru_1F5DB25C0;
  }

  v21[0] = v10;
  v20[0] = @"targetId";
  v20[1] = @"actionType";
  isAddedToUpNext = [infoCopy isAddedToUpNext];
  v12 = VUIMetricsActionTypeRemove;
  if (!isAddedToUpNext)
  {
    v12 = VUIMetricsActionTypeAdd;
  }

  v21[1] = *v12;
  v21[2] = @"preRoll";
  v20[2] = @"actionContext";
  v20[3] = @"actionDetails";
  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = &stru_1F5DB25C0;
  }

  v18 = @"name";
  v19 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
  [v16 addEntriesFromDictionary:v15];

  return v16;
}

+ (id)_metricsDataFromTVPMediaItem:(id)item contentPosition:(id)position isBackground:(BOOL)background isAmbient:(BOOL)ambient actionType:(id)type
{
  backgroundCopy = background;
  itemCopy = item;
  positionCopy = position;
  typeCopy = type;
  v13 = objc_opt_new();
  mediaItemURL = [itemCopy mediaItemURL];

  if (mediaItemURL)
  {
    mediaItemURL2 = [itemCopy mediaItemURL];
    absoluteString = [mediaItemURL2 absoluteString];

    [v13 setObject:absoluteString forKey:@"url"];
  }

  v51 = typeCopy;
  if (typeCopy)
  {
    v17 = typeCopy;
  }

  else
  {
    v17 = @"play";
  }

  [v13 setObject:v17 forKey:@"actionType"];
  v18 = [itemCopy mediaItemMetadataForProperty:?];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  }

  v21 = v20;

  v22 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  v23 = v22;
  v24 = v21;
  if (v21 || (v24 = v22) != 0)
  {
    [v13 setObject:v24 forKey:@"id"];
  }

  v25 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  if (v25)
  {
    [v13 setObject:v25 forKey:@"externalId"];
  }

  v26 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
  if (v26)
  {
    [v13 setObject:v26 forKey:@"referenceId"];
  }

  v50 = v23;
  v27 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  if (v27)
  {
    [v13 setObject:v27 forKey:@"brandId"];
  }

  v28 = [itemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipDuration"];
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    selfCopy2 = self;
    v31 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B70]];
    if (!v31)
    {
      goto LABEL_23;
    }

    v29 = v31;
  }

  selfCopy2 = self;
  v32 = [self _convertToMs:v29];

  [v13 setObject:v32 forKey:@"duration"];
LABEL_23:
  v33 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C48]];
  if (v33)
  {
    [v13 setObject:v33 forKey:@"serviceId"];
  }

  if (positionCopy)
  {
    v34 = [selfCopy2 _convertToMs:positionCopy];

    [v13 setObject:v34 forKey:@"position"];
  }

  v35 = v21;
  if (backgroundCopy)
  {
    [v13 setObject:@"automatic" forKey:@"startType"];
    v36 = [itemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
    v37 = [v36 length];

    if (v37)
    {
      v38 = @"KeyPlay";
    }

    else
    {
      v38 = @"ambient";
    }

    if (!v37 && !ambient)
    {
      v39 = [itemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyUTSEntityType"];
      v40 = v39;
      v41 = @"trailer";
      if (v39)
      {
        v41 = v39;
      }

      v38 = v41;
    }

    v42 = v13;
    v43 = v38;
    goto LABEL_43;
  }

  v44 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v38 = v44;
  if (!v44)
  {
    goto LABEL_44;
  }

  if (([(__CFString *)v44 isEqualToString:*MEMORY[0x1E69D5EB8]]& 1) != 0)
  {
    goto LABEL_41;
  }

  if ([(__CFString *)v38 isEqualToString:*MEMORY[0x1E69D5EC8]])
  {
    [v13 setObject:@"rental" forKey:@"entitlementReason"];
LABEL_41:
    v43 = @"movie";
LABEL_42:
    v42 = v13;
LABEL_43:
    [v42 setObject:v43 forKey:@"contentType"];
    goto LABEL_44;
  }

  v46 = [(__CFString *)v38 isEqualToString:*MEMORY[0x1E69D5ED0]];
  if (v46)
  {
    v43 = @"episode";
    goto LABEL_42;
  }

  v47 = VUIDefaultLogObject(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:v47 contentPosition:? isBackground:? isAmbient:? actionType:?];
  }

LABEL_44:

  return v13;
}

+ (id)_convertToMs:(id)ms
{
  v3 = 1000 * [ms longValue];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithLong:v3];
}

@end