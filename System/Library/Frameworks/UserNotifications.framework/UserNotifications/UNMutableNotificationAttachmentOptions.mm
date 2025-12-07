@interface UNMutableNotificationAttachmentOptions
- (id)copyWithZone:(_NSZone *)zone;
- (void)setThumbnailGeneratorUserInfo:(id)info;
@end

@implementation UNMutableNotificationAttachmentOptions

- (void)setThumbnailGeneratorUserInfo:(id)info
{
  self->super._thumbnailGeneratorUserInfo = [info copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UNNotificationAttachmentOptions alloc];

  return [(UNNotificationAttachmentOptions *)v4 _initWithOptions:self];
}

@end