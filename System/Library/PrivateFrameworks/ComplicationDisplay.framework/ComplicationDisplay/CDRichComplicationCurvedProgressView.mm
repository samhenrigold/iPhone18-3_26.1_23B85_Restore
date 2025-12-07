@interface CDRichComplicationCurvedProgressView
- (CDRichComplicationCurvedProgressView)initWithFamily:(int64_t)family curveWidth:(double)width padding:(double)padding beginAngle:(double)angle endAngle:(double)endAngle forDevice:(id)device withFilterStyle:(int64_t)style progressFillStyle:(int64_t)self0;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors locations:(id)locations;
- (void)setBeginAngle:(double)angle;
- (void)setClockwise:(BOOL)clockwise;
- (void)setEndAngle:(double)angle;
- (void)setProgress:(double)progress;
@end

@implementation CDRichComplicationCurvedProgressView

- (CDRichComplicationCurvedProgressView)initWithFamily:(int64_t)family curveWidth:(double)width padding:(double)padding beginAngle:(double)angle endAngle:(double)endAngle forDevice:(id)device withFilterStyle:(int64_t)style progressFillStyle:(int64_t)self0
{
  deviceCopy = device;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__CDRichComplicationCurvedProgressView_initWithFamily_curveWidth_padding_beginAngle_endAngle_forDevice_withFilterStyle_progressFillStyle___block_invoke;
  aBlock[3] = &unk_278DF35C0;
  widthCopy = width;
  paddingCopy = padding;
  angleCopy = angle;
  endAngleCopy = endAngle;
  v19 = deviceCopy;
  v29 = v19;
  styleCopy = style;
  v20 = _Block_copy(aBlock);
  if (fillStyle <= 7 && ((0xFDu >> fillStyle) & 1) != 0)
  {
    v21 = objc_opt_class();
  }

  else
  {
    v21 = 0;
  }

  self->_progressFillStyle = fillStyle;
  v22 = v20[2](v20, v21);
  v23 = v20[2](v20, v21);
  v27.receiver = self;
  v27.super_class = CDRichComplicationCurvedProgressView;
  v24 = [(CDRichComplicationProgressView *)&v27 initForFamily:family device:v19 backgroundShapeView:v22 foregroundShapeView:v23];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(v24 + 67, v22);
    objc_storeStrong(&v25->_foregroundView, v23);
  }

  return v25;
}

id __138__CDRichComplicationCurvedProgressView_initWithFamily_curveWidth_padding_beginAngle_endAngle_forDevice_withFilterStyle_progressFillStyle___block_invoke(uint64_t a1, Class a2)
{
  v2 = [[a2 alloc] initWithCurveWidth:*(a1 + 32) padding:*(a1 + 72) beginAngle:*(a1 + 40) endAngle:*(a1 + 48) forDevice:*(a1 + 56) withFilterStyle:*(a1 + 64)];

  return v2;
}

- (void)setBeginAngle:(double)angle
{
  self->_beginAngle = angle;
  [(CDRichComplicationCurveView *)self->_backgroundView setBeginAngle:?];
  [(CDRichComplicationCurveView *)self->_foregroundView setBeginAngle:angle];

  [(CDRichComplicationCurvedProgressView *)self setNeedsLayout];
}

- (void)setEndAngle:(double)angle
{
  self->_endAngle = angle;
  [(CDRichComplicationCurveView *)self->_backgroundView setEndAngle:?];
  [(CDRichComplicationCurveView *)self->_foregroundView setEndAngle:angle];

  [(CDRichComplicationCurvedProgressView *)self setNeedsLayout];
}

- (void)setClockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  self->_clockwise = clockwise;
  [(CDRichComplicationCurveView *)self->_backgroundView setClockwise:?];
  [(CDRichComplicationCurveView *)self->_foregroundView setClockwise:clockwiseCopy];

  [(CDRichComplicationCurvedProgressView *)self setNeedsLayout];
}

- (void)setProgress:(double)progress
{
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle))
  {
    [(CDRichComplicationShapeView *)self->_backgroundView setProgress:1.0];
  }

  v5.receiver = self;
  v5.super_class = CDRichComplicationCurvedProgressView;
  [(CDRichComplicationProgressView *)&v5 setProgress:progress];
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors
{
  colorsCopy = colors;
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle) && [colorsCopy count])
  {
    v5 = CDGenerateMeterBackgroundGradientColors([colorsCopy count]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CDRichComplicationCurvedProgressView;
    v5 = [(CDRichComplicationProgressView *)&v8 overrideBackgroundGradientColorsForGradientColors:colorsCopy];
  }

  v6 = v5;

  return v6;
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors locations:(id)locations
{
  colorsCopy = colors;
  locationsCopy = locations;
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle) && [colorsCopy count])
  {
    v8 = CDGenerateMeterBackgroundGradientColors([colorsCopy count]);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CDRichComplicationCurvedProgressView;
    v8 = [(CDRichComplicationProgressView *)&v11 overrideBackgroundGradientColorsForGradientColors:colorsCopy locations:locationsCopy];
  }

  v9 = v8;

  return v9;
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:style];

  return v7;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [filterProvider filterForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [filterProvider filterForView:self style:style];

  return v7;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  accentedCopy = accented;
  viewCopy = view;
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v8 = [filterProvider colorForView:viewCopy accented:accentedCopy];

  return v8;
}

@end