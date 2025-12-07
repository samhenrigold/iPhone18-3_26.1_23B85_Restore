@interface PASUIButtonActionHandler
- (void)buttonTapped;
@end

@implementation PASUIButtonActionHandler

- (void)buttonTapped
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_26115B7D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_261112D1C(0, 0, v5, &unk_26115FBB0, v7);
}

@end