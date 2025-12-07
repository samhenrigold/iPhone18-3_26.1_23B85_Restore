id LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &aBlock - v7;
  swift_defaultActor_initialize();
  v2[16] = MEMORY[0x277D84F98];
  v2[17] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2232BB000, v10, v11, "LaunchServicesSatisfyingAppsDataProvider initialize", v12, 2u);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  v3[14] = a1;
  v3[15] = a2;
  v13 = type metadata accessor for LaunchServicesSatisfyingAppsDataProvider();
  v34.receiver = v3;
  v34.super_class = v13;

  v14 = objc_msgSendSuper2(&v34, sel_init);
  static TaskPriority.low.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v16);

  v17 = [objc_opt_self() defaultCenter];
  v18 = MEMORY[0x223DDF550](0xD00000000000002ELL, 0x80000002234DB3D0);
  v32 = partial apply for closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:);
  v33 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v31 = &block_descriptor_3;
  v19 = _Block_copy(&aBlock);
  v20 = v14;

  v21 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();

  v22 = MEMORY[0x223DDF550](0xD000000000000030, 0x80000002234DB420);
  v32 = partial apply for closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:);
  v33 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v31 = &block_descriptor_4;
  v23 = _Block_copy(&aBlock);
  v24 = v20;

  v25 = [v17 addObserverForName:v22 object:0 queue:0 usingBlock:v23];
  _Block_release(v23);
  swift_unknownObjectRelease();

  v26 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v24;
}

uint64_t closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), 0, 0);
}

uint64_t closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)()
{
  v85 = v0;
  v84[5] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for pommes != -1)
  {
LABEL_71:
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = type metadata accessor for OSSignposter();
  *(v0 + 240) = __swift_project_value_buffer(v2, static Signposter.pommes);
  OSSignposter.begin(name:context:)("initialAppIndexing", 18, 2u, 0, v1);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2232BB000, v4, v5, "LaunchServicesSatisfyingAppsDataProvider get installed apps", v6, 2u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  *(v0 + 88) = &type metadata for FeatureFlag;
  *(v0 + 96) = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 3;
  v8 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if ((v8 & 1) == 0)
  {
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo16LNActionMetadataCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    goto LABEL_10;
  }

  v9 = *(*(v0 + 184) + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0FF0;
  v11 = objc_opt_self();
  *(inited + 32) = [v11 showInAppStringSearchResultsProtocol];
  *(inited + 40) = [v11 playVideoProtocol];
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16LNSystemProtocolC_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;

  *(v0 + 176) = 0;
  v13 = [v9 actionsConformingToSystemProtocols:isa logicalType:2 bundleIdentifier:0 error:v0 + 176];

  v14 = *(v0 + 176);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    v17 = specialized Dictionary.compactMapValues<A>(_:)(v15);

LABEL_10:
    v18 = MEMORY[0x277D84F90];
    v19 = [objc_opt_self() enumeratorWithOptions_];
    v84[0] = v18;
    NSEnumerator.makeIterator()();
    lazy protocol witness table accessor for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, 255, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    dispatch thunk of IteratorProtocol.next()();
    v75 = v0;
    if (*(v0 + 128))
    {
      v76 = MEMORY[0x277D84F90];
      do
      {
        while (1)
        {
          outlined init with take of Any((v0 + 104), (v0 + 136));
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x277CC1E70);
          if (swift_dynamicCast())
          {
            if (*(v0 + 168))
            {
              break;
            }
          }

          dispatch thunk of IteratorProtocol.next()();
          if (!*(v0 + 128))
          {
            goto LABEL_20;
          }
        }

        MEMORY[0x223DDF820]();
        if (*((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v76 = v84[0];
        v0 = v75;
        dispatch thunk of IteratorProtocol.next()();
      }

      while (*(v75 + 128));
    }

    else
    {
      v76 = v18;
    }

LABEL_20:
    v21 = *(v0 + 216);
    v20 = *(v0 + 224);
    v22 = *(v0 + 208);

    (*(v21 + 8))(v20, v22);
    v23 = v76;
    if (v76 >> 62)
    {
      v81 = __CocoaSet.count.getter();
    }

    else
    {
      v81 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    v74 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v81 == v24)
      {

        if (v74[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
          v53 = static _DictionaryStorage.allocate(capacity:)();
        }

        else
        {
          v53 = MEMORY[0x277D84F98];
        }

        v84[0] = v53;

        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v54, 1, v84);

        v55 = v84[0];
        *(v0 + 248) = v84[0];

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v60 = v59;
          v83 = v59;
          *v58 = 136315138;
          v61 = *(v55 + 16);
          if (v61)
          {
            v80 = v59;
            v62 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v61, 0);
            v63 = specialized Sequence._copySequenceContents(initializing:)(v84, v62 + 4, v61, v55);
            v64 = v84[0];

            outlined consume of Set<String>.Iterator._Variant(v64);
            if (v63 != v61)
            {
              __break(1u);
            }

            v0 = v75;
            v60 = v80;
          }

          else
          {
            v62 = MEMORY[0x277D84F90];
          }

          v69 = MEMORY[0x223DDF850](v62, MEMORY[0x277D837D0]);
          v71 = v70;

          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v83);

          *(v58 + 4) = v72;
          _os_log_impl(&dword_2232BB000, v56, v57, "LaunchServicesSatisfyingAppsDataProvider satisfying app IDs initialized to %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x223DE0F80](v60, -1, -1);
          MEMORY[0x223DE0F80](v58, -1, -1);
        }

        v73 = *(v0 + 184);

        return MEMORY[0x2822009F8](closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v73, 0);
      }

      if ((v76 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x223DDFF80](v24, v23);
      }

      else
      {
        if (v24 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v29 = *(v23 + 8 * v24 + 32);
      }

      v30 = v29;
      v31 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v82 = MEMORY[0x223DE0590]();
      v32 = [v30 bundleIdentifier];
      if (v32)
      {
        break;
      }

      v78 = 0;
      v79 = 0;
      v25 = 0;
      v77 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
LABEL_24:
      objc_autoreleasePoolPop(v82);

      ++v24;
      if (v25)
      {
        v49 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
        }

        v51 = v49[2];
        v50 = v49[3];
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        v49[2] = v51 + 1;
        v74 = v49;
        v52 = &v49[7 * v51];
        v52[4] = v79;
        v52[5] = v25;
        v23 = v76;
        v52[6] = v78;
        v52[7] = v77;
        v52[8] = v26;
        v52[9] = v27;
        v52[10] = v28;
        v24 = v31;
      }
    }

    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v35;

    v36 = [objc_opt_self() appInfoWithApplicationRecord_];
    if (*(v17 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v25), (v38 & 1) != 0))
    {
      v28 = *(*(v17 + 56) + 8 * v37);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    if (((*(v0 + 192))(v30, v36, v28) & 1) == 0)
    {

LABEL_41:
      v78 = 0;
      v79 = 0;
      v25 = 0;
      v77 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
LABEL_42:
      v23 = v76;
      goto LABEL_24;
    }

    if ([v30 appProtectionHidden])
    {

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2232BB000, v39, v40, "LaunchServicesSatisfyingAppsDataProvider excluded hidden app from cache", v41, 2u);
        MEMORY[0x223DE0F80](v41, -1, -1);
      }

      goto LABEL_41;
    }

    v42 = [v30 bundleIdentifier];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v45;
      v78 = v44;

      v79 = v34;
      if (v36)
      {
LABEL_45:
        v46 = [v36 supportedIntents];
        v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = v17;
        v48 = [v36 supportedMediaCategories];
        v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = v47;
        v0 = v75;

        goto LABEL_42;
      }
    }

    else
    {
      v77 = 0;
      v78 = 0;
      v79 = v34;
      if (v36)
      {
        goto LABEL_45;
      }
    }

    v26 = MEMORY[0x277D84FA0];
    v27 = MEMORY[0x277D84FA0];
    goto LABEL_42;
  }

  v65 = *(v0 + 232);
  v66 = v14;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  OSSignposter.end(token:message:)(v65, 0, 0xE000000000000000);
  outlined destroy of SignpostToken(v65);

  v67 = *(v0 + 8);

  return v67();
}

{
  *(*(v0 + 184) + 128) = *(v0 + 248);

  return MEMORY[0x2822009F8](closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), 0, 0);
}

{
  v1 = *(v0 + 232);
  OSSignposter.end(token:message:)(v1, 0, 0xE000000000000000);
  outlined destroy of SignpostToken(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), a4, 0);
}

uint64_t closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)()
{
  LaunchServicesSatisfyingAppsDataProvider.installAppUpdate(bundleIds:)(*(v0 + 24));
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v2, v1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24[-2] - v7;
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  strcpy(v24, "bundleIDs");
  HIWORD(v24[2]) = 0;
  v24[3] = -385875968;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v12 & 1) == 0))
  {

    outlined destroy of AnyHashable(v25);
LABEL_14:
    v26 = 0u;
    v27 = 0u;
    return outlined destroy of MediaUserStateCenter?(&v26, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v11, &v26);
  outlined destroy of AnyHashable(v25);

  if (!*(&v27 + 1))
  {
    return outlined destroy of MediaUserStateCenter?(&v26, &_sypSgMd, &_sypSgMR);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v14 = *v25;
  v15 = Notification.userInfo.getter();
  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = v15;
  strcpy(v24, "isPlaceholder");
  HIWORD(v24[3]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(v25);
    v26 = 0u;
    v27 = 0u;
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v26);
  outlined destroy of AnyHashable(v25);

  if (!*(&v27 + 1))
  {
LABEL_18:

    return outlined destroy of MediaUserStateCenter?(&v26, &_sypSgMd, &_sypSgMR);
  }

  if ((swift_dynamicCast() & 1) == 0 || v25[0] == 1)
  {
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a2;
  v21[5] = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, a4, v21);
}

uint64_t closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), a4, 0);
}

uint64_t closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)()
{
  LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)(*(v0 + 24));
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:), v2, v1);
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)(uint64_t a1)
{
  v2 = v1;

  v4 = specialized _NativeDictionary.filter(_:)(v3, partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:));

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pommes);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_9;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = v9;
  v22 = v9;
  *v8 = 136315138;
  v11 = v4[2];
  if (!v11)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v19 = v9;
  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v11, 0);
  v20 = specialized Sequence._copySequenceContents(initializing:)(&v21, v12 + 4, v11, v4);
  v13 = v21;

  result = outlined consume of Set<String>.Iterator._Variant(v13);
  if (v20 == v11)
  {
    v10 = v19;
LABEL_8:
    v15 = MEMORY[0x223DDF850](v12, MEMORY[0x277D837D0]);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v22);

    *(v8 + 4) = v18;
    _os_log_impl(&dword_2232BB000, v6, v7, "Satisfying app IDs updated to %s to due apps uninstalled", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
LABEL_9:

    *(v2 + 128) = v4;
  }

  __break(1u);
  return result;
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.installAppUpdate(bundleIds:)(uint64_t a1)
{
  v2 = v1;
  v77[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v73 = *(v1 + 128);
  if (v4)
  {

    v5 = (a1 + 40);
    v6 = 0x277CC1000uLL;
    while (1)
    {
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = objc_allocWithZone(*(v6 + 3696));

      v74 = v9;
      v12 = MEMORY[0x223DDF550](v9, v10);
      v76[0] = 0;
      v13 = [v11 initWithBundleIdentifier:v12 allowPlaceholder:0 error:v76];

      v14 = v76[0];
      if (!v13)
      {
        v7 = v76[0];

        v8 = _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_4;
      }

      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 appInfoWithApplicationRecord_];
      v76[3] = &type metadata for FeatureFlag;
      v76[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
      v18 = swift_allocObject();
      v76[0] = v18;
      *(v18 + 16) = 4;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 48) = 3;
      v19 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v76);
      v20 = MEMORY[0x277D84F90];
      if (v19)
      {
        v21 = *(v2 + 136);
        v22 = MEMORY[0x223DDF550](v74, v10);
        v76[0] = 0;
        v23 = [v21 actionsForBundleIdentifier:v22 error:v76];

        v24 = v76[0];
        if (v23)
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNActionMetadata, 0x277D23730);
          v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v26 = v76[0];
          v27 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v20 = MEMORY[0x277D84F90];
        }
      }

      v28 = (*(v2 + 112))(v13, v17, v20);

      if ((v28 & 1) == 0)
      {

        goto LABEL_4;
      }

      v29 = v13;
      v30 = v17;
      v31 = [v29 bundleIdentifier];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v34;
        v72 = v33;

        v68 = v29;
        if (!v30)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v70 = 0;
        v72 = 0;
        v68 = v29;
        if (!v30)
        {
LABEL_17:
          v36 = v29;
          v37 = MEMORY[0x277D84FA0];
          v69 = MEMORY[0x277D84FA0];
          goto LABEL_18;
        }
      }

      v35 = [v30 supportedIntents];
      v69 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = [v30 supportedMediaCategories];
      v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_18:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = v73;
      v2 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v10);
      v40 = v73[2];
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v43 = v39;
      if (v73[3] >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v10);
        if ((v43 & 1) != (v45 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v2 = v44;
      }

      v46 = v76[0];
      v73 = v76[0];
      if (v43)
      {
        v47 = (*(v76[0] + 7) + 40 * v2);
        *v47 = v72;
        v47[1] = v70;
        v47[2] = v69;
        v47[3] = v37;
        v47[4] = v20;
      }

      else
      {
        *(v76[0] + (v2 >> 6) + 8) |= 1 << v2;
        v48 = (v46[6] + 16 * v2);
        *v48 = v74;
        v48[1] = v10;
        v49 = (v46[7] + 40 * v2);
        *v49 = v72;
        v49[1] = v70;
        v49[2] = v69;
        v49[3] = v37;
        v49[4] = v20;
        v50 = v46[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_39;
        }

        v46[2] = v52;
      }

      v2 = v67;
      v6 = 0x277CC1000;
LABEL_4:
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  if (one-time initialization token for pommes != -1)
  {
LABEL_40:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.pommes);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    v77[0] = v57;
    *v56 = 136315138;
    v59 = v73[2];
    if (v59)
    {
      v71 = v57;
      v60 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v59, 0);
      v75 = specialized Sequence._copySequenceContents(initializing:)(v76, v60 + 4, v59, v73);
      v61 = v76[0];

      outlined consume of Set<String>.Iterator._Variant(v61);
      if (v75 != v59)
      {
        __break(1u);
      }

      v2 = v67;
      v58 = v71;
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
    }

    v62 = MEMORY[0x223DDF850](v60, MEMORY[0x277D837D0]);
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v77);

    *(v56 + 4) = v65;
    _os_log_impl(&dword_2232BB000, v54, v55, "Satisfying app IDs updated to %s to due to apps installation", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x223DE0F80](v58, -1, -1);
    MEMORY[0x223DE0F80](v56, -1, -1);
  }

  *(v2 + 128) = v73;
}

void LaunchServicesSatisfyingAppsDataProvider.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void LaunchServicesSatisfyingAppsDataProvider.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LaunchServicesSatisfyingAppsDataProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), a4, 0);
}

uint64_t closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)()
{
  LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)(*(v0 + 24));
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch18AudioItemCandidateC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS21SiriInformationSearch7AppDataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_21ij7Search7lM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n06_sSS21ijvlm17VSbIgggd_SSACSbs5X13_pIegnndzo_TRSSAJSbIgggd_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v37 = a2;
  v38 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v4 + 56) + 40 * v16);
    v21 = v20[1];
    v40 = *v20;
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v18;
    v33[1] = v19;
    v34 = (*(v9 + 56) + 40 * v28);
    *v34 = v40;
    v34[1] = v21;
    v34[2] = v22;
    v34[3] = v23;
    v34[4] = v24;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v38;
    v10 = v39;
    v8 = v37;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v39 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 80);
    do
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v10 = *(v5 - 3);
      v9 = *(v5 - 2);
      v12 = *(v5 - 5);
      v11 = *(v5 - 4);
      v13 = *(v5 - 6);

      if (!v12)
      {
        break;
      }

      v30 = v11;
      v31 = v8;
      v32 = v7;
      v29 = v3;
      v14 = *a3;
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
      v17 = v14[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v20 = v15;
      if (v14[3] >= v19)
      {
        if ((a2 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a2 & 1);
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_18;
        }

        v16 = v21;
      }

      v23 = *a3;
      if (v20)
      {

        v6 = (v23[7] + 40 * v16);
        *v6 = v30;
        v6[1] = v10;
        v6[2] = v9;
        v6[3] = v31;
        v6[4] = v32;
      }

      else
      {
        v23[(v16 >> 6) + 8] |= 1 << v16;
        v24 = (v23[6] + 16 * v16);
        *v24 = v13;
        v24[1] = v12;
        v25 = (v23[7] + 40 * v16);
        *v25 = v30;
        v25[1] = v10;
        v25[2] = v9;
        v25[3] = v31;
        v25[4] = v32;
        v26 = v23[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_17;
        }

        v23[2] = v28;
      }

      v5 += 7;
      a2 = 1;
      --v3;
    }

    while (v29 != 1);
  }
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _OWORD *))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48);
    v15 = *(a3 + 56) + 40 * v13;
    v16 = *(v15 + 16);
    v29[0] = *v15;
    v29[1] = v16;
    v24 = v13;
    v17 = (v14 + 16 * v13);
    v19 = *v17;
    v18 = v17[1];
    v32 = v16;
    v30 = *(v15 + 32);
    v31 = v29[0];
    v33 = v30;

    outlined init with copy of MediaUserStateCenter?(&v31, v28, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of MediaUserStateCenter?(&v32, v28, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(&v32 + 8, v28, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(&v33, v28, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    LOBYTE(v19) = a4(v19, v18, v29);
    outlined destroy of MediaUserStateCenter?(&v31, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of MediaUserStateCenter?(&v32, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(&v32 + 8, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(&v33, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

    v8 = v27;
    if (v19)
    {
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS21SiriInformationSearch7AppDataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_21ij7Search7lM4VTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n06_sSS21ijvlm17VSbIgggd_SSACSbs5X13_pIegnndzo_TRSSAJSbIgggd_Tf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x223DE0F80](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t specialized LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v47 - v3;
  v52 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223DDFF80](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x223DDF820]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v52;
  }

  while (v5 != v4);
LABEL_21:
  if (v6 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v11 = v6 & 0xC000000000000001;
    if (i)
    {
      v12 = 0;
      v51 = MEMORY[0x277D84F90];
      do
      {
        v13 = v12;
        while (1)
        {
          if (v11)
          {
            v14 = MEMORY[0x223DDFF80](v13, v6);
          }

          else
          {
            if (v13 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v14 = *(v6 + 8 * v13 + 32);
          }

          v15 = v14;
          v12 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if ([v14 isHidden])
          {
            break;
          }

          ++v13;
          if (v12 == i)
          {
            goto LABEL_41;
          }
        }

        v16 = [v15 bundleIdentifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
        }

        v21 = *(v51 + 2);
        v20 = *(v51 + 3);
        if (v21 >= v20 >> 1)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v51);
        }

        v22 = v51;
        *(v51 + 2) = v21 + 1;
        v23 = &v22[16 * v21];
        *(v23 + 4) = v17;
        *(v23 + 5) = v19;
      }

      while (v12 != i);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

LABEL_41:
    if (!i)
    {
      break;
    }

    v24 = MEMORY[0x277D84F90];
    v25 = 0;
    while (1)
    {
      if (v11)
      {
        v26 = MEMORY[0x223DDFF80](v25, v6);
      }

      else
      {
        if (v25 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v26 = *(v6 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if ([v26 isHidden])
      {

        ++v25;
        if (v28 == i)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v29 = [v27 bundleIdentifier];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v31;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v33 = *(v24 + 2);
        v32 = *(v24 + 3);
        if (v33 >= v32 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v24);
        }

        *(v24 + 2) = v33 + 1;
        v34 = &v24[16 * v33];
        v35 = v48;
        *(v34 + 4) = v30;
        *(v34 + 5) = v35;
        if (v28 == i)
        {
          goto LABEL_58;
        }

        v25 = v28;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_58:

  v36 = type metadata accessor for TaskPriority();
  v37 = *(*(v36 - 8) + 56);
  v38 = v49;
  v37(v49, 1, 1, v36);
  type metadata accessor for MainActor();
  v39 = v50;

  v40 = static MainActor.shared.getter();
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  v41[2] = v40;
  v41[3] = v42;
  v43 = v51;
  v41[4] = v39;
  v41[5] = v43;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), v41);

  v37(v38, 1, 1, v36);

  v44 = static MainActor.shared.getter();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = v42;
  v45[4] = v39;
  v45[5] = v24;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #5 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:), v45);
}

uint64_t instantiation function for generic protocol witness table for LaunchServicesSatisfyingAppsDataProvider(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider(&lazy protocol witness table cache variable for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider, a2, type metadata accessor for LaunchServicesSatisfyingAppsDataProvider, &protocol conformance descriptor for LaunchServicesSatisfyingAppsDataProvider);
  *(a1 + 8) = result;
  return result;
}

BOOL partial apply for closure #1 in LaunchServicesSatisfyingAppsDataProvider.uninstallAppUpdate(bundleIds:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;
  return (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v5, v3) & 1) == 0;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #4 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #5 in LaunchServicesSatisfyingAppsDataProvider.appProtectionSubjectsChanged(_:for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #3 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in closure #2 in LaunchServicesSatisfyingAppsDataProvider.init(satisfies:)(a1, v4, v5, v7, v6);
}

uint64_t lazy protocol witness table accessor for type LaunchServicesSatisfyingAppsDataProvider and conformance LaunchServicesSatisfyingAppsDataProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of SignpostToken(uint64_t a1)
{
  v2 = type metadata accessor for SignpostToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

uint64_t *PegasusCacheManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static PegasusCacheManager.shared;
}

uint64_t static PegasusCacheManager.defaultDirectoryPath.getter()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v5 = [v4 URLsForDirectory:13 inDomains:1];

  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v6 + 16))
  {

    if (*(v6 + 16))
    {
      (*(v1 + 16))(v3, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v3, v0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void one-time initialization function for shared()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v19 - v1;
  v3 = [objc_opt_self() sharedPreferences];
  v4 = [v3 languageCode];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v19[5] = v6;
    v19[6] = v8;
    v19[3] = 45;
    v19[4] = 0xE100000000000000;
    v19[1] = 95;
    v19[2] = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  type metadata accessor for PegasusCacheManager(0);
  static PegasusCacheManager.defaultDirectoryPath.getter();
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v2, 0, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 0x616964656DLL;
  *(inited + 40) = 0xE500000000000000;
  v14 = type metadata accessor for AudioCacheHandler();
  v15 = swift_allocObject();
  *(inited + 72) = v14;
  *(inited + 80) = &protocol witness table for AudioCacheHandler;
  *(inited + 48) = v15;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch13CacheHandling_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_21SiriInformationSearch13CacheHandling_ptMd, &_sSS_21SiriInformationSearch13CacheHandling_ptMR);
  v17 = [objc_opt_self() clientWithIdentifier_];
  swift_allocObject();
  v18 = specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(v9, v11, v16, v2, 6, 0, v17, 1);

  static PegasusCacheManager.shared = v18;
}

_BYTE *PegasusCacheManager.__allocating_init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a8;
  v10 = a6;
  v11 = a5;
  swift_allocObject();
  v16 = specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(a1, a2, a3, a4, v11, v10, a7, v8);

  return v16;
}

uint64_t static PegasusCacheManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t PegasusCacheManager.directoryPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PegasusCacheManager.cachingEnabled.getter()
{
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
  {
    return 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
  v3 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
  v4 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
  v5 = [v2 levelForFactor:v3 withNamespaceName:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 BOOLeanValue];

  return v6;
}

_BYTE *PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(a1, a2, a3, a4, a5, a6, a7, a8);

  return v9;
}

void closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v56 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.pommes);
  v16 = a5;
  v17 = a1;
  v55 = a5;
  v18 = v17;
  v19 = a3;
  v58 = v15;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v57 = a2;
    v24 = v23;
    v53 = swift_slowAlloc();
    v59 = a1;
    v60[0] = v53;
    *v22 = 136316162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CFNotificationCenterRefaSgMd, &_sSo23CFNotificationCenterRefaSgMR);
    v25 = Optional.debugDescription.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v60);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v59 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSvSgMd, &_sSvSgMR);
    v28 = Optional.debugDescription.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v60);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    v59 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CFNotificationNameaSgMd, &_sSo18CFNotificationNameaSgMR);
    v31 = Optional.debugDescription.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v60);

    *(v22 + 24) = v33;
    *(v22 + 32) = 2080;
    v59 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSVSgMd, &_sSVSgMR);
    v34 = Optional.debugDescription.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v60);

    *(v22 + 34) = v36;
    *(v22 + 42) = 2112;
    *(v22 + 44) = v16;
    *v24 = v55;
    v37 = v16;
    _os_log_impl(&dword_2232BB000, v20, v21, "PegasusCacheManager : Received callback for kAFSiriAndDictationHistoryDeletionRequestedDarwinNotification center:%s observer:%s name: %s object:%s userInfo:%@", v22, 0x34u);
    outlined destroy of MediaUserStateCenter?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v38 = v24;
    a2 = v57;
    MEMORY[0x223DE0F80](v38, -1, -1);
    v39 = v53;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v39, -1, -1);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  if (a2)
  {

    if (PegasusCacheManager.cachingEnabled.getter())
    {
      v40 = type metadata accessor for PommesCandidateId();
      (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
      (*(*a2 + 232))(0, 0, v13, 5);
      outlined destroy of MediaUserStateCenter?(v13, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v47 = type metadata accessor for Date();
      v48 = v54;
      (*(*(v47 - 8) + 56))(v54, 1, 1, v47);
      v49 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v50 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
      v51 = [v49 initWithSuiteName_];

      (*(*a2 + 264))(v48, v51);

      outlined destroy of MediaUserStateCenter?(v48, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2232BB000, v44, v45, "PegasusCacheManager : Ignoring callback because caching is disabled", v46, 2u);
        MEMORY[0x223DE0F80](v46, -1, -1);
      }
    }
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2232BB000, v41, v42, "PegasusCacheManager : Observer for siriAndDictationHistoryDeletionRequestedCallback is nil", v43, 2u);
      MEMORY[0x223DE0F80](v43, -1, -1);
    }
  }
}

void @objc closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a1;
  v11 = a3;
  v12 = a5;
  closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback(a1, a2, a3, a4, a5);
}

id PegasusCacheManager.processResponse(domain:response:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_domainCacheHandlers);
  if (*(v4 + 16) && (v18 = a3, v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), a3 = v18, (v8 & 1) != 0))
  {
    outlined init with copy of AppDataProviding(*(v4 + 56) + 40 * v7, v19);
    outlined init with take of DomainWarmupHandling(v19, v20);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v19[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v19);
      _os_log_impl(&dword_2232BB000, v10, v11, "PegasusCacheManager : Processing response for caching domain=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x223DE0F80](v13, -1, -1);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v16 = (*(v15 + 8))(v18, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v16;
  }

  else
  {

    return a3;
  }
}

uint64_t closure #1 in PegasusCacheManager.prepare()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
    v4 = *(result + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags);
    v5 = *(**(result + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 136);

    v5(v2 + v3, v4);
  }

  return result;
}

uint64_t PegasusCacheManager.fetch(request:domainWarmup:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v53 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PommesSearchRequest(0);
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v11;
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v4;
  if ((*(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) == 0)
  {
    v14 = *(v58 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
    v15 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
    v16 = v12;
    v17 = v10;
    v18 = v8;
    v19 = a4;
    v20 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
    v21 = [v14 levelForFactor:v15 withNamespaceName:v20];

    a4 = v19;
    v8 = v18;
    v10 = v17;
    v12 = v16;
    if (!v21)
    {
      return a3(0);
    }

    v22 = [v21 BOOLeanValue];

    if (!v22)
    {
      return a3(0);
    }
  }

  if (specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD000000000000019, 0x80000002234DB560))
  {
    return a3(0);
  }

  v23 = (a1 + *(v56 + 20));
  v24 = a1;
  v26 = *v23;
  v25 = v23[1];
  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    return a3(0);
  }

  v28 = v58;
  v30 = *(v58 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer);
  v29 = *(v58 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 8);
  v47 = v24;
  v31 = *(v58 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 16);
  aBlock = v30;
  v61 = v29;
  v62 = v31;

  v32._countAndFlagsBits = v26;
  v32._object = v25;
  v33 = UtteranceNormalizer.normalize(_:preserveCase:)(v32, 0);
  object = v33._object;
  countAndFlagsBits = v33._countAndFlagsBits;

  v56 = *(v28 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
  static DispatchQoS.userInitiated.getter();
  v34 = v52;
  outlined init with copy of PommesSearchRequest(v47, v52);
  v35 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v36 = v51 + v35 + 7;
  v50 = a4;
  v51 = a3;
  v37 = v36 & 0xFFFFFFFFFFFFFFF8;
  v38 = ((v36 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v28;
  outlined init with take of PommesSearchRequest(v34, v39 + v35);
  *(v39 + v37) = v53;
  v40 = (v39 + v38);
  v41 = object;
  *v40 = countAndFlagsBits;
  v40[1] = v41;
  v42 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
  v43 = v50;
  *v42 = v51;
  v42[1] = v43;
  v64 = partial apply for closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:);
  v65 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v63 = &block_descriptor_12;
  v44 = _Block_copy(&aBlock);
  v59 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = v57;
  MEMORY[0x223DDFBF0](0, v57, v10, v44);
  _Block_release(v44);
  (*(v55 + 8))(v10, v8);
  (*(v54 + 8))(v45, v12);
}

void closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void *))
{
  v12 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v12 + 128))() & 1) == 0)
  {
    (*(*v12 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
  }

  v13 = (*(*v12 + 160))(a2, a3);
  v14 = one-time initialization token for pommes;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v17 = v15;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26[0] = v25;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v26);
    *(v20 + 12) = 2080;
    if (v13)
    {
      v21 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
      v22 = String.init<A>(describing:)();
      MEMORY[0x223DDF6D0](v22);

      v23 = 542394696;
    }

    else
    {
      v23 = 1397967181;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, 0xE400000000000000, v26);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_2232BB000, v18, v19, "PegasusCacheManager : Fetched POMMES response for key=%s : %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v25, -1, -1);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

  else
  {
  }

  a6(v13);
}

uint64_t PegasusCacheManager.store(siriRequestId:pegasusResponse:pommesResponse:waitFor:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v33 = a2;
  v36 = a7;
  v37 = a6;
  v30 = a4;
  v31 = a5;
  v32 = a1;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v11 = *(v35 - 8);
  v12 = MEMORY[0x28223BE20](v35);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD00000000000001ELL, 0x80000002234DB580);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasResponseCacheControl.getter())
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.responseCacheControl.getter();
    v18 = Apple_Parsec_Siri_V2alpha_ResponseCacheControl.canCacheDomainResponse.getter();
    v19 = v8;
    (*(v8 + 8))(v10, v7);
    if (((v18 | v17) & 1) == 0)
    {
LABEL_3:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.pommes);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2232BB000, v21, v22, "PegasusCacheManager : Pegasus response is not cacheable", v23, 2u);
        MEMORY[0x223DE0F80](v23, -1, -1);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v19 = v8;
    if ((v17 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  specialized static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(v32, v33, *(v34 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_experimentationAnalyticsManager));
  if (PegasusCacheManager.cachingEnabled.getter() & 1) == 0 || (specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD000000000000019, 0x80000002234DB5A0))
  {
LABEL_11:
    v37(0, 0);
    v24 = v35;
    return (*(v11 + 8))(v16, v24);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.responseCacheControl.getter();
  v26 = v14;
  v27 = v35;
  (*(v11 + 8))(v26, v35);
  v28 = Apple_Parsec_Siri_V2alpha_ResponseCacheControl.ttl.getter();
  (*(v19 + 8))(v10, v7);
  if (v17)
  {
    v29 = 1209600;
  }

  else
  {
    v29 = v28;
  }

  if (v28 > 0)
  {
    v29 = v28;
  }

  PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(v30, v31, v37, v36, v29);
  v24 = v27;
  return (*(v11 + 8))(v16, v24);
}

uint64_t PegasusCacheManager.store(ttl:response:waitFor:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, double a5)
{
  if ((*(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) == 0)
  {
    v11 = *(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
    v12 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
    v13 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
    v14 = [v11 levelForFactor:v12 withNamespaceName:v13];

    if (!v14)
    {
      return a3(0, 0);
    }

    v15 = [v14 BOOLeanValue];

    if (!v15)
    {
      return a3(0, 0);
    }
  }

  if (specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0xD000000000000019, 0x80000002234DB5A0))
  {
    return a3(0, 0);
  }

  return PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(a1, a2, a3, a4, a5);
}

uint64_t PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, double a5)
{
  v69 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v75 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v76 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v77 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchTime();
  v70 = *(v74 - 8);
  v14 = MEMORY[0x28223BE20](v74);
  v68 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = &v59 - v16;
  v78 = type metadata accessor for Date();
  v71 = *(v78 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x28223BE20](v78);
  v19 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  if (PommesResponse.isCachedResponse.getter())
  {
    return a3(0, 0);
  }

  v66 = a3;
  v67 = a4;
  if (a5 <= 1.0)
  {
    return v66(0, 0);
  }

  v63 = v12;
  v64 = v10;
  v65 = v9;
  v23 = v72;
  v24 = *(v72 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 8);
  v25 = *(v72 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer + 16);
  aBlock = *(v72 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer);
  v81 = v24;
  v82 = v25;

  v26._countAndFlagsBits = PommesResponse.searchRequestUtterance.getter();
  v27 = UtteranceNormalizer.normalize(_:preserveCase:)(v26, 0);
  countAndFlagsBits = v27._countAndFlagsBits;
  object = v27._object;

  v28 = PommesResponse.metadataDomainName.getter();
  v30 = v29;
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v32 = v31;
  v33 = PegasusCacheManager.processResponse(domain:response:)(v28, v30, a1);

  v34 = *(v71 + 16);
  v62 = v21;
  v35 = v21;
  v36 = v78;
  v37 = v71;
  v34(v19, v35, v78);
  v38 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v39 = (v17 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 2) = v23;
  *(v40 + 3) = v33;
  *(v40 + 4) = v32;
  v41 = object;
  *(v40 + 5) = countAndFlagsBits;
  *(v40 + 6) = v41;
  (*(v37 + 32))(&v40[v38], v19, v36);
  *&v40[v39] = a1;
  v42 = &v40[(v39 + 15) & 0xFFFFFFFFFFFFFFF8];
  v43 = v67;
  *v42 = v66;
  *(v42 + 1) = v43;

  v44 = v33;
  v45 = a1;

  v46 = specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(0x6361437265676165, 0xEF65726F74536568);
  v72 = *(v23 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
  if (v46)
  {
    v84 = partial apply for closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:);
    v85 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v81 = 1107296256;
    v82 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v83 = &block_descriptor_57;
    v47 = _Block_copy(&aBlock);

    v48 = v77;
    static DispatchQoS.unspecified.getter();
    v79 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v49 = v75;
    v50 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v48, v49, v47);
    _Block_release(v47);

    (*(v64 + 8))(v49, v50);
    (*(v76 + 8))(v48, v63);
    (*(v37 + 8))(v62, v78);
  }

  else
  {
    v51 = v68;
    static DispatchTime.now()();
    MEMORY[0x223DDF450](v51, v69);
    v70 = *(v70 + 8);
    (v70)(v51, v74);
    static DispatchQoS.background.getter();
    v84 = partial apply for closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:);
    v85 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v81 = 1107296256;
    v82 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v83 = &block_descriptor_54;
    v52 = _Block_copy(&aBlock);
    v79 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v53 = v44;
    v54 = v37;
    v55 = v75;
    v56 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v73;
    v58 = v77;
    MEMORY[0x223DDFBC0](v73, v77, v55, v52);
    _Block_release(v52);

    (*(v64 + 8))(v55, v56);
    (*(v76 + 8))(v58, v63);
    (v70)(v57, v74);
    (*(v54 + 8))(v62, v78);
  }
}

uint64_t closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(uint64_t a1, void *a2, NSObject *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t), uint64_t a8, double a9)
{
  v59 = a8;
  v60 = a7;
  v58 = a6;
  v56 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52[-v15];
  v57 = type metadata accessor for Date();
  v61 = *(v57 - 8);
  v17 = MEMORY[0x28223BE20](v57);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v52[-v21];
  v23 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v23 + 128))(v20) & 1) == 0)
  {
    (*(*v23 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
  }

  v55 = (*(*v23 + 152))(a2, a9);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v25 = v57;
  (*(v61 + 16))(v22, a5, v57);

  v26 = a2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = v28;
    v30 = v29;
    v54 = swift_slowAlloc();
    v62[0] = v54;
    *v30 = 136315650;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, a4, v62);
    *(v30 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v56 = v27;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v61 + 8))(v22, v25);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v62);

    *(v30 + 14) = v34;
    *(v30 + 22) = 2080;
    v35 = v26;
    v36 = [v35 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v62);

    *(v30 + 24) = v40;
    v41 = v56;
    _os_log_impl(&dword_2232BB000, v56, v53, "PegasusCacheManager : Store POMMES response key=%s expiration=%s : %s", v30, 0x20u);
    v42 = v54;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v42, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);

    v43 = v61;
  }

  else
  {

    v43 = v61;
    (*(v61 + 8))(v22, v25);
  }

  v44 = v55;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v46 = v45;
  (*(v43 + 8))(v19, v25);
  v47 = PommesResponse.requestId.getter();
  v49 = v48;
  PommesResponse.pommesCandidateId.getter();
  v50 = (*(*v23 + 176))(v47, v49, v16, 1, v46);
  outlined destroy of MediaUserStateCenter?(v16, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

  return v60(v44 & 1, v50);
}

void PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v25 = a4;
  v24 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - v10;
  if ((*(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) != 0 || (v12 = *(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient), v13 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361), v14 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430), v15 = [v12 levelForFactor:v13 withNamespaceName:v14], v13, v14, v15) && (v16 = objc_msgSend(v15, sel_BOOLeanValue), v15, v16))
  {
    v17 = *(v4 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
    outlined init with copy of MediaUserStateCenter?(a3, v11, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v19 = swift_allocObject();
    v20 = v24;
    v19[2] = v4;
    v19[3] = v20;
    v19[4] = a2;
    outlined init with take of PommesCandidateId?(v11, v19 + v18);
    *(v19 + ((v9 + v18 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = v25;
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:);
    *(v21 + 24) = v19;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_22;
    v22 = _Block_copy(aBlock);

    dispatch_sync(v17, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)(uint64_t a1)
{
  (*(**(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 168))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v2, "PegasusCacheManager : responseCache successfully purged", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }
}

void PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v32 - v14;
  if ((*(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) != 0 || (v16 = *(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient), v17 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361), v33 = v12, v18 = a3, v19 = a2, v20 = a1, v21 = a4, v22 = v17, v23 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430), v24 = [v16 levelForFactor:v22 withNamespaceName:v23], v22, a4 = v21, a1 = v20, a2 = v19, a3 = v18, v12 = v33, v23, v24) && (v25 = objc_msgSend(v24, sel_BOOLeanValue), v24, v25))
  {
    v26 = *(v5 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
    outlined init with copy of MediaUserStateCenter?(a3, v15, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v27 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v5;
    *(v28 + 24) = a5;
    *(v28 + 32) = a1;
    *(v28 + 40) = a2;
    outlined init with take of PommesCandidateId?(v15, v28 + v27);
    *(v28 + ((v13 + v27 + 3) & 0xFFFFFFFFFFFFFFFCLL)) = a4;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:);
    *(v29 + 24) = v28;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_32;
    v30 = _Block_copy(aBlock);

    dispatch_sync(v26, v30);
    _Block_release(v30);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

_BYTE *closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  LOBYTE(v18) = 0;
  v12 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v12 + 128))() & 1) == 0)
  {
    (*(*v12 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
    LOBYTE(v18) = 1;
  }

  (*(*v12 + 176))(a2, a3, a4, a5, a6);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v14, v15, "PegasusCacheManager : responseCache successfully purged expired entries", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  return $defer #1 () in closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(&v18, a1);
}

_BYTE *$defer #1 () in closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    return (*(**(a2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 144))();
  }

  return result;
}

void PegasusCacheManager.purge(response:reason:)(void *a1, int a2)
{
  if ((*(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) != 0 || (v5 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient), v6 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361), v7 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430), v8 = [v5 levelForFactor:v6 withNamespaceName:v7], v6, v7, v8) && (v9 = objc_msgSend(v8, sel_BOOLeanValue), v8, v9))
  {
    v10 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = a1;
    *(v11 + 32) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in PegasusCacheManager.purge(response:reason:);
    *(v12 + 24) = v11;
    v16[4] = thunk for @callee_guaranteed () -> ()partial apply;
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed () -> ();
    v16[3] = &block_descriptor_42;
    v13 = _Block_copy(v16);

    v14 = a1;

    dispatch_sync(v10, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

_BYTE *closure #1 in PegasusCacheManager.purge(response:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v12) = 0;
  v6 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache);
  if (((*(*v6 + 128))() & 1) == 0)
  {
    (*(*v6 + 136))(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath, *(a1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags));
    LOBYTE(v12) = 1;
  }

  (*(*v6 + 184))(a2, a3);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2232BB000, v8, v9, "PegasusCacheManager : responseCache successfully purged response", v10, 2u);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  return $defer #1 () in closure #1 in PegasusCacheManager.purge(response:reason:)(&v12, a1);
}

_BYTE *$defer #1 () in closure #1 in PegasusCacheManager.purge(response:reason:)(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    return (*(**(a2 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 144))();
  }

  return result;
}

void one-time initialization function for triggerCodePathUUID()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v1 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DB790);
  v2 = [v0 initWithUUIDString_];

  static PegasusCacheManager.triggerCodePathUUID = v2;
}

uint64_t closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:);

  return v9(a5, &outlined read-only object #0 of closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:));
}

uint64_t closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v16 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v4, v5, "PegasusCacheManager : Failed to cache Trial experiment with error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x2822009F8](closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:), 0, 0);
}

uint64_t closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)()
{
  v1 = v0[7];
  if (v1 && (v2 = v0[6], v3 = objc_allocWithZone(MEMORY[0x277CCAD78]), v4 = MEMORY[0x223DDF550](v2, v1), v5 = [v3 initWithUUIDString_], v0[10] = v5, v4, v5))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[11] = __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "PegasusCacheManager : Emitting Trigger Log", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    v15 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
    v10 = v5;
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:);
    v12 = v0[9];

    return v15(v12, v5);
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:);
  }

  else
  {

    v3 = closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v16 = v0;
  v1 = *(v0 + 104);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2232BB000, v3, v4, "PegasusCacheManager : Failed to emit trigger log with error=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223DE0F80](v8, -1, -1);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  else
  {
    v12 = *(v0 + 104);
  }

  v13 = *(v0 + 8);

  return v13();
}

unint64_t PegasusCacheManager.secondsSinceLastMaintenanceStarted(from:userDefaults:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v36 = 0u;
    v37 = 0u;
LABEL_9:
    v14 = &_sypSgMd;
    v15 = &_sypSgMR;
    v16 = &v36;
LABEL_20:
    outlined destroy of MediaUserStateCenter?(v16, v14, v15);
    if (one-time initialization token for overrides != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.overrides);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v36 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000002234DB5C0, &v36);
      _os_log_impl(&dword_2232BB000, v26, v27, "PegasusCacheManager : No value for %s in UserDefaults", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x223DE0F80](v29, -1, -1);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    goto LABEL_25;
  }

  v10 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DB5C0);
  v11 = [a2 valueForKey_];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    goto LABEL_9;
  }

  outlined destroy of MediaUserStateCenter?(&v36, &_sypSgMd, &_sypSgMR);
  v12 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DB5C0);
  v13 = [a2 objectForKey_];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    outlined destroy of MediaUserStateCenter?(&v36, &_sypSgMd, &_sypSgMR);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_19;
  }

  v17 = swift_dynamicCast();
  (*(v7 + 56))(v5, v17 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_19:
    v14 = &_s10Foundation4DateVSgMd;
    v15 = &_s10Foundation4DateVSgMR;
    v16 = v5;
    goto LABEL_20;
  }

  (*(v7 + 32))(v9, v5, v6);
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_28:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.pommes);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2232BB000, v31, v32, "PegasusCacheManager : Last maintenance started date is greater than now", v33, 2u);
        MEMORY[0x223DE0F80](v33, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
LABEL_25:
      v24 = 0;
      v23 = 1;
      goto LABEL_26;
    }

LABEL_32:
    swift_once();
    goto LABEL_28;
  }

  Date.timeIntervalSince(_:)();
  v19 = v18;
  v20 = v18;
  v21 = *(v7 + 8);
  v7 += 8;
  result = v21(v9, v6);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v19 <= -1.0)
  {
    __break(1u);
  }

  else if (v19 < 4294967300.0)
  {
    v23 = 0;
    v24 = v19;
LABEL_26:
    LOBYTE(v36) = v23;
    return v24 | (v23 << 32);
  }

  __break(1u);
  return result;
}

void PegasusCacheManager.updateLastMaintenanceStartedTimestamp(with:userDefaults:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  if (a2)
  {
    outlined init with copy of MediaUserStateCenter?(a1, &v11 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    isa = 0;
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v8 + 8))(v6, v7);
    }

    v10 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DB5C0);
    [a2 setObject:isa forKey:v10];
    swift_unknownObjectRelease();
  }
}

uint64_t PegasusCacheManager.runMaintenanceActivity(_:)(_xpc_activity_s *a1)
{
  v60 = a1;
  v2 = type metadata accessor for UUID();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v48 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = *(*(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache) + 16);

  Date.init()();
  v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v17 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v18 = [v16 initWithSuiteName_];

  v19 = *v1;
  v51 = *(*v1 + 256);
  v52 = v19 + 256;
  v20 = v51(v9, v18);

  v21 = *(v7 + 8);
  v53 = v9;
  v49 = v21;
  v50 = v7 + 8;
  v21(v9, v6);
  (*(*v15 + 200))(v20 | ((HIDWORD(v20) & 1) << 32));
  v22 = v59;
  Date.init()();
  v23 = *(v7 + 56);
  v54 = v6;
  v23(v22, 0, 1, v6);
  v24 = v57;
  v25 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v26 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v27 = [v25 initWithSuiteName_];

  (*(*v1 + 264))(v22, v27);
  v28 = v56;
  v29 = v58;
  outlined destroy of MediaUserStateCenter?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v59 = v14;
  outlined init with copy of MediaUserStateCenter?(v14, v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v24 + 48))(v28, 1, v29) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.pommes);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2232BB000, v31, v32, "PegasusCacheManager : Unable to log PommesCacheMaintenanceEnded because maintenanceStartedStreamUUID is missing", v33, 2u);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }
  }

  else
  {
    v34 = v55;
    (*(v24 + 32))(v55, v28, v29);
    v35 = v53;
    Date.init()();
    v36 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v37 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
    v38 = [v36 initWithSuiteName_];

    v39 = v51(v35, v38);
    v49(v35, v54);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }

    (*(*v15 + 208))(v34, 0, 0, v40, 1);
    (*(v24 + 8))(v34, v29);
  }

  if (xpc_activity_set_state(v60, 5))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.pommes);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "PegasusCacheManager : Maintenance activity is marked as done";
LABEL_20:
      _os_log_impl(&dword_2232BB000, v42, v43, v45, v44, 2u);
      MEMORY[0x223DE0F80](v44, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.pommes);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "PegasusCacheManager : Failed to set maintenance activity to done";
      goto LABEL_20;
    }
  }

  return outlined destroy of MediaUserStateCenter?(v59, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

Swift::Bool __swiftcall PegasusCacheManager.registerMaintenanceActivity()()
{
  v1 = v0;
  (*(*v0 + 296))();
  if ((PegasusCacheManager.cachingEnabled.getter() & 1) != 0 && *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_prepopulate) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "PegasusCacheManager : Registering maintenance activity", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D862C8]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 1);
    if (*MEMORY[0x277D86398])
    {
      xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86398], 1);
      xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      v8 = swift_allocObject();
      swift_weakInit();
      v21[4] = partial apply for closure #1 in PegasusCacheManager.registerMaintenanceActivity();
      v21[5] = v8;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 1107296256;
      v21[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v21[3] = &block_descriptor_46;
      v9 = _Block_copy(v21);

      v10 = String.utf8CString.getter();
      xpc_activity_register((v10 + 32), v6, v9);

      _Block_release(v9);
      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);
    swift_retain_n();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109376;
      v20 = 1;
      if ((*(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled) & 1) == 0)
      {
        v15 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
        v16 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
        v17 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
        v18 = [v15 levelForFactor:v16 withNamespaceName:v17];

        if (!v18 || (v19 = [v18 BOOLeanValue], v18, (v19 & 1) == 0))
        {
          v20 = 0;
        }
      }

      *(v14 + 4) = v20;

      *(v14 + 8) = 1024;
      *(v14 + 10) = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_prepopulate);

      _os_log_impl(&dword_2232BB000, v12, v13, "PegasusCacheManager : Unable to register maintenance activity cachingEnabled=%{BOOL}d prepopulate=%{BOOL}d", v14, 0xEu);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void closure #1 in PegasusCacheManager.registerMaintenanceActivity()(_xpc_activity_s *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    state = xpc_activity_get_state(a1);
    if (state)
    {
      if (state == 2)
      {
        if (!xpc_activity_set_state(a1, 4))
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v6 = type metadata accessor for Logger();
          __swift_project_value_buffer(v6, static Logger.pommes);
          v7 = Logger.logObject.getter();
          v8 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v7, v8))
          {
            v9 = swift_slowAlloc();
            *v9 = 0;
            _os_log_impl(&dword_2232BB000, v7, v8, "PegasusCacheManager : Failed to set maintenance activity to continue", v9, 2u);
            MEMORY[0x223DE0F80](v9, -1, -1);
          }
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.pommes);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_2232BB000, v11, v12, "PegasusCacheManager : Running maintenance activity", v13, 2u);
          MEMORY[0x223DE0F80](v13, -1, -1);
        }

        (*(*v4 + 272))(a1);
      }

      goto LABEL_28;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2232BB000, v19, v20, "PegasusCacheManager : Checking in maintenance activity", v21, 2u);
      MEMORY[0x223DE0F80](v21, -1, -1);
    }

    if (xpc_activity_copy_criteria(a1))
    {

      swift_unknownObjectRelease();
      return;
    }

    v22 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v22, *MEMORY[0x277D86288], *MEMORY[0x277D862C8]);
    xpc_dictionary_set_BOOL(v22, *MEMORY[0x277D86360], 1);
    if (*MEMORY[0x277D86398])
    {
      xpc_dictionary_set_BOOL(v22, *MEMORY[0x277D86398], 1);
      xpc_dictionary_set_string(v22, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
      xpc_activity_set_criteria(a1, v22);
      swift_unknownObjectRelease();
LABEL_28:

      return;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "PegasusCacheManager : Unable to register activity because PegasusCacheManager has not been instantiated", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PegasusCacheManager.unregisterMaintenanceActivity()()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.pommes);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2232BB000, v1, v2, "PegasusCacheManager : Unregistering maintenance activity", v3, 2u);
    MEMORY[0x223DE0F80](v3, -1, -1);
  }

  v4 = String.utf8CString.getter();
  xpc_activity_unregister((v4 + 32));
}

uint64_t PegasusCacheManager.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PegasusCacheManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void specialized static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  if (one-time initialization token for triggerCodePathUUID != -1)
  {
    swift_once();
  }

  v6 = static PegasusCacheManager.triggerCodePathUUID;
  if (static PegasusCacheManager.triggerCodePathUUID)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a1;
    v8[5] = v6;
    v8[6] = v1;
    v9 = v6;
    v10 = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:), v8);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);
    v16 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v16, v12, "PegasusCacheManager : Failed to cache Trial experiment because triggerCodePathUUID is nil", v13, 2u);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    v14 = v16;
  }
}

_BYTE *specialized PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, int a8)
{
  v9 = v8;
  v60 = a6;
  v61 = a8;
  v62 = a7;
  v63 = a1;
  v58 = a5;
  v59 = a3;
  v64 = a2;
  v10 = *v8;
  v56 = a4;
  v57 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = v48 - v12;
  v13 = type metadata accessor for URL();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v55 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15);
  v49 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v17);
  v48[1] = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_responseCache;
  type metadata accessor for ResponseCache();
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v26 = swift_allocObject();
  type metadata accessor for PommesCacheInstrumentationUtil();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v26;
  *(v25 + 16) = v27;
  *&v9[v24] = v25;
  v28 = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_experimentationAnalyticsManager;
  *&v9[v28] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v48[0] = OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue;
  type metadata accessor for OS_dispatch_queue();
  (*(v21 + 104))(v23, *MEMORY[0x277D851C8], v20);
  static OS_dispatch_queue.global(qos:)();
  (*(v21 + 8))(v23, v20);
  static DispatchQoS.unspecified.getter();
  v65 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v29 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v50 + 104))(v49, *MEMORY[0x277D85260], v51);
  v30 = v56;
  v31 = v53;
  v32 = v54;
  *&v9[v48[0]] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined init with copy of MediaUserStateCenter?(v30, v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = *(v29 + 48);
  if (v33(v32, 1, v31) == 1)
  {
    v34 = v55;
    static PegasusCacheManager.defaultDirectoryPath.getter();
    v35 = v34;
    if (v33(v32, 1, v31) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v35 = v55;
    (*(v29 + 32))(v55, v32, v31);
  }

  (*(v29 + 32))(&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_directoryPath], v35, v31);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_dbFlags] = v58;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_domainCacheHandlers] = v59;
  v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled] = v60 & 1;
  v36 = v62;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient] = v62;
  v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_prepopulate] = v61 & 1;
  v37 = v36;
  v38 = v64;

  v39 = v63;
  v40 = specialized static UtteranceNormalizer.getTriggerPhrases(locale:)(v63, v38);

  v41 = &v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_utteranceNormalizer];
  *v41 = v39;
  v41[1] = v38;
  v41[2] = v40;
  v42 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v42)
  {
    v43 = v42;
    if (*MEMORY[0x277CEF5C0])
    {
      CFNotificationCenterAddObserver(v42, v9, @objc closure #1 in variable initialization expression of static PegasusCacheManager.siriAndDictationHistoryDeletionRequestedCallback, *MEMORY[0x277CEF5C0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  v44 = *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient];
  v45 = *&v9[OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_experimentationAnalyticsManager];
  v46 = v44;
  specialized static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(v45);

  (*(*v9 + 288))();
  outlined destroy of MediaUserStateCenter?(v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v9;
}

uint64_t specialized static PegasusCacheManager.checkUserDefaultDisableCache(key:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    return 0;
  }

  v7 = MEMORY[0x223DDF550](a1, a2);
  v8 = [v6 BOOLForKey_];

  if (!v8)
  {
    return 0;
  }

  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.overrides);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315650;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000002234DA020, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    *(v12 + 22) = 1024;
    *(v12 + 24) = 1;
    _os_log_impl(&dword_2232BB000, v10, v11, "PegasusCacheManager : User default %s/%s=%{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  return 1;
}

uint64_t outlined init with copy of PommesSearchRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:)()
{
  v1 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in PegasusCacheManager.fetch(request:domainWarmup:completion:)(v5, v0 + v2, v6, v7, v8, v9);
}

void specialized static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  if (one-time initialization token for triggerCodePathUUID != -1)
  {
    swift_once();
  }

  v9 = static PegasusCacheManager.triggerCodePathUUID;
  if (static PegasusCacheManager.triggerCodePathUUID)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a1;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = v9;

    v12 = a3;
    v13 = v9;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:), v11);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v19 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v19, v15, "PegasusCacheManager : Failed to cache Trial experiment because triggerCodePathUUID is nil", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    v17 = v19;
  }
}

void partial apply for closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v1 = *(v0 + 16);

  closure #1 in PegasusCacheManager.deleteCache(requestId:pommesCandidateId:reason:)(v1);
}

_BYTE *partial apply for closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + ((*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return closure #1 in PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)(v3, v5, v6, v0 + v2, v7, v4);
}

uint64_t type metadata accessor for PegasusCacheManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for PegasusCacheManager;
  if (!type metadata singleton initialization cache for PegasusCacheManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PegasusCacheManager(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t partial apply for closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = *(v0 + 5);
  v8 = *(v0 + 6);
  v9 = *(v0 + v3);
  v10 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return closure #1 in PegasusCacheManager.store_internal(ttl:response:waitFor:completion:)(v4, v5, v7, v8, v0 + v2, v9, v11, v12, v6);
}

uint64_t partial apply for closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in static PegasusCacheManager.emitTriggerLogForPommesCaching(siriRequestId:experimentationAnalyticsManager:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in static PegasusCacheManager.cacheTrialExperimentsForTriggerLogging(_:_:)(a1, v4, v5, v6, v7);
}

uint64_t PommesAudioPluginResults.__allocating_init(audioResults:targetPlaylists:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PommesAudioPluginResults.init(audioResults:targetPlaylists:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PommesAudioPluginResults.deinit()
{

  return v0;
}

uint64_t PommesAudioPluginResults.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t PommesInsightRequestSummaryMessageDescription.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 2)
    {
      v5 = 0xD000000000000027;
    }

    v6 = 0xD000000000000024;
    if (!a1)
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000027;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PommesInsightRequestSummaryMessageDescription(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PommesInsightRequestSummaryMessageDescription.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PommesInsightRequestSummaryMessageDescription.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesInsightRequestSummaryMessageDescription()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PommesInsightRequestSummaryMessageDescription.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesInsightRequestSummaryMessageDescription(uint64_t a1)
{
  PommesInsightRequestSummaryMessageDescription.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesInsightRequestSummaryMessageDescription(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PommesInsightRequestSummaryMessageDescription.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PommesInsightRequestSummaryMessageDescription@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PommesInsightRequestSummaryMessageDescription.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PommesInsightRequestSummaryMessageDescription@<X0>(unint64_t *a1@<X8>)
{
  result = PommesInsightRequestSummaryMessageDescription.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for isFromTimeoutHandler()
{
  v0 = type metadata accessor for InsightRequestSummaryKey();
  __swift_allocate_value_buffer(v0, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  __swift_project_value_buffer(v0, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  return InsightRequestSummaryKey.init(rawValue:)();
}

uint64_t one-time initialization function for isRequestFinished()
{
  v0 = type metadata accessor for InsightRequestSummaryKey();
  __swift_allocate_value_buffer(v0, static PommesInsightRequestSummaryKey.isRequestFinished);
  __swift_project_value_buffer(v0, static PommesInsightRequestSummaryKey.isRequestFinished);
  return InsightRequestSummaryKey.init(rawValue:)();
}

uint64_t one-time initialization function for pommesError(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for InsightRequestSummaryKey();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return InsightRequestSummaryKey.init(rawValue:)();
}

uint64_t PommesInsightRequestSummaryKey.pommesError.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for InsightRequestSummaryKey();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static PommesInsightRequestSummaryKey.pommesError.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for InsightRequestSummaryKey();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t specialized PommesInsightRequestSummaryMessageDescription.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesInsightRequestSummaryMessageDescription.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription()
{
  result = lazy protocol witness table cache variable for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription;
  if (!lazy protocol witness table cache variable for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesInsightRequestSummaryMessageDescription and conformance PommesInsightRequestSummaryMessageDescription);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesInsightRequestSummaryMessageDescription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesInsightRequestSummaryMessageDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PlayRestOfThisAlbumPreflightClient.isPlayRestOfThisAlbumTask(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v9[3])
  {
    type metadata accessor for UsoTask_resume_common_MediaItem();
    if (swift_dynamicCast())
    {

      v2 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_2836956F0, a1);

      if (v2 >> 62)
      {
        goto LABEL_18;
      }

      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        while (1)
        {
          v4 = 0;
          while ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x223DDFF80](v4, v2);
            v6 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

LABEL_9:
            v9[0] = v5;
            v7 = closure #1 in PlayRestOfThisAlbumPreflightClient.isPlayRestOfThisAlbumTask(task:)(v9);

            if (v7)
            {

              return 1;
            }

            ++v4;
            if (v6 == v3)
            {
              goto LABEL_19;
            }
          }

          if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v3 = __CocoaSet.count.getter();
          if (!v3)
          {
            goto LABEL_19;
          }
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

LABEL_19:
    }
  }

  else
  {
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v9, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t closure #1 in PlayRestOfThisAlbumPreflightClient.isPlayRestOfThisAlbumTask(task:)(uint64_t *a1)
{
  v57 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v50 = &v48[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v54);
  v56 = &v48[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v58 = &v48[-v9];
  MEMORY[0x28223BE20](v8);
  v59 = &v48[-v10];
  v11 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v48[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v48[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v48[-v24];
  v53 = *a1;
  v26 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
  v51 = v7;
  if (v26)
  {
    dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
  }

  else
  {
    (*(v12 + 56))(v25, 1, 1, v11);
  }

  (*(v12 + 104))(v23, *MEMORY[0x277D5ED98], v11);
  (*(v12 + 56))(v23, 0, 1, v11);
  v27 = *(v14 + 48);
  outlined init with copy of MediaUserStateCenter?(v25, v16, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v23, &v16[v27], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v28 = *(v12 + 48);
  if (v28(v16, 1, v11) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v25, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v28(&v16[v27], 1, v11) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      goto LABEL_11;
    }

LABEL_9:
    v29 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd;
    v30 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR;
    v31 = v16;
LABEL_20:
    outlined destroy of MediaUserStateCenter?(v31, v29, v30);
    goto LABEL_21;
  }

  outlined init with copy of MediaUserStateCenter?(v16, v20, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if (v28(&v16[v27], 1, v11) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v25, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    (*(v12 + 8))(v20, v11);
    goto LABEL_9;
  }

  v32 = v52;
  (*(v12 + 32))(v52, &v16[v27], v11);
  lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v12 + 8);
  v33(v32, v11);
  outlined destroy of MediaUserStateCenter?(v23, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v25, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v33(v20, v11);
  outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  if ((v49 & 1) == 0)
  {
LABEL_21:
    v42 = 0;
    return v42 & 1;
  }

LABEL_11:
  if (dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter())
  {
    v34 = v59;
    dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();

    v36 = v56;
    v35 = v57;
    v37 = v55;
  }

  else
  {
    v37 = v55;
    v34 = v59;
    v35 = v57;
    (*(v55 + 56))(v59, 1, 1, v57);
    v36 = v56;
  }

  v38 = v58;
  (*(v37 + 104))(v58, *MEMORY[0x277D5EE50], v35);
  (*(v37 + 56))(v38, 0, 1, v35);
  v39 = *(v54 + 48);
  outlined init with copy of MediaUserStateCenter?(v34, v36, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined init with copy of MediaUserStateCenter?(v38, v36 + v39, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v40 = v38;
  v41 = *(v37 + 48);
  if (v41(v36, 1, v35) != 1)
  {
    v43 = v51;
    outlined init with copy of MediaUserStateCenter?(v36, v51, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    if (v41(v36 + v39, 1, v35) != 1)
    {
      v45 = v36 + v39;
      v46 = v50;
      (*(v37 + 32))(v50, v45, v35);
      lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, MEMORY[0x277D5EE58], MEMORY[0x277D5EE60]);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v37 + 8);
      v47(v46, v35);
      outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      v47(v43, v35);
      outlined destroy of MediaUserStateCenter?(v36, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      return v42 & 1;
    }

    outlined destroy of MediaUserStateCenter?(v58, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v59, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    (*(v37 + 8))(v43, v35);
    goto LABEL_19;
  }

  outlined destroy of MediaUserStateCenter?(v40, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v34, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  if (v41(v36 + v39, 1, v35) != 1)
  {
LABEL_19:
    v29 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd;
    v30 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR;
    v31 = v36;
    goto LABEL_20;
  }

  outlined destroy of MediaUserStateCenter?(v36, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  v42 = 1;
  return v42 & 1;
}

uint64_t PlayRestOfThisAlbumPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v106 = *v1;
  v3 = type metadata accessor for PommesSearchReason();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v103 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = (&v85 - v6);
  v7 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x28223BE20](v7);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x28223BE20](v9);
  v97 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v96 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  v20 = type metadata accessor for PommesSearchRequest(0);
  v21 = a1;
  v22 = *(a1 + *(v20 + 76));
  v23 = specialized Sequence.flatMap<A>(_:)(v22);
  v34 = v23;
  v89 = v22;
  v86 = v17;
  v87 = v13;
  v91 = v19;
  v92 = v20;
  v88 = v14;
  v90 = v21;
  if (!(v23 >> 62))
  {
    v35 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_35:

    return 1;
  }

  v35 = __CocoaSet.count.getter();
  if (!v35)
  {
    goto LABEL_35;
  }

LABEL_6:
  v36 = 0;
  while (1)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x223DDFF80](v36, v34);
      v26 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:

        return 1;
      }
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.pommes);
        v25 = 0;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v107 = 0;
          v108[0] = v29;
          *v28 = 136315138;
          v30 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v108);

          *(v28 + 4) = v33;
          _os_log_impl(&dword_2232BB000, v26, v27, "ConversionUtils.convertUserDialogActToTasks error: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x223DE0F80](v29, -1, -1);
          MEMORY[0x223DE0F80](v28, -1, -1);

          return 1;
        }

        goto LABEL_16;
      }

      v37 = *(v34 + 8 * v36 + 32);

      v26 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        goto LABEL_15;
      }
    }

    if ((*(*v1 + 80))(v37))
    {
      break;
    }

    ++v36;
    if (v26 == v35)
    {
      goto LABEL_35;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v38, static Logger.pommes);

  v85 = v39;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v100;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v108[0] = v45;
    *v44 = 136315394;
    v46 = UsoTask.verbString.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v108);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = UsoTask.baseEntityAsString.getter();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v108);

    *(v44 + 14) = v51;
    _os_log_impl(&dword_2232BB000, v40, v41, "PlayRestOfThisAlbumPreflightClient matched task: %s::%s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v45, -1, -1);
    MEMORY[0x223DE0F80](v44, -1, -1);
  }

  v52 = v91;
  v53 = v92;
  v54 = v101;
  v55 = v98;
  v56 = v99;
  v57 = v97;
  if (*(v89 + 16))
  {
    (*(v98 + 16))(v97, v89 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v99);
    v58 = v55;
    v59 = Siri_Nlu_External_Span.matcherNames.getter();
    (*(v58 + 8))(v57, v56);
    if (*(v59 + 16))
    {
      v60 = v87;
      (*(v43 + 16))(v87, v59 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v54);

      v61 = v54;
      v62 = v93;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      (*(v43 + 8))(v60, v61);
      v63 = v86;
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*(v94 + 8))(v62, v95);
      v64 = v88;
      (*(v96 + 32))(v52, v63, v88);
      static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();

      v67 = os_log_type_enabled(v65, v66);
      v53 = v92;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v108[0] = v69;
        *v68 = 136315138;
        v70 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v108);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_2232BB000, v65, v66, "Likely matched graph: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        v53 = v92;
        MEMORY[0x223DE0F80](v69, -1, -1);
        MEMORY[0x223DE0F80](v68, -1, -1);

        (*(v96 + 8))(v91, v64);
      }

      else
      {

        (*(v96 + 8))(v52, v64);
      }
    }

    else
    {

      v53 = v92;
    }
  }

  v73 = v90;
  v74 = (v90 + *(v53 + 32));
  v75 = *v74;
  v76 = v74[1];
  v77 = v102;
  PommesSearchRequest.pommesCandidateId.getter(v102);
  v78 = type metadata accessor for PommesCandidateId();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  v79 = v103;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v103);
  v80 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v73, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v75, v76, v77, v79, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000022, 0x80000002234D2410);
  (*(v104 + 8))(v79, v105);
  outlined destroy of MediaUserStateCenter?(v77, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (v80)
  {

    return v80;
  }

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_2232BB000, v82, v83, "PlayRestOfThisAlbumPreflightClient#ignore could not build PommesResponse with given parameters", v84, 2u);
    MEMORY[0x223DE0F80](v84, -1, -1);
  }

  return 1;
}

uint64_t Siri_Nlu_External_UserParse.resumeMediaItemRelevantTasks()(uint64_t a1)
{
  v2 = Siri_Nlu_External_Span.matcherNames.getter();
  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (!v1)
  {
    v11 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        while ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v2 = v11;
            goto LABEL_21;
          }

LABEL_10:
          static UsoTask_CodegenConverter.convert(task:)();
          if (v10)
          {
            type metadata accessor for UsoTask_resume_common_MediaItem();
            if (swift_dynamicCast())
            {

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v6 = v3 & 0xFFFFFFFFFFFFFF8;
            }

            else
            {
            }
          }

          else
          {

            outlined destroy of MediaUserStateCenter?(v9, &_sypSgMd, &_sypSgMR);
          }

          ++v5;
          if (v7 == v4)
          {
            goto LABEL_17;
          }
        }

        if (v5 < *(v6 + 16))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_20;
        }
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_20:
    v2 = MEMORY[0x277D84F90];
LABEL_21:
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = __CocoaSet.count.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t OpenAppOnTVPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v144 = *v1;
  v143 = type metadata accessor for PommesSearchReason();
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v140 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v139 = (&v138 - v6);
  v166 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v7 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v9 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v10 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Siri_Nlu_External_UserParse();
  v16 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for PommesSearchRequest(0);
  v18 = *(v138 + 76);
  v142 = a1;
  v19 = *(a1 + v18);
  v20 = MEMORY[0x277D84F90];
  v173 = MEMORY[0x277D84F90];
  v147 = *(v19 + 16);
  if (v147)
  {
    v21 = 0;
    v150 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v149 = v16 + 16;
    v160 = (v10 + 8);
    v161 = v13 + 16;
    v162 = (v7 + 8);
    v159 = (v13 + 8);
    v148 = (v16 + 8);
    v156 = v9;
    v155 = v12;
    v154 = v15;
    v157 = v13;
    v146 = v16;
    v145 = v19;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_162;
      }

      v22 = *(v16 + 72);
      v151 = v21;
      (*(v16 + 16))(v152, v150 + v22 * v21, v153);
      v23 = Siri_Nlu_External_Span.matcherNames.getter();
      v24 = v23;
      v163 = *(v23 + 16);
      if (v163)
      {
        break;
      }

      v26 = v20;
LABEL_39:
      v21 = v151 + 1;
      v58 = v26;

      (*v148)(v152, v153);
      specialized Array.append<A>(contentsOf:)(v58);
      v16 = v146;
      v19 = v145;
      if (v21 == v147)
      {
        v59 = v173;
        goto LABEL_42;
      }
    }

    v25 = 0;
    v26 = v20;
    v158 = v23;
    while (1)
    {
      if (v25 >= *(v24 + 16))
      {
        goto LABEL_155;
      }

      v169 = v25;
      v170 = v26;
      (*(v13 + 16))(v15, v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25, v12);
      v28 = v164;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*v160)(v28, v165);
      v29 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
      if (v3)
      {

        (*v162)(v9, v166);
        (*v159)(v15, v12);

        (*v148)(v152, v153);

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v105 = type metadata accessor for Logger();
        __swift_project_value_buffer(v105, static Logger.pommes);
        v106 = v3;
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *v109 = 138412290;
          v111 = v3;
          v112 = _swift_stdlib_bridgeErrorToNSError();
          *(v109 + 4) = v112;
          *v110 = v112;
          _os_log_impl(&dword_2232BB000, v107, v108, "#OpenAppOnTV: Error scanning for matching USO tasks. %@", v109, 0xCu);
          outlined destroy of MediaUserStateCenter?(v110, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223DE0F80](v110, -1, -1);
          MEMORY[0x223DE0F80](v109, -1, -1);
        }

        else
        {
        }

LABEL_137:
        if (one-time initialization token for pommes != -1)
        {
          goto LABEL_163;
        }

        goto LABEL_138;
      }

      v30 = v29;
      (*v162)(v9, v166);
      v31 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v33 = v32;
      v34 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      v35 = v34;
      if (v34 >> 62)
      {
        v36 = __CocoaSet.count.getter();
        if (v36)
        {
LABEL_12:
          v168 = v30;
          v172[0] = v20;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36 & ~(v36 >> 63), 0);
          if (v36 < 0)
          {
            goto LABEL_159;
          }

          v167 = 0;
          v37 = v172[0];
          if ((v35 & 0xC000000000000001) != 0)
          {
            v38 = 0;
            do
            {
              v39 = MEMORY[0x223DDFF80](v38, v35);
              v172[0] = v37;
              v40 = *(v37 + 16);
              v41 = *(v37 + 24);

              if (v40 >= v41 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v40 + 1, 1);
                v37 = v172[0];
              }

              ++v38;
              *(v37 + 16) = v40 + 1;
              v42 = (v37 + 24 * v40);
              v42[4] = v39;
              v42[5] = v31;
              v42[6] = v33;
            }

            while (v36 != v38);
          }

          else
          {
            v43 = (v35 + 32);
            do
            {
              v44 = *v43;
              v172[0] = v37;
              v46 = *(v37 + 16);
              v45 = *(v37 + 24);

              if (v46 >= v45 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
                v37 = v172[0];
              }

              *(v37 + 16) = v46 + 1;
              v47 = (v37 + 24 * v46);
              v47[4] = v44;
              v47[5] = v31;
              v47[6] = v33;
              ++v43;
              --v36;
            }

            while (v36);
          }

          v15 = v154;
          v12 = v155;
          (*v159)(v154, v155);
          v3 = v167;
          v20 = MEMORY[0x277D84F90];
          v9 = v156;
          goto LABEL_26;
        }
      }

      else
      {
        v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_12;
        }
      }

      (*v159)(v15, v12);
      v37 = v20;
LABEL_26:
      v48 = *(v37 + 16);
      v49 = *(v170 + 2);
      v50 = v49 + v48;
      v13 = v157;
      if (__OFADD__(v49, v48))
      {
        goto LABEL_156;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v170;
      if (!isUniquelyReferenced_nonNull_native || v50 > *(v170 + 3) >> 1)
      {
        if (v49 <= v50)
        {
          v53 = v49 + v48;
        }

        else
        {
          v53 = v49;
        }

        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v53, 1, v170);
      }

      v24 = v158;
      if (*(v37 + 16))
      {
        if ((*(v52 + 3) >> 1) - *(v52 + 2) < v48)
        {
          goto LABEL_160;
        }

        v54 = v52;
        swift_arrayInitWithCopy();

        v26 = v54;
        if (v48)
        {
          v55 = *(v54 + 2);
          v56 = __OFADD__(v55, v48);
          v57 = v55 + v48;
          if (v56)
          {
            goto LABEL_161;
          }

          *(v54 + 2) = v57;
        }
      }

      else
      {
        v27 = v52;

        v26 = v27;
        if (v48)
        {
          goto LABEL_157;
        }
      }

      v25 = v169 + 1;
      if (v169 + 1 == v163)
      {
        goto LABEL_39;
      }
    }
  }

  v59 = MEMORY[0x277D84F90];
LABEL_42:
  v60 = *(v59 + 16);
  if (!v60)
  {
LABEL_131:

    goto LABEL_137;
  }

  v61 = 0;
  v62 = v59 + 32;
  v164 = v59;
  v168 = v60;
  v169 = v59 + 32;
  while (1)
  {
    if (v61 >= *(v59 + 16))
    {
      goto LABEL_158;
    }

    v64 = (v62 + 24 * v61);
    v66 = *v64;
    v65 = v64[1];
    v67 = v64[2];

    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of Any?(&v173, v172);
    if (v172[3])
    {
      break;
    }

    outlined destroy of MediaUserStateCenter?(&v173, &_sypSgMd, &_sypSgMR);
    v63 = v172;
LABEL_45:
    outlined destroy of MediaUserStateCenter?(v63, &_sypSgMd, &_sypSgMR);
LABEL_46:
    if (++v61 == v60)
    {
      goto LABEL_131;
    }
  }

  type metadata accessor for UsoTask_open_common_App();
  if ((swift_dynamicCast() & 1) == 0)
  {

    v63 = &v173;
    goto LABEL_45;
  }

  v166 = v65;
  v170 = v61;

  v68 = byte_283695638;
  v69 = UsoTask.arguments.getter();
  v70 = 0x636E657265666572;
  if (v68 != 2)
  {
    v70 = 0x72656767697274;
  }

  v71 = 0xE700000000000000;
  if (v68 == 2)
  {
    v71 = 0xE900000000000065;
  }

  v72 = 0x69746E4572657375;
  if (v68)
  {
    v72 = 0x746567726174;
  }

  v73 = 0xEC00000073656974;
  if (v68)
  {
    v73 = 0xE600000000000000;
  }

  if (v68 <= 1)
  {
    v74 = v72;
  }

  else
  {
    v74 = v70;
  }

  if (v68 <= 1)
  {
    v75 = v73;
  }

  else
  {
    v75 = v71;
  }

  if (*(v69 + 16))
  {
    v76 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v75);
    v78 = v77;

    if (v78)
    {
      v79 = *(*(v69 + 56) + 8 * v76);

      v172[0] = v20;
      v167 = v66;
      v165 = v67;
      if (v79 >> 62)
      {
        v80 = __CocoaSet.count.getter();
      }

      else
      {
        v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v81 = 0;
      v163 = v20;
      while (1)
      {
        if (v80 == v81)
        {

          v20 = MEMORY[0x277D84F90];
          v172[0] = MEMORY[0x277D84F90];
          specialized Array.append<A>(contentsOf:)(v163, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
          v84 = v172[0];
          v66 = v167;
          v67 = v165;
          goto LABEL_84;
        }

        if ((v79 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v81, v79);
          v82 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v81 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_152;
          }

          v82 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            swift_once();
LABEL_138:
            v113 = type metadata accessor for Logger();
            __swift_project_value_buffer(v113, static Logger.pommes);
            v114 = Logger.logObject.getter();
            v115 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              *v116 = 0;
              _os_log_impl(&dword_2232BB000, v114, v115, "#OpenAppOnTV: No matching task.", v116, 2u);
              MEMORY[0x223DE0F80](v116, -1, -1);
            }

            return 1;
          }
        }

        type metadata accessor for UsoEntity_common_App();
        dispatch thunk of UsoValue.getAsEntity()();
        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        ++v81;
        if (v171)
        {
          MEMORY[0x223DDF820](v83);
          if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v163 = v172[0];
          v81 = v82;
        }
      }
    }

    v84 = v20;
LABEL_84:
    v59 = v164;
    v62 = v169;
  }

  else
  {

    v84 = v20;
  }

  if (!(v84 >> 62))
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v85)
    {
      goto LABEL_87;
    }

LABEL_126:

    outlined destroy of MediaUserStateCenter?(&v173, &_sypSgMd, &_sypSgMR);
LABEL_127:
    v60 = v168;
    v61 = v170;
    goto LABEL_46;
  }

  v104 = __CocoaSet.count.getter();

  if (!v104)
  {
    goto LABEL_126;
  }

LABEL_87:
  v86 = byte_283695660;
  v87 = UsoTask.arguments.getter();
  v88 = 0x636E657265666572;
  if (v86 != 2)
  {
    v88 = 0x72656767697274;
  }

  v89 = 0xE700000000000000;
  if (v86 == 2)
  {
    v89 = 0xE900000000000065;
  }

  v90 = 0x69746E4572657375;
  if (v86)
  {
    v90 = 0x746567726174;
  }

  v91 = 0xEC00000073656974;
  if (v86)
  {
    v91 = 0xE600000000000000;
  }

  if (v86 <= 1)
  {
    v92 = v90;
  }

  else
  {
    v92 = v88;
  }

  if (v86 <= 1)
  {
    v93 = v91;
  }

  else
  {
    v93 = v89;
  }

  if (*(v87 + 16))
  {
    v94 = specialized __RawDictionaryStorage.find<A>(_:)(v92, v93);
    v96 = v95;

    if (v96)
    {
      v97 = *(*(v87 + 56) + 8 * v94);

      v172[0] = v20;
      v167 = v66;
      v165 = v67;
      if (v97 >> 62)
      {
        v98 = __CocoaSet.count.getter();
      }

      else
      {
        v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v99 = 0;
      v163 = v20;
      while (v98 != v99)
      {
        if ((v97 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v99, v97);
          v100 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_153;
          }
        }

        else
        {
          if (v99 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v100 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_153;
          }
        }

        type metadata accessor for UsoEntity_common_UserEntity();
        dispatch thunk of UsoValue.getAsEntity()();
        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        ++v99;
        if (v171)
        {
          MEMORY[0x223DDF820](v101);
          if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v163 = v172[0];
          v99 = v100;
        }
      }

      v20 = MEMORY[0x277D84F90];
      v172[0] = MEMORY[0x277D84F90];
      specialized Array.append<A>(contentsOf:)(v163, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
      v102 = v172[0];
      v66 = v167;
      v59 = v164;
      v67 = v165;
    }

    else
    {

      v102 = v20;
    }

    v62 = v169;
  }

  else
  {

    v102 = v20;
  }

  if (v102 >> 62)
  {
    v103 = __CocoaSet.count.getter();
  }

  else
  {
    v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  outlined destroy of MediaUserStateCenter?(&v173, &_sypSgMd, &_sypSgMR);
  if (!v103)
  {

    goto LABEL_127;
  }

  v118 = one-time initialization token for pommes;

  if (v118 != -1)
  {
    swift_once();
  }

  v119 = type metadata accessor for Logger();
  v120 = __swift_project_value_buffer(v119, static Logger.pommes);

  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.info.getter();

  v123 = os_log_type_enabled(v121, v122);
  v167 = v66;
  v170 = v120;
  if (v123)
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v173 = v125;
    *v124 = 136315138;

    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v67, &v173);

    *(v124 + 4) = v126;
    _os_log_impl(&dword_2232BB000, v121, v122, "#OpenAppOnTV: Found matching task from NLv4 parse:\n%s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x223DE0F80](v125, -1, -1);
    MEMORY[0x223DE0F80](v124, -1, -1);
  }

  v127 = v142;
  v128 = (v142 + *(v138 + 32));
  v129 = *v128;
  v130 = v128[1];
  v131 = v139;
  PommesSearchRequest.pommesCandidateId.getter(v139);
  v132 = type metadata accessor for PommesCandidateId();
  (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  v133 = v140;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v140);
  v134 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v127, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v129, v130, v131, v133, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001ALL, 0x80000002234D24B0);
  (*(v141 + 8))(v133, v143);
  outlined destroy of MediaUserStateCenter?(v131, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (!v134)
  {
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_2232BB000, v135, v136, "Unable to construct preflight response for “open app on TV” task.", v137, 2u);
      MEMORY[0x223DE0F80](v137, -1, -1);
    }

    swift_bridgeObjectRelease_n();

    return 1;
  }

  swift_bridgeObjectRelease_n();

  return v134;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id KnowledgeFallbackInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*KnowledgeFallbackInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = KnowledgeFallbackInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

void KnowledgeFallbackInstrumentationUtil.mockStream.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t KnowledgeFallbackInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackOffered(requestId:pommesCandidateId:sessionRequestId:isPresented:offeredAgent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v12 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D59FA0]) init];
    if (v14)
    {
      v24 = v14;
      v15 = KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(a4);
      if (v15)
      {
        v16 = v15;
        [v24 setIsKnowledgeFallbackConfirmationShown:a6 & 1];
        [v24 setPommesSessionId:v16];
        if ((a7 & 0x100000000) == 0)
        {
          [v24 setOfferedAgent:a7];
        }

        [v13 setPommesKnowledgeFallbackOffered:v24];
        v17 = [objc_opt_self() processInfo];
        v18 = NSProcessInfo.isRunningUnitTests.getter();

        if (v18)
        {
          v19 = (*(*v8 + 96))();
        }

        else
        {
          v19 = [objc_opt_self() sharedStream];
        }

        [v19 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      v20 = v24;
    }

    else
    {
      v20 = v13;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.pommes);
  v24 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2232BB000, v24, v22, "Unable to log knowledge fallback offered", v23, 2u);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

LABEL_17:
}

void *specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

{
  return specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
}

void *specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D59F68]) init];
  if (v12)
  {
    v13 = v12;
    a4(21, a1, a2);
    v14 = closure #1 in Emittable.eventWrapper(requestId:pommesCandidateId:)(v11, a1, a2, a3);
    [v13 setEventMetadata_];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2232BB000, v16, v17, "Unable to initialize POMMESSchemaPOMMESClientEvent", v18, 2u);
      MEMORY[0x223DE0F80](v18, -1, -1);
    }

    return 0;
  }

  return v13;
}

void KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackAlwaysPromptShown(requestId:pommesCandidateId:sessionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D59FA8]) init];
    if (v10)
    {
      v20 = v10;
      v11 = KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(a4);
      if (v11)
      {
        v12 = v11;
        [v20 setPommesSessionId:v11];
        [v9 setPommesKnowledgeFallbackTurnOffAlwaysPromptConfirmationShown:v20];
        v13 = [objc_opt_self() processInfo];
        v14 = NSProcessInfo.isRunningUnitTests.getter();

        if (v14)
        {
          v15 = (*(*v6 + 96))();
        }

        else
        {
          v15 = [objc_opt_self() sharedStream];
        }

        [v15 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v16 = v20;
    }

    else
    {
      v16 = v9;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2232BB000, v20, v18, "Unable to log knowledge fallback Turn Off Always Prompt confirmation shown", v19, 2u);
    MEMORY[0x223DE0F80](v19, -1, -1);
  }

LABEL_15:
}

void KnowledgeFallbackInstrumentationUtil.logKnowledgeFallbackConfirmationOutcome(requestId:pommesCandidateId:sessionRequestId:outcome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class *a7, SEL *a8, const char *a9)
{
  v12 = v9;
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3, specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:));
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(*a7) init];
    if (v17)
    {
      v27 = v17;
      v18 = KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(a4);
      if (v18)
      {
        v19 = v18;
        [v27 setConfirmationOutcome:a6];
        [v27 setPommesSessionId:v19];
        [v16 *a8];
        v20 = [objc_opt_self() processInfo];
        v21 = NSProcessInfo.isRunningUnitTests.getter();

        if (v21)
        {
          v22 = (*(*v12 + 96))();
        }

        else
        {
          v22 = [objc_opt_self() sharedStream];
        }

        [v22 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v23 = v27;
    }

    else
    {
      v23 = v16;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2232BB000, v27, v25, a9, v26, 2u);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

LABEL_15:
}

id KnowledgeFallbackInstrumentationUtil.getPommesSessionId(sessionRequestId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (v12)
  {
    UUID.init(uuidString:)();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v11, v4, v5);
      (*(**(v1 + 24) + 88))(21, v11);
      v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v20 = [v18 initWithNSUUID_];

      v21 = *(v6 + 8);
      v21(v9, v5);
      v21(v11, v5);
      return v20;
    }

    outlined destroy of UUID?(v4);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v14, v15, "Unable to get POMMES session ID", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  return 0;
}

uint64_t static KnowledgeFallbackInstrumentationUtil.genAIAgent(for:)(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeAssistantProvider.LLMProvider();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (MEMORY[0x277D0D678] && v6 == *MEMORY[0x277D0D678])
  {
    return 2;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t KnowledgeFallbackInstrumentationUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized Emittable.makeComponentIdAndEmitRequestLink(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[3] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[12])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[3] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[12])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[4] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[16])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[3] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[12])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[3] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[12])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[3] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[12])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[3] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[12])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

{
  v5 = v4;
  v78 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  if (!a3)
  {
    goto LABEL_4;
  }

  UUID.init(uuidString:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of UUID?(v11);
LABEL_4:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79 = v28;
      *v27 = 136315138;
      if (a3)
      {
        v29 = a2;
      }

      else
      {
        v29 = 7104878;
      }

      if (a3)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v79);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v25, v26, "[SELF Logging] Unable to create UUID for derived SELF ids from requestId: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DE0F80](v28, -1, -1);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return UUID.init()();
  }

  v75 = *(v13 + 32);
  v76 = v13 + 32;
  v75(v23, v11, v12);
  v33 = v77;
  (*(*v5[3] + 88))(a1, v23);
  if (AFDeviceSupportsSAE())
  {
    v34 = 43;
  }

  else
  {
    v34 = 1;
  }

  v35 = _s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(a1, v33, v34);
  if (v35)
  {
    v36 = v35;
    v37 = [objc_opt_self() processInfo];
    v38 = NSProcessInfo.isRunningUnitTests.getter();

    if (v38)
    {
      v39 = ((*v5)[12])();
    }

    else
    {
      v39 = [objc_opt_self() sharedStream];
    }

    [v39 emitMessage_];
    swift_unknownObjectRelease();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.pommes);
    (*(v13 + 16))(v19, v33, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79 = v73;
      *v58 = 136315394;
      v59 = SISchemaComponentName.description.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v74 = v23;
      v65 = *(v13 + 8);
      v65(v19, v12);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v79);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_2232BB000, v56, v57, "[SELF Logging] Logged request link event with component:%s, ID: %s", v58, 0x16u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v67, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v65(v74, v12);
    }

    else
    {

      v68 = *(v13 + 8);
      v68(v19, v12);
      v68(v23, v12);
    }

    v70 = v77;
    v69 = v78;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    (*(v13 + 16))(v16, v33, v12);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v74 = v23;
      v44 = v43;
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136315394;
      v46 = SISchemaComponentName.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v79);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v13 + 8);
      v52(v16, v12);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v79);

      *(v44 + 14) = v53;
      _os_log_impl(&dword_2232BB000, v41, v42, "[SELF Logging] Unable to log request link event with component:%s, ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      v54 = v45;
      v33 = v77;
      MEMORY[0x223DE0F80](v54, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);

      v52(v74, v12);
    }

    else
    {

      v71 = *(v13 + 8);
      v71(v16, v12);
      v71(v23, v12);
    }

    v69 = v78;
    v70 = v33;
  }

  return (v75)(v69, v70, v12);
}

NSObject *_s21SiriInformationSearch9EmittablePAAE21buildRequestLinkEvent15sourceComponent0I4UUID06targetJ00lK0So08SISchemafG0CSgSo0mJ4NameV_10Foundation0K0VAmPtFAA06PommesF19InstrumentationUtilC_Tt3g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v5)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315394;
      v21 = SISchemaComponentName.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v44);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = SISchemaComponentName.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_2232BB000, v6, v18, "Failed to create RequestLink event for source component: %s and target component: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v20, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v7)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = SISchemaComponentName.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2232BB000, v28, v29, "Failed to create source link event for source component: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

LABEL_14:
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v9)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      v41 = SISchemaComponentName.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2232BB000, v37, v38, "Failed to create target link event for target component: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x223DE0F80](v40, -1, -1);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  [v8 setComponent_];
  v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithNSUUID_];

  [v8 setUuid_];
  [v10 setComponent_];
  v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithNSUUID_];

  [v10 setUuid_];
  [v6 setSource:v8];
  [v6 setTarget:v10];

  return v6;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

Swift::Int DataProviderError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AnyDataProvider.oneTimeInit.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t AnyDataProvider.name.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t AnyDataProvider.__allocating_init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t (*implicit closure #1 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
}

uint64_t (*implicit closure #3 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
}

uint64_t (*implicit closure #5 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
}

uint64_t (*implicit closure #7 in AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
}

uint64_t AnyDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 96), *(v2 + 104), &v29);
    _os_log_impl(&dword_2232BB000, v7, v8, "%s preparing ...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  v11 = *(v2 + 96);
  v12 = *(v2 + 104);
  v29 = v11;
  v30 = v12;

  MEMORY[0x223DDF6D0](0x7261706572705F20, 0xEB00000000292865);
  v13 = v29;
  v14 = v30;
  Date.init()();
  v15 = &v5[v3[5]];
  *v15 = "SiriInformationSearch/DataProvider.swift";
  *(v15 + 1) = 40;
  v15[16] = 2;
  *&v5[v3[6]] = 61;
  v16 = &v5[v3[7]];
  *v16 = "prepare(dispatchQueue:)";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v17 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v13, v14);
  v19 = v18;

  v20 = &v5[v3[8]];
  *v20 = v17;
  v20[1] = v19;
  v21 = v31;
  (*(v2 + 16))(v28);
  if (!v21)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v29);
      _os_log_impl(&dword_2232BB000, v22, v23, "%s prepare complete", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223DE0F80](v25, -1, -1);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v5, 0);
  return outlined destroy of PerformanceUtil.Ticket(v5);
}

uint64_t AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v21 = a4;
  v18 = a1;
  v19 = a2;
  v22 = a5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static PerformanceUtil.shared;
  v11 = *(v5 + 104);
  v23 = *(v5 + 96);
  v24 = v11;

  v12 = MEMORY[0x223DDF6D0](0x2868637465665F20, 0xE900000000000029);
  v13 = v23;
  v14 = v24;
  MEMORY[0x28223BE20](v12);
  v17 = v19;
  v15 = type metadata accessor for Optional();
  Date.init()();
  LOBYTE(v17) = 2;
  (*(*v10 + 200))(v13, v14, 0, v9, "SiriInformationSearch/DataProvider.swift", 40, 2, 102, "fetch(for:assistantData:serviceHelper:dispatchQueue:)", 53, v17, partial apply for closure #1 in AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:), &v18 - 8, v15);

  return (*(v7 + 8))(v9, v6);
}

uint64_t AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v46 = a2;
  v52 = a6;
  v9 = *v6;
  v10 = type metadata accessor for PerformanceUtil.Ticket(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v9 + 80);
  v51 = type metadata accessor for Optional();
  v15 = *(v51 - 8);
  v16 = MEMORY[0x28223BE20](v51);
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  (*(*(v14 - 8) + 56))(&v45 - v18, 1, 1, v14);
  v20 = v7[13];
  v50 = v7[12];
  v53 = v50;
  v54 = v20;

  MEMORY[0x223DDF6D0](0x6420686374656620, 0xEB00000000617461);
  v21 = v53;
  v22 = v54;
  Date.init()();
  v23 = &v13[v11[7]];
  *v23 = "SiriInformationSearch/DataProvider.swift";
  *(v23 + 1) = 40;
  v23[16] = 2;
  *&v13[v11[8]] = 116;
  v24 = &v13[v11[9]];
  *v24 = "fetch(for:assistantData:serviceHelper:dispatchQueue:timeout:)";
  *(v24 + 1) = 61;
  v24[16] = 2;
  v25 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v21, v22);
  v27 = v26;

  v28 = &v13[v11[10]];
  *v28 = v25;
  v28[1] = v27;
  MEMORY[0x223DDFB80](a5);
  (*(*v7 + 224))(a5);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v13, 0);
  if (static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v29 = v49;
    (*(*v7 + 232))(v45, v46, v47, v48);
    v30 = v51;
    (*(v15 + 40))(v19, v29, v51);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53 = v35;
      *v34 = 136315394;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v20, &v53);
      *(v34 + 12) = 2080;
      swift_beginAccess();
      (*(v15 + 16))(v29, v19, v30);
      v36 = String.init<A>(describing:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v53);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_2232BB000, v32, v33, "%s fetch complete %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v35, -1, -1);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    outlined destroy of PerformanceUtil.Ticket(v13);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.pommes);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53 = v43;
      *v42 = 136315138;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v20, &v53);
      _os_log_impl(&dword_2232BB000, v40, v41, "%s timeout while waiting for fetch", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x223DE0F80](v43, -1, -1);
      MEMORY[0x223DE0F80](v42, -1, -1);
    }

    outlined destroy of PerformanceUtil.Ticket(v13);
    v30 = v51;
  }

  swift_beginAccess();
  (*(v15 + 16))(v52, v19, v30);
  return (*(v15 + 8))(v19, v30);
}

uint64_t AnyDataProvider.deinit()
{

  return v0;
}

uint64_t AnyDataProvider.__deallocating_deinit()
{
  AnyDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyDataProvider.waitForPrepare(timeout:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContinuousClock();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = 1;
  ContinuousClock.init()();
  v18 = &v22;
  v19 = v2;
  v20 = a1;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  Clock.measure(_:)();
  (*(v5 + 8))(v7, v4);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315394;
    v13 = Duration.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 96), *(v2 + 104), &v21);
    _os_log_impl(&dword_2232BB000, v9, v10, "Waited %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return v22;
}

uint64_t *specialized AnyDataProvider.init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v3[10] = dispatch_group_create();
  *(v3 + 44) = 0;
  v8 = *(v7 + 80);
  v3[2] = implicit closure #1 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[3] = v9;
  v3[4] = implicit closure #3 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[5] = v10;
  v3[6] = implicit closure #5 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[7] = v11;
  v3[8] = implicit closure #7 in AnyDataProvider.init<A>(provider:)(a1, v8, a2, a3);
  v3[9] = v12;
  swift_getMetatypeMetadata();
  v3[12] = String.init<A>(describing:)();
  v3[13] = v13;
  return v3;
}

uint64_t *specialized AnyDataProvider.__allocating_init<A>(provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyDataProvider(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(a1, a2, a3);
}

uint64_t partial apply for closure #1 in AnyDataProvider.waitForPrepare(timeout:)()
{
  v1 = *(v0 + 16);
  result = MEMORY[0x223DDFB80](*(v0 + 32));
  *v1 = result & 1;
  return result;
}

uint64_t dispatch thunk of DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *(a6 + 32);
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v10 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v10;
  v12[4] = *(a2 + 64);
  v13 = v6;
  v14 = v7;
  return v8(a1, v12, a3, a4, a5);
}

uint64_t dispatch thunk of AnyDataProvider.prepare(dispatchQueue:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

uint64_t dispatch thunk of AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 232);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t dispatch thunk of AnyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:timeout:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 240);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

BOOL UsoTask.isSmartPlayTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v9)
  {
    outlined destroy of Any?(v8);
    return 0;
  }

  type metadata accessor for UsoTask_play_uso_NoEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_283695520, v0);

  v2 = v1 >> 62 ? __CocoaSet.count.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2)
  {
    return 0;
  }

  v3 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c13Entity_uso_NoP0C_Tt3g5(MEMORY[0x277D84F90], byte_283695548, v0);

  v4 = v3 >> 62 ? __CocoaSet.count.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
    return 0;
  }

  v5 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C26Entity_common_EventTriggerC_Tt3g5(MEMORY[0x277D84F90], byte_283695570, v0);

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 == 0;
}

uint64_t UsoTask.isOfflineSupportedPlayTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(&v3, &v1);
  if (*(&v2 + 1))
  {
    type metadata accessor for UsoTask_play_uso_NoEntity();
    if (swift_dynamicCast())
    {

      outlined destroy of Any?(&v3);
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  v1 = v3;
  v2 = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for UsoTask_play_common_MediaItem();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  return 0;
}

BOOL UsoTask.isSummarizeMediaTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v5)
  {
    outlined destroy of Any?(v4);
    goto LABEL_5;
  }

  type metadata accessor for UsoTask_summarise_common_MediaItem();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  v0 = v3;
LABEL_6:
  v1 = v0 != 0;

  return v1;
}

uint64_t Siri_Nlu_External_UserParse.firstSmartPlayTask()(uint64_t a1)
{
  v2 = Siri_Nlu_External_Span.matcherNames.getter();
  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (v1)
  {
    return result;
  }

  if (v3 >> 62)
  {
    goto LABEL_107;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_108:
    v58 = 0;
    goto LABEL_109;
  }

LABEL_4:
  v50 = v5;
  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v8 = v3 & 0xFFFFFFFFFFFFFF8;
  v51 = v3;
  v56 = v3 & 0xC000000000000001;
  v57 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7)
    {
      MEMORY[0x223DDFF80](v6, v3);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_105;
      }
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_106;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_105;
      }
    }

    static UsoTask_CodegenConverter.convert(task:)();
    if (!v59[3])
    {

      outlined destroy of Any?(v59);
      goto LABEL_6;
    }

    v58 = v10;
    type metadata accessor for UsoTask_play_uso_NoEntity();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    v11 = byte_283698340;
    v12 = UsoTask.arguments.getter();
    v13 = 0x636E657265666572;
    if (v11 != 2)
    {
      v13 = 0x72656767697274;
    }

    v14 = 0xE700000000000000;
    if (v11 == 2)
    {
      v14 = 0xE900000000000065;
    }

    v15 = 0x69746E4572657375;
    if (v11)
    {
      v15 = 0x746567726174;
    }

    v16 = 0xE600000000000000;
    if (!v11)
    {
      v16 = 0xEC00000073656974;
    }

    v17 = v11 <= 1 ? v15 : v13;
    v18 = v11 <= 1 ? v16 : v14;
    if (*(v12 + 16))
    {
      break;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_47:
    if (v27 >> 62)
    {
      v46 = __CocoaSet.count.getter();

      if (v46)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v28)
      {
        goto LABEL_85;
      }
    }

    v29 = byte_283698368;
    v30 = UsoTask.arguments.getter();
    v31 = 0x636E657265666572;
    if (v29 != 2)
    {
      v31 = 0x72656767697274;
    }

    v32 = 0xE700000000000000;
    if (v29 == 2)
    {
      v32 = 0xE900000000000065;
    }

    v33 = 0x69746E4572657375;
    if (v29)
    {
      v33 = 0x746567726174;
    }

    v34 = 0xE600000000000000;
    if (!v29)
    {
      v34 = 0xEC00000073656974;
    }

    if (v29 <= 1)
    {
      v35 = v33;
    }

    else
    {
      v35 = v31;
    }

    if (v29 <= 1)
    {
      v36 = v34;
    }

    else
    {
      v36 = v32;
    }

    if (*(v30 + 16))
    {
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
      v39 = v38;

      if (v39)
      {
        v53 = v6;
        v40 = *(*(v30 + 56) + 8 * v37);

        v59[0] = MEMORY[0x277D84F90];
        if (v40 >> 62)
        {
          v41 = __CocoaSet.count.getter();
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = 0;
        v55 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v41 == v42)
          {

            v59[0] = MEMORY[0x277D84F90];
            specialized Array.append<A>(contentsOf:)(v55);
            v44 = v59[0];
            v5 = v50;
            v3 = v51;
            v6 = v53;
            goto LABEL_82;
          }

          if ((v40 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DDFF80](v42, v40);
            v3 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_104;
            }

            v3 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              v5 = __CocoaSet.count.getter();
              if (!v5)
              {
                goto LABEL_108;
              }

              goto LABEL_4;
            }
          }

          type metadata accessor for UsoEntity_uso_NoEntity();
          dispatch thunk of UsoValue.getAsEntity()();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          ++v42;
          if (v60)
          {
            MEMORY[0x223DDF820](v43);
            if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v55 = v59[0];
            v42 = v3;
          }
        }
      }

      v44 = MEMORY[0x277D84F90];
LABEL_82:
      v7 = v56;
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    if (v44 >> 62)
    {
      v47 = __CocoaSet.count.getter();

      if (v47)
      {
LABEL_85:

        v8 = v57;
        goto LABEL_6;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v45)
      {
        goto LABEL_85;
      }
    }

    v48 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C26Entity_common_EventTriggerC_Tt3g5(MEMORY[0x277D84F90], byte_283698390, v58);

    if (v48 >> 62)
    {
      v49 = __CocoaSet.count.getter();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v49)
    {
      goto LABEL_109;
    }

    v8 = v57;
LABEL_6:
    if (v6 == v5)
    {
      v58 = 0;
      goto LABEL_109;
    }
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_46:
    v7 = v56;
    goto LABEL_47;
  }

  v52 = v6;
  v22 = *(*(v12 + 56) + 8 * v19);

  v59[0] = MEMORY[0x277D84F90];
  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  v54 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v23 == v24)
    {

      v59[0] = MEMORY[0x277D84F90];
      specialized Array.append<A>(contentsOf:)(v54);
      v27 = v59[0];
      v5 = v50;
      v3 = v51;
      v6 = v52;
      goto LABEL_46;
    }

    if ((v22 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x223DDFF80](v24, v22);
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_100;
    }

LABEL_35:
    type metadata accessor for UsoEntity_common_UserEntity();
    dispatch thunk of UsoValue.getAsEntity()();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    ++v24;
    if (v60)
    {
      MEMORY[0x223DDF820](v26);
      if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v54 = v59[0];
      v24 = v25;
    }
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_101;
  }

  v25 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_35;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_109:

  return v58;
}