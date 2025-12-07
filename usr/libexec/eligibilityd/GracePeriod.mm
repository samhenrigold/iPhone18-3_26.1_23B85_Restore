@interface GracePeriod
- (NSDate)startDate;
- (NSString)name;
- (void)setName:(id)name;
- (void)setStartDate:(id)date;
@end

@implementation GracePeriod

- (NSString)name
{
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  PersistentModel.getValue<A>(forKey:)();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

- (NSDate)startDate
{
  v3 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v3 - 8);
  v5 = v12 - v4;
  v12[1] = self;
  swift_getKeyPath();
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
  sub_100016384(&qword_10005C030, &qword_10005C038, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
  PersistentModel.getValue<A>(forKey:)();

  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v5, v6);
    v9 = isa;
  }

  return v9;
}

- (void)setStartDate:(id)date
{
  v5 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v11[1] = self;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v11[-2] = self;
  v11[-1] = v7;
  sub_100015F58(&qword_10005CED8, &unk_1000340C4);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100006A80(v7, &qword_10005BD00, "^/");
}

@end