@interface SUUIStackedImageView
+ (SUUIStackedImageConfiguration)_configurationForSize:(SEL)size;
+ (double)maximumPerspectiveHeightForSize:(CGSize)size;
- (CGPoint)vanishingPoint;
- (SUUIStackedImageView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBorderDrawingCache:(id)cache;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)setImageSize:(CGSize)size;
- (void)stackView:(id)view applyAttributesToItem:(id)item atIndex:(int64_t)index;
@end

@implementation SUUIStackedImageView

- (SUUIStackedImageView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SUUIStackedImageView;
  v3 = [(SUUIStackedImageView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v3;
  if (v3)
  {
    v3->_stackDepth = 3;
    v6 = SUUIMPUFoundationFramework(v3, v4);
    v7 = SUUIWeakLinkedClassForString(&cfstr_Mpuborderedima.isa, v6);
    v8 = objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Mpustackview.isa, v6));
    [(SUUIStackedImageView *)v5 bounds];
    v9 = [v8 initWithFrame:v7 itemClass:@"0" itemReuseIdentifier:?];
    stackView = v5->_stackView;
    v5->_stackView = v9;

    [(MPUStackView *)v5->_stackView setDataSource:v5];
    [(MPUStackView *)v5->_stackView setForcesIntegralY:1];
    [(SUUIStackedImageView *)v5 addSubview:v5->_stackView];
  }

  return v5;
}

- (void)dealloc
{
  [(MPUStackView *)self->_stackView setDataSource:0];
  v3.receiver = self;
  v3.super_class = SUUIStackedImageView;
  [(SUUIStackedImageView *)&v3 dealloc];
}

+ (double)maximumPerspectiveHeightForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_opt_class();
  if (v5)
  {
    objc_msgSend__configurationForSize_(v5, width, height, 0);
    v6 = 0.0 * 0;
  }

  else
  {
    v6 = 0.0;
  }

  return floorf(v6);
}

- (void)setBorderDrawingCache:(id)cache
{
  v16 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  if (self->_borderDrawingCache != cacheCopy)
  {
    objc_storeStrong(&self->_borderDrawingCache, cache);
    items = [(MPUStackView *)self->_stackView items];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(items);
          }

          [*(*(&v11 + 1) + 8 * v10++) setBorderDrawingCache:cacheCopy];
        }

        while (v8 != v10);
        v8 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setImage:(id)image
{
  v17 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  image = [(SUUIStackedImageView *)self image];

  if (image != imageCopy)
  {
    v15.receiver = self;
    v15.super_class = SUUIStackedImageView;
    [(SUUIImageView *)&v15 setImage:imageCopy];
    items = [(MPUStackView *)self->_stackView items];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [items countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(items);
          }

          [*(*(&v11 + 1) + 8 * v10++) setImage:imageCopy];
        }

        while (v8 != v10);
        v8 = [items countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(MPUStackView *)self->_stackView setBaseSize:?];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v6 = objc_opt_class();
  if (v6)
  {
    objc_msgSend__configurationForSize_(v6, width, height);
    v8 = *(&v10 + 1);
    v7 = *&v10;
  }

  else
  {
    v12 = 0;
    v8 = 0.0;
    v7 = 0.0;
    v10 = 0u;
    v11 = 0u;
  }

  [(MPUStackView *)self->_stackView setMaximumRelativeOffsetStep:v7, v8];
  [(MPUStackView *)self->_stackView setSizeInsetStep:v11];
  if (self->_stackDepth != v12)
  {
    self->_stackDepth = v12;
    [(MPUStackView *)self->_stackView reloadData];
  }

  v9.receiver = self;
  v9.super_class = SUUIStackedImageView;
  [(SUUIImageView *)&v9 setImageSize:width, height];
}

- (CGPoint)vanishingPoint
{
  [(MPUStackView *)self->_stackView vanishingPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SUUIStackedImageView *)self frame];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = SUUIStackedImageView;
    [(SUUIStackedImageView *)&v12 setFrame:x, y, width, height];
    [(SUUIStackedImageView *)self setNeedsLayout];
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(SUUIStackedImageView *)self center];
  if (x != v7 || y != v6)
  {
    v9.receiver = self;
    v9.super_class = SUUIStackedImageView;
    [(SUUIStackedImageView *)&v9 setCenter:x, y];
    [(SUUIStackedImageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIImageView *)self imageSize];
  v5 = v4;
  v6 = v3;
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    image = [(SUUIStackedImageView *)self image];
    [image size];
    v5 = v9;
    v6 = v10;
  }

  stackView = self->_stackView;
  [(SUUIStackedImageView *)self bounds];
  [(MPUStackView *)stackView setFrame:SUUIImageRectForBounds(0, v5, v6, v12, v13, v14, v15)];
  [(MPUStackView *)self->_stackView updateForChangedDistanceFromVanishingPoint];
  v16.receiver = self;
  v16.super_class = SUUIStackedImageView;
  [(SUUIImageView *)&v16 layoutSubviews];
}

- (void)stackView:(id)view applyAttributesToItem:(id)item atIndex:(int64_t)index
{
  viewCopy = view;
  itemCopy = item;
  borderConfiguration = self->_borderConfiguration;
  if (!borderConfiguration)
  {
    v12 = SUUIMPUFoundationFramework(0, v9);
    v13 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Mpuborderconfi.isa, v12));
    v14 = self->_borderConfiguration;
    self->_borderConfiguration = v13;

    if (stackView_applyAttributesToItem_atIndex__sOnce != -1)
    {
      [SUUIStackedImageView stackView:applyAttributesToItem:atIndex:];
    }

    v15 = self->_borderConfiguration;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(MPUBorderConfiguration *)v15 setDropShadowColor:whiteColor];

    [(MPUBorderConfiguration *)self->_borderConfiguration setDropShadowEdges:11];
    [(MPUBorderConfiguration *)self->_borderConfiguration setDropShadowWidth:1.0 / *&stackView_applyAttributesToItem_atIndex__sScreenScale];
    v17 = self->_borderConfiguration;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(MPUBorderConfiguration *)v17 setBorderColor:whiteColor2];

    [(MPUBorderConfiguration *)self->_borderConfiguration setBorderWidth:1.0 / *&stackView_applyAttributesToItem_atIndex__sScreenScale];
    v19 = self->_borderConfiguration;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(MPUBorderConfiguration *)v19 setFillColor:whiteColor3];

    borderConfiguration = self->_borderConfiguration;
  }

  if (index >= 5)
  {
    index = 5;
  }

  [(MPUBorderConfiguration *)borderConfiguration setFillAlpha:stackView_applyAttributesToItem_atIndex__sItemOverlayCenterWhiteAlphas[index]];
  [(MPUBorderConfiguration *)self->_borderConfiguration setBorderAlpha:stackView_applyAttributesToItem_atIndex__sItemOverlayBorderWhiteAlphas[index]];
  [itemCopy setBorderConfiguration:self->_borderConfiguration];
  [itemCopy setImageAlpha:stackView_applyAttributesToItem_atIndex__sItemImageAlphas[index]];
  [itemCopy setImageContentsRect:{stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * index], stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * index + 1], stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * index + 2], stackView_applyAttributesToItem_atIndex__sItemImageContentRects[4 * index + 3]}];
  v21 = stackView_applyAttributesToItem_atIndex__sItemImageShouldFlipHorizontal[index];
  v22 = stackView_applyAttributesToItem_atIndex__sItemImageShouldFlipVertical[index];
  v23 = *MEMORY[0x277CBF2C0];
  v24 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v24;
  v25 = *(MEMORY[0x277CBF2C0] + 32);
  *&v30.tx = v25;
  if ((v21 & 1) != 0 || v22)
  {
    v26 = 1.0;
    if (v21)
    {
      v27 = -1.0;
    }

    else
    {
      v27 = 1.0;
    }

    if (v22)
    {
      v26 = -1.0;
    }

    *&v29.a = v23;
    *&v29.c = v24;
    *&v29.tx = v25;
    CGAffineTransformScale(&v30, &v29, v27, v26);
  }

  v29 = v30;
  [itemCopy setImageTransform:&v29];
  image = [(SUUIStackedImageView *)self image];
  [itemCopy setImage:image];
}

void __64__SUUIStackedImageView_stackView_applyAttributesToItem_atIndex___block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  stackView_applyAttributesToItem_atIndex__sScreenScale = v0;
}

+ (SUUIStackedImageConfiguration)_configurationForSize:(SEL)size
{
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  retstr->var2 = 3;
  if (a4.height < a4.width)
  {
    a4.width = a4.height;
  }

  if (a4.width < 50.0)
  {
    *&retstr->var0.vertical = xmmword_259FCB720;
    retstr->var1.height = 1.0;
    return result;
  }

  if (a4.width < 80.0)
  {
    __asm { FMOV            V1.2D, #2.0 }

    retstr->var0 = xmmword_259FCB710;
    retstr->var1 = _Q1;
    retstr->var2 = 4;
    return result;
  }

  if (a4.width >= 100.0)
  {
    if (a4.width >= 120.0)
    {
      if (a4.width >= 160.0)
      {
        __asm { FMOV            V0.2D, #9.0 }
      }

      else
      {
        __asm { FMOV            V0.2D, #6.0 }
      }

      __asm { FMOV            V1.2D, #3.0 }

      goto LABEL_16;
    }

    __asm { FMOV            V0.2D, #4.0 }
  }

  else
  {
    __asm { FMOV            V0.2D, #3.0 }
  }

  __asm { FMOV            V1.2D, #2.0 }

LABEL_16:
  retstr->var0 = _Q0;
  retstr->var1 = _Q1;
  return result;
}

@end