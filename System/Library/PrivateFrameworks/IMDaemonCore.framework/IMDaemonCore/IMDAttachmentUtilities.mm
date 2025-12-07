@interface IMDAttachmentUtilities
+ (BOOL)_doesWRMRecommendDisablingLQM;
+ (BOOL)_isNetworkUltraConstrained;
+ (BOOL)commonCapabilitiesSupportHighQualityPhotos:(id)photos;
+ (BOOL)isNetworkLowDataMode;
+ (BOOL)isPreviewAttachmentSizeEnabled;
+ (BOOL)shouldAllowBackwardsCompatibilitySizeOverride;
+ (BOOL)shouldAllowHighQualityPhotoUploadForNetworkConditions;
+ (BOOL)shouldEnablePreviewTranscodingQualityForTransfer:(id)transfer isSending:(BOOL)sending;
+ (BOOL)shouldSendLowResolutionOnly;
+ (BOOL)updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled;
+ (id)_fetchSizeLimitsForTransfer:(id)transfer mode:(unint64_t)mode;
+ (id)messageAttachmentSendableUTIs;
+ (id)messageAttachmentSendableUTIsForResourcePath:(id)path;
+ (int64_t)largeFileSizeFor:(id)for allowedLargerRepresentation:(BOOL *)representation;
+ (unint64_t)_fileTransferSizeForSpatialImageFromServerBag:(id)bag;
+ (unint64_t)_minSizeForLargeAuxVideo;
+ (unint64_t)_smallerImageFileSize;
+ (unint64_t)freeSpaceInHomeDirectory;
+ (unint64_t)maxTransferAudioFileSizeForWifi:(unint64_t *)wifi cell:(unint64_t *)cell;
+ (unint64_t)maxTransferVideoFileSizeForWifi:(unint64_t *)wifi cell:(unint64_t *)cell;
+ (unint64_t)mmcsTargetReportSizeForHighQualityPhotoSize:(unint64_t)size commonCapabilities:(id)capabilities;
+ (unint64_t)modernHighQualityPhotoSizeLimit;
+ (unint64_t)tinyImageQualitySizeLimit;
+ (void)_fetchStandardSizeLimit:(unint64_t *)limit highQualitySizeLimit:(unint64_t *)sizeLimit forTransfer:(id)transfer;
+ (void)_fileTransferSizeForAAVideoFromServerBag:(unint64_t *)bag smallSize:(unint64_t *)size serverBag:(id)serverBag;
+ (void)_fileTransferSizeForAuxVideoFromServerBag:(unint64_t *)bag smallSize:(unint64_t *)size serverBag:(id)serverBag;
+ (void)maxTransferFileSizeForWifi:(unint64_t *)wifi cell:(unint64_t *)cell;
@end

@implementation IMDAttachmentUtilities

+ (unint64_t)freeSpaceInHomeDirectory
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSHomeDirectory();
  v4 = [defaultManager attributesOfFileSystemForPath:v3 error:0];

  v5 = [v4 objectForKey:*MEMORY[0x277CCA1D0]];
  longLongValue = [v5 longLongValue];

  return longLongValue;
}

+ (id)messageAttachmentSendableUTIs
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourcePath = [v3 resourcePath];

  v5 = [self messageAttachmentSendableUTIsForResourcePath:resourcePath];

  return v5;
}

+ (id)messageAttachmentSendableUTIsForResourcePath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = pathCopy;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "MessageAttachmentSendableUTIs called with resourcePath %@", &v17, 0xCu);
  }

  v5 = [(__CFString *)pathCopy stringByAppendingPathComponent:@"MessageSendableUTIs"];
  v6 = [v5 stringByAppendingPathExtension:@"plist"];

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "looking at path: %@", &v17, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v6];

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"does not exist >__<";
    if (v9)
    {
      v11 = @"exists!";
    }

    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "%@ %@", &v17, 0x16u);
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "MessageAttachmentSendableUTIs got dict %@ from %@", &v17, 0x16u);
  }

  if (v12)
  {
    v14 = [(__CFString *)v12 objectForKey:@"MessageSendableUTIs"];
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Got sendable UTI list: %@", &v17, 0xCu);
    }
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  return v14;
}

+ (BOOL)shouldSendLowResolutionOnly
{
  if (+[IMDAttachmentUtilities _isNetworkUltraConstrained])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Low resolution only because network is ultra constrained", v4, 2u);
    }

    return 1;
  }

  else
  {

    return MEMORY[0x2821737E8]();
  }
}

+ (id)_fetchSizeLimitsForTransfer:(id)transfer mode:(unint64_t)mode
{
  v40 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v29 = 0;
  _smallerImageFileSize = 0;
  [self _fetchStandardSizeLimit:&_smallerImageFileSize highQualitySizeLimit:&v29 forTransfer:transferCopy];
  v7 = _smallerImageFileSize;
  isAuxVideo = [transferCopy isAuxVideo];
  type = [transferCopy type];
  v10 = *MEMORY[0x277CC20B0];
  if (UTTypeConformsTo(type, *MEMORY[0x277CC20B0]))
  {
    if ((isAuxVideo & 1) == 0)
    {
      tinyImageQualitySizeLimit = [self tinyImageQualitySizeLimit];
      if (tinyImageQualitySizeLimit < _smallerImageFileSize)
      {
        v7 = tinyImageQualitySizeLimit;
      }
    }
  }

  v12 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v13 = [v12 objectForKey:@"ck-imessage-always-send-LQM-for-standard-size_overwrite"];
  bOOLValue = [v13 BOOLValue];

  if (UTTypeConformsTo([transferCopy type], v10) && (bOOLValue & 1) == 0)
  {
    _smallerImageFileSize = [self _smallerImageFileSize];
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_smallerImageFileSize];
      *buf = 138412290;
      v37 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Overwrite standard Size to tiny size %@", buf, 0xCu);
    }
  }

  if ([self shouldEnablePreviewTranscodingQualityForTransfer:transferCopy isSending:1])
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      guid = [transferCopy guid];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "tinyImageQualitySizeLimit")}];
      *buf = 138412546;
      v37 = guid;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Attempting to send transfer %@ with low quality image mode on. Forcing size limit to be %@", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "tinyImageQualitySizeLimit")}];
    v35 = v20;
    __message_sortedDedupedNonZeroNumberArray = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    goto LABEL_28;
  }

  if (mode == 2)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
    v31 = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = &v31;
  }

  else if (mode == 1)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v32 = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = &v32;
  }

  else
  {
    if (mode)
    {
      v25 = 0;
      goto LABEL_24;
    }

    if (![self shouldSendLowResolutionOnly])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_smallerImageFileSize];
      v33[0] = v22;
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
      v33[1] = v28;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];

      goto LABEL_22;
    }

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v34 = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = &v34;
  }

  v25 = [v23 arrayWithObjects:v24 count:1];
LABEL_22:

LABEL_24:
  v26 = IMLogHandleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = v25;
    _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "limits before sorting %@", buf, 0xCu);
  }

  __message_sortedDedupedNonZeroNumberArray = [v25 __message_sortedDedupedNonZeroNumberArray];

  v20 = IMLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = __message_sortedDedupedNonZeroNumberArray;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "limits after sorting %@", buf, 0xCu);
  }

LABEL_28:

  return __message_sortedDedupedNonZeroNumberArray;
}

+ (int64_t)largeFileSizeFor:(id)for allowedLargerRepresentation:(BOOL *)representation
{
  forCopy = for;
  if (qword_27D8CFE18 != -1)
  {
    sub_22B7D21C8();
  }

  v6 = off_27D8CFE10;
  if (off_27D8CFE10)
  {
    v10 = 0;
    v11 = 0;
    v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v6(forCopy, &v10, &v11, v7, representation);

    v8 = v10;
  }

  else
  {
    v8 = IMiMessageMaxFileSizeForUTI();
  }

  return v8;
}

+ (void)maxTransferFileSizeForWifi:(unint64_t *)wifi cell:(unint64_t *)cell
{
  v6 = MEMORY[0x277D1A8F8];
  v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  [v6 IMiMessageMaxTransferFileSizeForWifiForPhoneNumber:wifi cellSize:cell serverConfigurationBag:v7 phoneNumber:0 simID:0];
}

+ (unint64_t)maxTransferAudioFileSizeForWifi:(unint64_t *)wifi cell:(unint64_t *)cell
{
  v6 = MEMORY[0x277D1A8F8];
  v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v8 = [v6 IMiMessageMaxTransferAudioFileSizeForWifiForPhoneNumber:wifi cellSize:cell serverConfigurationBag:v7 phoneNumber:0 simID:0];

  return v8;
}

+ (unint64_t)maxTransferVideoFileSizeForWifi:(unint64_t *)wifi cell:(unint64_t *)cell
{
  v6 = MEMORY[0x277D1A8F8];
  v7 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v8 = [v6 IMiMessageMaxTransferVideoFileSizeForWifiForPhoneNumber:wifi cellSize:cell serverConfigurationBag:v7 phoneNumber:0 simID:0];

  return v8;
}

+ (void)_fileTransferSizeForAuxVideoFromServerBag:(unint64_t *)bag smallSize:(unint64_t *)size serverBag:(id)serverBag
{
  v18 = *MEMORY[0x277D85DE8];
  serverBagCopy = serverBag;
  v8 = [serverBagCopy objectForKey:@"att-aux-video-max-file-size"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [serverBagCopy objectForKey:@"att-aux-video-min-file-size"];

  unsignedIntegerValue2 = [v10 unsignedIntegerValue];
  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 134218240;
    v15 = unsignedIntegerValue;
    v16 = 2048;
    v17 = unsignedIntegerValue2;
    _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Server bag results for aux video big %lu small %lu ", &v14, 0x16u);
  }

  v13 = 0x100000;
  if (unsignedIntegerValue2)
  {
    v13 = unsignedIntegerValue2;
  }

  if (bag)
  {
    *bag = unsignedIntegerValue;
  }

  if (size)
  {
    *size = v13;
  }
}

+ (void)_fileTransferSizeForAAVideoFromServerBag:(unint64_t *)bag smallSize:(unint64_t *)size serverBag:(id)serverBag
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = [serverBag objectForKey:@"att-aa-video-max-file-size"];
  v8 = v7;
  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 104857600;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"NO";
    if (!v8)
    {
      v11 = @"YES";
    }

    v12 = 134218242;
    v13 = unsignedIntegerValue;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Server bag results for max stereo video %lu default(%@)", &v12, 0x16u);
  }

  if (bag)
  {
    *bag = unsignedIntegerValue;
  }

  if (size)
  {
    *size = unsignedIntegerValue;
  }
}

+ (unint64_t)_fileTransferSizeForSpatialImageFromServerBag:(id)bag
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [bag objectForKey:@"att-spatial-image-max-file-size"];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 20971520;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if (!v4)
    {
      v7 = @"YES";
    }

    v9 = 134218242;
    v10 = unsignedIntegerValue;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Server bag results for max spatial image %lu default(%@)", &v9, 0x16u);
  }

  return unsignedIntegerValue;
}

+ (BOOL)shouldAllowHighQualityPhotoUploadForNetworkConditions
{
  v17 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D19270] = [MEMORY[0x277D19270] sharedInstance];
  isWiFiUsable = [mEMORY[0x277D19270] isWiFiUsable];

  mEMORY[0x277D19270]2 = [MEMORY[0x277D19270] sharedInstance];
  hasLTEDataConnection = [mEMORY[0x277D19270]2 hasLTEDataConnection];

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if ((isWiFiUsable | hasLTEDataConnection))
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (isWiFiUsable)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    if (hasLTEDataConnection)
    {
      v7 = @"YES";
    }

    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "shouldAllowHighQualityPhotoUploadForNetworkConditions: (%@), isWifiUsable: (%@), hasLTE: (%@)", &v11, 0x20u);
  }

  return (isWiFiUsable | hasLTEDataConnection) & 1;
}

+ (unint64_t)modernHighQualityPhotoSizeLimit
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"hq-photo-size-limit"];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 104857600;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NO";
    if (!v4)
    {
      v7 = @"YES";
    }

    v9 = 134218242;
    v10 = unsignedIntegerValue;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Results for high quality photo size limit: %lu is default: (%@)", &v9, 0x16u);
  }

  return unsignedIntegerValue;
}

+ (BOOL)commonCapabilitiesSupportHighQualityPhotos:(id)photos
{
  v3 = [photos objectForKey:@"supports-high-quality-photo-file-sizes"];
  v4 = v3 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 integerValue] == 1;

  return v4;
}

+ (BOOL)shouldAllowBackwardsCompatibilitySizeOverride
{
  LOBYTE(v2) = 1;
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"disable-hq-photo-mmcs-reported-size-override"];
  v5 = v4;
  if (v4)
  {
    v2 = [v4 BOOLValue] ^ 1;
  }

  return v2;
}

+ (unint64_t)mmcsTargetReportSizeForHighQualityPhotoSize:(unint64_t)size commonCapabilities:(id)capabilities
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D18A10];
  capabilitiesCopy = capabilities;
  v8 = [v6 sharedInstanceForBagType:1];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isHighQualityPhotosEnabled = [mEMORY[0x277D1A9B8] isHighQualityPhotosEnabled];

  v11 = [self commonCapabilitiesSupportHighQualityPhotos:capabilitiesCopy];
  shouldAllowBackwardsCompatibilitySizeOverride = [self shouldAllowBackwardsCompatibilitySizeOverride];
  modernHighQualityPhotoSizeLimit = [self modernHighQualityPhotoSizeLimit];
  sizeCopy5 = size;
  if ((v11 & 1) == 0)
  {
    sizeCopy5 = size;
    if (isHighQualityPhotosEnabled)
    {
      sizeCopy5 = size;
      if (shouldAllowBackwardsCompatibilitySizeOverride)
      {
        sizeCopy5 = size;
        if (modernHighQualityPhotoSizeLimit >= size)
        {
          v15 = [v8 objectForKey:@"hq-photo-mmcs-reported-size-override"];
          v16 = v15;
          if (v15)
          {
            unsignedIntegerValue = [v15 unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue = 0x100000;
          }

          if (unsignedIntegerValue >= size)
          {
            sizeCopy5 = size;
          }

          else
          {
            sizeCopy5 = unsignedIntegerValue;
          }
        }
      }
    }
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = @"NO";
    v25 = 2048;
    v23 = 134219010;
    if (shouldAllowBackwardsCompatibilitySizeOverride)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v24 = sizeCopy5;
    sizeCopy6 = size;
    if (v11)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v27 = 2112;
    if (isHighQualityPhotosEnabled)
    {
      v19 = @"YES";
    }

    v28 = v20;
    v29 = 2112;
    v30 = v21;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Determined MMCS photo upload size to report: %lu, actual file size: %lu, allowCompatibilityOverride: %@, recipients support hqp: %@, hqp enabled: %@", &v23, 0x34u);
  }

  return sizeCopy5;
}

+ (BOOL)_isNetworkUltraConstrained
{
  v2 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
  isUltraConstrained = [v2 isUltraConstrained];

  return isUltraConstrained;
}

+ (unint64_t)_minSizeForLargeAuxVideo
{
  v25 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D19270] = [MEMORY[0x277D19270] sharedInstance];
  if ([mEMORY[0x277D19270] isWiFiEnabled])
  {
    mEMORY[0x277D19270]2 = [MEMORY[0x277D19270] sharedInstance];
    isWiFiUsable = [mEMORY[0x277D19270]2 isWiFiUsable];

    if (isWiFiUsable)
    {
      hasLTEDataConnection = 0;
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  mEMORY[0x277D19270]3 = [MEMORY[0x277D19270] sharedInstance];
  hasLTEDataConnection = [mEMORY[0x277D19270]3 hasLTEDataConnection];

  v6 = 1;
LABEL_6:
  mEMORY[0x277D19270]4 = [MEMORY[0x277D19270] sharedInstance];
  isWiFiUsable2 = [mEMORY[0x277D19270]4 isWiFiUsable];

  if (+[IMDAttachmentUtilities _isNetworkUltraConstrained])
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Low bandwidth cellular because network is ultra constrained", &v23, 2u);
    }

    hasLTEDataConnection = 0;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v23 = 138412290;
    v24 = v12;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "  Low Bandwidth Cell: %@", &v23, 0xCu);
  }

  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (hasLTEDataConnection)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v23 = 138412290;
    v24 = v14;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " High Bandwidth Cell: %@", &v23, 0xCu);
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    if (isWiFiUsable2)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v23 = 138412290;
    v24 = v16;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "      High Bandwidth: %@", &v23, 0xCu);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = @"YES";
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "    Wants Misc Types: %@", &v23, 0xCu);
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "      ** This is an aux video type", &v23, 2u);
  }

  v19 = 0x200000;
  if (isWiFiUsable2 & 1 | ((hasLTEDataConnection & 1) == 0))
  {
    v19 = 3145728;
  }

  if (hasLTEDataConnection & 1 | ((v6 & 1) == 0) | isWiFiUsable2 & 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x100000;
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = 134217984;
    v24 = (v20 >> 10);
    _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "  Max File Size: %lld kb", &v23, 0xCu);
  }

  return v20;
}

+ (void)_fetchStandardSizeLimit:(unint64_t *)limit highQualitySizeLimit:(unint64_t *)sizeLimit forTransfer:(id)transfer
{
  v56 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v47 = 0;
  modernHighQualityPhotoSizeLimit = 0;
  localURL = [transferCopy localURL];
  v10 = IMIsAAVideoURL();

  if (v10)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      guid = [transferCopy guid];
      *buf = 138412290;
      *&buf[4] = guid;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Overriding file size for AA video transfer %@", buf, 0xCu);
    }

    *buf = 0;
    v46 = 0;
    v13 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    [self _fileTransferSizeForAAVideoFromServerBag:buf smallSize:&v46 serverBag:v13];

    v14 = *buf;
    if (v14 >= [self _maxAllowedStereoVideoSize])
    {
      _maxAllowedStereoVideoSize = [self _maxAllowedStereoVideoSize];
    }

    else
    {
      _maxAllowedStereoVideoSize = *buf;
    }

    v47 = _maxAllowedStereoVideoSize;
    modernHighQualityPhotoSizeLimit = _maxAllowedStereoVideoSize;
  }

  else if ([transferCopy isAuxVideo])
  {
    v45 = 0;
    v46 = 0;
    v16 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    [self _fileTransferSizeForAuxVideoFromServerBag:&v46 smallSize:&v45 serverBag:v16];

    v18 = v45;
    v17 = v46;
    v47 = v45;
    if (v17 <= [self _minSizeForLargeAuxVideo])
    {
      _minSizeForLargeAuxVideo = [self _minSizeForLargeAuxVideo];
    }

    else
    {
      _minSizeForLargeAuxVideo = v46;
    }

    modernHighQualityPhotoSizeLimit = _minSizeForLargeAuxVideo;
    v26 = IMLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      guid2 = [transferCopy guid];
      *buf = 138412802;
      *&buf[4] = guid2;
      v50 = 2048;
      v51 = v18;
      v52 = 2048;
      v53 = _minSizeForLargeAuxVideo;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Overriding file size for Aux video transfer %@ to small %lu large %lu", buf, 0x20u);
    }
  }

  else
  {
    type = [transferCopy type];
    IsImage = IMUTTypeIsImage();

    type2 = [transferCopy type];
    if (IsImage)
    {
      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isHighQualityPhotosEnabled = [mEMORY[0x277D1A9B8] isHighQualityPhotosEnabled];

      if (isHighQualityPhotosEnabled)
      {
        v25 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
        IMiMessageSizeLimitsForTransferType();

        if ([self shouldAllowHighQualityPhotoUploadForNetworkConditions])
        {
          modernHighQualityPhotoSizeLimit = [self modernHighQualityPhotoSizeLimit];
        }
      }

      else
      {
        localURL2 = [transferCopy localURL];
        v30 = IMIsSpatialMedia();

        if (v30)
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            guid3 = [transferCopy guid];
            *buf = 138412290;
            *&buf[4] = guid3;
            _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Overriding file size for spatial image transfer %@", buf, 0xCu);
          }

          v33 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
          _maxAllowedSpatialImageSize = [self _fileTransferSizeForSpatialImageFromServerBag:v33];

          if (_maxAllowedSpatialImageSize >= [self _maxAllowedSpatialImageSize])
          {
            _maxAllowedSpatialImageSize = [self _maxAllowedSpatialImageSize];
          }

          v47 = _maxAllowedSpatialImageSize;
          modernHighQualityPhotoSizeLimit = _maxAllowedSpatialImageSize;
        }

        else
        {
          v35 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
          IMiMessageSizeLimitsForTransferType();
        }
      }

      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        guid4 = [transferCopy guid];
        *buf = 138412802;
        *&buf[4] = guid4;
        v50 = 2048;
        v51 = modernHighQualityPhotoSizeLimit;
        v52 = 2048;
        v53 = v47;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Setting file size for image transfer: %@. bigSize: %lu smallSize: %lu", buf, 0x20u);
      }
    }

    else
    {
      v28 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
      IMiMessageSizeLimitsForTransferType();
    }
  }

  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v38 = [mEMORY[0x277D1A990] getValueFromDomain:@"com.apple.imessage" forKey:@"TranscodeSizeLimitsKB"];

  if (v38 && [v38 count] == 2)
  {
    v39 = [v38 objectAtIndex:0];
    LODWORD(v40) = [v39 unsignedIntValue];

    v41 = [v38 objectAtIndex:1];
    unsignedIntValue = [v41 unsignedIntValue];

    if (v40 >= unsignedIntValue)
    {
      v43 = unsignedIntValue;
    }

    else
    {
      v43 = v40;
    }

    if (v40 <= unsignedIntValue)
    {
      v40 = unsignedIntValue;
    }

    else
    {
      v40 = v40;
    }

    v44 = IMLogHandleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      *&buf[4] = v47 >> 10;
      v50 = 2048;
      v51 = modernHighQualityPhotoSizeLimit >> 10;
      v52 = 2048;
      v53 = v43;
      v54 = 2048;
      v55 = v40;
      _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Overriding Transcode sizes limits due to default TranscodeSizeLimitsKB: (%lu, %lu) to (%lu, %lu)", buf, 0x2Au);
    }

    v47 = v43 << 10;
    modernHighQualityPhotoSizeLimit = v40 << 10;
  }

  if (limit)
  {
    *limit = v47;
  }

  if (sizeLimit)
  {
    *sizeLimit = modernHighQualityPhotoSizeLimit;
  }
}

+ (unint64_t)_smallerImageFileSize
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"madrid-small-image-size"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v5 = [v2 objectForKey:@"madrid-small-image-size"];
    unsignedIntegerValue2 = [v5 unsignedIntegerValue];

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Small image size ovverriden by server %@", &v10, 0xCu);
    }
  }

  else
  {
    unsignedIntegerValue2 = 512000;
  }

  return unsignedIntegerValue2;
}

+ (BOOL)isPreviewAttachmentSizeEnabled
{
  if ([MEMORY[0x277D1A8F8] IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:0 simID:0] && !objc_msgSend(self, "didLQMSettingChanged") || (IMGetCachedDomainBoolForKey() & 1) != 0)
  {
    return 1;
  }

  v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:@"send-preview-image"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

+ (BOOL)shouldEnablePreviewTranscodingQualityForTransfer:(id)transfer isSending:(BOOL)sending
{
  sendingCopy = sending;
  type = [transfer type];
  if (UTTypeConformsTo(type, *MEMORY[0x277CC20B0]))
  {
    v7 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
    if ([v7 isUltraConstrained])
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "LQM enabled because network is ultra constrained", buf, 2u);
      }

      updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled2 = 1;
      goto LABEL_35;
    }

    mEMORY[0x277D19270] = [MEMORY[0x277D19270] sharedInstance];
    isWiFiUsable = [mEMORY[0x277D19270] isWiFiUsable];

    if (isWiFiUsable && [MEMORY[0x277D1A8F8] IMReadDisablePreviewTranscodingQualityOnWiFiCarrierValueForPhoneNumber:0 simID:0])
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v62 = 0;
        v13 = "Operator: not using LQM on Wi-Fi";
        v14 = &v62;
LABEL_33:
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, v13, v14, 2u);
      }
    }

    else
    {
      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isDynamicLQMDisabledByWRM = [mEMORY[0x277D1A9B8] isDynamicLQMDisabledByWRM];

      if (!isDynamicLQMDisabledByWRM)
      {
        goto LABEL_30;
      }

      updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled = [self updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled];
      if (![MEMORY[0x277D1A8F8] IMReadDisablePreviewTranscodingQualityOnWRMCarrierValueForPhoneNumber:0 simID:0])
      {
        goto LABEL_30;
      }

      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v61 = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "LQM-WRM Operator recommends using WRM to disable LQM", v61, 2u);
      }

      _doesWRMRecommendDisablingLQM = [self _doesWRMRecommendDisablingLQM];
      mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
      isDataConnectionExpensive = [mEMORY[0x277D1A908] isDataConnectionExpensive];

      mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
      wrmNetworkPreference = [mEMORY[0x277D1A908]2 wrmNetworkPreference];
      intValue = [wrmNetworkPreference intValue];

      if (updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled)
      {
        v25 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D453C(v25, v26, v27, v28, v29, v30, v31, v32);
        }

        v33 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D45B0();
        }

        v34 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D4618(v34, v35, v36, v37, v38, v39, v40, v41);
        }

        v42 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D468C();
        }

        v43 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D46F4();
        }

        v44 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7D475C();
        }

        v58 = objc_alloc(MEMORY[0x277CBEAC0]);
        v57 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v56 = *MEMORY[0x277D1A268];
        v55 = [MEMORY[0x277CCABB0] numberWithBool:sendingCopy];
        v54 = *MEMORY[0x277D1A270];
        v45 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v46 = *MEMORY[0x277D1A260];
        v47 = [MEMORY[0x277CCABB0] numberWithBool:intValue != 0];
        v48 = *MEMORY[0x277D1A278];
        [MEMORY[0x277CCABB0] numberWithBool:_doesWRMRecommendDisablingLQM];
        _doesWRMRecommendDisablingLQM = v59 = _doesWRMRecommendDisablingLQM;
        v49 = *MEMORY[0x277D1A250];
        v50 = [MEMORY[0x277CCABB0] numberWithBool:isDataConnectionExpensive];
        v51 = [v58 initWithObjectsAndKeys:{v57, v56, v55, v54, v45, v46, v47, v48, _doesWRMRecommendDisablingLQM, v49, v50, *MEMORY[0x277D1A258], 0}];

        LOBYTE(_doesWRMRecommendDisablingLQM) = v59;
        mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
        [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A248] withDictionary:v51];
      }

      if (isDataConnectionExpensive & 1 | ((_doesWRMRecommendDisablingLQM & 1) == 0))
      {
LABEL_30:
        updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled2 = [self updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled];
LABEL_35:

        return updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled2;
      }

      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v60 = 0;
        v13 = "LQM-WRM Disable LQM as WRM and Interface check is satisfied";
        v14 = v60;
        goto LABEL_33;
      }
    }

    updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled2 = 0;
    goto LABEL_35;
  }

  return 0;
}

+ (BOOL)isNetworkLowDataMode
{
  if (+[IMDAttachmentUtilities _isNetworkUltraConstrained])
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Low Data Mode because network is ultra constrained", v10, 2u);
    }

    return 1;
  }

  else
  {
    mEMORY[0x277D19270] = [MEMORY[0x277D19270] sharedInstance];
    isWiFiUsable = [mEMORY[0x277D19270] isWiFiUsable];

    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    v7 = mEMORY[0x277D1A908];
    if (isWiFiUsable)
    {
      isWiFiLowDataMode = [mEMORY[0x277D1A908] isWiFiLowDataMode];
    }

    else
    {
      isWiFiLowDataMode = [mEMORY[0x277D1A908] isLowDataMode];
    }

    v9 = isWiFiLowDataMode;

    return v9;
  }
}

+ (unint64_t)tinyImageQualitySizeLimit
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if (v2)
  {
    v3 = v2;
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Preview size %lu from internal override", &v13, 0xCu);
    }

    return v3 << 10;
  }

  v6 = [MEMORY[0x277D1A8F8] IMReadAttachmentPreviewTranscodingQualitySizeCarrierValueForPhoneNumber:0 simID:0];
  if (v6)
  {
    integerValue = v6;
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = integerValue;
      v8 = "Preview size %lu from operator bundle";
LABEL_11:
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, v8, &v13, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v10 = [v9 objectForKey:@"preview-attachment-photo-size"];
  integerValue = [v10 integerValue];

  v7 = IMLogHandleForCategory();
  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (integerValue)
  {
    if (v11)
    {
      v13 = 134217984;
      v14 = integerValue;
      v8 = "Preview size %lu from server bag";
      goto LABEL_11;
    }

LABEL_12:

    return integerValue;
  }

  if (v11)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Using hard coded preview size", &v13, 2u);
  }

  return 358400;
}

+ (BOOL)updateAndReturnLQMStateAfterPreviewAttachmentSizeEnabled
{
  v3 = [MEMORY[0x277D1A8F8] IMReadEnablePreviewTranscodingQualityCarrierValueForPhoneNumber:0 simID:0];
  didLQMSettingChanged = [self didLQMSettingChanged];
  if (v3)
  {
    if ((didLQMSettingChanged & 1) == 0)
    {
      IMSetDomainBoolForKey();
      return 1;
    }
  }

  else if ((didLQMSettingChanged & 1) == 0)
  {
    IMSetDomainBoolForKey();
  }

  if (IMGetCachedDomainBoolForKey())
  {
    return 1;
  }

  v6 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v7 = [v6 objectForKey:@"send-preview-image"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)_doesWRMRecommendDisablingLQM
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    wrmNetworkPreference = [mEMORY[0x277D1A908] wrmNetworkPreference];
    mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
    wrmCellScore = [mEMORY[0x277D1A908]2 wrmCellScore];
    v18 = 138412546;
    v19 = wrmNetworkPreference;
    v20 = 2112;
    v21 = wrmCellScore;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "LQM-WRM Network pref is %@ and cellscore is %@", &v18, 0x16u);
  }

  mEMORY[0x277D1A908]3 = [MEMORY[0x277D1A908] sharedInstance];
  wrmCellScore2 = [mEMORY[0x277D1A908]3 wrmCellScore];
  intValue = [wrmCellScore2 intValue];

  mEMORY[0x277D1A908]4 = [MEMORY[0x277D1A908] sharedInstance];
  wrmNetworkPreference2 = [mEMORY[0x277D1A908]4 wrmNetworkPreference];
  if ([wrmNetworkPreference2 intValue])
  {
    v12 = 1;
  }

  else
  {
    v12 = (intValue - 1) >= 2;
  }

  v13 = !v12;

  if (v13)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "LQM-WRM Disabling LQM based on WRM recommendation", &v18, 2u);
    }
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"NO";
    if (v13)
    {
      v16 = @"YES";
    }

    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "LQM-WRM _doesWRMRecommendDisablingLQM is %@", &v18, 0xCu);
  }

  return v13;
}

@end