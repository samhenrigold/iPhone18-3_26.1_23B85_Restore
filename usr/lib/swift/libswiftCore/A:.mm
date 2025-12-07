@interface A:
- (Swift::Int)B;
- (__objc2_class)B;
- (uint64_t)B;
- (unint64_t)B;
- (void)B;
@end

@implementation A:

- (uint64_t)B
{
  a5(*a2, a2[1], a2[2], a2[3], a2[4]);
  v7 = *(self + 4);
  v8 = *self;
  v9 = self[1];
  *a2 = *self;
  *(a2 + 1) = v9;
  a2[4] = v7;

  return v8;
}

- (void)B
{
  v3 = *self;
  (*(*(*self + 40) + 8))(*(*self + 48), *(*self + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

- (__objc2_class)B
{
  result = Dictionary.init(dictionaryLiteral:)(self, a2[2], a2[3], a2[4]);
  *a3 = result;
  return result;
}

- (unint64_t)B
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> [A : B], a2, &v5);
  *(self + 8) = result;
  return result;
}

- (Swift::Int)B
{
  specialized Hasher.init(_seed:)(self, v3);
  Dictionary.Index.hash(into:)(v3, *v1, *(v1 + 8), *(v1 + 16));
  return Hasher._finalize()();
}

@end