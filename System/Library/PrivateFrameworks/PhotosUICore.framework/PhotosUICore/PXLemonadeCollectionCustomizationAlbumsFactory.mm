@interface PXLemonadeCollectionCustomizationAlbumsFactory
+ (id)albumsCustomizationViewControllerWithRootCollectionList:(id)list preselectedAssets:(id)assets completion:(id)completion;
- (PXLemonadeCollectionCustomizationAlbumsFactory)init;
@end

@implementation PXLemonadeCollectionCustomizationAlbumsFactory

- (PXLemonadeCollectionCustomizationAlbumsFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LemonadeCollectionCustomizationAlbumsFactory();
  return [(PXLemonadeCollectionCustomizationAlbumsFactory *)&v3 init];
}

+ (id)albumsCustomizationViewControllerWithRootCollectionList:(id)list preselectedAssets:(id)assets completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (assets)
  {
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    assets = sub_1A524CA34();
  }

  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A42D6208;
  }

  else
  {
    v8 = 0;
  }

  listCopy = list;
  sub_1A42D603C(listCopy, assets, v7, v8, v10);
}

@end