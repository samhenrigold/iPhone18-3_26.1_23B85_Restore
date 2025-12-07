@interface KNSlideNumberPlaceholderInfo
- (id)copyToInstantiateTemplatePlaceholder;
- (id)instructionalText;
- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter;
- (id)typeName;
- (void)acceptVisitor:(id)visitor;
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation KNSlideNumberPlaceholderInfo

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v13.receiver = self;
  v13.super_class = KNSlideNumberPlaceholderInfo;
  [(KNPlaceholderInfo *)&v13 loadFromUnarchiver:unarchiverCopy];
  if ([unarchiverCopy hasPreUFFVersion])
  {
    preUFFVersion = [unarchiverCopy preUFFVersion];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_275D7C728;
    v12[3] = &unk_27A698480;
    v12[4] = self;
    v12[5] = preUFFVersion;
    [unarchiverCopy addFinalizeHandler:v12];
  }

  else
  {
    geometry = [(KNSlideNumberPlaceholderInfo *)self geometry];
    heightValid = [geometry heightValid];

    if (heightValid)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_275D7C8CC;
      v11[3] = &unk_27A698390;
      v11[4] = self;
      [unarchiverCopy addFinalizeHandler:v11];
    }
  }

  pathSource = [(KNSlideNumberPlaceholderInfo *)self pathSource];
  isRectangular = [pathSource isRectangular];

  if ((isRectangular & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_275D7C97C;
    v10[3] = &unk_27A698390;
    v10[4] = self;
    [unarchiverCopy addFinalizeHandler:v10];
  }
}

- (id)instructionalText
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"01" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (id)copyToInstantiateTemplatePlaceholder
{
  v8.receiver = self;
  v8.super_class = KNSlideNumberPlaceholderInfo;
  copyToInstantiateTemplatePlaceholder = [(KNSlideNumberPlaceholderInfo *)&v8 copyToInstantiateTemplatePlaceholder];
  v3 = [KNSlideNumberAttachment alloc];
  context = [copyToInstantiateTemplatePlaceholder context];
  v5 = [(TSWPNumberAttachment *)v3 initWithContext:context];

  textStorage = [copyToInstantiateTemplatePlaceholder textStorage];
  [textStorage insertAttachmentOrFootnote:v5 range:{0, 0}];

  return copyToInstantiateTemplatePlaceholder;
}

- (id)textureDeliveryStylesLocalized:(BOOL)localized animationFilter:(id)filter
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (localized)
  {
    v4 = sub_275DC204C(self);
    v5 = [v4 localizedStringForKey:@"All at Once" value:&stru_2884D8E20 table:@"Keynote"];
    v8 = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  }

  else
  {
    v9[0] = *MEMORY[0x277D80118];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  return v6;
}

- (id)typeName
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Slide Number" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (void)acceptVisitor:(id)visitor
{
  visitorCopy = visitor;
  v5 = TSUProtocolCast();
  v6 = v5;
  if (v5)
  {
    [v5 visitKNSlideNumberPlaceholderInfo:{self, &unk_2885462B0}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = KNSlideNumberPlaceholderInfo;
    [(KNSlideNumberPlaceholderInfo *)&v7 acceptVisitor:visitorCopy, &unk_2885462B0];
  }
}

@end