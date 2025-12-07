@interface CascadeIndexer
- (void)handleDonateNowNotification:(id)notification;
@end

@implementation CascadeIndexer

- (void)handleDonateNowNotification:(id)notification
{
  isa = self->super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_22A4DB21C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = isa;

  sub_22957F3C0(0, 0, v6, &unk_22A579870, v13);

  (*(v8 + 8))(v10, v7);
}

@end