@interface WOCoreWorkoutConfigurationOccurrenceStore
- (WOCoreWorkoutConfigurationOccurrenceStore)init;
- (id)goalConfigurationFor:(id)for goal:(id)goal;
- (void)dealloc;
@end

@implementation WOCoreWorkoutConfigurationOccurrenceStore

- (void)dealloc
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  if (v4 != -1)
  {
    notify_cancel(v4);
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStore(0);
  [(WOCoreWorkoutConfigurationOccurrenceStore *)&v6 dealloc];
}

- (id)goalConfigurationFor:(id)for goal:(id)goal
{
  forCopy = for;
  goalCopy = goal;
  selfCopy = self;
  WorkoutConfigurationOccurrenceStore.goalConfiguration(for:goal:)(forCopy, goal);
  v10 = v9;

  return v10;
}

- (WOCoreWorkoutConfigurationOccurrenceStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end