@interface WISXPCServer
+ (WISXPCServer)shared;
- (BOOL)startAndReturnError:(id *)error;
- (WISXPCServer)init;
@end

@implementation WISXPCServer

- (WISXPCServer)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ServicePredictionController();
  v4 = sub_1001C420C();
  type metadata accessor for XPCServer();
  v5 = swift_allocObject();
  sub_1001696FC(v4);
  *(&self->super.isa + OBJC_IVAR___WISXPCServer_xpcServer) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(WISXPCServer *)&v7 init];
}

+ (WISXPCServer)shared
{
  if (qword_1002D90C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1002DBF60;

  return v3;
}

- (BOOL)startAndReturnError:(id *)error
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_10016930C(0, 0, v6, &unk_10024A180, v8);

  return 1;
}

@end