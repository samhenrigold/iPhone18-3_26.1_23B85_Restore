@interface FCItemExposure
- (BOOL)isEqual:(id)equal;
- (FCItemExposure)init;
- (FCItemExposure)initWithItemID:(id)d exposedAt:(id)at version:(int64_t)version;
- (FCItemExposure)initWithItemID:(id)d firstExposedAt:(id)at lastExposedAt:(id)exposedAt maxExposedVersion:(int64_t)version maxExposedVersionFirstExposedAt:(id)firstExposedAt;
- (NSString)description;
- (NSString)itemID;
- (int64_t)hash;
@end

@implementation FCItemExposure

- (NSString)itemID
{

  v2 = sub_1B67D963C();

  return v2;
}

- (FCItemExposure)initWithItemID:(id)d firstExposedAt:(id)at lastExposedAt:(id)exposedAt maxExposedVersion:(int64_t)version maxExposedVersionFirstExposedAt:(id)firstExposedAt
{
  v26[1] = firstExposedAt;
  versionCopy = version;
  ObjectType = swift_getObjectType();
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v26 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v26 - v16;
  v18 = sub_1B67D964C();
  v20 = v19;
  sub_1B67D874C();
  sub_1B67D874C();
  sub_1B67D874C();
  v21 = (self + OBJC_IVAR___FCItemExposure_itemID);
  *v21 = v18;
  v21[1] = v20;
  v22 = *(v9 + 16);
  v22(self + OBJC_IVAR___FCItemExposure_firstExposedAt, v17, v8);
  v22(self + OBJC_IVAR___FCItemExposure_lastExposedAt, v15, v8);
  v22(self + OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt, v12, v8);
  *(self + OBJC_IVAR___FCItemExposure_maxExposedVersion) = versionCopy;
  v29.receiver = self;
  v29.super_class = ObjectType;
  v23 = [(FCItemExposure *)&v29 init];
  v24 = *(v9 + 8);
  v24(v12, v8);
  v24(v15, v8);
  v24(v17, v8);
  return v23;
}

- (FCItemExposure)initWithItemID:(id)d exposedAt:(id)at version:(int64_t)version
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D964C();
  v14 = v13;
  sub_1B67D874C();
  v15 = (self + OBJC_IVAR___FCItemExposure_itemID);
  *v15 = v12;
  v15[1] = v14;
  v16 = *(v9 + 16);
  v16(self + OBJC_IVAR___FCItemExposure_firstExposedAt, v11, v8);
  v16(self + OBJC_IVAR___FCItemExposure_lastExposedAt, v11, v8);
  *(self + OBJC_IVAR___FCItemExposure_maxExposedVersion) = version;
  v16(self + OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt, v11, v8);
  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(FCItemExposure *)&v19 init];
  (*(v9 + 8))(v11, v8);
  return v17;
}

- (NSString)description
{
  selfCopy = self;
  ItemExposure.shortDescription.getter(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1B67D897C();

  __swift_destroy_boxed_opaque_existential_1(v5);
  v3 = sub_1B67D963C();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  swift_getObjectType();
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B67D9E3C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  sub_1B6415FF0(v12, v10, &qword_1EB94B738, &unk_1B6819580);
  if (!v11)
  {
    sub_1B64E6418(v10);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = _s8NewsCore12ItemExposureC2eeoiySbAC_ACtFZ_0(self, v9);

LABEL_9:
  sub_1B64E6418(v12);
  return v7 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = ItemExposure.hash.getter();

  return v3;
}

- (FCItemExposure)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end