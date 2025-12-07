uint64_t UsoTask.firstCommonSettingReferenceIdentifier()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for UsoIdentifier();
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = UsoTask.arguments.getter();
  if (*(v12 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      if (v15 >> 62)
      {
        goto LABEL_28;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E12A1FE0](0, v15);
          }

          else
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          v17 = dispatch thunk of UsoValue.getAsEntity()();

          if (!v17)
          {
            goto LABEL_18;
          }

          type metadata accessor for UsoEntity_common_Setting();

          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          v15 = v27;
          if (!v27)
          {

            return (*(v26 + 56))(a4, 1, 1, v9);
          }

          v18 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
          if (!v18)
          {
            (*(v26 + 56))(a4, 1, 1, v9);
          }

          v19 = v18;
          v25[0] = v15;
          v25[1] = v17;
          v20 = *(v18 + 16);
          if (!v20)
          {
LABEL_16:

            return (*(v26 + 56))(a4, 1, 1, v9);
          }

          v21 = 0;
          v25[2] = v26 + 16;
          v22 = (v26 + 8);
          while (v21 < *(v19 + 16))
          {
            v23 = (*(v26 + 16))(v11, v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v9);
            v15 = v25;
            MEMORY[0x1EEE9AC00](v23);
            v25[-2] = v11;
            if (specialized Sequence.contains(where:)(a3, &v25[-4], &outlined read-only object #0 of one-time initialization function for kSupportedCommonSettingIdentifierNamespaces))
            {

              (*(v26 + 32))(a4, v11, v9);
              return (*(v26 + 56))(a4, 0, 1, v9);
            }

            ++v21;
            (*v22)(v11, v9);
            if (v20 == v21)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_28:
          result = __CocoaSet.count.getter();
        }

        while (result);
      }
    }
  }

LABEL_18:
  v24 = *(v26 + 56);

  return v24(a4, 1, 1, v9);
}

BOOL UsoTask.isBatterySummarizationOverride(for:)(uint64_t a1, double a2)
{
  v30 = a1;
  v2 = type metadata accessor for DeviceIdiom();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for UsoIdentifier();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UsoTask.verbString.getter() == 0x736972616D6D7573 && v13 == 0xE900000000000065)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if ((UsoTask.hasUserEntities()(v14) & 1) == 0)
  {
    UsoTask.firstCommonSettingReferenceIdentifier()(0x636E657265666572, 0xE900000000000065, partial apply for closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier(), v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      if (UsoIdentifier.value.getter() == 0x79726574746162 && v18 == 0xE700000000000000)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          (*(v10 + 8))(v12, v9);
          return 0;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomOGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceIdiomOGMR);
      v21 = *(v3 + 72);
      v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DCA69C00;
      v24 = v23 + v22;
      v25 = *MEMORY[0x1E69D3480];
      v29 = v10;
      v26 = *(v3 + 104);
      v26(v24, v25, v2);
      v26(v24 + v21, *MEMORY[0x1E69D3488], v2);
      v28 = v3;
      v26(v24 + 2 * v21, *MEMORY[0x1E69D3498], v2);
      v26(v24 + 3 * v21, *MEMORY[0x1E69D34B0], v2);
      v26(v24 + 4 * v21, *MEMORY[0x1E69D34A0], v2);
      v26(v24 + 5 * v21, *MEMORY[0x1E69D34B8], v2);
      SiriEnvironment.currentDevice.getter();
      dispatch thunk of CurrentDevice.deviceIdiom.getter();

      v16 = specialized Sequence<>.contains(_:)(v5, v23);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v28 + 8))(v5, v2);
      (*(v29 + 8))(v12, v9);
      return v16;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  }

  return 0;
}

uint64_t UsoTask.hasUserEntities()(double a1)
{
  v1 = UsoTask.arguments.getter();
  if (!*(v1 + 16))
  {
    goto LABEL_10;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = *(*(v1 + 56) + 8 * v2);

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v4);
LABEL_8:

    v6 = dispatch thunk of UsoValue.getAsEntity()();

    if (v6)
    {

      return 1;
    }

    return 0;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier()(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = UsoIdentifier.namespace.getter();
  if (v4)
  {
    if (v3 == v1 && v4 == v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t specialized SettingsAffinityScorer.scoreOpenNoEntity(_:environment:)()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for RRCandidate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v19[0])
  {
    v11 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v11)
    {
      dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    }
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v12 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  static AffinityScorerUtils.topOpenableEntity(candidates:)(v12, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v13 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
    v14 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
    v15 = v6;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*(v1 + 8))(v3, v0);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v19[3])
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v19, v18, &_sypSgMd, &_sypSgMR);
      type metadata accessor for UsoEntity_common_AppEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      }

      (*(v8 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

    v13 = &_sypSgMd;
    v14 = &_sypSgMR;
    v15 = v19;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v15, v13, v14);
  return 5;
}

uint64_t specialized SettingsAffinityScorer.scoreCloseNoEntity(_:environment:)()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = type metadata accessor for RRCandidate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v19[0])
  {
    v11 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v11)
    {
      dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    }
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v12 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  static AffinityScorerUtils.topCloseableEntity(candidates:)(v12, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v13 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd;
    v14 = &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR;
    v15 = v6;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*(v1 + 8))(v3, v0);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v19[3])
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v19, v18, &_sypSgMd, &_sypSgMR);
      type metadata accessor for UsoEntity_common_UserEntity();
      if (swift_dynamicCast() || (type metadata accessor for UsoEntity_common_AppEntity(), swift_dynamicCast()))
      {

        dispatch thunk of CodeGenBase.usoIdentifiers.getter();
      }

      (*(v8 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

    v13 = &_sypSgMd;
    v14 = &_sypSgMR;
    v15 = v19;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v15, v13, v14);
  return 5;
}

uint64_t specialized SettingsAffinityScorer.scoreForEnvironmentOrAtmosphereIdentifiers(parse:environment:)(double a1)
{
  v1 = type metadata accessor for UsoIdentifier();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  if (specialized static AffinityScorerUtils.getTask(_:)())
  {
    static UsoTask_CodegenConverter.convert(task:)();
    outlined init with copy of ReferenceResolutionClientProtocol?(v61, v59, &_sypSgMd, &_sypSgMR);
    if (!v60)
    {
LABEL_82:
      outlined destroy of ReferenceResolutionClientProtocol?(v59, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.executor);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1DC659000, v44, v45, "SettingsAffinityScorer No Env/Atm namespace identifiers found", v46, 2u);
        MEMORY[0x1E12A2F50](v46, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v61, &_sypSgMd, &_sypSgMR);
      return 5;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v59, v58, &_sypSgMd, &_sypSgMR);
    type metadata accessor for UsoTask_open_uso_NoEntity();
    if (swift_dynamicCast())
    {
      v14 = specialized SettingsAffinityScorer.scoreOpenNoEntity(_:environment:)();
      goto LABEL_11;
    }

    type metadata accessor for UsoTask_close_uso_NoEntity();
    if (swift_dynamicCast())
    {
      v14 = specialized SettingsAffinityScorer.scoreCloseNoEntity(_:environment:)();
LABEL_11:
      v18 = v14;
      v20 = v14;

      if (v20 != 5)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v61, &_sypSgMd, &_sypSgMR);

        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        outlined destroy of ReferenceResolutionClientProtocol?(v59, &_sypSgMd, &_sypSgMR);
        return v18;
      }

      goto LABEL_81;
    }

    type metadata accessor for UsoTask_disable_common_Setting();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_enable_common_Setting();
      if (!swift_dynamicCast())
      {
LABEL_81:
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        goto LABEL_82;
      }

      v13 = v57;

      v21 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();

      if (!v21)
      {
        goto LABEL_57;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFF8;
      if (!(v21 >> 62))
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_78:

          goto LABEL_79;
        }

        goto LABEL_39;
      }

LABEL_77:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_78;
      }

LABEL_39:
      if ((v21 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v21);
      }

      else
      {
        if (!*(v22 + 16))
        {
          __break(1u);
LABEL_90:
          swift_once();
LABEL_60:
          v33 = type metadata accessor for Logger();
          __swift_project_value_buffer(v33, static Logger.executor);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_1DC659000, v34, v35, "SettingsAffinityScorer Env/Atm namespace identifiers found", v36, 2u);
            MEMORY[0x1E12A2F50](v36, -1, -1);
          }

          v37 = v13;
LABEL_69:
          outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v61, &_sypSgMd, &_sypSgMR);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          outlined destroy of ReferenceResolutionClientProtocol?(v59, &_sypSgMd, &_sypSgMR);
          return 3;
        }
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      v21 = v55;
      if (v55)
      {
        v27 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

        if (v27)
        {
          v53 = *(v27 + 16);
          if (v53)
          {
            v49 = v13;
            v13 = 0;
            v22 = 0;
            v52 = (v27 + ((v2[80] + 32) & ~v2[80]));
            v50 = (v2 + 8);
            v51 = v2 + 16;
            while (1)
            {
              if (v13 >= *(v27 + 16))
              {
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

              v7 = v27;
              (*(v2 + 2))(v4, &v52[*(v2 + 9) * v13], v1);
              v28 = UsoIdentifier.namespace.getter();
              v54 = &v48;
              v30 = v29 ? v28 : 0;
              v21 = v29 ? v29 : 0xE000000000000000;
              v55 = v30;
              v56 = v21;
              MEMORY[0x1EEE9AC00](v28);
              *(&v48 - 2) = &v55;
              v31 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v48 - 4), &outlined read-only object #0 of one-time initialization function for envNamespaces);

              if (v31)
              {
                break;
              }

              ++v13;
              (*v50)(v4, v1);
              v27 = v7;
              if (v53 == v13)
              {
                goto LABEL_78;
              }
            }

            (*(v2 + 4))(v10, v4, v1);
            (*(v2 + 7))(v10, 0, 1, v1);
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v38 = type metadata accessor for Logger();
            __swift_project_value_buffer(v38, static Logger.executor);
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              *v41 = 0;
              _os_log_impl(&dword_1DC659000, v39, v40, "SettingsAffinityScorer Env/Atm namespace identifiers found", v41, 2u);
              MEMORY[0x1E12A2F50](v41, -1, -1);
            }

            v37 = v10;
            goto LABEL_69;
          }

          goto LABEL_78;
        }
      }

LABEL_57:

LABEL_79:
      (*(v2 + 7))(v10, 1, 1, v1);
      v42 = v10;
      goto LABEL_80;
    }

    v10 = v57;

    v21 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();

    if (!v21)
    {
      goto LABEL_56;
    }

    v22 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
LABEL_72:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v21 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v21);
        goto LABEL_21;
      }

      if (*(v22 + 16))
      {

LABEL_21:

        dispatch thunk of CodeGenListEntry.entry.getter();

        v21 = v55;
        if (v55)
        {
          v4 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          if (v4)
          {
            v53 = *(v4 + 2);
            if (v53)
            {
              v49 = v10;
              v10 = 0;
              v22 = 0;
              v52 = &v4[(v2[80] + 32) & ~v2[80]];
              v54 = v2;
              v50 = (v2 + 8);
              v51 = v2 + 16;
              while (1)
              {
                if (v10 >= *(v4 + 2))
                {
                  __break(1u);
                  goto LABEL_71;
                }

                v2 = v4;
                (*(v54 + 2))(v7, &v52[*(v54 + 9) * v10], v1);
                v23 = UsoIdentifier.namespace.getter();
                v25 = v24 ? v23 : 0;
                v21 = v24 ? v24 : 0xE000000000000000;
                v55 = v25;
                v56 = v21;
                MEMORY[0x1EEE9AC00](v23);
                *(&v48 - 2) = &v55;
                v26 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v48 - 4), &outlined read-only object #0 of one-time initialization function for envNamespaces);

                if (v26)
                {
                  break;
                }

                ++v10;
                (*v50)(v7, v1);
                if (v53 == v10)
                {

                  v2 = v54;
                  goto LABEL_74;
                }
              }

              v32 = v54;
              (*(v54 + 4))(v13, v7, v1);
              (*(v32 + 7))(v13, 0, 1, v1);
              if (one-time initialization token for executor != -1)
              {
                goto LABEL_90;
              }

              goto LABEL_60;
            }

            goto LABEL_73;
          }
        }

LABEL_56:

LABEL_74:
        (*(v2 + 7))(v13, 1, 1, v1);
        v42 = v13;
LABEL_80:
        outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        goto LABEL_81;
      }

      __break(1u);
      goto LABEL_77;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = 2;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "SettingsAffinityScorer Could not extract usoTask from parse", v19, 2u);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  else
  {

    return 2;
  }

  return v18;
}

uint64_t specialized SettingsAffinityScorer.isIdentifierMatchScreen(on:)()
{
  v25 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v8 = v7;
  v23[0] = *(v7 + 16);
  if (!v23[0])
  {
LABEL_14:

    return 0;
  }

  v9 = 0;
  v24 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v23[1] = v4 + 16;
  v10 = (v0 + 8);
  v11 = (v4 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v4 + 16))(v6, v24 + *(v4 + 72) * v9, v3);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v13 = Google_Protobuf_StringValue.value.getter();
    v15 = v14;
    (*v10)(v2, v25);
    if (v13 == 0x61436D6574737973 && v15 == 0xEE0079726F676574)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        (*v11)(v6, v3);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x6E6565726373 && v17 == 0xE600000000000000)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v6, v3);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v23[0] == ++v9)
    {
      goto LABEL_14;
    }
  }

  (*v11)(v6, v3);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "SystemCommandsAffinityScorer | Found screen identifier", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  return 1;
}

uint64_t specialized SettingsAffinityScorer.scoreForSupportedIdentifierMatches(parse:environment:)(double a1, uint64_t a2, uint64_t a3)
{
  v203 = a3;
  v215 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v213 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v214 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  MEMORY[0x1EEE9AC00](v205);
  v5 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v188 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v194 = &v188 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v188 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v188 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v193 = &v188 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v192 = &v188 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v202 = &v188 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v201 = &v188 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v204 = &v188 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v200 = &v188 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v211 = &v188 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v206 = &v188 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v212 = &v188 - v32;
  v199 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v188 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Siri_Nlu_External_UserParse();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v188 - v43;
  v45 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v46 = *(v45 - 8);
  v207 = v45;
  v208 = v46;
  MEMORY[0x1EEE9AC00](v45);
  v196 = &v188 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v210 = &v188 - v49;
  v50 = specialized static AffinityScorerUtils.getTask(_:)();
  if (v50)
  {
    v190 = v8;
    v189 = v5;
    v209 = v50;
    v51 = USOParse.userParse.getter();
    v52 = v41;
    v53 = MEMORY[0x1E129C0F0](v51);
    (*(v39 + 8))(v41, v38);
    v54 = *(v53 + 16);
    if (!v54)
    {
LABEL_7:

      v56 = 1;
      goto LABEL_13;
    }

    v55 = 0;
    while (1)
    {
      if (v55 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_96;
      }

      (*(v35 + 16))(v37, v53 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v55, v34);
      v52 = v37;
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {
        break;
      }

      ++v55;
      (*(v35 + 8))(v37, v34);
      if (v54 == v55)
      {
        goto LABEL_7;
      }
    }

    (*(v35 + 32))(v44, v37, v34);
    v56 = 0;
LABEL_13:
    (*(v35 + 56))(v44, v56, 1, v34);
    v62 = (*(v35 + 48))(v44, 1, v34);
    v63 = v212;
    if (v62 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.executor);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v61 = 2;
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1DC659000, v65, v66, "SettingsAffinityScorer Could not extract userStatedTask", v67, 2u);
        MEMORY[0x1E12A2F50](v67, -1, -1);

        return v61;
      }

      return 2;
    }

    v68 = v197;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v35 + 8))(v44, v34);
    v69 = v196;
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v198 + 8))(v68, v199);
    (*(v208 + 32))(v210, v69, v207);
    UsoTask.firstCommonSettingReferenceIdentifier()(0x636E657265666572, 0xE900000000000065, partial apply for closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier(), v63);
    v70 = v206;
    UsoTask.firstUserEntityNamesIdentifier()(v206);
    UsoTask.firstCommonSettingReferenceIdentifier()(0x797469746E65, 0xE600000000000000, partial apply for closure #1 in closure #1 in UsoTask.firstEntityNameIdentifier(), v211);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    v72 = __swift_project_value_buffer(v71, static Logger.executor);
    v73 = v200;
    outlined init with copy of ReferenceResolutionClientProtocol?(v63, v200, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    v76 = os_log_type_enabled(v74, v75);
    v199 = v72;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v216[0] = v78;
      *v77 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v73, v204, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v79 = String.init<A>(describing:)();
      v81 = v80;
      outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v216);

      *(v77 + 4) = v82;
      _os_log_impl(&dword_1DC659000, v74, v75, "SettingsAffinityScorer settingIdentifier: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1E12A2F50](v78, -1, -1);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    v83 = v201;
    outlined init with copy of ReferenceResolutionClientProtocol?(v70, v201, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v216[0] = v87;
      *v86 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v83, v204, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v88 = String.init<A>(describing:)();
      v90 = v89;
      outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v216);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_1DC659000, v84, v85, "SettingsAffinityScorer userEntityIdentifier: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x1E12A2F50](v87, -1, -1);
      MEMORY[0x1E12A2F50](v86, -1, -1);
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    v92 = v202;
    outlined init with copy of ReferenceResolutionClientProtocol?(v211, v202, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v216[0] = v96;
      *v95 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v92, v204, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v97 = String.init<A>(describing:)();
      v99 = v98;
      outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v216);

      *(v95 + 4) = v100;
      _os_log_impl(&dword_1DC659000, v93, v94, "SettingsAffinityScorer entityIdentifier: %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x1E12A2F50](v96, -1, -1);
      MEMORY[0x1E12A2F50](v95, -1, -1);
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    }

    if (UsoTask.isBatterySummarizationOverride(for:)(v203, v101))
    {
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_1DC659000, v102, v103, "SettingsAffinityScorer detected battery summerization override case", v104, 2u);
        MEMORY[0x1E12A2F50](v104, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      (*(v208 + 8))(v210, v207);
      outlined destroy of ReferenceResolutionClientProtocol?(v212, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      return 4;
    }

    v105 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v106 = 0;
    v107 = *(v105 + 16);
    v108 = (v213 + 8);
    while (v107 != v106)
    {
      if (v106 >= *(v105 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      (*(v213 + 16))(v214, v105 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v106, v215);
      if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0xD000000000000017 && 0x80000001DCA880D0 == v110)
      {

        (*v108)(v214, v215);
LABEL_43:

        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          v114 = "SettingsAffinityScorer detected identifier with Settings backingAppBundleID";
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      ++v106;
      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v108)(v214, v215);
      if (v109)
      {
        goto LABEL_43;
      }
    }

    v44 = type metadata accessor for UsoIdentifier();
    v37 = *(v44 - 1);
    v117 = *(v37 + 6);
    v118 = v212;
    v119 = v117(v212, 1, v44);
    v120 = v195;
    if (v119 != 1)
    {
      if (v117(v206, 1, v44) != 1)
      {
        v137 = v192;
        outlined init with copy of ReferenceResolutionClientProtocol?(v212, v192, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v138 = v193;
        outlined init with copy of ReferenceResolutionClientProtocol?(v206, v193, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          LODWORD(v214) = v140;
          v142 = v141;
          v215 = swift_slowAlloc();
          v216[0] = v215;
          *v142 = 136315394;
          v143 = v204;
          outlined init with copy of ReferenceResolutionClientProtocol?(v137, v204, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v144 = String.init<A>(describing:)();
          v146 = v145;
          outlined destroy of ReferenceResolutionClientProtocol?(v137, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, v216);

          *(v142 + 4) = v147;
          *(v142 + 12) = 2080;
          outlined init with copy of ReferenceResolutionClientProtocol?(v138, v143, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v148 = String.init<A>(describing:)();
          v150 = v149;
          outlined destroy of ReferenceResolutionClientProtocol?(v138, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, v216);

          *(v142 + 14) = v151;
          _os_log_impl(&dword_1DC659000, v139, v214, "SettingsAffinityScorer Found matching setting identifier %s paired with a matching user entity identifier %s", v142, 0x16u);
          v152 = v215;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v152, -1, -1);
          MEMORY[0x1E12A2F50](v142, -1, -1);
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v138, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v137, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        (*(v208 + 8))(v210, v207);
        goto LABEL_47;
      }

      v122 = UsoTask.hasUserEntities()(v121);
      v118 = v212;
      if (v122)
      {
        goto LABEL_51;
      }

      v123 = v191;
      outlined init with copy of ReferenceResolutionClientProtocol?(v212, v191, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v216[0] = v127;
        *v126 = 136315138;
        v128 = v123;
        outlined init with copy of ReferenceResolutionClientProtocol?(v123, v204, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v129 = String.init<A>(describing:)();
        v131 = v130;
        v132 = v128;
        v118 = v212;
        outlined destroy of ReferenceResolutionClientProtocol?(v132, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v216);

        *(v126 + 4) = v133;
        _os_log_impl(&dword_1DC659000, v124, v125, "SettingsAffinityScorer Found matching setting identifier %s on a parse without UserEntities", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        MEMORY[0x1E12A2F50](v127, -1, -1);
        MEMORY[0x1E12A2F50](v126, -1, -1);
      }

      else
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      (*(v208 + 8))(v210, v207);
      goto LABEL_88;
    }

LABEL_51:
    outlined init with copy of ReferenceResolutionClientProtocol?(v118, v120, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    if (v117(v120, 1, v44) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      goto LABEL_66;
    }

    v134 = UsoIdentifier.value.getter();
    v136 = v135;
    (*(v37 + 1))(v120, v44);
    if (v134 == 0xD000000000000011 && 0x80000001DCA880B0 == v136)
    {

      goto LABEL_63;
    }

    v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v153)
    {
LABEL_63:
      if (specialized SettingsAffinityScorer.isIdentifierMatchScreen(on:)())
      {
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          v114 = "SettingsAffinityScorer Found 'displayBrightness' identifier paired with 'screen' identifier";
LABEL_45:
          _os_log_impl(&dword_1DC659000, v111, v112, v114, v113, 2u);
          MEMORY[0x1E12A2F50](v113, -1, -1);
        }

LABEL_46:

        outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        (*(v208 + 8))(v210, v207);
LABEL_47:
        v115 = v212;
        goto LABEL_48;
      }
    }

LABEL_66:
    v154 = v194;
    outlined init with copy of ReferenceResolutionClientProtocol?(v211, v194, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
    if (v117(v154, 1, v44) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v154, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      goto LABEL_68;
    }

    v159 = UsoIdentifier.value.getter();
    v160 = v154;
    v161 = v159;
    v163 = v162;
    (*(v37 + 1))(v160, v44);
    if (v161 == 0xD000000000000011 && 0x80000001DCA880B0 == v163)
    {

      goto LABEL_79;
    }

    v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v173)
    {
LABEL_79:
      v111 = Logger.logObject.getter();
      v174 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v111, v174))
      {
        v175 = swift_slowAlloc();
        *v175 = 0;
        _os_log_impl(&dword_1DC659000, v111, v174, "SettingsAffinityScorer Found 'displayBrightness' identifier alone on entity without reference", v175, 2u);
        MEMORY[0x1E12A2F50](v175, -1, -1);
      }

      goto LABEL_46;
    }

LABEL_68:
    v155 = v212;
    if (v117(v212, 1, v44) != 1)
    {
      v164 = v190;
      outlined init with copy of ReferenceResolutionClientProtocol?(v155, v190, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v216[0] = v168;
        *v167 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol?(v164, v204, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v169 = String.init<A>(describing:)();
        v171 = v170;
        outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        v172 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, v216);

        *(v167 + 4) = v172;
        _os_log_impl(&dword_1DC659000, v165, v166, "SettingsAffinityScorer Found matching setting identifier %s on a parse with UserEntities for another domain", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v168);
        MEMORY[0x1E12A2F50](v168, -1, -1);
        MEMORY[0x1E12A2F50](v167, -1, -1);
        v155 = v212;
      }

      else
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      (*(v208 + 8))(v210, v207);
      outlined destroy of ReferenceResolutionClientProtocol?(v155, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v206, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
      return 2;
    }

    static UsoTask_CodegenConverter.convert(task:)();

    if (v216[3])
    {
      type metadata accessor for UsoTask_noVerb_common_Setting();
      if (swift_dynamicCast())
      {

        v52 = v189;
        outlined init with copy of ReferenceResolutionClientProtocol?(v211, v189, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        if (v117(v52, 1, v44) == 1)
        {
          v156 = &_s12SiriOntology13UsoIdentifierVSgMd;
          v157 = &_s12SiriOntology13UsoIdentifierVSgMR;
          v158 = v52;
          goto LABEL_90;
        }

LABEL_96:
        v179 = v52;
        v180 = UsoIdentifier.value.getter();
        v182 = v181;
        (*(v37 + 1))(v179, v44);
        if (v180 == 0x79726574746162 && v182 == 0xE700000000000000)
        {

          v118 = v212;
        }

        else
        {
LABEL_100:
          v184 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v118 = v212;
          if ((v184 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        if ((UsoTask.hasUserEntities()(v183) & 1) == 0)
        {
          v185 = Logger.logObject.getter();
          v186 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v185, v186))
          {
            v187 = swift_slowAlloc();
            *v187 = 0;
            _os_log_impl(&dword_1DC659000, v185, v186, "SettingsAffinityScorer Found 'battery' identifier alone without reference or user entity", v187, 2u);
            MEMORY[0x1E12A2F50](v187, -1, -1);
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          (*(v208 + 8))(v210, v207);
LABEL_88:
          v115 = v118;
LABEL_48:
          outlined destroy of ReferenceResolutionClientProtocol?(v115, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v206, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
          return 3;
        }

LABEL_92:
        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_1DC659000, v176, v177, "SettingsAffinityScorer Found no relevant identifiers", v178, 2u);
          MEMORY[0x1E12A2F50](v178, -1, -1);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v211, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        (*(v208 + 8))(v210, v207);
        outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v206, &_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
        return 1;
      }
    }

    else
    {
      v156 = &_sypSgMd;
      v157 = &_sypSgMR;
      v158 = v216;
LABEL_90:
      outlined destroy of ReferenceResolutionClientProtocol?(v158, v156, v157);
    }

    v118 = v212;
    goto LABEL_92;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static Logger.executor);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v58, v59))
  {

    return 2;
  }

  v60 = swift_slowAlloc();
  *v60 = 0;
  _os_log_impl(&dword_1DC659000, v58, v59, "SettingsAffinityScorer Could not extract usoTask from parse", v60, 2u);
  MEMORY[0x1E12A2F50](v60, -1, -1);

  return 2;
}

uint64_t specialized SettingsAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for USOParse();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Input.parse.getter();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x1E69D0138])
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    if (v13 <= 0.5)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.executor);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_31;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "SettingsAffinityScorer ignoring low confidence pommes response";
      goto LABEL_30;
    }

    v14 = dispatch thunk of PommesResponse.experiences.getter();
    if (v14 >> 62)
    {
      v31 = v14;
      v32 = __CocoaSet.count.getter();
      v14 = v31;
      if (v32)
      {
        goto LABEL_5;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E12A1FE0](0);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;

      type metadata accessor for DeviceExpertExperience();
      if (swift_dynamicCastClass())
      {

        return 3;
      }

LABEL_27:
      if (one-time initialization token for executor == -1)
      {
LABEL_28:
        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.executor);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v23, v24))
        {
LABEL_31:

          return 0;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "SettingsAffinityScorer ignoring unsupported pommes response";
LABEL_30:
        _os_log_impl(&dword_1DC659000, v23, v24, v26, v25, 2u);
        MEMORY[0x1E12A2F50](v25, -1, -1);
        goto LABEL_31;
      }

LABEL_34:
      swift_once();
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v11 == *MEMORY[0x1E69D0168])
  {
    (*(v8 + 96))(v10, v7);
    v18 = (*(v4 + 32))(v6, v10, v3);
    v19 = specialized SettingsAffinityScorer.scoreForEnvironmentOrAtmosphereIdentifiers(parse:environment:)(v18);
    if (v19 == 5)
    {
      v21 = specialized SettingsAffinityScorer.scoreForSupportedIdentifierMatches(parse:environment:)(v20, v6, a2);
    }

    else
    {
      v21 = v19;
    }

    (*(v4 + 8))(v6, v3);
    return v21;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "SettingsAffinityScorer Got unexpected parse", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return 2;
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  if (a1 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v20 = a2;
    v11 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        a3(i, a1);
        type metadata accessor for OS_dispatch_queue(0, a4, a5);
        swift_dynamicCast();
        v22 = v11;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          v20(v14 > 1, v15 + 1, 1);
          v11 = v22;
        }

        *(v11 + 16) = v15 + 1;
        outlined init with take of Any(v21, (v11 + 32 * v15 + 32));
      }
    }

    else
    {
      v16 = (a1 + 32);
      type metadata accessor for OS_dispatch_queue(0, a4, a5);
      do
      {
        v17 = *v16;
        swift_dynamicCast();
        v22 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          v20(v18 > 1, v19 + 1, 1);
          v11 = v22;
        }

        *(v11 + 16) = v19 + 1;
        outlined init with take of Any(v21, (v11 + 32 * v19 + 32));
        ++v16;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t SharedContextServiceImpl.__allocating_init(bridge:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharedContextServiceImpl._fetchContext(with:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*v2 + 104);

  v9(v7, 1, partial apply for thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Any]?) -> (), v8);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Any]?) -> ()(unint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBuffer._getElementSlowPath(_:), &lazy cache variable for type metadata for AFServiceDeviceContext, 0x1E698D1D8);
  }

  else
  {
    v3 = 0;
  }

  a2(v3);
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFServiceDeviceContext, 0x1E698D1D8);
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.subscript.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v6 = 0xD000000000000046;
    v5 = 0x80000001DCA88170;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  _StringGuts.grow(_:)(82);
  v5 = 0x80000001DCA88120;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x1E12A1580](v6, v5);
  v8 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v8);

  MEMORY[0x1E12A1580](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t SharedFlowPluginConnection.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SharedFlowPluginConnection.bundlePath.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *SharedFlowPluginConnection.__allocating_init(initialRemoteConversation:bundleId:bundlePath:sharedFlowPluginServiceClient:loadedConversationSerial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[6] = a1;
  v16[7] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[8] = 0;
  v16[9] = a7;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(30);

  MEMORY[0x1E12A1580](a3, a4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  swift_unknownObjectRelease();
  type metadata accessor for InterruptibleTaskManager();
  v17 = swift_allocObject();
  v17[4] = MEMORY[0x1E69E7CC8];
  v17[5] = 0;
  v17[2] = 0xD00000000000001BLL;
  v17[3] = 0x80000001DCA881C0;
  v16[10] = a8;
  v16[11] = v17;
  return v16;
}

void *SharedFlowPluginConnection.init(initialRemoteConversation:bundleId:bundlePath:sharedFlowPluginServiceClient:loadedConversationSerial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a1;
  v8[7] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[8] = 0;
  v8[9] = a7;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(30);

  MEMORY[0x1E12A1580](a3, a4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  swift_unknownObjectRelease();
  type metadata accessor for InterruptibleTaskManager();
  v12 = swift_allocObject();
  v12[4] = MEMORY[0x1E69E7CC8];
  v12[5] = 0;
  v12[2] = 0xD00000000000001BLL;
  v12[3] = 0x80000001DCA881C0;
  v8[10] = a8;
  v8[11] = v12;
  return v8;
}

uint64_t closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a4;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4[11] = v5;
  v4[12] = *(v5 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[15] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v6, 0);
}

uint64_t closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Loading a new RemoteConversation object, since the connection to SharedFlowPluginService was previously invalidated.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[10];

  v0[16] = v6[9];
  v0[17] = v6[2];
  v0[18] = v6[3];
  v0[19] = v6[4];
  v0[20] = v6[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = static MessageBusActor.shared;
  v0[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v8, 0);
}

{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[13];
  v6 = v0[11];
  outlined init with copy of UUID?(v0[14], v5);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[22] = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = 0;
  v8[7] = 0;
  outlined init with take of UUID?(v5, v8 + v7);

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(&async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v8);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  outlined destroy of UUID?(v1);

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v2, 0);
}

{
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[4];
    v4 = v0[9];
    v3 = v0[10];

    *(v3 + 48) = v1;
    *(v3 + 56) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v4 = v1;
    v4[1] = v2;

    v5 = v0[1];

    return v5();
  }

  else
  {
    v9 = v0 + 17;
    v8 = v0[17];
    v7 = v9[1];
    _StringGuts.grow(_:)(75);
    MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA88260);
    MEMORY[0x1E12A1580](v8, v7);
    MEMORY[0x1E12A1580](0xD00000000000001DLL, 0x80000001DCA88290);

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/SharedFlowPluginService/SharedFlowPluginConnection.swift", 144, 2, 93);
  }
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  outlined destroy of UUID?(v1);

  return MEMORY[0x1EEE6DFA0](closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:), v2, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[24] = a1;
  v5[25] = v2;

  v6 = v4[21];
  if (v2)
  {
    v7 = closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v7 = closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

SiriKitRuntime::RemoteConversationConnectionInvalidationResult __swiftcall SharedFlowPluginConnection.invalidate()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Invalidating RemoteConversation XPC connection.", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = v1[11];
  swift_beginAccess();
  v7 = *(*(v6 + 32) + 16) == 0;
  v1[8] = 0;

  v1[6] = 0;
  v1[7] = 0;
  swift_unknownObjectRelease();
  InterruptibleTaskManager.invalidate()();
  return v7;
}

uint64_t partial apply for closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #2 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #3 in SharedFlowPluginConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v6, v7);
}

uint64_t SharedFlowPluginService.WarmupTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t SharedFlowPluginService.CurrentTurnCache.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SharedFlowPluginService.__allocating_init(overrideFlowLoader:overrideSiriKitRuntime:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SharedFlowPluginService.init(overrideFlowLoader:overrideSiriKitRuntime:)(a1, a2);
  return v4;
}

void *SharedFlowPluginService.init(overrideFlowLoader:overrideSiriKitRuntime:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 56) = AFIsInternalInstall();
  type metadata accessor for SharedFlowPluginService.WarmupTracker();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  v3[9] = v6;
  type metadata accessor for SharedFlowPluginService.CurrentTurnCache();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v3[10] = v7;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginService.swift", 44, 2, "init(overrideFlowLoader:overrideSiriKitRuntime:)", 48, 2);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v12, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMd, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMR);
  if (!*(&v13 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v12, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMd, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMR);
    v10 = type metadata accessor for DirectFlowPluginLoaderImpl();
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x1E69E7CC8];
    v3[5] = v10;
    v3[6] = &protocol witness table for DirectFlowPluginLoaderImpl;
    v3[2] = v11;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v12, v15);
  outlined init with take of ReferenceResolutionClientProtocol(v15, (v3 + 2));
  if (!a2)
  {
LABEL_5:
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    type metadata accessor for SiriKitRuntimeState();
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    swift_allocObject();
    a2 = SiriKitRuntimeState.init(customEventSender:rrClient:)(v15, &v12);
  }

LABEL_6:
  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMd, &_s14SiriKitRuntime22DirectFlowPluginLoader_pSgMR);
  v3[8] = a2;
  return v3;
}

uint64_t SharedFlowPluginService.startTurn(turnData:bridge:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginService.swift", 44, 2, "startTurn(turnData:bridge:reply:)", 33, 2);
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a1;
  v14[4] = a2;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:);
  v16[5] = v14;
  v16[6] = a3;
  v16[7] = a4;

  v17 = a1;
  swift_unknownObjectRetain();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:), v16);
}

id SharedFlowPluginService.CurrentTurnCache.set(_:)(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  return a1;
}

void SharedFlowPluginService.postSelectedFlowPlugin(bundleId:)(uint64_t a1, unint64_t a2)
{
  if (*(v2 + 56) == 1)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v6 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA88550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x67756C50776F6C46;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xEA00000000006E69;
      *(inited + 48) = a1;
      *(inited + 56) = a2;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.executor);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v20 = v12;
        *v11 = 136315138;
        v13 = Dictionary.description.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1DC659000, v9, v10, "Posting notification with params: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E12A2F50](v12, -1, -1);
        MEMORY[0x1E12A2F50](v11, -1, -1);
      }

      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      if (DistributedCenter)
      {
        v17 = DistributedCenter;
        v18 = v6;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        CFNotificationCenterPostNotification(v17, v18, 0, isa, 1u);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t SharedFlowPluginService.endTurn(reply:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginService.swift", 44, 2, "endTurn(reply:)", 15, 2);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = one-time initialization token for shared;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;
  v13 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in SharedFlowPluginService.endTurn(reply:), v14);
}

uint64_t closure #1 in SharedFlowPluginService.endTurn(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.endTurn(reply:), v7, 0);
}

uint64_t closure #1 in SharedFlowPluginService.endTurn(reply:)()
{
  v1 = v0[3];
  v2 = *(v0[2] + 80);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v1();
  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall SharedFlowPluginService.CurrentTurnCache.reset()()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t SharedFlowPluginService.CurrentTurnCache.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t SharedFlowPluginService.CurrentTurnCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter, v6);
}

uint64_t closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter()
{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter, 0, 0);
}

{
  specialized static SharedFlowPluginService.WarmupTracker.warmup()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharedFlowPluginService.WarmupTracker.ensureWarmedUp()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](SharedFlowPluginService.WarmupTracker.ensureWarmedUp(), v0, 0);
}

{
  v1 = SharedFlowPluginService.WarmupTracker.warmupTask.getter();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = SharedFlowPluginService.WarmupTracker.ensureWarmedUp();
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v2, v1, v3);
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl, v1, 0);
}

Swift::Void __swiftcall SharedFlowPluginService.WarmupTracker.beginWarmupIfNeeded()()
{
  SharedFlowPluginService.WarmupTracker.warmupTask.getter();
}

uint64_t SharedFlowPluginService.WarmupTracker.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SharedFlowPluginService.WarmupTracker.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SharedFlowPluginService.WarmupTracker.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t SharedFlowPluginService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t SharedFlowPluginService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in SharedFlowPluginService.endTurn(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginService.endTurn(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of SharedFlowPluginService.WarmupTracker.ensureWarmedUp()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v4();
}

uint64_t partial apply for closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter();
}

void specialized static SharedFlowPluginService.WarmupTracker.warmup()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, v1, v2, "SharedFlowPluginService: warmup begin", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Start preloading CAT.", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  [objc_opt_self() preload];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "CAT preloaded.", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v10, "SharedFlowPluginService: warmup end", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }
}

BOOL partial apply for closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)()
{
  return closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(*(v0 + 16));
}

{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked))
  {
    return 1;
  }

  v2 = MKBGetDeviceLockState();
  return v2 != 3 && v2 != 0;
}

void *SharedFlowPluginServiceClient.__allocating_init(connectionProvider:onConnectionInterrupted:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = specialized SharedFlowPluginServiceClient.__allocating_init(connectionProvider:onConnectionInterrupted:)(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4[9] = v5;
  v4[10] = *(v5 + 64);
  v4[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[12] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v6, 0);
}

uint64_t SharedFlowPluginServiceClient.startTurn(turnData:bridge:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v9 = *(v0 + 48);
  outlined init with copy of RemoteConversationTurnData(*(v0 + 40), v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_allocObject();
  *(v0 + 104) = v6;
  outlined init with take of RemoteConversationTurnData(v2, v6 + v4);
  *(v6 + v5) = v9;
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = SharedFlowPluginServiceClient.startTurn(turnData:bridge:);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(v7, &async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v6);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = SharedFlowPluginServiceClient.startTurn(turnData:bridge:);
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v8[13] = v9;
  v8[14] = *(v9 + 64);
  v8[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v8[16] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:), v10, 0);
}

uint64_t SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  outlined init with copy of UUID?(v0[11], v1);
  v9 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v10 = swift_allocObject();
  v0[17] = v10;
  v10[2] = v8;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v4;
  v10[6] = v5;
  v10[7] = v3;
  outlined init with take of UUID?(v1, v10 + v9);

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(&closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)partial apply, v10);
}

{

  v1 = v0[1];
  v3 = v0[20];
  v2 = v0[21];

  return v1(v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = v6[16];
    v8 = SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
  }

  else
  {
    v9 = v6[16];

    v6[20] = a2;
    v6[21] = a1;
    v8 = SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:);
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

void *SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.invalidate()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginServiceClient.swift", 50, 2, "invalidate()", 12, 2);
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    [v3 invalidate];
    swift_unknownObjectRelease();

    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;

    outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v4, v5);
  }
}

uint64_t SharedFlowPluginServiceClient.handleInvalidation()()
{
  *(v1 + 64) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 72) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginServiceClient.swift", 50, 2, "handleInvalidation()", 20, 2);
  v3 = *(v1 + 48);
  *(v0 + 88) = v3;
  v4 = swift_beginAccess();
  *(v0 + 96) = *(*(v3 + 32) + 16);
  v7 = *(v1 + 16);
  v6 = v1 + 16;
  v5 = v7;
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = v5;
    swift_unknownObjectRetain();
    [v9 invalidate];

    swift_unknownObjectRelease();
    v10 = *v6;
    v11 = *(v8 + 24);
    *v6 = 0;
    *(v6 + 8) = 0;
    v4 = outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v10, v11);
  }

  v12 = *(*(v0 + 64) + 32);
  *(v0 + 104) = v12;
  v13 = (*(*v12 + 136))(v4);
  *(v0 + 112) = v13;
  v14 = *(v13 + 16);
  *(v0 + 120) = v14;
  if (v14)
  {
    v15 = 0;
    v16 = (*v12 + 120) & 0xFFFFFFFFFFFFLL | 0x41FB000000000000;
    *(v0 + 128) = *(*v12 + 120);
    *(v0 + 136) = v16;
    *(v0 + 200) = 0;
    while (1)
    {
      *(v0 + 144) = v15;
      v17 = *(v0 + 112);
      if (v15 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v18 = (*(v0 + 128))(*(v17 + 8 * v15 + 32));
      *(v0 + 152) = v18;
      if (v18)
      {
        break;
      }

      v15 = *(v0 + 144) + 1;
      if (v15 == *(v0 + 120))
      {

        v19 = *(v0 + 200);
        goto LABEL_11;
      }
    }

    return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v18, 0);
  }

  else
  {

    v19 = 0;
LABEL_11:
    v20 = *(v0 + 96);

    InterruptibleTaskManager.invalidate()();
    if ((v19 & 1) != 0 || v20)
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1DC659000, v21, v22, "Shared flow plugin service was invalidated while we had active calls. Triggering onConnectionInterrupted handler.", v23, 2u);
        MEMORY[0x1E12A2F50](v23, -1, -1);
      }

      v24 = *(v0 + 64);

      v25 = *(v24 + 96);
      v26 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
      v25();
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v1 = v0[19];
  v2 = v1[19];
  v0[20] = v2;
  v3 = v1[20];
  v0[21] = v3;
  v0[22] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[23] = *(v3 + 24);
  v0[24] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v4, 0);
}

{
  v1 = *(v0 + 72);
  *(v0 + 201) = (*(v0 + 184))(*(v0 + 160), *(v0 + 168));

  return MEMORY[0x1EEE6DFA0](SharedFlowPluginServiceClient.handleInvalidation(), v1, 0);
}

{
  v1 = *(v0 + 201);

  if (v1)
  {
    goto LABEL_7;
  }

  v5 = *(v0 + 144) + 1;
  if (v5 == *(v0 + 120))
  {

    InterruptibleTaskManager.invalidate()();
    goto LABEL_10;
  }

  *(v0 + 200) = 1;
  do
  {
    *(v0 + 144) = v5;
    v6 = *(v0 + 112);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

    v2 = (*(v0 + 128))(*(v6 + 8 * v5 + 32));
    *(v0 + 152) = v2;
    if (v2)
    {
      v3 = v2;
      v2 = SharedFlowPluginServiceClient.handleInvalidation();
      v4 = 0;

      return MEMORY[0x1EEE6DFA0](v2, v3, v4);
    }

LABEL_7:
    v5 = *(v0 + 144) + 1;
  }

  while (v5 != *(v0 + 120));

  v7 = *(v0 + 200);
  v8 = *(v0 + 96);

  InterruptibleTaskManager.invalidate()();
  if ((v7 & 1) != 0 || v8)
  {
LABEL_10:
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "Shared flow plugin service was invalidated while we had active calls. Triggering onConnectionInterrupted handler.", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v12 = *(v0 + 64);

    v13 = *(v12 + 96);
    v14 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
    v13();
  }

  v15 = *(v0 + 8);

  return v15();
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.kill()()
{
  v2 = (v0 + 16);
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    swift_unknownObjectRetain();
    [v3 _killConnection_];
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginServiceClient.swift", 50, 2, "invalidate()", 12, 2);
  if (*v2)
  {
    v5 = *v2;
    swift_unknownObjectRetain();
    [v5 invalidate];
    swift_unknownObjectRelease();

    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    *v2 = 0;
    *(v0 + 24) = 0;

    outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v6, v7);
  }
}

unint64_t SharedFlowPluginServiceConnectionError.description.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000004DLL;
  }

  else
  {
    return 0xD00000000000003ALL;
  }
}

uint64_t closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v8 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v9);
}

uint64_t closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 96) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v5, 0);
}

uint64_t closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to SharedFlowPluginXPCServer got invalidated", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 16);
    if (v6)
    {
      v7 = v6;

      v8 = [v7 processIdentifier];

      if (!v8)
      {
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_1DC659000, v9, v10, "Execution process PID return is 0. Most likely the connection\ncould not be established to begin with", v11, 2u);
          MEMORY[0x1E12A2F50](v11, -1, -1);
        }
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  v0[13] = v12;
  if (v12)
  {
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);

    return SharedFlowPluginServiceClient.handleInvalidation()();
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "SharedFlowPluginService crashed. It is unlikely that this is a platform bug: it usually indicates a fatal error in a flow plugin. Check device crashlogs to inspect cause.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginServiceClient.swift", 50, 2, "invalidate()", 12, 2);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRetain();
      [v8 invalidate];
      swift_unknownObjectRelease();

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(v9, v10);
    }
  }

  return result;
}

void closure #4 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(void *a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DC659000, oslog, v4, "Cannot set up connection with SharedFlowPluginService:\n%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.getLoadedConversation(serial:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 16 * v4);

  v6(&v9, v7);

  return v9;
}

void *SharedFlowPluginServiceClient.LoadedConversationTracker.knownSerials.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + 4, v2, v1);
  v5 = v7;

  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.LoadedConversationTracker.removeAll()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t SharedFlowPluginServiceClient.deinit()
{
  outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(*(v0 + 16), *(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t SharedFlowPluginServiceClient.__deallocating_deinit()
{
  outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(*(v0 + 16), *(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

NSXPCConnection_optional __swiftcall SharedFlowPluginServiceXPCConnectionProvider.getXPCConnection()()
{
  v0 = [objc_opt_self() currentContext];
  v1 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v2 = [v0 createXPCConnectionWithMachServiceName:v1 options:0];

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

id protocol witness for SharedFlowPluginServiceXPCConnectionProviding.getXPCConnection() in conformance SharedFlowPluginServiceXPCConnectionProvider()
{
  v0 = [objc_opt_self() currentContext];
  v1 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v2 = [v0 createXPCConnectionWithMachServiceName:v1 options:0];

  return v2;
}

Swift::Int SharedFlowPluginServiceConnectionError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharedFlowPluginServiceConnectionError()
{
  if (*v0)
  {
    return 0xD00000000000004DLL;
  }

  else
  {
    return 0xD00000000000003ALL;
  }
}

void *specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[10] = a5;
  a4[11] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 7);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for SharedFlowPluginServiceClient.LoadedConversationTracker();
  a4[2] = 0;
  a4[3] = 0;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  a4[4] = v12;
  a4[5] = 0;
  type metadata accessor for InterruptibleTaskManager();
  v14 = swift_allocObject();
  v14[4] = v13;
  v14[5] = 0;
  v14[2] = 0xD00000000000001DLL;
  v14[3] = 0x80000001DCA754B0;
  a4[6] = v14;
  a4[12] = a2;
  a4[13] = a3;
  return a4;
}

void *specialized SharedFlowPluginServiceClient.__allocating_init(connectionProvider:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(v13, a2, a3, v14, a5, a6);
}

uint64_t outlined init with copy of RemoteConversationTurnData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConversationTurnData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)partial apply(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t partial apply for closure #1 in SharedFlowPluginServiceClient.LoadedConversationTracker.registerLoadedConversation(_:serial:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t destroy for SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection(id *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t assignWithCopy for SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

id *assignWithTake for SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection(id *a1, _OWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #2 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v6);
}

id SharedFlowPluginXPCServer.init()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/SharedFlowPluginXPCServer.swift", 46, 2, "init()", 6, 2);
  type metadata accessor for SharedFlowPluginService();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  swift_allocObject();
  SharedFlowPluginService.init(overrideFlowLoader:overrideSiriKitRuntime:)(v7, 0);
  v2 = objc_allocWithZone(type metadata accessor for SharedFlowPluginXPCServer.Listener());

  *&v0[OBJC_IVAR___SKRSharedFlowPluginXPCServer_listener] = specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(v3, v2);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SharedFlowPluginXPCServer();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id SharedFlowPluginXPCServer.Listener.__allocating_init(sharedFlowPluginService:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return specialized SharedFlowPluginXPCServer.Listener.__allocating_init(sharedFlowPluginService:)(a1, v1, ObjectType);
}

id one-time initialization function for xpcInterface()
{
  v0 = objc_opt_self();
  v1 = &unk_1F584B370;
  v2 = [v0 interfaceWithProtocol_];

  if (one-time initialization token for remoteConversationXPCInterface != -1)
  {
    swift_once();
  }

  [v2 setInterface:static RemoteConversationXPCHelper.remoteConversationXPCInterface forSelector:sel_startTurnWithTurnData_bridge_reply_ argumentIndex:1 ofReply:0];
  result = [v2 setInterface:static RemoteConversationXPCHelper.remoteConversationXPCInterface forSelector:sel_loadFlowPluginWithBundleId_bundlePath_rcId_hypothesisId_reply_ argumentIndex:0 ofReply:1];
  static SharedFlowPluginXPCServer.xpcInterface = v2;
  return result;
}

uint64_t one-time initialization function for xpcConnectionQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v11[0] = "SharedFlowPluginXPCServer.swift";
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E7F88], v2);
  static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v2);
  static DispatchQoS.unspecified.getter();
  v11[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static SharedFlowPluginXPCServer.Listener.xpcConnectionQueue = result;
  return result;
}

uint64_t *SharedFlowPluginXPCServer.Listener.xpcConnectionQueue.unsafeMutableAddressor()
{
  if (one-time initialization token for xpcConnectionQueue != -1)
  {
    swift_once();
  }

  return &static SharedFlowPluginXPCServer.Listener.xpcConnectionQueue;
}

id SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(a1, v1);
}

id SharedFlowPluginXPCServer.Listener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedFlowPluginXPCServer.Listener.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized SharedFlowPluginXPCServer.Listener.__allocating_init(sharedFlowPluginService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(type metadata accessor for SharedFlowPluginXPCServer.Listener());

  return specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(a1, v4);
}

id specialized SharedFlowPluginXPCServer.Listener.init(sharedFlowPluginService:)(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_sharedFlowPluginService] = a1;
  v3 = objc_opt_self();

  v4 = [v3 currentContext];
  v5 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v6 = [v4 createXPCListenerWithMachServiceName_];

  if (v6)
  {

    *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_listener] = v6;
    v10.receiver = a2;
    v10.super_class = type metadata accessor for SharedFlowPluginXPCServer.Listener();
    v7 = v6;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setDelegate_];
    [v7 resume];

    return v8;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000001ELL, 0x80000001DCA888B0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/SharedFlowPluginService/SharedFlowPluginXPCServer.swift", 143, 2, 67);
    __break(1u);
  }

  return result;
}

{
  *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_sharedFlowPluginService] = a1;
  v3 = objc_opt_self();
  swift_unknownObjectRetain();
  v4 = [v3 currentContext];
  v5 = MEMORY[0x1E12A1410](0xD000000000000029, 0x80000001DCA88620);
  v6 = [v4 createXPCListenerWithMachServiceName_];

  if (v6)
  {
    swift_unknownObjectRelease();
    *&a2[OBJC_IVAR____TtCC14SiriKitRuntime25SharedFlowPluginXPCServer8Listener_listener] = v6;
    v10.receiver = a2;
    v10.super_class = type metadata accessor for SharedFlowPluginXPCServer.Listener();
    v7 = v6;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    [v7 setDelegate_];
    [v7 resume];

    return v8;
  }

  else
  {
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000001ELL, 0x80000001DCA888B0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/SharedFlowPluginService/SharedFlowPluginXPCServer.swift", 143, 2, 67);
    __break(1u);
  }

  return result;
}

uint64_t specialized SharedFlowPluginXPCServer.Listener.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "SharedFlowPluginXPCServer accepting new connection", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  if (one-time initialization token for xpcInterface != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  if (one-time initialization token for xpcConnectionQueue != -1)
  {
    swift_once();
  }

  [a1 _setQueue_];
  [a1 resume];
  return 1;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t SimpleOrderedDictionary.init()(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = Dictionary.init()();
  Array.init()();
  return v4;
}

uint64_t SimpleOrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  MEMORY[0x1E12A1380](a2, *v3, v6, v10, *(a3 + 32), v16);
  v24 = (*(*(v10 - 8) + 48))(v18, 1, v10);
  v26 = *(v12 + 8);
  v26(v18, v11);
  v28 = v7;
  v19 = *(v7 + 16);
  v20 = v25;
  v23 = v19;
  v19(v25, a2, v6);
  v21 = *(v12 + 16);
  v27 = v11;
  v21(v14, v29, v11);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  if (v24 == 1)
  {
    v23(v20, a2, v6);
    type metadata accessor for Array();
    Array.append(_:)();
  }

  (*(v28 + 8))(a2, v6);
  return (v26)(v29, v27);
}

uint64_t SimpleOrderedDictionary.snapshot()(uint64_t a1, uint64_t a2)
{

  return a1;
}

uint64_t SimpleOrderedDictionary.wrappedDict.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SimpleOrderedDictionary.insertionOrder.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t key path setter for SimpleOrderedDictionary.subscript(_:) : <A, B>SimpleOrderedDictionary<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v17 + 16))(&v20 - v15, a3, v6, v14);
  (*(v10 + 16))(v12, a1, v9);
  v18 = type metadata accessor for SimpleOrderedDictionary(0, v6, v7, v8);
  return SimpleOrderedDictionary.subscript.setter(v12, v16, v18);
}

void (*SimpleOrderedDictionary.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = a3[3];
  v11 = type metadata accessor for Optional();
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  v14 = v7;
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v15 = malloc(v13);
  }

  v9[5] = v15;
  v16 = a3[2];
  v9[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v9[7] = v17;
  v19 = *(v17 + 64);
  if (v14)
  {
    v9[8] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v9[8] = malloc(*(v17 + 64));
    v20 = malloc(v19);
  }

  v9[9] = v20;
  (*(v18 + 16))();
  MEMORY[0x1E12A1380](a2, *v3, v16, v10, a3[4]);
  return SimpleOrderedDictionary.subscript.modify;
}

void SimpleOrderedDictionary.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    SimpleOrderedDictionary.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    SimpleOrderedDictionary.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t ImmutableSimpleOrderedDictionary.items()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v50 = &v40 - v11;
  v49 = type metadata accessor for Optional();
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v13 = &v40 - v12;
  v52 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v40 - v20;
  v51 = TupleTypeMetadata2;
  v21 = static Array._allocateUninitialized(_:)();
  v60 = v21;
  if (!MEMORY[0x1E12A1770](a2, a3))
  {
    return v21;
  }

  v40 = v17;
  v22 = 0;
  v56 = (v16 + 16);
  v53 = (v52 + 6);
  v54 = (v16 + 32);
  v43 = (v52 + 2);
  v44 = (v52 + 4);
  v23 = v52 + 1;
  v52 = (v16 + 8);
  v41 = (v55 + 8);
  v42 = v23;
  v24 = v16;
  v46 = v13;
  v47 = a2;
  v45 = v16;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v36 = a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22;
      v55 = *(v24 + 16);
      result = (v55)(v58, v36, a3);
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v40 != 8)
      {
        goto LABEL_16;
      }

      v59 = result;
      v55 = *v56;
      (v55)(v58, &v59, a3);
      result = swift_unknownObjectRelease();
    }

    v38 = v57;
    v39 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    (*v54)(v57, v58, a3);
    MEMORY[0x1E12A1380](v38, a1, a3, a4, a5);
    if ((*v53)(v13, 1, a4) == 1)
    {
      (*v52)(v38, a3);
      (*v41)(v13, v49);
    }

    else
    {
      v25 = v48;
      (*v44)(v48, v13, a4);
      v26 = v38;
      v27 = a4;
      v28 = a1;
      v29 = a5;
      v30 = *(v51 + 48);
      v31 = a3;
      v32 = v50;
      (v55)(v50, v26, v31);
      v33 = &v32[v30];
      a5 = v29;
      a1 = v28;
      a4 = v27;
      (*v43)(v33, v25, v27);
      a2 = v47;
      type metadata accessor for Array();
      a3 = v31;
      v13 = v46;
      Array.append(_:)();
      v34 = v25;
      v24 = v45;
      (*v42)(v34, v27);
      (*v52)(v57, a3);
    }

    ++v22;
    if (v39 == MEMORY[0x1E12A1770](a2, a3))
    {
      return v60;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t SimpleOrderedDictionary.values()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  v6 = Sequence.compactMap<A>(_:)();

  return v6;
}

uint64_t SiriAceLocationProvider.defaultTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static SiriAceLocationProvider.defaultTimeout);
}

uint64_t static SiriAceLocationProvider.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static SiriAceLocationProvider.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SiriAceLocationProvider.requestOrigin(searchTimeout:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)(a1);
}

Swift::Double __swiftcall DispatchTimeInterval.toSeconds()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69E7F48])
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  if (v7 == *MEMORY[0x1E69E7F38])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000.0;
  }

  else if (v7 == *MEMORY[0x1E69E7F30])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000000.0;
  }

  else
  {
    if (v7 != *MEMORY[0x1E69E7F28])
    {
      (*(v3 + 8))(v6, v2);
      return 9.22337204e18;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000000000.0;
  }

  return v9 / v10;
}

uint64_t protocol witness for SiriLocationProvider.requestOrigin(searchTimeout:) in conformance SiriAceLocationProvider(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)(a1);
}

uint64_t specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)(uint64_t a1)
{
  v1[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for DispatchTimeInterval();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized SiriAceLocationProvider.requestOrigin(searchTimeout:), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = specialized SiriAceLocationProvider.requestOrigin(searchTimeout:);
  }

  else
  {
    v4 = specialized SiriAceLocationProvider.requestOrigin(searchTimeout:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t specialized SiriAceLocationProvider.requestOrigin(searchTimeout:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  outlined init with copy of DispatchTimeInterval?(v0[11], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    if (one-time initialization token for defaultTimeout != -1)
    {
      swift_once();
    }

    v6 = v0[14];
    v5 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = __swift_project_value_buffer(v7, static SiriAceLocationProvider.defaultTimeout);
    (*(v6 + 16))(v5, v9, v7);
    if (v4(v8, 1, v7) != 1)
    {
      outlined destroy of DispatchTimeInterval?(v0[12]);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69C77F8]) init];
  v0[16] = v10;
  [v10 setDesiredAccuracy_];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = NSNumber.init(integerLiteral:)(300).super.super.isa;
  [v10 setMaxAge_];

  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v10 setSearchTimeout_];

  static AceService.currentAsync.getter();
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  v15 = swift_task_alloc();
  v0[17] = v15;
  v16 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
  *v15 = v0;
  v15[1] = specialized SiriAceLocationProvider.requestOrigin(searchTimeout:);

  return MEMORY[0x1EEE39A98](v10, v13, v16, v14);
}

{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[18];
  if (v1)
  {
    v3 = v1;
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[13];
    v7 = v0[14];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    [v3 latitude];
    v9 = v8;
    [v3 longitude];
    v11 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v9 longitude:v10];

    (*(v7 + 8))(v4, v6);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Unexpected command type response", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    else
    {
    }

    (*(v19 + 8))(v16, v18);
    v11 = 0;
  }

  v21 = v0[1];

  return v21(v11);
}

{
  v21 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v8 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  if (v6)
  {
    v19 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error getting current location: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);

    (*(v10 + 8))(v8, v19);
  }

  else
  {

    (*(v10 + 8))(v8, v11);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t outlined init with copy of DispatchTimeInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DispatchTimeInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriKitRuntime::SiriAudioAffinityScorer __swiftcall SiriAudioAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC30;
  v1 = 0xD00000000000002CLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized static SiriAudioAffinityScorer.isResumeApp(usoTask:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v10, v8);
  if (v9)
  {
    type metadata accessor for UsoTask_resume_uso_NoEntity();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      if (v8[0] && (v1 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v1))
      {
        dispatch thunk of UsoEntity_common_App.name.getter();
        v3 = v2;

        if (v3)
        {

          outlined destroy of Any?(v10);
          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of Any?(v8);
  }

  outlined init with copy of Any?(v10, v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_17;
  }

  type metadata accessor for UsoTask_resume_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    outlined destroy of Any?(v10);
    return 0;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

  if (v8[0] && (v4 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter(), , v4))
  {
    dispatch thunk of UsoEntity_common_App.name.getter();
    v6 = v5;

    outlined destroy of Any?(v10);
    if (v6)
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(v10);
  }

  return 0;
}

uint64_t specialized SiriAudioAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "SiriAudioAffinityScorer Got unexpected parse", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v3, v0);
  (*(v5 + 32))(v7, v3, v4);
  v8 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v8)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "SiriAudioAffinityScorer Could not extract usoTask from parse", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);

      (*(v5 + 8))(v7, v4);
      return 2;
    }

LABEL_35:
    (*(v5 + 8))(v7, v4);
    return 2;
  }

  v9 = v8;
  if (UsoTask.verbString.getter() == 0x656D75736572 && v10 == 0xE600000000000000)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.executor);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = 2;
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DC659000, v14, v15, "SiriAudioAffinityScorer Not a resume task. Returning .default affinity", v17, 2u);
        MEMORY[0x1E12A2F50](v17, -1, -1);

        (*(v5 + 8))(v7, v4);
        return v16;
      }

      goto LABEL_35;
    }
  }

  if (specialized static SiriAudioAffinityScorer.isResumeApp(usoTask:)(v9))
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.executor);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "SiriAudioAffinityScorer This is a resume+app request. Returning high affinity", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 3;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v31, v32, "SiriAudioAffinityScorer UsoTask task is resume, but not resume app. Returning low affinity not to interfere with playback controls", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 1;
  }
}

uint64_t *SiriCAMAppDisambiguationFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriCAMAppDisambiguationFeatureFlag.forceEnabled;
}

uint64_t static SiriCAMAppDisambiguationFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

uint64_t SiriCAMAppDisambiguationFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static SiriCAMAppDisambiguationFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static SiriCAMAppDisambiguationFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for SiriCAMAppDisambiguationFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag()
{
  result = lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag;
  if (!lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag;
  if (!lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriCAMAppDisambiguationFeatureFlag and conformance SiriCAMAppDisambiguationFeatureFlag);
  }

  return result;
}

Swift::Int SiriCAMAppDisambiguationFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

SiriKitRuntime::SiriClockFlowAffinityScorer __swiftcall SiriClockFlowAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC60;
  v1 = 0xD00000000000001ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t SiriClockFlowAffinityScorer.ClockRequestType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656D6954776F6873;
  v2 = 0x6B656557776F6873;
  if (a1 != 2)
  {
    v2 = 0x746E6F4D776F6873;
  }

  if (a1)
  {
    v1 = 0x65746144776F6873;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriClockFlowAffinityScorer.ClockRequestType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656D6954776F6873;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0x6B656557776F6873;
  if (v3 != 2)
  {
    v5 = 0x746E6F4D776F6873;
    v4 = 0xE900000000000068;
  }

  v6 = 0x65746144776F6873;
  if (!*a1)
  {
    v6 = 0x656D6954776F6873;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 1)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = v4;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6B656557776F6873;
  if (*a2 != 2)
  {
    v10 = 0x746E6F4D776F6873;
    v9 = 0xE900000000000068;
  }

  if (*a2)
  {
    v2 = 0x65746144776F6873;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (*a2 <= 1u)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriClockFlowAffinityScorer.ClockRequestType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriClockFlowAffinityScorer.ClockRequestType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriClockFlowAffinityScorer.ClockRequestType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SiriClockFlowAffinityScorer.ClockRequestType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SiriClockFlowAffinityScorer.ClockRequestType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SiriClockFlowAffinityScorer.ClockRequestType(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x656D6954776F6873;
  v4 = 0xE800000000000000;
  v5 = 0x6B656557776F6873;
  if (*v1 != 2)
  {
    v5 = 0x746E6F4D776F6873;
    v4 = 0xE900000000000068;
  }

  if (*v1)
  {
    v3 = 0x65746144776F6873;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t static SiriClockFlowAffinityScorer.componentOffset(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v40 - v5;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for UsoEntity_common_Date.DefinedValues();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (!v45)
  {
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v44 = v6;
  v19 = dispatch thunk of UsoEntity_common_DateTime.date.getter();
  if (!v19)
  {

    return (*(v7 + 56))(a1, 1, 1, v44);
  }

  v20 = v19;
  dispatch thunk of UsoEntity_common_Date.definedValue.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    return (*(v7 + 56))(a1, 1, 1, v44);
  }

  v40 = v20;
  (*(v13 + 32))(v18, v11, v12);
  (*(v13 + 16))(v15, v18, v12);
  v22 = (*(v13 + 88))(v15, v12);
  if (v22 == *MEMORY[0x1E69D1BA0])
  {
    v23 = type metadata accessor for Calendar();
    (*(*(v23 - 8) + 56))(v43, 1, 1, v23);
    v24 = type metadata accessor for TimeZone();
    (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
    v25 = v42;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();

    (*(v13 + 8))(v18, v12);
    v26 = v44;
    (*(v7 + 32))(a1, v25, v44);
    v27 = *(v7 + 56);
    v28 = a1;
LABEL_13:
    v34 = 0;
    v35 = v26;
    return v27(v28, v34, 1, v35);
  }

  v29 = a1;
  if (v22 == *MEMORY[0x1E69D1B90] || (v30 = v44, v22 == *MEMORY[0x1E69D1B88]))
  {
    v31 = type metadata accessor for Calendar();
    (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
    v32 = type metadata accessor for TimeZone();
    (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
    v33 = v42;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();

    (*(v13 + 8))(v18, v12);
    v26 = v44;
    (*(v7 + 32))(v29, v33, v44);
    v27 = *(v7 + 56);
    v28 = v29;
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x1E69D1B98])
  {
    (*(v13 + 8))(v18, v12);

    v27 = *(v7 + 56);
    v28 = v29;
    v34 = 1;
LABEL_19:
    v35 = v30;
    return v27(v28, v34, 1, v35);
  }

  if (v22 == *MEMORY[0x1E69D1B80])
  {
    v36 = type metadata accessor for Calendar();
    (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
    v37 = type metadata accessor for TimeZone();
    (*(*(v37 - 8) + 56))(v41, 1, 1, v37);
    v38 = v42;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();

    (*(v13 + 8))(v18, v12);
    (*(v7 + 32))(v29, v38, v30);
    v27 = *(v7 + 56);
    v28 = v29;
    v34 = 0;
    goto LABEL_19;
  }

  v39 = *(v13 + 8);
  v39(v18, v12);

  (*(v7 + 56))(v29, 1, 1, v30);
  return (v39)(v15, v12);
}

uint64_t specialized static SiriClockFlowAffinityScorer.requestType(for:)(uint64_t a1)
{
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
  if (v8 && (v1 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v1) && (v2 = dispatch thunk of UsoEntity_common_Date.monthOfYear.getter(), , v2))
  {

    return 3;
  }

  else
  {
    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
    if (v8 && (v4 = dispatch thunk of UsoEntity_common_DateTime.time.getter(), , v4))
    {

      return 0;
    }

    else
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
      if (v8 && (v5 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v5) && (v6 = dispatch thunk of UsoEntity_common_Date.weekOfYear.getter(), , v6))
      {

        return 2;
      }

      else
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
        if (v8 && (v7 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v7))
        {

          return 1;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t specialized SiriClockFlowAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
  v179 = *(v0 - 8);
  v180 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v161 = &v159 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v162 = &v159 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v164 = &v159 - v5;
  v6 = type metadata accessor for UsoEntity_common_Date.DefinedValues();
  v7 = *(v6 - 8);
  v177 = v6;
  v178 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v163 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v169);
  v174 = &v159 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v173 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v159 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v166 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v182 = &v159 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v185 = &v159 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v168 = &v159 - v21;
  v172 = type metadata accessor for UsoEntity_common_DateTime.DefinedValues();
  v175 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v165 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v170);
  v176 = &v159 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v167 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v159 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v184 = &v159 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v181 = &v159 - v31;
  v188 = type metadata accessor for Siri_Nlu_External_UserParse();
  isa = v188[-1].isa;
  MEMORY[0x1EEE9AC00](v188);
  v34 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v186 = *(v35 - 8);
  v187 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for USOParse();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Parse();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v43 + 88))(v45, v42) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.executor);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1DC659000, v71, v72, "SiriClockFlowAffinityScorer | Got unexpected parse", v73, 2u);
      MEMORY[0x1E12A2F50](v73, -1, -1);
    }

    (*(v43 + 8))(v45, v42);
    return 0;
  }

  (*(v43 + 96))(v45, v42);
  (*(v39 + 32))(v41, v45, v38);
  v160 = v41;
  v46 = USOParse.userParse.getter();
  v47 = MEMORY[0x1E129C0F0](v46);
  (*(isa + 1))(v34, v188);
  if (!*(v47 + 16))
  {

    goto LABEL_21;
  }

  v49 = v186;
  v48 = v187;
  (*(v186 + 16))(v37, v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v187);

  v50 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
  (*(v49 + 8))(v37, v48);
  if (!v50)
  {
LABEL_21:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.executor);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v160;
    if (v77)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC659000, v75, v76, "SiriClockFlowAffinityScorer | Could not extract USO task", v79, 2u);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    (*(v39 + 8))(v78, v38);
    return 0;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v190[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v190, &_sypSgMd, &_sypSgMR);
    goto LABEL_27;
  }

  type metadata accessor for UsoTask_request_common_DateTime();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v80 = v160;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Logger.executor);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1DC659000, v82, v83, "SiriClockFlowAffinityScorer | Unsupported request", v84, 2u);
      MEMORY[0x1E12A2F50](v84, -1, -1);
    }

    else
    {
    }

    (*(v39 + 8))(v80, v38);
    return 0;
  }

  v51 = v189;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v52, static Logger.executor);

  v188 = v53;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v187 = v50;
    v58 = v57;
    v189 = v51;
    v190[0] = v57;
    *v56 = 136315138;

    v59 = String.init<A>(describing:)();
    v61 = v51;
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v190);

    *(v56 + 4) = v62;
    v51 = v61;
    _os_log_impl(&dword_1DC659000, v54, v55, "requestDateTimeTask %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    v63 = v58;
    v50 = v187;
    MEMORY[0x1E12A2F50](v63, -1, -1);
    MEMORY[0x1E12A2F50](v56, -1, -1);
  }

  v64 = v184;
  v65 = v185;
  v66 = v182;
  v67 = v183;
  v68 = specialized static SiriClockFlowAffinityScorer.requestType(for:)(v51);
  if (v68 <= 1)
  {
    if (!v68)
    {
      v85 = v181;
      static SiriClockFlowAffinityScorer.componentOffset(from:)(v181);

      (*(v39 + 8))(v160, v38);
      v86 = type metadata accessor for DateComponents();
      v87 = (*(*(v86 - 8) + 48))(v85, 1, v86);
      outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      if (v87 == 1)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
    if (!v190[0] || (v95 = dispatch thunk of UsoEntity_common_DateTime.offsetReference.getter(), , !v95))
    {
LABEL_69:
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      if (v190[0])
      {
        v122 = dispatch thunk of UsoEntity_common_DateTime.date.getter();

        if (v122)
        {
          v123 = v168;
          dispatch thunk of UsoEntity_common_Date.definedValue.getter();
          if ((*(v178 + 48))(v123, 1, v177) == 1)
          {

            outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v115, v116))
            {
              goto LABEL_64;
            }

LABEL_99:

            goto LABEL_100;
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
        }
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      if (v190[0])
      {
        v124 = dispatch thunk of UsoEntity_common_DateTime.offsetValue.getter();

        if (v124)
        {
LABEL_87:

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            v94 = "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support arbitrary date offset values";
            goto LABEL_89;
          }

          goto LABEL_90;
        }
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();

      if (v190[0] && (v125 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , v125))
      {
        if (dispatch thunk of UsoEntity_common_Date.dayOfWeek.getter() || dispatch thunk of UsoEntity_common_Date.dayOfMonth.getter())
        {

          (*(v39 + 8))(v160, v38);
          return 2;
        }

        else
        {
          v157 = dispatch thunk of UsoEntity_common_Date.year.getter();

          (*(v39 + 8))(v160, v38);
          if (v157)
          {
            goto LABEL_14;
          }

          return 3;
        }
      }

      else
      {
        (*(v39 + 8))(v160, v38);

        return 3;
      }
    }

    v186 = v51;
    v187 = v50;
    v185 = v95;
    dispatch thunk of UsoEntity_common_DateTime.definedValue.getter();
    v96 = v175;
    v97 = v172;
    (*(v175 + 104))(v67, *MEMORY[0x1E69D1C00], v172);
    (*(v96 + 56))(v67, 0, 1, v97);
    v98 = *(v170 + 48);
    v99 = v176;
    outlined init with copy of ReferenceResolutionClientProtocol?(v64, v176, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v67, v99 + v98, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
    v100 = *(v96 + 48);
    if (v100(v99, 1, v97) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      v99 = v176;
      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      if (v100(v99 + v98, 1, v97) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
LABEL_68:

        goto LABEL_69;
      }
    }

    else
    {
      v110 = v167;
      outlined init with copy of ReferenceResolutionClientProtocol?(v99, v167, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      if (v100(v99 + v98, 1, v97) != 1)
      {
        v118 = v175;
        v119 = v165;
        (*(v175 + 32))(v165, v99 + v98, v97);
        lazy protocol witness table accessor for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_DateTime.DefinedValues and conformance UsoEntity_common_DateTime.DefinedValues, MEMORY[0x1E69D1C08], MEMORY[0x1E69D1C10]);
        v120 = dispatch thunk of static Equatable.== infix(_:_:)();
        v121 = *(v118 + 8);
        v121(v119, v97);
        outlined destroy of ReferenceResolutionClientProtocol?(v183, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v184, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
        v121(v110, v97);
        outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
        if (v120)
        {
          goto LABEL_68;
        }

LABEL_58:

        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_1DC659000, v111, v112, "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support offset anchors that are not 'now'", v113, 2u);
          MEMORY[0x1E12A2F50](v113, -1, -1);

LABEL_102:

          goto LABEL_103;
        }

LABEL_100:

        goto LABEL_101;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v183, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v184, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSgMR);
      (*(v175 + 8))(v110, v97);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology25UsoEntity_common_DateTimeC13DefinedValuesOSg_AFtMR);
    goto LABEL_58;
  }

  if (v68 != 2)
  {
    if (v68 == 3)
    {
      (*(v39 + 8))(v160, v38);

LABEL_14:

      return 2;
    }

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = "SiriClockFlowAffinityScorer | Unsupported request";
LABEL_89:
      _os_log_impl(&dword_1DC659000, v91, v92, v94, v93, 2u);
      MEMORY[0x1E12A2F50](v93, -1, -1);

LABEL_103:
      (*(v39 + 8))(v160, v38);
      return 0;
    }

LABEL_90:

LABEL_101:

    goto LABEL_102;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (!v190[0])
  {
    goto LABEL_85;
  }

  v88 = dispatch thunk of UsoEntity_common_DateTime.date.getter();

  if (!v88)
  {
    goto LABEL_85;
  }

  if (dispatch thunk of UsoEntity_common_Date.weekOfYear.getter() && (v89 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , v89))
  {
    v90 = v171;
    dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

    if ((*(v179 + 48))(v90, 1, v180) != 1)
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
      goto LABEL_85;
    }
  }

  else
  {
    v90 = v171;
    (*(v179 + 56))(v171, 1, 1, v180);
  }

  v186 = v51;
  v187 = v50;
  outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  dispatch thunk of UsoEntity_common_Date.definedValue.getter();
  v101 = v177;
  v102 = v178;
  (*(v178 + 104))(v66, *MEMORY[0x1E69D1B98], v177);
  (*(v102 + 56))(v66, 0, 1, v101);
  v103 = *(v169 + 48);
  v104 = v65;
  v105 = v174;
  outlined init with copy of ReferenceResolutionClientProtocol?(v104, v174, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v106 = v105;
  outlined init with copy of ReferenceResolutionClientProtocol?(v66, v105 + v103, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v107 = *(v102 + 48);
  if (v107(v105, 1, v101) != 1)
  {
    v114 = v166;
    outlined init with copy of ReferenceResolutionClientProtocol?(v105, v166, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    if (v107(v105 + v103, 1, v101) != 1)
    {
      v126 = v178;
      v127 = v106 + v103;
      v128 = v163;
      (*(v178 + 32))(v163, v127, v101);
      lazy protocol witness table accessor for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues, MEMORY[0x1E69D1BA8], MEMORY[0x1E69D1BB0]);
      LODWORD(v184) = dispatch thunk of static Equatable.== infix(_:_:)();
      v129 = *(v126 + 8);
      v129(v128, v101);
      outlined destroy of ReferenceResolutionClientProtocol?(v182, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v185, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
      v129(v114, v101);
      outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
      v51 = v186;
      v50 = v187;
      if (v184)
      {
        goto LABEL_84;
      }

LABEL_63:

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v115, v116))
      {
LABEL_64:
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_1DC659000, v115, v116, "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support arbitrary date references", v117, 2u);
        MEMORY[0x1E12A2F50](v117, -1, -1);

        goto LABEL_102;
      }

      goto LABEL_99;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v182, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    v108 = v174;
    outlined destroy of ReferenceResolutionClientProtocol?(v185, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
    (*(v178 + 8))(v114, v101);
LABEL_62:
    outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSg_AFtMR);
    goto LABEL_63;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v108 = v174;
  outlined destroy of ReferenceResolutionClientProtocol?(v185, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
  v109 = v107(v108 + v103, 1, v101);
  v51 = v186;
  v50 = v187;
  if (v109 != 1)
  {
    goto LABEL_62;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMd, &_s12SiriOntology21UsoEntity_common_DateC13DefinedValuesOSgMR);
LABEL_84:

LABEL_85:
  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  if (v190[0])
  {
    v130 = dispatch thunk of UsoEntity_common_DateTime.offsetValue.getter();

    if (v130)
    {
      goto LABEL_87;
    }
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

  if (!v190[0] || (v131 = dispatch thunk of UsoEntity_common_DateTime.date.getter(), , !v131) || (v132 = dispatch thunk of UsoEntity_common_Date.weekOfYear.getter(), , !v132) || (v133 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , !v133))
  {
    (*(v39 + 8))(v160, v38);

    v134 = v173;
    (*(v179 + 56))(v173, 1, 1, v180);
    goto LABEL_98;
  }

  v134 = v173;
  dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

  v136 = v179;
  v135 = v180;
  if ((*(v179 + 48))(v134, 1, v180) == 1)
  {
    (*(v39 + 8))(v160, v38);

LABEL_98:
    outlined destroy of ReferenceResolutionClientProtocol?(v134, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
    return 3;
  }

  v137 = v164;
  (*(v136 + 32))(v164, v134, v135);
  v138 = *(v136 + 16);
  v139 = v162;
  v138(v162, v137, v135);
  v140 = (*(v136 + 88))(v139, v135);
  if (v140 != *MEMORY[0x1E69D1EE0] && v140 != *MEMORY[0x1E69D1EC0] && v140 != *MEMORY[0x1E69D1E70])
  {
    v141 = v161;
    v142 = v138;
    v143 = v164;
    v142(v161, v164, v180);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = v141;
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v187 = v50;
      v188 = v144;
      v149 = v148;
      v190[0] = v148;
      *v147 = 136315138;
      v185 = UsoEntity_common_ListPosition.DefinedValues.rawValue.getter();
      v186 = v51;
      v151 = v150;
      v152 = *(v179 + 8);
      v152(v146, v180);
      v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v151, v190);

      *(v147 + 4) = v153;
      v154 = v188;
      _os_log_impl(&dword_1DC659000, v188, v145, "SiriClockFlowAffinityScorer | ClockFlowPlugin does not support %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
      MEMORY[0x1E12A2F50](v149, -1, -1);
      MEMORY[0x1E12A2F50](v147, -1, -1);

      v155 = v180;
      v152(v164, v180);
      (*(v39 + 8))(v160, v38);
      v156 = v155;
    }

    else
    {

      v158 = v180;
      v152 = *(v179 + 8);
      v152(v141, v180);
      v152(v143, v158);
      (*(v39 + 8))(v160, v38);
      v156 = v158;
    }

    v152(v162, v156);
    return 0;
  }

  (*(v179 + 8))(v164, v180);
  (*(v39 + 8))(v160, v38);
  return 3;
}

unint64_t specialized SiriClockFlowAffinityScorer.ClockRequestType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriClockFlowAffinityScorer.ClockRequestType.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType()
{
  result = lazy protocol witness table cache variable for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType;
  if (!lazy protocol witness table cache variable for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriClockFlowAffinityScorer.ClockRequestType and conformance SiriClockFlowAffinityScorer.ClockRequestType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_Date.DefinedValues and conformance UsoEntity_common_Date.DefinedValues(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriKitBiomeDonator.__allocating_init(_:backgroundTaskPriority:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(v10, a2, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t *SiriKitBiomeDonator.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static SiriKitBiomeDonator.instance;
}

uint64_t static SiriKitBiomeDonator.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

id DefaultBiomeSource.init()(double a1)
{
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 Execution];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  return v3;
}

uint64_t SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS8IteratorVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:), 0, 0);
}

Swift::Void __swiftcall SiriKitBiomeDonator.close()()
{
  v1 = v0;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.instrumentation);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "#SiriKitBiomeDonator - Requesting termination of the background worker", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask))
  {

    MEMORY[0x1E12A1950](v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  AsyncStream.Continuation.finish()();
}

uint64_t SiriKitBiomeDonator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t SiriKitBiomeDonator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMd, &_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v27[3] = &type metadata for DefaultBiomeSource;
  v27[4] = &protocol witness table for DefaultBiomeSource;
  v27[0] = v25;
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v27, a3 + 16);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8650], v7);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v8 + 8))(v10, v7);
  (*(v15 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream, v17, v14);
  (*(v11 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation, v13, v24);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  v20 = v26;
  (*(v19 + 16))(v6, v26, v18);
  (*(v19 + 56))(v6, 0, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a3;

  v22 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:), v21);
  (*(v19 + 8))(v20, v18);
  outlined destroy of TaskPriority?(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = v22;

  return a3;
}

uint64_t specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v32 = a2;
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMd, &_sScS12ContinuationV15BufferingPolicyOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v33[3] = a4;
  v33[4] = v28;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, v30, a4);
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v33, a3 + 16);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8650], v9);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v10 + 8))(v12, v9);
  (*(v17 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationStream, v19, v16);
  (*(v13 + 32))(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_donationContinuation, v15, v29);
  v21 = type metadata accessor for TaskPriority();
  v22 = *(v21 - 8);
  v24 = v31;
  v23 = v32;
  (*(v22 + 16))(v31, v32, v21);
  (*(v22 + 56))(v24, 0, 1, v21);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a3;

  v26 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v24, &closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)partial apply, v25);
  (*(v22 + 8))(v23, v21);
  outlined destroy of TaskPriority?(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  *(a3 + OBJC_IVAR____TtC14SiriKitRuntime19SiriKitBiomeDonator_backgroundTask) = v26;

  return a3;
}

uint64_t type metadata accessor for SiriKitBiomeDonator(uint64_t a1)
{
  result = type metadata singleton initialization cache for SiriKitBiomeDonator;
  if (!type metadata singleton initialization cache for SiriKitBiomeDonator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SiriKitBiomeDonator(uint64_t a1)
{
  type metadata accessor for AsyncStream<SiriKitBiomeDonator.DonationEvent>(319, &lazy cache variable for type metadata for AsyncStream<SiriKitBiomeDonator.DonationEvent>, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<SiriKitBiomeDonator.DonationEvent>(319, &lazy cache variable for type metadata for AsyncStream<SiriKitBiomeDonator.DonationEvent>.Continuation, MEMORY[0x1E69E8660]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<SiriKitBiomeDonator.DonationEvent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &unk_1F5837798);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t assignWithCopy for SiriKitBiomeDonator.DonationEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SiriKitBiomeDonator.DonationEvent(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t partial apply for closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(a1, v4, v5, v6);
}

uint64_t closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(a1, v4, v5, v6);
}

unint64_t ConversationInsightRequestSummaryMessageDescription.rawValue.getter(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
    case 7:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 13:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
    case 11:
      result = 0xD000000000000027;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

const char *ExecutionTimeSignpost.asStaticString.getter(unsigned __int8 a1)
{
  v1 = "execution_flow_plugin_execute_time";
  v2 = "execution_find_flow_time";
  v3 = "execution_prepare_time";
  if (a1 != 4)
  {
    v3 = "execution_commit_time";
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = "execution_flow_plugin_input_time";
  if (a1 != 1)
  {
    v4 = "execution_flow_plugin_load_time";
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ExecutionTimeSignpost.asString.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = "execution_flow_plugin_execute_time";
  v3 = 34;
  v4 = "execution_find_flow_time";
  v5 = 24;
  v6 = "execution_prepare_time";
  v7 = 22;
  if (a1 != 4)
  {
    v6 = "execution_commit_time";
    v7 = 21;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = "execution_flow_plugin_input_time";
  v9 = 32;
  if (a1 != 1)
  {
    v8 = "execution_flow_plugin_load_time";
    v9 = 31;
  }

  if (a1)
  {
    v2 = v8;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  if (v1 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  return MEMORY[0x1EEE68E80](v10, v11);
}

Swift::Int ExecutionTimeSignpost.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationInsightRequestSummaryMessageDescription(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ConversationInsightRequestSummaryMessageDescription.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ConversationInsightRequestSummaryMessageDescription.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationInsightRequestSummaryMessageDescription()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationInsightRequestSummaryMessageDescription.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationInsightRequestSummaryMessageDescription(uint64_t a1)
{
  ConversationInsightRequestSummaryMessageDescription.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationInsightRequestSummaryMessageDescription(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ConversationInsightRequestSummaryMessageDescription.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationInsightRequestSummaryMessageDescription@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationInsightRequestSummaryMessageDescription.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationInsightRequestSummaryMessageDescription@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationInsightRequestSummaryMessageDescription.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized ConversationInsightRequestSummaryMessageDescription.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationInsightRequestSummaryMessageDescription.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost()
{
  result = lazy protocol witness table cache variable for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost;
  if (!lazy protocol witness table cache variable for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionTimeSignpost and conformance ExecutionTimeSignpost);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription()
{
  result = lazy protocol witness table cache variable for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription;
  if (!lazy protocol witness table cache variable for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationInsightRequestSummaryMessageDescription and conformance ConversationInsightRequestSummaryMessageDescription);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationInsightRequestSummaryMessageDescription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationInsightRequestSummaryMessageDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *SiriKitCurareDonator.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static SiriKitCurareDonator.instance;
}

uint64_t static SiriKitCurareDonator.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t SiriKitCurareDonator.().init()()
{
  v1 = v0;
  if ([objc_opt_self() isSupportedUser])
  {
    v2 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v3 = MEMORY[0x1E12A1410](0x6B73615449524953, 0xEF676E6967676F4CLL);
    v4 = [v2 initWithStreamId_];

    *(v1 + 16) = v4;
    if (!v4)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.instrumentation);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1DC659000, v6, v7, "Failed to create FSFCurareInteractionStream for task logging, donations will be disabled.", v8, 2u);
        MEMORY[0x1E12A2F50](v8, -1, -1);
      }
    }

    v9 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
    v10 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA88FC0);
    v11 = [v9 initWithStreamId_];

    *(v1 + 24) = v11;
    if (!v11)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.instrumentation);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1DC659000, v13, v14, "Failed to create FSFCurareInteractionStream for task configuration, donations will be disabled.", v15, 2u);
        MEMORY[0x1E12A2F50](v15, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.instrumentation);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "FSFUtils.isSupportedUser returned false, Curare donations will be disabled.", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
  }

  return v1;
}

void SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a3;
  v32 = a2;
  v30 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = type metadata accessor for TaskFlowConfiguration();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = *(v5 + 24);
  if (v16)
  {
    v29 = v16;
    static TaskPriority.background.getter();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
    v18 = *(v10 + 16);
    v27 = v9;
    v18(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v9);
    v19 = *(v7 + 16);
    v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19(v28, v32, v6);
    v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v32 = v6;
    v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = v34;
    v23 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = v33;
    *(v24 + 5) = v22;
    (*(v10 + 32))(&v24[v20], v12, v27);
    *&v24[v21] = v30;
    (*(v7 + 32))(&v24[v23], v28, v32);
    v25 = v29;
    *&v24[(v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v29;
    v26 = v25;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:), v24);

    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScPSgMd, &_sScPSgMR);
  }
}

uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[74] = v13;
  v8[73] = a8;
  v8[72] = a7;
  v8[71] = a6;
  v8[70] = a5;
  v8[69] = a4;
  v9 = type metadata accessor for TaskFlowType();
  v8[75] = v9;
  v8[76] = *(v9 - 8);
  v8[77] = swift_task_alloc();
  v10 = type metadata accessor for TaskFlowConfiguration();
  v8[78] = v10;
  v8[79] = *(v10 - 8);
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:), 0, 0);
}

uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)()
{
  v125 = v0;
  v124[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 568);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.instrumentation);
  v113 = *(v2 + 16);
  v113(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 672);
  v10 = *(v0 + 632);
  v11 = *(v0 + 624);
  if (v8)
  {
    v122 = *(v0 + 576);
    v12 = *(v0 + 560);
    v13 = *(v0 + 552);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v124[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v124);
    *(v14 + 12) = 2080;
    v16 = TaskFlowConfiguration.debugDescription.getter();
    v18 = v17;
    v121 = *(v10 + 8);
    v121(v9, v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v124);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v122 + 96), *(v122 + 104), v124);
    _os_log_impl(&dword_1DC659000, v6, v7, "Create SiriKit task configuration donation to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  else
  {

    v121 = *(v10 + 8);
    v121(v9, v11);
  }

  v20 = *(v0 + 616);
  v21 = *(v0 + 608);
  v112 = *(v0 + 600);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v23 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA88EE0);
  [v22 setDateFormat_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA6B020;
  *(inited + 32) = 0x6D6954746E657665;
  *(inited + 40) = 0xE900000000000065;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v123 = v22;
  v26 = [v22 stringFromDate_];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = MEMORY[0x1E69E6158];
  *(inited + 48) = v27;
  *(inited + 56) = v29;
  *(inited + 72) = v30;
  *(inited + 80) = 0x656D614E6B736174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = TaskFlowConfiguration.taskName.getter();
  *(inited + 104) = v31;
  *(inited + 120) = v30;
  *(inited + 128) = 0xD000000000000014;
  v32 = MEMORY[0x1E69E6530];
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 136) = 0x80000001DCA88F00;
  *(inited + 144) = 0;
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  TaskFlowConfiguration.taskType.getter();
  v34 = (*(v21 + 88))(v20, v112);
  if (v34 == *MEMORY[0x1E69CF9A8])
  {
    v35 = *(v0 + 616);
    (*(*(v0 + 608) + 96))(v35, *(v0 + 600));
    v36 = *v35;
    *(v0 + 408) = v32;
    *(v0 + 384) = v36;
    outlined init with take of Any((v0 + 384), (v0 + 416));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v33;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 416), 0xD000000000000014, 0x80000001DCA88F00, isUniquelyReferenced_nonNull_native);
    v38 = v124[0];
    *(v0 + 472) = MEMORY[0x1E69E6158];
    *(v0 + 448) = 0xD000000000000010;
    *(v0 + 456) = 0x80000001DCA88F40;
    outlined init with take of Any((v0 + 448), (v0 + 480));
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v38;
    v40 = (v0 + 480);
  }

  else if (v34 == *MEMORY[0x1E69CF9B8])
  {
    *(v0 + 344) = MEMORY[0x1E69E6158];
    *(v0 + 320) = 0x6B7361546F666E69;
    *(v0 + 328) = 0xE800000000000000;
    outlined init with take of Any((v0 + 320), (v0 + 352));
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v33;
    v40 = (v0 + 352);
  }

  else if (v34 == *MEMORY[0x1E69CF9A0])
  {
    *(v0 + 280) = MEMORY[0x1E69E6158];
    strcpy((v0 + 256), "modifiableTask");
    *(v0 + 271) = -18;
    outlined init with take of Any((v0 + 256), (v0 + 288));
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v33;
    v40 = (v0 + 288);
  }

  else
  {
    if (v34 != *MEMORY[0x1E69CF9B0])
    {
      v96 = *(v0 + 664);
      v97 = *(v0 + 624);
      v98 = *(v0 + 568);

      v113(v96, v98, v97);

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      v101 = os_log_type_enabled(v99, v100);
      v102 = *(v0 + 664);
      v103 = *(v0 + 624);
      if (v101)
      {
        logc = *(v0 + 576);
        v104 = *(v0 + 560);
        v105 = *(v0 + 552);
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v124[0] = v107;
        *v106 = 136315650;
        *(v106 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v104, v124);
        *(v106 + 12) = 2080;
        v108 = TaskFlowConfiguration.debugDescription.getter();
        v110 = v109;
        v121(v102, v103);
        v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, v124);

        *(v106 + 14) = v111;
        *(v106 + 22) = 2080;
        *(v106 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(logc[12].isa, logc[13].isa, v124);
        _os_log_impl(&dword_1DC659000, v99, v100, "Failed to create SiriKit task configuration donation due to invalid taskType for taskId: %s, taskConfiguration: %s for interactionId:%s", v106, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v107, -1, -1);
        MEMORY[0x1E12A2F50](v106, -1, -1);
      }

      else
      {

        v121(v102, v103);
      }

      (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
      goto LABEL_26;
    }

    *(v0 + 216) = MEMORY[0x1E69E6158];
    *(v0 + 192) = 0xD000000000000011;
    *(v0 + 200) = 0x80000001DCA88F20;
    outlined init with take of Any((v0 + 192), (v0 + 224));
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v33;
    v40 = (v0 + 224);
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, 0x657079546B736174, 0xE800000000000000, v39);
  v41 = *(v0 + 560);
  v42 = *(v0 + 552);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v124[0]);

  v43 = objc_allocWithZone(MEMORY[0x1E699C0C8]);
  v44 = Dictionary._bridgeToObjectiveC()().super.isa;

  v45 = MEMORY[0x1E12A1410](v42, v41);
  v46 = [v43 initWithContent:v44 interactionId:v45 dataVersion:0];

  if (v46)
  {
    v47 = *(v0 + 592);
    *(v0 + 536) = 0;
    v48 = [v47 insert:v46 error:v0 + 536];
    v49 = *(v0 + 536);
    v50 = *(v0 + 624);
    v51 = *(v0 + 568);
    if (v48)
    {
      v113(*(v0 + 656), *(v0 + 568), *(v0 + 624));

      v52 = v49;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 656);
      v57 = *(v0 + 624);
      if (v55)
      {
        v115 = *(v0 + 576);
        v58 = *(v0 + 560);
        v59 = *(v0 + 552);
        v60 = swift_slowAlloc();
        loga = swift_slowAlloc();
        v124[0] = loga;
        *v60 = 136315650;
        *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, v124);
        *(v60 + 12) = 2080;
        v61 = TaskFlowConfiguration.debugDescription.getter();
        v63 = v62;
        v121(v56, v57);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v124);

        *(v60 + 14) = v64;
        *(v60 + 22) = 2080;
        *(v60 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v115 + 96), *(v115 + 104), v124);
        _os_log_impl(&dword_1DC659000, v53, v54, "Donated SiriKit execution task configuration to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s", v60, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](loga, -1, -1);
        MEMORY[0x1E12A2F50](v60, -1, -1);

        goto LABEL_26;
      }
    }

    else
    {
      v76 = *(v0 + 640);
      v77 = v49;
      v78 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v113(v76, v51, v50);

      v79 = v78;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      log = v80;
      v82 = os_log_type_enabled(v80, v81);
      v56 = *(v0 + 640);
      v57 = *(v0 + 624);
      if (v82)
      {
        v116 = v81;
        v83 = *(v0 + 576);
        v84 = *(v0 + 560);
        v85 = *(v0 + 552);
        v86 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v124[0] = v114;
        *v86 = 136315906;
        *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v84, v124);
        *(v86 + 12) = 2080;
        v87 = TaskFlowConfiguration.debugDescription.getter();
        v89 = v88;
        v121(v56, v57);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v124);

        *(v86 + 14) = v90;
        *(v86 + 22) = 2080;
        *(v86 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v83 + 96), *(v83 + 104), v124);
        *(v86 + 32) = 2080;
        swift_getErrorValue();
        v91 = Error.localizedDescription.getter();
        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v124);

        *(v86 + 34) = v93;
        _os_log_impl(&dword_1DC659000, log, v116, "Failed to donate SiriKit task configuration to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s: %s", v86, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v114, -1, -1);
        MEMORY[0x1E12A2F50](v86, -1, -1);

        goto LABEL_26;
      }
    }
  }

  else
  {
    v113(*(v0 + 648), *(v0 + 568), *(v0 + 624));

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    v67 = os_log_type_enabled(v65, v66);
    v56 = *(v0 + 648);
    v57 = *(v0 + 624);
    if (v67)
    {
      logb = *(v0 + 576);
      v68 = *(v0 + 560);
      v69 = *(v0 + 552);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v124[0] = v71;
      *v70 = 136315650;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v68, v124);
      *(v70 + 12) = 2080;
      v72 = TaskFlowConfiguration.debugDescription.getter();
      v74 = v73;
      v121(v56, v57);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v124);

      *(v70 + 14) = v75;
      *(v70 + 22) = 2080;
      *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(logb[12].isa, logb[13].isa, v124);
      _os_log_impl(&dword_1DC659000, v65, v66, "Failed to create SiriKit task configuration donation to Curare for taskId: %s, taskConfiguration: %s for interactionId:%s", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v71, -1, -1);
      MEMORY[0x1E12A2F50](v70, -1, -1);

      goto LABEL_26;
    }
  }

  v121(v56, v57);
LABEL_26:

  v94 = *(v0 + 8);

  return v94();
}

uint64_t partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(uint64_t a1)
{
  v3 = *(type metadata accessor for TaskFlowConfiguration() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Date() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v5);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskConfiguration(eventContext:eventTime:taskConfiguration:taskId:)(a1, v8, v9, v10, v11, v1 + v4, v12, v1 + v7);
}

uint64_t SiriKitCurareDonator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(void *a1, uint64_t a2, void *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = specialized InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(v9, a2, v12, v3, v7, v10, v8, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t SiriKitEventContext.executionRequestId.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t SiriKitEventContext.interactionId.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void *SiriKitEventContext.__allocating_init(aceServiceInvoker:taskService:invocationState:)(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v8 = a1[3];
  v7 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a3[3];
  v15 = a3[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(v12, a2, v19, v6, v8, v14, v7, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

void *SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(v13, a2, v20, v4, v9, v15, v8, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

void *SiriKitEventContext.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v13, a2, v20, v4, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

uint64_t specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a4;
  v47 = a8;
  v45 = a7;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  (*(v19 + 32))(&v45 - v25, v24);
  (*(v12 + 32))(v17, a3, a6);
  type metadata accessor for SiriKitEventContext();
  v27 = swift_allocObject();
  v48 = v19;
  v49 = v26;
  v28 = v26;
  v29 = v12;
  (*(v19 + 16))(v22, v28, a5);
  v30 = *(v12 + 16);
  v50 = v17;
  v30(v14, v17, a6);
  v51 = a2;
  v31 = specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(v22, a2, v14, v27, a5, a6, v45, v47);
  v32 = v46;
  *(v46 + 16) = v31;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.instrumentation);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136315138;

    v38 = a5;
    v39 = v32;
    v40 = SiriKitEventContext.description.getter();
    v47 = a6;
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v52);

    *(v36 + 4) = v43;
    v32 = v39;
    _os_log_impl(&dword_1DC659000, v34, v35, "InternalSiriKitEventSender ready with: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);

    (*(v29 + 8))(v50, v47);
    (*(v48 + 8))(v49, v38);
  }

  else
  {

    (*(v12 + 8))(v50, a6);
    (*(v48 + 8))(v49, a5);
  }

  return v32;
}

void *specialized SiriKitEventContext.init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v28[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = v18;
  v28[4] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  (*(v15 + 32))(v17, a3, a6);
  a4[2] = 0;
  a4[3] = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v28, (a4 + 4));
  a4[9] = a2;
  v21 = *(a8 + 144);

  a4[10] = v21(a6, a8);
  a4[11] = v22;
  v23 = (*(a8 + 152))(a6, a8);
  v25 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  a4[12] = v23;
  a4[13] = v25;
  (*(v15 + 8))(v17, a6);
  return a4;
}

uint64_t specialized InvocationScopedSiriKitEventSender.__allocating_init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a1, a5);
  (*(v13 + 16))(v15, a3, a6);
  return specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v20, a2, v15, v21, a5, a6, v23, v24);
}

uint64_t dispatch thunk of SiriKitEventSink.receiveAsync(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v11(a1, a2, a3, a4);
}

uint64_t UserSpecificInfo.sfeUserSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = type metadata accessor for UserID();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UserSessionAccessLevel();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v48 - v13;
  v14 = type metadata accessor for UserSessionType();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = type metadata accessor for UserSessionState();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v24 + 16);
  v60 = v1;
  v28(v27, v1 + OBJC_IVAR___SKEUserSpecificInfo_userSessionState, v23, v25);
  if ((UserSessionState.isAmbient.getter() & 1) == 0)
  {
    if (UserSessionState.isGuestSessionActive.getter())
    {
      v29 = MEMORY[0x1E69CE588];
      goto LABEL_5;
    }

    v50 = v23;
    v51 = v19;
    v30 = v56;
    UserSessionState.activeUserAccessLevel.getter();
    v31 = v55;
    v32 = v57;
    (*(v55 + 104))(v11, *MEMORY[0x1E69D0878], v57);
    (*(v31 + 56))(v11, 0, 1, v32);
    v33 = *(v5 + 48);
    v34 = v30;
    v35 = v54;
    outlined init with copy of ReferenceResolutionClientProtocol?(v34, v54, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    v49 = v33;
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, v35 + v33, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    v36 = *(v31 + 48);
    if (v36(v35, 1, v32) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      v37 = v36(v35 + v49, 1, v57) == 1;
      v38 = v35;
      v23 = v50;
      v39 = v51;
      if (v37)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        v40 = 1;
LABEL_14:
        *v39 = v40 & 1;
        (*(v15 + 104))(v39, *MEMORY[0x1E69CE580], v14);
        (*(v15 + 32))(v22, v39, v14);
        goto LABEL_15;
      }
    }

    else
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v35, v53, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      v41 = v49;
      if (v36(v35 + v49, 1, v57) != 1)
      {
        v42 = v55;
        v43 = v35 + v41;
        v44 = v52;
        v45 = v57;
        (*(v55 + 32))(v52, v43, v57);
        _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type UserSessionAccessLevel and conformance UserSessionAccessLevel, MEMORY[0x1E69D0880], MEMORY[0x1E69D0888]);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        v55 = *(v42 + 8);
        (v55)(v44, v45);
        outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        (v55)(v53, v45);
        outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
        v23 = v50;
        v39 = v51;
        goto LABEL_14;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      (*(v55 + 8))(v53, v57);
      v38 = v35;
      v23 = v50;
      v39 = v51;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
    v40 = 0;
    goto LABEL_14;
  }

  v29 = MEMORY[0x1E69CE590];
LABEL_5:
  (*(v15 + 104))(v22, *v29, v14);
LABEL_15:
  (*(v15 + 16))(v58, v22, v14);

  v46 = v59;
  UserID.init(sharedUserId:)();
  UserSessionState.isSessionActiveForUser(siriSharedUserId:)(v46);
  (*(v61 + 8))(v46, v62);
  UserSessionState.init(userSessionType:isSessionActiveForRecognizedUser:)();
  (*(v15 + 8))(v22, v14);
  return (*(v24 + 8))(v27, v23);
}

uint64_t static SiriKitExecutorRunUtils.siriLocale.getter(void (*a1)(uint64_t))
{
  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  a1(v2);
}

uint64_t static SiriKitExecutorRunUtils.preferencesLanguageCode.getter()
{
  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v0 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();

  return v0;
}

uint64_t static SiriKitExecutorRunUtils.interactionTypeFrom(command:)@<X0>(void *a1@<X0>, SEL *a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, unsigned int *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = [a1 *a2];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    a3(v12, v14);
  }

  else
  {
    v16 = *a4;
    v17 = a5();
    v18 = *(*(v17 - 8) + 104);

    return v18(a6, v16, v17);
  }
}

uint64_t static SiriKitExecutorRunUtils.sessionHandOffContinuityIDFrom(command:)(void *a1)
{
  v1 = [a1 sessionHandOffContinuityID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SAUserSessionState.sfeUserSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v34[1] = a1;
  v3 = type metadata accessor for UserSessionType();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - v12;
  v14 = [v2 userSessionType];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_10;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_10:
    v26 = MEMORY[0x1E69CE590];
    goto LABEL_11;
  }

  v21 = [v2 userSessionType];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      v31 = [v2 isHighConfidenceSession];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 BOOLValue];
      }

      else
      {
        v33 = 0;
      }

      *v9 = v33;
      (*(v4 + 104))(v9, *MEMORY[0x1E69CE580], v3);
      (*(v4 + 32))(v13, v9, v3);
      goto LABEL_12;
    }
  }

  v26 = MEMORY[0x1E69CE588];
LABEL_11:
  (*(v4 + 104))(v13, *v26, v3);
LABEL_12:
  (*(v4 + 16))(v6, v13, v3);
  v27 = [v2 isSessionActiveForRecognizedUser];
  if (v27)
  {
    v28 = v27;
    [v27 BOOLValue];
  }

  UserSessionState.init(userSessionType:isSessionActiveForRecognizedUser:)();
  return (*(v4 + 8))(v13, v3);
}

id UserSpecificInfo.saUserSessionState.getter()
{
  v1 = type metadata accessor for UserID();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UserSessionAccessLevel();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for UserSessionState();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v22;
  v45 = v21;
  v23 = *(v22 + 16);
  v47 = v0;
  v23(v20, v0 + OBJC_IVAR___SKEUserSpecificInfo_userSessionState, v18);
  if ((UserSessionState.isAmbient.getter() & 1) == 0)
  {
    UserSessionState.isGuestSessionActive.getter();
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  v27 = [objc_allocWithZone(MEMORY[0x1E69C7C08]) init];
  v28 = MEMORY[0x1E12A1410](v24, v26);

  v43 = v27;
  [v27 setUserSessionType_];

  UserSessionState.activeUserAccessLevel.getter();
  (*(v4 + 104))(v13, *MEMORY[0x1E69D0878], v3);
  (*(v4 + 56))(v13, 0, 1, v3);
  v29 = *(v6 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v16, v8, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13, &v8[v29], &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  v30 = *(v4 + 48);
  if (v30(v8, 1, v3) != 1)
  {
    v32 = v42;
    outlined init with copy of ReferenceResolutionClientProtocol?(v8, v42, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    if (v30(&v8[v29], 1, v3) != 1)
    {
      v33 = v41;
      (*(v4 + 32))(v41, &v8[v29], v3);
      _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type UserSessionAccessLevel and conformance UserSessionAccessLevel, MEMORY[0x1E69D0880], MEMORY[0x1E69D0888]);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v4 + 8);
      v34(v33, v3);
      outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      v34(v42, v3);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
      goto LABEL_10;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
    (*(v4 + 8))(v32, v3);
    goto LABEL_8;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  if (v30(&v8[v29], 1, v3) != 1)
  {
LABEL_8:
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSg_ADtMR);
    v31 = 0;
    goto LABEL_10;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  v31 = 1;
LABEL_10:
  v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v36 = v43;
  [v43 setIsHighConfidenceSession_];

  v37 = v46;
  UserID.init(sharedUserId:)();
  LOBYTE(v35) = UserSessionState.isSessionActiveForUser(siriSharedUserId:)(v37);
  (*(v48 + 8))(v37, v49);
  v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v36 setIsSessionActiveForRecognizedUser_];

  (*(v44 + 8))(v20, v45);
  return v36;
}

uint64_t static SiriKitExecutorRunUtils.logFailedCompletion(intentTypeName:errorCode:reason:refId:commandCompletion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(uint64_t), char *a9)
{
  v77 = a8;
  v78 = a6;
  v75 = a2;
  v72 = a1;
  v13 = type metadata accessor for SiriKitEventPayload();
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SiriKitReliabilityCodes();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.executor);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v83[0] = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    if (a5)
    {
      v23 = a4;
    }

    else
    {
      v23 = 0x6E776F6E6B6E55;
    }

    v76 = a3;
    if (a5)
    {
      v24 = a5;
    }

    else
    {
      v24 = 0xE700000000000000;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v83);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    if (a7)
    {
      v26 = v78;
    }

    else
    {
      v26 = 1819047246;
    }

    if (a7)
    {
      v27 = a7;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v83);
    a3 = v76;

    *(v21 + 24) = v28;
    _os_log_impl(&dword_1DC659000, v19, v20, "SiriKitExecutor failing with error: errorCode=%ld, reason='%s', refId='%s'", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  v76 = a7;
  static SiriKitEventSender.current.getter();
  v81 = a3;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v81 = 0x646F43726F727245;
  v82 = 0xEB00000000203A65;
  MEMORY[0x1E12A1580](v29);

  v30 = v81;
  v31 = v82;
  v32 = a5;
  v33 = a4;
  v34 = a5;
  v35 = a4;
  if (!a5)
  {
    v35 = 0x6E776F6E6B6E55;
    v37 = v79;
    v36 = v80;
    v38 = v71;
    (*(v79 + 104))(v71, *MEMORY[0x1E69CFC90], v80);
    v33 = SiriKitReliabilityCodes.rawValue.getter();
    v34 = v39;
    (*(v37 + 8))(v38, v36);
    v32 = 0xE700000000000000;
  }

  v69 = v35;
  v70 = v32;
  v71 = a9;
  v81 = v30;
  v82 = v31;

  MEMORY[0x1E12A1580](v33, v34);

  v64 = v81;
  v63 = v82;
  v68 = v83[4];
  v66 = __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  v65 = type metadata accessor for SiriKitEvent();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMR);
  v41 = &v15[v40[12]];
  v42 = v40[16];
  v43 = &v15[v40[20]];
  v44 = &v15[v40[24]];
  v45 = &v15[v40[28]];
  v46 = &v15[v40[32]];
  v67 = a5;
  v47 = v40[36];
  v48 = *MEMORY[0x1E69CFDD0];
  v49 = type metadata accessor for ActivityType();
  (*(*(v49 - 8) + 104))(v15, v48, v49);
  v50 = v75;
  *v41 = v72;
  v41[1] = v50;
  *&v15[v42] = 0;
  *v43 = 0;
  *(v43 + 1) = 0;
  *v44 = 0;
  *(v44 + 1) = 0;
  *v45 = 0xD000000000000012;
  *(v45 + 1) = 0x80000001DCA88D80;
  v51 = v63;
  *v46 = v64;
  *(v46 + 1) = v51;
  v53 = v79;
  v52 = v80;
  (*(v79 + 104))(&v15[v47], *MEMORY[0x1E69CFC70], v80);
  (*(v53 + 56))(&v15[v47], 0, 1, v52);
  (*(v73 + 104))(v15, *MEMORY[0x1E69CFC50], v74);

  SiriKitEvent.__allocating_init(_:builder:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v54 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  [v54 setErrorCode_];

  v55 = MEMORY[0x1E12A1410](v69, v70);

  [v54 setReason_];

  v56 = v54;
  if (v76)
  {
    v57 = MEMORY[0x1E12A1410](v78);
  }

  else
  {
    v57 = 0;
  }

  [v56 setRefId_];

  v58 = [v56 dictionary];
  if (v58 && (v59 = v58, v60 = [v58 copy], v59, v60))
  {
    v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v61 = 0;
  }

  v77(v61);

  return __swift_destroy_boxed_opaque_existential_1Tm(v83);
}

id static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 nlv3Parse];
  if (result)
  {
    v4 = result;
    v5 = [result data];

    if (v5)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      outlined copy of Data._Representation(v6, v8);
      NLIntent.init(protobufData:)();
      v13 = type metadata accessor for NLIntent();
      (*(*(v13 - 8) + 56))(a2, 0, 1, v13);

      return outlined consume of Data._Representation(v6, v8);
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v9 = static Log.executor;
      v10 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("Failed to get nlv3 parse", 24, 2, &dword_1DC659000, v9, v10, MEMORY[0x1E69E7CC0]);
      v11 = type metadata accessor for NLIntent();
      v12 = *(*(v11 - 8) + 56);

      return v12(a2, 1, 1, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SiriKitExecutorRunUtils.multiUserStateFrom(command:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 multiUser])
  {
    static SiriKitExecutorRunUtils.multiUserContextFrom(command:)(a1);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for MultiUserContext();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

void static SiriKitExecutorRunUtils.multiUserContextFrom(command:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment16UserSessionStateVSgMd, _s19SiriFlowEnvironment16UserSessionStateVSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v17 - v4;
  v6 = [a1 identifiedUserMeCard];
  v7 = [a1 remoteExecution];
  if (v7 && (v8 = v7, v9 = [v7 executionDeviceAssistantId], v8, v9))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v6)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  else if (!v6)
  {
    goto LABEL_4;
  }

  v11 = v6;
  v10 = SAPerson.contact.getter();

LABEL_7:
  v12 = type metadata accessor for DefaultMeCardProxy();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  [a1 requiresConditionalMultiUserGrounding];
  v17[4] = v12;
  v17[5] = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type DefaultMeCardProxy and conformance DefaultMeCardProxy, type metadata accessor for DefaultMeCardProxy, &protocol conformance descriptor for DefaultMeCardProxy);
  v17[1] = v13;

  v14 = [a1 userSessionState];
  if (v14)
  {
    v15 = v14;
    SAUserSessionState.sfeUserSessionState.getter(v5);
  }

  else
  {
    v16 = type metadata accessor for UserSessionState();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  }

  MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)();
}

uint64_t closure #2 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BargeInMode();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Date();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D6E496567726162, 0xEC0000007365646FLL), (v18 & 1) != 0) && (outlined init with copy of Any(*(v16 + 56) + 32 * v17, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v38;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = type metadata accessor for DateInterval();
  v21 = *(*(v20 - 8) + 56);
  v21(v15, 1, 1, v20);
  if (!*(v16 + 16))
  {
    goto LABEL_18;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001DCA89520);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v22, v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_18;
  }

  v32 = v38;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001DCA89540);
  if ((v25 & 1) == 0)
  {
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v24, v37);
  result = swift_dynamicCast();
  if ((result & 1) == 0 || !v32 || !v38)
  {
    goto LABEL_18;
  }

  v27 = v32 - v38;
  if (__OFSUB__(v32, v38))
  {
    __break(1u);
  }

  else if ((v27 & 0x8000000000000000) == 0 || !__OFSUB__(0, v27))
  {
    Date.init()();
    Date.addingTimeInterval(_:)();
    v28 = v33;
    v29 = *(v33 + 8);
    v31[1] = v33 + 8;
    v32 = v29;
    (v29)(v36, v35);
    (*(v28 + 16))(v36, v34, v35);
    DateInterval.init(start:duration:)();
    (v32)(v34, v35);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v21(v12, 0, 1, v20);
    outlined init with take of DateInterval?(v12, v15);
LABEL_18:
    static BargeInMode.from(aceModes:)(v19, v6);

    outlined init with copy of ReferenceResolutionClientProtocol?(v15, v12, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    BargeInContext.init(mode:approximatePreviousTTSInterval:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v30 = type metadata accessor for BargeInContext();
    return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
  }

  __break(1u);
  return result;
}

uint64_t static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int *a5)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = a4;
  *(v5 + 80) = a3;
  *(v5 + 40) = a1;
  v8 = (a5 + *a5);
  v6 = swift_task_alloc();
  *(v5 + 64) = v6;
  *v6 = v5;
  v6[1] = static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:);

  return v8();
}

uint64_t static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:)()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static SiriKitExecutorRunUtils.crashIfThrow(file:line:closure:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  *(v0 + 32) = *(v0 + 72);
  v1 = v0 + 32;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 8);
  *(v1 - 16) = 0;
  *(v1 - 8) = 0xE000000000000000;
  v5 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v6 = *(v1 - 16);
  v7 = *(v1 - 8);

  return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v6, v7, v4, v2, v5, v3);
}

void specialized static SiriKitExecutorRunUtils.addIntentMetadata(intent:peerInfo:endpointInfo:)(const char *a1, void *a2, void *a3)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v91 = static Log.executor;
  HIDWORD(v92) = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DCA696F0;
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v95 = v6;
  v7 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v11 = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 64) = v11;
  if (v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0x3E4C494E3CLL;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  *(v5 + 32) = v12;
  *(v5 + 40) = v13;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x3E4C494E3CLL;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  *(v5 + 72) = v16;
  *(v5 + 80) = v17;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  *(v5 + 136) = v10;
  *(v5 + 144) = v11;
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0x3E4C494E3CLL;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  *(v5 + 112) = v20;
  *(v5 + 120) = v21;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v22 = dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()();
  v23 = 1163219540;
  if ((v22 & 1) == 0)
  {
    v23 = 0x45534C4146;
  }

  v24 = 0xE400000000000000;
  if ((v22 & 1) == 0)
  {
    v24 = 0xE500000000000000;
  }

  *(v5 + 176) = v10;
  *(v5 + 184) = v11;
  *(v5 + 152) = v23;
  *(v5 + 160) = v24;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
  *(v5 + 216) = v10;
  *(v5 + 224) = v11;
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0x3E4C494E3CLL;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  *(v5 + 192) = v27;
  *(v5 + 200) = v28;
  v29 = a3[4];
  v89 = a3[3];
  v90 = __swift_project_boxed_opaque_existential_1(a3, v89);
  v30 = dispatch thunk of EndpointInfoProviding.getIdentifier()();
  *(v5 + 256) = v10;
  *(v5 + 264) = v11;
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0x3E4C494E3CLL;
  }

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  *(v5 + 232) = v32;
  *(v5 + 240) = v33;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v34 = dispatch thunk of EndpointInfoProviding.getMediaRouteIdentifier()();
  v36 = v91;
  *(v5 + 296) = v10;
  *(v5 + 304) = v11;
  if (v35)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0x3E4C494E3CLL;
  }

  if (v35)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  *(v5 + 272) = v37;
  *(v5 + 280) = v38;
  os_log(_:dso:log:type:_:)("SiriKitIntent setting metadata originatingDeviceIdsIdentifier='%s' originatingDeviceRapportEffectiveId='%s' originatingDeviceRapportMediaSystemId='%s' isOwnedByCurrentUser='%s' mediaRouteIdentifier='%s' endpointId='%s' endpointMediaRouteId='%s'", v89, v90, v29, v91, v92, a1, v95);

  v39 = [v94 _metadata];
  if (v39)
  {

    v40 = [v94 _metadata];
    if (v40)
    {
      v41 = v40;
      v42 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
      if (v43)
      {
        v44 = MEMORY[0x1E12A1410](v42);
      }

      else
      {
        v44 = 0;
      }

      [v41 setOriginatingDeviceIdsIdentifier_];
    }

    v46 = [v94 _metadata];
    if (v46)
    {
      v47 = v46;
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v48 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
      if (v49)
      {
        v50 = MEMORY[0x1E12A1410](v48);
      }

      else
      {
        v50 = 0;
      }

      [v47 setOriginatingDeviceRapportEffectiveId_];
    }

    v51 = [v94 _metadata];
    if (v51)
    {
      v52 = v51;
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v53 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
      if (v54)
      {
        v55 = MEMORY[0x1E12A1410](v53);
      }

      else
      {
        v55 = 0;
      }

      [v52 setOriginatingDeviceRapportMediaSystemId_];
    }

    v56 = [v94 _metadata];
    if (v56)
    {
      v57 = v56;
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      [v57 setIsOwnedByCurrentUser_];
    }

    v58 = [v94 _metadata];
    if (v58)
    {
      v59 = v58;
      v60 = dispatch thunk of EndpointInfoProviding.getIdentifier()();
      if (v61)
      {
        v62 = MEMORY[0x1E12A1410](v60);
      }

      else
      {
        v62 = 0;
      }

      [v59 setEndpointId_];
    }

    v63 = [v94 _metadata];
    if (v63)
    {
      v64 = v63;
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      v65 = dispatch thunk of EndpointInfoProviding.getMediaRouteIdentifier()();
      if (v66)
      {
        v67 = MEMORY[0x1E12A1410](v65);
      }

      else
      {
        v67 = 0;
      }

      [v64 setMediaRouteId_];
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v68 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
    if (v69)
    {
      v70 = v68;
      v71 = v69;
      v72 = [v94 _metadata];
      if (v72 && (v73 = v72, v74 = [v72 airPlayRouteIds], v73, v74))
      {
      }

      else
      {
        v75 = [v94 _metadata];
        if (v75)
        {
          v76 = v75;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_1DCA66060;
          *(v77 + 32) = v70;
          *(v77 + 40) = v71;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v76 setAirPlayRouteIds_];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v45 = static os_log_type_t.debug.getter();
    os_log(_:dso:log:type:_:)("SiriKitIntent metadata is NIL", 29, 2, &dword_1DC659000, v36, v45, MEMORY[0x1E69E7CC0]);
  }

  v79 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  if (v80)
  {
    v81 = MEMORY[0x1E12A1410](v79);
  }

  else
  {
    v81 = 0;
  }

  [v94 _setOriginatingDeviceIdsIdentifier_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v82 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  if (v83)
  {
    v84 = MEMORY[0x1E12A1410](v82);
  }

  else
  {
    v84 = 0;
  }

  [v94 _setOriginatingDeviceRapportEffectiveIdentifier_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v85 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  if (v86)
  {
    v87 = MEMORY[0x1E12A1410](v85);
  }

  else
  {
    v87 = 0;
  }

  [v94 _setOriginatingDeviceRapportMediaSystemIdentifier_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v88 = dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v96 = NSNumber.init(integerLiteral:)(v88 & 1).super.super.isa;
  [v94 _setIsOwnedByCurrentUser_];
}

uint64_t specialized static SiriKitExecutorRunUtils.makeSiriKitParameterMetadata(aceParameterMetadata:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for SiriKitConfirmationState();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v10;
    }

    v52 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    v38 = i;
    v36 = v8;
    v11 = 0;
    v39 = a1 & 0xC000000000000001;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a1 + 32;
    v44 = v5;
    v45 = (v46 + 48);
    v12 = (v46 + 32);
    v35 = a1;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v39)
      {
        v14 = MEMORY[0x1E12A1FE0]();
      }

      else
      {
        if (v11 >= *(v34 + 16))
        {
          goto LABEL_29;
        }

        v14 = *(v33 + 8 * v11);
      }

      v1 = v14;
      v15 = [v14 parameterName];
      if (!v15)
      {
        goto LABEL_32;
      }

      v16 = v15;
      v43 = v13;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v18;
      v41 = v17;

      v19 = [v1 shouldResolve];
      v42 = v1;
      v20 = [v1 confirmationStates];
      if (v20)
      {
        v21 = v20;
        v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = *(v5 + 2);
        if (v22)
        {
          v37 = v19;
          v51 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
          a1 = 0;
          v23 = v51;
          v24 = (v5 + 32);
          v8 = v36;
          v47 = v22;
          while (a1 < *(v5 + 2))
          {
            outlined init with copy of Any(v24, v50);
            outlined init with copy of Any(v50, &v48);
            if (!swift_dynamicCast())
            {
              goto LABEL_33;
            }

            v1 = v44;
            SiriKitConfirmationState.init(rawValue:)();
            if ((*v45)(v1, 1, v6) == 1)
            {
              goto LABEL_34;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v50);

            v25 = *v12;
            (*v12)(v8, v1, v6);
            v51 = v23;
            v1 = v8;
            v27 = *(v23 + 16);
            v26 = *(v23 + 24);
            if (v27 >= v26 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
              v23 = v51;
            }

            ++a1;
            *(v23 + 16) = v27 + 1;
            v25((v23 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v27), v1, v6);
            v24 += 32;
            v8 = v1;
            if (v47 == a1)
            {

              a1 = v35;
              v10 = MEMORY[0x1E69E7CC0];
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_6:
      type metadata accessor for SiriKitParameterMetadata();
      swift_allocObject();
      v8 = SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = *(v52 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 = v43;
      if (v43 == v38)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1E12A1580](0xD000000000000026, 0x80000001DCA87420);
  _print_unlocked<A, B>(_:_:)();
  v29 = v48;
  v30 = v49;

  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v29, v30, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 38);
  __break(1u);
LABEL_34:
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA874E0);
  _print_unlocked<A, B>(_:_:)();
  v31 = v48;
  v32 = v49;

  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v31, v32, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 42);
  __break(1u);
  return result;
}

uint64_t SiriKitFlowActivity.isSiriKit.setter(char a1)
{
  v3 = direct field offset for SiriKitFlowActivity.isSiriKit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriKitFlowActivity.isSiriKitSupportedApp.setter(char a1)
{
  v3 = direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriKitFlowActivity.__allocating_init(activityType:app:executionRequestId:responseId:taskStepStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v55 = a8;
  v56 = a7;
  v52 = a5;
  v53 = a3;
  v54 = a1;
  v10 = type metadata accessor for SiriKitReliabilityCodes();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = (v14 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v14 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  (*(v11 + 104))(v13, *MEMORY[0x1E69CFCC0], v10);
  v17 = SiriKitReliabilityCodes.rawValue.getter();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  *v16 = v17;
  v16[1] = v19;
  *(v14 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v20 = v14 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v14 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v20 + 15) = -18;
  type metadata accessor for AppInformationResolver();
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v21 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0x6C7070615F746F6ELL;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xEE00656C62616369;
  }

  v25 = (v14 + direct field offset for SiriKitFlowActivity.appBundleId);
  *v25 = v23;
  v25[1] = v24;
  v26 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0x6C7070615F746F6ELL;
  }

  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0xEE00656C62616369;
  }

  v30 = (v14 + direct field offset for SiriKitFlowActivity.appName);
  *v30 = v28;
  v30[1] = v29;
  v31 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0x6C7070615F746F6ELL;
  }

  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0xEE00656C62616369;
  }

  v35 = (v14 + direct field offset for SiriKitFlowActivity.appVersion);
  *v35 = v33;
  v35[1] = v34;
  v36 = dispatch thunk of AppInformationResolver.resolveBuild.getter();
  v38 = 48;
  if (v37)
  {
    v38 = v36;
  }

  v39 = 0xE100000000000000;
  if (v37)
  {
    v39 = v37;
  }

  v40 = (v14 + direct field offset for SiriKitFlowActivity.build);
  *v40 = v38;
  v40[1] = v39;
  *(v14 + direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp) = dispatch thunk of AppInformationResolver.isSiriKitSupportedApp.getter() & 1;
  v41 = v52;
  if (a6)
  {
    v42 = a6;
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  v43 = (v14 + direct field offset for SiriKitFlowActivity.responseId);
  *v43 = v41;
  v43[1] = v42;
  v44 = v53;
  v45 = v54;
  if (a4)
  {
    v46 = a4;
  }

  else
  {
    v44 = 0;
    v46 = 0xE000000000000000;
  }

  v47 = (v14 + direct field offset for SiriKitFlowActivity.executionRequestId);
  *v47 = v44;
  v47[1] = v46;
  ActivityType.rawValue.getter();
  v48 = DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();

  v49 = type metadata accessor for ActivityType();
  (*(*(v49 - 8) + 8))(v45, v49);
  return v48;
}

uint64_t SiriKitFlowActivity.init(activityType:app:executionRequestId:responseId:taskStepStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v57 = a8;
  v58 = a7;
  v54 = a5;
  v55 = a3;
  v56 = a1;
  v12 = type metadata accessor for SiriKitReliabilityCodes();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v9 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v9 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  (*(v13 + 104))(v16, *MEMORY[0x1E69CFCC0], v12, v14);
  v19 = SiriKitReliabilityCodes.rawValue.getter();
  v21 = v20;
  (*(v13 + 8))(v16, v12);
  *v18 = v19;
  v18[1] = v21;
  *(v9 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v22 = v9 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v9 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v22 + 15) = -18;
  type metadata accessor for AppInformationResolver();
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v23 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0x6C7070615F746F6ELL;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xEE00656C62616369;
  }

  v27 = (v9 + direct field offset for SiriKitFlowActivity.appBundleId);
  *v27 = v25;
  v27[1] = v26;
  v28 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0x6C7070615F746F6ELL;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xEE00656C62616369;
  }

  v32 = (v9 + direct field offset for SiriKitFlowActivity.appName);
  *v32 = v30;
  v32[1] = v31;
  v33 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0x6C7070615F746F6ELL;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xEE00656C62616369;
  }

  v37 = (v9 + direct field offset for SiriKitFlowActivity.appVersion);
  *v37 = v35;
  v37[1] = v36;
  v38 = dispatch thunk of AppInformationResolver.resolveBuild.getter();
  v40 = 48;
  if (v39)
  {
    v40 = v38;
  }

  v41 = 0xE100000000000000;
  if (v39)
  {
    v41 = v39;
  }

  v42 = (v9 + direct field offset for SiriKitFlowActivity.build);
  *v42 = v40;
  v42[1] = v41;
  *(v9 + direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp) = dispatch thunk of AppInformationResolver.isSiriKitSupportedApp.getter() & 1;
  v43 = v54;
  if (a6)
  {
    v44 = a6;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
  }

  v45 = (v9 + direct field offset for SiriKitFlowActivity.responseId);
  *v45 = v43;
  v45[1] = v44;
  v46 = v55;
  v47 = v56;
  if (a4)
  {
    v48 = a4;
  }

  else
  {
    v46 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = (v9 + direct field offset for SiriKitFlowActivity.executionRequestId);
  *v49 = v46;
  v49[1] = v48;
  ActivityType.rawValue.getter();
  v50 = DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();

  v51 = type metadata accessor for ActivityType();
  (*(*(v51 - 8) + 8))(v47, v51);
  return v50;
}

void SiriKitFlowActivity.__allocating_init(from:)()
{
  v0 = type metadata accessor for SiriKitReliabilityCodes();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69CFCC0], v0, v2);
  SiriKitReliabilityCodes.rawValue.getter();
  (*(v1 + 8))(v4, v0);
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000024, 0x80000001DCA89560, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/TaskStepInstrumentation/SiriKitFlowActivity.swift", 118, 2, 50);
  __break(1u);
}

void SiriKitFlowActivity.init(from:)()
{
  v1 = v0;
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v1 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  (*(v3 + 104))(v6, *MEMORY[0x1E69CFCC0], v2, v4);
  v9 = SiriKitReliabilityCodes.rawValue.getter();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  *v8 = v9;
  v8[1] = v11;
  *(v1 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v12 = v1 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v1 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v12 + 15) = -18;
  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000024, 0x80000001DCA89560, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/TaskStepInstrumentation/SiriKitFlowActivity.swift", 118, 2, 50);
  __break(1u);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriKitFlowActivity.CodingKeys()
{
  v0 = SiriKitFlowActivity.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == SiriKitFlowActivity.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriKitFlowActivity.CodingKeys()
{
  Hasher.init(_seed:)();
  SiriKitFlowActivity.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SiriKitFlowActivity.CodingKeys(uint64_t a1)
{
  SiriKitFlowActivity.CodingKeys.stringValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriKitFlowActivity.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  SiriKitFlowActivity.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SiriKitFlowActivity.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SiriKitFlowActivity.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriKitFlowActivity.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitFlowActivity.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriKitFlowActivity.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SiriKitFlowActivity.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriKitFlowActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriKitFlowActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriKitFlowActivity.__ivar_destroyer()
{
}

unint64_t specialized SiriKitFlowActivity.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriKitFlowActivity.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for SiriKitFlowActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriKitFlowActivity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DirectFlowPluginLoaderImpl.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t FlowPluginAndBundle.init(flowPlugin:bundle:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, a3);

  return outlined init with take of ReferenceResolutionClientProtocol(a2, a3 + 40);
}

uint64_t one-time initialization function for pluginLoader()
{
  type metadata accessor for FlowDelegatePluginLoader();
  result = static FlowDelegatePluginLoader.sharedInstance.getter();
  static SiriKitFlowLoader.pluginLoader = result;
  return result;
}

uint64_t *SiriKitFlowLoader.pluginLoader.unsafeMutableAddressor()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return &static SiriKitFlowLoader.pluginLoader;
}

uint64_t static SiriKitFlowLoader.pluginLoader.getter()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }
}

uint64_t SiriKitFlowLoader.loadFlow(rcId:input:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  Input.parse.getter();
  dispatch thunk of FlowDelegatePluginLoader.loadFlow(rcId:parse:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SiriKitFlowLoader.loadFlowPlugin(bundleIdentifier:)()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return dispatch thunk of FlowDelegatePluginLoader.loadFlowPlugin(bundleIdentifier:)();
}

Swift::Void __swiftcall SiriKitFlowLoader.loadAndWarmBundle(bundleIdentifier:refId:)(Swift::String bundleIdentifier, Swift::String refId)
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  dispatch thunk of FlowDelegatePluginLoader.loadAndWarmBundle(bundleIdentifier:refId:)();
}

uint64_t protocol witness for FlowLoader.loadFlow(rcId:input:) in conformance SiriKitFlowLoader(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  Input.parse.getter();
  dispatch thunk of FlowDelegatePluginLoader.loadFlow(rcId:parse:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for FlowLoader.loadFlowPlugin(bundleIdentifier:) in conformance SiriKitFlowLoader()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return dispatch thunk of FlowDelegatePluginLoader.loadFlowPlugin(bundleIdentifier:)();
}

uint64_t protocol witness for FlowLoader.loadAndWarmBundle(bundleIdentifier:refId:) in conformance SiriKitFlowLoader()
{
  if (one-time initialization token for pluginLoader != -1)
  {
    swift_once();
  }

  return dispatch thunk of FlowDelegatePluginLoader.loadAndWarmBundle(bundleIdentifier:refId:)();
}

uint64_t DirectFlowPluginLoaderImpl.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t DirectFlowPluginLoaderImpl.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id AFSpeechInfo.toAFSpeechPackage()()
{
  result = [v0 speechRecognizedCommand];
  if (result)
  {
    v2 = result;
    v3 = [result recognition];

    if (v3)
    {
      v4 = [v3 af_speechPhrases];

      if (v4)
      {
        v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = specialized _arrayConditionalCast<A, B>(_:)(v5);

        if (v6)
        {
          v7 = [v0 speechRecognizedCommand];
          if (v7)
          {
            v8 = v7;
            v9 = [v7 recognition];

            if (v9)
            {
              v10 = [v9 af_speechUtterances];

              if (v10)
              {
                type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechUtterance, 0x1E698D250);
                static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v11 = [v0 speechRecognizedCommand];
                if (v11)
                {
                  v12 = v11;
                  v13 = [v11 processedAudioDuration];

                  if (v13)
                  {
                    [v13 doubleValue];
                    v15 = v14;

                    v16 = [v0 speechRecognizedCommand];
                    if (v16)
                    {
                      v17 = v16;
                      v18 = [v16 audioAnalytics];

                      if (v18)
                      {
                        v19 = [v18 af_audioAnalytics];

                        if (v19)
                        {
                          v20 = objc_allocWithZone(MEMORY[0x1E698D238]);
                          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
                          isa = Array._bridgeToObjectiveC()().super.isa;

                          v22 = Array._bridgeToObjectiveC()().super.isa;

                          v23 = [v20 initWithPhrases:isa utterances:v22 processedAudioDuration:v15];

                          v24 = [objc_allocWithZone(MEMORY[0x1E698D228]) initWithRecognition:v23 rawRecognition:v23 audioAnalytics:v19 isFinal:1 utteranceStart:0.0];
                          return v24;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(a1, a2, a3, a4);
}

uint64_t static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SiriKitEventPayload();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:), 0, 0);
}

uint64_t static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  type metadata accessor for SiriKitEvent();
  *v1 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v1[1] = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFBC8], v4);
  v8 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[7] = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = static SiriKitMetricsUtils.emitTopicChanged(input:eventSender:);

  return MEMORY[0x1EEE39338](v8, v5, v6);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SiriKitEventPayload();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:), 0, 0);
}

uint64_t static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  type metadata accessor for SiriKitEvent();
  *v1 = v6;
  v1[1] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFC40], v3);

  v9 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[8] = v9;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = static SiriKitMetricsUtils.emitConversationCommitted(eventSender:resultCandidateId:);

  return MEMORY[0x1EEE39338](v9, v7, v8);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v5);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      outlined init with take of NSExtensionProtocol(v8, v11);
      outlined init with take of NSExtensionProtocol(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      outlined init with take of NSExtensionProtocol(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    return 0;
  }

  return v3;
}

uint64_t static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SiriKitEventPayload();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:), 0, 0);
}

uint64_t static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  type metadata accessor for SiriKitEvent();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFC58], v4);
  v7 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[6] = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = static SiriKitMetricsUtils.emitConversationWillContinueInRemoteProcess(eventSender:);

  return MEMORY[0x1EEE39338](v7, v5, v6);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t StringProtocol.endIndex<A>(of:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  StringProtocol.range<A>(of:options:range:locale:)();
  v11 = v10;
  v13 = v12;
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v13)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}