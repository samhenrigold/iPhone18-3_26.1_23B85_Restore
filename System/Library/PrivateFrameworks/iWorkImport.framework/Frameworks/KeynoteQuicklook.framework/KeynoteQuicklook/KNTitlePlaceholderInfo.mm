@interface KNTitlePlaceholderInfo
+ (id)mixableObjectClasses;
- (KNTitlePlaceholderInfo)initWithKNPlaceholderInfo:(id)info;
- (id)copyToInstantiateTemplatePlaceholder;
- (id)defaultBuildChunkTitle;
- (id)typeName;
- (void)acceptVisitor:(id)visitor;
@end

@implementation KNTitlePlaceholderInfo

+ (id)mixableObjectClasses
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (KNTitlePlaceholderInfo)initWithKNPlaceholderInfo:(id)info
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
  v17.super_class = KNTitlePlaceholderInfo;
  v12 = [(KNTitlePlaceholderInfo *)&v17 initWithContext:context2 geometry:geometry style:shapeStyle pathSource:pathSource wpStorage:v7];

  if (v12)
  {
    -[KNTitlePlaceholderInfo setLocked:](v12, "setLocked:", [infoCopy isLocked]);
    hyperlinkURL = [infoCopy hyperlinkURL];
    [(KNTitlePlaceholderInfo *)v12 setHyperlinkURL:hyperlinkURL];

    comment = [infoCopy comment];
    [(KNTitlePlaceholderInfo *)v12 setComment:comment];

    accessibilityDescription = [infoCopy accessibilityDescription];
    [(KNTitlePlaceholderInfo *)v12 setAccessibilityDescription:accessibilityDescription];

    -[KNTitlePlaceholderInfo setAspectRatioLocked:](v12, "setAspectRatioLocked:", [infoCopy aspectRatioLocked]);
  }

  return v12;
}

- (id)copyToInstantiateTemplatePlaceholder
{
  v8.receiver = self;
  v8.super_class = KNTitlePlaceholderInfo;
  copyToInstantiateTemplatePlaceholder = [(KNTitlePlaceholderInfo *)&v8 copyToInstantiateTemplatePlaceholder];
  textStorage = [copyToInstantiateTemplatePlaceholder textStorage];
  textStorage2 = [copyToInstantiateTemplatePlaceholder textStorage];
  range = [textStorage2 range];
  [textStorage replaceCharactersInRange:range withString:v6 undoTransaction:{&stru_2884D8E20, 0}];

  return copyToInstantiateTemplatePlaceholder;
}

- (id)typeName
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Title" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (id)defaultBuildChunkTitle
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Title" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (void)acceptVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = TSUProtocolCast();
  v6 = v5;
  if (v5)
  {
    [v5 visitKNTitlePlaceholderInfo:{self, &unk_2885462B0}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = KNTitlePlaceholderInfo;
    [(KNTitlePlaceholderInfo *)&v7 acceptVisitor:visitorCopy, &unk_2885462B0];
  }
}

@end