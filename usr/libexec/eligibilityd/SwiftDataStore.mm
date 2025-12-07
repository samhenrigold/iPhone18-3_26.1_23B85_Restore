@interface SwiftDataStore
- (BOOL)hasGracePeriod:(id)period;
- (id)getGracePeriodStartDate:(id)date;
- (void)createGracePeriod:(id)period;
- (void)purge;
- (void)startGracePeriod:(id)period;
@end

@implementation SwiftDataStore

- (void)purge
{

  sub_100014BD4();
}

- (BOOL)hasGracePeriod:(id)period
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1000142C0(v3, v5);

  if (v6)
  {
  }

  return v6 != 0;
}

- (void)createGracePeriod:(id)period
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (sub_1000142C0(v4, v6))
  {
  }

  else
  {
    type metadata accessor for GracePeriod(0);
    swift_allocObject();
    v7 = sub_100013868(v4, v6);
    (*(*self->_TtCs12_SwiftObject_opaque + 88))(v7);
    sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
    dispatch thunk of ModelContext.insert<A>(_:)();

    sub_10001496C();
  }
}

- (void)startGracePeriod:(id)period
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_10001520C(v3, v5);
}

- (id)getGracePeriodStartDate:(id)date
{
  v3 = sub_100001EB0(&qword_10005BD00, "^/");
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_1000142C0(v6, v8);

  if (v9)
  {
    v17[1] = v9;
    swift_getKeyPath();
    sub_100015F58(&qword_10005CED8, &unk_1000340C4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100015F58(&qword_10005CEC0, &unk_1000340E0);
    sub_100016384(&qword_10005C030, &qword_10005C038, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
    PersistentModel.getValue<A>(forKey:)();

    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v5, 1, v10);
    v13 = 0;
    if (v12 != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v11 + 8))(v5, v10);
      v13 = isa;
    }
  }

  else
  {

    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v13 = 0;
  }

  return v13;
}

@end