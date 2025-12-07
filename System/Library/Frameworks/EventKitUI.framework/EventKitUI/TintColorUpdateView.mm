@interface TintColorUpdateView
- (void)tintColorDidChange;
@end

@implementation TintColorUpdateView

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = TintColorUpdateView;
  [(TintColorUpdateView *)&v6 tintColorDidChange];
  tintColorUpdateDelegate = [(TintColorUpdateView *)self tintColorUpdateDelegate];

  if (tintColorUpdateDelegate)
  {
    tintColorUpdateDelegate2 = [(TintColorUpdateView *)self tintColorUpdateDelegate];
    v5 = objc_msgSend_tintColor(self);
    [tintColorUpdateDelegate2 viewTintColorDidChangeForView:self toColor:v5];
  }
}

@end