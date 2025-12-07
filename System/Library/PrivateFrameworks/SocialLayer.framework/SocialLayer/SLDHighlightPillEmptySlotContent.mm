@interface SLDHighlightPillEmptySlotContent
- (SLDHighlightPillEmptySlotContent)initWithStyle:(id)style variant:(unint64_t)variant maxWidth:(double)width forRemote:(BOOL)remote;
@end

@implementation SLDHighlightPillEmptySlotContent

- (SLDHighlightPillEmptySlotContent)initWithStyle:(id)style variant:(unint64_t)variant maxWidth:(double)width forRemote:(BOOL)remote
{
  remoteCopy = remote;
  styleCopy = style;
  v17.receiver = self;
  v17.super_class = SLDHighlightPillEmptySlotContent;
  v11 = [(SLDEmptySlotContent *)&v17 initWithStyle:styleCopy forRemote:remoteCopy];
  v12 = v11;
  if (v11)
  {
    style = [(SLDEmptySlotContent *)v11 style];

    if (style)
    {
      [SLHighlightPillMetrics pillHeightWithStyle:styleCopy variant:variant maxWidth:width];
      v15 = v14;
      [(SLDHighlightPillEmptySlotContent *)v12 setVariant:variant];
      [(SLDHighlightPillEmptySlotContent *)v12 setMaxWidth:width];
      [(SLDEmptySlotContent *)v12 setContentSize:0.0, v15];
    }
  }

  return v12;
}

@end