@interface SLDCollaborationAttributionViewEmptySlotContent
- (SLDCollaborationAttributionViewEmptySlotContent)initWithStyle:(id)style variant:(int64_t)variant maxWidth:(double)width placeholderGlyphConfig:(id)config forRemote:(BOOL)remote;
@end

@implementation SLDCollaborationAttributionViewEmptySlotContent

- (SLDCollaborationAttributionViewEmptySlotContent)initWithStyle:(id)style variant:(int64_t)variant maxWidth:(double)width placeholderGlyphConfig:(id)config forRemote:(BOOL)remote
{
  remoteCopy = remote;
  styleCopy = style;
  configCopy = config;
  v19.receiver = self;
  v19.super_class = SLDCollaborationAttributionViewEmptySlotContent;
  v14 = [(SLDEmptySlotContent *)&v19 initWithStyle:styleCopy forRemote:remoteCopy];
  v15 = v14;
  if (v14)
  {
    style = [(SLDEmptySlotContent *)v14 style];

    if (style)
    {
      v17 = [[SLCollaborationAttributionViewMetricsProvider alloc] initWithVariant:variant slotStyle:styleCopy maxWidth:configCopy placeholderGlyphConfig:width];
      [(SLCollaborationAttributionViewMetricsProvider *)v17 drawingSize];
      [(SLDEmptySlotContent *)v15 setContentSize:?];
    }
  }

  return v15;
}

@end