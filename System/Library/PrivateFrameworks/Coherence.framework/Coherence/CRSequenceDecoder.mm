@interface CRSequenceDecoder
- (id)storageWithError:(id *)error;
@end

@implementation CRSequenceDecoder

- (id)storageWithError:(id *)error
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC9Coherence17CRSequenceDecoder_getStorage);
  selfCopy = self;

  v3(v8, v5);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1AE23DFFC();
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

@end