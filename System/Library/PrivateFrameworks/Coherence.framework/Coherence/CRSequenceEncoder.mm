@interface CRSequenceEncoder
- (BOOL)setStorage:(id)storage error:(id *)error;
@end

@implementation CRSequenceEncoder

- (BOOL)setStorage:(id)storage error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AE23D83C();
  swift_unknownObjectRelease();
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC9Coherence17CRSequenceEncoder_getElements);

  v7 = v6(v10);

  __swift_destroy_boxed_opaque_existential_1(v10);
  v8 = selfCopy + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_sequence;
  swift_beginAccess();
  *(v8 + 2) = v7;

  return 1;
}

@end