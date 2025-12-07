@interface _UILabelImpl
- (_UILabelImpl)init;
@end

@implementation _UILabelImpl

- (_UILabelImpl)init
{
  *(&self->super.isa + OBJC_IVAR____UILabelImpl_minimumScaleFactor) = 0;
  v3 = type metadata accessor for _UILabelImpl();
  v6.receiver = self;
  v6.super_class = v4;
  return [(_UILabelImpl *)&v6 init];
}

@end