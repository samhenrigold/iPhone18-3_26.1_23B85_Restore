@interface LACDTOMutableNotificationAction
+ (id)doNotStartNewDelayAction;
+ (id)startNewDelayAction;
- (LACDTOMutableNotificationAction)initWithIdentifier:(id)identifier title:(id)title isTitleLocalized:(BOOL)localized isDestructive:(BOOL)destructive;
@end

@implementation LACDTOMutableNotificationAction

- (LACDTOMutableNotificationAction)initWithIdentifier:(id)identifier title:(id)title isTitleLocalized:(BOOL)localized isDestructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  localizedCopy = localized;
  identifierCopy = identifier;
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = LACDTOMutableNotificationAction;
  v12 = [(LACDTOMutableNotificationAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(LACDTOMutableNotificationAction *)v12 setIdentifier:identifierCopy];
    [(LACDTOMutableNotificationAction *)v13 setTitle:titleCopy];
    [(LACDTOMutableNotificationAction *)v13 setIsTitleLocalized:localizedCopy];
    [(LACDTOMutableNotificationAction *)v13 setIsDestructive:destructiveCopy];
  }

  return v13;
}

+ (id)doNotStartNewDelayAction
{
  v2 = [[self alloc] initWithIdentifier:@"com.apple.coreauthd.notifications.action.securityDelay.start" title:@"START_SECURITY_DELAY_ACTION" isTitleLocalized:0 isDestructive:0];

  return v2;
}

+ (id)startNewDelayAction
{
  v2 = [[self alloc] initWithIdentifier:@"com.apple.coreauthd.notifications.action.securityDelay.dismiss" title:@"NOT_NOW_ACTION" isTitleLocalized:0 isDestructive:1];

  return v2;
}

@end