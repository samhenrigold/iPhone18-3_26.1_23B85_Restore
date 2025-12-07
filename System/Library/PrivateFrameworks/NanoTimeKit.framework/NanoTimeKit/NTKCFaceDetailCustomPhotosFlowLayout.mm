@interface NTKCFaceDetailCustomPhotosFlowLayout
- (NTKCFaceDetailCustomPhotosFlowLayout)init;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
@end

@implementation NTKCFaceDetailCustomPhotosFlowLayout

- (NTKCFaceDetailCustomPhotosFlowLayout)init
{
  v12.receiver = self;
  v12.super_class = NTKCFaceDetailCustomPhotosFlowLayout;
  v2 = [(UICollectionViewFlowLayout *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(NTKCFaceDetailCustomPhotosFlowLayout *)v2 _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
    if (NTKCScreenStyle(v4, v5) == -1)
    {
      v8 = 2.0;
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v8 = 2.0 / v7;
    }

    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:v8];
    [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:v8];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v10 = (CGRectGetWidth(v13) + v8 * -3.0) * 0.25;

    [(UICollectionViewFlowLayout *)v3 setItemSize:v10, v10];
    [(UICollectionViewFlowLayout *)v3 setSectionInset:v8, 0.0, v8, 0.0];
  }

  return v3;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  v8.receiver = self;
  v8.super_class = NTKCFaceDetailCustomPhotosFlowLayout;
  v4 = [(NTKCFaceDetailCustomPhotosFlowLayout *)&v8 layoutAttributesForInteractivelyMovingItemAtIndexPath:path withTargetPosition:position.x, position.y];
  CGAffineTransformMakeScale(&v7, 1.2, 1.2);
  v6 = v7;
  [v4 setTransform:&v6];

  return v4;
}

@end