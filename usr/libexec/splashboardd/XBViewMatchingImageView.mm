@interface XBViewMatchingImageView
- (XBViewMatchingImageView)initWithMatchingView:(id)view image:(id)image bottom:(BOOL)bottom;
- (void)layoutSubviews;
@end

@implementation XBViewMatchingImageView

- (XBViewMatchingImageView)initWithMatchingView:(id)view image:(id)image bottom:(BOOL)bottom
{
  bottomCopy = bottom;
  viewCopy = view;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = XBViewMatchingImageView;
  v10 = [(XBViewMatchingImageView *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(XBViewMatchingImageView *)v10 setMatchingView:viewCopy];
    if (imageCopy)
    {
      v12 = [[UIImageView alloc] initWithImage:imageCopy];
      [(XBViewMatchingImageView *)v11 setImageView:v12];
    }

    [(XBViewMatchingImageView *)v11 setBottom:bottomCopy];
    if (bottomCopy)
    {
      v13 = 10;
    }

    else
    {
      v13 = 34;
    }

    [viewCopy setAutoresizingMask:v13];
    [viewCopy setHidden:imageCopy != 0];
    [(XBViewMatchingImageView *)v11 addSubview:viewCopy];
    [(XBViewMatchingImageView *)v11 addSubview:v11->_imageView];
  }

  return v11;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = XBViewMatchingImageView;
  [(XBViewMatchingImageView *)&v13 layoutSubviews];
  [(UIView *)self->_matchingView sizeToFit];
  [(UIView *)self->_matchingView frame];
  bottom = self->_bottom;
  [(XBViewMatchingImageView *)self safeAreaInsets];
  UIRectInset();
  v8 = v7;
  if (bottom)
  {
    v9 = v5;
    v10 = v6;
    [(XBViewMatchingImageView *)self frame];
    v12 = v11 - v10;
  }

  else
  {
    v12 = v4;
    v9 = v5;
    v10 = v6;
  }

  [(UIView *)self->_matchingView setFrame:v8, v12, v9, v10];
  [(UIImageView *)self->_imageView setFrame:v8, v12, v9, v10];
}

@end