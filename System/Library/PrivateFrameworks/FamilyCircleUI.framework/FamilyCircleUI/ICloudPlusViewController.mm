@interface ICloudPlusViewController
- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithCoder:(id)coder;
- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICloudPlusViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ICloudPlusViewController();
  v15.receiver = self;
  v15.super_class = v8;
  selfCopy = self;
  [(ICloudPlusViewController *)&v15 viewDidAppear:appearCopy];
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_21BE28D7C();
  v11 = selfCopy;
  v12 = sub_21BE28D6C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_21BBA932C(0, 0, v7, &unk_21BE4EB18, v13);
}

- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21BE28A0C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
    bundleCopy = bundle;
    v7 = sub_21BE289CC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ICloudPlusViewController();
  v9 = [(HelpfulRemoteUiHostingVC *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ICloudPlusViewController();
  coderCopy = coder;
  v5 = [(HelpfulRemoteUiHostingVC *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end