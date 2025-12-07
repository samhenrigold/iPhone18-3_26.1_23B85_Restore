@interface UtilityClient
- (_TtC27AppStoreComponentsDaemonKit13UtilityClient)init;
- (void)openURL:(id)l withReplyHandler:(id)handler;
- (void)restoreAppStoreWithReplyHandler:(id)handler;
@end

@implementation UtilityClient

- (void)openURL:(id)l withReplyHandler:(id)handler
{
  v6 = sub_22273731C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  sub_2227372FC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_222730818(v9, sub_2227113C4, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)restoreAppStoreWithReplyHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_2227309BC(sub_222710B60, v5);
}

- (_TtC27AppStoreComponentsDaemonKit13UtilityClient)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(UtilityClient *)&v3 init];
}

@end