@interface UIColor(CarPlayUIServices)
+ (id)crsui_consoleTurnCardETATrayBackgroundColor;
+ (id)crsui_dashboardWidgetBackgroundColor;
@end

@implementation UIColor(CarPlayUIServices)

+ (id)crsui_dashboardWidgetBackgroundColor
{
  if (crsui_dashboardWidgetBackgroundColor_onceToken != -1)
  {
    +[UIColor(CarPlayUIServices) crsui_dashboardWidgetBackgroundColor];
  }

  v2 = crsui_dashboardWidgetBackgroundColor_dashboardWidgetBackgroundColor;

  return v2;
}

+ (id)crsui_consoleTurnCardETATrayBackgroundColor
{
  if (crsui_consoleTurnCardETATrayBackgroundColor_onceToken != -1)
  {
    +[UIColor(CarPlayUIServices) crsui_consoleTurnCardETATrayBackgroundColor];
  }

  v2 = crsui_consoleTurnCardETATrayBackgroundColor_consoleTurnCardBackgroundColor;

  return v2;
}

@end