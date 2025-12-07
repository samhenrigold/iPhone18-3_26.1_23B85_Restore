@interface APWrappingView
- (void)layoutSubviews;
@end

@implementation APWrappingView

- (void)layoutSubviews
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [(APWrappingView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        safeAreaLayoutGuide = [(APWrappingView *)self safeAreaLayoutGuide];
        [safeAreaLayoutGuide frameInView:self];
        [v8 setFrame:?];

        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

@end