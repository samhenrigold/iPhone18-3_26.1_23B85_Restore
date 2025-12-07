@interface CurrentLocationMonitor
- (_TtC13findmylocated22CurrentLocationMonitor)init;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation CurrentLocationMonitor

- (_TtC13findmylocated22CurrentLocationMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_1001338EC(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = static os_log_type_t.error.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  v6 = qword_1005DFBE8;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  v8 = errorCopy;
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000588B8();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "failed with error - %{public}@", 30, 2, v7);
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v4 = *&status;
  managerCopy = manager;
  selfCopy = self;
  sub_100133EBC(v4);
}

@end