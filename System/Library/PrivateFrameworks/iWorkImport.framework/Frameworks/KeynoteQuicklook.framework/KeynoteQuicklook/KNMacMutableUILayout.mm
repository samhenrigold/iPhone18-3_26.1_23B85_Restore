@interface KNMacMutableUILayout
- (void)setInspectorPaneHiddenState:(int64_t)state;
- (void)setShowingActivityStream:(BOOL)stream;
@end

@implementation KNMacMutableUILayout

- (void)setShowingActivityStream:(BOOL)stream
{
  self->super._showingActivityStream = stream;
  if (!self->super._showingLightTable)
  {
    if ([(KNMacUILayout *)self sidebarViewMode]== 1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (self->super._showingTemplateSlides || !self->super._showingNavigatorViewInSidebar)
  {
LABEL_6:
    if ([(KNMacUILayout *)self currentViewModeSupportsActivityStream])
    {
      self->super._activityStreamWasShown = stream;
    }
  }
}

- (void)setInspectorPaneHiddenState:(int64_t)state
{
  if (state <= 2)
  {
    self->super._showingInspectorPane = 0x10001u >> (8 * state);
    self->super._inspectorPaneAutoHidden = 0x10000u >> (8 * state);
  }
}

@end