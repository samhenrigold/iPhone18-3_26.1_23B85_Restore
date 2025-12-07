@interface AMSUICommonStackView
- (void)addArrangedSubviews:(id)subviews;
- (void)removeArrangedSubviews;
@end

@implementation AMSUICommonStackView

- (void)addArrangedSubviews:(id)subviews
{
  v14 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [subviewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(subviewsCopy);
        }

        [(AMSUICommonStackView *)self addArrangedSubview:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [subviewsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeArrangedSubviews
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  arrangedSubviews = [(AMSUICommonStackView *)self arrangedSubviews];
  v3 = [arrangedSubviews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [arrangedSubviews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end