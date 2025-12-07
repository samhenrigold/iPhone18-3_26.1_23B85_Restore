@interface ChangeTrackingAccountProvider
- (NSString)accountDescription;
- (NSString)accountID;
- (_TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider)init;
- (_TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider)init;
- (id)loggingDescription;
- (void)setAccountDescription:(id)description;
- (void)setAccountID:(id)d;
- (void)setRem_accountObjectID:(id)d;
@end

@implementation ChangeTrackingAccountProvider

- (NSString)accountID
{
  v2 = *(self + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountID + 8);

  v3 = String._bridgeToObjectiveC()();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (void)setAccountID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID);
  v13 = *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID + 8);
  *v12 = v4;
  v12[1] = v5;

  v13, v5, v6, v7, v8, v9, v10, v11;
}

- (void)setRem_accountObjectID:(id)d
{
  v4 = *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID);
  *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID) = d;
  dCopy = d;
}

- (NSString)accountDescription
{
  v2 = *(self + OBJC_IVAR____TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider_accountDescription + 8);
  if (v2)
  {

    v3 = String._bridgeToObjectiveC()();
    v2, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAccountDescription:(id)description
{
  if (description)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription);
  v12 = *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription + 8);
  *v11 = v9;
  v11[1] = v10;

  v12, v10, description, v3, v4, v5, v6, v7;
}

- (id)loggingDescription
{
  selfCopy = self;
  sub_100206864();
  v4 = v3;

  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (_TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_rem_accountObjectID) = 0;
  v5 = (self + OBJC_IVAR____TtC7reminddP33_38651BD03EE367A00C80EB4E8CAA4E4629ChangeTrackingAccountProvider_accountDescription);
  *v5 = 0;
  v5[1] = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ChangeTrackingAccountProvider *)&v7 init];
}

- (_TtC7reminddP33_45435200B10504FC9CF3E682DD4A9AA229ChangeTrackingAccountProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end