@interface SecureCloudActivationObserver
- (_TtC23ActivitySharingServices29SecureCloudActivationObserver)init;
- (void)activitySharingManagerActivated:(id)activated;
- (void)activitySharingManagerDeactivated:(id)deactivated;
@end

@implementation SecureCloudActivationObserver

- (void)activitySharingManagerActivated:(id)activated
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_221FB64C8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = activated;
  activatedCopy = activated;
  selfCopy = self;
  sub_221FA7A78(0, 0, v7, &unk_221FBCBB8, v9);
}

- (void)activitySharingManagerDeactivated:(id)deactivated
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_221FB64C8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_221FA7A78(0, 0, v6, &unk_221FBCBA0, v8);
}

- (_TtC23ActivitySharingServices29SecureCloudActivationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end