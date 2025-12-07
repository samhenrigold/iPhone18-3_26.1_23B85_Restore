@interface PGGraphPetRelationshipDonator
- (PGGraphPetRelationshipDonator)init;
- (void)donateWithPetNodes:(NSArray *)nodes isRebuild:(BOOL)rebuild completionHandler:(id)handler;
@end

@implementation PGGraphPetRelationshipDonator

- (void)donateWithPetNodes:(NSArray *)nodes isRebuild:(BOOL)rebuild completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = nodes;
  *(v13 + 24) = rebuild;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_22F741320();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22F783A68;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22F783A70;
  v16[5] = v15;
  nodesCopy = nodes;
  selfCopy = self;
  sub_22F33C54C(0, 0, v11, &unk_22F784250, v16);
}

- (PGGraphPetRelationshipDonator)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR___PGGraphPetRelationshipDonator_sourceIdentifier);
  *v4 = 0xD000000000000018;
  v4[1] = 0x800000022F799310;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PGGraphPetRelationshipDonator *)&v6 init];
}

@end