@interface AttributedString.AnyAttribute:
- (void)AttributedString.Keys;
@end

@implementation AttributedString.AnyAttribute:

- (void)AttributedString.Keys
{
  if (!*self)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, self);
  }
}

@end