@interface AUAEntityBooleanControl
- (BOOL)changeValue:(BOOL)value;
- (_TtC9AUASDCore23AUAEntityBooleanControl)initWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
@end

@implementation AUAEntityBooleanControl

- (BOOL)changeValue:(BOOL)value
{
  valueCopy = value;
  selfCopy = self;
  LOBYTE(valueCopy) = sub_10007A560(valueCopy);

  return valueCopy & 1;
}

- (_TtC9AUASDCore23AUAEntityBooleanControl)initWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end