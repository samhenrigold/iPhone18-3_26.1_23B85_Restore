@interface CAMChromeViewSpec
+ (CGRect)topBarFrameForViewSize:(CGSize)size;
+ (CGRect)viewportWithAspectRatio:(double)ratio viewSize:(CGSize)size smartStyleControlsExpanded:(BOOL)expanded;
+ (UIColor)glassDarkBackgroundFillColor;
+ (double)regularFontSizeForContentSize:(id)size;
+ (double)smallPreviewOverlayButtonSizeForContentSize:(id)size;
+ (double)topBarItemCornerRadiusForContentSize:(id)size;
+ (void)contentFrameForViewSize:(double)size;
+ (void)shutterButtonCenterBottomInsetForViewSize:(double)size;
- (CAMChromeViewSpec)init;
@end

@implementation CAMChromeViewSpec

+ (UIColor)glassDarkBackgroundFillColor
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.4];

  return v2;
}

+ (double)smallPreviewOverlayButtonSizeForContentSize:(id)size
{
  sizeCopy = size;
  sub_1A3912958(sizeCopy);
  v5 = v4;

  return v5;
}

+ (double)regularFontSizeForContentSize:(id)size
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150, &qword_1A3A72C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1A3A30090();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sizeCopy = size;
  sub_1A3A300A0();
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E697F680], v7);
    if (v12(v6, 1, v7) != 1)
    {
      sub_1A3913464(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_1A391163C(v10);
  v14 = v13;

  (*(v8 + 8))(v10, v7);
  return v14;
}

+ (CGRect)viewportWithAspectRatio:(double)ratio viewSize:(CGSize)size smartStyleControlsExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  height = size.height;
  width = size.width;
  swift_getObjCClassMetadata();
  v9 = sub_1A3913588(ratio, width, height);
  v11 = v10;
  v12.n128_f64[0] = ratio;
  sub_1A3910F50(expandedCopy, v12, width, height, v13);
  v15 = height - v11 - v14;
  v16 = 0.0;
  v17 = v9;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

+ (CGRect)topBarFrameForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  swift_getObjCClassMetadata();
  sub_1A391049C(width, height);
  v6 = v5;
  v7 = 36.0;
  v8 = 0.0;
  v9 = width;
  result.size.height = v7;
  result.size.width = v9;
  result.origin.y = v6;
  result.origin.x = v8;
  return result;
}

+ (double)topBarItemCornerRadiusForContentSize:(id)size
{
  sizeCopy = size;
  sub_1A39130F0(sizeCopy);
  v5 = v4;

  return v5;
}

- (CAMChromeViewSpec)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CAMChromeViewSpec *)&v3 init];
}

+ (void)shutterButtonCenterBottomInsetForViewSize:(double)size
{
  if (size == 0.0 || a4 == 0.0)
  {
LABEL_6:
    sub_1A3911D18(self, a2);
LABEL_7:
    sub_1A3911E3C(self);
    return;
  }

  capabilities = [objc_opt_self() capabilities];
  if (capabilities)
  {
    v7 = capabilities;
    isiPad = [capabilities isiPad];

    if ((isiPad & 1) != 0 || fabs(size / a4 + -0.5625) < 0.01)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  __break(1u);
}

+ (void)contentFrameForViewSize:(double)size
{
  if (size == 0.0 || a4 == 0.0)
  {
    goto LABEL_6;
  }

  capabilities = [objc_opt_self() capabilities];
  if (!capabilities)
  {
    __break(1u);
    return;
  }

  v7 = capabilities;
  isiPad = [capabilities isiPad];

  if ((isiPad & 1) == 0 && fabs(size / a4 + -0.5625) >= 0.01)
  {
LABEL_6:
    sub_1A3911D18(self, a2);
    fmax(sub_1A3911D18(v9, v10) + -8.0, 6.0);
  }

  UIEdgeInsetsInsetRect(0.0, 0.0, size, a4, 0.0, 0.0);
}

@end