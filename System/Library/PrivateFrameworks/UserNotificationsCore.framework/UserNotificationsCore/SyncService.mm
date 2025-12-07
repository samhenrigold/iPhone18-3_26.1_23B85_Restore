@interface SyncService
- (void)dealloc;
@end

@implementation SyncService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCore11SyncService_queue_flushTimer))
  {
    swift_getObjectType();
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1DA941054();
    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(SyncService *)&v6 dealloc];
}

@end