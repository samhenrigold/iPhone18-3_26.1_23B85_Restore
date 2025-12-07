@interface LaunchWarningDB
- (BOOL)setupSchema;
- (_TtC3mis15LaunchWarningDB)init;
- (_TtC3mis15LaunchWarningDB)initWithDatabaseURL:(id)l;
- (_TtC3mis15LaunchWarningDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only;
- (void)setupPermissions;
@end

@implementation LaunchWarningDB

- (_TtC3mis15LaunchWarningDB)initWithDatabaseURL:(id)l
{
  v4 = sub_1B9DD2728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  v8 = sub_1B9DD26C8();
  v9 = type metadata accessor for LaunchWarningDB();
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(SQLDB *)&v12 initWithDatabaseURL:v8];

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (_TtC3mis15LaunchWarningDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only
{
  onlyCopy = only;
  v6 = sub_1B9DD2728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9DD26E8();
  v10 = sub_1B9DD26C8();
  v11 = type metadata accessor for LaunchWarningDB();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(SQLDB *)&v14 initWithDatabaseURL:v10 asReadOnly:onlyCopy];

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (BOOL)setupSchema
{
  selfCopy = self;
  v3 = sub_1B9DA89E4();

  return v3 & 1;
}

- (void)setupPermissions
{
  v3 = sub_1B9DD2728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  dbURL = [(SQLDB *)selfCopy dbURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  (*(v4 + 8))(v6, v3);
  v9 = sub_1B9DD29D8();

  sub_1B9DD1A74((v9 + 32));
}

- (_TtC3mis15LaunchWarningDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end