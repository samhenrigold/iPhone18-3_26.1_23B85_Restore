@interface ExternalProvider
+ (id)deserializeFromPersistence:(id)persistence;
- (id)serialize;
@end

@implementation ExternalProvider

+ (id)deserializeFromPersistence:(id)persistence
{
  persistenceCopy = persistence;
  static ExternalProvider.deserialize(from:)(persistenceCopy, v11);

  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1Tm_3(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5, v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1Tm_23(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serialize
{

  v2 = ExternalProvider.serialize()();

  return v2;
}

@end