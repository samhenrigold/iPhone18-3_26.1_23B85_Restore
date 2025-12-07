@interface ISIconSegmentationFeedbackBilinearGradient
- (ISIconSegmentationFeedbackBilinearGradient)gradientWithSize:(CGSize)size;
- (ISIconSegmentationFeedbackBilinearGradient)initWithTopLeftColor:(CGColor *)color topRightColor:(CGColor *)rightColor bottomRightColor:(CGColor *)bottomRightColor bottomLeftColor:(CGColor *)leftColor meanColor:(CGColor *)meanColor;
- (void)dealloc;
@end

@implementation ISIconSegmentationFeedbackBilinearGradient

- (ISIconSegmentationFeedbackBilinearGradient)initWithTopLeftColor:(CGColor *)color topRightColor:(CGColor *)rightColor bottomRightColor:(CGColor *)bottomRightColor bottomLeftColor:(CGColor *)leftColor meanColor:(CGColor *)meanColor
{
  v14.receiver = self;
  v14.super_class = ISIconSegmentationFeedbackBilinearGradient;
  v12 = [(ISIconSegmentationFeedbackBilinearGradient *)&v14 init];
  if (v12)
  {
    v12->_topLeftColor = CGColorRetain(color);
    v12->_topRightColor = CGColorRetain(rightColor);
    v12->_bottomRightColor = CGColorRetain(bottomRightColor);
    v12->_bottomLeftColor = CGColorRetain(leftColor);
    v12->_meanColor = CGColorRetain(meanColor);
  }

  return v12;
}

- (void)dealloc
{
  CGColorRelease(self->_topLeftColor);
  CGColorRelease(self->_topRightColor);
  CGColorRelease(self->_bottomRightColor);
  CGColorRelease(self->_bottomLeftColor);
  CGColorRelease(self->_meanColor);
  v3.receiver = self;
  v3.super_class = ISIconSegmentationFeedbackBilinearGradient;
  [(ISIconSegmentationFeedbackBilinearGradient *)&v3 dealloc];
}

- (ISIconSegmentationFeedbackBilinearGradient)gradientWithSize:(CGSize)size
{
  height = size.height;
  v19[2] = *MEMORY[0x1E69E9840];
  Components = CGColorGetComponents(self->_topLeftColor);
  NumberOfComponents = CGColorGetNumberOfComponents(self->_topLeftColor);
  if (Components)
  {
    v7 = NumberOfComponents >= 3;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = CGColorGetComponents(self->_topRightColor);
  v9 = CGColorGetNumberOfComponents(self->_topRightColor);
  if (!v8 || v9 < 3)
  {
    goto LABEL_10;
  }

  v13 = CGColorGetComponents(self->_bottomRightColor);
  v14 = CGColorGetNumberOfComponents(self->_bottomRightColor);
  v11 = 0;
  if (v13)
  {
    if (v14 >= 3)
    {
      v15 = CGColorGetComponents(self->_bottomLeftColor);
      v16 = CGColorGetNumberOfComponents(self->_bottomLeftColor);
      v11 = 0;
      if (v15)
      {
        if (v16 >= 3)
        {
          if (vabdd_f64(*Components, *v8) > 0.01 || vabdd_f64(Components[1], v8[1]) > 0.01 || vabdd_f64(Components[2], v8[2]) > 0.01 || vabdd_f64(*v15, *v13) > 0.01 || vabdd_f64(v15[1], v13[1]) > 0.01 || vabdd_f64(v15[2], v13[2]) > 0.01)
          {
LABEL_10:
            v11 = 0;
            goto LABEL_11;
          }

          v11 = objc_opt_new();
          [v11 setGradientType:1];
          [v11 setGradientStartPoint:{0.0, 0.0}];
          [v11 setGradientEndPoint:{0.0, height}];
          bottomLeftColor = self->_bottomLeftColor;
          v19[0] = self->_topLeftColor;
          v19[1] = bottomLeftColor;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
          [v11 setColors:v18 andStops:&unk_1F1A657F0];
        }
      }
    }
  }

LABEL_11:

  return v11;
}

@end