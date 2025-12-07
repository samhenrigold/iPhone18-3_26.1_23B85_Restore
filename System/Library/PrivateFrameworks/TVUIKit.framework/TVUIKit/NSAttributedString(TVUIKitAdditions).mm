@interface NSAttributedString(TVUIKitAdditions)
- (double)boundingRectWithWidth:()TVUIKitAdditions lines:;
@end

@implementation NSAttributedString(TVUIKitAdditions)

- (double)boundingRectWithWidth:()TVUIKitAdditions lines:
{
  v6 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:self];
  v7 = objc_alloc_init(MEMORY[0x277D74238]);
  [v6 addLayoutManager:v7];
  v8 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{a2, 1.79769313e308}];
  [v7 addTextContainer:v8];
  [v8 setMaximumNumberOfLines:a4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_26D134E96;
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = v9;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  numberOfGlyphs = [v7 numberOfGlyphs];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__NSAttributedString_TVUIKitAdditions__boundingRectWithWidth_lines___block_invoke;
  v13[3] = &unk_279D91040;
  v13[4] = v14;
  v13[5] = &v15;
  v13[6] = a4;
  [v7 enumerateLineFragmentsForGlyphRange:0 usingBlock:{numberOfGlyphs, v13}];
  v11 = v16[4];
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);

  return v11;
}

@end