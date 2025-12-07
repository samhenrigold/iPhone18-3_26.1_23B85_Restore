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

    [(RCChronologicalAnnotationView *)v4 setOpaque:0];
  }

  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = RCChronologicalAnnotationView;
  v3 = [(RCChronologicalAnnotationView *)&v8 description];
  v4 = NSStringFromRCTimeRange();
  [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
  v5 = [NSNumber numberWithDouble:?];
  v6 = [NSString stringWithFormat:@"%@: visibleTimeRange = %@, self.timeLabelsMajorInterval = %@", v3, v4, v5];

  return v6;
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
  v3 = RCLocalizedDuration();
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
  v3 = v2;
  RCTimeRangeDeltaWithExactPrecision();
  v5 = 100.0 / (v3 / v4);
  if (v5 >= 1.0)
  {
    v8 = 60.0;
    if (v5 < 60.0)
    {
      v8 = 30.0;
      if (v5 < 30.0)
      {
        v8 = 15.0;
        if (v5 < 9.0)
        {
          v8 = 5.0;
          if (v5 < 2.0)
          {
            v8 = v5;
            if (v5 >= 1.0)
            {
              return 1.0;
            }
          }
        }
      }
    }

    return v8;
  }

  else
  {
    v6 = round(log2(v5));

    return exp2(v6);
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
    RCTimeRangeDeltaWithExactPrecision();
    v11 = v10;
    if (v10 >= 2.22044605e-16)
    {
      RCTimeRangeIntersectTimeRange();
      if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
      {
        [(RCChronologicalAnnotationView *)self timeLabelsMajorInterval];
        v13 = v12;
        v14 = [(RCChronologicalAnnotationView *)self tickMarksForMajorInterval:?];
        v15 = &OBJC_IVAR___VMSilenceRemover__state;
        v74 = +[RCRecorderStyleProvider sharedStyleProvider];
        v71 = +[UIApplication shouldMakeUIForDefaultPNG];
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v72 = CGRectGetWidth(v77);
        [v74 timeLineTickWidth];
        v17 = v16;
        v66 = v11 / v13;
        v68 = v13;
        v18 = v11 / v13 * v14;
        v19 = v13 / v14;
        beginTime = self->_visibleTimeRange.beginTime;
        __y[0] = 0.0;
        v21 = modf(fabs(beginTime / v19), __y);
        if (beginTime >= 0.0)
        {
          v21 = -v21;
        }

        v65 = v21;
        if (beginTime >= 0.0)
        {
          v22 = __y[0];
        }

        else
        {
          v22 = -__y[0];
        }

        _timeLabelAttributes = [(RCChronologicalAnnotationView *)self _timeLabelAttributes];
        CurrentContext = UIGraphicsGetCurrentContext();
        v78.origin.x = x;
        v24 = v17;
        v78.origin.y = y;
        v78.size.width = width;
        v78.size.height = height;
        CGContextClearRect(CurrentContext, v78);
        CGContextSetLineWidth(CurrentContext, v17);
        v27 = (v18 + 1.0);
        if (v27 >= -1)
        {
          v28 = v72 / v18;
          v61 = v72 / v66;
          v62 = v17 + v17;
          v29 = v22;
          v30 = v17 * 0.5;
          v73 = v72 / v18 * v65;
          v31 = v27 + 2;
          v32 = -1;
          v64 = v17;
          v63 = v17 * 0.5;
          v69 = v28;
          do
          {
            v33 = v19 * (v29 + v32);
            if (v33 >= -0.0001 && v33 >= self->_markerClippingRange.beginTime + -0.0001)
            {
              if (v33 >= self->_markerClippingRange.endTime + -0.0001)
              {
                break;
              }

              v35 = v73 + v28 * v32;
              v36 = RCRoundCoord(v25, v26, v35 - v30);
              if ((v29 + v32) % v14)
              {
                timeLineMinorPlaybackMarkerColor = [v74 timeLineMinorPlaybackMarkerColor];
                [v74 timeLineMinorTickHeight];
                v39 = v38;
                CGContextSetFillColorWithColor(CurrentContext, [timeLineMinorPlaybackMarkerColor CGColor]);
                v79.origin.y = 0.0;
                v79.origin.x = v36;
                v79.size.width = v24;
                v79.size.height = v39;
                CGContextFillRect(CurrentContext, v79);
              }

              else
              {
                timeLineMinorPlaybackMarkerColor = [v74 timeLineMajorPlaybackMarkerColor];
                sharedStyleProvider = [v15 + 406 sharedStyleProvider];
                [sharedStyleProvider timeLineMajorTickHeight];
                v42 = v41;

                CGContextSetFillColorWithColor(CurrentContext, [timeLineMinorPlaybackMarkerColor CGColor]);
                v80.origin.y = 0.0;
                v80.origin.x = v36;
                v80.size.width = v24;
                v80.size.height = v42;
                CGContextFillRect(CurrentContext, v80);
                if (!((v33 < 0.0) | v71 & 1))
                {
                  v45 = RCRoundCoord(v43, v44, v35 - v62);
                  sharedStyleProvider2 = [v15 + 406 sharedStyleProvider];
                  [sharedStyleProvider2 timeLineMajorTickHeight];
                  v48 = v47;

                  window = [(RCChronologicalAnnotationView *)self window];
                  v67 = v45;
                  [(RCChronologicalAnnotationView *)self convertRect:window toView:v45, v48, v61, 1.0];
                  v51 = v50;
                  v53 = v52;
                  v54 = v19;
                  v56 = v55;
                  v58 = v57;
                  [window bounds];
                  v82.origin.x = v51;
                  v82.origin.y = v53;
                  v82.size.width = v56;
                  v19 = v54;
                  v82.size.height = v58;
                  v59 = CGRectIntersectsRect(v81, v82);
                  if (![(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]|| [(RCChronologicalAnnotationView *)self shouldOnlyRenderOnScreenTimeLabels]&& v59)
                  {
                    if (v68 < 1.0)
                    {
                      RCLocalizedPlaybackTimeWithMinimumComponents();
                    }

                    else
                    {
                      RCLocalizedDuration();
                    }
                    v60 = ;
                    [v60 drawAtPoint:_timeLabelAttributes withAttributes:{v67, v48, *&v61}];
                  }

                  v15 = &OBJC_IVAR___VMSilenceRemover__state;
                  v30 = v63;
                  v24 = v64;
                }

                v28 = v69;
              }
            }

            ++v32;
            --v31;
          }

          while (v31);
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