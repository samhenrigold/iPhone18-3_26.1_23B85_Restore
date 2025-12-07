@interface HMIExternalPersonManagerSettings
- (BOOL)isEqual:(id)equal;
- (HMIExternalPersonManagerSettings)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIExternalPersonManagerSettings

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMIExternalPersonManagerSettings isImportingFromPhotoLibraryEnabled](self, "isImportingFromPhotoLibraryEnabled"), v7 == [v6 isImportingFromPhotoLibraryEnabled]))
  {
    isSharingFaceClassificationsEnabled = [(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
    v8 = isSharingFaceClassificationsEnabled ^ [v6 isSharingFaceClassificationsEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [+[HMIMutableExternalPersonManagerSettings allocWithZone:](HMIMutableExternalPersonManagerSettings init];
  [(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled];
  [(HMIExternalPersonManagerSettings *)v4 setImportingFromPhotoLibraryEnabled:?];
  [(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
  [(HMIExternalPersonManagerSettings *)v4 setSharingFaceClassificationsEnabled:?];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled];
  [coderCopy encodeBool:? forKey:?];
  [(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
  [coderCopy encodeBool:? forKey:?];
}

- (HMIExternalPersonManagerSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  [coderCopy decodeBoolForKey:?];
  [(HMIExternalPersonManagerSettings *)v5 setImportingFromPhotoLibraryEnabled:?];
  [coderCopy decodeBoolForKey:?];

  [(HMIExternalPersonManagerSettings *)v5 setSharingFaceClassificationsEnabled:?];
  return v5;
}

- (NSArray)attributeDescriptions
{
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled];
  v4 = HMFBooleanToString();
  v9 = [v3 initWithName:? value:?];
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
  v6 = HMFBooleanToString();
  v10 = [v5 initWithName:? value:?];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v7;
}

@end