@interface KNObjectPlaceholderInfo
- (KNObjectPlaceholderInfo)initWithKNPlaceholderInfo:(id)info;
- (id)instructionalText;
- (id)typeName;
@end

@implementation KNObjectPlaceholderInfo

- (KNObjectPlaceholderInfo)initWithKNPlaceholderInfo:(id)info
{
  infoCopy = info;
  textStorage = [infoCopy textStorage];
  context = [infoCopy context];
  v7 = [textStorage copyWithContext:context];

  context2 = [infoCopy context];
  geometry = [infoCopy geometry];
  shapeStyle = [infoCopy shapeStyle];
  pathSource = [infoCopy pathSource];
  v17.receiver = self;
  v17.super_class = KNObjectPlaceholderInfo;
  v12 = [(KNObjectPlaceholderInfo *)&v17 initWithContext:context2 geometry:geometry style:shapeStyle pathSource:pathSource wpStorage:v7];

  if (v12)
  {
    -[KNObjectPlaceholderInfo setLocked:](v12, "setLocked:", [infoCopy isLocked]);
    hyperlinkURL = [infoCopy hyperlinkURL];
    [(KNObjectPlaceholderInfo *)v12 setHyperlinkURL:hyperlinkURL];

    comment = [infoCopy comment];
    [(KNObjectPlaceholderInfo *)v12 setComment:comment];

    accessibilityDescription = [infoCopy accessibilityDescription];
    [(KNObjectPlaceholderInfo *)v12 setAccessibilityDescription:accessibilityDescription];

    -[KNObjectPlaceholderInfo setAspectRatioLocked:](v12, "setAspectRatioLocked:", [infoCopy aspectRatioLocked]);
  }

  return v12;
}

- (id)instructionalText
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Object Placeholder" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (id)typeName
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Object" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

@end