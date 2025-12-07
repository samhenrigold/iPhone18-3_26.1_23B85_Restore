@interface SFFileVaultRecoveryKey
- (BOOL)isSavedInPasswordsApp;
- (BOOL)isSharedInGroup;
- (NSDate)creationDate;
- (SFFileVaultRecoveryKey)init;
- (SFFileVaultRecoveryKey)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name creationDate:(id)date;
- (void)setIsSavedInPasswordsApp:(BOOL)app;
- (void)setIsSharedInGroup:(BOOL)group;
@end

@implementation SFFileVaultRecoveryKey

- (NSDate)creationDate
{
  v2 = sub_26453929C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26453928C();
  v6 = sub_26453927C();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (BOOL)isSharedInGroup
{
  v3 = OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSharedInGroup:(BOOL)group
{
  v5 = OBJC_IVAR___SFFileVaultRecoveryKey_isSharedInGroup;
  swift_beginAccess();
  *(self + v5) = group;
}

- (BOOL)isSavedInPasswordsApp
{
  v3 = OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSavedInPasswordsApp:(BOOL)app
{
  v5 = OBJC_IVAR___SFFileVaultRecoveryKey_isSavedInPasswordsApp;
  swift_beginAccess();
  *(self + v5) = app;
}

- (SFFileVaultRecoveryKey)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name creationDate:(id)date
{
  v22[1] = self;
  sub_26453929C();
  MEMORY[0x28223BE20]();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2645392BC();
  v11 = v10;
  v12 = sub_2645392BC();
  v14 = v13;
  v15 = sub_2645392BC();
  v17 = v16;
  v18 = sub_2645392BC();
  v20 = v19;
  sub_26453928C();
  return SFFileVaultRecoveryKey.init(volumeID:serialNumber:recoveryKey:displayName:creationDate:)(v9, v11, v12, v14, v15, v17, v18, v20, v8);
}

- (SFFileVaultRecoveryKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end