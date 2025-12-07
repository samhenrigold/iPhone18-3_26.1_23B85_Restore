@interface MTStaticColorPillView
- (MTStaticColorPillView)initWithFrame:(CGRect)frame settings:(id)settings;
- (id)backgroundColor:(id)color;
- (void)setBackgroundColor:(id)color;
- (void)setPillColor:(id)color;
@end

@implementation MTStaticColorPillView

- (MTStaticColorPillView)initWithFrame:(CGRect)frame settings:(id)settings
{
  v9.receiver = self;
  v9.super_class = MTStaticColorPillView;
  v4 = [(MTPillView *)&v9 initWithFrame:settings settings:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v10.width = 1.0;
    v10.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v10, 1, 1.0);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [whiteColor setFill];

    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.width = 1.0;
    v11.size.height = 1.0;
    UIRectFill(v11);
    v6 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    layer = [(MTStaticColorPillView *)v4 layer];
    [v6 CGImage];
    [layer setContents:?];
  }

  return v4;
}

- (id)backgroundColor:(id)color
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:"-[MTStaticColorPillView backgroundColor:]" object:? file:? lineNumber:? description:?];

  v7.receiver = self;
  v7.super_class = MTStaticColorPillView;
  backgroundColor = [(MTStaticColorPillView *)&v7 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:"-[MTStaticColorPillView setBackgroundColor:]" object:? file:? lineNumber:? description:?];

  clearColor = [MEMORY[0x277D75348] clearColor];
  v6.receiver = self;
  v6.super_class = MTStaticColorPillView;
  [(MTStaticColorPillView *)&v6 setBackgroundColor:clearColor];
}

- (void)setPillColor:(id)color
{
  colorCopy = color;
  if (self->_pillColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_pillColor, color);
    layer = [(MTStaticColorPillView *)self layer];
    [(UIColor *)self->_pillColor CGColor];
    [layer setContentsMultiplyColor:?];

    colorCopy = v7;
  }
}

@end