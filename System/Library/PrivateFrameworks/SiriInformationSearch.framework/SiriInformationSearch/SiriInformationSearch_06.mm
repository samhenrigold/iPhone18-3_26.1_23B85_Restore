uint64_t Siri_Nlu_External_UserParse.firstOfflineSupportedPlayTask()(uint64_t a1)
{
  v3 = Siri_Nlu_External_Span.matcherNames.getter();
  v4 = specialized Sequence.flatMap<A>(_:)(v3);

  if (!v1)
  {
    if (v4 >> 62)
    {
      goto LABEL_24;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x223DDFF80](v6, v4);
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

            outlined destroy of Any?(&v11);
LABEL_22:

            return v2;
          }

LABEL_10:

          static UsoTask_CodegenConverter.convert(task:)();

          outlined init with copy of Any?(&v11, &v9);
          if (*(&v10 + 1))
          {
            type metadata accessor for UsoTask_play_uso_NoEntity();
            if (swift_dynamicCast())
            {
              goto LABEL_20;
            }
          }

          else
          {
            outlined destroy of Any?(&v9);
          }

          v9 = v11;
          v10 = v12;
          if (*(&v12 + 1))
          {
            type metadata accessor for UsoTask_play_common_MediaItem();
            if (swift_dynamicCast())
            {

              goto LABEL_22;
            }
          }

          else
          {

            outlined destroy of Any?(&v9);
          }

          ++v6;
          if (v7 == v5)
          {
            goto LABEL_25;
          }
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      v2 = *(v4 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

LABEL_25:

    return 0;
  }

  return v2;
}

uint64_t Siri_Nlu_External_UserParse.firstSummarizeMediaTask()(uint64_t a1)
{
  v3 = Siri_Nlu_External_Span.matcherNames.getter();
  v4 = specialized Sequence.flatMap<A>(_:)(v3);

  if (!v1)
  {
    if (v4 >> 62)
    {
      goto LABEL_18;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        while ((v4 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x223DDFF80](v6, v4);
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v2;
          }

LABEL_10:

          static UsoTask_CodegenConverter.convert(task:)();

          if (v9[3])
          {
            type metadata accessor for UsoTask_summarise_common_MediaItem();
            if (swift_dynamicCast())
            {
              goto LABEL_16;
            }
          }

          else
          {

            outlined destroy of Any?(v9);
          }

          ++v6;
          if (v7 == v5)
          {
            goto LABEL_19;
          }
        }

        if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_18:
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      v2 = *(v4 + 8 * v6 + 32);

      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_19:

    return 0;
  }

  return v2;
}

uint64_t RunningBoardForegroundAppProvider.getForegroundAppProfileSlice()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized RunningBoardForegroundAppProvider.getForegroundAppId()();

  _s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
  static Message.with(_:)();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v9 = v5;
  _s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
  static Message.with(_:)();
  (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  return (*(v3 + 8))(v5, v2);
}

void closure #1 in RunningBoardForegroundAppProvider.getForegroundAppId()(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 taskState] != 4)
  {
    goto LABEL_9;
  }

  v4 = [v3 endowmentNamespaces];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v5) = specialized Set.contains(_:)(0xD00000000000001FLL, 0x80000002234D9410, v6);

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [v3 process];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 bundle];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v9 identifier];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v15 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v11, v13, 0);
  if (!v15 || (v16 = v15, v17 = [v15 developerType], v16, v17 != 3))
  {

LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  *a2 = v11;
  a2[1] = v13;
}

uint64_t closure #1 in RunningBoardForegroundAppProvider.buildForegroundAppProfileSliceValue(_:)()
{
  v0 = type metadata accessor for Google_Protobuf_Any();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AE8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v2 + 104))(v4, *MEMORY[0x277D39D58], v1);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
  Google_Protobuf_Any.init()();
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t closure #1 in RunningBoardForegroundAppProvider.getForegroundAppProfileSlice()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39700]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2234CF920;
  (*(v7 + 16))(v9 + v8, a2, v6);
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

void specialized RunningBoardForegroundAppProvider.getForegroundAppId()()
{
  v52[9] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setEndowmentNamespaces_];

  [v1 setValues_];
  v52[0] = 0;
  v45 = [objc_opt_self() predicateMatchingProcessTypeApplication];
  v46 = v1;
  v3 = [objc_opt_self() statesForPredicate:v45 withDescriptor:v1 error:v52];
  v4 = v52[0];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for RBSProcessState();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;

    v44 = 0;
  }

  else
  {
    v8 = v52[0];
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = 0;
    v6 = MEMORY[0x277D84F90];
  }

  v47 = v6 >> 62;
  v10 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = v6 & 0xC000000000000001;
  v14 = v6 + 32;
  v15 = &unk_2784DB000;
  v48 = v6;
  v49 = v6 + 32;
  v50 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v12 == v11)
    {
      v12 = v11;
      if (v47)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (v13)
    {
      v17 = MEMORY[0x223DDFF80](v12, v48);
      goto LABEL_13;
    }

    if (v12 >= *(v10 + 16))
    {
      break;
    }

    v17 = *(v14 + 8 * v12);
LABEL_13:
    v0 = v17;
    if ([v17 v15[324]] == 4 && (v18 = objc_msgSend(v0, sel_endowmentNamespaces)) != 0)
    {
      v19 = v18;
      v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16))
      {
        v21 = v10;
        v22 = v15;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v23 = Hasher._finalize()();
        v24 = -1 << *(v20 + 32);
        v25 = v23 & ~v24;
        if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
LABEL_24:

          v14 = v49;
          v15 = v22;
LABEL_33:
          v10 = v21;
          v13 = v50;
          goto LABEL_8;
        }

        v26 = ~v24;
        while (1)
        {
          v27 = (*(v20 + 48) + 16 * v25);
          v28 = *v27 == 0xD00000000000001FLL && 0x80000002234D9410 == v27[1];
          if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v29 = [v0 process];
        v15 = v22;
        if (!v29)
        {

          v14 = v49;
          goto LABEL_33;
        }

        v30 = v29;
        v31 = [v29 bundle];

        v10 = v21;
        if (v31)
        {
          v32 = [v31 identifier];

          v13 = v50;
          if (v32)
          {
            v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            v36 = objc_allocWithZone(MEMORY[0x277CC1E70]);

            v37 = MEMORY[0x223DDF550](v33, v35);

            v52[0] = 0;
            v38 = [v36 initWithBundleIdentifier:v37 allowPlaceholder:0 error:v52];

            if (v38)
            {
              v39 = v52[0];
              v40 = [v38 developerType];

              if (v40 == 3)
              {
                goto LABEL_47;
              }

              v14 = v49;
            }

            else
            {
              v41 = v52[0];
              v42 = _convertNSErrorToError(_:)();

              swift_willThrow();

              v44 = 0;
              v14 = v49;
            }
          }

          else
          {

            v14 = v49;
          }
        }

        else
        {

          v14 = v49;
          v13 = v50;
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_8:
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:

  v14 = v49;
  if (v47)
  {
LABEL_48:
    if (v12 == __CocoaSet.count.getter())
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (v12 == *(v10 + 16))
  {
LABEL_49:

    return;
  }

LABEL_40:
  if (v13)
  {
    v43 = MEMORY[0x223DDFF80](v12, v48);
  }

  else
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
    }

    v43 = *(v14 + 8 * v12);
  }

  v51 = v43;
  closure #1 in RunningBoardForegroundAppProvider.getForegroundAppId()(&v51, v52);

  if (v52[1])
  {
    goto LABEL_49;
  }

  __break(1u);
}

uint64_t _s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t type metadata accessor for RBSProcessState()
{
  result = lazy cache variable for type metadata for RBSProcessState;
  if (!lazy cache variable for type metadata for RBSProcessState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSProcessState);
  }

  return result;
}

uint64_t SportsResolver.makeRecommendation(entities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA10SportsItemVGMd, &_s13SiriInference14RecommendationOyAA10SportsItemVGMR);
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v76 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v76 - v17;
  v19 = type metadata accessor for SportsRecommendationQuery();
  v20 = MEMORY[0x28223BE20](v19);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v77 = v7;
    v80 = v21;
    v81 = v20;
    v85 = a2;

    v24 = SportsRecommendationQuery.init(sportsPersonalizationEntities:)();
    if (one-time initialization token for shared != -1)
    {
      v24 = swift_once();
    }

    v79 = &v76;
    v25 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v24);
    v74 = v86;
    v75 = v23;
    v84 = v23;
    Date.init()();
    v26 = *(*v25 + 200);
    v74 = &v73;
    v75 = v13;
    LOBYTE(v73) = 2;
    v27 = v18;
    v26(0xD000000000000025, 0x80000002234DBA90, 0, v12, "SiriInformationSearch/SportsInferenceQuerying.swift", 51, 2, 33, "makeRecommendation(entities:)", 29, v73, partial apply for closure #1 in SportsResolver.makeRecommendation(entities:));
    (*(v10 + 8))(v12, v9);
    outlined init with copy of Result<Recommendation<SportsItem>, Error>(v18, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v16;
      v29 = v85;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.pommes);
      v31 = v28;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v87 = v28;
        v88[0] = v35;
        *v34 = 136315138;
        v36 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v37 = String.init<A>(describing:)();
        v39 = v27;
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v88);

        *(v34 + 4) = v40;
        _os_log_impl(&dword_2232BB000, v32, v33, "Got error calling inference for sports recommendation: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x223DE0F80](v35, -1, -1);
        MEMORY[0x223DE0F80](v34, -1, -1);

        v41 = v39;
      }

      else
      {

        v41 = v27;
      }

      outlined destroy of Result<Recommendation<SportsItem>, Error>(v41);
      v55 = v84;
      v56 = type metadata accessor for SportsItem();
      (*(*(v56 - 8) + 56))(v29, 1, 1, v56);
      return (*(v80 + 8))(v55, v81);
    }

    else
    {
      v50 = v82;
      v49 = v83;
      v51 = (*(v82 + 88))(v16, v83);
      v52 = v85;
      if (v51 == *MEMORY[0x277D56080])
      {
        outlined destroy of Result<Recommendation<SportsItem>, Error>(v18);
        (*(v50 + 96))(v16, v49);
        v53 = type metadata accessor for SportsItem();
        v54 = *(v53 - 8);
        (*(v54 + 32))(v52, v16, v53);
        (*(v54 + 56))(v52, 0, 1, v53);
        return (*(v80 + 8))(v84, v81);
      }

      else
      {
        v57 = v78;
        (*(v50 + 32))(v78, v16, v49);
        v58 = v84;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logger.pommes);
        v60 = v77;
        (*(v50 + 16))(v77, v57, v49);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v88[0] = v64;
          *v63 = 136315138;
          v65 = Recommendation.description.getter();
          v67 = v66;
          v68 = *(v50 + 8);
          v68(v60);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v88);
          v58 = v84;

          *(v63 + 4) = v69;
          _os_log_impl(&dword_2232BB000, v61, v62, "Got non-confident sports recommendation, will not select: '%s'", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
          v70 = v64;
          v52 = v85;
          MEMORY[0x223DE0F80](v70, -1, -1);
          MEMORY[0x223DE0F80](v63, -1, -1);

          (v68)(v78, v49);
        }

        else
        {

          v71 = *(v50 + 8);
          v71(v60, v49);
          v71(v57, v49);
        }

        outlined destroy of Result<Recommendation<SportsItem>, Error>(v27);
        v72 = type metadata accessor for SportsItem();
        (*(*(v72 - 8) + 56))(v52, 1, 1, v72);
        return (*(v80 + 8))(v58, v81);
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.pommes);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2232BB000, v43, v44, "Got no sports items from the alternative result entities. Nothing to recommend against...", v45, 2u);
      MEMORY[0x223DE0F80](v45, -1, -1);
    }

    v46 = type metadata accessor for SportsItem();
    v47 = *(*(v46 - 8) + 56);

    return v47(a2, 1, 1, v46);
  }
}

uint64_t closure #1 in SportsResolver.makeRecommendation(entities:)@<X0>(void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  SportsResolver.makeRecommendation(query:)();
  if (v2)
  {
    *a2 = v2;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    return outlined init with take of Result<Recommendation<SportsItem>, Error>(v6, a2);
  }
}

uint64_t outlined init with copy of Result<Recommendation<SportsItem>, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<Recommendation<SportsItem>, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Result<Recommendation<SportsItem>, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMd, &_ss6ResultOy13SiriInference14RecommendationOyAC10SportsItemVGs5Error_pGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FeatureFlag.isOn.getter()
{
  v6[3] = &type metadata for FeatureFlag;
  v6[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  outlined init with copy of FeatureFlag(v0, &v5);
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

const char *FeatureFlag.domain.getter()
{
  if (*(v0 + 32) != 3)
  {
    return "Pommes";
  }

  v1 = *(v0 + 16) | *(v0 + 24) | *(v0 + 8);
  if (*v0 == 4 && v1 == 0)
  {
    return "SiriVideo";
  }

  if (*v0 != 6 || v1 != 0)
  {
    return "Pommes";
  }

  return "SiriSettings";
}

const char *specialized FeatureFlag.domainFeature(for:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73676E6974697277 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "writings_search";
  }

  if (a1 == 7300455 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 1936744813 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "geo_search";
  }

  if (a1 == 0x6D6E696174756465 && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "edutainment_search";
  }

  if (a1 == 0x74616C736E617274 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "translation_search";
  }

  if (a1 == 0x636E75616C707061 && a2 == 0xE900000000000068)
  {
    return "applaunch_search";
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = a1 == 1936748641 && a2 == 0xE400000000000000;
  result = "applaunch_search";
  if ((v5 & 1) == 0 && !v7)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return "applaunch_search";
    }

    result = "emergency_search";
    if (a1 != 0x636E656772656D65 || a2 != 0xE900000000000079)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return "emergency_search";
      }

      else
      {
        return "";
      }
    }
  }

  return result;
}

const char *specialized FeatureFlag.domainLocaleFeature(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x223DDF6D0](95, 0xE100000000000000);
  MEMORY[0x223DDF6D0](v4, v5);

  v6 = a1 == 0x7A5F7374726F7073 && a2 == 0xEC0000004E435F68;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "sports_zh_CN";
  }

  else if (a1 == 0xD000000000000011 && 0x80000002234DBC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "edutainment_zh_CN";
  }

  else if (a1 == 0x687A5F636973756DLL && a2 == 0xEB000000004E435FLL)
  {

    return "music_zh_CN";
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return "music_zh_CN";
    }

    else
    {
      return "";
    }
  }
}

const char *specialized FeatureFlag.disableDeviceFeature(_:)()
{
  v0 = String.lowercased()();
  if (v0._countAndFlagsBits == 808596834 && v0._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "disable_b520";
  }

  else if (v0._countAndFlagsBits == 0x706130323562 && v0._object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "disable_b520ap";
  }

  else if (v0._countAndFlagsBits == 808597090 && v0._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "disable_b620";
  }

  else if (v0._countAndFlagsBits == 0x706130323662 && v0._object == 0xE600000000000000)
  {

    return "disable_b620ap";
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      return "disable_b620ap";
    }

    else
    {
      return "";
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch11FeatureFlagO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for FeatureFlag(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void *PommesSearchRequestProcessor.__allocating_init(remoteClient:localClients:pegasusCacheManager:domainWarmup:pommesSearchRequest:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v41 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v39);
  v40 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v14 - 8);
  v38 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v16);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v20 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = v20;
  v19[6] = v21;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  outlined init with copy of PommesSearchRequest(a5, v19 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v22 = a1;
  v23 = v36;
  v19[2] = a1;
  v19[3] = v23;
  v19[4] = a3;
  v19[5] = a4;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_muxContextManager) = a6;
  outlined init with copy of PommesSearchRequest(a5, v18, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v18;
  v25 = v18[1];
  v44 = a5;
  v37 = v22;
  v35[1] = a4;
  v35[2] = a6;
  v35[0] = a3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      v28 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v29 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v30 = v18 + *(v27 + 64);
    }

    else
    {

      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      v28 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v29 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v30 = v18 + v32;
    }

    outlined destroy of MediaUserStateCenter?(v30, v28, v29);
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    outlined destroy of PommesSearchRequest(v18 + v31, type metadata accessor for NLXResultCandidate);
  }

  type metadata accessor for OS_dispatch_queue();
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v45 = 0xD000000000000021;
  v46 = 0x80000002234DA3B0;
  MEMORY[0x223DDF6D0](v26, v25);

  static DispatchQoS.userInitiated.getter();
  v45 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v42 + 104))(v41, *MEMORY[0x277D85260], v43);
  v33 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  outlined destroy of PommesSearchRequest(v44, type metadata accessor for PommesSearchRequest);
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue) = v33;
  return v19;
}

uint64_t key path setter for PommesSearchRequestProcessor.pommesSearchRequest : PommesSearchRequestProcessor(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesSearchRequest(a1, v6, type metadata accessor for PommesSearchRequest);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  outlined assign with take of PommesSearchRequest(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t PommesSearchRequestProcessor.pommesSearchRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  return outlined init with copy of PommesSearchRequest(v1 + v3, a1, type metadata accessor for PommesSearchRequest);
}

void *PommesSearchRequestProcessor.init(remoteClient:localClients:pegasusCacheManager:domainWarmup:pommesSearchRequest:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v14 - 8);
  v40 = v14;
  MEMORY[0x28223BE20](v14);
  v38 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v36);
  v37 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v17 - 8);
  v35[3] = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v19);
  v21 = (v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AnalyticsComponentIdGenerator();
  v22 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = v22;
  v7[6] = v23;
  *(v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  outlined init with copy of PommesSearchRequest(a5, v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  *(v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_muxContextManager) = a6;
  outlined init with copy of PommesSearchRequest(a5, v21, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v21;
  v25 = v21[1];
  v41 = a5;
  v35[1] = a4;
  v35[2] = a6;
  v35[0] = a3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      v28 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v29 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v30 = v21 + *(v27 + 64);
    }

    else
    {

      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      v28 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v29 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v30 = v21 + v32;
    }

    outlined destroy of MediaUserStateCenter?(v30, v28, v29);
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    outlined destroy of PommesSearchRequest(v21 + v31, type metadata accessor for NLXResultCandidate);
  }

  type metadata accessor for OS_dispatch_queue();
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v42 = 0xD000000000000021;
  v43 = 0x80000002234DA3B0;
  MEMORY[0x223DDF6D0](v26, v25);

  static DispatchQoS.userInitiated.getter();
  v42 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v38, *MEMORY[0x277D85260], v40);
  v33 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  outlined destroy of PommesSearchRequest(v41, type metadata accessor for PommesSearchRequest);
  *(v7 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue) = v33;
  return v7;
}

uint64_t PommesSearchRequestProcessor.search(completion:)(uint64_t a1, uint64_t a2)
{
  closure #1 in PommesSearchRequestProcessor.search(completion:)();
  v5 = *(*v2 + 216);
  v7 = v6 & 1;

  return v5(v7, a1, a2);
}

void closure #1 in PommesSearchRequestProcessor.search(completion:)()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 languageCode];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v42 = v2;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v44[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, v44);
      _os_log_impl(&dword_2232BB000, v6, v7, "Checking if %s is enabled for POMMES", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x223DE0F80](v9, -1, -1);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v45 = &type metadata for FeatureFlag;
    v10 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
    v46 = v10;
    v11 = swift_allocObject();
    v44[0] = v11;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 3;
    v12 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v44);
    v13 = [objc_opt_self() isSiriPommesEnabledForLanguage_];

    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    v14 = MEMORY[0x223DDF550](0x536C65646F4D5748, 0xEA00000000007274);
    v15 = MGGetStringAnswer();

    if (v15)
    {

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v45 = &type metadata for FeatureFlag;
      v46 = v10;
      v19 = swift_allocObject();
      v44[0] = v19;
      *(v19 + 16) = v16;
      *(v19 + 24) = v18;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;

      v43 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v44);
      if ((v12 & 1) == 0)
      {
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = v13;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_2232BB000, v20, v21, "Siri is disabled for POMMES", v23, 2u);
          v24 = v23;
          v13 = v22;
          MEMORY[0x223DE0F80](v24, -1, -1);
        }
      }

      if (v13)
      {
      }

      else
      {

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v44[0] = v32;
          *v31 = 136315138;
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v4, v44);

          *(v31 + 4) = v33;
          _os_log_impl(&dword_2232BB000, v29, v30, "%s is disabled for POMMES", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x223DE0F80](v32, -1, -1);
          MEMORY[0x223DE0F80](v31, -1, -1);
        }

        else
        {
        }
      }

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v44[0] = v37;
        *v36 = 136315394;
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v44);

        *(v36 + 4) = v38;
        *(v36 + 12) = 2080;
        if (v43)
        {
          v39 = 7562585;
        }

        else
        {
          v39 = 28494;
        }

        if (v43)
        {
          v40 = 0xE300000000000000;
        }

        else
        {
          v40 = 0xE200000000000000;
        }

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v44);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_2232BB000, v34, v35, "Checking if device(%s) is disabled for POMMES, disabled: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v37, -1, -1);
        MEMORY[0x223DE0F80](v36, -1, -1);
      }

      else
      {
      }
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

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "No languageCode available", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }
  }
}

void CurrentDevice.codename.getter()
{
  v0 = MEMORY[0x223DDF550](0x536C65646F4D5748, 0xEA00000000007274);
  v1 = MGGetStringAnswer();

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t PommesSearchRequestProcessor.search(enabled:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = partial apply for closure #1 in PommesSearchRequestProcessor.search(enabled:completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

void closure #1 in PommesSearchRequestProcessor.search(enabled:completion:)(char a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  if (a1)
  {
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
      _os_log_impl(&dword_2232BB000, v8, v9, "POMMES is enabled", v10, 2u);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v12 = *(*a2 + 224);

    v12(partial apply for closure #1 in closure #1 in PommesSearchRequestProcessor.search(enabled:completion:), v11);
  }

  else
  {
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
      _os_log_impl(&dword_2232BB000, v14, v15, "POMMES is disabled", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }

    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v17 = swift_allocError();
    *v18 = -127;
    a3(v17, 1);
  }
}

uint64_t PommesSearchRequestProcessor.search_sync(completion:)(void (*a1)(void *, void), uint64_t a2)
{
  v3 = v2;
  v121 = a1;
  v122 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  MEMORY[0x28223BE20](v4);
  v123 = &v100 - v5;
  v6 = type metadata accessor for DispatchTimeInterval();
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x28223BE20](v6);
  v114 = (&v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v115 = *(v8 - 8);
  v116 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v111 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v100 - v11;
  v12 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SignpostToken(0);
  v108 = *(v15 - 8);
  v16 = v108[8];
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v106 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v100 - v18;
  v20 = type metadata accessor for PerformanceUtil.Ticket(0);
  v105 = *(v20 - 1);
  v21 = *(v105 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v110 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v109 = &v100 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v104 = &v100 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v100 - v27;
  v107 = dispatch_semaphore_create(0);
  v125 = dispatch_semaphore_create(0);
  v126 = swift_allocBox();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v32 = *(*(v31 - 8) + 56);
  v113 = v30;
  v32(v30, 1, 1, v31);
  v33 = swift_allocObject();
  v128 = v33;
  *(v33 + 16) = 0;
  v100 = (v33 + 16);
  Date.init()();
  v34 = &v28[v20[5]];
  *v34 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v34 + 1) = 56;
  v34[16] = 2;
  *&v28[v20[6]] = 108;
  v35 = &v28[v20[7]];
  *v35 = "search_sync(completion:)";
  *(v35 + 1) = 24;
  v35[16] = 2;
  v36 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000034, 0x80000002234DBCE0);
  v37 = &v28[v20[8]];
  *v37 = v36;
  v37[1] = v38;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v39, static Signposter.pommes);
  v40 = OSSignposter.begin(name:context:)("search.remote", 13, 2u, v3, v19);
  v101 = v3[2];
  v41 = (*v3 + 152);
  v102 = *v41;
  v103 = v41;
  (v102)(v40);
  v42 = swift_allocObject();
  v124 = v14;
  v127 = v3;
  v43 = v42;
  swift_weakInit();
  v119 = v28;
  v44 = v104;
  outlined init with copy of PommesSearchRequest(v28, v104, type metadata accessor for PerformanceUtil.Ticket);
  v120 = v19;
  v45 = v106;
  outlined init with copy of PommesSearchRequest(v19, v106, type metadata accessor for SignpostToken);
  v46 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v47 = (v21 + *(v108 + 80) + v46) & ~*(v108 + 80);
  v48 = (v16 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v44, v50 + v46, type metadata accessor for PerformanceUtil.Ticket);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v45, v50 + v47, type metadata accessor for SignpostToken);
  v51 = v101;
  v52 = v107;
  *(v50 + v48) = v107;
  *(v50 + v49) = v43;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v126;
  v53 = *(*v51 + 568);
  v108 = v52;

  v54 = v124;
  v53(v124, partial apply for closure #1 in PommesSearchRequestProcessor.search_sync(completion:), v50);

  v107 = type metadata accessor for PommesSearchRequest;
  outlined destroy of PommesSearchRequest(v54, type metadata accessor for PommesSearchRequest);

  v55 = v109;
  Date.init()();
  v56 = &v55[v20[5]];
  *v56 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v56 + 1) = 56;
  v56[16] = 2;
  *&v55[v20[6]] = 123;
  v57 = &v55[v20[7]];
  *v57 = "search_sync(completion:)";
  *(v57 + 1) = 24;
  v57[16] = 2;
  v58 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000016, 0x80000002234DBD80);
  v59 = &v55[v20[8]];
  *v59 = v58;
  v59[1] = v60;
  v61 = v110;
  Date.init()();
  v62 = &v61[v20[5]];
  *v62 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v62 + 1) = 56;
  v62[16] = 2;
  *&v61[v20[6]] = 124;
  v63 = &v61[v20[7]];
  *v63 = "search_sync(completion:)";
  *(v63 + 1) = 24;
  v63[16] = 2;
  v64 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000024, 0x80000002234DBDA0);
  v65 = &v61[v20[8]];
  *v65 = v64;
  v65[1] = v66;
  v67 = v127;
  v68 = v127[4];
  v102();
  v69 = v67[5];
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = swift_allocObject();
  v72 = v125;
  v71[2] = v125;
  v71[3] = v70;
  v71[4] = v128;
  v73 = *(*v68 + 200);
  v125 = v72;

  v74 = v124;
  v73(v124, v69, partial apply for closure #2 in PommesSearchRequestProcessor.search_sync(completion:), v71);

  outlined destroy of PommesSearchRequest(v74, v107);

  v75 = v111;
  static DispatchTime.now()();
  v76 = v114;
  *v114 = 200;
  v78 = v117;
  v77 = v118;
  (*(v117 + 104))(v76, *MEMORY[0x277D85178], v118);
  v79 = v112;
  DispatchTime.advanced(by:)();
  (*(v78 + 8))(v76, v77);
  v80 = v116;
  v81 = *(v115 + 8);
  v81(v75, v116);
  MEMORY[0x223DDFC40](v79);
  v81(v79, v80);
  v82 = v61;
  v83 = v55;
  v84 = v126;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v85 = *(*static PerformanceUtil.shared + 184);
  v85(v82, 1);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (v86 = v100, swift_beginAccess(), (v87 = *v86) != 0))
  {
    v88 = v87;
    v121(v87, 0);
    v89 = v108;
    OS_dispatch_semaphore.wait()();
    v85(v83, 1);
    v90 = v113;
    swift_beginAccess();
    v91 = v90;
    v92 = v123;
    outlined init with copy of MediaUserStateCenter?(v91, v123, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);

    v93 = v127;

    specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(v92, v93, v93, v84);
  }

  else
  {
    v94 = v108;
    OS_dispatch_semaphore.wait()();
    v85(v83, 1);
    v95 = v113;
    swift_beginAccess();
    v96 = v95;
    v92 = v123;
    outlined init with copy of MediaUserStateCenter?(v96, v123, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);

    v97 = v127;

    v98 = v122;

    specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(v92, v97, v121, v98, v97, v84);
  }

  outlined destroy of MediaUserStateCenter?(v92, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  outlined destroy of PommesSearchRequest(v82, type metadata accessor for PerformanceUtil.Ticket);
  outlined destroy of PommesSearchRequest(v83, type metadata accessor for PerformanceUtil.Ticket);
  outlined destroy of PommesSearchRequest(v120, type metadata accessor for SignpostToken);
  outlined destroy of PommesSearchRequest(v119, type metadata accessor for PerformanceUtil.Ticket);
}

Swift::Int closure #1 in PommesSearchRequestProcessor.search_sync(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16[-v10];
  v12 = swift_projectBox();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    outlined init with copy of MediaUserStateCenter?(a1, v11, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v11, v12, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(a2, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v14, static Signposter.pommes);
  OSSignposter.end(token:message:)(a3, 0, 0xE000000000000000);
  return OS_dispatch_semaphore.signal()();
}

Swift::Int closure #2 in PommesSearchRequestProcessor.search_sync(completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a1;
    v7 = a1;
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v39) = a2;
  v37 = a1;
  v38 = type metadata accessor for DispatchTimeInterval();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PegasusSearchResponse(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for PommesSearchRequest(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  (*(*a3 + 152))();
  v21 = *&v19[*(v17 + 60)];

  outlined destroy of PommesSearchRequest(v19, type metadata accessor for PommesSearchRequest);
  if (v21)
  {
    v22 = *(v21 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
    v35 = *(v21 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  }

  else
  {
    v35 = 0;
    v22 = 0;
  }

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v20, v15, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  outlined init with copy of MediaUserStateCenter?(v15, v13, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
  {
    v24 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v25 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_8:
    outlined destroy of MediaUserStateCenter?(v13, v24, v25);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v25 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_8;
  }

  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v13, v9, type metadata accessor for PegasusSearchResponse);
  if ((v39 & 1) == 0)
  {
    v26 = *(a3 + 32);
    v39 = *(v7 + 20);
    *v6 = 5;
    v27 = v36;
    v28 = v38;
    (*(v36 + 104))(v6, *MEMORY[0x277D85188], v38);
    v34 = *(*v26 + 208);
    v29 = v37;
    v30 = v37;
    v34(v35, v22, &v9[v39], v30, v6, closure #1 in PommesSearchRequestProcessor.handleResponseCaching(siriRequestId:searchResult:pommesResult:), 0);
    outlined consume of Result<PommesResponse, Error>(v29);
    (*(v27 + 8))(v6, v28);
  }

  outlined destroy of PommesSearchRequest(v9, type metadata accessor for PegasusSearchResponse);
LABEL_12:

  v31 = outlined destroy of MediaUserStateCenter?(v15, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  return (*(**(a3 + 40) + 200))(v31);
}

uint64_t closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(void *a1, int a2, uint64_t (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = type metadata accessor for DispatchTimeInterval();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for PegasusSearchResponse(0);
  MEMORY[0x28223BE20](v42);
  v47 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v41 - v16;
  v18 = type metadata accessor for PommesSearchRequest(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_projectBox();
  LODWORD(v48) = a2;
  v45 = a1;
  v23 = a3(a1, a2 & 1);
  (*(*a5 + 152))(v23);
  v24 = *&v21[*(v19 + 60)];

  outlined destroy of PommesSearchRequest(v21, type metadata accessor for PommesSearchRequest);
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v26 = *(v24 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v22, v17, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  outlined init with copy of MediaUserStateCenter?(v17, v15, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  if ((*(*(v27 - 8) + 48))(v15, 1, v27) == 1)
  {
    v28 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v29 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_8:
    outlined destroy of MediaUserStateCenter?(v15, v28, v29);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v29 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_8;
  }

  v30 = v47;
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v15, v47, type metadata accessor for PegasusSearchResponse);
  if ((v48 & 1) == 0)
  {
    v31 = *(a5 + 32);
    v32 = v43;
    v48 = *(v42 + 20);
    *v43 = 5;
    v33 = v44;
    v34 = v25;
    v35 = v46;
    (*(v44 + 104))(v32, *MEMORY[0x277D85188], v46);
    v36 = *(*v31 + 208);
    v41[1] = *v31 + 208;
    v42 = v36;
    v37 = v45;
    v38 = v45;
    (v42)(v34, v26, v30 + v48, v38, v32, closure #1 in PommesSearchRequestProcessor.handleResponseCaching(siriRequestId:searchResult:pommesResult:), 0);
    outlined consume of Result<PommesResponse, Error>(v37);
    (*(v33 + 8))(v32, v35);
  }

  outlined destroy of PommesSearchRequest(v30, type metadata accessor for PegasusSearchResponse);
LABEL_12:

  v39 = outlined destroy of MediaUserStateCenter?(v17, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  return (*(**(a5 + 40) + 200))(v39);
}

void closure #1 in PommesSearchRequestProcessor.handleResponseCaching(siriRequestId:searchResult:pommesResult:)(char a1, int a2)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    if (a1)
    {
      v8 = 0x6465726F7473;
    }

    else
    {
      v8 = 0x726F747320746F6ELL;
    }

    if (a1)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xEA00000000006465;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a2;
    _os_log_impl(&dword_2232BB000, oslog, v5, "PommesSearchRequestProcessor : POMMES response caching complete : %s : %d expired", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223DE0F80](v7, -1, -1);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }
}

uint64_t PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v47 - v3);
  v48 = type metadata accessor for PommesSearchRequest(0);
  v4 = MEMORY[0x28223BE20](v48);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v15, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search.client", 13, 2u, 0, v14);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v16 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  if (v16 == 0x616964656DLL && v18 == 0xE500000000000000)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_22:
      v37 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }
  }

  v21 = v51[3];
  if (!*(v21 + 16))
  {
    goto LABEL_22;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

  outlined init with copy of AppDataProviding(*(v21 + 56) + 40 * v22, &v53);
  outlined init with take of DomainWarmupHandling(&v53, v56);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  outlined init with copy of AppDataProviding(v56, &v53);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v47 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136315138;
    v30 = v54;
    v31 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v32 = (*(v31 + 8))(v30, v31);
    if (v32)
    {
      v33 = 0x636973756DLL;
    }

    else
    {
      v33 = 1701736302;
    }

    if (v32)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v53);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v52);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_2232BB000, v25, v26, "PommesSearchRequestProcessor#clientSearch searching local %s domain", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  else
  {

    v36 = __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  v38 = v51[6];
  v39 = *(*v51 + 152);
  v39(v36);
  v40 = &v7[*(v48 + 32)];
  v41 = v40[1];
  v48 = *v40;

  v42 = outlined destroy of PommesSearchRequest(v7, type metadata accessor for PommesSearchRequest);
  v43 = v49;
  v39(v42);
  v44 = v50;
  PommesSearchRequest.pommesCandidateId.getter(v50);
  outlined destroy of PommesSearchRequest(v43, type metadata accessor for PommesSearchRequest);
  v45 = type metadata accessor for PommesCandidateId();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  (*(*v38 + 128))(v48, v41, v44, 1);

  outlined destroy of MediaUserStateCenter?(v44, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v37 = PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(v47, v56);
  __swift_destroy_boxed_opaque_existential_1(v56);
LABEL_25:
  OSSignposter.end(token:message:)(v14, 0, 0xE000000000000000);
  outlined destroy of PommesSearchRequest(v14, type metadata accessor for SignpostToken);
  return v37;
}

uint64_t PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(uint64_t a1, void *a2)
{
  v63 = a2;
  v67 = a1;
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PommesCandidateId();
  v69 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v64 = v9;
  v65 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (v59 - v10);
  v12 = type metadata accessor for PommesSearchRequest(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v68 = v16;
  *(v16 + 16) = MEMORY[0x277D84F90];
  v66 = v16 + 16;
  v17 = *(*v2 + 152);
  v18 = *v2 + 152;
  v17();
  v19 = &v15[*(v13 + 40)];
  v20 = *v19;
  v61 = *(v19 + 1);
  v62 = v20;

  v21 = outlined destroy of PommesSearchRequest(v15, type metadata accessor for PommesSearchRequest);
  v59[1] = v18;
  v60 = v17;
  (v17)(v21);
  PommesSearchRequest.pommesCandidateId.getter(v11);
  outlined destroy of PommesSearchRequest(v15, type metadata accessor for PommesSearchRequest);
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v71 = v2;
  type metadata accessor for PommesSearchRequestProcessor(0);

  v22 = String.init<A>(describing:)();
  v24 = v23;

  v71 = v22;
  v72 = v24;
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DBF00);
  v25 = v71;
  v26 = v72;
  Date.init()();
  v27 = &v6[v4[7]];
  *v27 = "SiriInformationSearch/PommesSearchRequestProcessor.swift";
  *(v27 + 1) = 56;
  v27[16] = 2;
  *&v6[v4[8]] = 244;
  v28 = &v6[v4[9]];
  *v28 = "clientSearchForMusic(_:musicDomainClient:)";
  *(v28 + 1) = 42;
  v28[16] = 2;
  v29 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v25, v26);
  v31 = v30;

  v32 = v4[10];
  v70 = v6;
  v33 = &v6[v32];
  *v33 = v29;
  v33[1] = v31;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.pommes);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v71 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x223DDF850](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v41 = v11;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v71);

    *(v37 + 4) = v42;
    v11 = v41;
    _os_log_impl(&dword_2232BB000, v35, v36, "PommesSearchRequestProcessor#clientSearchForMusic calling musicDomainClient.search sharedUserIds: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x223DE0F80](v38, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  v59[0] = v11;
  v43 = v63[3];
  v44 = v63[4];
  v63 = __swift_project_boxed_opaque_existential_1(v63, v43);
  v60();
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v69;
  v47 = v65;
  (*(v69 + 16))(v65, v11, v7);
  v48 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v49 = (v64 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v61;
  v52 = v62;
  *(v50 + 2) = v45;
  *(v50 + 3) = v52;
  *(v50 + 4) = v51;
  (*(v46 + 32))(&v50[v48], v47, v7);
  v53 = v68;
  *&v50[v49] = v68;
  v65 = v7;
  v54 = *(v44 + 24);

  v54(v15, v67, 0, MEMORY[0x277D84F90], partial apply for closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:), v50, v43, v44);

  outlined destroy of PommesSearchRequest(v15, type metadata accessor for PommesSearchRequest);

  swift_beginAccess();
  v55 = *(v53 + 16);
  v56 = one-time initialization token for shared;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = v70;
  (*(*static PerformanceUtil.shared + 184))(v70, 1);
  outlined destroy of PommesSearchRequest(v57, type metadata accessor for PerformanceUtil.Ticket);
  (*(v46 + 8))(v59[0], v65);

  return v55;
}

void closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35[-1] - v14;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = *(Strong + 48);

      v18 = type metadata accessor for PommesCandidateId();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v15, a6, v18);
      (*(v19 + 56))(v15, 0, 1, v18);
      (*(*v17 + 144))(a4, a5, v15, 1);

      outlined destroy of MediaUserStateCenter?(v15, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.pommes);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35[0] = v25;
      *v24 = 136315138;
      v35[3] = a1;
      v26 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2232BB000, v22, v23, "PommesSearchRequestProcessor#clientSearchForMusic local client search failed : %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223DE0F80](v25, -1, -1);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      v31 = *(v30 + 48);

      v32 = type metadata accessor for PommesCandidateId();
      v33 = *(v32 - 8);
      (*(v33 + 16))(v15, a6, v32);
      (*(v33 + 56))(v15, 0, 1, v32);
      (*(*v31 + 136))(a4, a5, v15);

      outlined destroy of MediaUserStateCenter?(v15, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    swift_beginAccess();
    *(a7 + 16) = a1;
  }
}

uint64_t closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = type metadata accessor for ClientExperienceSignals();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a3, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v15 = (*(v11 + 8))(a2, v10, v12, v11);
  result = outlined destroy of MediaUserStateCenter?(v10, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a4 = v15;
  return result;
}

void closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, int64_t a4, char *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v134 = a8;
  v144 = a7;
  v140 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v135 = &v131 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v145 = &v131 - v17;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v142 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v141 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for PommesSearchReason();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v148 = (&v131 - v21);
  v153 = type metadata accessor for PommesSearchRequest(0);
  v22 = MEMORY[0x28223BE20](v153);
  v133 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v132 = &v131 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v139 = &v131 - v27;
  MEMORY[0x28223BE20](v26);
  v152 = &v131 - v28;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v30 = *(v29 - 8);
  v164 = v29;
  v165 = v30;
  MEMORY[0x28223BE20](v29);
  v163 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v146 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v147 = &v131 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v131 - v38;

  PommesResponse.Builder.experiences.setter();

  PommesResponse.Builder.clientResults.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
  PommesResponse.Builder.conversationContext.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v40 = *(v33 + 8);
  v40(v39, v32);
  PommesResponse.Builder.metadataDomainName.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.isFallbackTriggered.getter();
  v149 = v39;
  v157 = v33 + 8;
  v158 = v32;
  v156 = v40;
  v40(v39, v32);
  PommesResponse.Builder.metadataFallbackTriggered.setter();
  if (a2 >> 62)
  {
    goto LABEL_95;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v154 = a5;
    v155 = a4;
    v159 = a1;
    v162 = a2;
    if (!i)
    {
      break;
    }

    a5 = 0;
    a1 = a2 & 0xC000000000000001;
    a2 &= 0xFFFFFFFFFFFFFF8uLL;
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a1)
      {
        v43 = MEMORY[0x223DDFF80](a5, v162);
      }

      else
      {
        if (a5 >= *(a2 + 16))
        {
          goto LABEL_82;
        }

        v43 = *(v162 + 8 * a5 + 32);
      }

      v44 = v43;
      v45 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      v46 = dispatch thunk of Experience.renderedTexts.getter();

      v47 = *(v46 + 16);
      v48 = *(v42 + 2);
      a4 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_83;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && a4 <= *(v42 + 3) >> 1)
      {
        if (*(v46 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v48 <= a4)
        {
          v50 = v48 + v47;
        }

        else
        {
          v50 = v48;
        }

        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v50, 1, v42);
        if (*(v46 + 16))
        {
LABEL_20:
          if ((*(v42 + 3) >> 1) - *(v42 + 2) < v47)
          {
            goto LABEL_91;
          }

          swift_arrayInitWithCopy();

          if (v47)
          {
            v51 = *(v42 + 2);
            v52 = __OFADD__(v51, v47);
            v53 = v51 + v47;
            if (v52)
            {
              goto LABEL_93;
            }

            *(v42 + 2) = v53;
          }

          goto LABEL_6;
        }
      }

      if (v47)
      {
        goto LABEL_84;
      }

LABEL_6:
      ++a5;
      if (v45 == i)
      {
        PommesResponse.Builder.renderedTexts.setter();
        v54 = 0;
        a5 = MEMORY[0x277D84F90];
        while (1)
        {
          if (a1)
          {
            v55 = MEMORY[0x223DDFF80](v54, v162);
          }

          else
          {
            if (v54 >= *(a2 + 16))
            {
              goto LABEL_88;
            }

            v55 = *(v162 + 8 * v54 + 32);
          }

          v56 = v55;
          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_87;
          }

          v58 = dispatch thunk of Experience.redactedRenderedTexts.getter();

          v59 = *(v58 + 16);
          v60 = *(a5 + 2);
          a4 = v60 + v59;
          if (__OFADD__(v60, v59))
          {
            goto LABEL_89;
          }

          v61 = swift_isUniquelyReferenced_nonNull_native();
          if (v61 && a4 <= *(a5 + 3) >> 1)
          {
            if (!*(v58 + 16))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v60 <= a4)
            {
              v62 = v60 + v59;
            }

            else
            {
              v62 = v60;
            }

            a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61, v62, 1, a5);
            if (!*(v58 + 16))
            {
LABEL_26:

              if (v59)
              {
                goto LABEL_90;
              }

              goto LABEL_27;
            }
          }

          if ((*(a5 + 3) >> 1) - *(a5 + 2) < v59)
          {
            goto LABEL_92;
          }

          swift_arrayInitWithCopy();

          if (v59)
          {
            v63 = *(a5 + 2);
            v52 = __OFADD__(v63, v59);
            v64 = v63 + v59;
            if (v52)
            {
              goto LABEL_94;
            }

            *(a5 + 2) = v64;
          }

LABEL_27:
          ++v54;
          if (v57 == i)
          {
            goto LABEL_47;
          }
        }
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    ;
  }

  PommesResponse.Builder.renderedTexts.setter();
LABEL_47:
  PommesResponse.Builder.redactedRenderedTexts.setter();
  v65 = v149;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v66 = v163;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v156(v65, v158);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
  v67 = v164;
  v68 = v165 + 8;
  v69 = *(v165 + 1);
  v69(v66, v164);
  PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v156(v65, v158);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
  v160 = v69;
  v161 = v68;
  v69(v66, v67);
  PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
  if (i)
  {
    v70 = v154;
    if ((v162 & 0xC000000000000001) != 0)
    {
      v71 = MEMORY[0x223DDFF80](0);
    }

    else
    {
      if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_98;
      }

      v71 = *(v162 + 32);
    }

    v72 = v71;
    dispatch thunk of Experience.listenAfterSpeaking.getter();
  }

  else
  {
    v70 = v154;
  }

  v73 = MEMORY[0x277D84F90];
  v74 = PommesResponse.Builder.listenAfterSpeaking.setter();
  v75 = *(*v70 + 152);
  v76 = *v70 + 152;
  v77 = v152;
  v75(v74);

  a5 = type metadata accessor for PommesSearchRequest;
  outlined destroy of PommesSearchRequest(v77, type metadata accessor for PommesSearchRequest);
  v78 = PommesResponse.Builder.requestId.setter();
  v150 = v76;
  v151 = v75;
  v75(v78);
  v79 = v148;
  PommesSearchRequest.pommesCandidateId.getter(v148);
  outlined destroy of PommesSearchRequest(v77, type metadata accessor for PommesSearchRequest);
  v80 = type metadata accessor for PommesCandidateId();
  (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
  PommesResponse.Builder.pommesCandidateId.setter();
  PommesResponse.Builder.isHandledByPreflight.setter();
  PommesResponse.Builder.preflightClientHandlerIdentifier.setter();
  v81 = v147;
  a1 = v155;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v82 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v156(v81, v158);
  v83 = *(v82 + 16);
  if (v83)
  {
    v166 = v73;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
    a2 = 0;
    a4 = v166;
    v162 = v82 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
    while (a2 < *(v82 + 16))
    {
      a1 = v83;
      v84 = v164;
      v85 = v163;
      (*(v165 + 2))(v163, v162 + *(v165 + 9) * a2, v164);
      v86 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
      v88 = v87;
      v160(v85, v84);
      v166 = a4;
      a5 = *(a4 + 16);
      v89 = *(a4 + 24);
      if (a5 >= v89 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), (a5 + 1), 1);
        a4 = v166;
      }

      ++a2;
      *(a4 + 16) = a5 + 1;
      v90 = a4 + 16 * a5;
      *(v90 + 32) = v86;
      *(v90 + 40) = v88;
      v83 = a1;
      if (a1 == a2)
      {

        v70 = v154;
        a1 = v155;
        v73 = MEMORY[0x277D84F90];
        goto LABEL_61;
      }
    }

    goto LABEL_85;
  }

LABEL_61:
  PommesResponse.Builder.taskStepLogs.setter();
  v91 = v146;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v92 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v156(v91, v158);
  v93 = *(v92 + 16);
  if (v93)
  {
    v166 = v73;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
    a2 = 0;
    a4 = v166;
    v162 = v92 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
    while (a2 < *(v92 + 16))
    {
      a1 = v93;
      v94 = v164;
      v95 = v163;
      (*(v165 + 2))(v163, v162 + *(v165 + 9) * a2, v164);
      v96 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
      v98 = v97;
      v160(v95, v94);
      v166 = a4;
      a5 = *(a4 + 16);
      v99 = *(a4 + 24);
      if (a5 >= v99 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), (a5 + 1), 1);
        a4 = v166;
      }

      ++a2;
      *(a4 + 16) = a5 + 1;
      v100 = a4 + 16 * a5;
      *(v100 + 32) = v96;
      *(v100 + 40) = v98;
      v93 = a1;
      if (a1 == a2)
      {

        v70 = v154;
        goto LABEL_69;
      }
    }

    goto LABEL_86;
  }

LABEL_69:
  PommesResponse.Builder.userSensitiveTier1Logs.setter();

  v101 = PommesResponse.Builder.componentsWarmedUp.setter();
  v103 = v151;
  v102 = v152;
  v151(v101);
  v104 = v153;
  v105 = *(v102 + *(v153 + 80));
  v165 = type metadata accessor for PommesSearchRequest;
  outlined destroy of PommesSearchRequest(v102, type metadata accessor for PommesSearchRequest);
  v106 = MEMORY[0x277D56668];
  if (!v105)
  {
    v106 = MEMORY[0x277D56670];
  }

  (*(v137 + 104))(v136, *v106, v138);
  v107 = PommesResponse.Builder.searchReason.setter();
  v103(v107);

  outlined destroy of PommesSearchRequest(v102, type metadata accessor for PommesSearchRequest);
  PommesResponse.Builder.searchRequestUtterance.setter();
  v108 = v141;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
  (*(v142 + 8))(v108, Context);
  PommesResponse.Builder.requestCountryCode.setter();
  closure #3 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)();
  PommesResponse.Builder.requestLocation.setter();
  v109 = PommesResponse.Builder.isCachedResponse.setter();
  v103(v109);

  v110 = v165;
  outlined destroy of PommesSearchRequest(v102, v165);
  v111 = PommesResponse.Builder.sharedUserId.setter();
  v112 = v139;
  v103(v111);
  v113 = *(v112 + *(v104 + 72));
  v114 = v113;
  outlined destroy of PommesSearchRequest(v112, v110);
  if (v113)
  {
    v115 = [v114 recognition];

    v116 = v145;
    if (v115)
    {
      v117 = [v115 aceRecognition];

      goto LABEL_75;
    }

LABEL_98:
    __break(1u);
  }

  else
  {
    v116 = v145;
LABEL_75:
    PommesResponse.Builder.asrRecognition.setter();
    closure #4 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v70);
    v118 = PommesResponse.Builder.encodedNLUserParses.setter();
    v119 = v132;
    v151(v118);
    PommesSearchRequest.fallbackParse.getter(v116);
    outlined destroy of PommesSearchRequest(v119, type metadata accessor for PommesSearchRequest);
    v120 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v121 = *(v120 - 8);
    if ((*(v121 + 48))(v116, 1, v120) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v116, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }

    else
    {
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Siri_Nlu_External_DelegatedUserDialogAct and conformance Siri_Nlu_External_DelegatedUserDialogAct, MEMORY[0x277D5DD80], MEMORY[0x277D5DD78]);
      Message.serializedData(partial:)();
      (*(v121 + 8))(v116, v120);
    }

    v122 = PommesResponse.Builder.encodedNLFallbackParse.setter();
    v123 = v151;
    v124 = v152;
    v151(v122);
    PommesSearchRequest.responseVariantResult.getter();
    outlined destroy of PommesSearchRequest(v124, type metadata accessor for PommesSearchRequest);
    PommesResponse.Builder.responseVariantResult.setter();
    PommesResponse.Builder.isLowConfidenceKnowledgeResult.setter();

    v125 = PommesResponse.Builder.albusMultiturnRewrite.setter();
    v123(v125);
    v126 = v153;
    outlined init with copy of MediaUserStateCenter?(v124 + *(v153 + 40), v135, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of PommesSearchRequest(v124, type metadata accessor for PommesSearchRequest);
    PommesResponse.Builder.previousPommesContext.setter();
    v127 = v149;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
    v156(v127, v158);
    PommesResponse.Builder.domainUseCases.setter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isQueryDirectQuestion.getter();
    Direct = PommesResponse.Builder.isQueryDirectQuestion.setter();
    v129 = v133;
    v123(Direct);
    v130 = *(v129 + *(v126 + 52));

    outlined destroy of PommesSearchRequest(v129, type metadata accessor for PommesSearchRequest);
    if (v130)
    {
    }

    PommesResponse.Builder.isRelatedQuestion.setter();
  }
}

id closure #3 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v5 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  v8 = Apple_Parsec_Search_PegasusQueryContext.hasLocation.getter();
  v9 = *(v5 + 8);
  v9(v7, Context);
  result = 0;
  if (v8)
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
    Apple_Parsec_Search_PegasusQueryContext.location.getter();
    v11 = (v9)(v7, Context);
    v12 = MEMORY[0x223DDA150](v11);
    Apple_Parsec_Search_V2_Location.longitude.getter();
    v14 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v12 longitude:v13];
    (*(v1 + 8))(v3, v0);
    return v14;
  }

  return result;
}

uint64_t closure #4 in closure #6 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v9 = JSONEncoder.init()();
  (*(*a1 + 152))();
  v10 = PommesSearchRequest.userParses.getter();
  outlined destroy of PommesSearchRequest(v8, type metadata accessor for PommesSearchRequest);
  v11 = *(v10 + 16);
  if (v11)
  {
    v27[1] = v10;
    v27[2] = v9;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v28 = *(v12 + 56);
    v29 = v13;
    v15 = (v12 - 8);
    v16 = MEMORY[0x277D84F90];
    v27[3] = v12;
    v13(v5, v14, v2);
    while (1)
    {
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
      v17 = Message.serializedData(partial:)();
      v19 = v18;
      (*v15)(v5, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = v16;
      v21 = *(v16 + 2);
      v22 = v20;
      v23 = *(v20 + 3);
      if (v21 >= v23 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v21 + 1, 1, v22);
      }

      *(v22 + 2) = v21 + 1;
      v24 = &v22[16 * v21];
      v16 = v22;
      *(v24 + 4) = v17;
      *(v24 + 5) = v19;
      v14 += v28;
      if (!--v11)
      {
        break;
      }

      v29(v5, v14, v2);
    }

    if (!*(v16 + 2))
    {
      goto LABEL_14;
    }

LABEL_13:
    v30 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [Data] and conformance <A> [A]();
    v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();

    return v25;
  }

  v16 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_13;
  }

LABEL_14:

  return 0;
}

uint64_t closure #1 in PommesSearchRequestProcessor.handleFailure(with:completion:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  MEMORY[0x28223BE20](v0);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, MEMORY[0x277D38D90], MEMORY[0x277D38D88]);
  static Message.with(_:)();
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.setter();
}

uint64_t PommesSearchRequestProcessor.deinit()
{

  outlined destroy of PommesSearchRequest(v0 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);

  return v0;
}

uint64_t PommesSearchRequestProcessor.__deallocating_deinit()
{
  PommesSearchRequestProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t CurrentDevice.supportsGenerativeModelSystems.getter()
{
  v0 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DBDD0);
  v1 = MGGetBoolAnswer();

  return v1;
}

uint64_t outlined init with copy of PommesSearchRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Int partial apply for closure #1 in PommesSearchRequestProcessor.search_sync(completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SignpostToken(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8);
  v11 = *(v1 + v9);
  v12 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in PommesSearchRequestProcessor.search_sync(completion:)(a1, v1 + v4, v1 + v7, v10, v11, v12);
}

void specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(NSObject *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v313 = a3;
  v306 = a1;
  v311 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v322 = *(v311 - 8);
  v12 = MEMORY[0x28223BE20](v311);
  v275 = &v273 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v325 = &v273 - v14;
  v326 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v317 = *(v326 - 1);
  v15 = MEMORY[0x28223BE20](v326);
  v274 = &v273 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v323 = &v273 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v314 = &v273 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v324 = (&v273 - v22);
  MEMORY[0x28223BE20](v21);
  v277 = &v273 - v23;
  v320 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v276 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v319 = (&v273 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v315 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v321 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v312 = (&v273 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v303 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v302 = *(v303 - 8);
  v26 = MEMORY[0x28223BE20](v303);
  v279 = &v273 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v301 = &v273 - v28;
  v288 = type metadata accessor for Date();
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v286 = &v273 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = type metadata accessor for ClientExperienceSignals();
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v307 = &v273 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for PommesSearchRequest(0);
  v31 = MEMORY[0x28223BE20](v280);
  v278 = &v273 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v285 = &v273 - v33;
  v304 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v299 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v296 = (&v273 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v298 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  isa = v298[-1].isa;
  MEMORY[0x28223BE20](v298);
  v295 = &v273 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v300 = &v273 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v293 = &v273 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v282 = &v273 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v281 = &v273 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v273 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v273 - v49;
  v51 = swift_allocObject();
  v289 = a4;
  v51[2] = a4;
  v51[3] = a5;
  v51[4] = a6;
  v51[5] = a7;
  v294 = v51;
  v332[3] = &type metadata for CallBusinessNoResultsExperiencesResolver;
  v332[4] = &protocol witness table for CallBusinessNoResultsExperiencesResolver;
  v332[0] = a2;
  v52 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v310 = v37;
  v55 = *(v37 + 16);
  v53 = v37 + 16;
  v54 = v55;
  (v55)(v50, v306 + v52, v36);
  v56 = one-time initialization token for pommes;
  v290 = a5;

  v291 = a6;

  v292 = a7;

  if (v56 != -1)
  {
LABEL_49:
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = __swift_project_value_buffer(v57, static Logger.pommes);
  v316 = v50;
  v309 = v53;
  (v54)(v48, v50, v36);
  v318 = v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v61 = os_log_type_enabled(v59, v60);
  v308 = v54;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v329[0] = v63;
    *v62 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    v64 = Message.textFormatString()();
    v305 = *(v310 + 8);
    v305(v48, v36);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64._countAndFlagsBits, v64._object, v329);

    *(v62 + 4) = v65;
    _os_log_impl(&dword_2232BB000, v59, v60, "PireneResponse: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x223DE0F80](v63, -1, -1);
    MEMORY[0x223DE0F80](v62, -1, -1);
  }

  else
  {

    v305 = *(v310 + 8);
    v305(v48, v36);
  }

  v66 = v304;
  v67 = v299;
  v68 = v298;
  v69 = isa;
  v70 = v296;
  v71 = v295;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v72 = (*(v69 + 1))(v71, v68);
  v73 = MEMORY[0x223DDBA80](v72);
  (*(v67 + 8))(v70, v66);
  v74 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v304 = v36;
  if (v74)
  {
    v75 = *(v73 + 16);
    v76 = v307;
    if (v75)
    {
      *&v329[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75, 0);
      v48 = *&v329[0];
      v77 = *(v322 + 16);
      v78 = (*(v322 + 80) + 32) & ~*(v322 + 80);
      v302 = v73;
      v79 = v73 + v78;
      v80 = *(v322 + 72);
      v322 += 16;
      v319 = (v322 - 8);
      v315 = v317 + 32;
      v300 = (v73 + v78);
      v301 = v75;
      v81 = v75;
      v53 = v311;
      v50 = v277;
      v321 = v77;
      v320 = v80;
      do
      {
        v82 = v325;
        v83 = (v77)(v325, v79, v53);
        MEMORY[0x223DDBB90](v83);
        v84 = *v319;
        (*v319)(v82, v53);
        *&v329[0] = v48;
        v86 = *(v48 + 16);
        v85 = *(v48 + 24);
        if (v86 >= v85 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
          v48 = *&v329[0];
        }

        *(v48 + 16) = v86 + 1;
        v87 = (v48 + ((*(v317 + 80) + 32) & ~*(v317 + 80)));
        v88 = *(v317 + 72);
        (*(v317 + 32))(v87 + v88 * v86, v50, v326);
        v79 += v320;
        --v81;
        v77 = v321;
      }

      while (v81);
      v308 = v87;
      v309 = v86 + 1;
      v315 = v48;
      v312 = v84;
      v36 = v313;
      v307 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v90 = 0;
      v325 = v317 + 16;
      v91 = (v317 + 8);
      *&v92 = 134218240;
      v303 = v92;
      v54 = v326;
      v93 = v314;
      v94 = v324;
      while (v90 != v309)
      {
        if (v90 >= *(v315 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v317 = v90;
        v97 = *v325;
        (*v325)(v94, v308 + v90 * v88, v54);
        v98 = *&v307[v36];
        if (*(v98 + 16))
        {
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);

          v99 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v100 = -1 << *(v98 + 32);
          v101 = v99 & ~v100;
          if ((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
          {
            v102 = ~v100;
            v103 = v323;
            do
            {
              v104 = v326;
              v97(v103, *(v98 + 48) + v101 * v88, v326);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
              v48 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v91)(v103, v104);
              if (v48)
              {
                break;
              }

              v101 = (v101 + 1) & v102;
              v103 = v323;
            }

            while (((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) != 0);
          }

          else
          {
            v48 = 0;
          }

          v93 = v314;
          v94 = v324;
        }

        else
        {
          v48 = 0;
        }

        v54 = v326;
        v97(v93, v94, v326);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = v303;
          v306 = v105;
          v108 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v95 = *v91;
          (*v91)(v93, v54);
          *(v107 + 4) = v108;
          v105 = v306;
          *(v107 + 12) = 1024;
          *(v107 + 14) = v48 & 1;
          _os_log_impl(&dword_2232BB000, v105, v106, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v107, 0x12u);
          MEMORY[0x223DE0F80](v107, -1, -1);
        }

        else
        {
          v95 = *v91;
          (*v91)(v93, v54);
        }

        v36 = v313;
        v96 = v317 + 1;

        v94 = v324;
        v95(v324, v54);
        v90 = v96;
        v50 = v316;
        v53 = v311;
        v93 = v314;
        if (v48)
        {

          v158 = Logger.logObject.getter();
          v159 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v158, v159))
          {
            v160 = swift_slowAlloc();
            *v160 = 0;
            _os_log_impl(&dword_2232BB000, v158, v159, "Already attempted profile slice resolution; yielding error response", v160, 2u);
            MEMORY[0x223DE0F80](v160, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v161 = swift_allocError();
          *v162 = 69;
          closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v161, 1, v289, v290, v291, v292);

          v156 = v304;
          goto LABEL_88;
        }
      }

      v326 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      v140 = v275;
      v141 = v274;
      v142 = v323;
      v143 = v301;
      v144 = v36;
      v145 = v300;
      do
      {
        v146 = (v321)(v140, v145, v53);
        MEMORY[0x223DDBB90](v146);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v142, v141);
        (*v91)(v142, v54);
        swift_endAccess();
        v312(v140, v53);
        v145 += v320;
        --v143;
      }

      while (v143);
      v147 = v144;
      v148 = v302;

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v327 = v152;
        *v151 = 136315138;
        v153 = MEMORY[0x223DDF850](v148, v53);
        v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v327);

        *(v151 + 4) = v155;
        _os_log_impl(&dword_2232BB000, v149, v150, "Adding profile slice resolution requests: %s", v151, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v152);
        MEMORY[0x223DE0F80](v152, -1, -1);
        MEMORY[0x223DE0F80](v151, -1, -1);
      }

      v156 = v304;
      v50 = v316;
      v157 = v147 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      *(v157 + *(v280 + 92)) = v148;

      (*(*v147 + 224))(closure #4 in PommesSearchRequestProcessor.search_sync(completion:)partial apply, v294);
      goto LABEL_88;
    }
  }

  else
  {

    v76 = v307;
  }

  v109 = v313;
  v110 = v313[5];
  v111 = *(*v313 + 152);
  v112 = *v313 + 152;
  v113 = v285;
  (v111)(v89);
  v114 = v316;
  v322 = (*(*v110 + 168))(v113, v316);
  v115 = outlined destroy of PommesSearchRequest(v113, type metadata accessor for PommesSearchRequest);
  v116 = v109[2];
  v325 = v112;
  v326 = v111;
  (v111)(v115);
  (*(*v116 + 712))(v113);
  v117 = outlined destroy of PommesSearchRequest(v113, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v117 = swift_once();
  }

  v118 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v117);
  v269 = v332;
  v270 = v114;
  v271 = v76;
  v119 = v286;
  Date.init()();
  v120 = *(*v118 + 200);
  v271 = v268;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v269) = 2;
  v120(v329, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v119, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v269, closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)partial apply);
  (*(v287 + 8))(v119, v288);
  v121 = *&v329[0];
  v122 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v114);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();
  v125 = os_log_type_enabled(v123, v124);
  v317 = v122;
  if (v125)
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v329[0] = v127;
    *v126 = 136315138;
    v128 = type metadata accessor for PommesResult();
    v129 = MEMORY[0x223DDF870](v122, v128);
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v329);

    *(v126 + 4) = v131;
    _os_log_impl(&dword_2232BB000, v123, v124, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x223DE0F80](v127, -1, -1);
    MEMORY[0x223DE0F80](v126, -1, -1);
  }

  if (!(v121 >> 62))
  {
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_51:
    v135 = 0xE700000000000000;
    v133 = 0x6E776F6E6B6E55;
    v139 = 0;
    goto LABEL_52;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_51;
  }

LABEL_35:
  if ((v121 & 0xC000000000000001) != 0)
  {
    v266 = MEMORY[0x223DDFF80](0, v121);
    v133 = dispatch thunk of Experience.pluginIdentifier.getter();
    v135 = v267;

    v136 = MEMORY[0x223DDFF80](0, v121);
    goto LABEL_39;
  }

  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v132 = v121[4];
    v133 = dispatch thunk of Experience.pluginIdentifier.getter();
    v135 = v134;

    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v136 = v121[4];
LABEL_39:
      v137 = v136;
      dispatch thunk of Experience.queryConfidence.getter();
      v139 = v138;

LABEL_52:

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *&v329[0] = v166;
        *v165 = 136315394;
        v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v135, v329);

        *(v165 + 4) = v167;
        *(v165 + 12) = 2048;
        *(v165 + 14) = v139;
        _os_log_impl(&dword_2232BB000, v163, v164, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v165, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v166);
        MEMORY[0x223DE0F80](v166, -1, -1);
        MEMORY[0x223DE0F80](v165, -1, -1);
      }

      else
      {
      }

      v168 = v304;
      v169 = v308;
      v170 = v281;
      (v308)(v281, v316, v304);
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 67109120;
        v174 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v305(v170, v168);
        *(v173 + 4) = v174;
        _os_log_impl(&dword_2232BB000, v171, v172, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v173, 8u);
        MEMORY[0x223DE0F80](v173, -1, -1);
      }

      else
      {
        v305(v170, v168);
      }

      v314 = v121;

      v175 = v316;
      v331 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v176 = v301;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v299 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v311 = v177;
      v179 = v302 + 2;
      v178 = *(v302 + 1);
      v180 = v303;
      (v178)(v176, v303);
      v181 = v282;
      (v169)(v282, v175, v168);
      v182 = Logger.logObject.getter();
      v183 = static os_log_type_t.debug.getter();
      v184 = os_log_type_enabled(v182, v183);
      v323 = v178;
      if (v184)
      {
        v185 = swift_slowAlloc();
        v302 = v185;
        v324 = swift_slowAlloc();
        *&v329[0] = v324;
        *v185 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v186 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v187 = v168;
        v189 = v188;
        v190 = v180;
        v191 = v179;
        (v178)(v176, v190);
        v305(v181, v187);
        v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v189, v329);

        v193 = v302;
        *(v302 + 1) = v192;
        v194 = v193;
        _os_log_impl(&dword_2232BB000, v182, v183, "got albusMultiturnRewrite as: %s", v193, 0xCu);
        v195 = v324;
        __swift_destroy_boxed_opaque_existential_1(v324);
        v169 = v308;
        MEMORY[0x223DE0F80](v195, -1, -1);
        MEMORY[0x223DE0F80](v194, -1, -1);
      }

      else
      {
        v191 = v179;

        v305(v181, v168);
      }

      v196 = v300;

      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v329[0] = v200;
        *v199 = 136315138;
        v201 = v278;
        v326();
        v202 = *(v201 + *(v280 + 52));

        outlined destroy of PommesSearchRequest(v201, type metadata accessor for PommesSearchRequest);
        if (v202)
        {
          v203 = *(v202 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v203 = 2;
        }

        v204 = v191;
        LOBYTE(v327) = v203;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v205 = String.init<A>(describing:)();
        v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v206, v329);

        *(v199 + 4) = v207;
        _os_log_impl(&dword_2232BB000, v197, v198, "got isRelatedQuestion as: %s", v199, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v200);
        MEMORY[0x223DE0F80](v200, -1, -1);
        MEMORY[0x223DE0F80](v199, -1, -1);

        v169 = v308;
      }

      else
      {

        v204 = v191;
      }

      v208 = v293;
      v209 = v323;
      v156 = v304;
      (v169)(v293, v316, v304);
      v210 = Logger.logObject.getter();
      v211 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v210, v211))
      {
        LODWORD(isa) = v211;
        v298 = v210;
        v212 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        v327 = v296;
        *v212 = 136315138;
        v213 = v279;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v214 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v215 = v213;
        v216 = v214;
        v209(v215, v303);
        v217 = *(v216 + 16);
        if (v217)
        {
          v295 = v212;
          v302 = v204;
          v328 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v217, 0);
          v218 = v328;
          v326 = *(v321 + 2);
          v219 = (v321[80] + 32) & ~v321[80];
          v288 = v216;
          v220 = v216 + v219;
          v325 = *(v321 + 9);
          v324 = (v276 + 8);
          v321 += 16;
          v221 = (v321 - 8);
          do
          {
            v222 = v312;
            v223 = v315;
            (v326)(v312, v220, v315);
            *&v329[0] = 0;
            *(&v329[0] + 1) = 0xE000000000000000;
            v224 = v319;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v225 = v320;
            _print_unlocked<A, B>(_:_:)();
            (*v324)(v224, v225);
            v226 = v329[0];
            (*v221)(v222, v223);
            v328 = v218;
            v228 = *(v218 + 16);
            v227 = *(v218 + 24);
            if (v228 >= v227 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v227 > 1), v228 + 1, 1);
              v218 = v328;
            }

            *(v218 + 16) = v228 + 1;
            *(v218 + 16 * v228 + 32) = v226;
            v220 += v325;
            --v217;
          }

          while (v217);

          v156 = v304;
          v208 = v293;
          v209 = v323;
          v212 = v295;
        }

        else
        {

          v218 = MEMORY[0x277D84F90];
        }

        v229 = MEMORY[0x223DDF850](v218, MEMORY[0x277D837D0]);
        v231 = v230;

        v305(v208, v156);
        v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, &v327);

        *(v212 + 4) = v232;
        v233 = v298;
        _os_log_impl(&dword_2232BB000, v298, isa, "got usecases as: %s", v212, 0xCu);
        v234 = v296;
        __swift_destroy_boxed_opaque_existential_1(v296);
        MEMORY[0x223DE0F80](v234, -1, -1);
        MEMORY[0x223DE0F80](v212, -1, -1);

        v196 = v300;
        v169 = v308;
      }

      else
      {

        v305(v208, v156);
      }

      (v169)(v196, v316, v156);
      v235 = Logger.logObject.getter();
      v236 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        *&v329[0] = v238;
        *v237 = 136315138;
        v239 = v209;
        v240 = v301;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v241 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v243 = v242;
        v239(v240, v303);
        v305(v196, v304);
        v244 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v243, v329);
        v156 = v304;

        *(v237 + 4) = v244;
        _os_log_impl(&dword_2232BB000, v235, v236, "got domain as: %s", v237, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v238);
        MEMORY[0x223DE0F80](v238, -1, -1);
        MEMORY[0x223DE0F80](v237, -1, -1);
      }

      else
      {

        v305(v196, v156);
      }

      v245 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v245);
      v246 = v317;
      *(&v273 - 10) = v314;
      *(&v273 - 9) = v246;
      v50 = v316;
      v247 = v313;
      *(&v273 - 8) = v316;
      *(&v273 - 7) = v247;
      v268[0] = v322;
      v268[1] = v306;
      v269 = &v331;
      v270 = v299;
      v271 = v311;
      v248 = PommesResponse.__allocating_init(_:)();

      if (v248)
      {
        v249 = v248;
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          *&v329[0] = v253;
          *v252 = 136315138;
          v254 = [v249 debugDescription];
          v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v257 = v256;

          v258 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v257, v329);
          v50 = v316;

          *(v252 + 4) = v258;
          _os_log_impl(&dword_2232BB000, v250, v251, "PommesSearchRequestProcessor#handleSuccess response: %s", v252, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v253);
          v259 = v253;
          v156 = v304;
          MEMORY[0x223DE0F80](v259, -1, -1);
          MEMORY[0x223DE0F80](v252, -1, -1);
        }

        v330 = 0;
        memset(v329, 0, sizeof(v329));
        static CurareDonation.donateCurareInfo(for:with:into:)(v50, v249, v329);
        outlined destroy of MediaUserStateCenter?(v329, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v260 = v249;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v248, 0, v289, v290, v291, v292);
      }

      else
      {
        v261 = Logger.logObject.getter();
        v262 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v261, v262))
        {
          v263 = swift_slowAlloc();
          *v263 = 0;
          _os_log_impl(&dword_2232BB000, v261, v262, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v263, 2u);
          MEMORY[0x223DE0F80](v263, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v264 = swift_allocError();
        *v265 = 0x80;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v264, 1, v289, v290, v291, v292);
      }

      (*(v283 + 8))(v307, v284);
LABEL_88:
      v305(v50, v156);
      __swift_destroy_boxed_opaque_existential_1(v332);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(unsigned __int8 a1, void *a2, uint64_t (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v93 = a6;
  v94 = a5;
  v95 = a4;
  v91 = a2;
  v92 = a3;
  v87 = type metadata accessor for PegasusSearchResponse(0);
  MEMORY[0x28223BE20](v87);
  v89 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v85 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v81 - v13;
  v14 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = type metadata accessor for PommesSearchRequest(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - v30;
  if (a1 <= 5u)
  {
    if (a1 <= 2u)
    {
      v32 = v92;
      if (a1)
      {
        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v34 = swift_allocError();
        if (a1 == 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = -126;
        }

        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v32 = v92;
    if (a1 - 4 < 2)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v34 = swift_allocError();
      v35 = 68;
      goto LABEL_12;
    }

LABEL_11:
    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v34 = swift_allocError();
    v35 = 67;
    goto LABEL_12;
  }

  if (a1 > 8u)
  {
    if (a1 == 9)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v34 = swift_allocError();
      v43 = 3;
      goto LABEL_20;
    }

    if (a1 == 10)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v34 = swift_allocError();
      v43 = 4;
LABEL_20:
      *v42 = v43;
      v36 = v95;

      v37 = v94;

      v38 = v93;

      v39 = v34;
      v40 = v92;
      goto LABEL_13;
    }

    v82 = v9;
    v44 = (*v91 + 152);
    v45 = *v44;
    v81 = v19;
    v46 = v44;

    v83 = v46;
    v84 = v45;
    (v45)(v47);
    LOBYTE(v45) = v31[*(v23 + 80)];
    v48 = outlined destroy of PommesSearchRequest(v31, type metadata accessor for PommesSearchRequest);
    if ((v45 & 1) == 0)
    {
      goto LABEL_38;
    }

    v49 = v84;
    (v84)(v48);
    outlined init with copy of MediaUserStateCenter?(&v29[*(v23 + 40)], v22, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of PommesSearchRequest(v29, type metadata accessor for PommesSearchRequest);
    v50 = type metadata accessor for PommesContext();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v22, 1, v50) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v22, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
LABEL_38:
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v68 = swift_allocError();
      *v69 = -127;
      closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v68, 1, v92, v95, v94, v93);

LABEL_39:
    }

    v52 = PommesContext.domain.getter();
    v54 = v53;
    (*(v51 + 8))(v22, v50);
    if (!v54)
    {
      goto LABEL_38;
    }

    if (v52 == 0x656E6F6870 && v54 == 0xE500000000000000)
    {
    }

    else
    {
      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v55 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.pommes);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2232BB000, v57, v58, "Handling no results from fallback request for phone domain as successful", v59, 2u);
      MEMORY[0x223DE0F80](v59, -1, -1);
    }

    v49();
    v60 = v81;
    outlined init with copy of PommesSearchRequest(v26, v81, type metadata accessor for PommesSearchRequest.ParseState);
    outlined destroy of PommesSearchRequest(v26, type metadata accessor for PommesSearchRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
        v63 = v86;
        outlined init with take of TCUMappedNLResponse?(v60 + *(v62 + 64), v86);
        v64 = v85;
        outlined init with copy of MediaUserStateCenter?(v63, v85, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v65 = type metadata accessor for TCUMappedNLResponse();
        v66 = *(v65 - 8);
        if ((*(v66 + 48))(v64, 1, v65) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v64, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          v67 = MEMORY[0x277D84F90];
        }

        else
        {
          v76 = TCUMappedNLResponse.nlResponse.getter();
          (*(v66 + 8))(v64, v65);
          v67 = NLParseResponse.userParses.getter();
        }

        v75 = v88;
        v74 = v89;
        outlined destroy of MediaUserStateCenter?(v63, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v72 = v92;
        v73 = v90;
        goto LABEL_45;
      }

      v67 = *(v60 + 16);
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      outlined destroy of MediaUserStateCenter?(v60 + v71, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }

    else
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v60 + *(v70 + 48), v16, type metadata accessor for NLXResultCandidate);
      v67 = *v16;

      outlined destroy of PommesSearchRequest(v16, type metadata accessor for NLXResultCandidate);
    }

    v72 = v92;
    v74 = v89;
    v73 = v90;
    v75 = v88;
LABEL_45:
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    v77 = v82;
    static Message.with(_:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.init()();
    (*(v75 + 16))(v74 + *(v87 + 20), v77, v73);
    v78 = v95;

    v79 = v94;

    v80 = v93;

    specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v74, v67, v91, v72, v78, v79, v80);

    outlined destroy of PommesSearchRequest(v74, type metadata accessor for PegasusSearchResponse);
    (*(v75 + 8))(v77, v73);
    goto LABEL_39;
  }

  v32 = v92;
  if (a1 - 7 < 2)
  {
    goto LABEL_11;
  }

  lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
  v34 = swift_allocError();
  v35 = 69;
LABEL_12:
  *v33 = v35;
  v36 = v95;

  v37 = v94;

  v38 = v93;

  v39 = v34;
  v40 = v32;
LABEL_13:
  closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v39, 1, v40, v36, v37, v38);
}

void specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(NSObject *a1, uint64_t a2, char *a3, uint64_t (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v311 = a3;
  v304 = a1;
  v309 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v320 = *(v309 - 8);
  v12 = MEMORY[0x28223BE20](v309);
  v274 = &v273 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v323 = &v273 - v14;
  v324 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v315 = *(v324 - 1);
  v15 = MEMORY[0x28223BE20](v324);
  v273 = &v273 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v321 = &v273 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v312 = &v273 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v322 = (&v273 - v22);
  MEMORY[0x28223BE20](v21);
  v276 = &v273 - v23;
  v318 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v275 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v317 = (&v273 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v313 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v319 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v310 = (&v273 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v301 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v300 = *(v301 - 8);
  v26 = MEMORY[0x28223BE20](v301);
  v278 = &v273 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v299 = &v273 - v28;
  v287 = type metadata accessor for Date();
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v285 = &v273 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for ClientExperienceSignals();
  v282 = *(v283 - 8);
  MEMORY[0x28223BE20](v283);
  v305 = &v273 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = type metadata accessor for PommesSearchRequest(0);
  v31 = MEMORY[0x28223BE20](v279);
  v277 = &v273 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v284 = &v273 - v33;
  v302 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v297 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v296 = (&v273 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v295 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v294 = (&v273 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v298 = &v273 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v292 = &v273 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v281 = &v273 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v280 = &v273 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v273 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v273 - v50;
  v52 = swift_allocObject();
  v288 = a4;
  v52[2] = a4;
  v52[3] = a5;
  v52[4] = a6;
  v52[5] = a7;
  v293 = v52;
  v330[3] = &type metadata for DefaultExperiencesResolver;
  v330[4] = &protocol witness table for DefaultExperiencesResolver;
  v330[0] = swift_allocObject();
  outlined init with copy of DefaultExperiencesResolver(a2, v330[0] + 16);
  v53 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v308 = v38;
  v56 = *(v38 + 16);
  v55 = v38 + 16;
  v54 = v56;
  (v56)(v51, v304 + v53, v37);
  v57 = one-time initialization token for pommes;
  v289 = a5;

  v290 = a6;

  v291 = a7;

  if (v57 != -1)
  {
LABEL_49:
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v58, static Logger.pommes);
  v314 = v51;
  v307 = v55;
  (v54)(v49, v51, v37);
  v316 = v59;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v37;
  v306 = v54;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v327[0] = v65;
    *v64 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    v66 = Message.textFormatString()();
    v303 = *(v308 + 8);
    v303(v49, v63);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66._countAndFlagsBits, v66._object, v327);

    *(v64 + 4) = v67;
    _os_log_impl(&dword_2232BB000, v60, v61, "PireneResponse: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x223DE0F80](v65, -1, -1);
    MEMORY[0x223DE0F80](v64, -1, -1);
  }

  else
  {

    v303 = *(v308 + 8);
    v303(v49, v37);
  }

  v68 = v302;
  v69 = v297;
  v70 = v296;
  v71 = v295;
  v72 = v294;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v73 = (*(v71 + 8))(v72, v35);
  v74 = MEMORY[0x223DDBA80](v73);
  (*(v69 + 8))(v70, v68);
  v75 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v302 = v63;
  if (v75)
  {
    v76 = *(v74 + 16);
    v77 = v305;
    if (v76)
    {
      *&v327[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
      v35 = *&v327[0];
      v78 = *(v320 + 16);
      v79 = (*(v320 + 80) + 32) & ~*(v320 + 80);
      v300 = v74;
      v80 = v74 + v79;
      v81 = *(v320 + 72);
      v320 += 16;
      v317 = (v320 - 8);
      v313 = v315 + 32;
      v298 = (v74 + v79);
      v299 = v76;
      v82 = v76;
      v55 = v309;
      v51 = v276;
      v319 = v78;
      v318 = v81;
      do
      {
        v83 = v323;
        v84 = (v78)(v323, v80, v55);
        MEMORY[0x223DDBB90](v84);
        v85 = *v317;
        (*v317)(v83, v55);
        *&v327[0] = v35;
        v87 = *(v35 + 16);
        v86 = *(v35 + 24);
        v88 = v87 + 1;
        if (v87 >= v86 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
          v35 = *&v327[0];
        }

        *(v35 + 16) = v88;
        v89 = (v35 + ((*(v315 + 80) + 32) & ~*(v315 + 80)));
        v90 = *(v315 + 72);
        (*(v315 + 32))(&v89[v90 * v87], v51, v324);
        v54 = v318;
        v80 += v318;
        --v82;
        v78 = v319;
      }

      while (v82);
      v306 = v89;
      v307 = v88;
      v313 = v35;
      v310 = v85;
      v49 = v311;
      v305 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v92 = 0;
      v323 = v315 + 16;
      v93 = (v315 + 8);
      *&v94 = 134218240;
      v301 = v94;
      v37 = v324;
      v95 = v312;
      v96 = v322;
      while (v92 != v307)
      {
        if (v92 >= *(v313 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v315 = v92;
        v54 = *v323;
        (*v323)(v96, &v306[v92 * v90], v37);
        v99 = *&v305[v49];
        if (*(v99 + 16))
        {
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);

          v100 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v101 = -1 << *(v99 + 32);
          v102 = v100 & ~v101;
          if ((*(v99 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
          {
            v103 = ~v101;
            v104 = v321;
            do
            {
              v105 = v324;
              (v54)(v104, *(v99 + 48) + v102 * v90, v324);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
              v35 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v93)(v104, v105);
              if (v35)
              {
                break;
              }

              v102 = (v102 + 1) & v103;
              v104 = v321;
            }

            while (((*(v99 + 56 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) != 0);
          }

          else
          {
            v35 = 0;
          }

          v95 = v312;
          v96 = v322;
        }

        else
        {
          v35 = 0;
        }

        v37 = v324;
        (v54)(v95, v96, v324);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v54 = swift_slowAlloc();
          *v54 = v301;
          v304 = v106;
          v108 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v97 = *v93;
          (*v93)(v95, v37);
          *(v54 + 4) = v108;
          v106 = v304;
          *(v54 + 6) = 1024;
          *(v54 + 14) = v35 & 1;
          _os_log_impl(&dword_2232BB000, v106, v107, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v54, 0x12u);
          MEMORY[0x223DE0F80](v54, -1, -1);
        }

        else
        {
          v97 = *v93;
          (*v93)(v95, v37);
        }

        v49 = v311;
        v98 = v315 + 1;

        v96 = v322;
        v97(v322, v37);
        v92 = v98;
        v51 = v314;
        v55 = v309;
        v95 = v312;
        if (v35)
        {

          v158 = Logger.logObject.getter();
          v159 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v158, v159))
          {
            v160 = swift_slowAlloc();
            *v160 = 0;
            _os_log_impl(&dword_2232BB000, v158, v159, "Already attempted profile slice resolution; yielding error response", v160, 2u);
            MEMORY[0x223DE0F80](v160, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v161 = swift_allocError();
          *v162 = 69;
          closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v161, 1, v288, v289, v290, v291);

          v156 = v302;
          goto LABEL_88;
        }
      }

      v324 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      v140 = v274;
      v141 = v273;
      v142 = v321;
      v143 = v299;
      v144 = v49;
      v145 = v298;
      do
      {
        v146 = (v319)(v140, v145, v55);
        MEMORY[0x223DDBB90](v146);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v142, v141);
        (*v93)(v142, v37);
        swift_endAccess();
        v310(v140, v55);
        v145 += v318;
        --v143;
      }

      while (v143);
      v147 = v144;
      v148 = v300;

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v325 = v152;
        *v151 = 136315138;
        v153 = MEMORY[0x223DDF850](v148, v55);
        v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v325);

        *(v151 + 4) = v155;
        _os_log_impl(&dword_2232BB000, v149, v150, "Adding profile slice resolution requests: %s", v151, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v152);
        MEMORY[0x223DE0F80](v152, -1, -1);
        MEMORY[0x223DE0F80](v151, -1, -1);
      }

      v156 = v302;
      v51 = v314;
      v157 = &v147[OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest];
      swift_beginAccess();
      *&v157[*(v279 + 92)] = v148;

      (*(*v147 + 224))(partial apply for closure #4 in PommesSearchRequestProcessor.search_sync(completion:), v293);
      goto LABEL_88;
    }
  }

  else
  {

    v77 = v305;
  }

  v109 = v311;
  v110 = *(v311 + 5);
  v111 = *(*v311 + 152);
  v112 = *v311 + 152;
  v113 = v284;
  (v111)(v91);
  v114 = v314;
  v320 = (*(*v110 + 168))(v113, v314);
  v115 = outlined destroy of PommesSearchRequest(v113, type metadata accessor for PommesSearchRequest);
  v116 = *(v109 + 2);
  v323 = v112;
  v324 = v111;
  (v111)(v115);
  (*(*v116 + 712))(v113);
  v117 = outlined destroy of PommesSearchRequest(v113, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v117 = swift_once();
  }

  v118 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v117);
  v269 = v330;
  v270 = v114;
  v271 = v77;
  v119 = v285;
  Date.init()();
  v120 = *(*v118 + 200);
  v271 = v268;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v269) = 2;
  v120(v327, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v119, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v269, closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)partial apply);
  (*(v286 + 8))(v119, v287);
  v121 = *&v327[0];
  v122 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v114);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();
  v125 = os_log_type_enabled(v123, v124);
  v315 = v122;
  if (v125)
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v327[0] = v127;
    *v126 = 136315138;
    v128 = type metadata accessor for PommesResult();
    v129 = MEMORY[0x223DDF870](v122, v128);
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v327);

    *(v126 + 4) = v131;
    _os_log_impl(&dword_2232BB000, v123, v124, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x223DE0F80](v127, -1, -1);
    MEMORY[0x223DE0F80](v126, -1, -1);
  }

  if (!(v121 >> 62))
  {
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_51:
    v135 = 0xE700000000000000;
    v133 = 0x6E776F6E6B6E55;
    v139 = 0;
    goto LABEL_52;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_51;
  }

LABEL_35:
  if ((v121 & 0xC000000000000001) != 0)
  {
    v266 = MEMORY[0x223DDFF80](0, v121);
    v133 = dispatch thunk of Experience.pluginIdentifier.getter();
    v135 = v267;

    v136 = MEMORY[0x223DDFF80](0, v121);
    goto LABEL_39;
  }

  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v132 = v121[4];
    v133 = dispatch thunk of Experience.pluginIdentifier.getter();
    v135 = v134;

    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v136 = v121[4];
LABEL_39:
      v137 = v136;
      dispatch thunk of Experience.queryConfidence.getter();
      v139 = v138;

LABEL_52:

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *&v327[0] = v166;
        *v165 = 136315394;
        v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v135, v327);

        *(v165 + 4) = v167;
        *(v165 + 12) = 2048;
        *(v165 + 14) = v139;
        _os_log_impl(&dword_2232BB000, v163, v164, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v165, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v166);
        MEMORY[0x223DE0F80](v166, -1, -1);
        MEMORY[0x223DE0F80](v165, -1, -1);
      }

      else
      {
      }

      v168 = v302;
      v169 = v306;
      v170 = v280;
      (v306)(v280, v314, v302);
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 67109120;
        v174 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v303(v170, v168);
        *(v173 + 4) = v174;
        _os_log_impl(&dword_2232BB000, v171, v172, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v173, 8u);
        MEMORY[0x223DE0F80](v173, -1, -1);
      }

      else
      {
        v303(v170, v168);
      }

      v312 = v121;

      v175 = v314;
      v329 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v176 = v299;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v297 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v309 = v177;
      v179 = v300 + 2;
      v178 = *(v300 + 1);
      v180 = v301;
      (v178)(v176, v301);
      v181 = v281;
      v169(v281, v175, v168);
      v182 = Logger.logObject.getter();
      v183 = static os_log_type_t.debug.getter();
      v184 = os_log_type_enabled(v182, v183);
      v321 = v178;
      if (v184)
      {
        v185 = swift_slowAlloc();
        v300 = v185;
        v322 = swift_slowAlloc();
        *&v327[0] = v322;
        *v185 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v186 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v187 = v168;
        v189 = v188;
        v190 = v180;
        v191 = v179;
        (v178)(v176, v190);
        v303(v181, v187);
        v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v189, v327);

        v193 = v300;
        *(v300 + 1) = v192;
        v194 = v193;
        _os_log_impl(&dword_2232BB000, v182, v183, "got albusMultiturnRewrite as: %s", v193, 0xCu);
        v195 = v322;
        __swift_destroy_boxed_opaque_existential_1(v322);
        v169 = v306;
        MEMORY[0x223DE0F80](v195, -1, -1);
        MEMORY[0x223DE0F80](v194, -1, -1);
      }

      else
      {
        v191 = v179;

        v303(v181, v168);
      }

      v196 = v298;

      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v327[0] = v200;
        *v199 = 136315138;
        v201 = v277;
        v324();
        v202 = *(v201 + *(v279 + 52));

        outlined destroy of PommesSearchRequest(v201, type metadata accessor for PommesSearchRequest);
        if (v202)
        {
          v203 = *(v202 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v203 = 2;
        }

        v204 = v191;
        LOBYTE(v325) = v203;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v205 = String.init<A>(describing:)();
        v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v206, v327);

        *(v199 + 4) = v207;
        _os_log_impl(&dword_2232BB000, v197, v198, "got isRelatedQuestion as: %s", v199, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v200);
        MEMORY[0x223DE0F80](v200, -1, -1);
        MEMORY[0x223DE0F80](v199, -1, -1);

        v169 = v306;
      }

      else
      {

        v204 = v191;
      }

      v208 = v321;
      v209 = v292;
      v156 = v302;
      v169(v292, v314, v302);
      v210 = Logger.logObject.getter();
      v211 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v210, v211))
      {
        LODWORD(v295) = v211;
        v296 = v210;
        v212 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        v325 = v294;
        *v212 = 136315138;
        v213 = v278;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v214 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v215 = v213;
        v216 = v214;
        v208(v215, v301);
        v217 = *(v216 + 16);
        if (v217)
        {
          v287 = v212;
          v300 = v204;
          v326 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v217, 0);
          v218 = v326;
          v324 = *(v319 + 2);
          v219 = (v319[80] + 32) & ~v319[80];
          v286 = v216;
          v220 = v216 + v219;
          v323 = *(v319 + 9);
          v322 = (v275 + 8);
          v319 += 16;
          v221 = (v319 - 8);
          do
          {
            v222 = v310;
            v223 = v313;
            (v324)(v310, v220, v313);
            *&v327[0] = 0;
            *(&v327[0] + 1) = 0xE000000000000000;
            v224 = v317;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v225 = v318;
            _print_unlocked<A, B>(_:_:)();
            (*v322)(v224, v225);
            v226 = v327[0];
            (*v221)(v222, v223);
            v326 = v218;
            v228 = *(v218 + 16);
            v227 = *(v218 + 24);
            if (v228 >= v227 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v227 > 1), v228 + 1, 1);
              v218 = v326;
            }

            *(v218 + 16) = v228 + 1;
            *(v218 + 16 * v228 + 32) = v226;
            v220 += v323;
            --v217;
          }

          while (v217);

          v156 = v302;
          v209 = v292;
          v208 = v321;
          v212 = v287;
        }

        else
        {

          v218 = MEMORY[0x277D84F90];
        }

        v229 = MEMORY[0x223DDF850](v218, MEMORY[0x277D837D0]);
        v231 = v230;

        v303(v209, v156);
        v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, &v325);

        *(v212 + 4) = v232;
        v233 = v296;
        _os_log_impl(&dword_2232BB000, v296, v295, "got usecases as: %s", v212, 0xCu);
        v234 = v294;
        __swift_destroy_boxed_opaque_existential_1(v294);
        MEMORY[0x223DE0F80](v234, -1, -1);
        MEMORY[0x223DE0F80](v212, -1, -1);

        v196 = v298;
        v169 = v306;
      }

      else
      {

        v303(v209, v156);
      }

      v169(v196, v314, v156);
      v235 = Logger.logObject.getter();
      v236 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v235, v236))
      {
        v237 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        *&v327[0] = v238;
        *v237 = 136315138;
        v239 = v208;
        v240 = v299;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v241 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v243 = v242;
        v239(v240, v301);
        v303(v196, v302);
        v244 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v243, v327);
        v156 = v302;

        *(v237 + 4) = v244;
        _os_log_impl(&dword_2232BB000, v235, v236, "got domain as: %s", v237, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v238);
        MEMORY[0x223DE0F80](v238, -1, -1);
        MEMORY[0x223DE0F80](v237, -1, -1);
      }

      else
      {

        v303(v196, v156);
      }

      v245 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v245);
      v246 = v315;
      *(&v273 - 10) = v312;
      *(&v273 - 9) = v246;
      v51 = v314;
      v247 = v311;
      *(&v273 - 8) = v314;
      *(&v273 - 7) = v247;
      v268[0] = v320;
      v268[1] = v304;
      v269 = &v329;
      v270 = v297;
      v271 = v309;
      v248 = PommesResponse.__allocating_init(_:)();

      if (v248)
      {
        v249 = v248;
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          *&v327[0] = v253;
          *v252 = 136315138;
          v254 = [v249 debugDescription];
          v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v257 = v256;

          v258 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v257, v327);
          v51 = v314;

          *(v252 + 4) = v258;
          _os_log_impl(&dword_2232BB000, v250, v251, "PommesSearchRequestProcessor#handleSuccess response: %s", v252, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v253);
          v259 = v253;
          v156 = v302;
          MEMORY[0x223DE0F80](v259, -1, -1);
          MEMORY[0x223DE0F80](v252, -1, -1);
        }

        v328 = 0;
        memset(v327, 0, sizeof(v327));
        static CurareDonation.donateCurareInfo(for:with:into:)(v51, v249, v327);
        outlined destroy of MediaUserStateCenter?(v327, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v260 = v249;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v248, 0, v288, v289, v290, v291);
      }

      else
      {
        v261 = Logger.logObject.getter();
        v262 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v261, v262))
        {
          v263 = swift_slowAlloc();
          *v263 = 0;
          _os_log_impl(&dword_2232BB000, v261, v262, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v263, 2u);
          MEMORY[0x223DE0F80](v263, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v264 = swift_allocError();
        *v265 = 0x80;
        closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v264, 1, v288, v289, v290, v291);
      }

      (*(v282 + 8))(v305, v283);
LABEL_88:
      v303(v51, v156);
      __swift_destroy_boxed_opaque_existential_1(v330);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(uint64_t a1, char *a2, uint64_t (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a2;
  v42 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = type metadata accessor for PegasusSearchResponse(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of MediaUserStateCenter?(a1, v15, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v15, 1, v19) == 1)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v21 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v22 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v15, v18, type metadata accessor for PegasusSearchResponse);
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      memset(v45, 0, sizeof(v45));
      v46 = 0;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      outlined assign with take of MediaUserStateCenter?(v43, v45, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);

      specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v18, v45, v41, v42, a4, a5, a6);

      outlined destroy of PommesSearchRequest(v18, type metadata accessor for PegasusSearchResponse);
      outlined destroy of DefaultExperiencesResolver(v45);
LABEL_20:

      goto LABEL_21;
    }

    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v21 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v22 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
  }

  outlined destroy of MediaUserStateCenter?(v15, v21, v22);
  outlined init with copy of MediaUserStateCenter?(a1, v13, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  if (v20(v13, 1, v19) == 1)
  {
    v23 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v24 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v13, v23, v24);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.pommes);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2232BB000, v35, v36, "PireneResponse failure: none", v37, 2u);
      MEMORY[0x223DE0F80](v37, -1, -1);
    }

    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v38 = swift_allocError();
    *v39 = 0x80;
    closure #4 in PommesSearchRequestProcessor.search_sync(completion:)(v38, 1, v42, a4, a5, a6);

    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v24 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_15;
  }

  v25 = *v13;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v45[0] = v30;
    *v29 = 136315138;
    LOBYTE(v43[0]) = v25;
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v45);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_2232BB000, v27, v28, "POMMES-CURARE: {error:%s}", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x223DE0F80](v30, -1, -1);
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(v25, v41, v42, a4, a5, a6);

LABEL_21:
}

void specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v317 = a3;
  v315 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v324 = *(v315 - 8);
  v9 = MEMORY[0x28223BE20](v315);
  v279 = &v278 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v327 = &v278 - v11;
  v328 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v319 = *(v328 - 1);
  v12 = MEMORY[0x28223BE20](v328);
  v278 = &v278 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v325 = &v278 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v307 = &v278 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v326 = &v278 - v19;
  MEMORY[0x28223BE20](v18);
  v281 = &v278 - v20;
  v322 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v280 = *(v322 - 8);
  MEMORY[0x28223BE20](v322);
  v321 = (&v278 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v318 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v323 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v316 = (&v278 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v305 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v313 = *(v305 - 8);
  v23 = MEMORY[0x28223BE20](v305);
  v283 = &v278 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v304 = &v278 - v25;
  v293 = type metadata accessor for Date();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v291 = &v278 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for ClientExperienceSignals();
  v288 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v311 = &v278 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = type metadata accessor for PommesSearchRequest(0);
  v28 = MEMORY[0x28223BE20](v284);
  v282 = &v278 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v290 = &v278 - v30;
  v302 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v31 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v301 = (&v278 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v300 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v298 = (&v278 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v303 = &v278 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v296 = (&v278 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v286 = &v278 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v285 = (&v278 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = (&v278 - v45);
  MEMORY[0x28223BE20](v44);
  v48 = &v278 - v47;
  v49 = swift_allocObject();
  *(v49 + 16) = a4;
  *(v49 + 24) = a5;
  v297 = v49;
  v334[3] = &type metadata for CallBusinessNoResultsExperiencesResolver;
  v334[4] = &protocol witness table for CallBusinessNoResultsExperiencesResolver;
  v334[0] = a2;
  v50 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v314 = v35;
  v53 = *(v35 + 16);
  v52 = (v35 + 16);
  v51 = v53;
  v287 = a1;
  v53(v48, a1 + v50, v34);
  v54 = one-time initialization token for pommes;
  v294 = a4;

  v295 = a5;

  if (v54 != -1)
  {
LABEL_47:
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  v56 = __swift_project_value_buffer(v55, static Logger.pommes);
  *&v306 = v52;
  v312 = v51;
  (v51)(v46, v48, v34);
  v320 = v56;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  v59 = os_log_type_enabled(v57, v58);
  v310 = v34;
  v308 = v48;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v331[0] = v61;
    *v60 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    v62 = Message.textFormatString()();
    v309 = *(v314 + 8);
    v309(v46, v34);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62._countAndFlagsBits, v62._object, v331);

    *(v60 + 4) = v63;
    _os_log_impl(&dword_2232BB000, v57, v58, "PireneResponse: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x223DE0F80](v61, -1, -1);
    v64 = v60;
    v65 = v308;
    MEMORY[0x223DE0F80](v64, -1, -1);
  }

  else
  {
    v65 = v48;

    v309 = *(v314 + 8);
    v309(v46, v34);
  }

  v66 = v302;
  v67 = v301;
  v68 = v300;
  v69 = v299;
  v70 = v298;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v71 = (*(v69 + 8))(v70, v68);
  v72 = MEMORY[0x223DDBA80](v71);
  (*(v31 + 8))(v67, v66);
  v73 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v74 = v311;
  v75 = v315;
  if (v73)
  {
    v76 = *(v72 + 16);
    if (v76)
    {
      *&v331[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
      v77 = *&v331[0];
      v78 = *(v324 + 16);
      v79 = (*(v324 + 80) + 32) & ~*(v324 + 80);
      v305 = v72;
      v80 = v72 + v79;
      v81 = *(v324 + 72);
      v324 += 16;
      v321 = (v324 - 8);
      v318 = v319 + 32;
      v303 = (v72 + v79);
      v304 = v76;
      v82 = v76;
      v51 = v281;
      v323 = v78;
      v322 = v81;
      do
      {
        v83 = v327;
        v84 = (v78)(v327, v80, v75);
        MEMORY[0x223DDBB90](v84);
        v85 = *v321;
        (*v321)(v83, v75);
        *&v331[0] = v77;
        v87 = *(v77 + 16);
        v86 = *(v77 + 24);
        v88 = v87 + 1;
        if (v87 >= v86 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
          v77 = *&v331[0];
        }

        *(v77 + 16) = v88;
        v89 = (v77 + ((*(v319 + 80) + 32) & ~*(v319 + 80)));
        v90 = *(v319 + 72);
        (*(v319 + 32))(&v89[v90 * v87], v51, v328);
        v34 = v322;
        v80 += v322;
        --v82;
        v78 = v323;
      }

      while (v82);
      v312 = v89;
      v313 = v88;
      v318 = v77;
      v316 = v85;
      v311 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v31 = 0;
      v327 = v319 + 16;
      v48 = v319 + 8;
      *&v121 = 134218240;
      v306 = v121;
      v52 = v307;
      v122 = v326;
      while (v31 != v313)
      {
        v46 = v328;
        if (v31 >= *(v318 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v124 = *v327;
        (*v327)(v122, v312 + v31 * v90, v328);
        v125 = *&v311[v317];
        v126 = *(v125 + 16);
        v319 = v31;
        if (v126)
        {
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);

          v127 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v128 = -1 << *(v125 + 32);
          v129 = v127 & ~v128;
          if ((*(v125 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129))
          {
            v130 = ~v128;
            do
            {
              v131 = v325;
              v132 = v328;
              v124(v325, *(v125 + 48) + v129 * v90, v328);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
              v51 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v48)(v131, v132);
              if (v51)
              {
                break;
              }

              v129 = (v129 + 1) & v130;
            }

            while (((*(v125 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) != 0);
          }

          else
          {
            v51 = 0;
          }

          v46 = v328;
          v52 = v307;
          v122 = v326;
        }

        else
        {
          v51 = 0;
        }

        v124(v52, v122, v46);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.debug.getter();
        v34 = v48 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = v306;
          v136 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v123 = *v48;
          (*v48)(v52, v328);
          *(v135 + 4) = v136;
          *(v135 + 12) = 1024;
          *(v135 + 14) = v51 & 1;
          _os_log_impl(&dword_2232BB000, v133, v134, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v135, 0x12u);
          MEMORY[0x223DE0F80](v135, -1, -1);
        }

        else
        {
          v123 = *v48;
          (*v48)(v52, v328);
        }

        v75 = v315;
        v31 = v319 + 1;

        v122 = v326;
        v123(v326, v328);
        if (v51)
        {

          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.debug.getter();
          v157 = os_log_type_enabled(v155, v156);
          v153 = v308;
          if (v157)
          {
            v158 = swift_slowAlloc();
            *v158 = 0;
            _os_log_impl(&dword_2232BB000, v155, v156, "Already attempted profile slice resolution; yielding error response", v158, 2u);
            MEMORY[0x223DE0F80](v158, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v159 = swift_allocError();
          *v160 = 69;
          closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v159, 1, v294, v295);

          v152 = v310;
          goto LABEL_86;
        }
      }

      v137 = v317;
      v138 = v279;
      v139 = v278;
      v140 = v325;
      v141 = v304;
      v142 = v303;
      do
      {
        v143 = (v323)(v138, v142, v75);
        MEMORY[0x223DDBB90](v143);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v140, v139);
        (*v48)(v140, v328);
        swift_endAccess();
        v316(v138, v75);
        v142 += v322;
        --v141;
      }

      while (v141);
      v144 = v305;

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v329 = v148;
        *v147 = 136315138;
        v149 = MEMORY[0x223DDF850](v144, v75);
        v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v329);

        *(v147 + 4) = v151;
        _os_log_impl(&dword_2232BB000, v145, v146, "Adding profile slice resolution requests: %s", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v148);
        MEMORY[0x223DE0F80](v148, -1, -1);
        MEMORY[0x223DE0F80](v147, -1, -1);
      }

      v152 = v310;
      v153 = v308;
      v154 = v137 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      *&v154[*(v284 + 92)] = v144;

      (*(*v137 + 224))(closure #3 in PommesSearchRequestProcessor.search_sync(completion:)partial apply, v297);
      goto LABEL_86;
    }
  }

  v92 = v317;
  v93 = v317[5];
  v94 = *(*v317 + 152);
  v95 = *v317 + 152;
  v96 = v290;
  (v94)(v91);
  v324 = (*(*v93 + 168))(v96, v65);
  v97 = outlined destroy of PommesSearchRequest(v96, type metadata accessor for PommesSearchRequest);
  v98 = v92[2];
  v327 = v95;
  v328 = v94;
  (v94)(v97);
  (*(*v98 + 712))(v96);
  v99 = outlined destroy of PommesSearchRequest(v96, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v99 = swift_once();
  }

  v100 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v99);
  v274 = v334;
  v275 = v65;
  v276 = v74;
  v101 = v291;
  Date.init()();
  v102 = *(*v100 + 200);
  v276 = v273;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v274) = 2;
  v102(v331, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v101, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v274, closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:)partial apply);
  (*(v292 + 8))(v101, v293);
  v103 = *&v331[0];
  v104 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v308);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v331[0] = v108;
    *v107 = 136315138;
    v109 = type metadata accessor for PommesResult();
    v110 = MEMORY[0x223DDF870](v104, v109);
    v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v331);

    *(v107 + 4) = v112;
    _os_log_impl(&dword_2232BB000, v105, v106, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x223DE0F80](v108, -1, -1);
    MEMORY[0x223DE0F80](v107, -1, -1);
  }

  if (!(v103 >> 62))
  {
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_49:
    v116 = 0xE700000000000000;
    v114 = 0x6E776F6E6B6E55;
    v120 = 0;
    goto LABEL_50;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((v103 & 0xC000000000000001) != 0)
  {
    v271 = MEMORY[0x223DDFF80](0, v103);
    v114 = dispatch thunk of Experience.pluginIdentifier.getter();
    v116 = v272;

    v117 = MEMORY[0x223DDFF80](0, v103);
    goto LABEL_22;
  }

  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v113 = *(v103 + 32);
    v114 = dispatch thunk of Experience.pluginIdentifier.getter();
    v116 = v115;

    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v117 = *(v103 + 32);
LABEL_22:
      v118 = v117;
      dispatch thunk of Experience.queryConfidence.getter();
      v120 = v119;

LABEL_50:

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.debug.getter();

      v163 = os_log_type_enabled(v161, v162);
      v315 = v104;
      if (v163)
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *&v331[0] = v165;
        *v164 = 136315394;
        v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v331);

        *(v164 + 4) = v166;
        *(v164 + 12) = 2048;
        *(v164 + 14) = v120;
        _os_log_impl(&dword_2232BB000, v161, v162, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v164, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v165);
        MEMORY[0x223DE0F80](v165, -1, -1);
        MEMORY[0x223DE0F80](v164, -1, -1);
      }

      else
      {
      }

      v167 = v308;
      v168 = v286;
      v319 = v103;
      v169 = v285;
      v170 = v312;
      v312(v285, v308, v310);
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 67109120;
        v174 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v309(v169, v310);
        *(v173 + 4) = v174;
        _os_log_impl(&dword_2232BB000, v171, v172, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v173, 8u);
        v175 = v173;
        v170 = v312;
        MEMORY[0x223DE0F80](v175, -1, -1);
      }

      else
      {
        v309(v169, v310);
      }

      v176 = v305;
      v177 = v313;

      v333 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v178 = v304;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v302 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v307 = v179;
      v180 = *(v177 + 8);
      v180(v178, v176);
      v170(v168, v167, v310);
      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.debug.getter();
      v183 = os_log_type_enabled(v181, v182);
      v325 = v180;
      v313 = v177 + 8;
      if (v183)
      {
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *&v331[0] = v185;
        *v184 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v186 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v187 = v176;
        v188 = v168;
        v190 = v189;
        v180(v178, v187);
        v309(v188, v310);
        v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v190, v331);

        *(v184 + 4) = v191;
        _os_log_impl(&dword_2232BB000, v181, v182, "got albusMultiturnRewrite as: %s", v184, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v185);
        MEMORY[0x223DE0F80](v185, -1, -1);
        MEMORY[0x223DE0F80](v184, -1, -1);
      }

      else
      {

        v309(v168, v310);
      }

      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.debug.getter();

      v194 = os_log_type_enabled(v192, v193);
      v195 = v303;
      if (v194)
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        *&v331[0] = v197;
        *v196 = 136315138;
        v198 = v282;
        v328();
        v199 = *(v198 + *(v284 + 52));

        outlined destroy of PommesSearchRequest(v198, type metadata accessor for PommesSearchRequest);
        if (v199)
        {
          v200 = *(v199 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v200 = 2;
        }

        v152 = v310;
        LOBYTE(v329) = v200;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v201 = String.init<A>(describing:)();
        v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v202, v331);

        *(v196 + 4) = v203;
        _os_log_impl(&dword_2232BB000, v192, v193, "got isRelatedQuestion as: %s", v196, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v197);
        MEMORY[0x223DE0F80](v197, -1, -1);
        MEMORY[0x223DE0F80](v196, -1, -1);
      }

      else
      {

        v152 = v310;
      }

      v204 = v325;
      v205 = v296;
      v153 = v308;
      v206 = v312;
      v312(v296, v308, v152);
      v207 = Logger.logObject.getter();
      v208 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v207, v208))
      {
        LODWORD(v299) = v208;
        v301 = v207;
        v209 = swift_slowAlloc();
        v298 = swift_slowAlloc();
        v329 = v298;
        v300 = v209;
        *v209 = 136315138;
        v210 = v283;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v211 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v212 = v210;
        v213 = v211;
        v204(v212, v305);
        v214 = *(v213 + 16);
        if (v214)
        {
          v330 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v214, 0);
          v215 = v330;
          v328 = *(v323 + 2);
          v216 = (v323[80] + 32) & ~v323[80];
          v293 = v213;
          v217 = v213 + v216;
          v327 = *(v323 + 9);
          v326 = (v280 + 8);
          v323 += 16;
          v218 = (v323 - 8);
          do
          {
            v219 = v316;
            v220 = v318;
            (v328)(v316, v217, v318);
            *&v331[0] = 0;
            *(&v331[0] + 1) = 0xE000000000000000;
            v221 = v321;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v222 = v322;
            _print_unlocked<A, B>(_:_:)();
            (*v326)(v221, v222);
            v223 = v331[0];
            (*v218)(v219, v220);
            v330 = v215;
            v225 = *(v215 + 16);
            v224 = *(v215 + 24);
            if (v225 >= v224 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v224 > 1), v225 + 1, 1);
              v215 = v330;
            }

            *(v215 + 16) = v225 + 1;
            *(v215 + 16 * v225 + 32) = v223;
            v217 += v327;
            --v214;
          }

          while (v214);

          v152 = v310;
          v153 = v308;
          v206 = v312;
          v205 = v296;
        }

        else
        {

          v215 = MEMORY[0x277D84F90];
        }

        v226 = MEMORY[0x223DDF850](v215, MEMORY[0x277D837D0]);
        v228 = v227;

        v309(v205, v152);
        v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v226, v228, &v329);

        v230 = v300;
        *(v300 + 4) = v229;
        v231 = v301;
        _os_log_impl(&dword_2232BB000, v301, v299, "got usecases as: %s", v230, 0xCu);
        v232 = v298;
        __swift_destroy_boxed_opaque_existential_1(v298);
        MEMORY[0x223DE0F80](v232, -1, -1);
        MEMORY[0x223DE0F80](v230, -1, -1);

        v195 = v303;
        v204 = v325;
      }

      else
      {

        v309(v205, v152);
      }

      v206(v195, v153, v152);
      v233 = Logger.logObject.getter();
      v234 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        v236 = v204;
        v237 = swift_slowAlloc();
        *&v331[0] = v237;
        *v235 = 136315138;
        v238 = v304;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v239 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v241 = v240;
        v236(v238, v305);
        v309(v195, v152);
        v242 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v239, v241, v331);
        v153 = v308;

        *(v235 + 4) = v242;
        _os_log_impl(&dword_2232BB000, v233, v234, "got domain as: %s", v235, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v237);
        MEMORY[0x223DE0F80](v237, -1, -1);
        MEMORY[0x223DE0F80](v235, -1, -1);
      }

      else
      {

        v309(v195, v152);
      }

      v243 = v311;
      v244 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v244);
      v245 = v315;
      *(&v278 - 10) = v319;
      *(&v278 - 9) = v245;
      v246 = v317;
      *(&v278 - 8) = v153;
      *(&v278 - 7) = v246;
      v273[0] = v324;
      v273[1] = v287;
      v274 = &v333;
      v275 = v302;
      v276 = v307;
      v247 = PommesResponse.__allocating_init(_:)();

      if (v247)
      {
        v248 = v247;
        v249 = Logger.logObject.getter();
        v250 = static os_log_type_t.debug.getter();

        v251 = os_log_type_enabled(v249, v250);
        v252 = v295;
        if (v251)
        {
          v253 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          *&v331[0] = v254;
          *v253 = 136315138;
          v255 = [v248 debugDescription];
          v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v258 = v257;

          v259 = v256;
          v152 = v310;
          v260 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v259, v258, v331);

          *(v253 + 4) = v260;
          _os_log_impl(&dword_2232BB000, v249, v250, "PommesSearchRequestProcessor#handleSuccess response: %s", v253, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v254);
          v261 = v254;
          v153 = v308;
          MEMORY[0x223DE0F80](v261, -1, -1);
          v262 = v253;
          v243 = v311;
          MEMORY[0x223DE0F80](v262, -1, -1);
        }

        v332 = 0;
        memset(v331, 0, sizeof(v331));
        static CurareDonation.donateCurareInfo(for:with:into:)(v153, v248, v331);
        outlined destroy of MediaUserStateCenter?(v331, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v263 = v248;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v247, 0, v294, v252);
      }

      else
      {
        v264 = Logger.logObject.getter();
        v265 = static os_log_type_t.error.getter();
        v266 = os_log_type_enabled(v264, v265);
        v267 = v295;
        if (v266)
        {
          v268 = swift_slowAlloc();
          *v268 = 0;
          _os_log_impl(&dword_2232BB000, v264, v265, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v268, 2u);
          MEMORY[0x223DE0F80](v268, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v269 = swift_allocError();
        *v270 = 0x80;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v269, 1, v294, v267);
      }

      (*(v288 + 8))(v243, v289);
LABEL_86:
      v309(v153, v152);
      __swift_destroy_boxed_opaque_existential_1(v334);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

{
  v315 = a3;
  v313 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v322 = *(v313 - 8);
  v9 = MEMORY[0x28223BE20](v313);
  v278 = (&v276 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v325 = (&v276 - v11);
  v326 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v317 = *(v326 - 1);
  v12 = MEMORY[0x28223BE20](v326);
  v277 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v323 = &v276 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v305 = &v276 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v324 = &v276 - v19;
  MEMORY[0x28223BE20](v18);
  v280 = &v276 - v20;
  v320 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v279 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v319 = (&v276 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v316 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v321 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v314 = (&v276 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v304 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v310 = *(v304 - 8);
  v23 = MEMORY[0x28223BE20](v304);
  v282 = &v276 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v303 = &v276 - v25;
  v292 = type metadata accessor for Date();
  v291 = *(v292 - 1);
  MEMORY[0x28223BE20](v292);
  v290 = &v276 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ClientExperienceSignals();
  v287 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v309 = &v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for PommesSearchRequest(0);
  v29 = MEMORY[0x28223BE20](v283);
  v281 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v289 = &v276 - v31;
  v301 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v300 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v33 = &v276 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  isa = v299[-1].isa;
  MEMORY[0x28223BE20](v299);
  v297 = &v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v302 = &v276 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v295 = &v276 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v285 = &v276 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v284 = &v276 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v276 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = (&v276 - v48);
  v50 = swift_allocObject();
  *(v50 + 16) = a4;
  *(v50 + 24) = a5;
  v296 = v50;
  v332[3] = &type metadata for DefaultExperiencesResolver;
  v332[4] = &protocol witness table for DefaultExperiencesResolver;
  v332[0] = swift_allocObject();
  outlined init with copy of DefaultExperiencesResolver(a2, v332[0] + 16);
  v51 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v312 = v36;
  v52 = v36;
  v53 = v49;
  v54 = v52 + 16;
  v55 = *(v52 + 16);
  v286 = a1;
  v55(v53, a1 + v51, v35);
  v56 = one-time initialization token for pommes;
  v293 = a4;

  v294 = a5;

  if (v56 != -1)
  {
LABEL_47:
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = __swift_project_value_buffer(v57, static Logger.pommes);
  v55(v47, v53, v35);
  v318 = v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v61 = os_log_type_enabled(v59, v60);
  v308 = v35;
  v306 = v53;
  v288 = v27;
  v311 = v55;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v329[0] = v63;
    *v62 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    v64 = Message.textFormatString()();
    v307 = *(v312 + 8);
    v307(v47, v35);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64._countAndFlagsBits, v64._object, v329);

    *(v62 + 4) = v65;
    _os_log_impl(&dword_2232BB000, v59, v60, "PireneResponse: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x223DE0F80](v63, -1, -1);
    v66 = v62;
    v53 = v306;
    MEMORY[0x223DE0F80](v66, -1, -1);
  }

  else
  {

    v307 = *(v312 + 8);
    v307(v47, v35);
  }

  v67 = v297;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v68 = (*(isa + 1))(v67, v299);
  v69 = MEMORY[0x223DDBA80](v68);
  (*(v300 + 8))(v33, v301);
  v70 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter();
  v71 = v309;
  v72 = v313;
  v73 = v322;
  if (v70)
  {
    v74 = *(v69 + 16);
    if (v74)
    {
      *&v329[0] = MEMORY[0x277D84F90];
      v75 = v74;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
      v76 = *&v329[0];
      v79 = *(v73 + 16);
      v78 = v73 + 16;
      v77 = v79;
      v80 = (*(v78 + 64) + 32) & ~*(v78 + 64);
      v303 = v69;
      v53 = (v69 + v80);
      v81 = *(v78 + 56);
      v322 = v78;
      v319 = (v78 - 8);
      v316 = v317 + 32;
      v301 = v69 + v80;
      v302 = v75;
      v47 = v280;
      v321 = v79;
      v320 = v81;
      do
      {
        v82 = v325;
        v83 = v77(v325, v53, v72);
        MEMORY[0x223DDBB90](v83);
        v84 = *v319;
        (*v319)(v82, v72);
        *&v329[0] = v76;
        v86 = *(v76 + 16);
        v85 = *(v76 + 24);
        v87 = (v86 + 1);
        if (v86 >= v85 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
          v76 = *&v329[0];
        }

        *(v76 + 16) = v87;
        v88 = v76 + ((*(v317 + 80) + 32) & ~*(v317 + 80));
        v55 = *(v317 + 72);
        (*(v317 + 32))(v88 + v55 * v86, v47, v326);
        v54 = v320;
        v53 = (v53 + v320);
        --v75;
        v77 = v321;
      }

      while (v75);
      v310 = v88;
      v311 = v87;
      v316 = v76;
      v314 = v84;
      v309 = OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels;
      swift_beginAccess();
      v33 = 0;
      v325 = (v317 + 16);
      v27 = v317 + 8;
      *&v120 = 134218240;
      v304 = v120;
      v121 = v305;
      v122 = v324;
      while (v33 != v311)
      {
        v35 = v326;
        if (v33 >= *(v316 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v124 = *v325;
        (*v325)(v122, v310 + v33 * v55, v326);
        v125 = *&v309[v315];
        v126 = *(v125 + 16);
        v317 = v33;
        if (v126)
        {
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);

          v127 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v128 = -1 << *(v125 + 32);
          v129 = v127 & ~v128;
          if ((*(v125 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129))
          {
            v130 = ~v128;
            do
            {
              v131 = v323;
              v132 = v326;
              v124(v323, *(v125 + 48) + v129 * v55, v326);
              lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
              v47 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v27)(v131, v132);
              if (v47)
              {
                break;
              }

              v129 = (v129 + 1) & v130;
            }

            while (((*(v125 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) != 0);
          }

          else
          {
            v47 = 0;
          }

          v35 = v326;
          v121 = v305;
          v122 = v324;
        }

        else
        {
          v47 = 0;
        }

        v124(v121, v122, v35);
        v53 = Logger.logObject.getter();
        v133 = static os_log_type_t.debug.getter();
        v54 = v27 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (os_log_type_enabled(v53, v133))
        {
          v134 = swift_slowAlloc();
          *v134 = v304;
          v135 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v123 = *v27;
          (*v27)(v121, v326);
          *(v134 + 4) = v135;
          *(v134 + 12) = 1024;
          *(v134 + 14) = v47 & 1;
          _os_log_impl(&dword_2232BB000, v53, v133, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v134, 0x12u);
          MEMORY[0x223DE0F80](v134, -1, -1);
        }

        else
        {
          v123 = *v27;
          (*v27)(v121, v326);
        }

        v72 = v313;
        v33 = v317 + 1;

        v122 = v324;
        v123(v324, v326);
        if (v47)
        {

          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.debug.getter();
          v157 = os_log_type_enabled(v155, v156);
          v153 = v306;
          if (v157)
          {
            v158 = swift_slowAlloc();
            *v158 = 0;
            _os_log_impl(&dword_2232BB000, v155, v156, "Already attempted profile slice resolution; yielding error response", v158, 2u);
            MEMORY[0x223DE0F80](v158, -1, -1);
          }

          lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
          v159 = swift_allocError();
          *v160 = 69;
          closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v159, 1, v293, v294);

          v152 = v308;
          goto LABEL_86;
        }
      }

      v136 = v315;
      v137 = v278;
      v138 = v277;
      v139 = v323;
      v140 = v302;
      v141 = v301;
      do
      {
        v142 = v321(v137, v141, v72);
        MEMORY[0x223DDBB90](v142);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v139, v138);
        (*v27)(v139, v326);
        swift_endAccess();
        v314(v137, v72);
        v141 += v320;
        --v140;
      }

      while (v140);
      v143 = v303;

      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v327 = v147;
        *v146 = 136315138;
        v148 = MEMORY[0x223DDF850](v303, v72);
        v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, &v327);

        *(v146 + 4) = v150;
        _os_log_impl(&dword_2232BB000, v144, v145, "Adding profile slice resolution requests: %s", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v147);
        MEMORY[0x223DE0F80](v147, -1, -1);
        v151 = v146;
        v143 = v303;
        MEMORY[0x223DE0F80](v151, -1, -1);
      }

      v152 = v308;
      v153 = v306;
      v154 = v136 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      *&v154[*(v283 + 92)] = v143;

      (*(*v136 + 224))(partial apply for closure #3 in PommesSearchRequestProcessor.search_sync(completion:), v296);
      goto LABEL_86;
    }
  }

  v90 = v315;
  v91 = v315[5];
  v92 = *(*v315 + 152);
  v93 = *v315 + 152;
  v94 = v289;
  (v92)(v89);
  v322 = (*(*v91 + 168))(v94, v53);
  v95 = outlined destroy of PommesSearchRequest(v94, type metadata accessor for PommesSearchRequest);
  v96 = v90[2];
  v326 = v93;
  (v92)(v95);
  (*(*v96 + 712))(v94);
  v97 = outlined destroy of PommesSearchRequest(v94, type metadata accessor for PommesSearchRequest);
  if (one-time initialization token for shared != -1)
  {
    v97 = swift_once();
  }

  v98 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v97);
  v272 = v332;
  v273 = v53;
  v274 = v71;
  v99 = v290;
  Date.init()();
  v100 = *(*v98 + 200);
  v274 = v271;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  LOBYTE(v272) = 2;
  v100(v329, 0xD00000000000002ALL, 0x80000002234DBF50, 0, v99, "SiriInformationSearch/PommesSearchRequestProcessor.swift", 56, 2, 348, "handleSuccess(_:_:_:)", 21, v272, partial apply for closure #4 in PommesSearchRequestProcessor.handleSuccess(_:_:_:));
  (*(v291 + 8))(v99, v292);
  v101 = *&v329[0];
  v102 = PommesSearchRequestProcessor.clientSearch(pegasusResponse:)(v306);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();
  v105 = os_log_type_enabled(v103, v104);
  v317 = v102;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v329[0] = v107;
    *v106 = 136315138;
    v108 = type metadata accessor for PommesResult();
    v109 = MEMORY[0x223DDF870](v102, v108);
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v329);

    *(v106 + 4) = v111;
    _os_log_impl(&dword_2232BB000, v103, v104, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x223DE0F80](v107, -1, -1);
    MEMORY[0x223DE0F80](v106, -1, -1);
  }

  if (!(v101 >> 62))
  {
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_49:
    v115 = 0xE700000000000000;
    v113 = 0x6E776F6E6B6E55;
    v119 = 0;
    goto LABEL_50;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((v101 & 0xC000000000000001) != 0)
  {
    v269 = MEMORY[0x223DDFF80](0, v101);
    v113 = dispatch thunk of Experience.pluginIdentifier.getter();
    v115 = v270;

    v116 = MEMORY[0x223DDFF80](0, v101);
    goto LABEL_22;
  }

  if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v112 = *(v101 + 32);
    v113 = dispatch thunk of Experience.pluginIdentifier.getter();
    v115 = v114;

    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v116 = *(v101 + 32);
LABEL_22:
      v117 = v116;
      dispatch thunk of Experience.queryConfidence.getter();
      v119 = v118;

LABEL_50:
      v313 = v101;

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v329[0] = v164;
        *v163 = 136315394;
        v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v329);

        *(v163 + 4) = v165;
        *(v163 + 12) = 2048;
        *(v163 + 14) = v119;
        _os_log_impl(&dword_2232BB000, v161, v162, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v163, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v164);
        MEMORY[0x223DE0F80](v164, -1, -1);
        MEMORY[0x223DE0F80](v163, -1, -1);
      }

      else
      {
      }

      v166 = v306;
      v167 = v285;
      v325 = v92;
      v168 = v284;
      v311(v284, v306, v308);
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 67109120;
        v172 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
        v307(v168, v308);
        *(v171 + 4) = v172;
        _os_log_impl(&dword_2232BB000, v169, v170, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v171, 8u);
        MEMORY[0x223DE0F80](v171, -1, -1);
      }

      else
      {
        v307(v168, v308);
      }

      v173 = v304;
      v174 = v310;

      v331 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
      v175 = v303;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v301 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
      v305 = v176;
      v177 = *(v174 + 8);
      v177(v175, v173);
      v311(v167, v166, v308);
      v178 = Logger.logObject.getter();
      v179 = static os_log_type_t.debug.getter();
      v180 = os_log_type_enabled(v178, v179);
      v323 = v177;
      v310 = v174 + 8;
      if (v180)
      {
        v181 = swift_slowAlloc();
        v300 = v54;
        v182 = v181;
        v183 = swift_slowAlloc();
        *&v329[0] = v183;
        *v182 = 136315138;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v184 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v185 = v173;
        v186 = v167;
        v188 = v187;
        v177(v175, v185);
        v307(v186, v308);
        v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v188, v329);

        *(v182 + 4) = v189;
        _os_log_impl(&dword_2232BB000, v178, v179, "got albusMultiturnRewrite as: %s", v182, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v183);
        MEMORY[0x223DE0F80](v183, -1, -1);
        v190 = v182;
        v54 = v300;
        MEMORY[0x223DE0F80](v190, -1, -1);
      }

      else
      {

        v307(v167, v308);
      }

      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.debug.getter();

      v193 = os_log_type_enabled(v191, v192);
      v194 = v302;
      if (v193)
      {
        v195 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        *&v329[0] = v196;
        *v195 = 136315138;
        v197 = v281;
        v325();
        v198 = *(v197 + *(v283 + 52));

        outlined destroy of PommesSearchRequest(v197, type metadata accessor for PommesSearchRequest);
        if (v198)
        {
          v199 = *(v198 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
        }

        else
        {
          v199 = 2;
        }

        v152 = v308;
        LOBYTE(v327) = v199;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        v200 = String.init<A>(describing:)();
        v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, v201, v329);

        *(v195 + 4) = v202;
        _os_log_impl(&dword_2232BB000, v191, v192, "got isRelatedQuestion as: %s", v195, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v196);
        MEMORY[0x223DE0F80](v196, -1, -1);
        MEMORY[0x223DE0F80](v195, -1, -1);
      }

      else
      {

        v152 = v308;
      }

      v203 = v295;
      v153 = v306;
      v311(v295, v306, v152);
      v204 = Logger.logObject.getter();
      v205 = static os_log_type_t.info.getter();
      v206 = os_log_type_enabled(v204, v205);
      v207 = v323;
      if (v206)
      {
        LODWORD(v297) = v205;
        v299 = v204;
        v208 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        v327 = v292;
        isa = v208;
        *v208 = 136315138;
        v209 = v282;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v210 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainUseCaseMetadata.getter();
        v211 = v209;
        v212 = v210;
        v207(v211, v304);
        v213 = *(v212 + 16);
        if (v213)
        {
          v300 = v54;
          v328 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v213, 0);
          v214 = v328;
          v326 = *(v321 + 2);
          v215 = (*(v321 + 80) + 32) & ~*(v321 + 80);
          v291 = v212;
          v216 = v212 + v215;
          v325 = *(v321 + 9);
          v324 = (v279 + 8);
          v321 = (v321 + 16);
          v217 = (v321 - 8);
          do
          {
            v218 = v314;
            v219 = v316;
            (v326)(v314, v216, v316);
            *&v329[0] = 0;
            *(&v329[0] + 1) = 0xE000000000000000;
            v220 = v319;
            Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
            v221 = v320;
            _print_unlocked<A, B>(_:_:)();
            (*v324)(v220, v221);
            v222 = v329[0];
            (*v217)(v218, v219);
            v328 = v214;
            v224 = *(v214 + 16);
            v223 = *(v214 + 24);
            if (v224 >= v223 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1);
              v214 = v328;
            }

            *(v214 + 16) = v224 + 1;
            *(v214 + 16 * v224 + 32) = v222;
            v216 += v325;
            --v213;
          }

          while (v213);

          v152 = v308;
          v153 = v306;
          v203 = v295;
        }

        else
        {

          v214 = MEMORY[0x277D84F90];
        }

        v225 = MEMORY[0x223DDF850](v214, MEMORY[0x277D837D0]);
        v227 = v226;

        v307(v203, v152);
        v228 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v225, v227, &v327);

        v229 = isa;
        *(isa + 4) = v228;
        v230 = v299;
        _os_log_impl(&dword_2232BB000, v299, v297, "got usecases as: %s", v229, 0xCu);
        v231 = v292;
        __swift_destroy_boxed_opaque_existential_1(v292);
        MEMORY[0x223DE0F80](v231, -1, -1);
        MEMORY[0x223DE0F80](v229, -1, -1);

        v194 = v302;
      }

      else
      {

        v307(v203, v152);
      }

      v311(v194, v153, v152);
      v232 = Logger.logObject.getter();
      v233 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        *&v329[0] = v235;
        *v234 = 136315138;
        v236 = v303;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v237 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v239 = v238;
        (v323)(v236, v304);
        v307(v194, v152);
        v240 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v237, v239, v329);
        v153 = v306;

        *(v234 + 4) = v240;
        _os_log_impl(&dword_2232BB000, v232, v233, "got domain as: %s", v234, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v235);
        MEMORY[0x223DE0F80](v235, -1, -1);
        MEMORY[0x223DE0F80](v234, -1, -1);
      }

      else
      {

        v307(v194, v152);
      }

      v241 = v309;
      v242 = type metadata accessor for PommesResponse();
      MEMORY[0x28223BE20](v242);
      v243 = v317;
      *(&v276 - 10) = v313;
      *(&v276 - 9) = v243;
      v244 = v315;
      *(&v276 - 8) = v153;
      *(&v276 - 7) = v244;
      v271[0] = v322;
      v271[1] = v286;
      v272 = &v331;
      v273 = v301;
      v274 = v305;
      v245 = PommesResponse.__allocating_init(_:)();

      if (v245)
      {
        v246 = v245;
        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.debug.getter();

        v249 = os_log_type_enabled(v247, v248);
        v250 = v294;
        if (v249)
        {
          v251 = swift_slowAlloc();
          v252 = swift_slowAlloc();
          *&v329[0] = v252;
          *v251 = 136315138;
          v253 = [v246 debugDescription];
          v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v256 = v255;

          v257 = v254;
          v152 = v308;
          v258 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v257, v256, v329);

          *(v251 + 4) = v258;
          _os_log_impl(&dword_2232BB000, v247, v248, "PommesSearchRequestProcessor#handleSuccess response: %s", v251, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v252);
          v259 = v252;
          v153 = v306;
          MEMORY[0x223DE0F80](v259, -1, -1);
          v260 = v251;
          v241 = v309;
          MEMORY[0x223DE0F80](v260, -1, -1);
        }

        v330 = 0;
        memset(v329, 0, sizeof(v329));
        static CurareDonation.donateCurareInfo(for:with:into:)(v153, v246, v329);
        outlined destroy of MediaUserStateCenter?(v329, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        v261 = v246;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v245, 0, v293, v250);
      }

      else
      {
        v262 = Logger.logObject.getter();
        v263 = static os_log_type_t.error.getter();
        v264 = os_log_type_enabled(v262, v263);
        v265 = v294;
        if (v264)
        {
          v266 = swift_slowAlloc();
          *v266 = 0;
          _os_log_impl(&dword_2232BB000, v262, v263, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v266, 2u);
          MEMORY[0x223DE0F80](v266, -1, -1);
        }

        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v267 = swift_allocError();
        *v268 = 0x80;
        closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v267, 1, v293, v265);
      }

      (*(v287 + 8))(v241, v288);
LABEL_86:
      v307(v153, v152);
      __swift_destroy_boxed_opaque_existential_1(v332);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v83 = a2;
  v79 = type metadata accessor for PegasusSearchResponse(0);
  MEMORY[0x28223BE20](v79);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v6 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v73 - v11;
  v12 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v73 - v19;
  v21 = type metadata accessor for PommesSearchRequest(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v73 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v73 - v28;
  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 - 7 >= 2)
      {
        lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
        v31 = swift_allocError();
        v32 = 69;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (a1 == 9)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v31 = swift_allocError();
      v32 = 3;
      goto LABEL_12;
    }

    if (a1 == 10)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v31 = swift_allocError();
      v32 = 4;
      goto LABEL_12;
    }

    v73 = v6;
    v36 = (*v83 + 152);
    v37 = *v36;
    v76 = v17;
    v38 = v36;

    v74 = v37;
    v75 = v38;
    (v37)(v39);
    v40 = v76;
    LOBYTE(v37) = v29[*(v21 + 80)];
    v41 = outlined destroy of PommesSearchRequest(v29, type metadata accessor for PommesSearchRequest);
    if ((v37 & 1) == 0)
    {
LABEL_36:
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v62 = swift_allocError();
      *v63 = -127;
      closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v62, 1, v85, v84);
    }

    v42 = v74;
    (v74)(v41);
    outlined init with copy of MediaUserStateCenter?(&v27[*(v21 + 40)], v20, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of PommesSearchRequest(v27, type metadata accessor for PommesSearchRequest);
    v43 = type metadata accessor for PommesContext();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v20, 1, v43) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v20, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      goto LABEL_36;
    }

    v45 = PommesContext.domain.getter();
    v47 = v46;
    (*(v44 + 8))(v20, v43);
    if (!v47)
    {
      goto LABEL_36;
    }

    v48 = v42;
    if (v45 == 0x656E6F6870 && v47 == 0xE500000000000000)
    {
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v49 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v50 = v73;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.pommes);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2232BB000, v52, v53, "Handling no results from fallback request for phone domain as successful", v54, 2u);
      MEMORY[0x223DE0F80](v54, -1, -1);
    }

    v48();
    outlined init with copy of PommesSearchRequest(v24, v40, type metadata accessor for PommesSearchRequest.ParseState);
    outlined destroy of PommesSearchRequest(v24, type metadata accessor for PommesSearchRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
        v57 = v78;
        outlined init with take of TCUMappedNLResponse?(v40 + *(v56 + 64), v78);
        v58 = v77;
        outlined init with copy of MediaUserStateCenter?(v57, v77, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v59 = type metadata accessor for TCUMappedNLResponse();
        v60 = *(v59 - 8);
        if ((*(v60 + 48))(v58, 1, v59) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v58, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          v61 = MEMORY[0x277D84F90];
        }

        else
        {
          v70 = TCUMappedNLResponse.nlResponse.getter();
          (*(v60 + 8))(v58, v59);
          v61 = NLParseResponse.userParses.getter();
        }

        v67 = v81;
        v66 = v82;
        v68 = v79;
        v69 = v80;
        outlined destroy of MediaUserStateCenter?(v57, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        goto LABEL_42;
      }

      v61 = *(v40 + 16);
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      outlined destroy of MediaUserStateCenter?(v40 + v65, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }

    else
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v40 + *(v64 + 48), v14, type metadata accessor for NLXResultCandidate);
      v61 = *v14;

      outlined destroy of PommesSearchRequest(v14, type metadata accessor for NLXResultCandidate);
    }

    v67 = v81;
    v66 = v82;
    v68 = v79;
    v69 = v80;
LABEL_42:
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    static Message.with(_:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.init()();
    (*(v50 + 16))(v67 + *(v68 + 20), v69, v66);
    v71 = v85;

    v72 = v84;

    specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v67, v61, v83, v71, v72);

    outlined destroy of PommesSearchRequest(v67, type metadata accessor for PegasusSearchResponse);
    (*(v50 + 8))(v69, v66);
  }

  if (a1 > 2u)
  {
    if (a1 - 4 < 2)
    {
      lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
      v31 = swift_allocError();
      v32 = 68;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_11:
    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v31 = swift_allocError();
    v32 = 67;
    goto LABEL_12;
  }

  lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
  v31 = swift_allocError();
  if (a1 == 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = -126;
  }

LABEL_12:
  *v30 = v32;
  v33 = v85;

  v34 = v84;

  closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v31, 1, v33, v34);
}

uint64_t specialized PommesSearchRequestProcessor.handlePegasusResponse(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v14 = type metadata accessor for PegasusSearchResponse(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v13, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v13, 1, v17) == 1)
  {
    swift_retain_n();
    swift_retain_n();
    v19 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v20 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_0(v13, v16, type metadata accessor for PegasusSearchResponse);
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      memset(v41, 0, sizeof(v41));
      v42 = 0;
      swift_retain_n();
      swift_retain_n();
      outlined assign with take of MediaUserStateCenter?(v39, v41, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);

      specialized PommesSearchRequestProcessor.handleSuccess(_:_:_:)(v16, v41, a2, a3, a4);

      outlined destroy of PommesSearchRequest(v16, type metadata accessor for PegasusSearchResponse);
      outlined destroy of DefaultExperiencesResolver(v41);
LABEL_20:
    }

    swift_retain_n();
    swift_retain_n();
    v19 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v20 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
  }

  outlined destroy of MediaUserStateCenter?(v13, v19, v20);
  outlined init with copy of MediaUserStateCenter?(a1, v11, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR);
  if (v18(v11, 1, v17) == 1)
  {
    v21 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMd;
    v22 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGSgMR;
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v11, v21, v22);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2232BB000, v33, v34, "PireneResponse failure: none", v35, 2u);
      MEMORY[0x223DE0F80](v35, -1, -1);
    }

    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v36 = swift_allocError();
    *v37 = 0x80;
    closure #3 in PommesSearchRequestProcessor.search_sync(completion:)(v36, 1, a3, a4);

    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd;
    v22 = &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR;
    goto LABEL_15;
  }

  v23 = *v11;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v41[0] = v28;
    *v27 = 136315138;
    LOBYTE(v39[0]) = v23;
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v41);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2232BB000, v25, v26, "POMMES-CURARE: {error:%s}", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  specialized PommesSearchRequestProcessor.handleFailure(with:completion:)(v23, a2, a3, a4);
}

uint64_t type metadata accessor for PommesSearchRequestProcessor(uint64_t a1)
{
  result = type metadata singleton initialization cache for PommesSearchRequestProcessor;
  if (!type metadata singleton initialization cache for PommesSearchRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PommesSearchRequestProcessor(uint64_t a1)
{
  result = type metadata accessor for PommesSearchRequest(319);
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

void partial apply for closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2)
{
  v5 = *(type metadata accessor for PommesCandidateId() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in PommesSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t outlined assign with take of PommesSearchRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PommesSearchRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Data] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Data] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined init with take of TCUMappedNLResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_44Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t static ServiceHelperManager.shared.setter(uint64_t a1)
{
  swift_beginAccess();
  static ServiceHelperManager.shared = a1;
  return swift_unknownObjectRelease();
}

uint64_t key path setter for static ServiceHelperManager.shared : ServiceHelperManager.Type(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static ServiceHelperManager.shared = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t ServiceHelperManager.setServiceHelper(_:)(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRelease();
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.sage);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pMd, &_sSo32AFRequestDispatcherServiceHelper_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2232BB000, v5, v6, "ServiceHelperUtil: setting service helper (underlying: %s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223DE0F80](v8, -1, -1);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  *v2 = a1;
  return swift_unknownObjectRetain();
}

uint64_t ServiceHelperManager.getServiceHelper()(uint64_t a1)
{
  specialized ServiceHelperManager.getServiceHelper()(a1);

  return swift_unknownObjectRetain();
}

uint64_t specialized ServiceHelperManager.getServiceHelper()(uint64_t a1)
{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sage);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32AFRequestDispatcherServiceHelper_pSgMd, &_sSo32AFRequestDispatcherServiceHelper_pSgMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2232BB000, v3, v4, "ServiceHelperUtil: Retrieving service helper (underlying: %s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223DE0F80](v6, -1, -1);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ServiceHelperManager(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceHelperManager(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t NSProcessInfo.isRunningUnitTests.getter()
{
  v1 = [v0 environment];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000002234DBFA0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t WholeHomeAudioPreflightClient.__allocating_init(dataProviderManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t WholeHomeAudioPreflightClient.currentlyPlayingMediaType()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v84 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v75 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem();
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
  v6 = *(v81 - 8);
  v7 = MEMORY[0x28223BE20](v81);
  v79 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v73 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v85 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v76 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v73 - v16;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v80 = v6;
    v23 = v4;
    v24 = v17;
    v25 = v13;
    v26 = v19;
    v27 = v2;
    v28 = a1;
    v29 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2232BB000, v20, v21, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType", v22, 2u);
    v30 = v29;
    a1 = v28;
    v2 = v27;
    v19 = v26;
    v13 = v25;
    v17 = v24;
    v4 = v23;
    v6 = v80;
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  (*(**(v83 + 16) + 424))();
  v31 = v85;
  if ((*(v85 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2232BB000, v32, v33, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: queue state is nil", v34, 2u);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

LABEL_17:
    v63 = 1;
    return (*(v84 + 56))(a1, v63, 1, v2);
  }

  (*(v31 + 32))(v17, v12, v13);
  if ((Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.hasAudioQueueStateItem.getter() & 1) == 0)
  {
    v57 = v13;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v17;
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2232BB000, v58, v59, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: queue state does not have an audio item", v61, 2u);
      v62 = v61;
      v17 = v60;
      MEMORY[0x223DE0F80](v62, -1, -1);
    }

    (*(v31 + 8))(v17, v57);
    goto LABEL_17;
  }

  v73[1] = v19;
  v74 = v2;
  v83 = a1;
  v35 = v78;
  Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter();
  v36 = *MEMORY[0x277D392B0];
  v37 = v79;
  v38 = v81;
  v73[0] = *(v6 + 104);
  (v73[0])(v79, v36, v81);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState, MEMORY[0x277D392B8], MEMORY[0x277D392C0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v39 = v38;
  v42 = *(v6 + 8);
  v41 = v6 + 8;
  v40 = v42;
  v42(v37, v39);
  v42(v35, v39);
  if (v87 == v86 || (v80 = v41, Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter(), (v73[0])(v37, *MEMORY[0x277D39298], v39), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v40(v37, v39), v40(v35, v39), v87 == v86))
  {
    v43 = v85;
    v44 = *(v85 + 16);
    v45 = v76;
    v81 = v17;
    v44(v76, v17, v13);
    v46 = v13;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v80 = v4;
      v50 = v49;
      *v49 = 134217984;
      v51 = v77;
      Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.getter();
      v52 = v75;
      Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.getter();
      v53 = (*(v82 + 8))(v51, v80);
      v79 = MEMORY[0x223DDBA00](v53);
      v54 = v45;
      v2 = v74;
      (*(v84 + 8))(v52, v74);
      v55 = *(v43 + 8);
      v55(v54, v46);
      *(v50 + 1) = v79;
      _os_log_impl(&dword_2232BB000, v47, v48, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: %ld", v50, 0xCu);
      v56 = v50;
      v4 = v80;
      MEMORY[0x223DE0F80](v56, -1, -1);
    }

    else
    {
      v55 = *(v43 + 8);
      v55(v45, v46);
      v2 = v74;
      v51 = v77;
    }

    v65 = v81;
    Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.getter();
    v66 = v83;
    Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.getter();
    (*(v82 + 8))(v51, v4);
    v55(v65, v46);
    a1 = v66;
    v63 = 0;
  }

  else
  {
    v67 = v13;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v17;
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2232BB000, v68, v69, "WholeHomeAudioPreflightClient#currentlyPlayingMediaType: queue state item is not playing or interrupted", v71, 2u);
      v72 = v71;
      v17 = v70;
      MEMORY[0x223DE0F80](v72, -1, -1);
    }

    (*(v85 + 8))(v17, v67);
    v63 = 1;
    a1 = v83;
    v2 = v74;
  }

  return (*(v84 + 56))(a1, v63, 1, v2);
}

uint64_t WholeHomeAudioPreflightClient.sameMediaType(queueItemType:taskItemType:)(uint64_t a1, uint64_t a2)
{
  v226 = a2;
  v225 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v228 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v221 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v4 = MEMORY[0x28223BE20](v227);
  v197 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v202 = &v194 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v208 = &v194 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v212 = &v194 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v211 = &v194 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v215 = &v194 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v220 = &v194 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v223 = &v194 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v194 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v194 = &v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v199 = &v194 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v196 = &v194 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v195 = &v194 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v201 = &v194 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v203 = &v194 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v198 = &v194 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v205 = &v194 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v206 = &v194 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v200 = &v194 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v209 = &v194 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v210 = &v194 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v204 = &v194 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v217 = (&v194 - v50);
  v51 = MEMORY[0x28223BE20](v49);
  v218 = (&v194 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v207 = &v194 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v213 = &v194 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v214 = &v194 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v216 = (&v194 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v194 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v194 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v219 = &v194 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v224 = (&v194 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v222 = &v194 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v75 = &v194 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v194 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = &v194 - v79;
  v81 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v84 = &v194 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v82 + 16))(v84, a1, v81);
  v85 = (*(v82 + 88))(v84, v81);
  v86 = 0;
  if (v85 != *MEMORY[0x277D39B40] && v85 != *MEMORY[0x277D39B38] && v85 != *MEMORY[0x277D39B48])
  {
    if (v85 == *MEMORY[0x277D39B68])
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      v87 = *MEMORY[0x277D5ED28];
      v88 = v228;
      v89 = v225;
      v218 = *(v228 + 104);
      v218(v78, v87, v225);
      v90 = *(v88 + 56);
      v220 = v88 + 56;
      v217 = v90;
      (v90)(v78, 0, 1, v89);
      v91 = *(v227 + 48);
      outlined init with copy of MediaUserStateCenter?(v80, v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v78, &v21[v91], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v92 = *(v88 + 48);
      if (v92(v21, 1, v89) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v78, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v80, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v93 = v89;
        if (v92(&v21[v91], 1, v89) == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      outlined init with copy of MediaUserStateCenter?(v21, v75, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      if (v92(&v21[v91], 1, v89) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v78, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v80, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        (*(v228 + 8))(v75, v89);
        v93 = v89;
LABEL_16:
        v216 = v92;
        outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
LABEL_17:
        v102 = v222;
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
        v103 = v224;
        v218(v224, *MEMORY[0x277D5EDE8], v93);
        (v217)(v103, 0, 1, v93);
        v104 = *(v227 + 48);
        v21 = v223;
        outlined init with copy of MediaUserStateCenter?(v102, v223, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v103, &v21[v104], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v105 = v216;
        if (v216(v21, 1, v93) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v103, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v105(&v21[v104], 1, v93) == 1)
          {
LABEL_19:
            v101 = v21;
            goto LABEL_20;
          }

          goto LABEL_23;
        }

        v106 = v219;
        outlined init with copy of MediaUserStateCenter?(v21, v219, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        if (v105(&v21[v104], 1, v93) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v224, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v228 + 8))(v106, v93);
LABEL_23:
          v107 = v21;
LABEL_24:
          outlined destroy of MediaUserStateCenter?(v107, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
LABEL_41:
          v86 = 0;
          return v86 & 1;
        }

        v123 = v228;
        v124 = v221;
        (*(v228 + 32))(v221, &v21[v104], v93);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v86 = dispatch thunk of static Equatable.== infix(_:_:)();
        v125 = *(v123 + 8);
        v125(v124, v93);
        outlined destroy of MediaUserStateCenter?(v224, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v102, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v126 = v106;
        v127 = v93;
LABEL_32:
        v125(v126, v127);
        v128 = v21;
LABEL_33:
        outlined destroy of MediaUserStateCenter?(v128, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        return v86 & 1;
      }

      v216 = v92;
      v108 = v221;
      (*(v228 + 32))(v221, &v21[v91], v89);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
      LODWORD(v215) = dispatch thunk of static Equatable.== infix(_:_:)();
      v109 = *(v228 + 8);
      v109(v108, v89);
      outlined destroy of MediaUserStateCenter?(v78, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v80, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v109(v75, v89);
      outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v93 = v89;
      if ((v215 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      v86 = 1;
      return v86 & 1;
    }

    v86 = 0;
    if (v85 != *MEMORY[0x277D39B58] && v85 != *MEMORY[0x277D39B30])
    {
      if (v85 == *MEMORY[0x277D39B60])
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
        v94 = *MEMORY[0x277D5EE08];
        v95 = v228;
        v96 = v225;
        v223 = *(v228 + 104);
        (v223)(v63, v94, v225);
        v222 = *(v95 + 56);
        (v222)(v63, 0, 1, v96);
        v97 = *(v227 + 48);
        v98 = v220;
        outlined init with copy of MediaUserStateCenter?(v66, v220, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined init with copy of MediaUserStateCenter?(v63, v98 + v97, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v99 = *(v95 + 48);
        v100 = v99(v98, 1, v96);
        v224 = v99;
        if (v100 == 1)
        {
          outlined destroy of MediaUserStateCenter?(v63, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v66, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v99(v98 + v97, 1, v96) == 1)
          {
            v101 = v98;
LABEL_20:
            outlined destroy of MediaUserStateCenter?(v101, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v86 = 1;
            return v86 & 1;
          }
        }

        else
        {
          v129 = v216;
          outlined init with copy of MediaUserStateCenter?(v98, v216, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v99(v98 + v97, 1, v96) != 1)
          {
            v145 = v98;
            v146 = v228;
            v147 = v145 + v97;
            v148 = v221;
            (*(v228 + 32))(v221, v147, v96);
            lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
            LODWORD(v219) = dispatch thunk of static Equatable.== infix(_:_:)();
            v149 = *(v146 + 8);
            v149(v148, v96);
            outlined destroy of MediaUserStateCenter?(v63, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined destroy of MediaUserStateCenter?(v66, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v149(v216, v96);
            outlined destroy of MediaUserStateCenter?(v220, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            if (v219)
            {
              goto LABEL_26;
            }

LABEL_37:
            v130 = v214;
            dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
            v131 = v213;
            v132 = v225;
            (v223)(v213, *MEMORY[0x277D5ED58], v225);
            (v222)(v131, 0, 1, v132);
            v133 = *(v227 + 48);
            v134 = v215;
            outlined init with copy of MediaUserStateCenter?(v130, v215, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined init with copy of MediaUserStateCenter?(v131, v134 + v133, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v135 = v224;
            if (v224(v134, 1, v132) == 1)
            {
              outlined destroy of MediaUserStateCenter?(v131, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined destroy of MediaUserStateCenter?(v130, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v135(v134 + v133, 1, v132) == 1)
              {
                v101 = v134;
                goto LABEL_20;
              }
            }

            else
            {
              v137 = v207;
              outlined init with copy of MediaUserStateCenter?(v134, v207, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v135(v134 + v133, 1, v132) != 1)
              {
                v150 = v228;
                v151 = v221;
                (*(v228 + 32))(v221, v134 + v133, v132);
                lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
                v86 = dispatch thunk of static Equatable.== infix(_:_:)();
                v152 = *(v150 + 8);
                v152(v151, v132);
                outlined destroy of MediaUserStateCenter?(v131, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                outlined destroy of MediaUserStateCenter?(v130, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                v152(v137, v132);
                v128 = v134;
                goto LABEL_33;
              }

              outlined destroy of MediaUserStateCenter?(v131, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined destroy of MediaUserStateCenter?(v130, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              (*(v228 + 8))(v137, v132);
            }

            v107 = v134;
            goto LABEL_24;
          }

          outlined destroy of MediaUserStateCenter?(v63, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v66, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          (*(v228 + 8))(v129, v96);
        }

        outlined destroy of MediaUserStateCenter?(v98, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
        goto LABEL_37;
      }

      if (v85 != *MEMORY[0x277D39B50])
      {
        (*(v82 + 8))(v84, v81);
        goto LABEL_41;
      }

      v110 = v218;
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      v111 = *MEMORY[0x277D5ED90];
      v112 = v228;
      v113 = v217;
      v114 = v225;
      v224 = *(v228 + 104);
      v222 = (v228 + 104);
      v224(v217, v111, v225);
      v115 = v112 + 56;
      v223 = *(v112 + 56);
      (v223)(v113, 0, 1, v114);
      v116 = *(v227 + 48);
      v117 = v211;
      outlined init with copy of MediaUserStateCenter?(v110, v211, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v113, v117 + v116, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v118 = *(v112 + 48);
      v119 = v118(v117, 1, v114);
      v220 = v112 + 48;
      if (v119 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v113, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v110, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v120 = v118(v117 + v116, 1, v114);
        v121 = v117;
        v122 = v212;
        if (v120 == 1)
        {
          v101 = v117;
          goto LABEL_20;
        }
      }

      else
      {
        v138 = v204;
        outlined init with copy of MediaUserStateCenter?(v117, v204, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v121 = v117;
        if (v118(v117 + v116, 1, v114) != 1)
        {
          v159 = v138;
          v160 = v228;
          v161 = v117 + v116;
          v162 = v221;
          (*(v228 + 32))(v221, v161, v114);
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
          LODWORD(v219) = dispatch thunk of static Equatable.== infix(_:_:)();
          v163 = *(v160 + 8);
          v163(v162, v225);
          outlined destroy of MediaUserStateCenter?(v217, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined destroy of MediaUserStateCenter?(v218, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v163(v159, v225);
          v114 = v225;
          outlined destroy of MediaUserStateCenter?(v117, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          v122 = v212;
          if (v219)
          {
            goto LABEL_26;
          }

LABEL_49:
          v139 = v115;
          v140 = v210;
          dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
          v141 = v118;
          v142 = v209;
          v224(v209, *MEMORY[0x277D5EDB0], v114);
          v219 = v139;
          (v223)(v142, 0, 1, v114);
          v143 = *(v227 + 48);
          outlined init with copy of MediaUserStateCenter?(v140, v122, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          outlined init with copy of MediaUserStateCenter?(v142, v122 + v143, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
          if (v141(v122, 1, v114) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v142, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined destroy of MediaUserStateCenter?(v140, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v144 = v141;
            if (v141(v122 + v143, 1, v114) == 1)
            {
              v101 = v122;
              goto LABEL_20;
            }
          }

          else
          {
            v153 = v200;
            outlined init with copy of MediaUserStateCenter?(v122, v200, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            v144 = v141;
            if (v141(v122 + v143, 1, v114) != 1)
            {
              v172 = v122;
              v173 = v228;
              v174 = v172 + v143;
              v175 = v221;
              (*(v228 + 32))(v221, v174, v114);
              lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
              v176 = dispatch thunk of static Equatable.== infix(_:_:)();
              v177 = *(v173 + 8);
              v177(v175, v225);
              outlined destroy of MediaUserStateCenter?(v209, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined destroy of MediaUserStateCenter?(v210, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              v177(v153, v225);
              v114 = v225;
              outlined destroy of MediaUserStateCenter?(v172, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v176)
              {
                goto LABEL_26;
              }

LABEL_58:
              v154 = v206;
              dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
              v155 = v205;
              v224(v205, *MEMORY[0x277D5EE18], v114);
              (v223)(v155, 0, 1, v114);
              v156 = *(v227 + 48);
              v157 = v208;
              outlined init with copy of MediaUserStateCenter?(v154, v208, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              outlined init with copy of MediaUserStateCenter?(v155, v157 + v156, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
              if (v144(v157, 1, v114) == 1)
              {
                outlined destroy of MediaUserStateCenter?(v155, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                v158 = v208;
                outlined destroy of MediaUserStateCenter?(v154, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                if (v144(v158 + v156, 1, v114) == 1)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v164 = v198;
                outlined init with copy of MediaUserStateCenter?(v157, v198, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                if (v144(v157 + v156, 1, v114) != 1)
                {
                  v183 = v228;
                  v184 = v157 + v156;
                  v185 = v221;
                  (*(v228 + 32))(v221, v184, v114);
                  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
                  LODWORD(v219) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v186 = *(v183 + 8);
                  v186(v185, v225);
                  outlined destroy of MediaUserStateCenter?(v205, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  outlined destroy of MediaUserStateCenter?(v206, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  v186(v164, v225);
                  v114 = v225;
                  outlined destroy of MediaUserStateCenter?(v157, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  v165 = v224;
                  if (v219)
                  {
                    goto LABEL_26;
                  }

LABEL_66:
                  v166 = v203;
                  dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
                  v167 = v201;
                  v165(v201, *MEMORY[0x277D5ED98], v114);
                  (v223)(v167, 0, 1, v114);
                  v168 = *(v227 + 48);
                  v169 = v166;
                  v170 = v202;
                  outlined init with copy of MediaUserStateCenter?(v169, v202, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  v171 = v170;
                  outlined init with copy of MediaUserStateCenter?(v167, v170 + v168, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                  if (v144(v170, 1, v114) == 1)
                  {
                    outlined destroy of MediaUserStateCenter?(v167, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    v158 = v202;
                    outlined destroy of MediaUserStateCenter?(v203, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    if (v144(v158 + v168, 1, v114) == 1)
                    {
LABEL_68:
                      v101 = v158;
                      goto LABEL_20;
                    }
                  }

                  else
                  {
                    v178 = v195;
                    outlined init with copy of MediaUserStateCenter?(v170, v195, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    if (v144(v170 + v168, 1, v114) != 1)
                    {
                      v188 = v228;
                      v189 = v171 + v168;
                      v190 = v221;
                      (*(v228 + 32))(v221, v189, v114);
                      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
                      LODWORD(v219) = dispatch thunk of static Equatable.== infix(_:_:)();
                      v191 = *(v188 + 8);
                      v191(v190, v225);
                      outlined destroy of MediaUserStateCenter?(v201, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      outlined destroy of MediaUserStateCenter?(v203, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      v191(v178, v225);
                      v114 = v225;
                      outlined destroy of MediaUserStateCenter?(v171, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      v179 = v224;
                      if (v219)
                      {
                        goto LABEL_26;
                      }

LABEL_74:
                      v180 = v196;
                      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
                      v181 = v199;
                      v179(v199, *MEMORY[0x277D5EDC0], v114);
                      (v223)(v181, 0, 1, v114);
                      v182 = *(v227 + 48);
                      v21 = v197;
                      outlined init with copy of MediaUserStateCenter?(v180, v197, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      outlined init with copy of MediaUserStateCenter?(v181, &v21[v182], &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      if (v144(v21, 1, v114) == 1)
                      {
                        outlined destroy of MediaUserStateCenter?(v181, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        outlined destroy of MediaUserStateCenter?(v180, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        if (v144(&v21[v182], 1, v114) == 1)
                        {
                          goto LABEL_19;
                        }

                        goto LABEL_23;
                      }

                      v187 = v194;
                      outlined init with copy of MediaUserStateCenter?(v21, v194, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      if (v144(&v21[v182], 1, v114) == 1)
                      {
                        outlined destroy of MediaUserStateCenter?(v199, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        outlined destroy of MediaUserStateCenter?(v180, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                        (*(v228 + 8))(v187, v114);
                        goto LABEL_23;
                      }

                      v192 = v228;
                      v193 = v221;
                      (*(v228 + 32))(v221, &v21[v182], v114);
                      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
                      v86 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v125 = *(v192 + 8);
                      v125(v193, v114);
                      outlined destroy of MediaUserStateCenter?(v199, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      outlined destroy of MediaUserStateCenter?(v180, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                      v126 = v187;
                      v127 = v114;
                      goto LABEL_32;
                    }

                    outlined destroy of MediaUserStateCenter?(v201, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    v158 = v202;
                    outlined destroy of MediaUserStateCenter?(v203, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                    (*(v228 + 8))(v178, v114);
                  }

                  outlined destroy of MediaUserStateCenter?(v158, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
                  v179 = v224;
                  goto LABEL_74;
                }

                outlined destroy of MediaUserStateCenter?(v205, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                v158 = v208;
                outlined destroy of MediaUserStateCenter?(v206, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
                (*(v228 + 8))(v164, v114);
              }

              outlined destroy of MediaUserStateCenter?(v158, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
              v165 = v224;
              goto LABEL_66;
            }

            outlined destroy of MediaUserStateCenter?(v209, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            outlined destroy of MediaUserStateCenter?(v210, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
            (*(v228 + 8))(v153, v114);
          }

          outlined destroy of MediaUserStateCenter?(v122, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
          goto LABEL_58;
        }

        outlined destroy of MediaUserStateCenter?(v217, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v218, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        (*(v228 + 8))(v138, v114);
        v122 = v212;
      }

      outlined destroy of MediaUserStateCenter?(v121, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
      goto LABEL_49;
    }
  }

  return v86 & 1;
}

uint64_t WholeHomeAudioPreflightClient.isPlayEverywhereTask(pommesTask:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v67 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v62 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UsoEntity_common_UserEntity.DefinedValues();
  v87 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v73 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v86);
  v75 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v85 = &v62 - v20;
  MEMORY[0x28223BE20](v19);
  v88 = &v62 - v21;
  if (one-time initialization token for pommes != -1)
  {
LABEL_54:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v72 = __swift_project_value_buffer(v22, static Logger.pommes);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v76 = v18;
  v70 = v4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v89[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DBFC0, v89);
    _os_log_impl(&dword_2232BB000, v23, v24, "Checking %s...", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x223DE0F80](v27, -1, -1);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

  v18 = v85;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v89[3])
  {
LABEL_24:
    outlined destroy of MediaUserStateCenter?(v89, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_play_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v28 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836988C0, a1);
  v62 = 0;

  v66 = v8;
  v65 = v9;
  v64 = v11;
  if (v28 >> 62)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = a1;
  v8 = v88;
  v30 = v75;
  if (!v29)
  {
LABEL_25:

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "No everywhere user entity in the USO graph";
      goto LABEL_27;
    }

LABEL_28:

    return 0;
  }

  v9 = 0;
  v83 = v28 & 0xFFFFFFFFFFFFFF8;
  v84 = v28 & 0xC000000000000001;
  v81 = *MEMORY[0x277D5E230];
  v79 = (v87 + 56);
  v80 = (v87 + 104);
  v78 = (v87 + 48);
  v71 = (v87 + 32);
  v74 = (v87 + 8);
  v4 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd;
  a1 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR;
  v77 = v29;
  v82 = v28;
  while (1)
  {
    if (v84)
    {
      MEMORY[0x223DDFF80](v9, v28);
      v31 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      if (v9 >= *(v83 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v31 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }
    }

    v87 = v31;
    dispatch thunk of UsoEntity_common_UserEntity.definedValue.getter();
    (*v80)(v18, v81, v12);
    (*v79)(v18, 0, 1, v12);
    v32 = *(v86 + 48);
    outlined init with copy of MediaUserStateCenter?(v8, v30, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(v18, v30 + v32, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v11 = v18;
    v33 = *v78;
    if ((*v78)(v30, 1, v12) == 1)
    {
      break;
    }

    v11 = v76;
    outlined init with copy of MediaUserStateCenter?(v30, v76, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    if (v33(v30 + v32, 1, v12) == 1)
    {

      v18 = v85;
      outlined destroy of MediaUserStateCenter?(v85, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v88, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      (*v74)(v11, v12);
      goto LABEL_11;
    }

    v34 = v73;
    (*v71)(v73, v30 + v32, v12);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_UserEntity.DefinedValues and conformance UsoEntity_common_UserEntity.DefinedValues, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();

    v36 = v11;
    v11 = v12;
    v37 = *v74;
    (*v74)(v34, v12);
    v18 = v85;
    outlined destroy of MediaUserStateCenter?(v85, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v88, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v37(v36, v12);
    v30 = v75;
    outlined destroy of MediaUserStateCenter?(v75, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    if (v35)
    {
      goto LABEL_31;
    }

LABEL_12:
    ++v9;
    v8 = v88;
    v28 = v82;
    if (v87 == v77)
    {
      goto LABEL_25;
    }
  }

  outlined destroy of MediaUserStateCenter?(v18, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v88, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  if (v33(v30 + v32, 1, v12) != 1)
  {
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v30, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
    goto LABEL_12;
  }

  outlined destroy of MediaUserStateCenter?(v30, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
LABEL_31:

  v44 = v70;
  v45 = v69;
  (*(*v70 + 96))(v43);
  v46 = v65;
  v47 = v66;
  if ((*(v65 + 48))(v45, 1, v66) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v45, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_28;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "No currently playing media type";
LABEL_27:
    _os_log_impl(&dword_2232BB000, v38, v39, v41, v40, 2u);
    MEMORY[0x223DE0F80](v40, -1, -1);
    goto LABEL_28;
  }

  v48 = v64;
  (*(v46 + 32))(v64, v45, v47);
  v49 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_2836988E8, v63);

  if (v49 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v68;
  if (!result)
  {

    goto LABEL_46;
  }

  if ((v49 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](0, v49);
LABEL_40:

    v51 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();

    if (v51)
    {
      if ((*(*v44 + 104))(v48, v51))
      {

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v89[0] = v55;
          *v54 = 136315394;
          *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DBFC0, v89);
          *(v54 + 12) = 2080;
          *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v50, v89);
          _os_log_impl(&dword_2232BB000, v52, v53, "Task passed test %s:\n%s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE0F80](v55, -1, -1);
          MEMORY[0x223DE0F80](v54, -1, -1);
        }

        (*(v46 + 8))(v48, v47);
        return 1;
      }

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_2232BB000, v59, v60, "Queue and USO media types do not match", v61, 2u);
        MEMORY[0x223DE0F80](v61, -1, -1);
      }

LABEL_52:
      (*(v46 + 8))(v48, v47);
      return 0;
    }

LABEL_46:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2232BB000, v56, v57, "Could not get a media item type from the referenced media item", v58, 2u);
      MEMORY[0x223DE0F80](v58, -1, -1);
    }

    goto LABEL_52;
  }

  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t WholeHomeAudioPreflightClient.isPlayMusicFromTask(pommesTask:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (one-time initialization token for pommes != -1)
  {
LABEL_31:
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
    v25[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000002234DBFF0, v25);
    _os_log_impl(&dword_2232BB000, v7, v8, "Checking %s...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v25[3])
  {
    outlined destroy of MediaUserStateCenter?(v25, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_play_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v23 = a2;

  v11 = MEMORY[0x277D84F90];
  v12 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_283698938, a1);

  v24 = a3;
  a2 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  a3 = v12 & 0xC000000000000001;
  do
  {
    if (v13 == v14)
    {

      return 0;
    }

    if (a3)
    {
      MEMORY[0x223DDFF80](v14, v12);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      if (__OFADD__(v14, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v15 = dispatch thunk of UsoEntity_common_UserEntity.associatedUserEntities.getter();
    if (!v15)
    {
      v15 = v11;
    }

    if (v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v14;
  }

  while (!v16);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000002234DBFF0, v25);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v25);
    _os_log_impl(&dword_2232BB000, v18, v19, "Task passed test %s:\n%s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }

  return 1;
}

uint64_t WholeHomeAudioPreflightClient.isUpdateLocationTask(pommesTask:)(unint64_t a1, unint64_t a2, char *a3)
{
  v109 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
  v97 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
  v8 = MEMORY[0x28223BE20](v113);
  v110 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v108 = &v86 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v111 = &v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v114 = &v86 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v107 = &v86 - v23;
  MEMORY[0x28223BE20](v22);
  v112 = &v86 - v24;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_88;
  }

LABEL_2:
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v106 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v115[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DC020, v115);
    _os_log_impl(&dword_2232BB000, v27, v28, "Checking %s...", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223DE0F80](v31, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v115[3])
  {
    goto LABEL_18;
  }

  type metadata accessor for UsoTask_update_common_MediaItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v91 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF910;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v33;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v34;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v35;
  v36 = UsoTask.codeGenUserEntities.getter();
  v37 = v36;
  v92 = a1;
  v95 = v7;
  v96 = v14;
  v90 = a3;
  v88 = a2;
  v105 = inited + 32;
  if (v36 >> 62)
  {
    v38 = __CocoaSet.count.getter();
    if (!v38)
    {
LABEL_90:

      swift_setDeallocating();
      swift_arrayDestroy();
      return 0;
    }
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_90;
    }
  }

  v39 = 0;
  v21 = 0;
  v14 = (v37 & 0xC000000000000001);
  a3 = (v37 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v14)
    {
      a1 = MEMORY[0x223DDFF80](v39, v37);
      a2 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:
        outlined destroy of MediaUserStateCenter?(v115, &_sypSgMd, &_sypSgMR);
        return 0;
      }
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        swift_once();
        goto LABEL_2;
      }

      a1 = *(v37 + 8 * v39 + 32);

      a2 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_17;
      }
    }

    v115[0] = a1;
    v7 = closure #1 in WholeHomeAudioPreflightClient.isUpdateLocationTask(pommesTask:)(v115, inited);

    if (v7)
    {
      break;
    }

    ++v39;
    if (a2 == v38)
    {
      goto LABEL_90;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  a1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_283698960, v92);

  v87 = 0;
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  a2 = v109;
  a3 = v111;
  v14 = v114;
  v41 = v107;
  if (v40)
  {
    v21 = 0;
    v105 = a1 & 0xC000000000000001;
    v104 = a1 & 0xFFFFFFFFFFFFFF8;
    v42 = (v97 + 56);
    LODWORD(v102) = *MEMORY[0x277D5EE00];
    v101 = (v97 + 104);
    v89 = v97 + 32;
    v94 = (v97 + 8);
    v103 = a1;
    v99 = v40;
    v98 = (v97 + 56);
    v100 = (v97 + 48);
    v7 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd;
    while (1)
    {
      if (v105)
      {
        MEMORY[0x223DDFF80](v21, a1);
        a3 = v112;
      }

      else
      {
        a3 = v112;
        if (v21 >= *(v104 + 16))
        {
          goto LABEL_87;
        }
      }

      v14 = v21 + 1;
      a1 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_86;
      }

      v45 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter();
      v109 = (v21 + 1);
      if (v45)
      {
        dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
      }

      else
      {
        (*v42)(a3, 1, 1, a2);
      }

      (*v101)(v41, v102, a2);
      (*v42)(v41, 0, 1, a2);
      v46 = *(v113 + 48);
      v47 = v108;
      outlined init with copy of MediaUserStateCenter?(a3, v108, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined init with copy of MediaUserStateCenter?(v41, v47 + v46, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v48 = a3;
      v49 = *v100;
      if ((*v100)(v47, 1, a2) == 1)
      {
        break;
      }

      v50 = v106;
      outlined init with copy of MediaUserStateCenter?(v47, v106, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v51 = v49(v47 + v46, 1, a2);
      a1 = v103;
      if (v51 == 1)
      {

        v52 = v107;
        outlined destroy of MediaUserStateCenter?(v107, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v112, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
        v53 = v50;
        v41 = v52;
        (*v94)(v53, a2);
        a3 = v111;
        v44 = v47;
LABEL_24:
        outlined destroy of MediaUserStateCenter?(v44, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
        goto LABEL_25;
      }

      v54 = v95;
      (*v89)(v95, v47 + v46, a2);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
      LODWORD(v93) = dispatch thunk of static Equatable.== infix(_:_:)();

      v55 = *v94;
      (*v94)(v54, a2);
      v56 = v107;
      outlined destroy of MediaUserStateCenter?(v107, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v112, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      v57 = v50;
      v41 = v56;
      v55(v57, a2);
      outlined destroy of MediaUserStateCenter?(v47, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      a3 = v111;
      if (v93)
      {
        goto LABEL_82;
      }

LABEL_25:
      ++v21;
      v14 = v114;
      v42 = v98;
      if (v109 == v99)
      {
        goto LABEL_39;
      }
    }

    outlined destroy of MediaUserStateCenter?(v41, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v48, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v43 = v49(v47 + v46, 1, a2) == 1;
    a3 = v111;
    v44 = v47;
    a1 = v103;
    if (v43)
    {
      outlined destroy of MediaUserStateCenter?(v47, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_82:

      return 0;
    }

    goto LABEL_24;
  }

LABEL_39:

  v58 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_283698988, v92);

  v93 = v58;
  if (v58 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
LABEL_76:

    v80 = v90;

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v115[0] = v84;
      *v83 = 136315394;
      *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x80000002234DC020, v115);
      *(v83 + 12) = 2080;
      *(v83 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v80, v115);
      _os_log_impl(&dword_2232BB000, v81, v82, "Task passed test %s:\n%s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v84, -1, -1);
      MEMORY[0x223DE0F80](v83, -1, -1);
    }

    return 1;
  }

  v59 = 0;
  v60 = v93 & 0xC000000000000001;
  v98 = v93 & 0xFFFFFFFFFFFFFF8;
  v94 = (v93 + 32);
  v7 = (v97 + 56);
  LODWORD(v105) = *MEMORY[0x277D5EE18];
  v104 = (v97 + 104);
  v103 = (v97 + 48);
  v99 = (v97 + 32);
  v101 = (v97 + 8);
  v89 = v21;
  v87 = v93 & 0xC000000000000001;
  v102 = (v97 + 56);
  while (1)
  {
    if (v60)
    {
      v61 = MEMORY[0x223DDFF80](v59, v93);
      v62 = __OFADD__(v59++, 1);
      if (v62)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v59 >= *(v98 + 16))
      {
        goto LABEL_93;
      }

      v62 = __OFADD__(v59++, 1);
      if (v62)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v40 = __CocoaSet.count.getter();
        goto LABEL_21;
      }
    }

    v100 = v61;
    v63 = dispatch thunk of UsoEntity_common_MediaItem.associatedMediaItems.getter();
    if (v63)
    {
      break;
    }

LABEL_44:

    if (v59 == v21)
    {
      goto LABEL_76;
    }
  }

  v64 = v63;
  v65 = v63 & 0xFFFFFFFFFFFFFF8;
  v97 = v59;
  if (!(v63 >> 62))
  {
    v66 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = a3;
    if (v66)
    {
      goto LABEL_51;
    }

    goto LABEL_43;
  }

  v66 = __CocoaSet.count.getter();
  v67 = a3;
  if (!v66)
  {
LABEL_43:
    a3 = v67;

    v21 = v89;
    v59 = v97;
    v60 = v87;
    goto LABEL_44;
  }

LABEL_51:
  v68 = 0;
  v109 = v64 & 0xC000000000000001;
  v107 = v65;
  v106 = v66;
  v108 = v64;
  while (1)
  {
    if (v109)
    {
      MEMORY[0x223DDFF80](v68, v64);
      a3 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_84;
      }
    }

    else
    {
      if (v68 >= *(v65 + 16))
      {
        goto LABEL_85;
      }

      a3 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_84;
      }
    }

    v70 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
    v112 = a3;
    if (v70 && (dispatch thunk of CodeGenExpression.operand.getter(), , v115[0]) && (v71 = dispatch thunk of UsoEntity_common_MediaItem.mediaItemType.getter(), , v71))
    {
      dispatch thunk of UsoEntity_common_MediaItemType.definedValue.getter();
    }

    else
    {
      (*v7)(v14, 1, 1, a2);
    }

    (*v104)(v67, v105, a2);
    (*v7)(v67, 0, 1, a2);
    v72 = *(v113 + 48);
    v73 = v14;
    v21 = v14;
    v74 = v110;
    a1 = a2;
    outlined init with copy of MediaUserStateCenter?(v73, v110, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(v67, v74 + v72, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    a3 = v67;
    v75 = *v103;
    if ((*v103)(v74, 1, a2) == 1)
    {
      break;
    }

    v21 = v96;
    a3 = &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR;
    outlined init with copy of MediaUserStateCenter?(v74, v96, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    if (v75(v74 + v72, 1, a2) == 1)
    {

      v67 = v111;
      outlined destroy of MediaUserStateCenter?(v111, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v114, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
      (*v101)(v21, a2);
      v69 = v74;
      v7 = v102;
      goto LABEL_53;
    }

    v76 = v95;
    (*v99)(v95, v74 + v72, a2);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
    v77 = dispatch thunk of static Equatable.== infix(_:_:)();

    v78 = v21;
    v21 = v101;
    v79 = *v101;
    (*v101)(v76, a2);
    v67 = v111;
    outlined destroy of MediaUserStateCenter?(v111, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    outlined destroy of MediaUserStateCenter?(v114, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v79(v78, a2);
    outlined destroy of MediaUserStateCenter?(v74, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
    v7 = v102;
    if (v77)
    {
      goto LABEL_80;
    }

LABEL_54:
    ++v68;
    v14 = v114;
    v64 = v108;
    v65 = v107;
    if (v112 == v106)
    {
      goto LABEL_43;
    }
  }

  outlined destroy of MediaUserStateCenter?(a3, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  outlined destroy of MediaUserStateCenter?(v21, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
  v43 = v75(v74 + v72, 1, a2) == 1;
  v69 = v74;
  v7 = v102;
  v67 = a3;
  if (!v43)
  {
LABEL_53:
    outlined destroy of MediaUserStateCenter?(v69, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSg_AFtMR);
    goto LABEL_54;
  }

  outlined destroy of MediaUserStateCenter?(v74, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesOSgMR);
LABEL_80:

  return 0;
}

uint64_t closure #1 in WholeHomeAudioPreflightClient.isUpdateLocationTask(pommesTask:)(uint64_t *a1, uint64_t a2)
{
  v72 = a2;
  v4 = type metadata accessor for ListOperators();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for UsoEntity_common_UserEntity.DefinedValues();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
  MEMORY[0x28223BE20](v63);
  v64 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v71 = &v59 - v14;
  v15 = type metadata accessor for UsoIdentifier();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
  v69 = v19;
  v78 = v2;
  if (!v20)
  {
    goto LABEL_20;
  }

  dispatch thunk of CodeGenExpression.operand.getter();

  if (!v77[0])
  {
    goto LABEL_20;
  }

  v21 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v21)
  {
    goto LABEL_20;
  }

  v76 = *(v21 + 16);
  if (!v76)
  {

LABEL_20:
    LODWORD(v76) = 0;
LABEL_21:
    v35 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
    v37 = v64;
    v36 = v65;
    v38 = v70;
    v39 = v71;
    if (v35 && (dispatch thunk of CodeGenExpression.operand.getter(), , v77[0]))
    {
      dispatch thunk of UsoEntity_common_UserEntity.definedValue.getter();
    }

    else
    {
      (*(v6 + 56))(v39, 1, 1, v36);
    }

    (*(v6 + 104))(v38, *MEMORY[0x277D5E238], v36);
    (*(v6 + 56))(v38, 0, 1, v36);
    v40 = *(v63 + 48);
    outlined init with copy of MediaUserStateCenter?(v39, v37, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined init with copy of MediaUserStateCenter?(v38, v37 + v40, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v41 = v6;
    v42 = *(v6 + 48);
    if (v42(v37, 1, v36) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v38, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v39, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      if (v42(v37 + v40, 1, v36) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
        v43 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      v44 = v62;
      outlined init with copy of MediaUserStateCenter?(v37, v62, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      if (v42(v37 + v40, 1, v36) != 1)
      {
        v45 = v37 + v40;
        v46 = v61;
        (*(v41 + 32))(v61, v45, v36);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState(&lazy protocol witness table cache variable for type UsoEntity_common_UserEntity.DefinedValues and conformance UsoEntity_common_UserEntity.DefinedValues, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v47 = *(v41 + 8);
        v47(v46, v36);
        outlined destroy of MediaUserStateCenter?(v70, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
        outlined destroy of MediaUserStateCenter?(v71, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
        v47(v44, v36);
        outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
LABEL_32:
        if (dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
        {
          v48 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0;
        }

        v51 = v66;
        v52 = v67;
        v53 = v68;
        (*(v67 + 104))(v66, *MEMORY[0x277D5E478], v68);
        v54 = ListOperators.rawValue.getter();
        v56 = v55;
        (*(v52 + 8))(v51, v53);
        if (v50)
        {
          if (v48 == v54 && v50 == v56)
          {

LABEL_41:
            v57 = v76 | v43;
            return v57 & 1;
          }

          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v57 = 0;
          if (v58)
          {
            goto LABEL_41;
          }
        }

        else
        {

          v57 = 0;
        }

        return v57 & 1;
      }

      outlined destroy of MediaUserStateCenter?(v70, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of MediaUserStateCenter?(v71, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      (*(v41 + 8))(v44, v36);
    }

    outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
    v43 = 0;
    goto LABEL_32;
  }

  v60 = v6;
  v23 = 0;
  v24 = *MEMORY[0x277D5F528];
  v74 = v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v75 = v24;
  v73 = v16 + 16;
  v25 = (v16 + 8);
  while (v23 < *(v21 + 16))
  {
    (*(v16 + 16))(v18, v74 + *(v16 + 72) * v23, v15);
    v26 = UsoIdentifier.namespace.getter();
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v28)
    {

LABEL_7:
      result = (*v25)(v18, v15);
      goto LABEL_8;
    }

    if (v26 == v29 && v28 == v30)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v77[0] = UsoIdentifier.value.getter();
    v77[1] = v32;
    MEMORY[0x28223BE20](v77[0]);
    *(&v59 - 2) = v77;
    v33 = v78;
    v34 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v59 - 4), v72);
    v78 = v33;
    (*v25)(v18, v15);

    if (v34)
    {

      LODWORD(v76) = 1;
LABEL_18:
      v6 = v60;
      goto LABEL_21;
    }

LABEL_8:
    if (v76 == ++v23)
    {

      LODWORD(v76) = 0;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}