@interface DeallocaterBlock
- (_TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock)init;
- (void)dealloc;
@end

@implementation DeallocaterBlock

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block);
  selfCopy = self;

  v2(v4);

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for DeallocaterBlock();
  [(DeallocaterBlock *)&v5 dealloc];
}

- (_TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end