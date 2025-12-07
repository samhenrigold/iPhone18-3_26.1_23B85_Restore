@interface MUBrowseCategoryItem
- (MUBrowseCategoryItem)initWithCategory:(id)category nightMode:(BOOL)mode;
- (id)imageWithSearchCategory:(id)category nightMode:(BOOL)mode;
@end

@implementation MUBrowseCategoryItem

- (id)imageWithSearchCategory:(id)category nightMode:(BOOL)mode
{
  v5 = MEMORY[0x1E696F220];
  styleAttributes = [category styleAttributes];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen nativeScale];
  LOBYTE(v10) = mode;
  v8 = [v5 imageForStyle:styleAttributes size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v10 nightMode:?];

  return v8;
}

- (MUBrowseCategoryItem)initWithCategory:(id)category nightMode:(BOOL)mode
{
  modeCopy = mode;
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = MUBrowseCategoryItem;
  v8 = [(MUBrowseCategoryItem *)&v15 init];
  if (v8)
  {
    shortDisplayString = [categoryCopy shortDisplayString];
    v10 = [shortDisplayString copy];
    title = v8->_title;
    v8->_title = v10;

    v12 = [(MUBrowseCategoryItem *)v8 imageWithSearchCategory:categoryCopy nightMode:modeCopy];
    image = v8->_image;
    v8->_image = v12;

    objc_storeStrong(&v8->_searchCategory, category);
  }

  return v8;
}

@end