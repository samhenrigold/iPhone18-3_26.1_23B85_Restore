@interface _KeypadDismissButton
- (_KeypadDismissButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _KeypadDismissButton

- (_KeypadDismissButton)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = _KeypadDismissButton;
  v3 = [(_KeypadDismissButton *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_KeypadDismissButton *)v3 layer];
    [layer setBorderWidth:2.0];

    layer2 = [(_KeypadDismissButton *)v4 layer];
    v7 = _KeypadBackgroundColor(layer2);
    [layer2 setBorderColor:{objc_msgSend(v7, "CGColor")}];

    v9 = _KeypadForegroundColor(v8);
    [(_KeypadDismissButton *)v4 setBackgroundColor:v9];

    v10 = _KeypadBackgroundColor([(_KeypadDismissButton *)v4 setTitle:@"✕" forState:0]);
    [(_KeypadDismissButton *)v4 setTitleColor:v10 forState:0];

    v12 = _KeypadForegroundColor(v11);
    [(_KeypadDismissButton *)v4 setTitleColor:v12 forState:1];

    titleLabel = [(_KeypadDismissButton *)v4 titleLabel];
    v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:24.0];
    [titleLabel setFont:v14];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (highlighted)
  {
    _KeypadBackgroundColor(self);
  }

  else
  {
    _KeypadForegroundColor(self);
  }
  v5 = ;
  [(_KeypadDismissButton *)self setBackgroundColor:v5];

  v6.receiver = self;
  v6.super_class = _KeypadDismissButton;
  [(_KeypadDismissButton *)&v6 setHighlighted:highlightedCopy];
}

@end