@interface SFAnisetteAgent
- (_TtC10TDGSharing15SFAnisetteAgent)init;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(NSString *)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(NSData *)data completion:(id)completion;
@end

@implementation SFAnisetteAgent

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_26C6D8B08();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26C6DD8F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26C6DD8F8;
  v12[5] = v11;
  selfCopy = self;
  sub_26C6C40A4(0, 0, v7, &unk_26C6DD900, v12);
}

- (void)syncAnisetteWithSIMData:(NSData *)data completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26C6D8B08();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26C6DD8C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26C6DD8D0;
  v14[5] = v13;
  dataCopy = data;
  selfCopy = self;
  sub_26C6C40A4(0, 0, v9, &unk_26C6DD8D8, v14);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_26C6D8B08();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26C6DD898;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26C6DD8A0;
  v12[5] = v11;
  selfCopy = self;
  sub_26C6C40A4(0, 0, v7, &unk_26C6DD8A8, v12);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = necessary;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_26C6D8B08();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26C6DD870;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26C6DD878;
  v14[5] = v13;
  selfCopy = self;
  sub_26C6C40A4(0, 0, v9, &unk_26C6DD880, v14);
}

- (void)legacyAnisetteDataForDSID:(NSString *)d withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26C6D8B08();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26C6DD820;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26C6DD830;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_26C6C40A4(0, 0, v9, &unk_26C6DD840, v14);
}

- (_TtC10TDGSharing15SFAnisetteAgent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SFAnisetteAgent();
  return [(SFAnisetteAgent *)&v3 init];
}

@end