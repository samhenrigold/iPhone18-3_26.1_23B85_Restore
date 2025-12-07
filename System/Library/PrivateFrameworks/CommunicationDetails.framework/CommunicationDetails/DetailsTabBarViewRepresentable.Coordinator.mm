@interface DetailsTabBarViewRepresentable.Coordinator
- (void)selectedTabDidChange:(id)change;
@end

@implementation DetailsTabBarViewRepresentable.Coordinator

- (void)selectedTabDidChange:(id)change
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & *change) + 0x100);
  changeCopy = change;

  v5(v13, v7);
  v8 = v13[0];
  v9 = v13[1];
  v10 = v13[2];
  v11 = v13[3];
  v12 = v13[4];
  (*self->onTabChange)(v13);

  outlined consume of DetailsTab?(v8, v9, v10, v11, v12);
}

@end