@interface SUUISearchBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUISearchBar)init;
@end

@implementation SUUISearchBar

- (SUUISearchBar)init
{
  v10.receiver = self;
  v10.super_class = SUUISearchBar;
  v2 = [(SUUISearchBar *)&v10 init];
  v4 = v2;
  if (v2)
  {
    v5 = storeSemanticContentAttribute(v2, v3);
    if (storeShouldReverseLayoutDirection())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(SUUISearchBar *)v4 setSemanticContentAttribute:v5];
    searchField = [(SUUISearchBar *)v4 searchField];
    [searchField setSemanticContentAttribute:v5];

    searchField2 = [(SUUISearchBar *)v4 searchField];
    [searchField2 setTextAlignment:v6];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = SUUISearchBar;
  [(SUUISearchBar *)&v13 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(SUUISearchBar *)self intrinsicWidth];
  if (v8 > 0.0)
  {
    [(SUUISearchBar *)self intrinsicWidth];
    if (v9 < v5)
    {
      [(SUUISearchBar *)self intrinsicWidth];
      v5 = v10;
    }
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

@end