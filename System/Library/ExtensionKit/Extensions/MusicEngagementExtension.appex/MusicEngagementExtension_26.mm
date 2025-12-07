uint64_t outlined init with copy of PresentationSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PresentationSource?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceVSgMd, &_s9MusicCore18PresentationSourceVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppReview.UsageRequirements.CodingKeys and conformance AppReview.UsageRequirements.CodingKeys);
  }

  return result;
}

void static ClassicalBridge.generatePrestoURL(forAlbum:)(uint64_t x8_0@<X8>)
{
  v3 = Album.catalogID.getter();
  if (v4)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v3, v4, x8_0);
  }

  else
  {
    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    swift_willThrow();
  }
}

uint64_t static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(a1, a2);
}

_OWORD *specialized ICURLBag.subscript.getter(void *a1)
{
  v2 = v1;
  v3 = a1[2];
  if (!v3)
  {
    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0;
    *(v20 + 40) = 2;
LABEL_17:
    swift_willThrow();
    return (v19 & 1);
  }

  v4 = a1;
  v5 = a1[4];

  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    v32 = v4;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  if (![v2 valueForBagKey:v6])
  {

    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
    swift_allocError();
    *v21 = v6;
    *(v21 + 40) = 0;
    goto LABEL_17;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v31, v30);
  v8 = v4[2];
  result = v6;
  v10 = result;
  v27 = result;
  if (!v8)
  {
LABEL_13:

    outlined init with copy of Any(v30, v29);
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      v19 = v28;
    }

    else
    {
      lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
      swift_allocError();
      v23 = v22;
      *v22 = v10;
      outlined init with copy of Any(v30, (v22 + 1));
      *(v23 + 40) = 1;
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    return (v19 & 1);
  }

  v11 = 0;
  v12 = result;
  while (v11 < v4[2])
  {
    v13 = v4[v11 + 4];
    outlined init with copy of Any(v30, v29);
    v10 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
      swift_allocError();
      v25 = v24;
      *v24 = v10;
      outlined init with copy of Any(v30, (v24 + 1));
      *(v25 + 40) = 1;
      goto LABEL_22;
    }

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v28 + 16))
    {

LABEL_21:

      lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
      swift_allocError();
      *v26 = v10;
      *(v26 + 40) = 0;
LABEL_22:
      swift_willThrow();

      goto LABEL_23;
    }

    v16 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    ++v11;
    outlined init with copy of Any(*(v28 + 56) + 32 * v16, v29);

    __swift_destroy_boxed_opaque_existential_0Tm(v30);

    result = outlined init with take of Any(v29, v30);
    v12 = v10;
    if (v8 == v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = a1[2];
  if (!v3)
  {
    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    return swift_willThrow();
  }

  v4 = a1;
  v5 = a1[4];

  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    v31 = v4;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  if (![v2 valueForBagKey:v6])
  {

    lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
    swift_allocError();
    *v20 = v6;
    *(v20 + 40) = 0;
    return swift_willThrow();
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v30, v29);
  v8 = v4[2];
  result = v6;
  v10 = result;
  v26 = result;
  if (v8)
  {
    v11 = 0;
    v12 = result;
    while (v11 < v4[2])
    {
      v13 = v4[v11 + 4];
      outlined init with copy of Any(v29, v28);
      v10 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
        swift_allocError();
        v24 = v23;
        *v23 = v10;
        outlined init with copy of Any(v29, (v23 + 1));
        *(v24 + 40) = 1;
        goto LABEL_22;
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v27 + 16))
      {

LABEL_21:

        lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
        swift_allocError();
        *v25 = v10;
        *(v25 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v16 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v11;
      outlined init with copy of Any(*(v27 + 56) + 32 * v16, v28);

      __swift_destroy_boxed_opaque_existential_0Tm(v29);

      result = outlined init with take of Any(v28, v29);
      v12 = v10;
      if (v8 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    outlined init with copy of Any(v29, v28);
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      return v27;
    }

    else
    {
      lazy protocol witness table accessor for type ICURLBag.Error and conformance ICURLBag.Error();
      swift_allocError();
      v22 = v21;
      *v21 = v10;
      outlined init with copy of Any(v29, (v21 + 1));
      *(v22 + 40) = 1;
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      return __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }
  }

  return result;
}

uint64_t openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(uint64_t a1)
{
  v1[18] = a1;
  type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:), v3, v2);
}

uint64_t openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)()
{
  v1 = [objc_opt_self() sharedApplication];
  v0[22] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[23] = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[24] = isa;

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_53_0;
  v0[14] = v6;
  [v1 openURL:v4 options:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:), v2, v1);
}

{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t deepLinkToAppStore #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[24] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[25] = v5;
  v2[26] = v4;

  return _swift_task_switch(deepLinkToAppStore #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:), v5, v4);
}

uint64_t deepLinkToAppStore #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  _StringGuts.grow(_:)(36);

  v6._countAndFlagsBits = v5;
  v6._object = v3;
  String.append(_:)(v6);
  URL.init(string:)();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];

    outlined destroy of TaskPriority?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    swift_allocError();
    *v10 = 0xD000000000000022;
    *(v10 + 8) = 0x80000001004CFCB0;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    *(v10 + 32) = 1;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[22];
    v13 = v0[23];
    v16 = v0[20];
    v15 = v0[21];

    (*(v14 + 32))(v13, v16, v15);
    v17 = [objc_opt_self() sharedApplication];
    v0[27] = v17;
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v0[28] = v19;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
    lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[29] = isa;

    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = deepLinkToAppStore #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
    v22 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    v0[13] = &block_descriptor_56_1;
    v0[14] = v22;
    [v17 openURL:v20 options:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(deepLinkToAppStore #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:), v2, v1);
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

void closure #1 in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if (([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = v3;
LABEL_7:
  [v5 presentViewController:a2 animated:1 completion:0];
}

void static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v61 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v8 = &v54 - v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v9 = v67;
  if (v67)
  {
    v58 = a3;
    v59 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11ICURLBagKeyaGMd, &_ss23_ContiguousArrayStorageCySo11ICURLBagKeyaGMR);
    inited = swift_initStackObject();
    v60 = xmmword_1004F2EF0;
    *(inited + 16) = xmmword_1004F2EF0;
    v11 = ICURLBagKeyMusicCommon;
    *(inited + 32) = ICURLBagKeyMusicCommon;
    v12 = one-time initialization token for musicBridgesEnabled;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = static ICURLBagKey.musicBridgesEnabled;
    *(inited + 40) = static ICURLBagKey.musicBridgesEnabled;
    v15 = v14;
    v16 = specialized ICURLBag.subscript.getter(inited);
    if (v4)
    {

      swift_setDeallocating();
      type metadata accessor for ICURLBagKey(0);
      swift_arrayDestroy();
    }

    else
    {
      v18 = v16;
      swift_setDeallocating();
      type metadata accessor for ICURLBagKey(0);
      v57 = v19;
      swift_arrayDestroy();
      if (v18)
      {
        v20 = swift_initStackObject();
        v56 = xmmword_1004F2EB0;
        *(v20 + 16) = xmmword_1004F2EB0;
        *(v20 + 32) = v13;
        v21 = one-time initialization token for musicBridgesAppInfo;
        v55 = v13;
        if (v21 != -1)
        {
          swift_once();
        }

        v22 = static ICURLBagKey.musicBridgesAppInfo;
        *(v20 + 40) = static ICURLBagKey.musicBridgesAppInfo;
        v23 = one-time initialization token for musicBridgesAppInfoBundleId;
        v24 = v22;
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = static ICURLBagKey.musicBridgesAppInfoBundleId;
        *(v20 + 48) = static ICURLBagKey.musicBridgesAppInfoBundleId;
        v26 = v25;
        specialized ICURLBag.subscript.getter(v20);

        swift_setDeallocating();
        swift_arrayDestroy();
        v28 = swift_initStackObject();
        *(v28 + 16) = v56;
        v29 = v55;
        *(v28 + 32) = v55;
        *(v28 + 40) = v24;
        v30 = one-time initialization token for musicBridgesAppInfoAppId;
        *&v56 = v29;
        v31 = v24;
        if (v30 != -1)
        {
          swift_once();
        }

        v32 = static ICURLBagKey.musicBridgesAppInfoAppId;
        *(v28 + 48) = static ICURLBagKey.musicBridgesAppInfoAppId;
        v33 = v32;
        specialized ICURLBag.subscript.getter(v28);

        swift_setDeallocating();
        swift_arrayDestroy();
        v34 = swift_initStackObject();
        *(v34 + 16) = v60;
        v35 = v56;
        *(v34 + 32) = v56;
        v36 = one-time initialization token for musicBridgesURL;
        v37 = v35;
        if (v36 != -1)
        {
          swift_once();
        }

        v38 = static ICURLBagKey.musicBridgesURL;
        *(v34 + 40) = static ICURLBagKey.musicBridgesURL;
        v39 = v38;
        v40 = specialized ICURLBag.subscript.getter(v34);
        v42 = v41;
        swift_setDeallocating();
        swift_arrayDestroy();
        v57 = v40;
        v67 = v40;
        v68 = v42;
        *&v60 = v42;
        v65 = 0x7D646E696B7BLL;
        v66 = 0xE600000000000000;
        v43 = 0x747369747261;
        if (v62)
        {
          v43 = 0x6D75626C61;
          v44 = 0xE500000000000000;
        }

        else
        {
          v44 = 0xE600000000000000;
        }

        v63 = v43;
        v64 = v44;
        lazy protocol witness table accessor for type String and conformance String();
        v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v47 = v46;

        v67 = v45;
        v68 = v47;
        v65 = 2103732603;
        v66 = 0xE400000000000000;
        v48 = v58;
        v63 = v59;
        v64 = v58;
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        URL.init(string:)();

        v49 = type metadata accessor for URL();
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v8, 1, v49) == 1)
        {
          outlined destroy of TaskPriority?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
          swift_allocError();
          v51 = v59;
          v52 = v60;
          *v53 = v57;
          *(v53 + 8) = v52;
          *(v53 + 16) = v51;
          *(v53 + 24) = v48;
          *(v53 + 32) = 1;
          swift_willThrow();
        }

        else
        {

          (*(v50 + 32))(v61, v8, v49);
        }
      }

      else
      {
        lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
        swift_allocError();
        *v27 = 1;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 32) = 2;
        swift_willThrow();
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 2;
    swift_willThrow();
  }
}

uint64_t ClassicalBridge.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D75626C61;
  }

  else
  {
    return 0x747369747261;
  }
}

MusicCore::ClassicalBridge::Type_optional __swiftcall ClassicalBridge.Type.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClassicalBridge.Type.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MusicCore_ClassicalBridge_Type_album;
  }

  else
  {
    v4.value = MusicCore_ClassicalBridge_Type_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ClassicalBridge.Type(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D75626C61;
  }

  else
  {
    v3 = 0x747369747261;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D75626C61;
  }

  else
  {
    v5 = 0x747369747261;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassicalBridge.Type()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance ClassicalBridge.Type(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassicalBridge.Type(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance ClassicalBridge.Type(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClassicalBridge.Type.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ClassicalBridge.Type(uint64_t *a1@<X8>)
{
  v2 = 0x747369747261;
  if (*v1)
  {
    v2 = 0x6D75626C61;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void static ClassicalBridge.generatePrestoURL(forModelObject:)(uint64_t a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = v3;
  if (v3 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v5 = [v3 identifiers];
    v6 = [v5 universalStore];

    if (v6)
    {
      [v6 adamID];
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v8;
      swift_unknownObjectRelease();
      static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(v4 != 0, v7, v9, a2);

      return;
    }

    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    swift_allocError();
    v11 = 4;
  }

  else
  {
    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    swift_allocError();
    v11 = 3;
  }

  *v10 = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 2;
  swift_willThrow();
}

uint64_t one-time initialization function for storeProductCoordinator()
{
  result = swift_slowAlloc();
  static SKStoreProductViewController.AssociatedObjectKeys.storeProductCoordinator = result;
  return result;
}

char *SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationRecordObserver] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app];
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  v12 = &v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationInstalledBlock];
  *v12 = a4;
  *(v12 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for SKStoreProductViewController.StoreProductCoordinator();

  v13 = objc_msgSendSuper2(&v19, "init");
  v14 = *NSNotificationName.applicationRegistered.unsafeMutableAddressor();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v14;

  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v17 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, 0, 1, 0, partial apply for closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:), v15);

  *&v13[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationRecordObserver] = v17;

  return v13;
}

void closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v3 = &v14 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app);
    v7 = *(Strong + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app + 8);

    LOBYTE(v6) = static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(v6, v7);

    if (v6)
    {
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v5;
      v10 = v5;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:), v9);

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 presentingViewController];

        if (v13)
        {
          [v13 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

uint64_t closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)()
{
  v1 = v0[3] + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationInstalledBlock;
  v2 = *v1;
  v0[4] = *(v1 + 8);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:);

  return v5();
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:);
  }

  else
  {
    v2 = closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v14 = v0;

  if (one-time initialization token for classicalBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.classicalBridge);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not execute applicationInstalledBlock, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t Logger.classicalBridge.unsafeMutableAddressor()
{
  if (one-time initialization token for classicalBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.classicalBridge);
}

id SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = [objc_allocWithZone(SKStoreProductViewController) init];
  [v3 setDelegate:v0];
  if (one-time initialization token for storeProductCoordinator != -1)
  {
    swift_once();
  }

  objc_setAssociatedObject(v3, static SKStoreProductViewController.AssociatedObjectKeys.storeProductCoordinator, v0, 1);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v3;
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  v8[5] = v6;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSb_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController(), v8);

  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[28] = a1;
  type metadata accessor for MainActor();
  v5[31] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[32] = v7;
  v5[33] = v6;

  return _swift_task_switch(closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController(), v7, v6);
}

uint64_t closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()()
{
  v1 = v0[29];
  v2 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd_0, &_ss23_ContiguousArrayStorageCySS_yptGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = *(v2 + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app + 16);
  *(inited + 72) = &type metadata for Int64;
  *(inited + 48) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_yptMd_0, &_sSS_yptMR_0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[34] = isa;

  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController();
  v7 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[23] = &block_descriptor_44;
  v0[24] = v7;
  [v1 loadProductWithParameters:isa completionBlock:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController();
  }

  else
  {
    v5 = closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController();
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);

  *v2 = *(v0 + 288);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 272);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id SKStoreProductViewController.StoreProductCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SKStoreProductViewController.StoreProductCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString one-time initialization function for musicBridgesEnabled()
{
  result = String._bridgeToObjectiveC()();
  static ICURLBagKey.musicBridgesEnabled = result;
  return result;
}

NSString one-time initialization function for musicBridgesURL()
{
  result = String._bridgeToObjectiveC()();
  static ICURLBagKey.musicBridgesURL = result;
  return result;
}

NSString one-time initialization function for musicBridgesAppInfo()
{
  result = String._bridgeToObjectiveC()();
  static ICURLBagKey.musicBridgesAppInfo = result;
  return result;
}

NSString one-time initialization function for musicBridgesAppInfoBundleId()
{
  result = String._bridgeToObjectiveC()();
  static ICURLBagKey.musicBridgesAppInfoBundleId = result;
  return result;
}

NSString one-time initialization function for musicBridgesAppInfoAppId()
{
  result = String._bridgeToObjectiveC()();
  static ICURLBagKey.musicBridgesAppInfoAppId = result;
  return result;
}

uint64_t one-time initialization function for classicalBridge()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.classicalBridge);
  __swift_project_value_buffer(v0, static Logger.classicalBridge);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.classicalBridge.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for classicalBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.classicalBridge);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_0, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

{
  v65 = a1;
  v66 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = _sSS8_copyingyS2SFZ_0(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_0(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = type metadata accessor for URL();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v5;
  v2[31] = v6;

  return _swift_task_switch(specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:), v5, v6);
}

id specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)()
{
  v87 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(closure #1 in BagProvider.bag.getterpartial apply);
  v1 = v0[22];
  v0[32] = v1;
  if (!v1)
  {

    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 2;
    swift_willThrow();
LABEL_13:

    v22 = v0[1];
LABEL_14:

    return v22();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11ICURLBagKeyaGMd, &_ss23_ContiguousArrayStorageCySo11ICURLBagKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  v3 = ICURLBagKeyMusicCommon;
  *(inited + 32) = ICURLBagKeyMusicCommon;
  v4 = one-time initialization token for musicBridgesAppInfo;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static ICURLBagKey.musicBridgesAppInfo;
  *(inited + 40) = static ICURLBagKey.musicBridgesAppInfo;
  v7 = one-time initialization token for musicBridgesAppInfoBundleId;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = static ICURLBagKey.musicBridgesAppInfoBundleId;
  *(inited + 48) = static ICURLBagKey.musicBridgesAppInfoBundleId;
  v10 = v9;
  v11 = specialized ICURLBag.subscript.getter(inited);
  v84 = v13;
  v85 = v1;
  v83 = v11;
  swift_setDeallocating();
  type metadata accessor for ICURLBagKey(0);
  swift_arrayDestroy();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1004F2EB0;
  *(v14 + 32) = v5;
  *(v14 + 40) = v8;
  v15 = one-time initialization token for musicBridgesAppInfoAppId;
  v16 = v5;
  v17 = v8;
  if (v15 != -1)
  {
    swift_once();
  }

  v18 = static ICURLBagKey.musicBridgesAppInfoAppId;
  *(v14 + 48) = static ICURLBagKey.musicBridgesAppInfoAppId;
  v19 = v18;
  v20 = specialized ICURLBag.subscript.getter(v14);
  v0[33] = v21;
  v24 = v20;
  v25 = v21;
  swift_setDeallocating();
  swift_arrayDestroy();
  v26 = HIBYTE(v25) & 0xF;
  v27 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v28 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v83;
  if (!v28)
  {
LABEL_79:

    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    swift_allocError();
    *v50 = v24;
    *(v50 + 8) = v25;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0;
    swift_willThrow();

    goto LABEL_13;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {

    specialized _parseInteger<A, B>(ascii:radix:)(v24, v25, 10);
    v32 = v51;
    v53 = v52;

    v29 = v83;
    if (v53)
    {
      goto LABEL_79;
    }

    goto LABEL_81;
  }

  if ((v25 & 0x2000000000000000) != 0)
  {
    v86[0] = v24;
    v86[1] = v25 & 0xFFFFFFFFFFFFFFLL;
    if (v24 == 43)
    {
      if (v26)
      {
        if (--v26)
        {
          v32 = 0;
          v42 = v86 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

LABEL_107:
      __break(1u);
    }

    if (v24 != 45)
    {
      if (v26)
      {
        v32 = 0;
        v47 = v86;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    if (v26)
    {
      if (--v26)
      {
        v32 = 0;
        v36 = v86 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v26)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_105;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v30 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v30 = _StringObject.sharedUTF8.getter();
    v29 = v83;
  }

  v31 = *v30;
  if (v31 == 43)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v39 = v30 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              goto LABEL_77;
            }

            v41 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_77;
            }

            v32 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              goto LABEL_77;
            }

            ++v39;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_77;
    }

    goto LABEL_106;
  }

  if (v31 == 45)
  {
    if (v27 >= 1)
    {
      v26 = v27 - 1;
      if (v27 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v33 = v30 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              goto LABEL_77;
            }

            v35 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_77;
            }

            v32 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              goto LABEL_77;
            }

            ++v33;
            if (!--v26)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_69:
        LOBYTE(v26) = 0;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v27)
  {
    v32 = 0;
    if (v30)
    {
      while (1)
      {
        v45 = *v30 - 48;
        if (v45 > 9)
        {
          goto LABEL_77;
        }

        v46 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          goto LABEL_77;
        }

        v32 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          goto LABEL_77;
        }

        ++v30;
        if (!--v27)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_77:
  v32 = 0;
  LOBYTE(v26) = 1;
LABEL_78:
  if (v26)
  {
    goto LABEL_79;
  }

LABEL_81:
  if (static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(v29, v84))
  {

    v54 = swift_task_alloc();
    v0[34] = v54;
    *v54 = v0;
    v54[1] = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
    v55 = v0[23];

    return openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(v55);
  }

  else
  {
    v56 = v0[24];
    if (v56)
    {
      v57 = v0[28];
      v58 = v0[25];
      v59 = v0[26];
      (*(v59 + 16))(v57, v0[23], v58);
      v60 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v61 = swift_allocObject();
      (*(v59 + 32))(v61 + v60, v57, v58);
      v62 = objc_allocWithZone(type metadata accessor for SKStoreProductViewController.StoreProductCoordinator());

      v63 = v56;
      v64 = SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)(v83, v84, v32, &async function pointer to partial apply for openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:), v61);
      v65 = SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()();
      result = [v65 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v66 = result;

      v67 = [objc_opt_self() systemBlueColor];
      [v66 setTintColor:v67];

      v68 = v63;
      v69 = [v68 presentedViewController];
      v70 = v68;
      if (v69)
      {
        v71 = v68;
        do
        {
          v70 = v69;

          v69 = [v70 presentedViewController];
          v71 = v70;
        }

        while (v69);
      }

      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v73 = v72;
        v74 = swift_allocObject();
        *(v74 + 16) = v68;
        *(v74 + 24) = v65;
        v0[20] = partial apply for closure #1 in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
        v0[21] = v74;
        v0[16] = _NSConcreteStackBlock;
        v0[17] = 1107296256;
        v0[18] = thunk for @escaping @callee_guaranteed () -> ();
        v0[19] = &block_descriptor_41;
        v75 = _Block_copy(v0 + 16);
        v76 = v68;
        v77 = v65;

        [v73 dismissViewControllerAnimated:1 completion:v75];

        _Block_release(v75);
      }

      else
      {
        v79 = v68;
        v80 = [v79 presentedViewController];
        v81 = v79;
        if (v80)
        {
          v82 = v79;
          while (1)
          {
            v81 = v80;
            if (([v80 canPresentViewControllers] & 1) == 0)
            {
              break;
            }

            v80 = [v81 presentedViewController];
            v82 = v81;
            if (!v80)
            {
              goto LABEL_101;
            }
          }

          v81 = v82;
        }

LABEL_101:
        [v81 presentViewController:v65 animated:1 completion:0];

        v70 = v81;
      }

      v22 = v0[1];
      goto LABEL_14;
    }

    v78 = swift_task_alloc();
    v0[36] = v78;
    *v78 = v0;
    v78[1] = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);

    return deepLinkToAppStore #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(v24, v25);
  }
}

uint64_t specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  else
  {
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

{

  return specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)();
}

unint64_t lazy protocol witness table accessor for type ClassicalBridge.Type and conformance ClassicalBridge.Type()
{
  result = lazy protocol witness table cache variable for type ClassicalBridge.Type and conformance ClassicalBridge.Type;
  if (!lazy protocol witness table cache variable for type ClassicalBridge.Type and conformance ClassicalBridge.Type)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassicalBridge.Type and conformance ClassicalBridge.Type);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SKStoreProductViewController.StoreProductCoordinator.App(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SKStoreProductViewController.StoreProductCoordinator.App(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15ClassicalBridgeO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t getEnumTagSinglePayload for ClassicalBridge.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassicalBridge.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ClassicalBridge.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_10029101C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()(a1, v4, v5, v7, v6);
}

uint64_t sub_10029113C()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(v0 + v3);
}

uint64_t sub_100291290()
{

  return swift_deallocObject();
}

uint64_t sub_1002912F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100291330()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)(a1, v4, v5, v6);
}

uint64_t *AccessibilityString.dolbyAtmosLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for dolbyAtmosLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAtmosLabel;
}

uint64_t *AccessibilityString.dolbyAudioLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for dolbyAudioLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAudioLabel;
}

uint64_t *AccessibilityString.losslessLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for losslessLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.losslessLabel;
}

uint64_t *AccessibilityString.hiResLosslessLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for hiResLosslessLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.hiResLosslessLabel;
}

uint64_t static String.socialDisconnectMessage(networkName:)(uint64_t a1, void *a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v18[-v8];
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001004CFCE0;
  v10._countAndFlagsBits = 0xD000000000000017;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);
  v12._object = 0x80000001004CFD00;
  v12._countAndFlagsBits = 0x1000000000000060;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v5 + 16))(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v15 = static NSBundle.module;
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v9, v4);
  return v16;
}

uint64_t MPModelTVShow.localizedEpisodeCount.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v12 - v5;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  v12[1] = [v0 episodesCount];
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v8._countAndFlagsBits = 0x65646F7369704520;
  v8._object = 0xEB00000000297328;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v10;
}

uint64_t *AccessibilityString.albumArtworkLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for albumArtworkLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.albumArtworkLabel;
}

uint64_t one-time initialization function for playlistArtworkLabel()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v16[-v4];
  __chkstk_darwin();
  v7 = &v16[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v1 + 16);
  v8(v5, v7, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  v8(v3, v5, v0);
  v10 = v9;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  v14 = *(v1 + 8);
  v14(v5, v0);
  result = (v14)(v7, v0);
  static AccessibilityString.playlistArtworkLabel = v11;
  *algn_10063EAF8 = v13;
  return result;
}

uint64_t *AccessibilityString.playlistArtworkLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistArtworkLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playlistArtworkLabel;
}

uint64_t *AccessibilityString.qrCodeButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for qrCodeButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.qrCodeButtonLabel;
}

uint64_t one-time initialization function for favoriteBadgeLabel()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v16[-v4];
  __chkstk_darwin();
  v7 = &v16[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v1 + 16);
  v8(v5, v7, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  v8(v3, v5, v0);
  v10 = v9;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  v14 = *(v1 + 8);
  v14(v5, v0);
  result = (v14)(v7, v0);
  static AccessibilityString.favoriteBadgeLabel = v11;
  *algn_10063EB58 = v13;
  return result;
}

uint64_t *AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for favoriteBadgeLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteBadgeLabel;
}

uint64_t *AccessibilityString.popularBadgeLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for popularBadgeLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.popularBadgeLabel;
}

uint64_t *AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for immersiveBadgeLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.immersiveBadgeLabel;
}

uint64_t *AccessibilityString.nowPlayingWafeformLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingWafeformLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.nowPlayingWafeformLabel;
}

uint64_t *AccessibilityString.pausedWafeformLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for pausedWafeformLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.pausedWafeformLabel;
}

uint64_t *AccessibilityString.favoriteButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for favoriteButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteButtonLabel;
}

uint64_t *AccessibilityString.undoFavoriteButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for undoFavoriteButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.undoFavoriteButtonLabel;
}

uint64_t *AccessibilityString.playbackPlayButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for playbackPlayButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackPlayButtonLabel;
}

uint64_t one-time initialization function for albumArtworkLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v22[0] = a5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v22 - v10;
  __chkstk_darwin();
  v13 = v22 - v12;
  String.LocalizationValue.init(stringLiteral:)();
  v14 = *(v7 + 16);
  v14(v11, v13, v6);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v15 = static NSBundle.module;
  v14(v9, v11, v6);
  v16 = v15;
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v11, v6);
  result = (v20)(v13, v6);
  *a4 = v17;
  *v22[0] = v19;
  return result;
}

uint64_t *AccessibilityString.playbackShuffleButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for playbackShuffleButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackShuffleButtonLabel;
}

uint64_t static AccessibilityString.albumArtworkLabel.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

id NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.setter()
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void NSUserDefaults.applicationScriptURL.getter(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      v2 = (0x80000001004CFDB0 >> 56) & 0xF;
      if ((0x80000001004CFDB0 & 0x2000000000000000) == 0)
      {
        v2 = 20;
      }

      if (v2)
      {
        URL.init(string:)();

        return;
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v4);
  }

  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

uint64_t NSUserDefaults.showAllTVShows.getter()
{
  strcpy(v1, "showAllTVShows");
  v1[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1[0];
    }
  }

  else
  {
    outlined destroy of Any?(&v2);
    return 0;
  }

  return result;
}

void (*NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify;
}

void NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

id NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter()
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void (*NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify;
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

char *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.isInternalInstall;
}

uint64_t *DeviceCapabilities.deviceFamily.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceFamily != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceFamily;
}

uint64_t *DeviceCapabilities.deviceModel.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceModel != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceModel;
}

char *DeviceCapabilities.deviceType.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceType != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceType;
}

id static DeviceCapabilities.hasWAPICapability.getter(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for isInternalInstall()
{
  result = os_variant_has_internal_content();
  static DeviceCapabilities.isInternalInstall = result;
  return result;
}

uint64_t one-time initialization function for deviceType(uint64_t a1)
{
  result = closure #1 in variable initialization expression of static DeviceCapabilities.deviceType(a1);
  static DeviceCapabilities.deviceType = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static DeviceCapabilities.deviceType(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber > 2)
    {
      if (deviceClassNumber != 11)
      {
        if (deviceClassNumber == 3)
        {
          return 2;
        }

        return 0;
      }

      return 4;
    }

    else
    {
      if (deviceClassNumber != 1)
      {
        if (deviceClassNumber == 2)
        {
          return 3;
        }

        return 0;
      }

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DeviceCapabilities.deviceType.getter()
{
  if (one-time initialization token for deviceType != -1)
  {
    swift_once();
  }

  return static DeviceCapabilities.deviceType;
}

void one-time initialization function for deviceFamily(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t one-time initialization function for supportsHighFrameRateLyricsBackground()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2158787295)
  {
    if (result <= 2311900305)
    {
      if (result != 2158787296 && result != 2270970153)
      {
        goto LABEL_17;
      }
    }

    else if (result != 2311900306 && result != 3645319985 && result != 3242623367)
    {
      goto LABEL_17;
    }
  }

  else if (result <= 820711326)
  {
    if (result != 228444038 && result != 502329937)
    {
      goto LABEL_17;
    }
  }

  else if (result != 820711327 && result != 1429914406 && result != 1721691077)
  {
LABEL_17:
    v0 = 1;
  }

  static DeviceCapabilities.supportsHighFrameRateLyricsBackground = v0;
  return result;
}

char *DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for supportsHighFrameRateLyricsBackground != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsHighFrameRateLyricsBackground;
}

uint64_t one-time initialization function for supportsMotionBlur()
{
  result = MGGetProductType();
  static DeviceCapabilities.supportsMotionBlur = result != 1325975682;
  return result;
}

char *DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor()
{
  if (one-time initialization token for supportsMotionBlur != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsMotionBlur;
}

void one-time initialization function for hasExtendedColorDisplay(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    static DeviceCapabilities.hasExtendedColorDisplay = hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }
}

char *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor()
{
  if (one-time initialization token for hasExtendedColorDisplay != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.hasExtendedColorDisplay;
}

uint64_t static DeviceCapabilities.isInternalInstall.getter(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id static DeviceCapabilitiesObjC.hasWAPICapability.getter(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    return wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized static DeviceCapabilities.diskUsage.getter()
{
  if (!MGCopyAnswer())
  {
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefas5Int64VGMd, &_sSDySo11CFStringRefas5Int64VGMR);
  swift_dynamicCast();
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryO_s5Int64VTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v0 = 1 << *(v47 + 32);
  v1 = -1;
  if (v0 < 64)
  {
    v1 = ~(-1 << v0);
  }

  v2 = v1 & *(v47 + 64);
  v3 = (v0 + 63) >> 6;
  v4 = kMGQDiskUsageTotalSystemCapacity;
  v5 = kMGQDiskUsageTotalSystemAvailable;
  v44 = kMGQDiskUsageTotalDataCapacity;
  v43 = kMGQDiskUsageTotalDataAvailable;
  v42 = kMGQDiskUsageTotalDiskCapacity;

  v6 = 0;
  v45 = v4;
  v46 = v5;
  if (v2)
  {
    while (1)
    {
LABEL_12:
      v8 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(*(v47 + 48) + v9);
      v41 = *(*(v47 + 56) + v9);
      if (v4)
      {
        type metadata accessor for CFStringRef(0);
        lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
        v11 = v10;
        v12 = v4;
        v13 = static _CFObject.== infix(_:_:)();

        v5 = v46;
        if (v13)
        {
          v26 = 0;
          goto LABEL_29;
        }

        if (!v46)
        {
          goto LABEL_18;
        }

LABEL_17:
        type metadata accessor for CFStringRef(0);
        lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
        v15 = v10;
        v16 = v5;
        v17 = static _CFObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

        v26 = 1;
LABEL_29:

LABEL_30:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        v30 = v40[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_44;
        }

        v34 = v29;
        if (v40[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v28;
            specialized _NativeDictionary.copy()();
            v28 = v38;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_47;
          }
        }

        if (v34)
        {
          *(v40[7] + 8 * v28) = v41;
        }

        else
        {
          v40[(v28 >> 6) + 8] |= 1 << v28;
          *(v40[6] + v28) = v26;
          *(v40[7] + 8 * v28) = v41;

          v36 = v40[2];
          v32 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v32)
          {
            goto LABEL_45;
          }

          v40[2] = v37;
        }

        v4 = v45;
        v5 = v46;
        if (!v2)
        {
          break;
        }
      }

      else
      {
        v14 = v10;
        if (v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v44)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v18 = v10;
          v19 = v44;
          v20 = static _CFObject.== infix(_:_:)();

          if (v20)
          {
            v26 = 2;
            goto LABEL_29;
          }
        }

        if (v43)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v21 = v10;
          v22 = v43;
          v23 = static _CFObject.== infix(_:_:)();

          if (v23)
          {
            v26 = 3;
            goto LABEL_29;
          }
        }

        if (v42)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v24 = v42;
          v25 = static _CFObject.== infix(_:_:)();

          v5 = v46;
          if (v25)
          {
            v26 = 4;
            goto LABEL_30;
          }
        }

        else
        {

          v5 = v46;
        }

        v4 = v45;
        if (!v2)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v40;
    }

    v2 = *(v47 + 64 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory()
{
  result = lazy protocol witness table cache variable for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory;
  if (!lazy protocol witness table cache variable for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType()
{
  result = lazy protocol witness table cache variable for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType;
  if (!lazy protocol witness table cache variable for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t *EnvironmentMonitor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static EnvironmentMonitor.shared;
}

id static EnvironmentMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentMonitor.shared;

  return v1;
}

uint64_t EnvironmentMonitor.isNetworkConstrained.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

void key path getter for EnvironmentMonitor.isNetworkConstrained : EnvironmentMonitor(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

unint64_t lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor()
{
  result = lazy protocol witness table cache variable for type EnvironmentMonitor and conformance EnvironmentMonitor;
  if (!lazy protocol witness table cache variable for type EnvironmentMonitor and conformance EnvironmentMonitor)
  {
    type metadata accessor for EnvironmentMonitor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentMonitor and conformance EnvironmentMonitor);
  }

  return result;
}

uint64_t type metadata accessor for EnvironmentMonitor(uint64_t a1)
{
  result = type metadata singleton initialization cache for EnvironmentMonitor;
  if (!type metadata singleton initialization cache for EnvironmentMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void EnvironmentMonitor.isNetworkConstrained.setter(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t EnvironmentMonitor.thermalLevel.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

void key path getter for EnvironmentMonitor.thermalLevel : EnvironmentMonitor(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

double EnvironmentMonitor.thermalLevel.setter(char a1)
{
  if (qword_100506CD0[*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)] == qword_100506CD0[a1])
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EnvironmentMonitor.ThermalLevel()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100506CD0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentMonitor.ThermalLevel(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100506CD0[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EnvironmentMonitor.ThermalLevel@<X0>(Swift::Int *a1@<X0>, MusicCore::EnvironmentMonitor::ThermalLevel_optional *a2@<X8>)
{
  result = specialized EnvironmentMonitor.ThermalLevel.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

id EnvironmentMonitor.().init()()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v3 = &v9 - v2;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained] = 0;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel] = 0;
  ObservationRegistrar.init()();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v7 = v4;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in EnvironmentMonitor.().init(), v6);

  outlined destroy of TaskPriority?(v3);
  return v7;
}

uint64_t closure #1 in EnvironmentMonitor.().init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(closure #1 in EnvironmentMonitor.().init(), 0, 0);
}

uint64_t closure #1 in EnvironmentMonitor.().init()()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v1, &closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)partial apply, v6);

  outlined destroy of TaskPriority?(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v1, &closure #1 in EnvironmentMonitor.updateThermalLevel(_:)partial apply, v9);

  outlined destroy of TaskPriority?(v1);
  [v10 registerObserver:v11];

  v12 = v0[1];

  return v12();
}

id EnvironmentMonitor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedMonitor];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:), 0, 0);
}

uint64_t closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)()
{
  *(v0 + 48) = [*(v0 + 24) isNetworkConstrained];
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:), v2, v1);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1 != *(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t EnvironmentMonitor.environmentMonitorDidChangeNetworkReachability(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v3;
  v10 = a1;
  v11 = v3;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, a3, v9);

  return outlined destroy of TaskPriority?(v7);
}

uint64_t @objc EnvironmentMonitor.environmentMonitorDidChangeNetworkReachability(_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v12 = a3;
  v13 = a1;
  v14 = v12;
  v15 = v13;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, a5, v11);

  return outlined destroy of TaskPriority?(v9);
}

uint64_t closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(closure #1 in EnvironmentMonitor.updateThermalLevel(_:), 0, 0);
}

uint64_t closure #1 in EnvironmentMonitor.updateThermalLevel(_:)()
{
  v1 = [*(v0 + 24) currentThermalLevel];
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = specialized EnvironmentMonitor.ThermalLevel.init(osThermalPressureLevel:)(v1);
    type metadata accessor for MainActor();
    *(v0 + 40) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v1 = closure #1 in EnvironmentMonitor.updateThermalLevel(_:);
    v2 = v4;
    v3 = v6;
  }

  return _swift_task_switch(v1, v2, v3);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (qword_100506CD0[v1] != qword_100506CD0[*(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)])
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t specialized EnvironmentMonitor.ThermalLevel.init(osThermalPressureLevel:)(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 0x1E:
        return 3;
      case 0x28:
        return 4;
      case 0x32:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0xA:
        return 1;
      case 0x14:
        return 2;
    }
  }

  return 6;
}

uint64_t specialized EnvironmentMonitor.ThermalLevel.init(rawValue:)(uint64_t result)
{
  if (result > 19)
  {
    if (result > 39)
    {
      if (result == 40)
      {
        return 4;
      }

      if (result == 50)
      {
        return 5;
      }
    }

    else
    {
      if (result == 20)
      {
        return 2;
      }

      if (result == 30)
      {
        return 3;
      }
    }

    return 7;
  }

  if (result == -1)
  {
    return 6;
  }

  if (result)
  {
    if (result == 10)
    {
      return 1;
    }

    return 7;
  }

  return result;
}

uint64_t partial apply for closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel()
{
  result = lazy protocol witness table cache variable for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel;
  if (!lazy protocol witness table cache variable for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel);
  }

  return result;
}

uint64_t type metadata completion function for EnvironmentMonitor(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in EnvironmentMonitor.updateThermalLevel(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(a1, v4, v5, v7, v6);
}

uint64_t sub_10029572C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in EnvironmentMonitor.().init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in EnvironmentMonitor.().init()(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_12()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t *ExplicitRestrictionsController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.shared;
}

BOOL ExplicitRestrictionsController.explicitContentIsAllowed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = [v2 status];

  return (v0 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t ExplicitRestrictionsController.accountVerificationURL.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v3 = &v10 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v11;
  if (v11)
  {
    v5 = [v11 verificationURL];

    if (v5)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v3, v6, 1, v9);
    return outlined init with take of URL?(v3, a1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t static ExplicitRestrictionsController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t ExplicitRestrictionsController.().init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd, &_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  LOBYTE(v23) = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22ICAgeVerificationStateCSgMd, &_sSo22ICAgeVerificationStateCSgMR);
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v11, v5, v2);
  v12 = (v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  if (one-time initialization token for symbols != -1)
  {
    swift_once();
  }

  v13 = unk_10063EC30;
  *v12 = static ExplicitRestrictionsController.symbols;
  v12[1] = v13;
  v14 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings;
  *(v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings) = _swiftEmptyArrayStorage;

  ExplicitRestrictionsController.updateDeviceContentRestriction()();
  ExplicitRestrictionsController.updateContentRestrictionTreatment()();
  ExplicitRestrictionsController.updateAgeVerification()();
  type metadata accessor for Whitetail.Binding();
  v15 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v15;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v17, 1, partial apply for closure #1 in ExplicitRestrictionsController.().init(), v16);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v18 = ICAgeVerificationStateDidChangeNotification;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v18;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v20, 1, partial apply for closure #2 in ExplicitRestrictionsController.().init(), v19);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v1;
}

void ExplicitRestrictionsController.updateDeviceContentRestriction()()
{
  v0 = [objc_opt_self() sharedRestrictionsMonitor];
  [v0 allowsExplicitContent];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  ExplicitRestrictionsController.profileAllowsExplicitContent.didset(v1);
}

double ExplicitRestrictionsController.updateContentRestrictionTreatment()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 && (v1 = [v7 treatment], v7, v1 == 1))
  {
    if (one-time initialization token for symbols != -1)
    {
      swift_once();
    }

    v2 = &qword_10063EC38;
  }

  else
  {
    if (one-time initialization token for symbols != -1)
    {
      swift_once();
    }

    v2 = &static ExplicitRestrictionsController.symbols;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;

  return result;
}

void ExplicitRestrictionsController.updateAgeVerification()()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 ageVerificationState];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;

  v5 = v3;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10)
  {
    if (v4)
    {
      type metadata accessor for ICAgeVerificationState();
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        v5 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v8 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for Notifications != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:static ExplicitRestrictionsController.Notifications object:v1];

  v5 = v4;
LABEL_11:
}

double closure #1 in ExplicitRestrictionsController.().init()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ExplicitRestrictionsController.updateDeviceContentRestriction()();
  }

  return result;
}

double closure #2 in ExplicitRestrictionsController.().init()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ExplicitRestrictionsController.updateAgeVerification()();
    ExplicitRestrictionsController.updateContentRestrictionTreatment()();
  }

  return result;
}

uint64_t ExplicitRestrictionsController.profileAllowsExplicitContent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ExplicitRestrictionsController.ageVerification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for ExplicitRestrictionsController.profileAllowsExplicitContent : ExplicitRestrictionsController(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void key path setter for ExplicitRestrictionsController.profileAllowsExplicitContent : ExplicitRestrictionsController(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  ExplicitRestrictionsController.profileAllowsExplicitContent.didset(v2);
}

void ExplicitRestrictionsController.profileAllowsExplicitContent.didset(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for Notifications != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_100608768 object:v1];
  }
}

uint64_t key path setter for ExplicitRestrictionsController.$profileAllowsExplicitContent : ExplicitRestrictionsController(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void key path getter for ExplicitRestrictionsController.ageVerification : ExplicitRestrictionsController(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

void key path setter for ExplicitRestrictionsController.ageVerification : ExplicitRestrictionsController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized ExplicitRestrictionsController.ageVerification.setter(v1);
}

void sub_100296B94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized ExplicitRestrictionsController.ageVerification.setter(v1);
}

uint64_t key path setter for ExplicitRestrictionsController.$ageVerification : ExplicitRestrictionsController(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22ICAgeVerificationStateCSg_GMd, &_s7Combine9PublishedV9PublisherVySo22ICAgeVerificationStateCSg_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd, &_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t *ExplicitRestrictionsController.symbols.unsafeMutableAddressor()
{
  if (one-time initialization token for symbols != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.symbols;
}

uint64_t ExplicitRestrictionsController.symbol.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void one-time initialization function for symbols()
{
  static ExplicitRestrictionsController.symbols = 3028656112;
  unk_10063EC30 = 0xA400000000000000;
  qword_10063EC38 = 11768802;
  unk_10063EC40 = 0xA300000000000000;
}

uint64_t static ExplicitRestrictionsController.symbols.getter()
{
  if (one-time initialization token for symbols != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t ExplicitRestrictionsController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd, &_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ExplicitRestrictionsController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd, &_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

NSString one-time initialization function for Notifications()
{
  static ExplicitRestrictionsController.Notifications = String._bridgeToObjectiveC()();
  result = String._bridgeToObjectiveC()();
  qword_100608768 = result;
  return result;
}

uint64_t type metadata accessor for ExplicitRestrictionsController(uint64_t a1)
{
  result = type metadata singleton initialization cache for ExplicitRestrictionsController;
  if (!type metadata singleton initialization cache for ExplicitRestrictionsController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ExplicitRestrictionsController(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<ICAgeVerificationState?>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<ICAgeVerificationState?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<ICAgeVerificationState?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo22ICAgeVerificationStateCSgMd, &_sSo22ICAgeVerificationStateCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<ICAgeVerificationState?>);
    }
  }
}

void specialized ExplicitRestrictionsController.ageVerification.setter(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = a1;
  if (a1)
  {
    if (v9)
    {
      type metadata accessor for ICAgeVerificationState();
      v6 = v9;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
    }

LABEL_8:
    v8 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for Notifications != -1)
    {
      swift_once();
    }

    [v8 postNotificationName:static ExplicitRestrictionsController.Notifications object:v2];

    v6 = v9;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_8;
  }
}

unint64_t type metadata accessor for ICAgeVerificationState()
{
  result = lazy cache variable for type metadata for ICAgeVerificationState;
  if (!lazy cache variable for type metadata for ICAgeVerificationState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICAgeVerificationState);
  }

  return result;
}

uint64_t sub_10029755C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = LaunchURL.GenericHandler.perform(withURL:);

  return v7(a1);
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = LaunchURL.GenericHandler.perform(withURL:);
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = LaunchURL.GenericHandler.perform(withURL:);
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler(uint64_t a1)
{
  v4 = *v1;
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler;

  return v7(a1);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler;
  }

  return _swift_task_switch(v8, v5, v7);
}

void *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    outlined init with copy of LaunchURLHandler?(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      outlined init with take of ActionPerforming(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = v5 + 1;
      outlined init with take of ActionPerforming(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      outlined destroy of LaunchURLHandler?(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t outlined init with copy of LaunchURLHandler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pSgMd, &_s9MusicCore16LaunchURLHandler_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LaunchURLHandler?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pSgMd, &_s9MusicCore16LaunchURLHandler_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  outlined init with copy of LaunchURLHandler?(a1, &v3);
  if (v4)
  {
    outlined init with take of ActionPerforming(&v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore16LaunchURLHandler_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore16LaunchURLHandler_pGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004F2400;
    outlined init with take of ActionPerforming(v5, v1 + 32);
  }

  else
  {
    outlined destroy of LaunchURLHandler?(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t static LaunchURL.ArrayBuilder.buildEither(first:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore16LaunchURLHandler_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore16LaunchURLHandler_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver(0);
  v6 = Logger.init(subsystem:category:)();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = type metadata accessor for URL();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(LaunchURL.Resolver.perform(withURL:), 0, 0);
}

void LaunchURL.Resolver.perform(withURL:)()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver(0) + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      outlined init with copy of ActionPerforming(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      outlined init with copy of ActionPerforming(v0 + 16, v0 + 56);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        lazy protocol witness table accessor for type URL and conformance URL();
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v27(v28, v29);
        v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        outlined init with copy of ActionPerforming(v0 + 56, v0 + 216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd, &_s9MusicCore16LaunchURLHandler_pMR);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
        v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = LaunchURL.Resolver.perform(withURL:);
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      lazy protocol witness table accessor for type URL and conformance URL();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v42(v43, v44);
      v49 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd, &_s9MusicCore16LaunchURLHandler_pMR);
      v50 = Array.description.getter();
      v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t LaunchURL.Resolver.perform(withURL:)(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = LaunchURL.Resolver.perform(withURL:);
  }

  else
  {
    v4 = LaunchURL.Resolver.perform(withURL:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t LaunchURL.Resolver.perform(withURL:)()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    outlined init with copy of ActionPerforming(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = v4 + 1;
    outlined init with take of ActionPerforming((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  outlined init with copy of ActionPerforming(v0 + 16, v0 + 96);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    lazy protocol witness table accessor for type URL and conformance URL();
    v12 = v1;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    outlined init with copy of ActionPerforming(v0 + 96, v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd, &_s9MusicCore16LaunchURLHandler_pMR);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        outlined init with copy of ActionPerforming(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        outlined init with copy of ActionPerforming(v0 + 16, v0 + 56);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          lazy protocol witness table accessor for type URL and conformance URL();
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          v34(v35, v36);
          v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          outlined init with copy of ActionPerforming(v0 + 56, v0 + 216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd, &_s9MusicCore16LaunchURLHandler_pMR);
          v42 = String.init<A>(describing:)();
          v44 = v43;
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
          v45 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_0Tm((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = LaunchURL.Resolver.perform(withURL:);
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    lazy protocol witness table accessor for type URL and conformance URL();
    v53 = v1;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd, &_s9MusicCore16LaunchURLHandler_pMR);
    v59 = Array.description.getter();
    v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.Resolver(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.Resolver;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.Resolver(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver(uint64_t a1)
{
  result = type metadata singleton initialization cache for LaunchURL.Resolver;
  if (!type metadata singleton initialization cache for LaunchURL.Resolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption()
{
  result = lazy protocol witness table cache variable for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption;
  if (!lazy protocol witness table cache variable for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption);
  }

  return result;
}

uint64_t sub_1002993A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100299468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LaunchURL.Resolver(uint64_t a1)
{
  type metadata accessor for [LaunchURLHandler](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [LaunchURLHandler](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [LaunchURLHandler])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore16LaunchURLHandler_pMd, &_s9MusicCore16LaunchURLHandler_pMR);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [LaunchURLHandler]);
    }
  }
}

uint64_t static LifecyclePatrol.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LifecyclePatrol.isEnabled = a1;
  return result;
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

double LifecyclePatrol.didInit(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    type metadata accessor for OS_dispatch_queue();
    v4 = static OS_dispatch_queue.main.getter();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;

    OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #1 in LifecyclePatrol.didInit(_:), v6, 1.0);
  }

  return result;
}

uint64_t sub_100299868()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t closure #1 in LifecyclePatrol.didInit(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (one-time initialization token for lifecyclePatrol != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.lifecyclePatrol);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v6 = 136446722;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
        v7 = String.init<A>(describing:)();
        v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v16);

        *(v6 + 4) = v9;
        *(v6 + 12) = 2082;
        v10 = String.init<A>(describing:)();
        v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v16);

        *(v6 + 14) = v12;
        *(v6 + 22) = 2082;
        v13 = String.init<A>(describing:)();
        v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v14, &v16);

        *(v6 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v4, v5, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v6, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100299B1C()
{

  return swift_deallocObject();
}

uint64_t LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  outlined destroy of weak ActionsObserver?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for lifecyclePatrol()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.lifecyclePatrol);
  __swift_project_value_buffer(v0, static Logger.lifecyclePatrol);
  return Logger.init(subsystem:category:)();
}

void specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd_0, &_ss18_DictionaryStorageCySSypGMR_0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v27);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    outlined init with copy of AnyHashable(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    outlined init with copy of Any(v25 + 8, v20);
    outlined destroy of (key: AnyHashable, value: Any)(v24);
    v21 = v18;
    outlined init with take of Any(v20, v22);
    v12 = v21;
    outlined init with take of Any(v22, v23);
    outlined init with take of Any(v23, &v21);
    v13 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      outlined init with take of Any(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      outlined init with take of Any(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  outlined destroy of (key: AnyHashable, value: Any)(v24);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySDys11AnyHashableVypGGGMd, &_ss18_DictionaryStorageCySSSaySDys11AnyHashableVypGGGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v24);
        outlined init with copy of Any(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        outlined init with copy of AnyHashable(v21, v20);
        if (!swift_dynamicCast())
        {
          outlined destroy of (key: AnyHashable, value: Any)(v21);

          goto LABEL_23;
        }

        outlined init with copy of Any(v22 + 8, v20);
        outlined destroy of (key: AnyHashable, value: Any)(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v12 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v18, v19);
        if (v13)
        {
          v8 = (v2[6] + 16 * v12);
          *v8 = v18;
          v8[1] = v19;
          v9 = v12;

          *(v2[7] + 8 * v9) = v18;

          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
          v14 = (v2[6] + 16 * v12);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * v12) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_26;
          }

          v2[2] = v17;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    outlined init with take of Any(v22, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0, &_sSDySSypGMR_0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs11AnyHashableVGMd, &_ss18_DictionaryStorageCySSs11AnyHashableVGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v33);
        outlined init with copy of Any(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        outlined init with copy of AnyHashable(v30, &v24);
        if (!swift_dynamicCast())
        {
          outlined destroy of TaskPriority?(v30, &_ss11AnyHashableV3key_yp5valuetMd_0, &_ss11AnyHashableV3key_yp5valuetMR_0);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        outlined init with copy of Any(v31 + 8, v23);
        outlined destroy of TaskPriority?(v30, &_ss11AnyHashableV3key_yp5valuetMd_0, &_ss11AnyHashableV3key_yp5valuetMR_0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          outlined assign with take of AnyHashable(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v13;
          v16[1] = v12;
          v17 = v2[7] + 40 * v14;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_26;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      outlined destroy of TaskPriority?(&v24, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

double MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 11);
  closure #1 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(&v5[4], &v10);
  os_unfair_lock_unlock(v5 + 11);
  v7 = v10;
  if (v10)
  {
    v8 = MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(v10, a1, a2);
    __chkstk_darwin();
    os_unfair_lock_lock(v5 + 11);
    partial apply for closure #2 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(&v5[4], v9);
    os_unfair_lock_unlock(v5 + 11);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void *MusicTabsDictionaryProvider.init(musicTabsBagKey:lastKnownMusicTabsDictionaryDefaultsAccessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  __chkstk_darwin();
  v17 = &v42 - v16;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v18 = objc_opt_self();

  v19 = [v18 sharedBagProvider];
  LODWORD(a2) = [v19 useAMSBag];

  if (!a2)
  {
    if (one-time initialization token for musicBag != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "UserDefaults enabled as source for cached musicTabs.", v35, 2u);
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_22;
  }

  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v20 = static ICClientInfo.music;
  v21 = [static ICClientInfo.music bagProfile];
  if (!v21)
  {
LABEL_17:
    if (one-time initialization token for musicBag != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "    AMSBag was intended to be enabled as source for cached musicTabs, but bag profile and/or version were unexpectedly nil.\n    Defaulting to .userDefaults configuration.", v39, 2u);
    }

    (*(v11 + 8))(v15, v10);
LABEL_22:
    v29 = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v20 bagProfileVersion];
  if (!v23)
  {

    goto LABEL_17;
  }

  v24 = v23;
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.musicBag;
  Logger.init(_:)();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "AMSBag enabled as source for cached musicTabs.", v28, 2u);
  }

  (*(v11 + 8))(v17, v10);
  v29 = [objc_opt_self() bagForProfile:v22 profileVersion:v24];

  v30 = v29;
  v31 = 1;
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy9MusicCore0C22TabsDictionaryProviderC13Configuration33_798255D9FDA5AC20AFAC711078E2B0BDLLOSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy9MusicCore0C22TabsDictionaryProviderC13Configuration33_798255D9FDA5AC20AFAC711078E2B0BDLLOSo16os_unfair_lock_sVGMR);
  v40 = swift_allocObject();
  *(v40 + 44) = 0;

  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v29;
  *(v40 + 40) = v31;
  outlined consume of MusicTabsDictionaryProvider.Configuration(v29, 0);
  v5[2] = v40;
  return v5;
}

void closure #1 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) != 0 && !*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 1;
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = 1;
      *(a3 + 24) = 1;

      v13 = v11;
      return;
    }

    v25 = v8;
    v14 = one-time initialization token for musicBag;
    v24 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23[1] = v4;
      v19 = v18;
      v23[0] = swift_slowAlloc();
      v26 = v23[0];
      *v19 = 136315394;
      v20 = _typeName(_:qualified:)();
      v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v21, &v26);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      *(v19 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0xD000000000000021, 0x80000001004D00E0, &v26);
      _os_log_impl(&_mh_execute_header, v16, v17, "    An unexpected attempt to configure an %s instance twice using %s will be ignored.", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 8))(v10, v25);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

id MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = type metadata accessor for Logger();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v74 - v10;
  v94 = [objc_opt_self() uninitializedToken];
  v11 = *(v3 + 24);
  v12 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = v11;
  *(inited + 40) = v12;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v15 = swift_allocObject();
  v16 = a1;
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = partial apply for closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> ();
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);

  v19 = [a1 cachedValuesForKeys:isa observationToken:&v94 updateHandler:v18];
  _Block_release(v18);

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16) && (v21 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v11, v12), (v22 & 1) != 0))
  {
    outlined init with copy of Any(*(v20 + 56) + 32 * v21, aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDys11AnyHashableVypGGGMd, &_sSDySSSaySDys11AnyHashableVypGGGMR);
    if (swift_dynamicCast())
    {
      v23 = *&v96[0];
      v24 = one-time initialization token for musicBag;

      if (v24 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v25 = static OS_os_log.musicBag;
        v26 = v90;
        Logger.init(_:)();

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v27, v28))
        {

          (*(v91 + 8))(v26, v92);
          return v16;
        }

        v77 = v28;
        v78 = v27;
        v29 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v97 = v75;
        v76 = v29;
        *v29 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
        v30 = static _DictionaryStorage.copy(original:)();
        v31 = v30;
        v32 = 0;
        v33 = *(v23 + 64);
        v79 = v23 + 64;
        v34 = 1 << *(v23 + 32);
        v35 = v34 < 64 ? ~(-1 << v34) : -1;
        v36 = v35 & v33;
        v37 = (v34 + 63) >> 6;
        v89 = "v16@?0@NSDictionary8";
        v84 = v30 + 64;
        v82 = v16;
        v83 = v23;
        v81 = v30;
        v80 = v37;
        if ((v35 & v33) == 0)
        {
          break;
        }

        while (1)
        {
          v38 = __clz(__rbit64(v36));
          v36 &= v36 - 1;
LABEL_16:
          v41 = v38 | (v32 << 6);
          v42 = *(v23 + 56);
          v43 = (*(v23 + 48) + 16 * v41);
          v44 = v43[1];
          v87 = *v43;
          v88 = v41;
          v45 = *(v42 + 8 * v41);
          v23 = *(v45 + 16);
          if (v23)
          {
            v86 = v36;
            v93 = _swiftEmptyArrayStorage;
            v85 = v44;

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
            v9 = v93;
            v46 = 32;
            do
            {
              v47 = *(v45 + v46);
              *&v95[0] = 25705;
              *(&v95[0] + 1) = 0xE200000000000000;

              AnyHashable.init<A>(_:)();
              if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v49 & 1) != 0))
              {
                outlined init with copy of Any(*(v47 + 56) + 32 * v48, v95);
                outlined destroy of AnyHashable(aBlock);
                outlined init with take of Any(v95, v96);
                outlined init with copy of Any(v96, aBlock);
                if (swift_dynamicCast())
                {
                  v51 = *(&v95[0] + 1);
                  v50 = *&v95[0];
                }

                else
                {
                  *&v95[0] = 0;
                  *(&v95[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(23);
                  v52._object = (v89 | 0x8000000000000000);
                  v52._countAndFlagsBits = 0xD000000000000014;
                  String.append(_:)(v52);
                  _print_unlocked<A, B>(_:_:)();
                  v53._countAndFlagsBits = 62;
                  v53._object = 0xE100000000000000;
                  String.append(_:)(v53);

                  v51 = *(&v95[0] + 1);
                  v50 = *&v95[0];
                }

                __swift_destroy_boxed_opaque_existential_0Tm(v96);
              }

              else
              {
                outlined destroy of AnyHashable(aBlock);

                v50 = 0x204449206261743CLL;
                v51 = 0xEF3E746E65736261;
              }

              v93 = v9;
              v55 = *(v9 + 2);
              v54 = *(v9 + 3);
              if (v55 >= v54 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
                v9 = v93;
              }

              *(v9 + 2) = v55 + 1;
              v56 = &v9[16 * v55];
              *(v56 + 4) = v50;
              *(v56 + 5) = v51;
              v46 += 8;
              --v23;
            }

            while (v23);

            v16 = v82;
            v31 = v81;
            v37 = v80;
            v36 = v86;
            v57 = v85;
          }

          else
          {

            v9 = _swiftEmptyArrayStorage;
          }

          v58 = v88;
          *(v84 + ((v88 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v88;
          v59 = (v31[6] + 16 * v58);
          *v59 = v87;
          v59[1] = v57;
          *(v31[7] + 8 * v58) = v9;
          v60 = v31[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            break;
          }

          v31[2] = v62;
          v23 = v83;
          if (!v36)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

LABEL_11:
      v39 = v32;
      while (1)
      {
        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v32 >= v37)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          v68 = Dictionary.description.getter();
          v70 = v69;

          v71 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v68, v70, &v97);

          v72 = v76;
          *(v76 + 1) = v71;
          v73 = v78;
          _os_log_impl(&_mh_execute_header, v78, v77, "AMSBag provided initial state of musicTabs: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v75);

          (*(v91 + 8))(v90, v92);
          return v16;
        }

        v40 = *(v79 + 8 * v32);
        ++v39;
        if (v40)
        {
          v38 = __clz(__rbit64(v40));
          v36 = (v40 - 1) & v40;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (one-time initialization token for musicBag != -1)
  {
LABEL_42:
    swift_once();
  }

  v63 = static OS_os_log.musicBag;
  Logger.init(_:)();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "AMSBag didn't provide initial state of musicTabs. No cached value was found.", v66, 2u);
  }

  (*(v91 + 8))(v9, v92);
  return v16;
}

id closure #2 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  outlined consume of MusicTabsDictionaryProvider.Configuration(*a1, *(a1 + 8));
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5 & 1;

  return a2;
}

void closure #1 in MusicTabsDictionaryProvider.musicTabs(fallingBackToBag:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (!*a1)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = (*(a2 + 40))(a1);

    goto LABEL_9;
  }

  v8 = a1[1];

  if (v8)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = String._bridgeToObjectiveC()();
  v10 = [a3 dictionaryForBagKey:v9];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v11);
  v8 = v12;

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v8;
}

uint64_t *MusicTabsDictionaryProvider.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  closure #1 in MusicTabsDictionaryProvider.deinit(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

void closure #1 in MusicTabsDictionaryProvider.deinit(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 24) = 0;

      v27 = v11;
      return;
    }

    v29 = v8;
    v13 = v12;
    v14 = one-time initialization token for musicBag;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28[2] = v4;
      v22 = v21;
      v30 = v21;
      *v20 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v24, &v30);
      v28[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v29);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

uint64_t MusicTabsDictionaryProvider.__deallocating_deinit()
{
  MusicTabsDictionaryProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_9MusicCore0A22TabsDictionaryProviderC13Configuration33_798255D9FDA5AC20AFAC711078E2B0BDLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MusicTabsDictionaryProvider.Configuration(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

double closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(a1 + 16);
    v30 = v14;
    v31 = v10;
    if (v20 && (v21 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(a3, a4), (v22 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v21, aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDys11AnyHashableVypGGGMd, &_sSDySSSaySDys11AnyHashableVypGGGMR);
      if (swift_dynamicCast())
      {
        v23 = v34;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v19 + 16);
    __chkstk_darwin();
    *(&v29 - 2) = v23;
    os_unfair_lock_lock(v24 + 11);
    partial apply for closure #1 in closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(&v24[4], aBlock);
    os_unfair_lock_unlock(v24 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      type metadata accessor for OS_dispatch_queue();
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      v27 = v33;
      v26[2] = v32;
      v26[3] = v27;
      v26[4] = v23;
      aBlock[4] = partial apply for closure #2 in closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:);
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_10_0;
      v28 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v31 + 8))(v12, v9);
      (*(v30 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void closure #1 in closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v116 = a3;
  v5 = type metadata accessor for Logger();
  v114 = *(v5 - 8);
  v115 = v5;
  __chkstk_darwin();
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v97 - v8;
  v10 = *a1;
  v11 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (one-time initialization token for musicBag != -1)
    {
      swift_once();
    }

    v52 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v120[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0xD000000000000047, 0x80000001004D0090, v120);
      _os_log_impl(&_mh_execute_header, v53, v54, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
    }

    (*(v114 + 8))(v7, v115);
    v57 = 0;
    goto LABEL_70;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v13;
  v14 = one-time initialization token for musicBag;
  swift_bridgeObjectRetain_n();
  v110 = v10;
  if (v14 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v15 = *v11;
    Logger.init(_:)();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_69;
    }

    v101 = v17;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v123 = v19;
    v105 = v18;
    *v18 = 136315394;
    v112 = a2;
    v111 = v9;
    v102 = v16;
    v100 = v19;
    if (!v12)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v20 = static _DictionaryStorage.copy(original:)();
    v21 = v20;
    v22 = 0;
    v23 = *(v12 + 64);
    v99 = v12 + 64;
    v24 = 1 << *(v12 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v11 = v25 & v23;
    v98 = (v24 + 63) >> 6;
    v117 = "v16@?0@NSDictionary8";
    v106 = v20 + 64;
    v104 = v12;
    i = v20;
    if ((v25 & v23) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v29 = v26 | (v22 << 6);
        v30 = *(v12 + 56);
        v31 = (*(v12 + 48) + 16 * v29);
        v32 = v31[1];
        v113 = *v31;
        v33 = *(v30 + 8 * v29);
        v34 = *(v33 + 16);
        if (v34)
        {
          v108 = v29;
          v109 = v11;
          v122 = _swiftEmptyArrayStorage;
          v107 = v32;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
          v9 = v122;
          v35 = 32;
          v36 = v33;
          v118 = v33;
          do
          {
            v37 = *(v36 + v35);
            *&v119[0] = 25705;
            *(&v119[0] + 1) = 0xE200000000000000;

            AnyHashable.init<A>(_:)();
            if (*(v37 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v120), v36 = v118, (v39 & 1) != 0))
            {
              outlined init with copy of Any(*(v37 + 56) + 32 * v38, v119);
              outlined destroy of AnyHashable(v120);
              outlined init with take of Any(v119, &v121);
              outlined init with copy of Any(&v121, v120);
              if (swift_dynamicCast())
              {
                v40 = *(&v119[0] + 1);
                v41 = *&v119[0];
              }

              else
              {
                *&v119[0] = 0;
                *(&v119[0] + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(23);
                v42._object = (v117 | 0x8000000000000000);
                v42._countAndFlagsBits = 0xD000000000000014;
                String.append(_:)(v42);
                _print_unlocked<A, B>(_:_:)();
                v43._countAndFlagsBits = 62;
                v43._object = 0xE100000000000000;
                String.append(_:)(v43);
                v36 = v118;

                v40 = *(&v119[0] + 1);
                v41 = *&v119[0];
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v121);
            }

            else
            {
              outlined destroy of AnyHashable(v120);

              v41 = 0x204449206261743CLL;
              v40 = 0xEF3E746E65736261;
            }

            v122 = v9;
            v45 = *(v9 + 16);
            v44 = *(v9 + 24);
            if (v45 >= v44 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
              v36 = v118;
              v9 = v122;
            }

            *(v9 + 16) = v45 + 1;
            v46 = v9 + 16 * v45;
            *(v46 + 32) = v41;
            *(v46 + 40) = v40;
            v35 += 8;
            --v34;
          }

          while (v34);

          a2 = v112;
          v12 = v104;
          v21 = i;
          v11 = v109;
          v29 = v108;
          v47 = v107;
        }

        else
        {

          v9 = _swiftEmptyArrayStorage;
        }

        *(v106 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v48 = (v21[6] + 16 * v29);
        *v48 = v113;
        v48[1] = v47;
        *(v21[7] + 8 * v29) = v9;
        v49 = v21[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_73;
        }

        v21[2] = v51;
        v9 = v111;
      }

      while (v11);
    }

    v27 = v22;
    while (1)
    {
      v22 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v22 >= v98)
      {
        goto LABEL_39;
      }

      v28 = *(v99 + 8 * v22);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v11 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v21 = 0;
LABEL_39:
  v120[0] = v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGSgMd, &_sSDySSSaySSGGSgMR);
  v58 = String.init<A>(describing:)();
  v60 = v59;

  v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v60, &v123);

  v61 = v105;
  *(v105 + 1) = v11;
  *(v61 + 6) = 2080;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v62 = static _DictionaryStorage.copy(original:)();
    v63 = v62;
    v64 = *(a2 + 64);
    v98 = a2 + 64;
    v65 = 1 << *(a2 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v64;
    v68 = (v65 + 63) >> 6;
    v117 = "v16@?0@NSDictionary8";
    v106 = v62 + 64;

    v9 = 0;
    v104 = v63;
    for (i = v68; v67; v63[2] = v91)
    {
      v69 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
LABEL_49:
      v72 = v69 | (v9 << 6);
      v73 = *(a2 + 56);
      v74 = (*(a2 + 48) + 16 * v72);
      v75 = v74[1];
      v113 = *v74;
      v12 = *(v73 + 8 * v72);
      v76 = *(v12 + 16);
      if (v76)
      {
        v108 = v72;
        v109 = v67;
        v122 = _swiftEmptyArrayStorage;
        v107 = v75;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
        v11 = v122;
        v77 = 32;
        v78 = v12;
        v118 = v12;
        do
        {
          v79 = *(v78 + v77);
          *&v119[0] = 25705;
          *(&v119[0] + 1) = 0xE200000000000000;

          AnyHashable.init<A>(_:)();
          if (*(v79 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(v120), v78 = v118, (v81 & 1) != 0))
          {
            outlined init with copy of Any(*(v79 + 56) + 32 * v80, v119);
            outlined destroy of AnyHashable(v120);
            outlined init with take of Any(v119, &v121);
            outlined init with copy of Any(&v121, v120);
            if (swift_dynamicCast())
            {
              v12 = *(&v119[0] + 1);
              v82 = *&v119[0];
            }

            else
            {
              *&v119[0] = 0;
              *(&v119[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(23);
              v83._object = (v117 | 0x8000000000000000);
              v83._countAndFlagsBits = 0xD000000000000014;
              String.append(_:)(v83);
              _print_unlocked<A, B>(_:_:)();
              v84._countAndFlagsBits = 62;
              v84._object = 0xE100000000000000;
              String.append(_:)(v84);
              v78 = v118;

              v12 = *(&v119[0] + 1);
              v82 = *&v119[0];
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v121);
          }

          else
          {
            outlined destroy of AnyHashable(v120);

            v82 = 0x204449206261743CLL;
            v12 = 0xEF3E746E65736261;
          }

          v122 = v11;
          v86 = *(v11 + 16);
          v85 = *(v11 + 24);
          if (v86 >= v85 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
            v78 = v118;
            v11 = v122;
          }

          *(v11 + 16) = v86 + 1;
          v87 = v11 + 16 * v86;
          *(v87 + 32) = v82;
          *(v87 + 40) = v12;
          v77 += 8;
          --v76;
        }

        while (v76);

        a2 = v112;
        v63 = v104;
        v68 = i;
        v67 = v109;
        v72 = v108;
        v88 = v107;
      }

      else
      {

        v11 = _swiftEmptyArrayStorage;
      }

      *(v106 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
      v89 = (v63[6] + 16 * v72);
      *v89 = v113;
      v89[1] = v88;
      *(v63[7] + 8 * v72) = v11;
      v90 = v63[2];
      v50 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v50)
      {
        goto LABEL_74;
      }
    }

    v70 = v9;
    while (1)
    {
      v9 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_72;
      }

      if (v9 >= v68)
      {

        v9 = v111;
        goto LABEL_68;
      }

      v71 = *(v98 + 8 * v9);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_49;
      }
    }
  }

  v63 = 0;
LABEL_68:
  v120[0] = v63;
  v92 = String.init<A>(describing:)();
  v94 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v92, v93, &v123);

  v95 = v105;
  *(v105 + 14) = v94;
  v96 = v102;
  _os_log_impl(&_mh_execute_header, v102, v101, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v95, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v114 + 8))(v9, v115);

  v57 = 1;
LABEL_70:
  *v116 = v57;
}

uint64_t outlined destroy of (key: AnyHashable, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double outlined consume of MusicTabsDictionaryProvider.Configuration(void *a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10029CF58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10029CF90()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10029D01C()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for OptimisticValue(0, a2, a4, a5) + 28);
  v11 = type metadata accessor for OptimisticValue.Transaction(0, a2, v9, v10);
  (*(*(v11 - 8) + 56))(a3 + v8, 1, 1, v11);
  v12 = *(*(a2 - 8) + 32);

  return v12(a3, a1, a2);
}

uint64_t OptimisticValue.underlyingValue.didset(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = __chkstk_darwin();
  v12 = &v31 - v11;
  v13 = *(v5 + 16);
  v13(&v31 - v11, v2, v4, v10);
  v14 = v2 + *(a1 + 28);
  v17 = type metadata accessor for OptimisticValue.Transaction(0, v4, v15, v16);
  if (!(*(*(v17 - 8) + 48))(v14, 1, v17))
  {
    (*(v5 + 24))(v14 + *(v17 + 28), v12, v4);
  }

  if (one-time initialization token for optimisticValue != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.optimisticValue);
  (v13)(v9, v12, v4);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136446210;
    (v31)(v7, v9, v4);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v31 = v12;
    v27 = *(v5 + 8);
    v27(v9, v4);
    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v32);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Underlying value updated to %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return (v27)(v31, v4);
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v9, v4);
    return (v30)(v12, v4);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction(255, v7, a2, a3);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = *(v7 - 8);
  v14 = __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v4 + *(a1 + 28), v9, v14);
  v17 = *(v8 - 8);
  if ((*(v17 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return (*(v13 + 16))(a4, v4, v7);
  }

  else
  {
    (*(v13 + 16))(v16, &v12[*(v8 + 32)], v7);
    (*(v17 + 8))(v12, v8);
    return (*(v13 + 32))(a4, v16, v7);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  specialized OptimisticValue.value.setter(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v11, v12, v10);
  return OptimisticValue.value.modify;
}

void OptimisticValue.value.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    OptimisticValue.underlyingValue.didset(v9, v10);
    v11 = *(v6 + 8);
    v11(v3, v8);
    v11(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    OptimisticValue.underlyingValue.didset(v9, v12);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a1;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for OptimisticValue.Transaction(0, v9, a3, a4);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v34 - v13;
  v14 = *(v9 - 8);
  __chkstk_darwin();
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v6, v9, v17);
  (v20)(v16, v35, v9);
  OptimisticValue.Transaction.init(current:projected:)(v19, v16, v9, a5);
  v21 = *(a2 + 28);
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 8))(v6 + v21, v22);
  v23 = *(v11 + 16);
  v23(v6 + v21, a5, v10);
  (*(v11 + 56))(v6 + v21, 0, 1, v10);
  if (one-time initialization token for optimisticValue != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.optimisticValue);
  v25 = v36;
  v23(v36, a5, v10);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v10);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    (*(v11 + 8))(v25, v10);
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {

    (*(v11 + 8))(v25, v10);
  }
}

uint64_t OptimisticValue.Transaction.init(current:projected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init()();
  v10 = type metadata accessor for OptimisticValue.Transaction(0, a3, v8, v9);
  v13 = *(*(a3 - 8) + 32);
  v13(a4 + *(v10 + 28), a1, a3);
  v11 = a4 + *(v10 + 32);

  return (v13)(v11, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v70, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v60 - v9;
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v60 - v12;
  v77 = *(v10 - 8);
  v14 = v77;
  __chkstk_darwin();
  v76 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v60 - v16;
  v18 = __chkstk_darwin();
  v20 = &v60 - v19;
  v21 = v7[2];
  v69 = a1;
  v62 = v21;
  v63 = v7 + 2;
  (v21)(&v60 - v19, a1, v6, v18);
  v65 = v7[7];
  v66 = v7 + 7;
  v65(v20, 0, 1, v6);
  v71 = a2;
  v22 = *(a2 + 28);
  v68 = v14;
  v23 = *(v14 + 16);
  v64 = v22;
  v24 = v10;
  v23(v17, v78 + v22, v10);
  v74 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v75 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v79 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v61 = v26;
    v28 = *(v77 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v79;
    v30 = v27(&v79[v75], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v73 + 8))(v31, v74);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v79 = v28;
    v43 = v24;
    if (one-time initialization token for optimisticValue != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.optimisticValue);
    v45 = v67;
    v46 = v69;
    v47 = v62;
    v62(v67, v69, v32);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80 = v51;
      *v50 = 136446210;
      v47(v72, v45, v32);
      v52 = v32;
      v53 = String.init<A>(describing:)();
      v55 = v54;
      (v61[1])(v45, v52);
      v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v53, v55, &v80);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Cancelled transaction: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }

    else
    {

      (v61[1])(v45, v32);
    }

    v57 = v78;
    (*(*(v70 - 8) + 24))(v78, &v46[*(v32 + 28)]);
    OptimisticValue.underlyingValue.didset(v71, v58);
    v59 = v64;
    (v79)(v57 + v64, v43);
    return v65(v57 + v59, 1, 1, v32);
  }

  v33 = v79;
  v23(v76, v79, v24);
  v34 = &v33[v75];
  v35 = v75;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v77 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v76, v6);
    v31 = v79;
    return (*(v73 + 8))(v31, v74);
  }

  v61 = v26;
  v38 = v79;
  v39 = v72;
  (v26[4])(v72, &v79[v35], v32);
  v40 = v76;
  LODWORD(v75) = static UUID.== infix(_:_:)();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v77 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v70, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v60 - v9;
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v60 - v12;
  v77 = *(v10 - 8);
  v14 = v77;
  __chkstk_darwin();
  v76 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v60 - v16;
  v18 = __chkstk_darwin();
  v20 = &v60 - v19;
  v21 = v7[2];
  v69 = a1;
  v62 = v21;
  v63 = v7 + 2;
  (v21)(&v60 - v19, a1, v6, v18);
  v65 = v7[7];
  v66 = v7 + 7;
  v65(v20, 0, 1, v6);
  v71 = a2;
  v22 = *(a2 + 28);
  v68 = v14;
  v23 = *(v14 + 16);
  v64 = v22;
  v24 = v10;
  v23(v17, v78 + v22, v10);
  v74 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v75 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v79 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v61 = v26;
    v28 = *(v77 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v79;
    v30 = v27(&v79[v75], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v73 + 8))(v31, v74);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v79 = v28;
    v43 = v24;
    if (one-time initialization token for optimisticValue != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.optimisticValue);
    v45 = v67;
    v46 = v69;
    v47 = v62;
    v62(v67, v69, v32);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80 = v51;
      *v50 = 136446210;
      v47(v72, v45, v32);
      v52 = v32;
      v53 = String.init<A>(describing:)();
      v55 = v54;
      (v61[1])(v45, v52);
      v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v53, v55, &v80);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Completed transaction: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
    }

    else
    {

      (v61[1])(v45, v32);
    }

    v57 = v78;
    (*(*(v70 - 8) + 24))(v78, &v46[*(v32 + 32)]);
    OptimisticValue.underlyingValue.didset(v71, v58);
    v59 = v64;
    (v79)(v57 + v64, v43);
    return v65(v57 + v59, 1, 1, v32);
  }

  v33 = v79;
  v23(v76, v79, v24);
  v34 = &v33[v75];
  v35 = v75;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v77 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v76, v6);
    v31 = v79;
    return (*(v73 + 8))(v31, v74);
  }

  v61 = v26;
  v38 = v79;
  v39 = v72;
  (v26[4])(v72, &v79[v35], v32);
  v40 = v76;
  LODWORD(v75) = static UUID.== infix(_:_:)();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v77 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v12 = type metadata accessor for OptimisticValue(0, v10, v10, v11);
  OptimisticValue.value.getter(v12, v13, v14, v9);
  OptimisticValue.value.getter(v12, v15, v16, v7);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v7, a3);
  v18(v9, a3);
  return v17 & 1;
}

uint64_t one-time initialization function for optimisticValue()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.optimisticValue);
  __swift_project_value_buffer(v0, static Logger.optimisticValue);
  return Logger.init(subsystem:category:)();
}

uint64_t specialized OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return OptimisticValue.underlyingValue.didset(a2, v4);
}

uint64_t type metadata completion function for OptimisticValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction(255, result, v2, v3);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptimisticValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for OptimisticValue(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for UUID();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t type metadata completion function for OptimisticValue.Transaction(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptimisticValue.Transaction(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for OptimisticValue.Transaction(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}