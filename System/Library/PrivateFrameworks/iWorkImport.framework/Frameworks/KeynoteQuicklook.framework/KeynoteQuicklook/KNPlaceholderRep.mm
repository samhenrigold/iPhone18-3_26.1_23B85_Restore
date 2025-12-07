@interface KNPlaceholderRep
+ (id)mixableObjectClasses;
- (id)textureForDescription:(id)description;
@end

@implementation KNPlaceholderRep

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  layout = [(TSDRep *)self layout];
  info = [layout info];
  textStorage = [info textStorage];

  v8 = [descriptionCopy copy];
  [v8 setShouldNotAddShapeAttributes:1];
  if (![textStorage length])
  {
    layout2 = [(TSDRep *)self layout];
    info2 = [layout2 info];
    if ([info2 displaysInstructionalText])
    {
      canvas = [(TSDRep *)self canvas];
      layout3 = [(TSDRep *)self layout];
      v13 = [canvas shouldShowInstructionalTextForLayout:layout3];

      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    [v8 setShouldNotAddText:1];
  }

LABEL_7:
  v16.receiver = self;
  v16.super_class = KNPlaceholderRep;
  v14 = [(TSWPShapeRep *)&v16 textureForDescription:v8];

  return v14;
}

+ (id)mixableObjectClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end