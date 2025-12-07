@interface AccountSyncStatusObserver
- (void)onAccountChanged;
- (void)onIdentityChanged;
@end

@implementation AccountSyncStatusObserver

- (void)onAccountChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_22766C4B0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_2272CA940(0, 0, v5, &unk_227682B80, v7);
}

- (void)onIdentityChanged
{

  sub_2273988E8(0);
}

@end