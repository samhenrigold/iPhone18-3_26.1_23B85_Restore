@interface HFMatterSnapshotContainer
+ (id)fetchCurrent;
+ (void)fetchCurrentWithCompletionHandler:(id)handler;
- (HFMatterSnapshotContainer)init;
@end

@implementation HFMatterSnapshotContainer

- (HFMatterSnapshotContainer)init
{
  *(&self->super.isa + OBJC_IVAR___HFMatterSnapshotContainer_internalContainer) = 0;
  v3.receiver = self;
  v3.super_class = HFMatterSnapshotContainer;
  return [(HFMatterSnapshotContainer *)&v3 init];
}

+ (void)fetchCurrentWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20DD967D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD94D90;
  v12[5] = v11;
  sub_20DAB35AC(0, 0, v7, &unk_20DD95520, v12);
}

+ (id)fetchCurrent
{
  v2 = _sSo25HFMatterSnapshotContainerC4HomeE12fetchCurrentAByFZ_0();

  return v2;
}

@end