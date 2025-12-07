@interface BAAppManager
+ (BAAppManager)sharedManager;
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
- (void)appSessionDidTerminate;
- (void)privacyAcknowledgementNotification:(id)notification;
- (void)startAppSessionWithApplicationGroupIdentifier:(id)identifier enableUploads:(BOOL)uploads;
@end

@implementation BAAppManager

+ (BAAppManager)sharedManager
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2876B8;

  return v3;
}

- (void)startAppSessionWithApplicationGroupIdentifier:(id)identifier enableUploads:(BOOL)uploads
{
  v6 = sub_1E1780();
  v8 = v7;
  *(&self->super.isa + OBJC_IVAR___BAAppManager_enableUploads) = uploads;
  selfCopy = self;
  sub_110B44(v6, v8);
  v8, v9, v10, v11, v12, v13, v14, v15;
  sub_110D58();
  sub_110E60();
  sub_1E0B00();
}

- (void)appSessionDidTerminate
{
  selfCopy = self;
  sub_1E0AF0(1.0);
}

- (void)privacyAcknowledgementNotification:(id)notification
{
  v3 = sub_1E0860();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0850();
  sub_113D90();
  (*(v4 + 8))(v6, v3);
}

- (NSURL)url
{
  v3 = sub_1E0930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  AppManager.url.getter(v6);

  sub_1E0900(v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (NSString)name
{
  selfCopy = self;
  v3 = sub_112F3C();

  v4 = 0xE800000000000000;
  if (v3 != 2)
  {
    v4 = 0xE900000000000067;
  }

  if (v3 == 1)
  {
    v5 = 0xE900000000000076;
  }

  else
  {
    v5 = v4;
  }

  v6 = sub_1E1770();
  v5, v7, v8, v9, v10, v11, v12, v13;

  return v6;
}

- (NSString)sharedContainerIdentifier
{
  v2 = self + OBJC_IVAR___BAAppManager_applicationGroupIdentifier;
  swift_beginAccess();
  v3 = *(v2 + 1);
  if (v3)
  {

    v4 = sub_1E1770();
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end