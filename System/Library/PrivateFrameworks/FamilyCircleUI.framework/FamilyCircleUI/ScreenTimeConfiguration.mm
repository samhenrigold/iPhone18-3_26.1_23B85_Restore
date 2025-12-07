@interface ScreenTimeConfiguration
- (BOOL)isRestrictedForFeature:(id)feature;
- (_TtC14FamilyCircleUI23ScreenTimeConfiguration)init;
- (void)isContentPrivacyEnabledForDSID:(NSNumber *)d completionHandler:(id)handler;
@end

@implementation ScreenTimeConfiguration

- (_TtC14FamilyCircleUI23ScreenTimeConfiguration)init
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI23ScreenTimeConfiguration_stManagementState;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for ScreenTimeConfiguration();
  return [(ScreenTimeConfiguration *)&v5 init];
}

- (void)isContentPrivacyEnabledForDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE3A1C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE32A10;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE391F0, v14);
}

- (BOOL)isRestrictedForFeature:(id)feature
{
  v4 = objc_opt_self();
  featureCopy = feature;
  sharedConnection = [v4 sharedConnection];
  if (sharedConnection)
  {
    v7 = sharedConnection;
    bOOLRestrictionForFeature_ = [sharedConnection BOOLRestrictionForFeature_];

    return bOOLRestrictionForFeature_ == 2;
  }

  else
  {

    __break(1u);
  }

  return result;
}

@end