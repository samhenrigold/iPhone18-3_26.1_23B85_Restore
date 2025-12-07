@interface UICollectionViewCell(VideosUI)
+ (id)makePrototypeCellWithFrame:()VideosUI;
@end

@implementation UICollectionViewCell(VideosUI)

+ (id)makePrototypeCellWithFrame:()VideosUI
{
  v9 = objc_alloc_init(objc_opt_class());
  [v9 setFrame:{a2, a3, a4, a5}];

  return v9;
}

@end