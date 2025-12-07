@interface AMSUIMessagingTemporaryActionDataProvider
+ (id)parametersForAppStoreOptInNotificationWithDeeplink:(id)deeplink;
@end

@implementation AMSUIMessagingTemporaryActionDataProvider

+ (id)parametersForAppStoreOptInNotificationWithDeeplink:(id)deeplink
{
  v3 = sub_1BB1DB398();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  v7 = static ActionDataProvider.parametersForAppStoreOptInNotification(deeplink:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = sub_1BB1DD2A8();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end