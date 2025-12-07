uint64_t sub_220015538(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_220015550@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2200155E8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_220015628()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220015668()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2200156B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200156F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_220015790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2200157DC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_220015838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220015908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2200159D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220015A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_220015B48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220015BF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_220015D34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void TNCFollowUpController.__allocating_init(ldmManager:storage:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(MEMORY[0x277CFE500]);
  v6 = MEMORY[0x223D75470](0xD000000000000011, 0x800000022002B4F0);
  v7 = [v5 initWithClientIdentifier_];

  if (v7)
  {
    *(v4 + 16) = v7;
    sub_220015538(a1, v4 + 24);
    sub_220015538(a2, v4 + 64);
  }

  else
  {
    __break(1u);
  }
}

void TNCFollowUpController.init(ldmManager:storage:)(__int128 *a1, __int128 *a2)
{
  v5 = objc_allocWithZone(MEMORY[0x277CFE500]);
  v6 = MEMORY[0x223D75470](0xD000000000000011, 0x800000022002B4F0);
  v7 = [v5 initWithClientIdentifier_];

  if (v7)
  {
    *(v2 + 16) = v7;
    sub_220015538(a1, v2 + 24);
    sub_220015538(a2, v2 + 64);
  }

  else
  {
    __break(1u);
  }
}

uint64_t TNCFollowUpController.pendingFollowUpItem()@<X0>(uint64_t *a1@<X8>)
{
  v2 = TNCFollowUpController.pendingCoreFollowUpItem()();
  if (v2)
  {
    TNCFollowUpItem.init(flItem:)(v2, a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for TNCFollowUpItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

void *TNCFollowUpController.pendingCoreFollowUpItem()()
{
  v59[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v52 - v6;
  v8 = *(v0 + 16);
  v59[0] = 0;
  v9 = [v8 pendingFollowUpItems_];
  v10 = v59[0];
  if (!v9)
  {
    v25 = v59[0];
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static TNCLogger.default);
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v26;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_220014000, v29, v30, "Failed to get pending follow up items with error: %@", v31, 0xCu);
      outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D75DE0](v32, -1, -1);
      MEMORY[0x223D75DE0](v31, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v11 = v9;
  type metadata accessor for FLFollowUpController(0, &lazy cache variable for type metadata for FLFollowUpItem, 0x277CFE508);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v10;

  v54 = v5;
  v55 = v2;
  v53 = v0;
  if (v12 >> 62)
  {
LABEL_34:
    if (v12 < 0)
    {
      v50 = v12;
    }

    else
    {
      v50 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = MEMORY[0x223D757A0](v50);
    v56 = v1;
    v57 = v7;
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_38:

    return 0;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v1;
  v57 = v7;
  if (!v14)
  {
    goto LABEL_38;
  }

LABEL_4:
  v15 = 0;
  v58 = v12 & 0xC000000000000001;
  v7 = (v12 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v58)
    {
      v16 = MEMORY[0x223D75720](v15, v12);
    }

    else
    {
      if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(v12 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v19 = [v16 uniqueIdentifier];
    if (!v19)
    {
      goto LABEL_5;
    }

    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v21 == 0xD000000000000033 && 0x800000022002B5E0 == v23)
    {
      break;
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1)
    {
      goto LABEL_24;
    }

LABEL_5:

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_38;
    }
  }

LABEL_24:

  v35 = [v17 expirationDate];
  v36 = v55;
  v37 = v56;
  v38 = v57;
  if (!v35)
  {
    return v17;
  }

  v39 = v35;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = v54;
  static Date.now.getter();
  LOBYTE(v39) = static Date.< infix(_:_:)();
  v41 = *(v36 + 8);
  v41(v40, v37);
  if ((v39 & 1) == 0)
  {
    v41(v38, v37);
    return v17;
  }

  v42 = v53;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static TNCLogger.default);
  v44 = v17;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v17;
    v49 = v44;
    _os_log_impl(&dword_220014000, v45, v46, "Item %@ already expired", v47, 0xCu);
    outlined destroy of NSObject?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D75DE0](v48, -1, -1);
    MEMORY[0x223D75DE0](v47, -1, -1);
  }

  (*(*v42 + 160))();
  v41(v57, v37);

  return 0;
}

void TNCFollowUpController.postFollowUpItem(_:)(void *a1)
{
  v5[3] = &type metadata for TNCFeatureFlags;
  v5[4] = lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  if (v2)
  {
    v3 = specialized TNCFollowUpController.coreFollowUpItem(from:baseItem:)(a1, 0);
    TNCFollowUpController.postCoreFollowUpItem(_:)(v3);
  }

  else
  {
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags()
{
  result = lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags;
  if (!lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags;
  if (!lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNCError and conformance TNCError()
{
  result = lazy protocol witness table cache variable for type TNCError and conformance TNCError;
  if (!lazy protocol witness table cache variable for type TNCError and conformance TNCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCError and conformance TNCError);
  }

  return result;
}

void TNCFollowUpController.postCoreFollowUpItem(_:)(void *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v25[0] = 0;
  if ([v3 postFollowUpItem:a1 error:v25])
  {
    v4 = one-time initialization token for default;
    v5 = v25[0];
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static TNCLogger.default);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = a1;
      v12 = v7;
      _os_log_impl(&dword_220014000, v8, v9, "Posted follow up item %@", v10, 0xCu);
      outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D75DE0](v11, -1, -1);
      MEMORY[0x223D75DE0](v10, -1, -1);
    }
  }

  else
  {
    v13 = v25[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static TNCLogger.default);
    v16 = a1;
    v17 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v16;
      *v21 = a1;
      *(v20 + 12) = 2112;
      v22 = v16;
      v23 = v14;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      v21[1] = v24;
      _os_log_impl(&dword_220014000, v18, v19, "Failed to post follow up item:%@ error: %@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D75DE0](v21, -1, -1);
      MEMORY[0x223D75DE0](v20, -1, -1);
    }

    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TNCFollowUpController.repostFollowUpItemIfNeeded()()
{
  v1 = type metadata accessor for TNCFollowUpItem(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v53 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v53 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v53 - v11);
  v13 = TNCFollowUpController.pendingCoreFollowUpItem()();
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    TNCFollowUpItem.init(flItem:)(v15, v12);
    TNCFollowUpController.makeFollowUpItem(from:)(v12, v10);
    if (specialized static TNCFollowUpItem.== infix(_:_:)(v10, v12))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static TNCLogger.default);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_220014000, v17, v18, "Item hasn't changed - no need to repost", v19, 2u);
        MEMORY[0x223D75DE0](v19, -1, -1);
      }
    }

    else
    {
      v24 = v15;
      v25 = specialized TNCFollowUpController.coreFollowUpItem(from:baseItem:)(v10, v14);

      TNCFollowUpController.postCoreFollowUpItem(_:)(v25);
      if (!v0)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static TNCLogger.default);
        outlined init with copy of TNCFollowUpItem(v10, v7, type metadata accessor for TNCFollowUpItem);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v56 = v24;
          v45 = v44;
          v54 = swift_slowAlloc();
          v57 = v54;
          *v45 = 136315138;
          v53 = TNCFollowUpItem.description.getter();
          v47 = v46;
          v55 = type metadata accessor for TNCFollowUpItem;
          outlined destroy of TNCFollowUpItem(v7, type metadata accessor for TNCFollowUpItem);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v47, &v57);

          *(v45 + 4) = v48;
          _os_log_impl(&dword_220014000, v42, v43, "Re-posted follow up item %s", v45, 0xCu);
          v49 = v54;
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x223D75DE0](v49, -1, -1);
          MEMORY[0x223D75DE0](v45, -1, -1);

          v50 = v10;
          v51 = v55;
        }

        else
        {

          v51 = type metadata accessor for TNCFollowUpItem;
          outlined destroy of TNCFollowUpItem(v7, type metadata accessor for TNCFollowUpItem);
          v50 = v10;
        }

        v52 = v51;
        goto LABEL_25;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static TNCLogger.default);
      outlined init with copy of TNCFollowUpItem(v10, v4, type metadata accessor for TNCFollowUpItem);
      v27 = v0;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v30 = 136315394;
        v54 = v28;
        v31 = TNCFollowUpItem.description.getter();
        v32 = v24;
        v34 = v33;
        outlined destroy of TNCFollowUpItem(v4, type metadata accessor for TNCFollowUpItem);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, &v57);
        v24 = v32;

        *(v30 + 4) = v35;
        *(v30 + 12) = 2112;
        v36 = v0;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v37;
        v38 = v54;
        v39 = v55;
        *v55 = v37;
        _os_log_impl(&dword_220014000, v38, v29, "Failed to re-post follow up item:%s error: %@", v30, 0x16u);
        outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D75DE0](v39, -1, -1);
        v40 = v56;
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x223D75DE0](v40, -1, -1);
        MEMORY[0x223D75DE0](v30, -1, -1);
      }

      else
      {

        outlined destroy of TNCFollowUpItem(v4, type metadata accessor for TNCFollowUpItem);
      }

      swift_willThrow();
    }

    v51 = type metadata accessor for TNCFollowUpItem;
    v50 = v10;
    v52 = type metadata accessor for TNCFollowUpItem;
LABEL_25:
    outlined destroy of TNCFollowUpItem(v50, v52);
    outlined destroy of TNCFollowUpItem(v12, v51);
    return;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static TNCLogger.default);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_220014000, v21, v22, "No item to re-post", v23, 2u);
    MEMORY[0x223D75DE0](v23, -1, -1);
  }
}

uint64_t TNCFollowUpController.makeFollowUpItem(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TNCFollowUpItem(a1, a2, type metadata accessor for TNCFollowUpItem);
  v4 = v2[6];
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  if ((*(v5 + 8))(v4, v5))
  {
    v6 = v2[11];
    v7 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v6);
    v18 = 1;
    v8 = (*(v7 + 24))(&v18, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  result = type metadata accessor for TNCFollowUpItem(0);
  *(a2 + *(result + 40)) = v8 & 1;
  v10 = *(result + 44);
  if (!*(*(a2 + v10) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMd, &_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMR);
    v11 = (type metadata accessor for TNCFollowUpAction(0) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22002A5A0;
    v14 = v13 + v12;
    *v14 = 0xD000000000000038;
    *(v14 + 8) = 0x800000022002B560;
    *(v14 + 16) = xmmword_22002A5B0;
    v15 = v11[8];
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);
    v17(v14 + v15, 1, 1, v16);
    *(v14 + v11[9]) = 0;
    v17(v14 + v11[10], 1, 1, v16);
    *(v14 + v11[11]) = xmmword_22002A5C0;
    *(v14 + v11[12]) = 0;

    *(a2 + v10) = v13;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TNCFollowUpController.clearFollowUpItem()()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v18[0] = 0;
  if ([v1 clearPendingFollowUpItems_])
  {
    v2 = one-time initialization token for default;
    v3 = v18[0];
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static TNCLogger.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_220014000, v5, v6, "Cleared follow up item", v7, 2u);
      MEMORY[0x223D75DE0](v7, -1, -1);
    }
  }

  else
  {
    v8 = v18[0];
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static TNCLogger.default);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_220014000, v12, v13, "Failed to clear follow up item with error: %@", v14, 0xCu);
      outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D75DE0](v15, -1, -1);
      MEMORY[0x223D75DE0](v14, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t TNCFollowUpController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t TNCFollowUpController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

void TNCFollowUpController.inject(coreFollowUpController:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v4);
  type metadata accessor for FLFollowUpController(0, &lazy cache variable for type metadata for FLFollowUpController, 0x277CFE500);
  if (swift_dynamicCast())
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = v3;
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance FLNotificationOptions(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance FLNotificationOptions(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance FLNotificationOptions@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x223D75470](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance FLNotificationOptions()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x223D75520](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FLNotificationOptions(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FLNotificationOptions(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FLNotificationOptions(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FLNotificationOptions@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x223D75470](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FLNotificationOptions@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance FLNotificationOptions(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, &protocol conformance descriptor for FLNotificationOptions);
  v3 = lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, &protocol conformance descriptor for FLNotificationOptions);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id specialized TNCFollowUpController.coreFollowUpItem(from:baseItem:)(void *a1, void *a2)
{
  v4 = type metadata accessor for TNCFollowUpAction(0);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CFE508]) init];
  }

  v50 = type metadata accessor for TNCFollowUpItem(0);
  v19 = *(a1 + *(v50 + 36));
  v20 = a2;
  if (v19)
  {
    v48 = v19;
  }

  else
  {
    v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v21 = *a1;
  v22 = a1[1];

  v23 = MEMORY[0x223D75470](v21, v22);
  [v18 setUniqueIdentifier_];

  v24 = MEMORY[0x223D75470](0xD000000000000030, 0x800000022002B5A0);
  [v18 setExtensionIdentifier_];

  if (a1[3])
  {
    v25 = MEMORY[0x223D75470](a1[2]);
  }

  else
  {
    v25 = 0;
  }

  [v18 setGroupIdentifier_];

  if (a1[5])
  {
    v26 = MEMORY[0x223D75470](a1[4]);
  }

  else
  {
    v26 = 0;
  }

  [v18 setTitle_];

  if (a1[7])
  {
    v27 = MEMORY[0x223D75470](a1[6]);
  }

  else
  {
    v27 = 0;
  }

  [v18 setInformativeText_];

  [v18 setDisplayStyle_];
  v28 = v50;
  if (*(a1 + *(v50 + 40)) == 1)
  {
    [v18 setDisplayStyle_];
  }

  outlined init with copy of Date?(a1 + v28[8], v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v29 = v46;
    static Date.now.getter();
    v30 = static Date.> infix(_:_:)();
    v31 = *(v13 + 8);
    v31(v29, v12);
    if (v30)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v18 setExpirationDate_];
    }

    v31(v17, v12);
  }

  v33 = v48;
  *&v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v53 + 1) = v34;
  AnyHashable.init<A>(_:)();
  v54 = MEMORY[0x277D839B0];
  LOBYTE(v53) = 1;
  outlined init with take of Any(&v53, v52);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v33;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v52, v55, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v55);
  v36 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v18 setUserInfo_];

  v37 = *(a1 + v28[11]);
  v38 = *(v37 + 16);
  if (v38)
  {
    v55[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v39 = v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v40 = *(v47 + 72);
    do
    {
      outlined init with copy of TNCFollowUpItem(v39, v6, type metadata accessor for TNCFollowUpAction);
      TNCFollowUpAction.flAction.getter();
      outlined destroy of TNCFollowUpItem(v6, type metadata accessor for TNCFollowUpAction);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v39 += v40;
      --v38;
    }

    while (v38);

    v28 = v50;
  }

  else
  {
  }

  type metadata accessor for FLFollowUpController(0, &lazy cache variable for type metadata for FLFollowUpAction, 0x277CFE4F8);
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v18 setActions_];

  v42 = v49;
  outlined init with copy of Date?(a1 + v28[12], v49, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v43 = type metadata accessor for TNCFollowUpNotification(0);
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
  {
    outlined destroy of NSObject?(v42, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
    v44 = 0;
  }

  else
  {
    v44 = TNCFollowUpNotification.flNotification.getter();
    outlined destroy of TNCFollowUpItem(v42, type metadata accessor for TNCFollowUpNotification);
  }

  [v18 setNotification_];

  return v18;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for FLNotificationOptions()
{
  if (!lazy cache variable for type metadata for FLNotificationOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for FLNotificationOptions);
    }
  }
}

uint64_t lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLNotificationOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of TNCFollowUpItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of TNCFollowUpItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FLFollowUpController(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t TNCOnBoardingController.__allocating_init(followUpController:storage:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_220015538(a1, v4 + 16);
  sub_220015538(a2, v4 + 56);
  return v4;
}

uint64_t TNCOnBoardingController.init(followUpController:storage:)(__int128 *a1, __int128 *a2)
{
  sub_220015538(a1, v2 + 16);
  sub_220015538(a2, v2 + 56);
  return v2;
}

uint64_t TNCOnBoardingController.isOnboardingFlowRequired.getter()
{
  v0 = TNCOnBoardingController.onBoardingRequiredWithSideEffect()();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static TNCLogger.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (v0)
    {
      v6 = 29545;
    }

    else
    {
      v6 = 0x746F6E207369;
    }

    if (v0)
    {
      v7 = 0xE200000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_220014000, v2, v3, "LDMEnabledOnBoardingViewController %s required", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223D75DE0](v5, -1, -1);
    MEMORY[0x223D75DE0](v4, -1, -1);
  }

  return v0 & 1;
}

uint64_t TNCOnBoardingController.onBoardingRequiredWithSideEffect()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  static TaskPriority.background.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  outlined init with copy of TNCKVStoring((v0 + 2), v10);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_220015538(v10, v5 + 32);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect(), v5);

  outlined destroy of NSObject?(v3, &_sScPSgMd, &_sScPSgMR);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  LOBYTE(v10[0]) = 2;
  return (*(v7 + 24))(v10, v6, v7) & 1;
}

void TNCOnBoardingController.isOnboardingFlowRequired.setter(char a1)
{
  outlined init with copy of TNCKVStoring(v1 + 56, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if (a1)
  {
    LOBYTE(v11[0]) = 1;
    v5 = MEMORY[0x277D839B0];
  }

  else
  {
    v5 = 0;
    memset(v11, 0, 24);
  }

  v11[3] = v5;
  v10 = 2;
  (*(v4 + 48))(v11, &v10, v3, v4);
  outlined destroy of NSObject?(v11, &_sypSgMd, &_sypSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static TNCLogger.default);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_220014000, v7, v8, "LDMEnabledOnBoardingViewController did set onboarding flow required to %{BOOL}d", v9, 8u);
    MEMORY[0x223D75DE0](v9, -1, -1);
  }
}

void (*TNCOnBoardingController.isOnboardingFlowRequired.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = TNCOnBoardingController.isOnboardingFlowRequired.getter() & 1;
  return TNCOnBoardingController.isOnboardingFlowRequired.modify;
}

uint64_t TNCOnBoardingController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t TNCOnBoardingController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t (*protocol witness for TNCOnBoardingControlling.isOnboardingFlowRequired.modify in conformance TNCOnBoardingController(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return protocol witness for TNCOnBoardingControlling.isOnboardingFlowRequired.modify in conformance TNCOnBoardingController;
}

void protocol witness for TNCOnBoardingControlling.isOnboardingFlowRequired.modify in conformance TNCOnBoardingController(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()()
{
  v1 = *(v0 + 16);
  type metadata accessor for LockdownModeManager();
  v2 = static LockdownModeManager.shared.getter();
  LockdownModeManager.enabledInAccount.getter();

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 32))(v3, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t outlined init with copy of TNCKVStoring(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_11(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

ThreatNotificationCore::TNCStorageKey_optional __swiftcall TNCStorageKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCStorageKey.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t TNCStorageKey.rawValue.getter()
{
  v1 = 0xD000000000000030;
  v2 = 0xD00000000000003CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000042;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000035;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type TNCStorageKey and conformance TNCStorageKey()
{
  result = lazy protocol witness table cache variable for type TNCStorageKey and conformance TNCStorageKey;
  if (!lazy protocol witness table cache variable for type TNCStorageKey and conformance TNCStorageKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCStorageKey and conformance TNCStorageKey);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000030;
  v3 = "rver";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "torage.cfuViewed";
      v5 = 0xD00000000000003CLL;
    }

    else
    {
      v6 = "torage.ldmOnBoardingRequired";
      v5 = 0xD000000000000042;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000030;
    }

    else
    {
      v5 = 0xD000000000000035;
    }

    if (v4)
    {
      v6 = "torage.analyticsCache";
    }

    else
    {
      v6 = "rver";
    }
  }

  if (a2 > 1u)
  {
    v3 = "torage.cfuViewed";
    v7 = 0xD00000000000003CLL;
    v8 = "torage.ldmOnBoardingRequired";
    v2 = 0xD000000000000042;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000035;
    v8 = "torage.analyticsCache";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCStorageKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TNCStorageKey(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCStorageKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TNCStorageKey(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000030;
  v3 = "torage.cfuViewed";
  v4 = 0xD00000000000003CLL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000042;
    v3 = "torage.ldmOnBoardingRequired";
  }

  if (*v1)
  {
    v5 = "torage.analyticsCache";
  }

  else
  {
    v2 = 0xD000000000000035;
    v5 = "rver";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [TNCStorageKey] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TNCStorageKey] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TNCStorageKey] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay22ThreatNotificationCore13TNCStorageKeyOGMd, &_sSay22ThreatNotificationCore13TNCStorageKeyOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TNCStorageKey] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNCStorageKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TNCStorageKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int TNCFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D758A0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCFeatureFlags()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D758A0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCFeatureFlags(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223D758A0](0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for TNCFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TNCFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t Task<>.init(priority:timeout:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  outlined init with copy of TaskPriority?(a1, &v16 - v11);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *(v13 + 56) = a5;
  v14 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v12, &async function pointer to partial apply for closure #1 in Task<>.init(priority:timeout:operation:), v13, a4);
  outlined destroy of TaskPriority?(a1);
  return v14;
}

uint64_t closure #1 in Task<>.init(priority:timeout:operation:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return static Task<>.run(operation:withTimeout:)(a1, a5, a6, a7, a2);
}

uint64_t partial apply for closure #1 in Task<>.init(priority:timeout:operation:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return closure #1 in Task<>.init(priority:timeout:operation:)(a1, v9, v4, v5, v7, v8, v6);
}

uint64_t static Task<>.run(operation:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](static Task<>.run(operation:withTimeout:), 0, 0);
}

uint64_t static Task<>.run(operation:withTimeout:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = static Task<>.run(operation:withTimeout:);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return (withUnsafeThrowingContinuation<A>(isolation:_:))(v7, 0, 0, partial apply for closure #1 in static Task<>.run(operation:withTimeout:), v3, v6);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static Task<>.run(operation:withTimeout:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  outlined init with copy of TaskPriority?(a3, &v24[-1] - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter();
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v20 + 32, v24);

      v21 = v24[0];
      outlined destroy of TaskPriority?(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  type metadata accessor for TimeoutActor();
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  v14 = type metadata accessor for TaskPriority();
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = v13;
  v16[8] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in static Task<>.run(operation:withTimeout:), v16);

  v15(v12, 1, 1, v14);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = v13;
  *(v17 + 56) = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #2 in closure #1 in static Task<>.run(operation:withTimeout:), v17);
}

uint64_t closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  v10 = *(a8 - 8);
  v8[6] = v10;
  v8[7] = v10;
  v8[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[9] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[10] = v12;
  *v12 = v8;
  v12[1] = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);

  return v14(v11);
}

uint64_t closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

{
  v1 = *(v0 + 24);
  if (*(v1 + 112))
  {
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  (*(v4 + 16))(v1, v2, v5);
  (*(v3 + 32))(*(*(v6 + 64) + 40), v1, v5);
  swift_continuation_throwingResume();
  (*(v4 + 8))(v2, v5);

  v7 = v0[1];

  return v7();
}

{
  (*(v0[7] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[4];
  v2 = v0[5];
  v0[2] = v0[11];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 2), v1, v2, v3, MEMORY[0x277D84950]);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in static Task<>.run(operation:withTimeout:), *(v0 + 24), 0);
}

{
  v1 = *(v0 + 24);
  if (*(v1 + 112))
  {
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t UnsafeContinuation.resume(throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return MEMORY[0x282200958](a2, v8);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 40) = a5;
  *(v7 + 32) = a1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in static Task<>.run(operation:withTimeout:), 0, 0);
}

uint64_t closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(unint64_t a1)
{
  v3 = *(v1 + 32) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    v3 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  v1 = *(v0 + 40);
  if (*(v1 + 112))
  {
    return (*(v0 + 8))();
  }

  *(v1 + 112) = 1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in static Task<>.run(operation:withTimeout:), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  v3 = swift_allocError();
  *v4 = xmmword_22002AA80;
  v0[3] = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 3), v1, v2, v5, MEMORY[0x277D84950]);
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v0[9];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 2), v1, v2, v3, MEMORY[0x277D84950]);
  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 40);
  if (*(v1 + 112))
  {
    v2 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](withUnsafeThrowingContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = withUnsafeThrowingContinuation<A>(isolation:_:);
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t TimeoutActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1)
{
  v5 = *(v1 + 3);
  v4 = *(v1 + 4);
  v6 = *(v1 + 2);
  v7 = v1[5];
  v9 = *(v1 + 6);
  v8 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(v7, a1, v6, v5, v9, v8, v4);
}

uint64_t one-time initialization function for emergencyAssistance()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v3, static ThreatNotification.Links.emergencyAssistance);
  v4 = __swift_project_value_buffer(v3, static ThreatNotification.Links.emergencyAssistance);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static ThreatNotification.Links.emergencyAssistance.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for emergencyAssistance != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static ThreatNotification.Links.emergencyAssistance);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for actionItemButtonIdentifier()
{
  _StringGuts.grow(_:)(27);

  result = MEMORY[0x223D75500](0xD000000000000019, 0x800000022002BC60);
  static ThreatNotification.Screens.actionItemButtonIdentifier = 0xD000000000000042;
  *algn_27CF20918 = 0x800000022002BB00;
  return result;
}

uint64_t one-time initialization function for actionItemFooterIdentifier()
{
  _StringGuts.grow(_:)(27);

  result = MEMORY[0x223D75500](0xD000000000000019, 0x800000022002BC40);
  static ThreatNotification.Screens.actionItemFooterIdentifier = 0xD000000000000042;
  *algn_27CF20928 = 0x800000022002BB00;
  return result;
}

uint64_t one-time initialization function for emergencyAssistanceIdentifier()
{
  _StringGuts.grow(_:)(30);

  result = MEMORY[0x223D75500](0xD00000000000001CLL, 0x800000022002BC20);
  static ThreatNotification.Screens.LDMEnabled.ActionItem.emergencyAssistanceIdentifier = 0xD000000000000042;
  *algn_27CF20938 = 0x800000022002BB00;
  return result;
}

uint64_t one-time initialization function for shareAnalyticsIdentifier()
{
  _StringGuts.grow(_:)(25);

  result = MEMORY[0x223D75500](0xD000000000000017, 0x800000022002BC00);
  static ThreatNotification.Screens.LDMEnabled.ActionItem.shareAnalyticsIdentifier = 0xD000000000000042;
  *algn_27CF20948 = 0x800000022002BB00;
  return result;
}

uint64_t static ThreatNotification.Screens.actionItemButtonIdentifier.getter(void *a1, void *a2, void *a3, uint64_t a4)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t specialized static TNCLocalization.localizedString(key:value:tableSuffix:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x223D75500](a3, a4);
    v7 = 45;
    v8 = 0xE100000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  MEMORY[0x223D75500](v7, v8);

  v9 = 0x617A696C61636F4CLL;
  if (one-time initialization token for current != -1)
  {
    swift_once();
    v9 = 0x617A696C61636F4CLL;
  }

  v15._object = 0xE000000000000000;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11 = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, *&v9, static NSBundle.current, v12, v15)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t specialized static TNCError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        outlined consume of TNCError(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        outlined consume of TNCError(*a1, 1uLL);
        outlined consume of TNCError(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        outlined consume of TNCError(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        outlined consume of TNCError(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    outlined copy of TNCError(*a2, a2[1]);
    outlined copy of TNCError(v2, v3);
    outlined consume of TNCError(v2, v3);
    outlined consume of TNCError(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    outlined copy of TNCError(*a1, v3);
    outlined copy of TNCError(v2, v3);
    outlined consume of TNCError(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of TNCError(v4, v5);
  outlined copy of TNCError(v2, v3);
  outlined consume of TNCError(v2, v3);
  outlined consume of TNCError(v4, v5);
  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_22ThreatNotificationCore8TNCErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TNCError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TNCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for TNCError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t outlined copy of TNCError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined consume of TNCError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t TNCKVStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  TNCKVStorage.init()();
  return v0;
}

uint64_t TNCKVStorage.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (v4 == 0xD000000000000030 && 0x800000022002B5A0 == v6)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = [objc_opt_self() standardUserDefaults];
LABEL_20:
    v11 = v17;
    goto LABEL_21;
  }

LABEL_7:
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = MEMORY[0x223D75470](0xD000000000000030, 0x800000022002B5A0);
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static TNCLogger.default);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000022002B5A0, &v24);
      _os_log_impl(&dword_220014000, v19, v20, "Failed to create UserDefaults with suite name: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223D75DE0](v22, -1, -1);
      MEMORY[0x223D75DE0](v21, -1, -1);
    }

    v17 = [objc_opt_self() standardUserDefaults];
    goto LABEL_20;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static TNCLogger.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000022002B5A0, &v24);
    _os_log_impl(&dword_220014000, v13, v14, "Created UserDefaults with suite name: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x223D75DE0](v16, -1, -1);
    MEMORY[0x223D75DE0](v15, -1, -1);
  }

LABEL_21:
  *(v1 + 16) = v11;
  return v1;
}

Swift::Void __swiftcall TNCKVStorage.clear()()
{
  v3 = 0u;
  v4 = 0u;
  v2 = 0;
  v1 = *(*v0 + 136);
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
  v3 = 0u;
  v4 = 0u;
  v2 = 1;
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
  v3 = 0u;
  v4 = 0u;
  v2 = 2;
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
  v3 = 0u;
  v4 = 0u;
  v2 = 3;
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
}

double TNCKVStorage.value(for:)@<D0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = 0xD000000000000030;
  v5 = *a1;
  v6 = *(v2 + 16);
  v7 = "torage.cfuViewed";
  v8 = 0xD00000000000003CLL;
  if (v5 != 2)
  {
    v8 = 0xD000000000000042;
    v7 = "torage.ldmOnBoardingRequired";
  }

  if (*a1)
  {
    v9 = "torage.analyticsCache";
  }

  else
  {
    v4 = 0xD000000000000035;
    v9 = "rver";
  }

  if (*a1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = MEMORY[0x223D75470](v10, v11 | 0x8000000000000000);

  v13 = [v6 objectForKey_];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

Swift::Bool_optional __swiftcall TNCKVStorage.BOOL(for:)(ThreatNotificationCore::TNCStorageKey a1)
{
  v3.value = *a1;
  (*(*v1 + 104))(v4, &v3);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    outlined destroy of Any?(v4);
    return 2;
  }
}

uint64_t TNCKVStorage.decodedValue<A>(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = *a1;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  LOBYTE(v19[0]) = v12;
  (*(*v5 + 104))(v20, v19);
  if (v20[3])
  {
    if (swift_dynamicCast())
    {
      v13 = v19[0];
      v14 = v19[1];
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      outlined consume of Data._Representation(v13, v14);

      v15 = *(a2 - 8);
      v16 = *(v15 + 56);
      v16(v11, 0, 1, a2);
      (*(v15 + 32))(a4, v11, a2);
      return (v16)(a4, 0, 1, a2);
    }
  }

  else
  {

    outlined destroy of Any?(v20);
  }

  return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
}

Swift::Double_optional __swiftcall TNCKVStorage.timeInterval(for:)(ThreatNotificationCore::TNCStorageKey a1)
{
  LOBYTE(v4) = *a1;
  (*(*v1 + 104))(v5, &v4);
  if (v5[3])
  {
    if (swift_dynamicCast())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v5);
    v3 = 0;
  }

  result.value = v2;
  result.is_nil = v3;
  return result;
}

id TNCKVStorage.set(value:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static TNCLogger.default);
  outlined init with copy of Any?(a1, v40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315394;
    v11 = "rver";
    v12 = 0xD000000000000035;
    v13 = "torage.cfuViewed";
    v14 = 0xD00000000000003CLL;
    if (v5 != 2)
    {
      v14 = 0xD000000000000042;
      v13 = "torage.ldmOnBoardingRequired";
    }

    if (v5)
    {
      v12 = 0xD000000000000030;
      v11 = "torage.analyticsCache";
    }

    if (v5 <= 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    if (v5 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16 | 0x8000000000000000, &v39);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    outlined init with copy of Any?(v40, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    outlined destroy of Any?(v40);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v39);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_220014000, v7, v8, "KVStore - setting %s to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D75DE0](v10, -1, -1);
    MEMORY[0x223D75DE0](v9, -1, -1);
  }

  else
  {

    outlined destroy of Any?(v40);
  }

  v22 = *(v3 + 16);
  outlined init with copy of Any?(a1, v40);
  v23 = v41;
  if (v41)
  {
    v24 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v37 = &v37;
    v25 = *(v23 - 8);
    MEMORY[0x28223BE20](v24);
    v27 = &v38[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v25 + 16))(v27);
    v28 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v25 + 8))(v27, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xD000000000000035;
  v30 = "rver";
  v31 = "torage.cfuViewed";
  v32 = 0xD00000000000003CLL;
  if (v5 != 2)
  {
    v32 = 0xD000000000000042;
    v31 = "torage.ldmOnBoardingRequired";
  }

  if (v5)
  {
    v29 = 0xD000000000000030;
    v30 = "torage.analyticsCache";
  }

  if (v5 <= 1)
  {
    v33 = v29;
  }

  else
  {
    v33 = v32;
  }

  if (v5 <= 1)
  {
    v34 = v30;
  }

  else
  {
    v34 = v31;
  }

  v35 = MEMORY[0x223D75470](v33, v34 | 0x8000000000000000);

  [v22 setObject:v28 forKey:v35];
  swift_unknownObjectRelease();

  return [v22 synchronize];
}

uint64_t TNCKVStorage.set<A>(encodedValue:for:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Optional();
  v14[4] = a4;
  swift_getWitnessTable();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v14[3] = MEMORY[0x277CC9318];
  v14[0] = v7;
  v14[1] = v8;
  v13 = v6;
  v9 = *(*v4 + 136);
  v10 = v7;
  v11 = v8;
  outlined copy of Data._Representation(v7, v8);
  v9(v14, &v13);
  outlined consume of Data._Representation(v10, v11);

  return outlined destroy of Any?(v14);
}

uint64_t TNCKVStorage.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t TNCLogger.Category.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCLogger.Category.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCLogger.Category()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCLogger.Category(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TNCLogger.Category@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TNCLogger.Category, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static TNCLogger.default);
  __swift_project_value_buffer(v0, static TNCLogger.default);
  return Logger.init(subsystem:category:)();
}

uint64_t static TNCLogger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static TNCLogger.default);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static TNCLogger.logFunctionCall(category:functionName:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static TNCLogger.default);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v10);
    _os_log_impl(&dword_220014000, oslog, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223D75DE0](v8, -1, -1);
    MEMORY[0x223D75DE0](v7, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type TNCLogger.Category and conformance TNCLogger.Category()
{
  result = lazy protocol witness table cache variable for type TNCLogger.Category and conformance TNCLogger.Category;
  if (!lazy protocol witness table cache variable for type TNCLogger.Category and conformance TNCLogger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCLogger.Category and conformance TNCLogger.Category);
  }

  return result;
}

uint64_t TNCLDMManagerMock.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *TNCLDMManagerMock.enablementError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void TNCLDMManagerMock.enablementError.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t TNCLDMManagerMock.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t TNCLDMManagerMock.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t TNCLDMManagerMock.enable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TNCLDMManagerMock.enable(), 0, 0);
}

{
  if ((*(**(v0 + 16) + 120))())
  {
    swift_willThrow();
  }

  else
  {
    (*(**(v0 + 16) + 104))(1);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TNCLDMManagerMock.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManagerMock()
{
  v4 = (*(**v0 + 152) + **(**v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return v4();
}

uint64_t dispatch thunk of TNCLDMManagerMock.enable()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return v4();
}

uint64_t TNCLDMManager.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for LockdownModeManager();
  *(v0 + 16) = static LockdownModeManager.shared.getter();
  return v0;
}

uint64_t TNCLDMManager.init()()
{
  type metadata accessor for LockdownModeManager();
  *(v0 + 16) = static LockdownModeManager.shared.getter();
  return v0;
}

uint64_t TNCLDMManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t TNCLDMManager.enable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TNCLDMManager.enable(), 0, 0);
}

{
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = TNCLDMManager.enable();

  return MEMORY[0x2822008A0]();
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = TNCLDMManager.enable();
  }

  else
  {

    v2 = TNCLDMManager.enable();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in TNCLDMManager.enable()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = a2;
  LockdownModeManager.setEnabled(enabled:options:completion:)();
}

uint64_t closure #1 in closure #1 in TNCLDMManager.enable()(void *a1)
{
  if (MEMORY[0x223D753F0]())
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static TNCLogger.default);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_220014000, v3, v4, "LDM enabled", v5, 2u);
      MEMORY[0x223D75DE0](v5, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      lazy protocol witness table accessor for type TNCError and conformance TNCError();
      v8 = swift_allocError();
      *v9 = xmmword_22002AF60;
      v7 = _convertErrorToNSError(_:)();
    }

    v10 = one-time initialization token for default;
    v11 = a1;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static TNCLogger.default);
    v13 = v7;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_220014000, v14, v15, "LDM failed to enable with error: %{public}@", v16, 0xCu);
      outlined destroy of NSObject?(v17);
      MEMORY[0x223D75DE0](v17, -1, -1);
      MEMORY[0x223D75DE0](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager, 0, 0);
}

{
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager;

  return MEMORY[0x2822008A0]();
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager;
  }

  else
  {

    v2 = protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t partial apply for closure #1 in closure #1 in TNCLDMManager.enable()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in TNCLDMManager.enable()(a1);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of TNCLDMManaging.enable()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return v7(a1, a2);
}

uint64_t TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter()
{
  v1 = *(v0 + 24);
  if (v1 == 2)
  {
    LOBYTE(v1) = closure #1 in TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter();
    *(v0 + 24) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t closure #1 in TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter()
{
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v1 = domain_answer;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static TNCLogger.default);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_220014000, v3, v4, "Enhanced diagnostics eligibility call failed with status code: %d", v5, 8u);
      MEMORY[0x223D75DE0](v5, -1, -1);
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static TNCLogger.default);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      swift_beginAccess();
      *(v10 + 4) = 0;
      _os_log_impl(&dword_220014000, v8, v9, "Enhanced diagnostics eligibility answer: %llu", v10, 0xCu);
      MEMORY[0x223D75DE0](v10, -1, -1);
    }

    swift_beginAccess();
    return 0;
  }
}

uint64_t TNCMCManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 2;
  return result;
}

uint64_t TNCMCManager.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 2;
  return result;
}

uint64_t TNCMCManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

void TNCMCManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for TNCWeakBox();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_beginAccess();
  MEMORY[0x223D75530](v6);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static TNCLogger.default);
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_220014000, v8, v9, "MCManager did register observer: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223D75DE0](v11, -1, -1);
    MEMORY[0x223D75DE0](v10, -1, -1);
  }
}

void TNCMCManager.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v4 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + 16), a1);
  swift_unknownObjectRelease();
  v5 = *(v2 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v16 = *(v2 + 16);
    }

    else
    {
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x223D757A0](v16);
    if (v7 >= v4)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v4, v7, v6);
      swift_endAccess();
      if (one-time initialization token for default == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    v7 = *(v6 + 16);
    if (v7 >= v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static TNCLogger.default);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_220014000, v9, v10, "MCManager did remove observer: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x223D75DE0](v12, -1, -1);
    MEMORY[0x223D75DE0](v11, -1, -1);
  }
}

id TNCMCManager.setDiagnosticsSharing(enabled:)(char a1)
{
  v2 = TNCMCManager.diagnosticsSettingsKeys.getter();
  v3 = v2;
  v4 = *(v2 + 16);
  v22 = a1;
  if (v4)
  {
    v5 = 0;
    v6 = (v2 + 40);
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = objc_opt_self();

      result = [v9 sharedConnection];
      if (!result)
      {
        break;
      }

      v11 = result;
      ++v5;
      v12 = MEMORY[0x223D75470](v8, v7);

      a1 = v22;
      [v11 setBoolValue:v22 & 1 forSetting:v12];

      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (one-time initialization token for default != -1)
    {
LABEL_19:
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static TNCLogger.default);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      if (v22)
      {
        v18 = 0x64656C62616E65;
      }

      else
      {
        v18 = 0x64656C6261736964;
      }

      if (v22)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_220014000, v14, v15, "MCManager %s diagnostics sharing", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223D75DE0](v17, -1, -1);
      v21 = v16;
      a1 = v22;
      MEMORY[0x223D75DE0](v21, -1, -1);
    }

    return TNCMCManager.notifyObserversAboutDiagnosticsEnablement(isEnabled:)(a1 & 1);
  }

  return result;
}

uint64_t TNCMCManager.diagnosticsSettingsKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22002A5A0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  if (TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter())
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22002A5A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v3;
    specialized Array.append<A>(contentsOf:)(inited);
  }

  return v0;
}

uint64_t TNCMCManager.notifyObserversAboutDiagnosticsEnablement(isEnabled:)(char a1)
{
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v23 = *(v1 + 16);
    }

    else
    {
      v23 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x223D757A0](v23);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v3 & 0xC000000000000001;

    v6 = 0;
    v7 = 0x281254000;
    v8 = static TNCLogger.default;
    do
    {
      if (v5)
      {
        v17 = MEMORY[0x223D75720](v6, v3);
      }

      else
      {
        v17 = *(v3 + 8 * v6 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 24);
        ObjectType = swift_getObjectType();
        (*(v18 + 8))(a1 & 1, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      if (*(v7 + 144) != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, v8);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v9 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = v26;
        *v9 = 136446210;
        type metadata accessor for TNCWeakBox();

        v10 = String.init<A>(describing:)();
        log = v21;
        v12 = v8;
        v13 = v3;
        v14 = v4;
        v15 = v5;
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v27);
        v7 = 0x281254000uLL;

        *(v9 + 4) = v16;
        v5 = v15;
        v4 = v14;
        v3 = v13;
        v8 = v12;
        _os_log_impl(&dword_220014000, log, v22, "MCManager did notify observer: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x223D75DE0](v26, -1, -1);
        MEMORY[0x223D75DE0](v9, -1, -1);
      }

      else
      {
      }

      ++v6;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t TNCWeakBox.__deallocating_deinit()
{
  outlined destroy of weak TNCMCManagerObserver?(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, v4 < 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 < 0)
      {
        v7 = v4;
      }

      MEMORY[0x223D757A0](v7);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x223D757A0](a1);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_68:
    if (v3 < 0)
    {
      v19 = v3;
    }

    else
    {
      v19 = v4;
    }

    v6 = MEMORY[0x223D757A0](v19);
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D75720](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v3 < 0)
            {
              v17 = v3;
            }

            else
            {
              v17 = v3 & 0xFFFFFFFFFFFFFF8;
            }

            if (v11 == MEMORY[0x223D757A0](v17))
            {
              return v7;
            }
          }

          else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223D75720](v11, v3);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
          {
            if (v7 != v11)
            {
              if (v5)
              {
                v13 = MEMORY[0x223D75720](v7, v3);
                v14 = MEMORY[0x223D75720](v11, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_65;
                }

                v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v15)
                {
                  goto LABEL_66;
                }

                if (v11 >= v15)
                {
                  goto LABEL_67;
                }

                v13 = *(v3 + 32 + 8 * v7);
                v14 = *(v3 + 32 + 8 * v11);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v3 < 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v16 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

              if (v3 < 0 || v16)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_53:
                  __break(1u);
LABEL_54:
                  if (v3 < 0)
                  {
                    v18 = v3;
                  }

                  else
                  {
                    v18 = v4;
                  }

                  return MEMORY[0x223D757A0](v18);
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_53;
              }

              if (v11 >= *(v5 + 16))
              {
                goto LABEL_64;
              }

              *(v5 + 8 * v11 + 32) = v13;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_63;
            }
          }

          v8 = __OFADD__(v11++, 1);
          if (v8)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_59;
    }
  }

  if (v5)
  {
    goto LABEL_54;
  }

  return v4[2];
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = a3;
  v6 = a2;
  v7 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v8 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TNCWeakBox();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v10);
  v10 = v3 - v10;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  if (v7 < 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = v4;
  }

  result = MEMORY[0x223D757A0](v18);
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_29;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v8[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v9)
  {
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v4;
    }

    result = MEMORY[0x223D757A0](v17);
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_30;
  }

  v4[2] = result + v10;
LABEL_20:
  if (v3 > 0)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    a3 = *v4 & 0xFFFFFFFFFFFFFF8;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  if (v6 < 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = a3;
  }

  result = MEMORY[0x223D757A0](v13);
  if (result < v3)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v6 < 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x223D757A0](v11);
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v12)
  {
    goto LABEL_24;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

void TNCFollowUpItem.init(flItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v101 - v8;
  v114 = type metadata accessor for TNCFollowUpAction(0);
  v112 = *(v114 - 1);
  v10 = MEMORY[0x28223BE20](v114);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v101 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v111 = &v101 - v17;
  MEMORY[0x28223BE20](v16);
  v110 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v101 - v20;
  v22 = [a1 uniqueIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *a2 = v24;
    a2[1] = v26;
    v102 = a1;
    v103 = a2;
    v27 = [a1 groupIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = v102;
    v33 = v103;
    v103[2] = v29;
    v33[3] = v31;
    v34 = [v32 title];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v33[4] = v36;
    v33[5] = v38;
    v39 = [v102 informativeText];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v33[6] = v41;
    v33[7] = v43;
    v44 = v102;
    v45 = [v102 expirationDate];
    if (v45)
    {
      v46 = v45;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = type metadata accessor for Date();
      (*(*(v47 - 8) + 56))(v21, 0, 1, v47);
    }

    else
    {
      v48 = type metadata accessor for Date();
      (*(*(v48 - 8) + 56))(v21, 1, 1, v48);
    }

    v49 = type metadata accessor for TNCFollowUpItem(0);
    outlined init with take of Date?(v21, v103 + *(v49 + 32), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v50 = [v44 userInfo];
    if (v50)
    {
      v51 = v50;
      v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v52 = 0;
    }

    v53 = v103;
    *(v103 + *(v49 + 36)) = v52;
    *(v53 + *(v49 + 40)) = ([v44 displayStyle] & 0x10) != 0;
    v54 = [v44 actions];
    if (v54)
    {
      v55 = v54;
      type metadata accessor for FLFollowUpAction();
      v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v56 >> 62)
      {
        goto LABEL_54;
      }

      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v101 = v49;
      while (v57)
      {
        v58 = 0;
        v108 = v56 & 0xFFFFFFFFFFFFFF8;
        v109 = v56 & 0xC000000000000001;
        v59 = MEMORY[0x277D84F90];
        v104 = v7;
        v105 = v57;
        v106 = v56;
        v107 = v12;
        while (v109)
        {
          v60 = MEMORY[0x223D75720](v58, v56);
          v61 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_52;
          }

LABEL_24:
          v113 = v61;
          v62 = v9;
          v63 = v60;
          v64 = [v63 identifier];
          if (v64)
          {
            v65 = v64;
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;
          }

          else
          {
            v66 = 0;
            v68 = 0;
          }

          *v15 = v66;
          v15[1] = v68;
          v69 = [v63 label];
          if (v69)
          {
            v70 = v69;
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;
          }

          else
          {
            v71 = 0;
            v73 = 0;
          }

          v15[2] = v71;
          v15[3] = v73;
          v74 = [v63 url];
          if (v74)
          {
            v75 = v74;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v76 = 0;
          }

          else
          {
            v76 = 1;
          }

          v77 = type metadata accessor for URL();
          v78 = *(v77 - 8);
          v79 = *(v78 + 56);
          v7 = (v78 + 56);
          v79(v62, v76, 1, v77);
          outlined init with take of Date?(v62, v15 + v114[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v80 = [v63 userInfo];
          if (v80)
          {
            v81 = v80;
            v82 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v82 = 0;
          }

          v83 = v104;
          *(v15 + v114[7]) = v82;
          v84 = [v63 launchActionURL];
          if (v84)
          {
            v85 = v84;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v86 = 0;
          }

          else
          {
            v86 = 1;
          }

          v79(v83, v86, 1, v77);
          outlined init with take of Date?(v83, v15 + v114[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v87 = [v63 launchActionArguments];
          if (v87)
          {
            v88 = v87;
            v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v91 = v90;
          }

          else
          {
            v89 = 0;
            v91 = 0xF000000000000000;
          }

          v9 = v62;
          v92 = v114;
          v93 = (v15 + v114[9]);
          *v93 = v89;
          v93[1] = v91;
          v94 = [v63 destructive];

          *(v15 + v92[10]) = v94;
          v95 = v111;
          outlined init with take of TNCFollowUpAction(v15, v111, type metadata accessor for TNCFollowUpAction);
          v96 = v95;
          v97 = v110;
          outlined init with take of TNCFollowUpAction(v96, v110, type metadata accessor for TNCFollowUpAction);
          v12 = v107;
          outlined init with take of TNCFollowUpAction(v97, v107, type metadata accessor for TNCFollowUpAction);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
          }

          v56 = v106;
          v49 = v59[2];
          v98 = v59[3];
          if (v49 >= v98 >> 1)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v49 + 1, 1, v59);
          }

          v59[2] = v49 + 1;
          outlined init with take of TNCFollowUpAction(v12, v59 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v49, type metadata accessor for TNCFollowUpAction);
          ++v58;
          if (v113 == v105)
          {
            goto LABEL_59;
          }
        }

        if (v58 >= *(v108 + 16))
        {
          goto LABEL_53;
        }

        v60 = *(v56 + 8 * v58 + 32);
        v61 = v58 + 1;
        if (!__OFADD__(v58, 1))
        {
          goto LABEL_24;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        if (v56 < 0)
        {
          v99 = v56;
        }

        else
        {
          v99 = v56 & 0xFFFFFFFFFFFFFF8;
        }

        v57 = MEMORY[0x223D757A0](v99);
        v101 = v49;
      }

      v59 = MEMORY[0x277D84F90];
LABEL_59:

      v49 = v101;
      v44 = v102;
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v100 = v103;
    *(v103 + *(v49 + 44)) = v59;
    TNCFollowUpNotification.init(flNotification:)([v44 notification], v100 + *(v49 + 48));
  }

  else
  {
    __break(1u);
  }
}

double TNCFollowUpAction.init(identifier:title:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 3) = a4;
  v6 = type metadata accessor for TNCFollowUpAction(0);
  v7 = v6[6];
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(&a5[v7], 1, 1, v8);
  *&a5[v6[7]] = 0;
  v9(&a5[v6[8]], 1, 1, v8);
  result = 0.0;
  *&a5[v6[9]] = xmmword_22002A5C0;
  a5[v6[10]] = 0;
  return result;
}

Swift::Void __swiftcall TNCFollowUpItem.set(actions:)(Swift::OpaquePointer actions)
{
  v3 = *(type metadata accessor for TNCFollowUpItem(0) + 44);

  *(v1 + v3) = actions;
}

id TNCFollowUpAction.flAction.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CFE4F8]) init];
  if (v1[1])
  {
    v9 = MEMORY[0x223D75470](*v1);
  }

  else
  {
    v9 = 0;
  }

  [v8 setIdentifier_];

  if (v1[3])
  {
    v10 = MEMORY[0x223D75470](v1[2]);
  }

  else
  {
    v10 = 0;
  }

  [v8 setLabel_];

  v11 = type metadata accessor for TNCFollowUpAction(0);
  outlined init with copy of Date?(v1 + v11[6], v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v16 = 0;
  if (v14(v7, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v13 + 8))(v7, v12);
  }

  [v8 setUrl_];

  if (*(v1 + v11[7]))
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v8 setUserInfo_];

  outlined init with copy of Date?(v1 + v11[8], v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v14(v5, 1, v12) == 1)
  {
    v20 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v19);
    v20 = v21;
    (*(v13 + 8))(v5, v12);
  }

  [v8 setLaunchActionURL_];

  if (*(v1 + v11[9] + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v8 setLaunchActionArguments_];

  [v8 setDestructive_];
  return v8;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So21FLNotificationOptionsas5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm13So08FLFollowem7CvgSo21D15OptionsaSSXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v27;
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v25 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(v6 + 36);
    v11 = (*(v6 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];

    v14 = MEMORY[0x223D75470](v12, v13);

    v16 = *(v27 + 16);
    v15 = *(v27 + 24);
    if (v16 >= v15 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v27 + 16) = v16 + 1;
    *(v27 + 8 * v16 + 32) = v14;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v25;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v5, v26, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v5, v26, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id TNCFollowUpNotification.flNotification.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v27[-v6];
  v8 = [objc_allocWithZone(MEMORY[0x277CFE510]) init];
  if (v1[1])
  {
    v9 = MEMORY[0x223D75470](*v1);
  }

  else
  {
    v9 = 0;
  }

  [v8 setTitle_];

  if (v1[3])
  {
    v10 = MEMORY[0x223D75470](v1[2]);
  }

  else
  {
    v10 = 0;
  }

  [v8 setInformativeText_];

  if (v1[5])
  {
    v11 = MEMORY[0x223D75470](v1[4]);
  }

  else
  {
    v11 = 0;
  }

  [v8 setSubtitleText_];

  v12 = type metadata accessor for TNCFollowUpNotification(0);
  outlined init with copy of Date?(v1 + v12[7], v7, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v13 = type metadata accessor for TNCFollowUpAction(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v7, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v7, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v15 = 0;
  }

  else
  {
    v15 = TNCFollowUpAction.flAction.getter();
    outlined destroy of TNCFollowUpAction(v7, type metadata accessor for TNCFollowUpAction);
  }

  [v8 setActivateAction_];

  outlined init with copy of Date?(v1 + v12[8], v5, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if (v14(v5, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v5, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v16 = 0;
  }

  else
  {
    v16 = TNCFollowUpAction.flAction.getter();
    outlined destroy of TNCFollowUpAction(v5, type metadata accessor for TNCFollowUpAction);
  }

  [v8 setClearAction_];

  v17 = (v1 + v12[9]);
  if (v17[1])
  {
    v18 = MEMORY[0x223D75470](*v17);
  }

  else
  {
    v18 = 0;
  }

  [v8 setUnlockActionLabel_];

  v19 = (v1 + v12[10]);
  v20 = *v19;
  if (*(v19 + 8))
  {
    v20 = 0.0;
  }

  [v8 setFrequency_];
  v21 = (v1 + v12[11]);
  v22 = *v21;
  if (*(v21 + 8))
  {
    v22 = 0.0;
  }

  [v8 setFirstNotificationDelay_];
  v23 = *(v1 + v12[12]);
  if (v23)
  {
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So21FLNotificationOptionsas5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm13So08FLFollowem7CvgSo21D15OptionsaSSXEfU_Tf1cn_n(v23);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21FLNotificationOptionsa_SayAEGTt0g5Tf4g_n(v24);

  type metadata accessor for FLNotificationOptions();
  lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions, &protocol conformance descriptor for FLNotificationOptions);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v8 setOptions_];

  return v8;
}

double TNCFollowUpAction.userInfo.getter()
{
  type metadata accessor for TNCFollowUpAction(0);

  return result;
}

uint64_t TNCFollowUpAction.launchActionArguments.getter()
{
  v1 = v0 + *(type metadata accessor for TNCFollowUpAction(0) + 36);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t TNCFollowUpAction.init(flAction:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for TNCFollowUpAction(0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v46 = v11;
    v14 = a1;
    v15 = [v14 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    *v13 = v17;
    v13[1] = v19;
    v22 = [v14 label];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v13[2] = v24;
    v13[3] = v26;
    v27 = [v14 url];
    if (v27)
    {
      v28 = v27;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
    }

    else
    {
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    }

    outlined init with take of Date?(v9, v13 + v10[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v31 = [v14 userInfo];
    if (v31)
    {
      v32 = v31;
      v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v33 = 0;
    }

    *(v13 + v10[7]) = v33;
    v34 = [v14 launchActionURL];
    if (v34)
    {
      v35 = v34;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = type metadata accessor for URL();
    (*(*(v37 - 8) + 56))(v7, v36, 1, v37);
    outlined init with take of Date?(v7, v13 + v10[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v38 = [v14 launchActionArguments];
    if (v38)
    {
      v39 = v38;
      v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xF000000000000000;
    }

    v43 = (v13 + v10[9]);
    *v43 = v40;
    v43[1] = v42;
    v44 = [v14 destructive];

    *(v13 + v10[10]) = v44;
    outlined init with take of TNCFollowUpAction(v13, a2, type metadata accessor for TNCFollowUpAction);
    return (*(v46 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v20 = *(v11 + 56);

    return v20(a2, 1, 1, v10);
  }
}

uint64_t TNCFollowUpNotification.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TNCFollowUpNotification.informativeText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TNCFollowUpNotification.subtitleText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TNCFollowUpNotification.unlockActionLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNCFollowUpNotification(0) + 36));

  return v1;
}

double TNCFollowUpNotification.options.getter()
{
  type metadata accessor for TNCFollowUpNotification(0);

  return result;
}

id TNCFollowUpNotification.init(title:informativeText:activateAction:clearAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for TNCFollowUpNotification(0);
  outlined init with copy of Date?(a5, a7 + v10[7], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  outlined init with copy of Date?(a6, a7 + v10[8], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  a7[4] = 0;
  a7[5] = 0;
  v11 = (a7 + v10[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a7 + v10[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a7 + v10[11];
  *v13 = 0;
  v13[8] = 1;
  result = [objc_opt_self() defaultOptions];
  if (result)
  {
    v15 = result;
    type metadata accessor for FLNotificationOptions();
    lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions, &protocol conformance descriptor for FLNotificationOptions);
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(v16);

    v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v17);

    outlined destroy of NSObject?(a6, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    result = outlined destroy of NSObject?(a5, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    *(a7 + v10[12]) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TNCFollowUpNotification.init(flNotification:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TNCFollowUpNotification(0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v41 = v5;
    v8 = a1;
    v9 = [v8 title];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *v7 = v11;
    v7[1] = v13;
    v16 = [v8 informativeText];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v7[2] = v18;
    v7[3] = v20;
    v21 = [v8 subtitleText];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v7[4] = v23;
    v7[5] = v25;
    TNCFollowUpAction.init(flAction:)([v8 activateAction], v7 + v4[7]);
    TNCFollowUpAction.init(flAction:)([v8 clearAction], v7 + v4[8]);
    v26 = [v8 unlockActionLabel];
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = (v7 + v4[9]);
    *v31 = v28;
    v31[1] = v30;
    [v8 frequency];
    v32 = v7 + v4[10];
    *v32 = v33;
    v32[8] = 0;
    [v8 firstNotificationDelay];
    v34 = v7 + v4[11];
    *v34 = v35;
    v34[8] = 0;
    v36 = [v8 options];
    if (v36)
    {
      v37 = v36;
      type metadata accessor for FLNotificationOptions();
      lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions, &protocol conformance descriptor for FLNotificationOptions);
      v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(v38);
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v39);

    *(v7 + v4[12]) = v40;
    outlined init with take of TNCFollowUpAction(v7, a2, type metadata accessor for TNCFollowUpNotification);
    return (*(v41 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v14 = *(v5 + 56);

    return v14(a2, 1, 1, v4);
  }
}

uint64_t one-time initialization function for primaryAccountAltDSID()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static TNCFollowUpItem.UserInfoKey.primaryAccountAltDSID = result;
  qword_27CF20980 = v1;
  return result;
}

uint64_t one-time initialization function for notifyingAppID()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *&static TNCFollowUpItem.UserInfoKey.notifyingAppID = result;
  *(&static TNCFollowUpItem.UserInfoKey.notifyingAppID + 1) = v1;
  return result;
}

uint64_t TNCFollowUpItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TNCFollowUpItem.informativeText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double TNCFollowUpItem.userInfo.getter()
{
  type metadata accessor for TNCFollowUpItem(0);

  return result;
}

double TNCFollowUpItem.actions.getter()
{
  type metadata accessor for TNCFollowUpItem(0);

  return result;
}

uint64_t TNCFollowUpItem.description.getter()
{
  _StringGuts.grow(_:)(132);
  MEMORY[0x223D75500](0x696669746E656449, 0xEC000000203A7265);
  MEMORY[0x223D75500](*v0, v0[1]);
  MEMORY[0x223D75500](0x3A656C746974202CLL, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v1);

  MEMORY[0x223D75500](0xD000000000000013, 0x800000022002BF70);
  v2 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v2);

  MEMORY[0x223D75500](0xD000000000000012, 0x800000022002BF90);
  v3 = type metadata accessor for TNCFollowUpItem(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v4);

  MEMORY[0x223D75500](0x6E4972657375202CLL, 0xEC000000203A6F66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
  v5 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v5);

  MEMORY[0x223D75500](0xD000000000000013, 0x800000022002BFB0);
  if (*(v0 + *(v3 + 40)))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + *(v3 + 40)))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223D75500](v6, v7);

  MEMORY[0x223D75500](0x6E6F69746361202CLL, 0xEB00000000203A73);
  v8 = *(v0 + *(v3 + 44));
  v9 = type metadata accessor for TNCFollowUpAction(0);
  v10 = MEMORY[0x223D75560](v8, v9);
  MEMORY[0x223D75500](v10);

  MEMORY[0x223D75500](0xD000000000000010, 0x800000022002BFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v11 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v11);

  return 0;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZ22ThreatNotificationCore17TNCFollowUpActionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNCFollowUpAction(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of TNCFollowUpAction(v13, v10);
        outlined init with copy of TNCFollowUpAction(v14, v7);
        v16 = specialized static TNCFollowUpAction.== infix(_:_:)(v10, v7);
        outlined destroy of TNCFollowUpAction(v7, type metadata accessor for TNCFollowUpAction);
        outlined destroy of TNCFollowUpAction(v10, type metadata accessor for TNCFollowUpAction);
        if (!v16)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t TNCFollowUpItem.init(identifier:groupIdentifier:title:informativeText:expirationDate:userInfo:shouldOmitBadge:actions:notification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  a9[1] = a2;
  if (!a4)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v19;
  }

  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v20 = type metadata accessor for TNCFollowUpItem(0);
  outlined init with take of Date?(a10, a9 + v20[8], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(a9 + v20[9]) = a11;
  *(a9 + v20[10]) = a12 & 1;
  *(a9 + v20[11]) = a13;
  return outlined init with take of Date?(a14, a9 + v20[12], &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
}

id static TNCFollowUpItem.spywareAttackItem(expirationDate:actions:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v79 = a2;
  v76 = a1;
  v6 = type metadata accessor for TNCFollowUpNotification(0);
  v73 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v78 = v6;
  v21 = one-time initialization token for notifyingAppID;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static TNCFollowUpItem.UserInfoKey.notifyingAppID;
  v82 = static TNCFollowUpItem.UserInfoKey.notifyingAppID;

  v23 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  if (*(v20 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v84), (v25 & 1) != 0))
  {
    outlined init with copy of Any(*(v20 + 56) + 32 * v24, &v82);
    outlined destroy of AnyHashable(v84);
    outlined destroy of NSObject?(&v82, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    outlined destroy of AnyHashable(v84);
    v82 = 0u;
    v83 = 0u;
    outlined destroy of NSObject?(&v82, &_sypSgMd, &_sypSgMR);
    v82 = v22;

    AnyHashable.init<A>(_:)();
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v83 + 1) = v23;
    *&v82 = v26;
    *(&v82 + 1) = v27;
    outlined init with take of Any(&v82, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v20;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, v84, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v84);
    v20 = v80;
  }

  v77 = v20;
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v29;
  v68 = specialized static TNCLocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000022002BCB0, 0, 0xE000000000000000);
  v67 = v30;
  v66 = specialized static TNCLocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000022002BCB0, 0, 0xE000000000000000);
  v65 = v31;
  v71 = v19;
  outlined init with copy of Date?(v76, v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = &loc_22002A000;
  if (v79)
  {
    v64 = v79;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMd, &_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMR);
    v33 = (type metadata accessor for TNCFollowUpAction(0) - 8);
    v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_22002A5A0;
    v64 = v35;
    v36 = v35 + v34;
    *v36 = 0xD000000000000038;
    *(v36 + 8) = 0x800000022002B560;
    *(v36 + 16) = xmmword_22002A5B0;
    v37 = v33[8];
    v38 = type metadata accessor for URL();
    v39 = *(*(v38 - 8) + 56);
    v39(v36 + v37, 1, 1, v38);
    *(v36 + v33[9]) = 0;
    v39(v36 + v33[10], 1, 1, v38);
    v32 = &loc_22002A000;
    *(v36 + v33[11]) = xmmword_22002A5C0;
    *(v36 + v33[12]) = 0;
  }

  v76 = 0x800000022002BFF0;
  v75 = 0x800000022002C010;
  *v14 = xmmword_22002B0D0;
  *(v14 + 1) = xmmword_22002B0E0;
  v40 = type metadata accessor for TNCFollowUpAction(0);
  v41 = v40[6];
  v42 = type metadata accessor for URL();
  v43 = *(*(v42 - 8) + 56);
  v43(&v14[v41], 1, 1, v42);
  *&v14[v40[7]] = 0;
  v43(&v14[v40[8]], 1, 1, v42);
  v44 = v40[9];
  v74 = v32[92];
  *&v14[v44] = v74;
  v14[v40[10]] = 0;
  v45 = *(*(v40 - 1) + 56);
  v45(v14, 0, 1, v40);
  *v12 = xmmword_22002B0F0;
  *(v12 + 1) = xmmword_22002B100;
  v43(&v12[v40[6]], 1, 1, v42);
  *&v12[v40[7]] = 0;
  v43(&v12[v40[8]], 1, 1, v42);
  *&v12[v40[9]] = v74;
  v12[v40[10]] = 0;
  v45(v12, 0, 1, v40);
  v46 = v76;
  *v8 = 0xD000000000000019;
  v8[1] = v46;
  v47 = v75;
  v8[2] = 0xD00000000000008BLL;
  v8[3] = v47;
  v48 = v78;
  outlined init with copy of Date?(v14, v8 + v78[7], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  outlined init with copy of Date?(v12, v8 + v48[8], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v8[4] = 0;
  v8[5] = 0;
  v49 = (v8 + v48[9]);
  *v49 = 0;
  v49[1] = 0;
  v50 = v8 + v48[10];
  *v50 = 0;
  v50[8] = 1;
  v51 = v8 + v48[11];
  *v51 = 0;
  v51[8] = 1;
  v52 = objc_opt_self();
  v53 = v77;

  result = [v52 defaultOptions];
  if (result)
  {
    v55 = result;
    type metadata accessor for FLNotificationOptions();
    lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions, &protocol conformance descriptor for FLNotificationOptions);
    v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(v56);

    v58 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v57);

    outlined destroy of NSObject?(v12, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    outlined destroy of NSObject?(v14, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    *(v8 + v48[12]) = v58;
    v59 = v72;
    outlined init with take of TNCFollowUpAction(v8, v72, type metadata accessor for TNCFollowUpNotification);
    (*(v73 + 56))(v59, 0, 1, v48);
    *a4 = 0xD000000000000033;
    a4[1] = 0x800000022002B5E0;
    v60 = v69;
    a4[2] = v70;
    a4[3] = v60;
    v61 = v67;
    a4[4] = v68;
    a4[5] = v61;
    v62 = v65;
    a4[6] = v66;
    a4[7] = v62;
    v63 = type metadata accessor for TNCFollowUpItem(0);
    outlined init with take of Date?(v71, a4 + v63[8], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    *(a4 + v63[9]) = v53;
    *(a4 + v63[10]) = 0;
    *(a4 + v63[11]) = v64;
    outlined init with take of Date?(v59, a4 + v63[12], &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for FLFollowUpAction()
{
  result = lazy cache variable for type metadata for FLFollowUpAction;
  if (!lazy cache variable for type metadata for FLFollowUpAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FLFollowUpAction);
  }

  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x223D75240]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x223D75240]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMd, &_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMR);
  v10 = *(type metadata accessor for TNCFollowUpAction(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TNCFollowUpAction(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for TNCFollowUpAction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v36);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return outlined init with take of Any(a1, v17);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D756C0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21FLNotificationOptionsaGMd, &_ss23_ContiguousArrayStorageCySo21FLNotificationOptionsaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for FLNotificationOptions();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21FLNotificationOptionsaGMd, &_ss11_SetStorageCySo21FLNotificationOptionsaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for FLNotificationOptions();
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21FLNotificationOptionsaGMd, &_ss11_SetStorageCySo21FLNotificationOptionsaGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21FLNotificationOptionsaGMd, &_ss11_SetStorageCySo21FLNotificationOptionsaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D75620](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21FLNotificationOptionsa_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FLNotificationOptions();
  v4 = v3;
  v5 = lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions, &protocol conformance descriptor for FLNotificationOptions);
  result = MEMORY[0x223D75620](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x223D75240]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL specialized static TNCFollowUpNotification.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for TNCFollowUpAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v64 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = a1[3];
  v23 = a2[3];
  if (v22)
  {
    if (!v23 || (a1[2] != a2[2] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v24 = a1[5];
  v25 = a2[5];
  if (v24)
  {
    if (!v25 || (a1[4] != a2[4] || v24 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v67 = v11;
  v65 = v7;
  v26 = type metadata accessor for TNCFollowUpNotification(0);
  v69 = v5;
  v66 = v26;
  v27 = *(v26 + 28);
  v28 = *(v14 + 48);
  outlined init with copy of Date?(a1 + v27, v19, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v29 = v69;
  v68 = v28;
  outlined init with copy of Date?(a2 + v27, &v19[v28], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v32 = *(v29 + 48);
  v30 = v29 + 48;
  v31 = v32;
  if (v32(v19, 1, v4) == 1)
  {
    v33 = v31(&v19[v68], 1, v4);
    v34 = v67;
    if (v33 == 1)
    {
      v64 = v31;
      outlined destroy of NSObject?(v19, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
      goto LABEL_29;
    }

LABEL_27:
    v36 = v19;
LABEL_35:
    outlined destroy of NSObject?(v36, &_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMR);
    return 0;
  }

  outlined init with copy of Date?(v19, v13, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v64 = v31;
  v69 = v30;
  v35 = v31(&v19[v68], 1, v4);
  v34 = v67;
  if (v35 == 1)
  {
    outlined destroy of TNCFollowUpAction(v13, type metadata accessor for TNCFollowUpAction);
    goto LABEL_27;
  }

  v37 = v65;
  outlined init with take of TNCFollowUpAction(&v19[v68], v65, type metadata accessor for TNCFollowUpAction);
  LODWORD(v68) = specialized static TNCFollowUpAction.== infix(_:_:)(v13, v37);
  outlined destroy of TNCFollowUpAction(v37, type metadata accessor for TNCFollowUpAction);
  outlined destroy of TNCFollowUpAction(v13, type metadata accessor for TNCFollowUpAction);
  outlined destroy of NSObject?(v19, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v38 = v66[8];
  v39 = *(v14 + 48);
  outlined init with copy of Date?(a1 + v38, v17, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  outlined init with copy of Date?(a2 + v38, &v17[v39], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v40 = v64;
  if (v64(v17, 1, v4) == 1)
  {
    if (v40(&v17[v39], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  outlined init with copy of Date?(v17, v34, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if (v40(&v17[v39], 1, v4) == 1)
  {
    outlined destroy of TNCFollowUpAction(v34, type metadata accessor for TNCFollowUpAction);
LABEL_34:
    v36 = v17;
    goto LABEL_35;
  }

  v42 = &v17[v39];
  v43 = v65;
  outlined init with take of TNCFollowUpAction(v42, v65, type metadata accessor for TNCFollowUpAction);
  v44 = specialized static TNCFollowUpAction.== infix(_:_:)(v34, v43);
  outlined destroy of TNCFollowUpAction(v43, type metadata accessor for TNCFollowUpAction);
  outlined destroy of TNCFollowUpAction(v34, type metadata accessor for TNCFollowUpAction);
  outlined destroy of NSObject?(v17, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if (!v44)
  {
    return 0;
  }

LABEL_38:
  v45 = v66[9];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  v50 = v66[10];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 8);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = v66[11];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 8);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v66[12];
  v61 = *(a1 + v60);
  v62 = *(a2 + v60);
  if (v61)
  {
    if (v62)
    {

      v63 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v61, v62);

      if (v63)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v62;
}

BOOL specialized static TNCFollowUpAction.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v55[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v55[-v18];
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = a1[3];
  v23 = a2[3];
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v23 || (a1[2] != a2[2] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v57 = v11;
  v58 = v7;
  v24 = type metadata accessor for TNCFollowUpAction(0);
  v62 = a2;
  v25 = *(v24 + 24);
  v26 = *(v14 + 48);
  v59 = v24;
  v60 = a1;
  outlined init with copy of Date?(a1 + v25, v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of Date?(v62 + v25, &v19[v26], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v61 = v5;
  v27 = *(v5 + 48);
  if (v27(v19, 1, v4) == 1)
  {
    if (v27(&v19[v26], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  outlined init with copy of Date?(v19, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v27(&v19[v26], 1, v4) == 1)
  {
    (*(v61 + 8))(v13, v4);
LABEL_20:
    outlined destroy of NSObject?(v19, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  v28 = v61;
  v29 = v58;
  (*(v61 + 32))(v58, &v19[v26], v4);
  lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v28 + 8);
  v30(v29, v4);
  v30(v13, v4);
  outlined destroy of NSObject?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v31 = v59;
  v32 = v59[8];
  v33 = *(v14 + 48);
  outlined init with copy of Date?(v60 + v32, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = v62 + v32;
  v35 = v62;
  outlined init with copy of Date?(v34, &v17[v33], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v27(v17, 1, v4) == 1)
  {
    if (v27(&v17[v33], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v36 = v57;
  outlined init with copy of Date?(v17, v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v27(&v17[v33], 1, v4) == 1)
  {
    (*(v61 + 8))(v36, v4);
LABEL_27:
    outlined destroy of NSObject?(v17, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  v37 = v61;
  v38 = &v17[v33];
  v39 = v58;
  (*(v61 + 32))(v58, v38, v4);
  lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v37 + 8);
  v41(v39, v4);
  v41(v36, v4);
  v35 = v62;
  outlined destroy of NSObject?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v42 = v31[9];
  v43 = v60;
  v45 = *(v60 + v42);
  v44 = *(v60 + v42 + 8);
  v46 = (v35 + v42);
  v48 = *v46;
  v47 = v46[1];
  if (v44 >> 60 == 15)
  {
    if (v47 >> 60 == 15)
    {
      outlined copy of Data?(v45, v44);
      outlined copy of Data?(v48, v47);
      outlined consume of Data?(v45, v44);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v47 >> 60 == 15)
  {
LABEL_33:
    outlined copy of Data?(v45, v44);
    outlined copy of Data?(v48, v47);
    outlined consume of Data?(v45, v44);
    outlined consume of Data?(v48, v47);
    return 0;
  }

  outlined copy of Data?(v45, v44);
  outlined copy of Data?(v48, v47);
  v49 = specialized static Data.== infix(_:_:)(v45, v44, v48, v47);
  outlined consume of Data?(v48, v47);
  outlined consume of Data?(v45, v44);
  if (!v49)
  {
    return 0;
  }

LABEL_35:
  if (*(v43 + v31[10]) != *(v35 + v31[10]))
  {
    return 0;
  }

  v51 = v31[7];
  if (!*(v43 + v51))
  {
    return *(v35 + v51) == 0;
  }

  v52.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (!*(v35 + v31[7]))
  {

    return 0;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v54 = [(objc_class *)v52.super.isa isEqualToDictionary:isa];

  return v54;
}

uint64_t outlined init with take of TNCFollowUpAction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL specialized static TNCFollowUpItem.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for TNCFollowUpNotification(0);
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v49 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v21 = a1[3];
  v22 = a2[3];
  if (v21)
  {
    if (!v22 || (a1[2] != a2[2] || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = a1[5];
  v24 = a2[5];
  if (v23)
  {
    if (!v24 || (a1[4] != a2[4] || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = a1[7];
  v26 = a2[7];
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v26 || (a1[6] != a2[6] || v25 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v51 = v8;
  v27 = type metadata accessor for TNCFollowUpItem(0);
  if (!_sSasSQRzlE2eeoiySbSayxG_ABtFZ22ThreatNotificationCore17TNCFollowUpActionV_Tt1g5(*(a1 + *(v27 + 44)), *(a2 + *(v27 + 44))))
  {
    return 0;
  }

  v50 = v27;
  v28 = *(v27 + 48);
  v29 = *(v18 + 48);
  v30 = v28;
  outlined init with copy of Date?(a1 + v28, v20, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v52 = v29;
  outlined init with copy of Date?(a2 + v30, &v20[v29], &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v31 = *(v56 + 48);
  if (v31(v20, 1, v12) == 1)
  {
    if (v31(&v20[v52], 1, v12) == 1)
    {
      outlined destroy of NSObject?(v20, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  outlined init with copy of Date?(v20, v17, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  if (v31(&v20[v52], 1, v12) == 1)
  {
    outlined destroy of TNCFollowUpAction(v17, type metadata accessor for TNCFollowUpNotification);
LABEL_30:
    outlined destroy of NSObject?(v20, &_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMR);
    return 0;
  }

  outlined init with take of TNCFollowUpAction(&v20[v52], v14, type metadata accessor for TNCFollowUpNotification);
  v32 = specialized static TNCFollowUpNotification.== infix(_:_:)(v17, v14);
  outlined destroy of TNCFollowUpAction(v14, type metadata accessor for TNCFollowUpNotification);
  outlined destroy of TNCFollowUpAction(v17, type metadata accessor for TNCFollowUpNotification);
  outlined destroy of NSObject?(v20, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  if (!v32)
  {
    return 0;
  }

LABEL_32:
  v33 = v50;
  v34 = *(v50 + 32);
  v35 = *(v9 + 48);
  outlined init with copy of Date?(a1 + v34, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(a2 + v34, &v11[v35], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = v54;
  v36 = v55;
  v38 = *(v54 + 48);
  if (v38(v11, 1, v55) == 1)
  {
    if (v38(&v11[v35], 1, v36) == 1)
    {
      outlined destroy of NSObject?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v39 = v51;
  outlined init with copy of Date?(v11, v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v38(&v11[v35], 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_37:
    outlined destroy of NSObject?(v11, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    return 0;
  }

  v40 = &v11[v35];
  v41 = v53;
  (*(v37 + 32))(v53, v40, v36);
  lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  outlined destroy of NSObject?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (*(a1 + *(v33 + 40)) != *(a2 + *(v33 + 40)))
  {
    return 0;
  }

  v45 = *(v33 + 36);
  if (!*(a1 + v45))
  {
    return *(a2 + v45) == 0;
  }

  v46.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (!*(a2 + *(v33 + 36)))
  {

    return 0;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v48 = [(objc_class *)v46.super.isa isEqualToDictionary:isa];

  return v48;
}