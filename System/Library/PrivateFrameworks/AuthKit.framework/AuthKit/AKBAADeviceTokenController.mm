@interface AKBAADeviceTokenController
+ (AKBAADeviceTokenController)sharedTokenController;
+ (NSString)deviceTokenKeychainKey;
+ (NSString)deviceTokenServerResponseKey;
- (AKBAADeviceTokenController)init;
- (int64_t)shouldSendBAACertWithToken;
- (void)fetchBAADeviceTokenWithCompletionHandler:(id)handler;
- (void)markBAAOperationSuccessful;
- (void)refreshBAADeviceTokenWithCompletionHandler:(id)handler;
- (void)refreshCertWithTokenFeatureWithCompletionHandler:(id)handler;
@end

@implementation AKBAADeviceTokenController

+ (AKBAADeviceTokenController)sharedTokenController
{
  if (qword_100371BC0 != -1)
  {
    swift_once();
  }

  v3 = qword_100377660;

  return v3;
}

+ (NSString)deviceTokenServerResponseKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)deviceTokenKeychainKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)shouldSendBAACertWithToken
{
  selfCopy = self;
  v3 = sub_1001FAFA8();

  return v3;
}

- (AKBAADeviceTokenController)init
{
  swift_getObjectType();
  v2 = AKURLBagKeyBAAFetchDeviceToken;
  v3 = type metadata accessor for URLBagFeatureFlag(0);
  v4 = swift_allocObject();
  v5 = v2;
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedURL;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *&v4[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_cachedStatus] = 0;
  *&v4[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagFetchTask] = 0;
  *&v4[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagKey] = v5;
  v8 = &v4[OBJC_IVAR____TtC3akd17URLBagFeatureFlag_urlBagProvider];
  *v8 = sub_100228E10;
  v8[1] = 0;
  v12.receiver = v4;
  v12.super_class = v3;
  v9 = [(AKBAADeviceTokenController *)&v12 init];
  v10 = sub_1001FFD54(sub_1001FB270, 0, sub_1001FB2FC, 0, sub_1001FB36C, 0, v9);
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)markBAAOperationSuccessful
{
  v2 = *(&self->super.isa + OBJC_IVAR___AKBAADeviceTokenController_haveBAAOperationsSucceeded);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
}

- (void)refreshBAADeviceTokenWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029E3A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E060;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029E3B0, v12);
}

- (void)fetchBAADeviceTokenWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029E380;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E040;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029E390, v12);
}

- (void)refreshCertWithTokenFeatureWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029E370;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

@end