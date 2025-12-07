@interface CurrentLocationMonitor
- (_TtC12searchpartyd22CurrentLocationMonitor)init;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation CurrentLocationMonitor

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v4 = *&status;
  managerCopy = manager;
  selfCopy = self;
  sub_100010440(v4);
}

- (_TtC12searchpartyd22CurrentLocationMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  sub_100506710(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = static os_log_type_t.error.getter();
  if (qword_1016947B0 != -1)
  {
    swift_once();
  }

  v6 = qword_10177AEF0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = errorCopy;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "failed with error - %{public}@", 30, 2, v7);
}

@end