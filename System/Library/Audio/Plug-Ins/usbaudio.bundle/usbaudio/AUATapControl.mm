@interface AUATapControl
- (BOOL)changeValue:(BOOL)value;
- (_TtC9AUASDCore13AUATapControl)initWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
@end

@implementation AUATapControl

- (BOOL)changeValue:(BOOL)value
{
  selfCopy = self;
  sub_1000B9984(value);

  return 1;
}

- (_TtC9AUASDCore13AUATapControl)initWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end