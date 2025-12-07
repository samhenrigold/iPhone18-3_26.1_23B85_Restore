@interface CNCommLimitsAskToController
+ (CNCommLimitsAskToController)shared;
- (CNCommLimitsAskToController)init;
- (void)registerAllTopics;
- (void)sendCommLimitsQuestionForHandles:(NSArray *)handles completionHandler:(id)handler;
@end

@implementation CNCommLimitsAskToController

+ (CNCommLimitsAskToController)shared
{
  if (qword_10004D4E8 != -1)
  {
    swift_once();
  }

  v3 = static CommLimitsAskToController.shared;

  return v3;
}

- (void)sendCommLimitsQuestionForHandles:(NSArray *)handles completionHandler:(id)handler
{
  v7 = sub_100018CD0(&qword_10004DD40, &qword_100034200);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = handles;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100034330;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100034340;
  v14[5] = v13;
  handlesCopy = handles;
  selfCopy = self;
  sub_100023AB8(0, 0, v9, &unk_100034350, v14);
}

- (void)registerAllTopics
{
  selfCopy = self;
  CommLimitsAskToController.registerAllTopics()();
}

- (CNCommLimitsAskToController)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CNCommLimitsAskToController_responseListener;
  type metadata accessor for CommLimitsResponseListener();
  v5 = swift_allocObject();
  sub_1000214F4();
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CNCommLimitsAskToController *)&v7 init];
}

@end