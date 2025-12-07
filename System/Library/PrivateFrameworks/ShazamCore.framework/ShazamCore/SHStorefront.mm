@interface SHStorefront
- (SHStorefront)init;
- (void)storefrontCountryCode:(id)code;
@end

@implementation SHStorefront

- (void)storefrontCountryCode:(id)code
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B4D8, &qword_231034540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(code);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_231032D3C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_231034550;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_231034560;
  v12[5] = v11;
  selfCopy = self;
  sub_23103208C(0, 0, v7, &unk_231034570, v12);
}

- (SHStorefront)init
{
  v3.receiver = self;
  v3.super_class = SHStorefront;
  return [(SHStorefront *)&v3 init];
}

@end