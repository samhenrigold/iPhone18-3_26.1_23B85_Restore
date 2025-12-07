@interface CredentialInternal
- (NSDate)lastUsedDate;
- (NSString)friendlyName;
- (NSUUID)configUUID;
- (NSUUID)identifier;
- (_TtC9SEService18CredentialInternal)init;
- (int64_t)accessLevel;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessLevel:(int64_t)level;
- (void)setConfigUUID:(id)d;
- (void)setLastUsedDate:(id)date;
@end

@implementation CredentialInternal

- (NSUUID)identifier
{
  v3 = sub_1C7C7D104();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC9SEService18CredentialInternal_identifier, v3);
  v7 = sub_1C7C7D0C4();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSString)friendlyName
{

  v2 = sub_1C7C7D2E4();

  return v2;
}

- (NSUUID)configUUID
{
  v3 = sub_1C7C7D104();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9SEService18CredentialInternal_configUUID;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_1C7C7D0C4();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setConfigUUID:(id)d
{
  v4 = sub_1C7C7D104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7C7D0E4();
  v8 = OBJC_IVAR____TtC9SEService18CredentialInternal_configUUID;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (int64_t)accessLevel
{
  v3 = OBJC_IVAR____TtC9SEService18CredentialInternal_accessLevel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAccessLevel:(int64_t)level
{
  v5 = OBJC_IVAR____TtC9SEService18CredentialInternal_accessLevel;
  swift_beginAccess();
  *(self + v5) = level;
}

- (NSDate)lastUsedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263450, &unk_1C7C89EA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC9SEService18CredentialInternal_lastUsedDate;
  swift_beginAccess();
  sub_1C7BF69EC(self + v6, v5);
  v7 = sub_1C7C7D084();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C7C7D064();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setLastUsedDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263450, &unk_1C7C89EA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (date)
  {
    sub_1C7C7D074();
    v8 = sub_1C7C7D084();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1C7C7D084();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC9SEService18CredentialInternal_lastUsedDate;
  swift_beginAccess();
  selfCopy = self;
  sub_1C7BF6BFC(v7, self + v10);
  swift_endAccess();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CredentialInternal.encode(with:)(coderCopy);
}

- (_TtC9SEService18CredentialInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end