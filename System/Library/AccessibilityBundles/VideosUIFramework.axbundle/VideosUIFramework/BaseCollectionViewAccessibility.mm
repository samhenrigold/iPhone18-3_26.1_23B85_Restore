@interface BaseCollectionViewAccessibility
- (id)accessibilityHeaderElements;
@end

@implementation BaseCollectionViewAccessibility

- (id)accessibilityHeaderElements
{
  v24 = *MEMORY[0x29EDCA608];
  v22.receiver = self;
  v22.super_class = BaseCollectionViewAccessibility;
  accessibilityHeaderElements = [(BaseCollectionViewAccessibility *)&v22 accessibilityHeaderElements];
  if ([accessibilityHeaderElements count])
  {
    array = accessibilityHeaderElements;
  }

  else
  {
    v5 = MEMORY[0x29ED3FF70](@"VideosUI.CollectionRichHeaderView");
    v6 = [(BaseCollectionViewAccessibility *)self safeUIViewForKey:@"superview"];
    v7 = [v6 safeArrayForKey:@"subviews"];
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __62__BaseCollectionViewAccessibility_accessibilityHeaderElements__block_invoke;
    v21[3] = &__block_descriptor_40_e23_B32__0__UIView_8Q16_B24lu32l8;
    v21[4] = v5;
    v8 = [v7 ax_filteredArrayUsingBlock:v21];

    defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    array = [MEMORY[0x29EDB8DE8] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) _accessibilityLeafDescendantsWithOptions:{defaultVoiceOverOptions, v17}];
          [array addObjectsFromArray:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v12);
    }
  }

  return array;
}

@end