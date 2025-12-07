@interface AccountProvider
- (void)onAccountChanged;
@end

@implementation AccountProvider

- (void)onAccountChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_265B77230();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_265B566AC(0, 0, v5, &unk_265B79BC0, v7);
}

@end