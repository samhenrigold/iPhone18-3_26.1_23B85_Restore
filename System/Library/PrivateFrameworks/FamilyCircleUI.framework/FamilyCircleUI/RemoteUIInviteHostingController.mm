@interface RemoteUIInviteHostingController
- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithCoder:(id)coder;
- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation RemoteUIInviteHostingController

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for RemoteUIInviteHostingController();
  v14.receiver = self;
  v14.super_class = v8;
  selfCopy = self;
  [(RemoteUIInviteHostingController *)&v14 viewDidDisappear:disappearCopy];
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_21BE28D7C();
  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  sub_21BBA932C(0, 0, v7, &unk_21BE41218, v12);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for RemoteUIInviteHostingController();
  v15.receiver = self;
  v15.super_class = v8;
  selfCopy = self;
  [(RemoteUIInviteHostingController *)&v15 viewDidAppear:appearCopy];
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
  sub_21BBA932C(0, 0, v7, &unk_21BE41208, v13);
}

- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21BE28A0C();
    v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode);
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    bundleCopy = bundle;
    v8 = sub_21BE289CC();
  }

  else
  {
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode);
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for RemoteUIInviteHostingController();
  v11 = [(HelpfulRemoteUiHostingVC *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RemoteUIInviteHostingController();
  coderCopy = coder;
  v6 = [(HelpfulRemoteUiHostingVC *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end