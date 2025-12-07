@interface HOHomeDevicesHeaderCell
- (HOHomeDevicesHeaderCell)initWithFrame:(CGRect)frame;
@end

@implementation HOHomeDevicesHeaderCell

- (HOHomeDevicesHeaderCell)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = HOHomeDevicesHeaderCell;
  v3 = [(HOHomeDevicesHeaderCell *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    v5 = objc_alloc_init(UILabel);
    [(HOHomeDevicesHeaderCell *)v3 setDevicesLabel:v5];

    devicesLabel = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [devicesLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    devicesLabel2 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [devicesLabel2 setFont:v7];

    v9 = [UIColor colorWithWhite:0.5 alpha:1.0];
    devicesLabel3 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [devicesLabel3 setTextColor:v9];

    v11 = +[NSBundle mainBundle];
    v12 = @"HODeviceGridTitle";
    v13 = [v11 localizedStringForKey:@"HODeviceGridTitle" value:@"_" table:@"HOLocalizable"];

    v14 = [@"_" isEqualToString:v13];
    if (v14)
    {
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = sub_10000C210(v14);
      v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v34 = v4;
        v18 = *v37;
LABEL_5:
        v19 = 0;
        while (1)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v36 + 1) + 8 * v19);
          v21 = +[NSBundle mainBundle];
          v22 = [v21 localizedStringForKey:@"HODeviceGridTitle" value:@"HODeviceGridTitle" table:v20];

          if (![(__CFString *)v22 isEqualToString:@"HODeviceGridTitle"])
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
            if (v17)
            {
              goto LABEL_5;
            }

            v22 = @"_";
            break;
          }
        }

        v4 = v34;
        v12 = @"HODeviceGridTitle";
      }

      else
      {
        v22 = @"_";
      }

      v13 = v22;
    }

    if ([@"_" isEqualToString:v13])
    {
      NSLog(@"Sensitive key '%@' not found!", @"HODeviceGridTitle");
    }

    else
    {
      v12 = v13;
    }

    devicesLabel4 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [devicesLabel4 setText:v12];

    devicesLabel5 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    [(HOHomeDevicesHeaderCell *)v3 addSubview:devicesLabel5];

    devicesLabel6 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    bottomAnchor = [devicesLabel6 bottomAnchor];
    bottomAnchor2 = [(HOHomeDevicesHeaderCell *)v3 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-6.0];
    [v4 addObject:v28];

    devicesLabel7 = [(HOHomeDevicesHeaderCell *)v3 devicesLabel];
    leadingAnchor = [devicesLabel7 leadingAnchor];
    leadingAnchor2 = [(HOHomeDevicesHeaderCell *)v3 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
    [v4 addObject:v32];

    [NSLayoutConstraint activateConstraints:v4];
  }

  return v3;
}

@end