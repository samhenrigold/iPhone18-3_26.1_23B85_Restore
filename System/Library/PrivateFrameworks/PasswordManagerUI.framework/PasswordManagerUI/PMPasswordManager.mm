@interface PMPasswordManager
- (void)accountStoreDidChange;
@end

@implementation PMPasswordManager

- (void)accountStoreDidChange
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_21CB858E4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21CB858B4();
  swift_retain_n();
  v7 = sub_21CB858A4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = self;
  sub_21C98B308(0, 0, v5, &unk_21CBC5B50, v8);
}

@end