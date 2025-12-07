@interface MNMapMatcher
+ (id)mapMatcherFor:(id)for;
- (MNMapMatcher)init;
- (void)matchWithLocation:(MNLocation *)location completionHandler:(id)handler;
@end

@implementation MNMapMatcher

+ (id)mapMatcherFor:(id)for
{
  forCopy = for;
  v4 = _s10Navigation10MapMatcherC03mapC03forACSgSo16GEOComposedRouteC_tFZ_0(forCopy);

  return v4;
}

- (void)matchWithLocation:(MNLocation *)location completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = location;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1D3277280();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D328CDF0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D328BB08;
  v14[5] = v13;
  locationCopy = location;
  selfCopy = self;
  sub_1D3183A70(0, 0, v9, &unk_1D328BB10, v14);
}

- (MNMapMatcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end