@interface _ProposedSize:
- (void)CGSize;
@end

@implementation _ProposedSize:

- (void)CGSize
{
  if (!lazy cache variable for type metadata for [_ProposedSize : CGSize])
  {
    type metadata accessor for CGSize(255);
    lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [_ProposedSize : CGSize]);
    }
  }
}

@end