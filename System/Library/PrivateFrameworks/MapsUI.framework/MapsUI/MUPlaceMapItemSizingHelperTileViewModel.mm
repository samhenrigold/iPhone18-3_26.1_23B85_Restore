@interface MUPlaceMapItemSizingHelperTileViewModel
- (MUPlaceMapItemSizingHelperTileViewModel)init;
- (id)subtitleAttributedStringForFont:(id)font;
@end

@implementation MUPlaceMapItemSizingHelperTileViewModel

- (id)subtitleAttributedStringForFont:(id)font
{
  v16[2] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  subtitle = [(MUPlaceMapItemSizingHelperTileViewModel *)self subtitle];
  v6 = fontCopy;
  if ([subtitle length])
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = *MEMORY[0x1E69DB650];
    v15[0] = *MEMORY[0x1E69DB648];
    v15[1] = v9;
    v16[0] = v6;
    v16[1] = systemGrayColor;
    v10 = MEMORY[0x1E695DF20];
    v11 = v6;
    v12 = [v10 dictionaryWithObjects:v16 forKeys:v15 count:2];

    v13 = [v7 initWithString:subtitle attributes:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MUPlaceMapItemSizingHelperTileViewModel)init
{
  v5.receiver = self;
  v5.super_class = MUPlaceMapItemSizingHelperTileViewModel;
  v2 = [(MUPlaceMapItemSizingHelperTileViewModel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MUPlaceMapItemSizingHelperTileViewModel *)v2 setTileName:@"Example name for Size Calculation"];
    [(MUPlaceMapItemSizingHelperTileViewModel *)v3 setSubtitle:@"12345 example street, example City, Region"];
    [(MUPlaceMapItemSizingHelperTileViewModel *)v3 setExpectedNumberOfFooterLines:2];
  }

  return v3;
}

@end