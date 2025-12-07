@interface UWBPrewarmSession
- (_TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession)init;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)sessionDidStartRunning:(id)running;
- (void)systemConfigurator:(id)configurator didUpdateResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type;
- (void)systemConfigurator:(id)configurator didUpdateState:(id)state;
@end

@implementation UWBPrewarmSession

- (_TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemConfigurator:(id)configurator didUpdateState:(id)state
{
  configuratorCopy = configurator;
  stateCopy = state;
  selfCopy = self;
  sub_10024EE5C(stateCopy);
}

- (void)systemConfigurator:(id)configurator didUpdateResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  configuratorCopy = configurator;
  selfCopy = self;
  sub_10024F014(exceeded, ObjCClassMetadata);
}

- (void)sessionDidStartRunning:(id)running
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = qword_100501D90;
  selfCopy = self;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    (*(&selfCopy->super.isa + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onStart))(v12);
  }

  else
  {
    __break(1u);
  }
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = qword_100501D90;
  errorCopy = error;
  selfCopy = self;
  if (v10 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    (*(&selfCopy->super.isa + OBJC_IVAR____TtC10seservicedP33_4D3BC54BA96E8438A66520691EE354E617UWBPrewarmSession_onInvalidation))(errorCopy);
  }

  else
  {
    __break(1u);
  }
}

@end