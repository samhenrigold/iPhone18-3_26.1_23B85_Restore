@interface UIStackView(MessageUI)
+ (id)mf_baselineAlignedHorizontalStackView;
+ (id)mf_baselineAlignedVerticalStackView;
+ (id)mf_equalSpacingHorizontalStackView;
+ (id)mf_equallyFilledHorizontalStackView;
+ (id)mf_equallyFilledVerticalStackView;
- (void)mf_addArrangedSubviews:()MessageUI;
@end

@implementation UIStackView(MessageUI)

+ (id)mf_baselineAlignedHorizontalStackView
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAxis:0];
  [v2 setAlignment:2];
  [v2 setDistribution:2];

  return v2;
}

+ (id)mf_baselineAlignedVerticalStackView
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAxis:1];
  [v2 setAlignment:0];
  [v2 setBaselineRelativeArrangement:1];

  return v2;
}

+ (id)mf_equallyFilledVerticalStackView
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v2 setAxis:1];
  [v2 setAlignment:0];
  [v2 setDistribution:1];

  return v2;
}

+ (id)mf_equallyFilledHorizontalStackView
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v2 setAxis:0];
  [v2 setAlignment:0];
  [v2 setDistribution:1];

  return v2;
}

+ (id)mf_equalSpacingHorizontalStackView
{
  v2 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v2 setAxis:0];
  [v2 setDistribution:3];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (void)mf_addArrangedSubviews:()MessageUI
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [self addArrangedSubview:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end