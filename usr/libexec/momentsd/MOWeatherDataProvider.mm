@interface MOWeatherDataProvider
- (_TtC8momentsd21MOWeatherDataProvider)init;
- (void)fetchCurrentWeatherFor:(id)for completion:(id)completion;
- (void)fetchHourlyWeatherFor:(id)for startDate:(id)date endDate:(id)endDate completion:(id)completion;
@end

@implementation MOWeatherDataProvider

- (void)fetchCurrentWeatherFor:(id)for completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = for;
  v13[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned MOWeatherData?, @unowned NSError?) -> ();
  v13[6] = v11;
  forCopy = for;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in MOWeatherDataProvider.fetchCurrentWeather(for:completion:)partial apply, v13);
}

- (void)fetchHourlyWeatherFor:(id)for startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  endDateCopy = endDate;
  forCopy = for;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v40 - v9;
  v44 = &v40 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15, v16);
  v19 = &v40 - v18;
  v41 = &v40 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v40 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v40 - v25;
  v27 = _Block_copy(completion);
  v46 = v26;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  v30 = *(v12 + 16);
  v30(v19, v26, v11);
  v30(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v11);
  v31 = *(v12 + 80);
  v32 = (v31 + 40) & ~v31;
  v33 = (v13 + v31 + v32) & ~v31;
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v35 = forCopy;
  *(v34 + 4) = forCopy;
  v36 = *(v12 + 32);
  v36(&v34[v32], v41, v11);
  v36(&v34[v33], v42, v11);
  v37 = &v34[(v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v37 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v37[1] = v28;
  v38 = v35;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v44, &closure #1 in MOWeatherDataProvider.fetchHourlyWeather(for:startDate:endDate:completion:)partial apply, v34);

  v39 = *(v12 + 8);
  v39(v45, v11);
  v39(v46, v11);
}

- (_TtC8momentsd21MOWeatherDataProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOWeatherDataProvider();
  return [(MOWeatherDataProvider *)&v3 init];
}

@end