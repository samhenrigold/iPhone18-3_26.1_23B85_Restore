@interface AppProtectionObserver
- (AppProtectionObserver)init;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
@end

@implementation AppProtectionObserver

- (AppProtectionObserver)init
{
  v10.receiver = self;
  v10.super_class = AppProtectionObserver;
  v2 = [(AppProtectionObserver *)&v10 init];
  v4 = v2;
  if (v2 && sub_1005FCE30(v2, v3))
  {
    v5 = +[APSubject subjectMonitorRegistry];
    v6 = [v5 addMonitor:v4 subjectMask:1];
    subscription = v4->_subscription;
    v4->_subscription = v6;

    v8 = [APApplication applicationWithBundleIdentifier:@"com.apple.MobileSMS"];
    -[AppProtectionObserver setMessagesAppLockState:](v4, "setMessagesAppLockState:", [v8 isLocked]);
  }

  return v4;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  subscription = [APApplication applicationWithBundleIdentifier:@"com.apple.MobileSMS", subscription];
  -[AppProtectionObserver setMessagesAppLockState:](self, "setMessagesAppLockState:", [subscription isLocked]);
}

- (void)dealloc
{
  [(APSubjectMonitorSubscription *)self->_subscription invalidate];
  v3.receiver = self;
  v3.super_class = AppProtectionObserver;
  [(AppProtectionObserver *)&v3 dealloc];
}

@end