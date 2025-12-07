@interface IntelligencePlatformComputeService
- (_TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService)init;
- (void)clearViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply;
- (void)stopWithReply:(id)reply;
- (void)truncateViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply;
- (void)updateGroupWithName:(NSString *)name namesAndRequests:(NSArray *)requests reply:(id)reply;
- (void)updateViewWithName:(NSString *)name viewUpdateSourceRequests:(NSArray *)requests reply:(id)reply;
@end

@implementation IntelligencePlatformComputeService

- (void)updateViewWithName:(NSString *)name viewUpdateSourceRequests:(NSArray *)requests reply:(id)reply
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = name;
  v13[3] = requests;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F4C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F4D0;
  v16[5] = v15;
  nameCopy = name;
  requestsCopy = requests;
  selfCopy = self;
  sub_10000A27C(0, 0, v11, &unk_10000F4D8, v16);
}

- (void)updateGroupWithName:(NSString *)name namesAndRequests:(NSArray *)requests reply:(id)reply
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = name;
  v13[3] = requests;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F478;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F480;
  v16[5] = v15;
  nameCopy = name;
  requestsCopy = requests;
  selfCopy = self;
  sub_10000A27C(0, 0, v11, &unk_10000F488, v16);
}

- (void)clearViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = name;
  *(v13 + 24) = rebuild;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F450;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F458;
  v16[5] = v15;
  nameCopy = name;
  selfCopy = self;
  sub_10000A27C(0, 0, v11, &unk_10000F460, v16);
}

- (void)truncateViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = name;
  *(v13 + 24) = rebuild;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F420;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F428;
  v16[5] = v15;
  nameCopy = name;
  selfCopy = self;
  sub_10000A27C(0, 0, v11, &unk_10000F430, v16);
}

- (void)stopWithReply:(id)reply
{
  v5 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10000F3D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10000F3E8;
  v12[5] = v11;
  selfCopy = self;
  sub_10000A27C(0, 0, v7, &unk_10000F3F8, v12);
}

- (_TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister;
  sub_10000A234(&qword_100018938, &qword_10000F3B8);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 14) = &_swiftEmptyArrayStorage;
  *(&self->super.isa + v4) = v5;
  v6 = OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister;
  sub_10000A234(&qword_100018940, &unk_10000F3C0);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 14) = &_swiftEmptyArrayStorage;
  *(&self->super.isa + v6) = v7;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(IntelligencePlatformComputeService *)&v9 init];
}

@end