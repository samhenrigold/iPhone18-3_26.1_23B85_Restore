@interface FindMyHandler
- (BOOL)isThisDesignatedFMFDevice;
- (void)queryFMFStatusWithCompletion:(id)completion;
@end

@implementation FindMyHandler

- (void)queryFMFStatusWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_253CD0B58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_253D48C20;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_253D48C28;
  v12[5] = v11;

  sub_253227FA0(0, 0, v7, &unk_253D48C30, v12);
}

- (BOOL)isThisDesignatedFMFDevice
{

  os_unfair_lock_lock(v3 + 32);
  v4 = *&self->fmfStatus[7] == 2;
  os_unfair_lock_unlock(&self->findMySession[7]);

  return v4;
}

@end