@interface UIViewControllerWrapperView
+ (UIViewControllerWrapperView)wrapperViewForView:(double)view frame:(double)frame;
+ (UIViewControllerWrapperView)wrapperViewForView:(double)view wrapperFrame:(double)frame viewFrame:(double)viewFrame;
+ (id)existingWrapperViewForView:(uint64_t)view;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)unwrapView;
- (void)unwrapView:(void *)view;
@end

@implementation UIViewControllerWrapperView

- (void)unwrapView
{
  if (self)
  {
    subviews = [self subviews];
    [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
  }
}

+ (UIViewControllerWrapperView)wrapperViewForView:(double)view frame:(double)frame
{
  v10 = a2;
  v11 = objc_opt_self();
  if (!v10)
  {
    v13 = 0;
    goto LABEL_7;
  }

  v12 = [(UIViewControllerWrapperView *)v11 existingWrapperViewForView:v10];
  if (v12)
  {
    v13 = v12;
    [(UIViewControllerWrapperView *)v12 setFrame:view, frame, a5, a6];
    [(UIView *)v13 bounds];
    [v10 setFrame:?];
  }

  else
  {
    v13 = [[UIViewControllerWrapperView alloc] initWithFrame:view, frame, a5, a6];
    -[UIView setAutoresizingMask:](v13, "setAutoresizingMask:", [v10 autoresizingMask]);
    [(UIView *)v13 bounds];
    [v10 setFrame:?];
    [(UIView *)v13 addSubview:v10];
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v13->_tightWrappingDisabled = 0;
LABEL_7:

  return v13;
}

+ (id)existingWrapperViewForView:(uint64_t)view
{
  v2 = a2;
  objc_opt_self();
  superview = [v2 superview];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = superview;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (UIViewControllerWrapperView)wrapperViewForView:(double)view wrapperFrame:(double)frame viewFrame:(double)viewFrame
{
  v18 = a2;
  v19 = objc_opt_self();
  if (!v18)
  {
    v21 = 0;
    goto LABEL_7;
  }

  v20 = [(UIViewControllerWrapperView *)v19 existingWrapperViewForView:v18];
  if (v20)
  {
    v21 = v20;
    [(UIViewControllerWrapperView *)v20 setFrame:view, frame, viewFrame, a6];
    [v18 setFrame:{a7, a8, a9, a10}];
  }

  else
  {
    v21 = [[UIViewControllerWrapperView alloc] initWithFrame:view, frame, viewFrame, a6];
    -[UIView setAutoresizingMask:](v21, "setAutoresizingMask:", [v18 autoresizingMask]);
    [v18 setFrame:{a7, a8, a9, a10}];
    [(UIView *)v21 addSubview:v18];
    if (!v21)
    {
      goto LABEL_7;
    }
  }

  v21->_tightWrappingDisabled = 1;
LABEL_7:

  return v21;
}

- (void)setFrame:(CGRect)frame
{
  if (self)
  {
    tightWrappingDisabled = self->_tightWrappingDisabled;
    v7.receiver = self;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
    if (tightWrappingDisabled)
    {
      return;
    }
  }

  else
  {
    v7.receiver = 0;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }

  subviews = [(UIView *)self subviews];
  lastObject = [subviews lastObject];
  [(UIView *)self bounds];
  [lastObject setFrame:?];
}

- (void)setBounds:(CGRect)bounds
{
  if (self)
  {
    tightWrappingDisabled = self->_tightWrappingDisabled;
    v7.receiver = self;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
    if (tightWrappingDisabled)
    {
      return;
    }
  }

  else
  {
    v7.receiver = 0;
    v7.super_class = UIViewControllerWrapperView;
    [(UIView *)&v7 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  }

  subviews = [(UIView *)self subviews];
  lastObject = [subviews lastObject];
  [(UIView *)self bounds];
  [lastObject setFrame:?];
}

- (void)unwrapView:(void *)view
{
  v3 = a2;
  if (view)
  {
    v5 = v3;
    v4 = [UIViewControllerWrapperView existingWrapperViewForView:v3];

    v3 = v5;
    if (v4 == view)
    {
      [v5 removeFromSuperview];
      v3 = v5;
    }
  }
}

@end