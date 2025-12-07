@interface PFImageMetadataChangePolicyiCloudPhotoLibrary
+ (id)standardPolicy;
- (id)processMetadata:(id)metadata;
@end

@implementation PFImageMetadataChangePolicyiCloudPhotoLibrary

- (id)processMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[PFMetadata alloc] initWithImageProperties:metadataCopy contentType:0 timeZoneLookup:0];
  livePhotoPairingIdentifier = [(PFMetadata *)v5 livePhotoPairingIdentifier];
  v13.receiver = self;
  v13.super_class = PFImageMetadataChangePolicyiCloudPhotoLibrary;
  v7 = [(PFImageMetadataChangePolicyDefault *)&v13 processMetadata:metadataCopy];

  if (livePhotoPairingIdentifier)
  {
    v8 = objc_msgSend_mutableCopy(v7);
    livePhotoPairingIdentifierMetadataKey = [(PFMetadata *)v5 livePhotoPairingIdentifierMetadataKey];
    v10 = [PFMetadataUtilities addMakerApplePropertyWithKey:livePhotoPairingIdentifierMetadataKey value:livePhotoPairingIdentifier toProperties:v8];

    if (v10)
    {
      v11 = v8;

      v7 = v11;
    }
  }

  return v7;
}

+ (id)standardPolicy
{
  if (standardPolicy_onceToken_78[0] != -1)
  {
    dispatch_once(standardPolicy_onceToken_78, &__block_literal_global_80);
  }

  v3 = standardPolicy_standardPolicy_77;

  return v3;
}

uint64_t __63__PFImageMetadataChangePolicyiCloudPhotoLibrary_standardPolicy__block_invoke()
{
  v0 = objc_alloc_init(PFImageMetadataChangePolicyiCloudPhotoLibrary);
  v1 = standardPolicy_standardPolicy_77;
  standardPolicy_standardPolicy_77 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end