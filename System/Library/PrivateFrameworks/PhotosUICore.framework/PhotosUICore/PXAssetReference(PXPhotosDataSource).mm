@interface PXAssetReference(PXPhotosDataSource)
- (uint64_t)simpleIndexPath;
@end

@implementation PXAssetReference(PXPhotosDataSource)

- (uint64_t)simpleIndexPath
{
  *a3 = 0u;
  a3[1] = 0u;
  return objc_msgSend_indexPath(self, a2);
}

@end