@interface Icons
- (NSArray)bundleIdentifiers;
- (_TtC14iCloudSettings5Icons)init;
- (id)iconURL;
@end

@implementation Icons

- (id)iconURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_275875E60(v5);

  v7 = sub_2759B8508();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2759B84B8();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (NSArray)bundleIdentifiers
{
  if (*(self + OBJC_IVAR____TtC14iCloudSettings5Icons_bundleIdentifiers))
  {

    v2 = sub_2759BA3D8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC14iCloudSettings5Icons)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end