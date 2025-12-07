@interface LACDTOMutableNotificationCategory
+ (id)newSecurityDelayRequiredCategory;
+ (id)securityDelayEndedCategory;
- (LACDTOMutableNotificationCategory)initWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewShowsTitle:(BOOL)title;
@end

@implementation LACDTOMutableNotificationCategory

- (LACDTOMutableNotificationCategory)initWithIdentifier:(id)identifier actions:(id)actions hiddenPreviewShowsTitle:(BOOL)title
{
  titleCopy = title;
  identifierCopy = identifier;
  actionsCopy = actions;
  v13.receiver = self;
  v13.super_class = LACDTOMutableNotificationCategory;
  v10 = [(LACDTOMutableNotificationCategory *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(LACDTOMutableNotificationCategory *)v10 setIdentifier:identifierCopy];
    [(LACDTOMutableNotificationCategory *)v11 setActions:actionsCopy];
    [(LACDTOMutableNotificationCategory *)v11 setHiddenPreviewShowsTitle:titleCopy];
  }

  return v11;
}

+ (id)newSecurityDelayRequiredCategory
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [self alloc];
  v3 = +[LACDTOMutableNotificationAction startNewDelayAction];
  v8[0] = v3;
  v4 = +[LACDTOMutableNotificationAction doNotStartNewDelayAction];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 initWithIdentifier:@"com.apple.coreauthd.notifications.category.securityDelay.required" actions:v5 hiddenPreviewShowsTitle:1];

  return v6;
}

+ (id)securityDelayEndedCategory
{
  v2 = [self alloc];
  v3 = [v2 initWithIdentifier:@"com.apple.coreauthd.notifications.category.securityDelay.ended" actions:MEMORY[0x1E695E0F0] hiddenPreviewShowsTitle:1];

  return v3;
}

@end