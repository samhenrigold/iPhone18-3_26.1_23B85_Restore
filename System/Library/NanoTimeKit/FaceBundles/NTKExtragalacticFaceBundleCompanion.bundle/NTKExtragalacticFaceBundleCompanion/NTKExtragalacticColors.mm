@interface NTKExtragalacticColors
+ (id)identityColorForCorner:(unint64_t)corner;
+ (id)identityColorForGlyphColor:(unint64_t)color;
+ (id)lutFilterFromPalette:(id)palette;
@end

@implementation NTKExtragalacticColors

+ (id)identityColorForGlyphColor:(unint64_t)color
{
  switch(color)
  {
    case 2uLL:
      self = [MEMORY[0x277D75348] blueColor];
      break;
    case 1uLL:
      self = [MEMORY[0x277D75348] greenColor];
      break;
    case 0uLL:
      self = [MEMORY[0x277D75348] redColor];
      break;
  }

  return self;
}

+ (id)identityColorForCorner:(unint64_t)corner
{
  if (corner > 1)
  {
    if (corner == 2)
    {
      self = [MEMORY[0x277D75348] cyanColor];
    }

    else if (corner == 3)
    {
      self = [MEMORY[0x277D75348] blackColor];
    }
  }

  else if (corner)
  {
    if (corner == 1)
    {
      self = [MEMORY[0x277D75348] magentaColor];
    }
  }

  else
  {
    self = [MEMORY[0x277D75348] yellowColor];
  }

  return self;
}

+ (id)lutFilterFromPalette:(id)palette
{
  v35[8] = *MEMORY[0x277D85DE8];
  paletteCopy = palette;
  v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  glyphColor0 = [paletteCopy glyphColor0];
  glyphColor1 = [paletteCopy glyphColor1];
  glyphColor2 = [paletteCopy glyphColor2];
  blackOverlapAndBackground = [paletteCopy blackOverlapAndBackground];
  backgroundTopLeft = [paletteCopy backgroundTopLeft];
  backgroundTopRight = [paletteCopy backgroundTopRight];
  backgroundBottomLeft = [paletteCopy backgroundBottomLeft];
  v24 = blackOverlapAndBackground;
  v25 = glyphColor2;
  v35[0] = blackOverlapAndBackground;
  v35[1] = glyphColor0;
  v26 = glyphColor1;
  v27 = glyphColor0;
  v35[2] = glyphColor1;
  v35[3] = backgroundTopLeft;
  v35[4] = glyphColor2;
  v35[5] = backgroundTopRight;
  v35[6] = backgroundBottomLeft;
  v35[7] = v4;
  v28 = v4;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = NTKRGBAArrayWithColor();
        [array addObjectsFromArray:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA590]];
  v21 = [array copy];
  [v20 setValue:v21 forKey:*MEMORY[0x277CDA540]];

  v33 = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];

  return v22;
}

@end