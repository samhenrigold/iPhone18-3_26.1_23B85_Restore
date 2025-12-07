@interface MOScreenTimeProvider
- (_TtC8momentsd20MOScreenTimeProvider)init;
- (void)fetchHourlyAppUsageWithStartDate:(id)date endDate:(id)endDate completion:(id)completion;
@end

@implementation MOScreenTimeProvider

- (void)fetchHourlyAppUsageWithStartDate:(id)date endDate:(id)endDate completion:(id)completion
{
  endDateCopy = endDate;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v39 - v8;
  v41 = &v39 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v16 = __chkstk_darwin(v14, v15);
  v18 = &v39 - v17;
  v40 = &v39 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v39 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v39 - v24;
  v26 = _Block_copy(completion);
  v44 = v25;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v22;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  v29 = *(v11 + 16);
  v29(v18, v25, v10);
  v30 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29(v30, v22, v10);
  v31 = *(v11 + 80);
  v32 = (v31 + 32) & ~v31;
  v33 = (v12 + v31 + v32) & ~v31;
  v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v36 = *(v11 + 32);
  v36(v35 + v32, v40, v10);
  v36(v35 + v33, v30, v10);
  v37 = (v35 + v34);
  *v37 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v37[1] = v27;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v41, &closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)partial apply, v35);

  v38 = *(v11 + 8);
  v38(v42, v10);
  v38(v44, v10);
}

- (_TtC8momentsd20MOScreenTimeProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOScreenTimeProvider();
  return [(MOScreenTimeProvider *)&v3 init];
}

@end