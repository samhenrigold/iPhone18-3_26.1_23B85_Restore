@interface DefaultDaemonXPCService
- (_TtC19HealthRecordsDaemon23DefaultDaemonXPCService)init;
- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error;
@end

@implementation DefaultDaemonXPCService

- (_TtC19HealthRecordsDaemon23DefaultDaemonXPCService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator);
  clientCopy = client;
  selfCopy = self;
  v9 = v6(clientCopy);

  return v9;
}

@end