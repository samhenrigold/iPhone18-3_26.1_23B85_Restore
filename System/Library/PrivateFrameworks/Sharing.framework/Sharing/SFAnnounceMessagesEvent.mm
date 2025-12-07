@interface SFAnnounceMessagesEvent
+ (id)stringForExitView:(int64_t)view;
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFAnnounceMessagesEvent

+ (id)stringForExitView:(int64_t)view
{
  if ((view - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E788CEB8[view - 1];
  }
}

- (NSDictionary)eventPayload
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"allowsSiriWhenLocked";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent allowsSiriWhenLocked](self, "allowsSiriWhenLocked")}];
  v13[0] = v3;
  v12[1] = @"announceMessagesAlreadyEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent announceMessagesAlreadyEnabled](self, "announceMessagesAlreadyEnabled")}];
  v13[1] = v4;
  v12[2] = @"pairingExitView";
  v5 = [objc_opt_class() stringForExitView:{-[SFAnnounceMessagesEvent pairingExitView](self, "pairingExitView")}];
  v13[2] = v5;
  v12[3] = @"skippedTutorialCards";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent skippedTutorialCards](self, "skippedTutorialCards")}];
  v13[3] = v6;
  v12[4] = @"userAutomaticallyEnrolled";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent userAutomaticallyEnrolled](self, "userAutomaticallyEnrolled")}];
  v13[4] = v7;
  v12[5] = @"userExplicitlyOptedIn";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent userExplicitlyOptedIn](self, "userExplicitlyOptedIn")}];
  v13[5] = v8;
  v12[6] = @"userExplicitlyOptedOut";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFAnnounceMessagesEvent userExplicitlyOptedOut](self, "userExplicitlyOptedOut")}];
  v13[6] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

- (void)submitEvent
{
  v4 = +[SFAnnounceMessagesEvent eventName];
  eventPayload = [(SFAnnounceMessagesEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end