@interface ARCoachingRoundedButton
- (ARCoachingRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category;
- (ARCoachingRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle cornerRadius:(double)radius adjustsFontForContentSizeCategory:(BOOL)category;
- (void)_setupViewWithCornerRadius:(double)radius;
@end

@implementation ARCoachingRoundedButton

- (ARCoachingRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category
{
  v10.receiver = self;
  v10.super_class = ARCoachingRoundedButton;
  v7 = [(ARCoachingButton *)&v10 initWithTitle:title buttonStyle:style textStyle:textStyle controlStyle:controlStyle adjustsFontForContentSizeCategory:category];
  v8 = v7;
  if (v7)
  {
    [(ARCoachingRoundedButton *)v7 _setupViewWithCornerRadius:16.0];
  }

  return v8;
}

- (ARCoachingRoundedButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle cornerRadius:(double)radius adjustsFontForContentSizeCategory:(BOOL)category
{
  v12.receiver = self;
  v12.super_class = ARCoachingRoundedButton;
  v9 = [(ARCoachingButton *)&v12 initWithTitle:title buttonStyle:style textStyle:textStyle controlStyle:controlStyle adjustsFontForContentSizeCategory:category];
  v10 = v9;
  if (v9)
  {
    [(ARCoachingRoundedButton *)v9 _setupViewWithCornerRadius:radius];
  }

  return v10;
}

- (void)_setupViewWithCornerRadius:(double)radius
{
  [(ARCoachingRoundedButton *)self _setContinuousCornerRadius:radius];

  [(ARCoachingRoundedButton *)self setClipsToBounds:1];
}

@end