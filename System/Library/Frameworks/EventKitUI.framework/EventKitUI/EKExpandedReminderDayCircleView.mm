@interface EKExpandedReminderDayCircleView
- (EKExpandedReminderDayCircleView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation EKExpandedReminderDayCircleView

- (EKExpandedReminderDayCircleView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = EKExpandedReminderDayCircleView;
  v3 = [(EKExpandedReminderDayCircleView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(EKExpandedReminderDayCircleView *)v3 setBackgroundColor:systemBackgroundColor];

    v6 = CalendarAppCircleNonTodayBGColor(v5);
    circleColor = v3->_circleColor;
    v3->_circleColor = v6;
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(UIColor *)self->_circleColor set];
  [(EKExpandedReminderDayCircleView *)self bounds];

  CGContextFillEllipseInRect(CurrentContext, *&v5);
}

@end