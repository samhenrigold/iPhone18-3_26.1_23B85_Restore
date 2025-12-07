@interface LegacyUserTrustDB
- (BOOL)setupSchema;
- (_TtC8misagent17LegacyUserTrustDB)init;
- (_TtC8misagent17LegacyUserTrustDB)initWithDatabaseURL:(id)l;
- (_TtC8misagent17LegacyUserTrustDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only;
- (void)setupPermissions;
@end

@implementation LegacyUserTrustDB

- (_TtC8misagent17LegacyUserTrustDB)initWithDatabaseURL:(id)l
{
  v4 = sub_10001A618();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A5E8();
  sub_10001A5D8(v8);
  v10 = v9;
  v11 = type metadata accessor for LegacyUserTrustDB();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(SQLDB *)&v14 initWithDatabaseURL:v10];

  (*(v5 + 8))(v7, v4);
  return v12;
}

- (_TtC8misagent17LegacyUserTrustDB)initWithDatabaseURL:(id)l asReadOnly:(BOOL)only
{
  onlyCopy = only;
  v6 = sub_10001A618();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A5E8();
  sub_10001A5D8(v10);
  v12 = v11;
  v13 = type metadata accessor for LegacyUserTrustDB();
  v16.receiver = self;
  v16.super_class = v13;
  v14 = [(SQLDB *)&v16 initWithDatabaseURL:v12 asReadOnly:onlyCopy];

  (*(v7 + 8))(v9, v6);
  return v14;
}

- (void)setupPermissions
{
  selfCopy = self;
  sub_100016DC4();
}

- (_TtC8misagent17LegacyUserTrustDB)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)setupSchema
{
  selfCopy = self;
  v3 = sub_100018078();

  return v3 & 1;
}

@end