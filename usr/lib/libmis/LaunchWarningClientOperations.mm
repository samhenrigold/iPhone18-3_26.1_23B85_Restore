@interface LaunchWarningClientOperations
- (BOOL)setUserOverride:(BOOL)override forBundle:(id)bundle error:(id *)error;
- (_TtC3mis29LaunchWarningClientOperations)init;
- (id)checkForLaunchWarning:(id)warning error:(id *)error;
- (id)queryAppBundle:(id)bundle error:(id *)error;
- (id)queryExecutableURL:(id)l error:(id *)error;
@end

@implementation LaunchWarningClientOperations

- (id)queryExecutableURL:(id)l error:(id *)error
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  selfCopy = self;
  sub_1B9DAD7A0(v8);
  v11 = v10;
  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)queryAppBundle:(id)bundle error:(id *)error
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9DD26E8();
  selfCopy = self;
  v10 = sub_1B9DACEC4(v8);
  (*(v6 + 8))(v8, v5);

  return v10;
}

- (id)checkForLaunchWarning:(id)warning error:(id *)error
{
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9DD26E8();
  selfCopy = self;
  sub_1B9DADDBC(v8);
  v11 = v10;
  v13 = v12;
  (*(v6 + 8))(v8, v5);

  v14 = sub_1B9DD2778();
  sub_1B9D9D534(v11, v13);

  return v14;
}

- (BOOL)setUserOverride:(BOOL)override forBundle:(id)bundle error:(id *)error
{
  overrideCopy = override;
  v7 = sub_1B9DD2728();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  selfCopy = self;
  sub_1B9DAE2A0(overrideCopy, v10);
  (*(v8 + 8))(v10, v7);

  return 1;
}

- (_TtC3mis29LaunchWarningClientOperations)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LaunchWarningClientOperations();
  return [(LaunchWarningClientOperations *)&v3 init];
}

@end