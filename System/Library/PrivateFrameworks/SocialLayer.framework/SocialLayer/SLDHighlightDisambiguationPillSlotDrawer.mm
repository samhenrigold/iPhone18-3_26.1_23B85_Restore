@interface SLDHighlightDisambiguationPillSlotDrawer
- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
@end

@implementation SLDHighlightDisambiguationPillSlotDrawer

- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  remoteCopy = remote;
  tagCopy = tag;
  styleCopy = style;
  v9 = [[SLDHighlightDisambiguationPillDrawing alloc] initWithStyle:styleCopy tag:tagCopy forRemote:remoteCopy];

  return v9;
}

@end