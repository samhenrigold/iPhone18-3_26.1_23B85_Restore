@interface JSCampaignAttributionService
- (_TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService)init;
- (id)processRedirectURL:(id)l;
@end

@implementation JSCampaignAttributionService

- (id)processRedirectURL:(id)l
{
  v4 = sub_222738BBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22273919C();
  v10 = v9;
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  selfCopy = self;
  v12 = sub_2227396EC();
  v13 = *(&selfCopy->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_process);
  sub_22266BCCC(selfCopy + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_accounts, v22);
  (*(v5 + 16))(v7, selfCopy + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_bag, v4);
  v17 = v8;
  v18 = v10;
  v19 = v7;
  v20 = v13;
  v21 = v22;
  v14 = sub_2227396FC();

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return v14;
}

- (_TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end