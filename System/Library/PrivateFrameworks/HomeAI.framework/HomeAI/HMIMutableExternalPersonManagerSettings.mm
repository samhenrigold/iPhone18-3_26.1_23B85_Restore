@interface HMIMutableExternalPersonManagerSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMIMutableExternalPersonManagerSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [+[HMIExternalPersonManagerSettings allocWithZone:](HMIExternalPersonManagerSettings init];
  [(HMIExternalPersonManagerSettings *)self isImportingFromPhotoLibraryEnabled];
  [(HMIExternalPersonManagerSettings *)v4 setImportingFromPhotoLibraryEnabled:?];
  [(HMIExternalPersonManagerSettings *)self isSharingFaceClassificationsEnabled];
  [(HMIExternalPersonManagerSettings *)v4 setSharingFaceClassificationsEnabled:?];
  return v4;
}

@end