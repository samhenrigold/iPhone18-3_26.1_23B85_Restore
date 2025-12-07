@interface CKSQLBackingStore
+ (NSURL)directory;
+ (void)setDirectory:(id)directory;
- (_TtC13CoreKnowledge17CKSQLBackingStore)initWithName:(id)name;
@end

@implementation CKSQLBackingStore

- (_TtC13CoreKnowledge17CKSQLBackingStore)initWithName:(id)name
{
  v4 = sub_1C86F8EFC();
  sub_1C86A1D30(v4, v5);
  return self;
}

+ (NSURL)directory
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8, &unk_1C86FD080);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  if (qword_1EC2AD758 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v2, qword_1EC2AEFB0);
  swift_beginAccess();
  sub_1C86A51A8(v5, v4);
  v6 = sub_1C86F8C1C();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) != 1)
  {
    v7 = sub_1C86F8BCC();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  return v7;
}

+ (void)setDirectory:(id)directory
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8, &unk_1C86FD080);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  if (directory)
  {
    sub_1C86F8BFC();
    v7 = sub_1C86F8C1C();
    v8 = 0;
  }

  else
  {
    v7 = sub_1C86F8C1C();
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v8, 1, v7);
  if (qword_1EC2AD758 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EC2AEFB0);
  swift_beginAccess();
  sub_1C86A50D8(v6, v9);
  swift_endAccess();
  sub_1C86A5148(v6, &qword_1EC2AD9B8, &unk_1C86FD080);
}

@end