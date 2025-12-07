@interface TPSSavedTipEntry
- (NSDate)savedDate;
- (TPSSavedTipEntry)init;
- (TPSSavedTipEntry)initWithTipIdentifier:(id)identifier savedDate:(id)date lastUsedVersion:(id)version;
- (void)encodeWithCoder:(id)coder;
- (void)setSavedDate:(id)date;
@end

@implementation TPSSavedTipEntry

- (NSDate)savedDate
{
  v3 = sub_1C014BD40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_1C014BCE0();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setSavedDate:(id)date
{
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BD00();
  v8 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (TPSSavedTipEntry)initWithTipIdentifier:(id)identifier savedDate:(id)date lastUsedVersion:(id)version
{
  ObjectType = swift_getObjectType();
  v7 = sub_1C014BD40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C014C230();
  v13 = v12;
  sub_1C014BD00();
  v14 = sub_1C014C230();
  v16 = v15;
  v17 = (self + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier);
  *v17 = v11;
  v17[1] = v13;
  (*(v8 + 16))(self + OBJC_IVAR___TPSSavedTipEntry_savedDate, v10, v7);
  v18 = (self + OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion);
  *v18 = v14;
  v18[1] = v16;
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(TPSSavedTipEntry *)&v21 init];
  (*(v8 + 8))(v10, v7);
  return v19;
}

- (TPSSavedTipEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TPSSavedTipEntry.encode(with:)(coderCopy);
}

@end