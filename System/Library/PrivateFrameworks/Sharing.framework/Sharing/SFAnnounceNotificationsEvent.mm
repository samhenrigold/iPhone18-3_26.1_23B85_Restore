@interface SFAnnounceNotificationsEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFAnnounceNotificationsEvent

- (NSDictionary)eventPayload
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"tappedInitialEnable";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedInitialEnable](self, "tappedInitialEnable")}];
  v11[0] = v3;
  v10[1] = @"tappedCustomize";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedCustomize](self, "tappedCustomize")}];
  v11[1] = v4;
  v10[2] = @"tappedNotNow";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedNotNow](self, "tappedNotNow")}];
  v11[2] = v5;
  v10[3] = @"tappedDismissButton";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent tappedDismissButton](self, "tappedDismissButton")}];
  v11[3] = v6;
  v10[4] = @"customizedApps";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceNotificationsEvent customizedApps](self, "customizedApps")}];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (void)submitEvent
{
  v4 = +[SFAnnounceNotificationsEvent eventName];
  eventPayload = [(SFAnnounceNotificationsEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end