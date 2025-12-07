@interface BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator
- (id)nextObject;
@end

@implementation BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator

- (id)nextObject
{
  selfCopy = self;
  BMPoirotSchematizerShim.BMPoirotRepeatedFieldEnumerator.nextObject()(v10);

  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4, v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end