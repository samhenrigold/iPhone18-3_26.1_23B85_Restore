@interface SLDCollaborationFooterSlotDrawer
- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
@end

@implementation SLDCollaborationFooterSlotDrawer

- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  remoteCopy = remote;
  tagCopy = tag;
  styleCopy = style;
  v9 = [[SLDCollaborationFooterDrawing alloc] initWithStyle:styleCopy tag:tagCopy forRemote:remoteCopy];

  return v9;
}

@end