@interface FamilyDisclosureController
- (_TtC14FamilyCircleUIP33_894AE38325ED3BE878E6154E185909E026FamilyDisclosureController)initWithCoder:(id)coder;
- (_TtC14FamilyCircleUIP33_894AE38325ED3BE878E6154E185909E026FamilyDisclosureController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissModalRUIController:(RUINavigationController *)controller completion:(id)completion;
- (void)presentModalRUIController:(RUINavigationController *)controller completion:(id)completion;
- (void)replaceModalRUIController:(RUINavigationController *)controller byController:(RUINavigationController *)byController completion:(id)completion;
@end

@implementation FamilyDisclosureController

- (void)presentModalRUIController:(RUINavigationController *)controller completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = controller;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE483E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE483E8;
  v14[5] = v13;
  controllerCopy = controller;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE483F0, v14);
}

- (void)replaceModalRUIController:(RUINavigationController *)controller byController:(RUINavigationController *)byController completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = controller;
  v13[3] = byController;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE483C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21BE483C8;
  v16[5] = v15;
  controllerCopy = controller;
  byControllerCopy = byController;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v11, &unk_21BE483D0, v16);
}

- (void)dismissModalRUIController:(RUINavigationController *)controller completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = controller;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE483B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE32A10;
  v14[5] = v13;
  controllerCopy = controller;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE391F0, v14);
}

- (_TtC14FamilyCircleUIP33_894AE38325ED3BE878E6154E185909E026FamilyDisclosureController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21BE28A0C();
    bundleCopy = bundle;
    v7 = sub_21BE289CC();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FamilyDisclosureController();
  v9 = [(FamilyDisclosureController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC14FamilyCircleUIP33_894AE38325ED3BE878E6154E185909E026FamilyDisclosureController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FamilyDisclosureController();
  coderCopy = coder;
  v5 = [(FamilyDisclosureController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end