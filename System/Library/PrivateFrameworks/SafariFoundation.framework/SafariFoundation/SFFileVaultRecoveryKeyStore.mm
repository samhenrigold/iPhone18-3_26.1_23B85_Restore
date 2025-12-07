@interface SFFileVaultRecoveryKeyStore
- (SFFileVaultRecoveryKeyStore)init;
- (void)deleteRecoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion;
- (void)recoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion;
- (void)recoveryKeysForSerialNumber:(NSString *)number completion:(id)completion;
- (void)saveRecoveryKeyWithRequest:(SFFileVaultRecoveryKeySaveRequest *)request completion:(id)completion;
@end

@implementation SFFileVaultRecoveryKeyStore

- (void)saveRecoveryKeyWithRequest:(SFFileVaultRecoveryKeySaveRequest *)request completion:(id)completion
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = request;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_26453931C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26453E6A0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26453E6A8;
  v13[5] = v12;
  requestCopy = request;
  selfCopy = self;
  sub_264535B24(0, 0, v8, &unk_26453E6B0, v13);
}

- (void)recoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608);
  MEMORY[0x28223BE20]();
  v10 = &v19 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = number;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_26453931C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26453E680;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26453E688;
  v15[5] = v14;
  dCopy = d;
  numberCopy = number;
  selfCopy = self;
  sub_264535B24(0, 0, v10, &unk_26453E690, v15);
}

- (void)recoveryKeysForSerialNumber:(NSString *)number completion:(id)completion
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608);
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = number;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_26453931C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_26453E660;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26453E668;
  v13[5] = v12;
  numberCopy = number;
  selfCopy = self;
  sub_264535B24(0, 0, v8, &unk_26453E670, v13);
}

- (void)deleteRecoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608);
  MEMORY[0x28223BE20]();
  v10 = &v19 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = number;
  v12[4] = v11;
  v12[5] = self;
  v13 = sub_26453931C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26453E618;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26453E628;
  v15[5] = v14;
  dCopy = d;
  numberCopy = number;
  selfCopy = self;
  sub_264535B24(0, 0, v10, &unk_26453E638, v15);
}

- (SFFileVaultRecoveryKeyStore)init
{
  *(&self->super.isa + OBJC_IVAR___SFFileVaultRecoveryKeyStore____lazy_storage___listenerProxy) = 0;
  v3.receiver = self;
  v3.super_class = SFFileVaultRecoveryKeyStore;
  return [(SFFileVaultRecoveryKeyStore *)&v3 init];
}

@end