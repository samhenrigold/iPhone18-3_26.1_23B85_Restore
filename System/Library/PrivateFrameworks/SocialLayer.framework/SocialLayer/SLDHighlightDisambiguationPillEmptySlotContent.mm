@interface SLDHighlightDisambiguationPillEmptySlotContent
- (SLDHighlightDisambiguationPillEmptySlotContent)initWithStyle:(id)style variant:(unint64_t)variant forRemote:(BOOL)remote;
@end

@implementation SLDHighlightDisambiguationPillEmptySlotContent

- (SLDHighlightDisambiguationPillEmptySlotContent)initWithStyle:(id)style variant:(unint64_t)variant forRemote:(BOOL)remote
{
  v14.receiver = self;
  v14.super_class = SLDHighlightDisambiguationPillEmptySlotContent;
  v6 = [(SLDEmptySlotContent *)&v14 initWithStyle:style forRemote:remote];
  v7 = v6;
  if (v6)
  {
    style = [(SLDEmptySlotContent *)v6 style];

    if (style)
    {
      v9 = [SLHighlightDisambiguationPillMetrics alloc];
      style2 = [(SLDEmptySlotContent *)v7 style];
      v11 = [(SLHighlightDisambiguationPillMetrics *)v9 initWithSlotStyle:style2 tag:0 variant:variant];

      [(SLHighlightDisambiguationPillMetrics *)v11 pillHeight];
      [(SLDEmptySlotContent *)v7 setContentSize:0.0, v12];
    }
  }

  return v7;
}

@end