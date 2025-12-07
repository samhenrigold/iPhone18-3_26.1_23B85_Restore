@interface MBCKFileAssetMetadata
- (MBCKFileAssetMetadata)initWithStashedAssetPath:(id)path stashedAssetIsDecrypted:(BOOL)decrypted decodedAssetPath:(id)assetPath;
@end

@implementation MBCKFileAssetMetadata

- (MBCKFileAssetMetadata)initWithStashedAssetPath:(id)path stashedAssetIsDecrypted:(BOOL)decrypted decodedAssetPath:(id)assetPath
{
  decryptedCopy = decrypted;
  pathCopy = path;
  assetPathCopy = assetPath;
  v13.receiver = self;
  v13.super_class = MBCKFileAssetMetadata;
  v10 = [(MBCKFileAssetMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(MBCKFileAssetMetadata *)v10 setStashedAssetPath:pathCopy];
    [(MBCKFileAssetMetadata *)v11 setStashedAssetIsDecrypted:decryptedCopy];
    [(MBCKFileAssetMetadata *)v11 setDecodedAssetPath:assetPathCopy];
  }

  return v11;
}

@end