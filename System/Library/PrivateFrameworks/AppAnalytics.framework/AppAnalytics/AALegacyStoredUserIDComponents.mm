@interface AALegacyStoredUserIDComponents
- (AALegacyStoredUserIDComponents)init;
- (AALegacyStoredUserIDComponents)initWithID:(id)d rotationPeriod:(int64_t)period startDate:(id)date lastRotation:(id)rotation;
- (NSDate)lastRotationDate;
- (NSDate)startDate;
- (NSUUID)userID;
@end

@implementation AALegacyStoredUserIDComponents

- (NSUUID)userID
{
  v3 = sub_1B6AB8E40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents, v3);
  v7 = sub_1B6AB8DE0();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSDate)startDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents;
  v8 = type metadata accessor for LegacyStoredUserIDComponents(0);
  (*(v4 + 16))(v6, &v7[*(v8 + 24)], v3);
  v9 = sub_1B6AB8D20();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (NSDate)lastRotationDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents;
  v8 = type metadata accessor for LegacyStoredUserIDComponents(0);
  (*(v4 + 16))(v6, &v7[*(v8 + 28)], v3);
  v9 = sub_1B6AB8D20();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (AALegacyStoredUserIDComponents)initWithID:(id)d rotationPeriod:(int64_t)period startDate:(id)date lastRotation:(id)rotation
{
  v27[1] = d;
  v27[2] = date;
  periodCopy = period;
  selfCopy = self;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for LegacyStoredUserIDComponents(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  v17 = sub_1B6AB8E40();
  v27[0] = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E00();
  sub_1B6AB8D80();
  sub_1B6AB8D80();
  (*(v18 + 16))(v9, v20, v17);
  v21 = *(v11 + 16);
  v21(&v9[v7[8]], v16, v10);
  v21(&v9[v7[9]], v14, v10);
  v22 = ObjectType;
  *&v9[v7[7]] = periodCopy;
  v23 = objc_allocWithZone(v22);
  sub_1B6A47A08(v9, v23 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v31.receiver = v23;
  v31.super_class = v22;
  v24 = [(AALegacyStoredUserIDComponents *)&v31 init];
  v25 = *(v11 + 8);
  v25(v14, v10);
  v25(v16, v10);
  (*(v18 + 8))(v20, v27[0]);
  sub_1B6A47A6C(v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v24;
}

- (AALegacyStoredUserIDComponents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end