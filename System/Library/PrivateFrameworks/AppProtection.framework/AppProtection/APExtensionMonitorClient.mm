@interface APExtensionMonitorClient
- (_TtC13AppProtection24APExtensionMonitorClient)init;
- (void)beginMonitoringForExtensionUUID:(id)d monitorUUID:(id)iD;
- (void)endMonitoringForMonitorUUID:(id)d;
@end

@implementation APExtensionMonitorClient

- (void)beginMonitoringForExtensionUUID:(id)d monitorUUID:(id)iD
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_185B67ADC();
  sub_185B67ADC();
  selfCopy = self;
  sub_185B44980(v11, v9);

  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
}

- (void)endMonitoringForMonitorUUID:(id)d
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  selfCopy = self;
  sub_185B4542C(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC13AppProtection24APExtensionMonitorClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end