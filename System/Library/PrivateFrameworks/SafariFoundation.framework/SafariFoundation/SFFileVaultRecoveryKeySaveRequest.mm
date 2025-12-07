@interface SFFileVaultRecoveryKeySaveRequest
- (SFFileVaultRecoveryKeySaveRequest)init;
- (SFFileVaultRecoveryKeySaveRequest)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name;
@end

@implementation SFFileVaultRecoveryKeySaveRequest

- (SFFileVaultRecoveryKeySaveRequest)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name
{
  v6 = sub_2645392BC();
  v8 = v7;
  v9 = sub_2645392BC();
  v11 = v10;
  v12 = sub_2645392BC();
  v14 = v13;
  v15 = sub_2645392BC();
  return SFFileVaultRecoveryKeySaveRequest.init(volumeID:serialNumber:recoveryKey:displayName:)(v6, v8, v9, v11, v12, v14, v15, v16);
}

- (SFFileVaultRecoveryKeySaveRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end