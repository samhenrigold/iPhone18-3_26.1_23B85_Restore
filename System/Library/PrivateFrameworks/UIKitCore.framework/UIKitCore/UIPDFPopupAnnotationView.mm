@interface UIPDFPopupAnnotationView
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
@end

@implementation UIPDFPopupAnnotationView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFPopupAnnotationView;
  [(UIView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  if ([(UIPDFPageView *)[(UIPDFAnnotationController *)[[(UIPDFAnnotationView *)self annotation:rect.origin.x] annotationController] pageView] showAnnotations])
  {
    parent = [[(UIPDFAnnotationView *)self annotation] parent];
    image = self->_image;
    if (image || (v6 = [objc_msgSend(parent "annotationController")], self->_image = v6, v7 = v6, (image = self->_image) != 0))
    {
      [(UIImage *)image size];
      v9 = v8;
      v11 = v10;
      [(UIView *)self bounds];
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      v16 = CGRectGetWidth(v29) - v9;
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v17 = CGRectGetHeight(v30) - v11;
      v18 = self->_image;
      v19 = v17 * 0.5;

      [(UIImage *)v18 drawInRect:v16 * 0.5, v19, v9, v11];
    }

    else
    {
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      color = [parent color];
      CGContextSaveGState(v21);
      CGContextSetFillColorWithColor(v21, color);
      [(UIView *)self bounds];
      CGContextFillRect(v21, v31);
      cGColor = [objc_msgSend_blackColor(UIColor) CGColor];
      CGContextSetStrokeColorWithColor(v21, cGColor);
      [(UIView *)self bounds];
      v33 = CGRectInset(v32, 2.0, 2.0);
      v24 = v33.origin.x;
      v25 = v33.origin.y;
      v26 = v33.size.width;
      v27 = v33.size.height;
      CGContextSetLineWidth(v21, 1.0);
      v34.origin.x = v24;
      v34.origin.y = v25;
      v34.size.width = v26;
      v34.size.height = v27;
      CGContextStrokeRect(v21, v34);

      CGContextRestoreGState(v21);
    }
  }
}

@end