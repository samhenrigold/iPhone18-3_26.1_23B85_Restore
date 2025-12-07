@interface SKUISearchBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUISearchBar)init;
@end

@implementation SKUISearchBar

- (SKUISearchBar)init
{
  v11.receiver = self;
  v11.super_class = SKUISearchBar;
  v2 = [(SKUISearchBar *)&v11 init];
  v4 = v2;
  if (v2)
  {
    v5 = storeSemanticContentAttribute(v2, v3);
    if (storeShouldReverseLayoutDirection(v5, v6))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    [(SKUISearchBar *)v4 setSemanticContentAttribute:v5];
    searchField = [(SKUISearchBar *)v4 searchField];
    [searchField setSemanticContentAttribute:v5];

    searchField2 = [(SKUISearchBar *)v4 searchField];
    [searchField2 setTextAlignment:v7];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = SKUISearchBar;
  [(SKUISearchBar *)&v13 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(SKUISearchBar *)self intrinsicWidth];
  if (v8 > 0.0)
  {
    [(SKUISearchBar *)self intrinsicWidth];
    if (v9 < v5)
    {
      [(SKUISearchBar *)self intrinsicWidth];
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