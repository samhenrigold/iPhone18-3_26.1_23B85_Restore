@interface HealthAppDaemonOrchestrationDiagnosticOperation
- (NSString)reportFilename;
- (_TtC34HealthAppDiagnosticExtensionPluginP33_11F9AD07514107A6A0C1146F6D81808E47HealthAppDaemonOrchestrationDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l;
- (void)run;
@end

@implementation HealthAppDaemonOrchestrationDiagnosticOperation

- (_TtC34HealthAppDiagnosticExtensionPluginP33_11F9AD07514107A6A0C1146F6D81808E47HealthAppDaemonOrchestrationDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l
{
  ObjectType = swift_getObjectType();
  v5 = sub_1B10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B00();
  sub_1AF0(v9);
  v11 = v10;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(HealthAppDaemonOrchestrationDiagnosticOperation *)&v14 initWithAttachmentDirectoryURL:v10];

  (*(v6 + 8))(v8, v5);
  return v12;
}

- (NSString)reportFilename
{
  v2 = sub_1B90();

  return v2;
}

- (void)run
{
  selfCopy = self;
  sub_12D0();
}

@end