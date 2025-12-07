@interface UIColor(PencilPairingUI)
+ (id)batteryBodyColor;
+ (id)batteryTextColorLowPower:()PencilPairingUI;
+ (id)fingerDrawingInkColor;
+ (id)platterContainerColor;
+ (id)platterStrokeColor;
+ (id)scratchpadBackgroundColor;
+ (id)toastLabelTextColor;
+ (id)tuckViewColorTransparencyEnabled:()PencilPairingUI;
@end

@implementation UIColor(PencilPairingUI)

+ (id)scratchpadBackgroundColor
{
  v1 = MEMORY[0x277D75348];
  v2 = PencilPairingUIBundle(self);
  v3 = [v1 colorNamed:@"scratchpad_background_color" inBundle:v2 compatibleWithTraitCollection:0];

  return v3;
}

+ (id)toastLabelTextColor
{
  v1 = MEMORY[0x277D75348];
  v2 = PencilPairingUIBundle(self);
  v3 = [v1 colorNamed:@"toast_label_color" inBundle:v2 compatibleWithTraitCollection:0];

  return v3;
}

+ (id)tuckViewColorTransparencyEnabled:()PencilPairingUI
{
  if (a3)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v3 = ;

  return v3;
}

+ (id)platterContainerColor
{
  v1 = MEMORY[0x277D75348];
  v2 = PencilPairingUIBundle(self);
  v3 = [v1 colorNamed:@"platter_background_color" inBundle:v2 compatibleWithTraitCollection:0];

  return v3;
}

+ (id)platterStrokeColor
{
  v1 = MEMORY[0x277D75348];
  v2 = PencilPairingUIBundle(self);
  v3 = [v1 colorNamed:@"platter_stroke_color" inBundle:v2 compatibleWithTraitCollection:0];

  return v3;
}

+ (id)batteryTextColorLowPower:()PencilPairingUI
{
  if (a3)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v3 = ;

  return v3;
}

+ (id)fingerDrawingInkColor
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  v1 = [blackColor colorWithAlphaComponent:0.1];

  return v1;
}

+ (id)batteryBodyColor
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  v1 = [labelColor colorWithAlphaComponent:0.4];

  return v1;
}

@end