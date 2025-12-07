@interface AudioFocusPresenter
- (void)handleMediaSelectionDidChangeWithItem:(id)item;
@end

@implementation AudioFocusPresenter

- (void)handleMediaSelectionDidChangeWithItem:(id)item
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI19AudioFocusPresenter_state);
  itemCopy = item;

  os_unfair_lock_lock((v3 + 48));
  sub_20C0ECAE0((v3 + 16));
  os_unfair_lock_unlock((v3 + 48));
}

@end