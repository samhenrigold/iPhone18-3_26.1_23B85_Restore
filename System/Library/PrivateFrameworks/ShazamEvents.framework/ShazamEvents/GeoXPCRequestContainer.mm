@interface GeoXPCRequestContainer
- (_TtC12ShazamEvents22GeoXPCRequestContainer)init;
- (_TtC12ShazamEvents22GeoXPCRequestContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GeoXPCRequestContainer

- (_TtC12ShazamEvents22GeoXPCRequestContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1E10909F4(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s12ShazamEvents22GeoXPCRequestContainerC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC12ShazamEvents22GeoXPCRequestContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end