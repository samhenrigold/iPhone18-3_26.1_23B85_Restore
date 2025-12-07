@interface TNUICoordinator
- (void)dismissButtonTapped:(id)tapped;
@end

@implementation TNUICoordinator

- (void)dismissButtonTapped:(id)tapped
{
  v4 = type metadata accessor for TNCLogger.Category();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D714A0], v4);
  swift_unknownObjectRetain();

  static TNCLogger.logFunctionCall(category:functionName:)();
  (*(v5 + 8))(v7, v4);
  v9 = 4;
  TNUICoordinator.handle(action:from:)(&v9, tapped);

  swift_unknownObjectRelease();
}

@end