@interface ModelContainer
- (void)_observeRemoteNotifications:(id)notifications;
@end

@implementation ModelContainer

- (void)_observeRemoteNotifications:(id)notifications
{
  v3 = sub_197520BFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197520BDC();

  sub_197445198();

  (*(v4 + 8))(v7, v3);
}

@end