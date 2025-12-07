@interface SUISNavigationController
- (SUISSheetInteractionControllerDelegate)sheetInteractionDelegate;
- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset;
- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible;
- (void)_sheetInteractionDraggingDidEnd;
@end

@implementation SUISNavigationController

- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset
{
  v7 = [SHSheetDraggingEvent eventForDraggingDidBeginWithRubberBandCoefficient:dismissible dismissible:coefficient interruptedOffset:offset.x, offset.y];
  sheetInteractionDelegate = [(SUISNavigationController *)self sheetInteractionDelegate];
  [sheetInteractionDelegate sheetInteractionController:self didReceiveDraggingEvent:v7];
}

- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible
{
  v8 = [SHSheetDraggingEvent eventForDraggingDidChangeWithTranslation:change velocity:dismissible animateChange:translation.x dismissible:translation.y, velocity.x, velocity.y];
  sheetInteractionDelegate = [(SUISNavigationController *)self sheetInteractionDelegate];
  [sheetInteractionDelegate sheetInteractionController:self didReceiveDraggingEvent:v8];
}

- (void)_sheetInteractionDraggingDidEnd
{
  v4 = +[SHSheetDraggingEvent eventForDraggingDidEnd];
  sheetInteractionDelegate = [(SUISNavigationController *)self sheetInteractionDelegate];
  [sheetInteractionDelegate sheetInteractionController:self didReceiveDraggingEvent:v4];
}

- (SUISSheetInteractionControllerDelegate)sheetInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sheetInteractionDelegate);

  return WeakRetained;
}

@end