@interface DigitalPresentmentResponse
- (_TtC7CoreIDV26DigitalPresentmentResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DigitalPresentmentResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_21CD836E4();
  v6 = sub_21CD83B04();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC7CoreIDV26DigitalPresentmentResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end