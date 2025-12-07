@interface HealthAppOrchestrationClient
- (void)dealloc;
@end

@implementation HealthAppOrchestrationClient

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakAssign();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17HealthAppServices28HealthAppOrchestrationClient_connection);
  selfCopy = self;
  [v4 invalidate];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(HealthAppOrchestrationClient *)&v6 dealloc];
}

@end