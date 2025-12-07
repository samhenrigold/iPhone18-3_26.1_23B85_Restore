@interface AppleAccountManager
- (void)updateAccountStatusCache;
@end

@implementation AppleAccountManager

- (void)updateAccountStatusCache
{
  isa = self->super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2557504D0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2557504B0();
  swift_retain_n();
  v8 = sub_2557504A0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = self;
  v9[5] = isa;
  sub_25569E3AC(0, 0, v6, &unk_255755E00, v9);
}

@end