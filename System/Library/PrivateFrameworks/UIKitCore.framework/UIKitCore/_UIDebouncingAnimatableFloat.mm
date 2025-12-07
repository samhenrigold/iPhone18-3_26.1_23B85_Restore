@interface _UIDebouncingAnimatableFloat
- (_TtC5UIKit28_UIDebouncingAnimatableFloat)init;
- (_TtC5UIKit28_UIDebouncingAnimatableFloat)initWithView:(id)view;
- (double)value;
- (void)setValue:(double)value;
@end

@implementation _UIDebouncingAnimatableFloat

- (double)value
{
  v3 = type metadata accessor for _UIDebouncingAnimatableFloat();
  v6.receiver = self;
  v6.super_class = v4;
  [(UIViewFloatAnimatableProperty *)&v6 value];
  return result;
}

- (void)setValue:(double)value
{
  selfCopy = self;
  [(_UIDebouncingAnimatableFloat *)selfCopy value];
  if (v4 == value && [objc_opt_self() areAnimationsEnabled])
  {
  }

  else
  {
    type metadata accessor for _UIDebouncingAnimatableFloat();
    v7.receiver = selfCopy;
    v7.super_class = v5;
    [(UIViewFloatAnimatableProperty *)&v7 setValue:value];
  }
}

- (_TtC5UIKit28_UIDebouncingAnimatableFloat)initWithView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5UIKit28_UIDebouncingAnimatableFloat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end