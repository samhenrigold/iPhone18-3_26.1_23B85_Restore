@interface RebootstrapTrigger
- (void)accountStoreDidChange:(id)change;
- (void)appDistributorsDidChange:(id)change;
@end

@implementation RebootstrapTrigger

- (void)accountStoreDidChange:(id)change
{
  v3 = sub_22273707C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273706C();

  sub_2226970C0();

  (*(v4 + 8))(v6, v3);
}

- (void)appDistributorsDidChange:(id)change
{
  v3 = sub_22273707C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22273706C();
  v7 = qword_281312E18;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_222738F6C();
  __swift_project_value_buffer(v8, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v9[15] = 1;
  sub_222737F8C();
  (*(v4 + 8))(v6, v3);
}

@end