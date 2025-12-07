@interface DSK
+ (uint64_t)mandatoryInit;
- (void)startWithModule:(int64_t)module;
- (void)stop;
- (void)stopWithModule:(int64_t)module;
@end

@implementation DSK

- (void)startWithModule:(int64_t)module
{
  selfCopy = self;
  sub_1003358D4(module);
}

- (void)stopWithModule:(int64_t)module
{
  selfCopy = self;
  sub_100335F8C(module);
}

- (void)stop
{
  selfCopy = self;
  sub_100336618();
}

+ (uint64_t)mandatoryInit
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4 = qword_10051B7F0;
  *v3 = qword_10051B7F0;
  v5 = enum case for DispatchPredicate.onQueue(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = v4;
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v1 + 8);
  result = v9(v3, v0);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *v3 = v7;
  v6(v3, v5, v0);
  v11 = v7;
  v12 = _dispatchPreconditionTest(_:)();
  result = v9(v3, v0);
  if ((v12 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  aBlock[4] = sub_1000ED05C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100334E18;
  aBlock[3] = &unk_1004D0FF8;
  v13 = _Block_copy(aBlock);
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v11, v13);
  _Block_release(v13);
  type metadata accessor for Alisha(0);
  *v3 = v11;
  v6(v3, v5, v0);
  v14 = _dispatchPreconditionTest(_:)();
  result = v9(v3, v0);
  if ((v14 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10022F108();
  *v3 = v11;
  v6(v3, v5, v0);
  v15 = _dispatchPreconditionTest(_:)();
  result = v9(v3, v0);
  if (v15)
  {
    v16 = type metadata accessor for LyonCoreAnalytics();
    sub_1002F80D4(v16, v17);
    type metadata accessor for LyonAssetManagerDelegate();
    inited = swift_initStaticObject();
    v19 = sub_100238D1C(inited);
    return sub_10009257C(v19, v20);
  }

LABEL_11:
  __break(1u);
  return result;
}

@end