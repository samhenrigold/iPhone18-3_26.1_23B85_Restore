@interface LaunchWarningDB
- (BOOL)setupSchema;
- (_TtC17online_auth_agent15LaunchWarningDB)init;
- (_TtC17online_auth_agent15LaunchWarningDB)initWithDatabaseURL:(id)l;
- (_TtC17online_auth_agent15LaunchWarningDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only;
- (void)setupPermissions;
@end

@implementation LaunchWarningDB

- (_TtC17online_auth_agent15LaunchWarningDB)initWithDatabaseURL:(id)l
{
  v4 = sub_100043004();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042FA4();
  sub_100042F84(v8);
  v10 = v9;
  v11 = type metadata accessor for LaunchWarningDB();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(SQLDB *)&v14 initWithDatabaseURL:v10];

  (*(v5 + 8))(v7, v4);
  return v12;
}

- (_TtC17online_auth_agent15LaunchWarningDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only
{
  onlyCopy = only;
  v6 = sub_100043004();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042FA4();
  sub_100042F84(v10);
  v12 = v11;
  v13 = type metadata accessor for LaunchWarningDB();
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(SQLDB *)&v16 initWithDatabaseURL:v12 asReadOnly:onlyCopy];

  (*(v7 + 8))(v9, v6);
  return v14;
}

- (BOOL)setupSchema
{
  selfCopy = self;
  v3 = sub_100016508();

  return v3 & 1;
}

- (void)setupPermissions
{
  v3 = sub_100043004();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  dbURL = [(SQLDB *)selfCopy dbURL];
  sub_100042FA4();

  sub_100042FC4();
  (*(v4 + 8))(v6, v3);
  v9 = sub_100043374();

  sub_100003284((v9 + 32));
}

- (_TtC17online_auth_agent15LaunchWarningDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end