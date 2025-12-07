@interface RowSeparatorView
- (void)tintColorDidChange;
@end

@implementation RowSeparatorView

- (void)tintColorDidChange
{
  if ([(RowSeparatorView *)self vibrant])
  {
    v3 = objc_msgSend_tintColor(self);
    [(RowSeparatorView *)self setBackgroundColor:v3];
  }
}

@end