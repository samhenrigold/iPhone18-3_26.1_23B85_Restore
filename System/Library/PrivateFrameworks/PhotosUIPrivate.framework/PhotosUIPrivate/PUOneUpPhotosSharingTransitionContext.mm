@interface PUOneUpPhotosSharingTransitionContext
- (id)keyAssetIndexPath;
@end

@implementation PUOneUpPhotosSharingTransitionContext

- (id)keyAssetIndexPath
{
  currentAssetReference = [(PUOneUpPhotosSharingTransitionContext *)self currentAssetReference];
  v3 = objc_msgSend_indexPath(currentAssetReference);

  return v3;
}

@end