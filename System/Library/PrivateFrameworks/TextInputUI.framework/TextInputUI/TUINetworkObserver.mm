@interface TUINetworkObserver
- (_TtP11TextInputUI26TUINetworkObserverDelegate_)delegate;
- (void)isNetworkAvailableWithCompletion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation TUINetworkObserver

- (_TtP11TextInputUI26TUINetworkObserverDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(&self->super.isa + OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)isNetworkAvailableWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 2) = v4;
  selfCopy = self;
  sub_18FFEC3EC(sub_18FFEE81C, v5);

  v5, v7, v8, v9, v10, v11, v12, v13;
}

@end