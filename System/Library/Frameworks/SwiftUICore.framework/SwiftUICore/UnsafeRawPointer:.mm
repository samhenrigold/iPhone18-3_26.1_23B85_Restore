@interface UnsafeRawPointer:
- (void)String;
@end

@implementation UnsafeRawPointer:

- (void)String
{
  if (!lazy cache variable for type metadata for ThreadSpecific<[UnsafeRawPointer : String]>)
  {
    type metadata accessor for [UnsafeRawPointer : String]();
    v5 = type metadata accessor for ThreadSpecific(self, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ThreadSpecific<[UnsafeRawPointer : String]>);
    }
  }
}

@end