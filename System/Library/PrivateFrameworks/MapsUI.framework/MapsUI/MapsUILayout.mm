@interface MapsUILayout
+ (id)_buildAttributedDisplayStringForComponents:(id)components isRTL:(BOOL)l;
+ (id)buildAttributedDisplayStringForComponents:(id)components forContainingView:(id)view;
+ (id)buildAttributedDisplayStringForComponents:(id)components reverseIfRTLLayout:(BOOL)layout;
@end

@implementation MapsUILayout

+ (id)_buildAttributedDisplayStringForComponents:(id)components isRTL:(BOOL)l
{
  v21 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v6 = componentsCopy;
  if (l)
  {
    [componentsCopy reverseObjectEnumerator];
  }

  else
  {
    [componentsCopy objectEnumerator];
  }
  v7 = ;
  v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 appendAttributedString:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [v8 copy];

  return v14;
}

+ (id)buildAttributedDisplayStringForComponents:(id)components reverseIfRTLLayout:(BOOL)layout
{
  layoutCopy = layout;
  componentsCopy = components;
  if (layoutCopy)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    layoutCopy = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;
  }

  v8 = [self _buildAttributedDisplayStringForComponents:componentsCopy isRTL:layoutCopy];

  return v8;
}

+ (id)buildAttributedDisplayStringForComponents:(id)components forContainingView:(id)view
{
  componentsCopy = components;
  v7 = [self _buildAttributedDisplayStringForComponents:componentsCopy isRTL:{objc_msgSend(view, "effectiveUserInterfaceLayoutDirection") == 1}];

  return v7;
}

@end