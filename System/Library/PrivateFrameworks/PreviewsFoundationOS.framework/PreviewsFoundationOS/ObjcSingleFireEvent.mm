@interface ObjcSingleFireEvent
- (BOOL)hasFired;
- (_TtC20PreviewsFoundationOS19ObjcSingleFireEvent)init;
- (void)addObserver:(id)observer;
- (void)cancel;
- (void)fire;
@end

@implementation ObjcSingleFireEvent

- (void)fire
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event);
  selfCopy = self;
  sub_25F2FBD3C(v2);
}

- (void)cancel
{
  selfCopy = self;
  SingleFireEvent.cancel()();
}

- (void)addObserver:(id)observer
{
  v4 = _Block_copy(observer);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event);
  _Block_copy(v4);
  selfCopy = self;
  sub_25F2FBB88(v5, v4, v10);
  v7 = v10[0];
  if (v10[0])
  {
    v9 = v10[1];
    v8 = v10[2];
    sub_25F2FC288(v10);
    _Block_release(v4);
    sub_25F1DF100(v7, v9, v8);
  }

  else
  {
    _Block_release(v4);
  }
}

- (BOOL)hasFired
{
  v2 = (*(&self->super.isa + OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event))[2];
  selfCopy = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_25F2C403C(v4, v5);
  os_unfair_lock_unlock((v2 + 32));
  sub_25F2C4080(v4, v5);

  return v4 == 0;
}

- (_TtC20PreviewsFoundationOS19ObjcSingleFireEvent)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event;
  type metadata accessor for SingleFireEvent();
  v5 = swift_allocObject();
  SingleFireEvent.init(description:)(0, 0);
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ObjcSingleFireEvent *)&v7 init];
}

@end