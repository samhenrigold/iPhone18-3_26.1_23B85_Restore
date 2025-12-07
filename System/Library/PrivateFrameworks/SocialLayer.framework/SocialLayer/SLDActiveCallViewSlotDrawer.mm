@interface SLDActiveCallViewSlotDrawer
- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
@end

@implementation SLDActiveCallViewSlotDrawer

- (id)drawingWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  remoteCopy = remote;
  tagCopy = tag;
  styleCopy = style;
  v9 = [[SLDActiveCallViewDrawing alloc] initWithStyle:styleCopy tag:tagCopy forRemote:remoteCopy];

  return v9;
}

@end