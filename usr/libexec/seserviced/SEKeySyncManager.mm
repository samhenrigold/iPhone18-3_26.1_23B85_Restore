@interface SEKeySyncManager
+ (_TtC10seserviced16SEKeySyncManager)singleton;
+ (void)kickOff;
- (NSString)ptcViewName;
- (id)getAvailableTLKForViewName:(id)name secureElement:(id)element;
- (id)haveAvailableTLKForEncryptedData:(id)data secureElement:(id)element error:(id *)error;
- (void)onAlarm:(id)alarm;
- (void)onDarwinNotification:(id)notification;
@end

@implementation SEKeySyncManager

+ (_TtC10seserviced16SEKeySyncManager)singleton
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  return v2;
}

- (NSString)ptcViewName
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (void)kickOff
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = ObjCClassMetadata;
  sub_1001F9BE8(0, 0, v4, &unk_10040C600, v7);
}

- (void)onDarwinNotification:(id)notification
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_10016051C(v3, v5);
}

- (id)getAvailableTLKForViewName:(id)name secureElement:(id)element
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  elementCopy = element;

  v9 = sub_100160BDC(v5, v7, elementCopy);
  v11 = v10;

  if (v11 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v9, v11);
    v12 = isa;
  }

  return v12;
}

- (id)haveAvailableTLKForEncryptedData:(id)data secureElement:(id)element error:(id *)error
{
  dataCopy = data;
  elementCopy = element;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1001625A8(v8, v10, elementCopy);
  v12 = v11;

  sub_10006A178(v8, v10);

  return v12;
}

- (void)onAlarm:(id)alarm
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = self;
  *(v8 + 40) = 8;

  sub_1001F9BE8(0, 0, v6, &unk_10040C570, v8);
}

@end