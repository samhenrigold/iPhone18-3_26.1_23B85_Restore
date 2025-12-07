@interface FPFSSQLBackupEngine
- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)init;
- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)initWithUserURL:(id)l outputUserURL:(id)rL;
- (void)backUpWithCompletionHandler:(id)handler;
@end

@implementation FPFSSQLBackupEngine

- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)initWithUserURL:(id)l outputUserURL:(id)rL
{
  v4 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  return FPFSSQLBackupEngine.init(userURL:outputUserURL:)(v9, v6);
}

- (void)backUpWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_1CF33E3F0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC18FileProviderDaemon19FPFSSQLBackupEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end