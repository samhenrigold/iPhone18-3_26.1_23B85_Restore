@interface CHUISWatchComplicationsCurvedLabelMetrics
- (CHUISWatchComplicationsCurvedLabelMetrics)initWithInterior:(BOOL)interior tracking:(double)tracking circleCenter:(CGPoint)center circleRadius:(double)radius maximumAngularWidth:(double)width centerAngle:(double)angle fontSize:(double)size textColor:(id)self0 accessoryPlacement:(unint64_t)self1 accessoryPadding:(double)self2 accessoryMaxSize:(CGSize)self3;
- (CHUISWatchComplicationsCurvedLabelMetrics)initWithPath:(id)path fontSize:(double)size textColor:(id)color accessoryPlacement:(unint64_t)placement accessoryPadding:(double)padding accessoryMaxSize:(CGSize)maxSize;
@end

@implementation CHUISWatchComplicationsCurvedLabelMetrics

- (CHUISWatchComplicationsCurvedLabelMetrics)initWithInterior:(BOOL)interior tracking:(double)tracking circleCenter:(CGPoint)center circleRadius:(double)radius maximumAngularWidth:(double)width centerAngle:(double)angle fontSize:(double)size textColor:(id)self0 accessoryPlacement:(unint64_t)self1 accessoryPadding:(double)self2 accessoryMaxSize:(CGSize)self3
{
  y = center.y;
  x = center.x;
  interiorCopy = interior;
  colorCopy = color;
  v28.receiver = self;
  v28.super_class = CHUISWatchComplicationsCurvedLabelMetrics;
  v25 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v28 init];
  v26 = v25;
  if (v25)
  {
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v25 setInterior:interiorCopy];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setTracking:tracking];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setCircleCenter:x, y];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setCircleRadius:radius];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setMaximumAngularWidth:width];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setCenterAngle:angle];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setBezierPath:0];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setFontSize:size];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setTextColor:colorCopy];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setAccessoryPlacement:placement];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setAccessoryPadding:padding];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v26 setAccessoryMaxSize:v29, v30];
  }

  return v26;
}

- (CHUISWatchComplicationsCurvedLabelMetrics)initWithPath:(id)path fontSize:(double)size textColor:(id)color accessoryPlacement:(unint64_t)placement accessoryPadding:(double)padding accessoryMaxSize:(CGSize)maxSize
{
  height = maxSize.height;
  width = maxSize.width;
  pathCopy = path;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = CHUISWatchComplicationsCurvedLabelMetrics;
  v17 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v17 setInterior:0];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setTracking:0.0];
    v19 = [objc_alloc(MEMORY[0x1E6994228]) initWithCGPath:{objc_msgSend(pathCopy, "CGPath")}];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setBezierPath:v19];

    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setFontSize:size];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setTextColor:colorCopy];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryPlacement:placement];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryPadding:padding];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryMaxSize:width, height];
  }

  return v18;
}

@end