@interface PrimitiveTypedValueResultViewModel
- (_TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel)init;
@end

@implementation PrimitiveTypedValueResultViewModel

- (_TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel)init
{
  v3 = sub_26B9AAEE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__isSelected) = 0;
  sub_26B9AAEC4();
  (*(v4 + 32))(self + OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text, v6, v3);
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__isMultilineText) = 0;
  sub_26B9AB274();
  v7 = type metadata accessor for PrimitiveTypedValueResultViewModel(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(PrimitiveTypedValueResultViewModel *)&v9 init];
}

@end