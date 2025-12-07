@interface InlineTip
- (NSURL)iconURL;
- (_TtC14iCloudSettings9InlineTip)init;
@end

@implementation InlineTip

- (NSURL)iconURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_2758BB4AC(self + OBJC_IVAR____TtC14iCloudSettings9InlineTip_iconURL, &v12 - v4);
  v6 = sub_2759B8508();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_2759B84B8();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (_TtC14iCloudSettings9InlineTip)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end