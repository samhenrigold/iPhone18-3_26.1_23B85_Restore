@interface CRLoadCounterFacade
+ (void)recordLoad:(id)load owner:(id)owner;
+ (void)recordUnload:(id)unload owner:(id)owner;
- (CRLoadCounterFacade)init;
@end

@implementation CRLoadCounterFacade

+ (void)recordLoad:(id)load owner:(id)owner
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v12 - v6;
  swift_unknownObjectRetain();
  ownerCopy = owner;
  sub_1B42A0348();
  swift_unknownObjectRelease();
  if (ownerCopy)
  {
    sub_1B429F6B8();

    v9 = sub_1B429F6D8();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B429F6D8();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  __swift_project_boxed_opaque_existential_0(v12, v12[3]);
  DynamicType = swift_getDynamicType();
  _s15TextRecognition13CRLoadCounterV6record4load5owneryypXp_10Foundation4UUIDVSgtFZ_0(DynamicType, v7);
  sub_1B40E26E8(v7, &unk_1EB884870, &qword_1B42AC0A0);
  __swift_destroy_boxed_opaque_existential_0(v12);
}

+ (void)recordUnload:(id)unload owner:(id)owner
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  swift_unknownObjectRetain();
  ownerCopy = owner;
  sub_1B42A0348();
  swift_unknownObjectRelease();
  if (ownerCopy)
  {
    sub_1B429F6B8();

    v9 = sub_1B429F6D8();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B429F6D8();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  sub_1B4130550(v11, v7);
  sub_1B40E26E8(v7, &unk_1EB884870, &qword_1B42AC0A0);
  __swift_destroy_boxed_opaque_existential_0(v11);
}

- (CRLoadCounterFacade)init
{
  v3.receiver = self;
  v3.super_class = CRLoadCounterFacade;
  return [(CRLoadCounterFacade *)&v3 init];
}

@end