@interface IMDaemonConnection
- (BOOL)isConnected;
- (IMDaemonConnection)init;
- (id)onSetupComplete;
- (void)connectWithCapabilities:(unint64_t)capabilities context:(id)context contextChanged:(BOOL)changed;
- (void)requestSetupIfNeededWithCompletionHandler:(id)handler;
- (void)setOnSetupComplete:(id)complete;
- (void)waitForSetup;
@end

@implementation IMDaemonConnection

- (void)setOnSetupComplete:(id)complete
{
  v4 = _Block_copy(complete);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    v6 = v4;
    *(v4 + 16) = v5;
    v7 = sub_1A824C108;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  MEMORY[0x1EEE9AC00](v4);
  selfCopy = self;
  sub_1A84E5A5C();
  sub_1A8245638(v7, v6);
}

- (BOOL)isConnected
{
  selfCopy = self;
  sub_1A84E5A5C();

  return v4;
}

- (void)waitForSetup
{
  selfCopy = self;
  DaemonConnection.waitForSetup()();
}

- (void)connectWithCapabilities:(unint64_t)capabilities context:(id)context contextChanged:(BOOL)changed
{
  v8 = sub_1A84E5D3C();
  v9 = swift_allocObject();
  *(v9 + 16) = capabilities;
  *(v9 + 24) = v8;
  *(v9 + 32) = changed;
  *(v9 + 40) = self;
  selfCopy = self;
  sub_1A84E5A6C();
}

- (void)requestSetupIfNeededWithCompletionHandler:(id)handler
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A84E60BC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A85008B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A85008C0;
  v12[5] = v11;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v7, &unk_1A8507BC0, v12);
}

- (IMDaemonConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)onSetupComplete
{
  selfCopy = self;
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();

  v3 = v7;
  if (v7)
  {
    v4 = v8;
    v5 = swift_allocObject();
    *(v5 + 16) = v7;
    *(v5 + 24) = v4;
    v11 = sub_1A83ECC40;
    v12 = v5;
    v7 = MEMORY[0x1E69E9820];
    v8 = 1107296256;
    v9 = sub_1A83EB0E4;
    v10 = &unk_1F1B71428;
    v3 = _Block_copy(&v7);
  }

  return v3;
}

@end