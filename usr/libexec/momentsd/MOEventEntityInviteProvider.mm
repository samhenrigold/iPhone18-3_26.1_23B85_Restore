@interface MOEventEntityInviteProvider
- (_TtC8momentsd27MOEventEntityInviteProvider)init;
- (void)fetchEventEntityPropertiesWithSpotlightIdentifiers:(id)identifiers startDateFetch:(id)fetch endDateFetch:(id)dateFetch bundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation MOEventEntityInviteProvider

- (void)fetchEventEntityPropertiesWithSpotlightIdentifiers:(id)identifiers startDateFetch:(id)fetch endDateFetch:(id)dateFetch bundleIdentifier:(id)identifier completion:(id)completion
{
  fetchCopy = fetch;
  dateFetchCopy = dateFetch;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v45 - v10;
  v45 = &v45 - v10;
  v52 = type metadata accessor for Date();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v52, v14);
  v17 = __chkstk_darwin(v15, v16);
  v47 = &v45 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v45 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v45 - v24;
  v26 = _Block_copy(completion);
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v25;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v22;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  fetchCopy = v28;
  dateFetchCopy = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = *(v12 + 16);
  v32 = v47;
  v33 = v52;
  v31(v47, v25, v52);
  v34 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v22;
  v36 = v33;
  v31(v34, v35, v33);
  v37 = *(v12 + 80);
  v38 = (v37 + 72) & ~v37;
  v39 = (v13 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v48;
  *(v40 + 5) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v41 = fetchCopy;
  v42 = dateFetchCopy;
  *(v40 + 6) = v29;
  *(v40 + 7) = v42;
  *(v40 + 8) = v41;
  v43 = *(v12 + 32);
  v43(&v40[v38], v32, v36);
  v43(&v40[v39], v34, v36);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v45, &closure #1 in MOEventEntityInviteProvider.fetchEventEntityProperties(spotlightIdentifiers:startDateFetch:endDateFetch:bundleIdentifier:completion:)partial apply, v40);

  v44 = *(v12 + 8);
  v44(v46, v36);
  v44(v49, v36);
}

- (_TtC8momentsd27MOEventEntityInviteProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOEventEntityInviteProvider();
  return [(MOEventEntityInviteProvider *)&v3 init];
}

@end