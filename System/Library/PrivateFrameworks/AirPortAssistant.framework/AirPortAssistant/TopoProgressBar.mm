@interface TopoProgressBar
+ (int)initImageCache;
+ (void)deallocImageCache;
- (CGImage)composeProgressBar;
- (CGSize)preferredFrameSize;
- (TopoProgressBar)initWithOwningView:(id)view;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setOwningView:(id)view;
- (void)setProgressValue:(float)value;
@end

@implementation TopoProgressBar

+ (int)initImageCache
{
  if (qword_27E3834C0)
  {
    return 0;
  }

  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
  v9 = objc_msgSend_imageNamed_inBundle_(ImageStore, v8, @"TopoProgressFill", v7);
  if (v9 && (qword_27E3834C0 = objc_msgSend_resizableImageWithCapInsets_(v9, v10, v11, v12, 0.0, 5.0, 0.0, 5.0)) != 0 && (v13 = MEMORY[0x277CCA8D8], v14 = objc_opt_class(), v17 = objc_msgSend_bundleForClass_(v13, v15, v14, v16), (v19 = objc_msgSend_imageNamed_inBundle_(ImageStore, v18, @"TopoProgressTrack", v17)) != 0) && (qword_27E3834C8 = objc_msgSend_resizableImageWithCapInsets_(v19, v20, v21, v22, 0.0, 5.0, 0.0, 5.0)) != 0)
  {
    return 0;
  }

  else
  {
    return -6729;
  }
}

+ (void)deallocImageCache
{
  qword_27E3834C0 = 0;

  qword_27E3834C8 = 0;
}

- (TopoProgressBar)initWithOwningView:(id)view
{
  v14.receiver = self;
  v14.super_class = TopoProgressBar;
  v4 = [(TopoProgressBar *)&v14 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setOwningView_(v4, v5, view, v6);
    objc_msgSend_setNeedsDisplayOnBoundsChange_(v7, v8, 1, v9);
    objc_msgSend_initImageCache(TopoProgressBar, v10, v11, v12);
  }

  return v7;
}

- (void)setOwningView:(id)view
{
  self->_owningView = view;
  v5 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, view, v3);
  objc_msgSend_scale(v5, v6, v7, v8);

  MEMORY[0x2821F9670](self, sel_setContentsScale_, v9, v10);
}

- (CGSize)preferredFrameSize
{
  v2 = *(MEMORY[0x277CBF3A8] + 8);
  if (self->_progressValue != 0.0)
  {
    v2 = 12.0;
  }

  v3 = 100.0;
  if (self->_progressValue == 0.0)
  {
    v3 = *MEMORY[0x277CBF3A8];
  }

  result.height = v2;
  result.width = v3;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TopoProgressBar;
  [(TopoProgressBar *)&v2 dealloc];
}

- (void)setProgressValue:(float)value
{
  if (self->_progressValue != value)
  {
    valueCopy = value;
    if (valueCopy < 0.0)
    {
      valueCopy = 0.0;
    }

    v6 = fmin(valueCopy, 1.0);
    self->_progressValue = v6;
    objc_msgSend_setNeedsLayout(self, a2, v3, v4);
  }
}

- (void)layoutSublayers
{
  v6 = objc_msgSend_composeProgressBar(self, a2, v2, v3);

  objc_msgSend_setContents_(self, v5, v6, v7);
}

- (CGImage)composeProgressBar
{
  objc_msgSend_bounds(self, a2, v2, v3);
  if (CGRectIsEmpty(v36))
  {
    ImageFromCurrentImageContext = 0;
  }

  else
  {
    objc_msgSend_bounds(self, v5, v6, v7);
    v10 = v9;
    v12 = v11;
    objc_msgSend_scale(qword_27E3834C8, v13, v14, v15);
    v17 = v16;
    v35.width = v10;
    v35.height = v12;
    UIGraphicsBeginImageContextWithOptions(v35, 0, v17);
    v18 = qword_27E3834C8;
    objc_msgSend_bounds(self, v19, v20, v21);
    objc_msgSend_drawInRect_(v18, v22, v23, v24);
    objc_msgSend_bounds(self, v25, v26, v27);
    v29 = (v28 + -2.0) * self->_progressValue;
    objc_msgSend_drawInRect_(qword_27E3834C0, v30, v31, v32, 1.0, 1.0, roundf(v29), 9.0);
    ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return objc_msgSend_CGImage(ImageFromCurrentImageContext, v5, v6, v7);
}

@end