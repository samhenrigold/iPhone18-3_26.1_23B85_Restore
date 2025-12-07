@interface UILabel(MapsUILayout)
+ (double)_mapsui_maximumHeightWithFont:()MapsUILayout numberOfLines:displayScale:;
@end

@implementation UILabel(MapsUILayout)

+ (double)_mapsui_maximumHeightWithFont:()MapsUILayout numberOfLines:displayScale:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a5 < 1)
  {
    v17 = 1.79769313e308;
  }

  else
  {
    [v6 lineHeight];
    [v7 leading];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      fontDescriptor = [v7 fontDescriptor];
      fontAttributes = [fontDescriptor fontAttributes];
      v12 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB8E8]];

      if (v12)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = [&unk_1F450E350 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
LABEL_6:
          v16 = 0;
          while (1)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(&unk_1F450E350);
            }

            if ([v12 containsString:*(*(&v20 + 1) + 8 * v16)])
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [&unk_1F450E350 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v14)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }
      }
    }

    UICeilToScale();
    v17 = v18;
  }

  return v17;
}

@end