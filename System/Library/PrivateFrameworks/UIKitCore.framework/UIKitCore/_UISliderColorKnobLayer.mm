@interface _UISliderColorKnobLayer
- (_TtC5UIKit23_UISliderColorKnobLayer)initWithCoder:(id)coder;
- (_TtC5UIKit23_UISliderColorKnobLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation _UISliderColorKnobLayer

- (_TtC5UIKit23_UISliderColorKnobLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  v5 = sub_18A4A86A8();
  v6 = type metadata accessor for _UISliderColorKnobLayer();
  v10.receiver = self;
  v10.super_class = v7;
  v8 = [(_UISliderColorKnobLayer *)&v10 initWithLayer:v5, v6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v8;
}

- (_TtC5UIKit23_UISliderColorKnobLayer)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSublayers
{
  type metadata accessor for _UISliderColorKnobLayer();
  v8.receiver = self;
  v8.super_class = v3;
  selfCopy = self;
  [(_UISliderColorKnobLayer *)&v8 layoutSublayers];
  v5 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer);
  [(_UISliderColorKnobLayer *)selfCopy bounds:v8.receiver];
  [v6 setFrame_];
  v7 = *(&selfCopy->super.super.isa + v5);
  [(_UISliderColorKnobLayer *)selfCopy cornerRadius];
  [v7 setCornerRadius_];
}

@end