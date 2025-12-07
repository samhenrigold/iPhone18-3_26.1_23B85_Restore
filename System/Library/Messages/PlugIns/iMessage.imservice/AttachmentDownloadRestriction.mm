@interface AttachmentDownloadRestriction
+ (id)noSpaceForHighQualityLimit:(unint64_t)limit qualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled;
+ (id)noSpaceForLowQualityLimit:(unint64_t)limit qualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled;
+ (id)restrictionAllowedBySettingWithQualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled;
+ (id)restrictionDisallowedBySettingWithQualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled;
+ (id)restrictionForceAllowedWithQualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled;
+ (id)restrictionWithLimitType:(unint64_t)type limitSize:(unint64_t)size qualityType:(unint64_t)qualityType isSticker:(BOOL)sticker allowDownload:(BOOL)download lqmEnabled:(BOOL)enabled restrictionReason:(int64_t)reason;
- (AttachmentDownloadRestriction)initWithLimitType:(unint64_t)type limitSize:(unint64_t)size qualityType:(unint64_t)qualityType isSticker:(BOOL)sticker allowDownload:(BOOL)download lqmEnabled:(BOOL)enabled restrictionReason:(int64_t)reason;
- (void)collectMetricsForDownloadedFile:(id)file;
- (void)collectMetricsForFailureWithReportedSize:(id)size;
@end

@implementation AttachmentDownloadRestriction

+ (id)restrictionAllowedBySettingWithQualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled
{
  v5 = [[AttachmentDownloadRestriction alloc] initWithLimitType:6 limitSize:0 qualityType:type isSticker:sticker allowDownload:1 lqmEnabled:enabled restrictionReason:0];

  return v5;
}

+ (id)restrictionDisallowedBySettingWithQualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled
{
  v5 = [[AttachmentDownloadRestriction alloc] initWithLimitType:6 limitSize:0 qualityType:type isSticker:sticker allowDownload:0 lqmEnabled:enabled restrictionReason:1];

  return v5;
}

+ (id)restrictionForceAllowedWithQualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled
{
  v5 = [[AttachmentDownloadRestriction alloc] initWithLimitType:5 limitSize:0 qualityType:type isSticker:sticker allowDownload:1 lqmEnabled:enabled restrictionReason:0];

  return v5;
}

+ (id)noSpaceForLowQualityLimit:(unint64_t)limit qualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled
{
  v6 = [[AttachmentDownloadRestriction alloc] initWithLimitType:4 limitSize:limit qualityType:type isSticker:sticker allowDownload:0 lqmEnabled:enabled restrictionReason:2];

  return v6;
}

+ (id)noSpaceForHighQualityLimit:(unint64_t)limit qualityType:(unint64_t)type isSticker:(BOOL)sticker lqmEnabled:(BOOL)enabled
{
  v6 = [[AttachmentDownloadRestriction alloc] initWithLimitType:3 limitSize:limit qualityType:type isSticker:sticker allowDownload:0 lqmEnabled:enabled restrictionReason:2];

  return v6;
}

+ (id)restrictionWithLimitType:(unint64_t)type limitSize:(unint64_t)size qualityType:(unint64_t)qualityType isSticker:(BOOL)sticker allowDownload:(BOOL)download lqmEnabled:(BOOL)enabled restrictionReason:(int64_t)reason
{
  v9 = [[AttachmentDownloadRestriction alloc] initWithLimitType:type limitSize:size qualityType:qualityType isSticker:sticker allowDownload:download lqmEnabled:enabled restrictionReason:reason];

  return v9;
}

- (void)collectMetricsForDownloadedFile:(id)file
{
  fileCopy = file;
  v6 = +[IMMetricsCollector sharedInstance];
  metricsContext = [(AttachmentDownloadRestriction *)self metricsContext];
  [v6 trackAttachmentDownloadSuccess:fileCopy context:metricsContext];
}

- (void)collectMetricsForFailureWithReportedSize:(id)size
{
  sizeCopy = size;
  v7 = +[IMMetricsCollector sharedInstance];
  restrictionReason = [(AttachmentDownloadRestriction *)self restrictionReason];
  metricsContext = [(AttachmentDownloadRestriction *)self metricsContext];
  [v7 trackAttachmentDownloadFailedWithFileSize:sizeCopy reason:restrictionReason context:metricsContext];
}

- (AttachmentDownloadRestriction)initWithLimitType:(unint64_t)type limitSize:(unint64_t)size qualityType:(unint64_t)qualityType isSticker:(BOOL)sticker allowDownload:(BOOL)download lqmEnabled:(BOOL)enabled restrictionReason:(int64_t)reason
{
  enabledCopy = enabled;
  stickerCopy = sticker;
  v22.receiver = self;
  v22.super_class = AttachmentDownloadRestriction;
  v15 = [(AttachmentDownloadRestriction *)&v22 init];
  if (v15)
  {
    v16 = [IMAttachmentDownloadMetricsContext alloc];
    v17 = IMServiceNameiMessage;
    v18 = [NSNumber numberWithUnsignedLongLong:size];
    v19 = [v16 initForServiceName:v17 limitType:type limitSize:v18 qualityType:qualityType isSticker:stickerCopy lowQualityModeEnabled:enabledCopy];
    metricsContext = v15->_metricsContext;
    v15->_metricsContext = v19;

    v15->_allowDownload = download;
    v15->_restrictionReason = reason;
  }

  return v15;
}

@end