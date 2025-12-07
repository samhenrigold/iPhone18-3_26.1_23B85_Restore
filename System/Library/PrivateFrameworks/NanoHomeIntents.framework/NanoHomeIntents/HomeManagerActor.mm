@interface HomeManagerActor
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeManagerActor

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA3A378, &qword_25B164A58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_25B161CF4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  sub_25B161274();
  sub_25B131B20(0, 0, v6, &unk_25B164AF8, v8);
}

@end