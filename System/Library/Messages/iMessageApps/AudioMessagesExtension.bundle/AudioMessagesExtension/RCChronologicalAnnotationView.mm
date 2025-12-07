@interface RCChronologicalAnnotationView
- ($F24F406B2B787EFB06265DBA3D28CBD5)markerClippingRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- (CGSize)labelsSize;
- (RCChronologicalAnnotationView)initWithFrame:(CGRect)frame;
- (double)timeLabelsMajorInterval;
- (id)_timeLabelAttributesWithFont:(id)font;
- (id)description;
- (int64_t)tickMarksForMajorInterval:(double)interval;
- (void)drawRect:(CGRect)rect;
- (void)setContentDuration:(double)duration;
- (void)setVisibleTimeRange:(id)range;
@end

@implementation RCChronologicalAnnotationView

- (RCChronologicalAnnotationView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = RCChronologicalAnnotationView;
  v3 = [(RCChronologicalAnnotationView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 56) = RCTimeRangeZero;
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    timeLineLabelFont = [v5 timeLineLabelFont];
    timeLabelFont = v4->_timeLabelFont;
    v4->_timeLabelFont = timeLineLabelFont;

    layer = [(RCChronologicalAnnotationView *)v4 layer];
    [layer removeAllAnimations];
  }

  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = RCChronologicalAnnotationView;
  v3 = [(RCChronologicalAnnotationView *)&v8 description];
  v4 = NSStringFromRCTimeRange(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime);
  [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [NSString stringWithFormat:@"%@: visibleTimeRange = %@, self.timeLabelsMajorInterval = %@", v3, v4, v5];

  return v6;
}

- (void)setVisibleTimeRange:(id)range
{
  self->_visibleTimeRange = range;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  traitCollection = [(RCChronologicalAnnotationView *)self traitCollection];
  isUserInterfaceStyleDark = [traitCollection isUserInterfaceStyleDark];

  v6 = [v7 timelinePlaybackBackgroundColor:isUserInterfaceStyleDark];
  [(RCChronologicalAnnotationView *)self setBackgroundColor:v6];

  [(RCChronologicalAnnotationView *)self setNeedsDisplay];
}

- (void)setContentDuration:(double)duration
{
  if (self->_contentDuration != duration)
  {
    self->_contentDuration = duration;
  }
}

- (CGSize)labelsSize
{
  v3 = RCLocalizedDurationWithStyle(1, 0.0);
  _timeLabelAttributes = [(RCChronologicalAnnotationView *)self _timeLabelAttributes];
  [v3 sizeWithAttributes:_timeLabelAttributes];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)timeLabelsMajorInterval
{
  [(RCChronologicalAnnotationView *)self frame];
  v4 = 100.0 / (v3 / RCTimeRangeDeltaWithExactPrecision(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime));
  if (v4 >= 1.0)
  {
    v7 = 60.0;
    if (v4 < 60.0)
    {
      v7 = 30.0;
      if (v4 < 30.0)
      {
        v7 = 15.0;
        if (v4 < 9.0)
        {
          v7 = 5.0;
          if (v4 < 2.0)
          {
            v7 = v4;
            if (v4 >= 1.0)
            {
              return 1.0;
            }
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v5 = round(log2(v4));

    return exp2(v5);
  }
}

- (int64_t)tickMarksForMajorInterval:(double)interval
{
  if (interval == 60.0 || interval == 1.0)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  superview = [(RCChronologicalAnnotationView *)self superview];
  isHidden = [superview isHidden];

  if ((isHidden & 1) == 0)
  {
    p_visibleTimeRange = &self->_visibleTimeRange;
    v11 = RCTimeRangeDeltaWithExactPrecision(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime);
    if (v11 >= 2.22044605e-16)
    {
      v12 = RCTimeRangeIntersectTimeRange(self->_markerClippingRange.beginTime, self->_markerClippingRange.endTime, p_visibleTimeRange->beginTime, self->_visibleTimeRange.endTime);
      if (!RCTimeRangeEqualToTimeRange(1.79769313e308, -1.79769313e308, v12, v13))
      {
        [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
        v15 = v14;
        v16 = [(RCChronologicalAnnotationView *)self tickMarksForMajorInterval:?];
        v17 = &OBJC_IVAR___RCWaveformSelectionOverlay__enablePlayBarTracking;
        v82 = +[RCRecorderStyleProvider sharedStyleProvider];
        traitCollection = [(RCChronologicalAnnotationView *)self traitCollection];
        isUserInterfaceStyleDark = [traitCollection isUserInterfaceStyleDark];

        v79 = +[UIApplication shouldMakeUIForDefaultPNG];
        v85.origin.x = x;
        v85.origin.y = y;
        v85.size.width = width;
        v85.size.height = height;
        v80 = CGRectGetWidth(v85);
        [v82 timeLineTickWidth];
        v74 = v11 / v15;
        v76 = v15;
        v20 = v11 / v15 * v16;
        v21 = v15 / v16;
        v23 = v22;
        beginTime = p_visibleTimeRange->beginTime;
        __y[0] = 0.0;
        v25 = modf(fabs(beginTime / v21), __y);
        if (beginTime >= 0.0)
        {
          v25 = -v25;
        }

        v72 = v25;
        if (beginTime >= 0.0)
        {
          v26 = __y[0];
        }

        else
        {
          v26 = -__y[0];
        }

        _timeLabelAttributes = [(RCChronologicalAnnotationView *)self _timeLabelAttributes];
        CurrentContext = UIGraphicsGetCurrentContext();
        v86.origin.x = x;
        v86.origin.y = y;
        v86.size.width = width;
        v86.size.height = height;
        CGContextClearRect(CurrentContext, v86);
        CGContextSetLineWidth(CurrentContext, v23);
        v28 = [v82 timelinePlaybackBackgroundColor:isUserInterfaceStyleDark];
        CGContextSetFillColorWithColor(CurrentContext, [v28 CGColor]);

        v87.origin.x = x;
        v29 = v21;
        v87.origin.y = y;
        v87.size.width = width;
        v87.size.height = height;
        CGContextFillRect(CurrentContext, v87);
        v32 = (v20 + 1.0);
        if (v32 >= -1)
        {
          v33 = v80 / v20;
          v68 = v80 / v74;
          v69 = v23 + v23;
          v34 = v26;
          v35 = v23 * 0.5;
          v81 = v80 / v20 * v72;
          v36 = v32 + 2;
          v37 = -1;
          v71 = v23;
          v73 = 1.0 / v76;
          v70 = v23 * 0.5;
          v77 = v33;
          do
          {
            v38 = v29 * (v34 + v37);
            if (v38 >= -0.0001 && v38 >= self->_markerClippingRange.beginTime + -0.0001)
            {
              if (v38 >= self->_markerClippingRange.endTime + -0.0001)
              {
                break;
              }

              v40 = v81 + v33 * v37;
              v41 = RCRoundCoord(v30, v31, v40 - v35);
              if ((v34 + v37) % v16)
              {
                timeLineMinorPlaybackMarkerColor = [v82 timeLineMinorPlaybackMarkerColor];
                [v82 timeLineMinorTickHeight];
                v44 = v43;
                CGContextSetFillColorWithColor(CurrentContext, [timeLineMinorPlaybackMarkerColor CGColor]);
                v88.origin.y = 0.0;
                v88.origin.x = v41;
                v88.size.width = v23;
                v88.size.height = v44;
                CGContextFillRect(CurrentContext, v88);
              }

              else
              {
                timeLineMinorPlaybackMarkerColor = [v82 timeLineMajorPlaybackMarkerColor];
                sharedStyleProvider = [v17 + 480 sharedStyleProvider];
                [sharedStyleProvider timeLineMajorTickHeight];
                v47 = v46;

                CGContextSetFillColorWithColor(CurrentContext, [timeLineMinorPlaybackMarkerColor CGColor]);
                v89.origin.y = 0.0;
                v89.origin.x = v41;
                v89.size.width = v23;
                v89.size.height = v47;
                CGContextFillRect(CurrentContext, v89);
                if (!((v38 < 0.0) | v79 & 1))
                {
                  v50 = RCRoundCoord(v48, v49, v40 - v69);
                  sharedStyleProvider2 = [v17 + 480 sharedStyleProvider];
                  [sharedStyleProvider2 timeLineMajorTickHeight];
                  v53 = v52;

                  window = [(RCChronologicalAnnotationView *)self window];
                  v75 = v50;
                  [(RCChronologicalAnnotationView *)self convertRect:window toView:v50, v53, v68, 1.0];
                  v55 = v29;
                  v57 = v56;
                  v59 = v58;
                  v61 = v60;
                  v63 = v62;
                  [window bounds];
                  v91.origin.x = v57;
                  v29 = v55;
                  v91.origin.y = v59;
                  v91.size.width = v61;
                  v91.size.height = v63;
                  v64 = CGRectIntersectsRect(v90, v91);
                  if (![(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]|| [(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]&& v64)
                  {
                    v65 = v73 * fabs(v38);
                    v66 = floorf(v65) / v73;
                    if (v76 < 1.0)
                    {
                      RCLocalizedPlaybackTimeWithMinimumComponents(2uLL, v66, v66);
                    }

                    else
                    {
                      RCLocalizedDurationWithStyle(1, v66);
                    }
                    v67 = ;
                    [v67 drawAtPoint:_timeLabelAttributes withAttributes:{v75, v53, *&v68}];
                  }

                  v17 = &OBJC_IVAR___RCWaveformSelectionOverlay__enablePlayBarTracking;
                  v35 = v70;
                  v23 = v71;
                }

                v33 = v77;
              }
            }

            ++v37;
            --v36;
          }

          while (v36);
        }
      }
    }
  }
}

- (id)_timeLabelAttributesWithFont:(id)font
{
  fontCopy = font;
  v4 = +[RCRecorderStyleProvider sharedStyleProvider];
  timelinePlaybackTimeColor = [v4 timelinePlaybackTimeColor];
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:fontCopy, NSFontAttributeName, timelinePlaybackTimeColor, NSForegroundColorAttributeName, 0];

  return v6;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange
{
  beginTime = self->_visibleTimeRange.beginTime;
  endTime = self->_visibleTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)markerClippingRange
{
  beginTime = self->_markerClippingRange.beginTime;
  endTime = self->_markerClippingRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end