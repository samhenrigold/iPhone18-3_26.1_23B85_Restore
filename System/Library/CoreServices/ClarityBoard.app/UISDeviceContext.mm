@interface UISDeviceContext
+ (id)clb_contextForDisplayStyle:(int64_t)style;
@end

@implementation UISDeviceContext

+ (id)clb_contextForDisplayStyle:(int64_t)style
{
  BSDispatchQueueAssertMain();
  v4 = +[UISMutableDeviceContext defaultContext];
  v6 = v4;
  if (style == 1)
  {
    if (sub_1000227C0() == 2)
    {
      [v6 setDeviceInfoValue:&off_100318F70 forKey:UISDeviceContextHomeButtonTypeKey];
      [v6 setDeviceInfoValue:&off_100318F88 forKey:UISDeviceContextDeviceCornerRadiusKey];
      goto LABEL_8;
    }

    v9 = sub_100006370();
    v8 = sub_1000222D4(v9);
  }

  else
  {
    if (style)
    {
      goto LABEL_8;
    }

    v7 = sub_100015CE4(v4, v5);
    v8 = sub_1000222D4(v7);
  }

  v10 = [NSNumber numberWithDouble:v8];
  [v6 setDeviceInfoValue:v10 forKey:UISDeviceContextDeviceCornerRadiusKey];

LABEL_8:

  return v6;
}

@end