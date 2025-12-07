@interface NTKCompanionWidgetHostController
- (NTKCompanionWidgetHostController)init;
@end

@implementation NTKCompanionWidgetHostController

- (NTKCompanionWidgetHostController)init
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440, &qword_22DCEA540);
  MEMORY[0x28223BE20](v4 - 8, v5, v6);
  v8 = &v14 - v7;
  swift_defaultActor_initialize();
  sub_22DCB5FCC();
  v14.receiver = self;
  v14.super_class = ObjectType;
  v9 = [(NTKCompanionWidgetHostController *)&v14 init];
  v10 = sub_22DCB62BC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v12 = v9;
  sub_22DC95460(0, 0, v8, &unk_22DCEC978, v11);

  return v12;
}

@end