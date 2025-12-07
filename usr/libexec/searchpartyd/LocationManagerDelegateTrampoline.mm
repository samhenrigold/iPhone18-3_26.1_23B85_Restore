@interface LocationManagerDelegateTrampoline
- (_TtC12searchpartydP33_59DB3DB2CFFD0A5DD2F04F14E73C8D1533LocationManagerDelegateTrampoline)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationManagerDelegateTrampoline

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v7;
    sub_10025EDD4(0, 0, v6, &unk_1013F52C8, v11);
  }

  else
  {
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = error;
    errorCopy = error;
    sub_10025EDD4(0, 0, v7, &unk_1013F52B0, v11);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_10025EDD4(0, 0, v5, &unk_1013F52A0, v9);
  }
}

- (_TtC12searchpartydP33_59DB3DB2CFFD0A5DD2F04F14E73C8D1533LocationManagerDelegateTrampoline)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LocationManagerDelegateTrampoline *)&v5 init];
}

@end