@interface BMInternalManagerConfiguration
- (BMInternalManagerConfiguration)init;
- (BMInternalManagerConfiguration)initWithDirectory:(id)directory shouldRunUpdatesOnSchedule:(BOOL)schedule shouldPurgeOutdatedData:(BOOL)data;
- (NSString)description;
@end

@implementation BMInternalManagerConfiguration

- (BMInternalManagerConfiguration)initWithDirectory:(id)directory shouldRunUpdatesOnSchedule:(BOOL)schedule shouldPurgeOutdatedData:(BOOL)data
{
  v8 = sub_310D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_310A0();
  (*(v9 + 16))(self + OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory, v11, v8);
  *(&self->super.isa + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule) = schedule;
  *(&self->super.isa + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData) = data;
  v12 = type metadata accessor for ManagerConfiguration(0);
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(BMInternalManagerConfiguration *)&v15 init];
  (*(v9 + 8))(v11, v8);
  return v13;
}

- (NSString)description
{
  selfCopy = self;
  sub_E978();

  v3 = sub_31300();

  return v3;
}

- (BMInternalManagerConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end