@interface UserDefaultsObserver
- (_TtC20SmartStackFoundation20UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation UserDefaultsObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_26A06220C();
    selfCopy2 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  (*(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_changeHandler))(selfCopy2);
  sub_26A05F3B4(v9);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20SmartStackFoundation20UserDefaultsObserver_defaults);
  selfCopy = self;
  v6 = v4;

  v7 = sub_26A061EFC();

  [v6 removeObserver:selfCopy forKeyPath:v7];

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(UserDefaultsObserver *)&v8 dealloc];
}

- (_TtC20SmartStackFoundation20UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end