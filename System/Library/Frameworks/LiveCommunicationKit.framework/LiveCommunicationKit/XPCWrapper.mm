@interface XPCWrapper
- (_TtC20LiveCommunicationKit10XPCWrapper)init;
- (_TtC20LiveCommunicationKit10XPCWrapper)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_238B6C4C4();
  v6 = sub_238B6C844();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC20LiveCommunicationKit10XPCWrapper)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_238B34714();
  coderCopy = coder;
  v7 = sub_238B6CA94();
  if (v7)
  {
    v8 = v7;
    v9 = sub_238B6C4D4();
    v11 = v10;

    v12 = (self + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data);
    *v12 = v9;
    v12[1] = v11;
    v15.receiver = self;
    v15.super_class = ObjectType;
    v13 = [(XPCWrapper *)&v15 init];
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

- (_TtC20LiveCommunicationKit10XPCWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end