@interface BlastDoorMorphology
- (BlastDoorMorphology)init;
- (NSString)description;
- (int64_t)partOfSpeech;
@end

@implementation BlastDoorMorphology

- (NSString)description
{

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (int64_t)partOfSpeech
{
  result = sub_214592640(*(&self->super.isa + OBJC_IVAR___BlastDoorMorphology_morphology + 1));
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (BlastDoorMorphology)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end