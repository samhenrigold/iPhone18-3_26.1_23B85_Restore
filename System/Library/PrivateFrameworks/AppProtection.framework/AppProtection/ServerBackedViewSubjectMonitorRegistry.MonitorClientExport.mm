@interface ServerBackedViewSubjectMonitorRegistry.MonitorClientExport
- (_TtCC13AppProtection38ServerBackedViewSubjectMonitorRegistryP33_AEF08B296327CA843F853682A2B6132219MonitorClientExport)init;
- (void)viewSubjectMonitorWithUUID:(id)d lockedStatusUpdate:(BOOL)update;
@end

@implementation ServerBackedViewSubjectMonitorRegistry.MonitorClientExport

- (_TtCC13AppProtection38ServerBackedViewSubjectMonitorRegistryP33_AEF08B296327CA843F853682A2B6132219MonitorClientExport)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ServerBackedViewSubjectMonitorRegistry.MonitorClientExport();
  return [(ServerBackedViewSubjectMonitorRegistry.MonitorClientExport *)&v4 init];
}

- (void)viewSubjectMonitorWithUUID:(id)d lockedStatusUpdate:(BOOL)update
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_185B67ADC();
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
    sub_185AE44AC(v9, update);
  }

  (*(v7 + 8))(v9, v6);
}

@end