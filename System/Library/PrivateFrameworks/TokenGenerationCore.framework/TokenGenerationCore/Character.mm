@interface Character
- (void):(uint64_t)self;
@end

@implementation Character

- (void):(uint64_t)self
{
  if (!lazy cache variable for type metadata for [Character : [Int]])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Character : [Int]]);
    }
  }
}

@end